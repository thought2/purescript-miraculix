import * as fs from "fs-extra";
import * as path from "path";
import spawnAsync from "@expo/spawn-async";
import * as os from "os";
import * as glob from "glob";

const REPO_ROOT = path.join(__dirname, "..");
const TARGET_DIR = path.join(REPO_ROOT, "output-miraculix-lite");

type Dep = {
  packageName: string;
  version: string;
  repo: { tag: string; contents: string };
};

type ModuleMapping = Record<string, string>;

const moduleScope = "LocalDependency";

const packageExceptions = ["prelude", "newtype", "orders"];

const newSpagoDhall = `
{ name = "purescript-miraculix-lite"
, dependencies = [ ${packageExceptions.map((x) => `"${x}"`).join(",")} ]
, backend = "purenix"
, packages = ./packages.dhall
, sources =
    [ "src/**/*.purs"
    ]
}
`;

const copySources = async () => {
  await fs.rm(TARGET_DIR, { recursive: true, force: true });
  await fs.mkdir(TARGET_DIR);
  await fs.copy(path.join(REPO_ROOT, "src"), path.join(TARGET_DIR, "src"), {
    recursive: true,
  });
  await fs.copy(
    path.join(REPO_ROOT, "packages.dhall"),
    path.join(TARGET_DIR, "packages.dhall")
  );
  await fs.copy(
    path.join(REPO_ROOT, "spago.dhall"),
    path.join(TARGET_DIR, "spago.dhall")
  );
};

const getTransitiveDeps = async () => {
  const result = await spawnAsync(
    "spago",
    ["ls", "deps", "--transitive", "--json"],
    { cwd: TARGET_DIR }
  );

  const jsonl = result.stdout;
  const json = `[${jsonl.trim().split("\n").join(",")}]`;
  const deps: Array<Dep> = JSON.parse(json);

  return deps.filter(
    (dep) => !packageExceptions.find((x) => x === dep.packageName)
  );
};

const cloneRepos = async (deps: Dep[]) => {
  for (let dep of deps) {
    const tmp = await fs.mkdtemp(
      path.join(os.tmpdir(), `${dep.packageName}-)`)
    );
    await spawnAsync("git", ["clone", dep.repo.contents, tmp], {
      stdio: "inherit",
    });
    await spawnAsync("git", ["checkout", dep.version], {
      stdio: "inherit",
      cwd: tmp,
    });
    await fs.copy(
      path.join(tmp, "src"),
      path.join(TARGET_DIR, "src", "deps", dep.packageName),
      { recursive: true }
    );

    await fs.writeFile(path.join(TARGET_DIR, "spago.dhall"), newSpagoDhall);
  }
};

const patchDependencySources = async (): Promise<ModuleMapping> => {
  const depModuleFiles = glob.sync(path.join(TARGET_DIR, "src/deps/**/*.purs"));

  let moduleMapping: ModuleMapping = {};

  for (let depModuleFile of depModuleFiles) {
    const oldSource = (await fs.readFile(depModuleFile)).toString();
    const matchResult = oldSource.match(/^module ([A-Z][A-Za-z0-9._]*)/m);
    if (!matchResult) continue;
    const oldModuleName = matchResult[1];
    const newModuleName = `${moduleScope}.${oldModuleName}`;
    const newSource = oldSource.replace(
      /^module [A-Z][A-Za-z0-9._]*/m,
      `module ${newModuleName}`
    );
    moduleMapping[oldModuleName] = newModuleName;
    await fs.writeFile(depModuleFile, newSource);
  }

  return {
    "Test.Miraculix": "Test.MiraculixLite",
    ...moduleMapping,
  };
};

const patchLocalSources = async (moduleMapping: ModuleMapping) => {
  const moduleFiles = [...glob.sync(path.join(TARGET_DIR, "src/**/*.purs"))];

  for (let moduleFile of moduleFiles) {
    const oldSource = (await fs.readFile(moduleFile)).toString();
    let newSource = oldSource;
    for (let oldModuleName in moduleMapping) {
      const newModuleName = moduleMapping[oldModuleName];
      newSource = newSource
        .replace(
          new RegExp(`import ${oldModuleName.replace(/\./g, "\\.")}`, "g"),
          `import ${newModuleName}`
        )
        .replace(
          new RegExp(`module ${oldModuleName.replace(/\./g, "\\.")}`, "g"),
          `module ${newModuleName}`
        );
    }

    const matchPreludeImport = oldSource.match(/import Prelude/);

    await fs.writeFile(moduleFile, newSource);
  }
};

const main = async () => {
  await copySources();
  const deps = await getTransitiveDeps();
  await cloneRepos(deps);
  const moduleMapping = await patchDependencySources();
  await patchLocalSources(moduleMapping);
};

main();
