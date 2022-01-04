{ name = "purescript-miraculix"
, dependencies =
  [ "prelude"
  , "foldable-traversable"
  , "newtype"
  , "effect"
  , "foreign"
  , "foreign-object"
  , "foreign-path"
  , "partial"
  , "unsafe-coerce"
  ]
, backend = "purenix"
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
