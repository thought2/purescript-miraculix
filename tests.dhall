let lib = ./lib.dhall

in  { name = "purescript-miraculix-tests"
    , dependencies = lib.dependencies # [ "miraculix-lite", "arrays" ]
    , backend = "purenix"
    , packages = ./packages.dhall
    , sources = lib.sources # [ "test/**/*.purs" ]
    }
