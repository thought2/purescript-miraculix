spago build && \
nix-build -E '(import ./output/Test.Main).main null'