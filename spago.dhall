{ name = "purescript-arrays"
, dependencies =
    [ "prelude"
    , "foldable-traversable"
    , "newtype"
    ]
, backend = "purenix"
, packages = ./packages.dhall
, sources =
    [ "src/**/*.purs"
    , "test/**/*.purs"
    ]
}
