{
  description = "purescript-arrays";

  inputs.purenix.url = "github:purenix-org/purenix";
  inputs.nixpkgs.follows = "purenix/nixpkgs";
  inputs.easy-purescript-nix-source = {
    url = "github:justinwoo/easy-purescript-nix";
    flake = false;
  };
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils, purenix, easy-purescript-nix-source }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        overlay = self: _: {
          purenix = purenix.defaultPackage.${system};
        };
        pkgs = import nixpkgs {
          inherit system;
          overlays = [
            overlay
          ];
        };

        easy-purescript-nix = import easy-purescript-nix-source { inherit pkgs; };

        bundle = import ./materialized/bundle.nix;
      in
      {
        defaultPackage = bundle;

        packages.nix-miraculix = bundle.Test-Miraculix-Nix_default-nix;
        packages.docs = bundle.Test-Miraculix-Nix-Docs_default-nix.markdown;

        devShell = pkgs.mkShell {
          nativeBuildInputs = [
            pkgs.purenix
            easy-purescript-nix.spago2nix
            easy-purescript-nix.purty
            pkgs.purescript
            pkgs.spago
            pkgs.nodePackages.purescript-psa
            pkgs.dhall-json
            pkgs.nix-prefetch-git
          ];
        };
      }
    );
}

