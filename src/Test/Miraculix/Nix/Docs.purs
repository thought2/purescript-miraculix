module Test.Miraculix.Nix.Docs
  ( docs
  , tsTypes
  , docsJson
  ) where

import DoctorNix
import Prelude
import Data.Generic.Rep (class Generic)
import Data.Show.Generic (genericShow)
import TS (class ToTsType, TsDoc(..), TsType, TsTypeDecl(..), genericToTsType, render, toTsType)
import Test.Miraculix.Nix as N
import Type.Proxy (Proxy(..))

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

tsTypes :: String
tsTypes = render $ TsDoc [ Type "Docs" (toTsType (Proxy :: _ NixDocs)) ]

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
-- markdown :: String
-- markdown = render docs
foreign import toJSON :: forall a. a -> String

docsJson :: String
docsJson = toJSON docs
