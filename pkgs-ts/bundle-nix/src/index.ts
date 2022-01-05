import * as fs from "fs-extra";
import { join, dirname } from "path";
import * as glob from "glob";

const INPUT_DIR = join(__dirname, "../../../output");

const OUTPUT_FILE = join(__dirname, "../../../materialized/bundle.nix");

type Path = string;

type Source = string;

type Registry = Record<Path, Source>;

const loadRegistry = async (): Promise<Registry> => {
  const moduleFiles = glob.sync("**/*.nix", { cwd: INPUT_DIR });

  let out: Registry = {};

  for (let file of moduleFiles) {
    const absFile = join(INPUT_DIR, file);
    const source = (await fs.readFile(absFile)).toString();
    out[file] = source;
  }
  return out;
};

const patchRegistryEntry = async (
  reg: Registry,
  path: Path,
  source: Source
): Promise<Source> => {
  const foreign = join(dirname(path), "foreign.nix");
  return source
    .replace(/import \.\.\/(?!Prim\.)([^;]*);/gm, (match, p) =>
      toIdent(`${p}/default.nix;`)
    )
    .replace(/import \.\/foreign\.nix/, toIdent(foreign));
};

const toIdent = (s: string): string =>
  s.replace(/\./g, "-").replace(/\//g, "_");

const patchRegistry = async (reg: Registry): Promise<Registry> => {
  const out: Registry = {};
  for (let file in reg) {
    const source = reg[file];
    out[file] = await patchRegistryEntry(reg, file, source);
  }
  return out;
};

const bundleRegistry = (reg: Registry): Source => {
  let out: string[] = [];

  for (let file in reg) {
    const source = reg[file];
    out.push(`${toIdent(file)} = ${source}\n;\n\n`);
  }

  return `rec { \n${out.join("")}\n}`;
};

const writeBundle = async (bundle: Source) => {
  await fs.writeFile(OUTPUT_FILE, bundle);
};

const main = async () => {
  const oldReg = await loadRegistry();
  const newReg = await patchRegistry(oldReg);
  const bundle = bundleRegistry(newReg);
  await writeBundle(bundle);
};

main();
