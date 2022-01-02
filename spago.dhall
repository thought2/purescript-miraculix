{ name = "purescript-miraculix"
, dependencies =
    [ "prelude"
    , "foldable-traversable"
    , "newtype"
    , "effect"
    ]
, backend = "purenix"
, packages = ./packages.dhall
, sources =
    [ "src/**/*.purs"
    ]
}
