{ name = "purescript-arrays"
, dependencies =
    [ "prelude"
    , "miraculix"
    ]
, backend = "purenix"
, packages = ./packages.dhall
, sources =
    [ "src/**/*.purs"
    , "test/**/*.purs"
    ]
}
