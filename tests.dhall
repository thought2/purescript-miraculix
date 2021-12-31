{ name = "purescript-miraculix-tests"
, dependencies =
    [ "prelude"
    , "foldable-traversable"
    , "newtype"
    , "arrays"
    , "effect"
    , "unsafe-coerce"
    ]
, backend = "purenix"
, packages = ./packages.dhall
, sources =
    [ "src/**/*.purs"
    , "test/**/*.purs"
    ]
}
