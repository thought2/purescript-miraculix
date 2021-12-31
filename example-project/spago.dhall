{ name = "purescript-miraculix-example-project"
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
