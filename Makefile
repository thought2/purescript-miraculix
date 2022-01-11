clean:
	rm -rf output

build:
	spago build --purs-args "--censor-lib --strict"

build_: clean
build_: build

docs:
	spago docs

install:
	cd mk-miraculix-lite; yarn install

buildLite:
	yarn --cwd mk-miraculix-lite/ run ts-node script.ts
