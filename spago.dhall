let lib = ./lib.dhall

let tests = ./tests.dhall

in  { name = "purescript-miraculix-dev"
    , dependencies = lib.dependencies # tests.dependencies
    , backend = lib.backend
    , packages = lib.packages
    , sources = lib.sources # tests.sources
    }
