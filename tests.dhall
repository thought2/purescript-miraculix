{ name = "purescript-miraculix-tests"
, dependencies =
    [ "prelude"
    , "foldable-traversable"
    , "newtype"
    , "arrays"
    ]
, backend = "purenix"
, packages = ./packages.dhall
, sources =
    [ "src/**/*.purs"
    , "test/**/*.purs"
    ]
}
