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

lockPkgs:
	yarn workspace lock-pkgs ts-node src/index.ts

bundle:
	yarn workspace bundle-nix ts-node src/index.ts
	
install:
	yarn install

materialize: clean
materialize: install
materialize: build
materialize: bundle

check-status:
	bash scripts/check-git-status.sh

generate:
	rm -rf generated
	nix build .#docsJson -o generated/docs.json
	nix build .#tsTypes -o generated/types.ts