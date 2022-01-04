{ arrays =
  { dependencies =
    [ "bifunctors"
    , "control"
    , "foldable-traversable"
    , "maybe"
    , "nonempty"
    , "partial"
    , "prelude"
    , "st"
    , "tuples"
    , "unfoldable"
    , "unsafe-coerce"
    ]
  , repo = "https://github.com/purenix-org/purescript-arrays.git"
  , version = "cce2d13db0877d208a0cdc57c0e12d60e2b02cfb"
  }
, bifunctors =
  { dependencies = [ "const", "either", "newtype", "prelude", "tuples" ]
  , repo = "https://github.com/purenix-org/purescript-bifunctors.git"
  , version = "e2f1d603125a5f42338c6fae10422508be91eda6"
  }
, const =
  { dependencies = [ "invariant", "newtype", "prelude" ]
  , repo = "https://github.com/purenix-org/purescript-const.git"
  , version = "2a3730d452fa1d579642f2d7322a92ffc26f8ca1"
  }
, contravariant =
  { dependencies = [ "const", "either", "newtype", "prelude", "tuples" ]
  , repo = "https://github.com/purenix-org/purescript-contravariant.git"
  , version = "f131d673128a490d27f85039dea34b5b316cc16e"
  }
, control =
  { dependencies = [ "newtype", "prelude" ]
  , repo = "https://github.com/purenix-org/purescript-control.git"
  , version = "14103f74386a315f159f85720fac0242810d5b38"
  }
, distributive =
  { dependencies =
    [ "identity", "newtype", "prelude", "tuples", "type-equality" ]
  , repo = "https://github.com/purenix-org/purescript-distributive.git"
  , version = "f6dcb7c7870a74c429376ce46a5ac25392b0f25c"
  }
, effect =
  { dependencies = [ "prelude" ]
  , repo = "https://github.com/thought2/purescript-effect.git"
  , version = "0f983fdcb6d45f09c823b1a8e44637b51829e7d5"
  }
, either =
  { dependencies = [ "control", "invariant", "maybe", "prelude" ]
  , repo = "https://github.com/purenix-org/purescript-either.git"
  , version = "3169946c381a961c8ccbfa078748cc4a87c80766"
  }
, exists =
  { dependencies = [ "unsafe-coerce" ]
  , repo = "https://github.com/purenix-org/purescript-exists.git"
  , version = "0d5dbf6ba8b4cfdcc3fa514f429ffd645f9a078f"
  }
, foldable-traversable =
  { dependencies =
    [ "bifunctors"
    , "const"
    , "control"
    , "either"
    , "functors"
    , "identity"
    , "maybe"
    , "newtype"
    , "orders"
    , "prelude"
    , "tuples"
    ]
  , repo = "https://github.com/purenix-org/purescript-foldable-traversable.git"
  , version = "bbb02b2752b1f1520c7c0b9f79bf7152002e989a"
  }
, foreign =
  { dependencies = [ "prelude" ]
  , repo = "https://github.com/thought2/purescript-foreign.git"
  , version = "895901ad15d0c1517052a7a318b77c11cba72692"
  }
, foreign-object =
  { dependencies = [ "prelude" ]
  , repo = "https://github.com/thought2/purescript-foreign-object.git"
  , version = "63de9f4e97b643dcfbe65da4dacf20d5303f6c6a"
  }
, foreign-path =
  { dependencies = [ "prelude" ]
  , repo = "https://github.com/thought2/purescript-foreign-path.git"
  , version = "fe7f41b7749955ee6acdc3edcdc448b48f788ecd"
  }
, functors =
  { dependencies =
    [ "bifunctors"
    , "const"
    , "contravariant"
    , "control"
    , "distributive"
    , "either"
    , "invariant"
    , "maybe"
    , "newtype"
    , "prelude"
    , "profunctor"
    , "tuples"
    , "unsafe-coerce"
    ]
  , repo = "https://github.com/purenix-org/purescript-functors.git"
  , version = "5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e"
  }
, identity =
  { dependencies = [ "control", "invariant", "newtype", "prelude" ]
  , repo = "https://github.com/purenix-org/purescript-identity.git"
  , version = "cb1f4df0bcd835bff8148881a64f4b136a5827d3"
  }
, invariant =
  { dependencies = [ "control", "prelude" ]
  , repo = "https://github.com/purenix-org/purescript-invariant.git"
  , version = "30a5b24011c13d01d64337a459d0a7de68b93351"
  }
, maybe =
  { dependencies = [ "control", "invariant", "newtype", "prelude" ]
  , repo = "https://github.com/purenix-org/purescript-maybe.git"
  , version = "b13eab54d7e3b67c1820ea76e05181d34c42ee0d"
  }
, metadata =
  { dependencies = [] : List <>
  , repo = "https://github.com/spacchetti/purescript-metadata.git"
  , version = "2d9d841ee46e6aed7f44ba3fc8400f7658224526"
  }
, miraculix =
  { dependencies = [ "prelude", "foldable-traversable", "newtype" ]
  , repo = "https://github.com/thought2/purescript-miraculix.git"
  , version = "7228b4179bd9df334a63f5fbd33201aae29e325b"
  }
, miraculix-lite =
  { dependencies = [ "prelude", "newtype", "orders" ]
  , repo = "https://github.com/thought2/purescript-miraculix.git"
  , version = "9b3a8ced22c78fe0e8ea1cd7352df5f5dae1dfbd"
  }
, newtype =
  { dependencies = [ "prelude", "safe-coerce" ]
  , repo = "https://github.com/purenix-org/purescript-newtype.git"
  , version = "13c4e4c8bd95a86aa7f04e6418efaf83d696cadc"
  }
, nonempty =
  { dependencies =
    [ "control"
    , "foldable-traversable"
    , "maybe"
    , "prelude"
    , "tuples"
    , "unfoldable"
    ]
  , repo = "https://github.com/purenix-org/purescript-nonempty.git"
  , version = "467f1cf3810b9697b6a69ed5db3d4631e044c876"
  }
, orders =
  { dependencies = [ "newtype", "prelude" ]
  , repo = "https://github.com/purenix-org/purescript-orders.git"
  , version = "757ab6d323dd5a2252c4198c65a821a92484751b"
  }
, partial =
  { dependencies = [] : List <>
  , repo = "https://github.com/purenix-org/purescript-partial.git"
  , version = "948fdc982a3677fc4daa1b884e333d503b5dbac0"
  }
, prelude =
  { dependencies = [] : List <>
  , repo = "https://github.com/purenix-org/purescript-prelude.git"
  , version = "0a991d6422d5d57650955fab8468f7af82dba944"
  }
, profunctor =
  { dependencies =
    [ "control"
    , "distributive"
    , "either"
    , "exists"
    , "invariant"
    , "newtype"
    , "prelude"
    , "tuples"
    ]
  , repo = "https://github.com/purenix-org/purescript-profunctor.git"
  , version = "78b2577b62fcbd0aa9232aac214faa8dab378096"
  }
, safe-coerce =
  { dependencies = [ "unsafe-coerce" ]
  , repo = "https://github.com/purenix-org/purescript-safe-coerce.git"
  , version = "048f4e64210d93cc0515f3ea236d38aad9787914"
  }
, st =
  { dependencies = [ "prelude" ]
  , repo = "https://github.com/purenix-org/purescript-st.git"
  , version = "cfdcc169101bd3188747051d0886e33615ab7c2c"
  }
, tuples =
  { dependencies = [ "control", "invariant", "prelude" ]
  , repo = "https://github.com/purenix-org/purescript-tuples.git"
  , version = "1ea47bb6ff4f5aa04a42ca01c3a78bca48160743"
  }
, type-equality =
  { dependencies = [] : List <>
  , repo = "https://github.com/purenix-org/purescript-type-equality.git"
  , version = "f251a957aa464013d625d37aaaa430e16dee8f21"
  }
, unfoldable =
  { dependencies =
    [ "foldable-traversable", "maybe", "partial", "prelude", "tuples" ]
  , repo = "https://github.com/purenix-org/purescript-unfoldable.git"
  , version = "3466c8e7d5554040f034ec792124e3271ea46e57"
  }
, unsafe-coerce =
  { dependencies = [] : List <>
  , repo = "https://github.com/purenix-org/purescript-unsafe-coerce.git"
  , version = "dba4c8cfc6b09e09f172fbeac04697724b015b02"
  }
}
