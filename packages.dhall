let upstream =
      https://raw.githubusercontent.com/purenix-org/temp-package-set/main/packages.dhall sha256:bd6b12b9a2c48347add2644455a1197bfbf681dfb29de2d14f49d57a87c05e88

let additions =
      { effect =
        { dependencies = [ "prelude" ]
        , repo = "https://github.com/thought2/purescript-effect.git"
        , version = "main"
        }
      }

in  upstream // additions
