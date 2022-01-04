clean:
	rm -rf \
	  output \
	  .spago \
	  node_modules \
	  mk-miraculix-lite/node_modules \
	  output-miraculix-lite

build:
	spago build --purs-args "--censor-lib --strict" --config lib.dhall

build_: clean
build_: build

docs:
	spago docs

run-nix-example: build
run-nix-example:
	nix-build nix-example/test.nix

tests:
	spago build --config tests.dhall && \
	nix-build -E '(import ./output/Test.Main/default.nix).main null'
