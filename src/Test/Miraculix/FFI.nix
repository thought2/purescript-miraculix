let
  pkgs = import <nixpkgs> { };
  mkReport = txt: pkgs.writeText "test-success" txt;
in
{
  inherit (builtins)
    seq
    deepSeq
    foldl'
    concatStringsSep
    substring
    ;

  trace = x: _: builtins.trace x null;
  abort = x: _: builtins.abort x;

  inherit mkReport;

  bullet = "•";
}
