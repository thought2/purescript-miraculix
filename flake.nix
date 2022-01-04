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
        overlay = self: _: { };
        pkgs = import nixpkgs {
          inherit system;
          overlays = [
            overlay
          ];
        };

        easy-purescript-nix = import easy-purescript-nix-source { inherit pkgs; };

      in
      {
        defaultPackage = import ./nix/pkgs/miraculix.nix { inherit pkgs; };

        devShell = pkgs.mkShell {
          nativeBuildInputs = [
            purenix.defaultPackage.${system}
            easy-purescript-nix.spago2nix
            pkgs.purescript
            pkgs.spago
            pkgs.nodePackages.purescript-psa
          ];
        };
      }
    );
}

