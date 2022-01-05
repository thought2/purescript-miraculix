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
  , "tuples"
  , "arrays"
  ]
, backend = "purenix"
, packages = ./packages-locked.dhall
, sources = [ "src/**/*.purs" ]
}
