let upstream =
      https://raw.githubusercontent.com/purenix-org/temp-package-set/main/packages.dhall sha256:c073e77508fdfeaba77c854190335a1214cb67b57db1b641b14b54427e83ed0c

let additions =
      { effect =
        { dependencies = [ "prelude" ]
        , repo = "https://github.com/thought2/purescript-effect.git"
        , version = "main"
        }
      }

in  upstream // additions
