let
  pkgs = import
    (fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/fddafcc062e4fbea7988479407edec4f837b5061.tar.gz";
      sha256 = "0b6ky46s0wdwhrg9yp5jh0dq644c5cmlibbvqsjfq031b4jzk5l6";
    })
    { localSystem = "x86_64-linux"; }
  ;
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
