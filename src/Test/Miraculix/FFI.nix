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
    trace
    concatStringsSep
    substring
    ;
  inherit mkReport;
}
