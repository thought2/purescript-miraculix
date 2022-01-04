{ pkgs }:
let
  spagoPkgs = import ../../spago-packages.nix { inherit pkgs; };

  getGlob = pkg: ''".spago/${pkg.name}/${pkg.version}/src/**/*.purs"'';

  buildSpagoStyle = pkgs.writeShellScriptBin "build-spago-style" ''
    set -e
    echo building project...
    ${pkgs.purenix}/bin/purenix \
    ${builtins.toString (builtins.map getGlob (builtins.attrValues spagoPkgs.inputs))} "$@"
    echo done.
  '';

  output = pkgs.stdenv.mkDerivation
    rec {
      pname = "miraculix";
      src = pkgs.lib.cleanSource ../../src;
      version = "0.2.0";

      buildInputs = [
        spagoPkgs.installSpagoStyle
        spagoPkgs.buildSpagoStyle
        spagoPkgs.buildFromNixStore
        pkgs.purescript
        pkgs.spago
      ];

      unpackPhase = ''
        cp -r $src .
        install-spago-style
      '';

      buildPhase = ''
        build-spago-style './src/**/*.purs' -g corefn
        ${pkgs.purenix}/bin/purenix
        mkdir $out
        cp -r output/* -t $out
      '';

      installPhase = ''
      
      '';
    };

  defaultNix = pkgs.writeText "default.nix" ''
    import ./output/Test.Miraculix/default.nix
  '';

in
pkgs.runCommand "output-with-extra" { } ''
  mkdir $out
  ln -s ${output} $out/output
  ln -s ${defaultNix} $out/default.nix
''
