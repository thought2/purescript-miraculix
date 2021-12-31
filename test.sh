spago --config tests.dhall build && \
nix-build -E '(import ./output/Test.Main).main null'