import * as path from "path";
import sh from "@expo/spawn-async";

const clean = () =>
  sh("rm", [
    "-rf",
    "output",
    ".spago",
    "node_modules",
    "mk-miraculix-lite/node_modules",
  ]);

const build = () =>
  sh("spago", [
    "build",
    "--purs-args",
    "--censor-lib --strict",
    "--config",
    "lib.dhall",
  ]);

//

const materialize = () => {};

const generate = () => {};

const ci = () => {};
