import * as fs from "fs-extra";
import * as path from "path";
import spawnAsync from "@expo/spawn-async";
import * as os from "os";

type PkgSet = Record<string, Pkg>;

type Pkg = {
  dependencies: string[];
  repo: string;
  version: string;
};

type PrefetchResult = { rev: string };

const PACKAGES_DHALL = path.join(__dirname, "../../../packages.dhall");
const PACKAGES_DHALL_LOCKED = path.join(
  __dirname,
  "../../../packages-locked.dhall"
);

const nixPrefetch = async (url: string, rev: string): Promise<PrefetchResult> =>
  spawnAsync("nix-prefetch-git", ["--rev", rev, url]).then((r) =>
    JSON.parse(r.stdout)
  );

const patchPkg = async ({ repo, version, ...rest }: Pkg): Promise<Pkg> => {
  console.log(`patching ${repo} ${version}`);

  let r: PrefetchResult;
  try {
    r = await nixPrefetch(repo, version);
  } catch {
    r = await nixPrefetch(repo, `refs/heads/${version}`);
  }

  console.log("done");

  return {
    repo,
    ...rest,
    version: r.rev,
  };
};

const patchPkgSet = async (pkgSet: PkgSet): Promise<PkgSet> => {
  const out: PkgSet = {};
  for (let key in pkgSet) {
    const val = pkgSet[key];
    out[key] = await patchPkg(val);
  }
  return out;
};

const main = async () => {
  const result = await spawnAsync("dhall-to-json", ["--file", PACKAGES_DHALL]);

  const oldPkgSet: PkgSet = JSON.parse(result.stdout);

  const newPkgSet = await patchPkgSet(oldPkgSet);

  const tmp = path.join(await fs.mkdtemp(os.tmpdir()), "packages.json");

  await fs.writeFile(tmp, JSON.stringify(newPkgSet));

  await spawnAsync("json-to-dhall", [
    "--file",
    tmp,
    "--output",
    PACKAGES_DHALL_LOCKED,
  ]);
};

main();
