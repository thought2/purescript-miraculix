let
  pkgs = import <nixpkgs> { };
  mkReport = txt: pkgs.writeText "test-success" txt;
in
{
  inherit (builtins)
    seq
    deepSeq
    abort
    foldl'
    concatStringsSep
    substring
    ;

  trace = x: _: builtins.trace x null;

  inherit mkReport;

  bullet = "•";
}
