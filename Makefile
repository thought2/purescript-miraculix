clean:
	rm -rf output

build:
	spago build --purs-args "--censor-lib --strict"

build_: clean
build_: build

docs:
	spago docs

buildLite:
	ts-node mk-miraculix-lite/script.ts
