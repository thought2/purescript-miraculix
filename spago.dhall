{ name = "purescript-miraculix"
, dependencies =
    [ "prelude"
    , "foldable-traversable"
    , "newtype"
    ]
, backend = "purenix"
, packages = ./packages.dhall
, sources =
    [ "src/**/*.purs"
    ]
}
