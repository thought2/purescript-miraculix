
{ name = "purescript-miraculix-lite"
, dependencies = [ "prelude","newtype","orders" ]
, backend = "purenix"
, packages = ./packages.dhall
, sources =
    [ "src/**/*.purs"
    ]
}
