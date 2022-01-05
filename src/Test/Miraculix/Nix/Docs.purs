module Test.Miraculix.Nix.Docs where

import DoctorNix
import Test.Miraculix.Nix as N
import Type.Proxy (Proxy(..))

data Foo
  = Bar Int
  | Baz

sample :: String -> Boolean
sample _ = true

docs :: NixDocs
docs =
  { title: "miraculix"
  , types:
      [ { name: "Assertion"
        , descr: "..."
        , type_: toNixType' (Proxy :: _ N.Assertion)
        }
      ]
  , defs:
      [ { name: "assertEq"
        , descr: "..."
        , type_: toNixType N.assertEq
        }
      , { name: "testCase"
        , descr: "..."
        , type_: toNixType N.testCase
        }
      ]
  }

-- docs' =
--   docGroup "miraculix"
--     [ docType "Assertion" (Proxy :: _ N.Assertion)
--         & since "1.0.0"
--         & descr "Doo Bar baz"
--     , docDef "assertEq" N.assertEq
--         & descr "..."
--     , docDef "testCase" N.testCase
--         & descr "..."
--     ]
markdown :: String
markdown = render docs
