clean:
	rm -rf \
	  output \
	  .spago \
	  node_modules \
	  mk-miraculix-lite/node_modules \
	  output-miraculix-lite

build:
	spago build --purs-args "--censor-lib --strict"

build_: clean
build_: build

docs:
	spago docs

run-nix-example: build
run-nix-example:
	nix-build nix-example/test.nix
