{ name = "purescript-miraculix"
, dependencies =
  [ "prelude"
  , "foldable-traversable"
  , "newtype"
  , "effect"
  , "foreign"
  , "foreign-object"
  ]
, backend = "purenix"
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
