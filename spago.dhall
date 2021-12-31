{ name = "purescript-miraculix"
, dependencies =
    [ "prelude"
    , "foldable-traversable"
    , "newtype"
    , "effect"
    , "unsafe-coerce"
    ]
, backend = "purenix"
, packages = ./packages.dhall
, sources =
    [ "src/**/*.purs"
    ]
}
