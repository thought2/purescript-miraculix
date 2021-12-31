{ name = "purescript-miraculix-example-project"
, dependencies =
    [ "prelude"
    , "miraculix"
    , "effect"
    ]
, backend = "purenix"
, packages = ./packages.dhall
, sources =
    [ "src/**/*.purs"
    , "test/**/*.purs"
    ]
}
