module Test.Miraculix.Nix.Docs
  ( docs
  , tsTypes
  , docsJson
  ) where

import DoctorNix
import Prelude
import Data.Generic.Rep (class Generic)
import Data.Newtype (class Newtype)
import Data.Show.Generic (genericShow)
import TS (class ToTsType, TsDoc(..), TsType, TsTypeDecl(..), genericToTsType, render, toTsType)
import Test.Miraculix.Nix as N
import Type.Proxy (Proxy(..))

docs :: NixDocs
docs =
  { title: "miraculix"
  , types:
      [ NixTypeDoc
          { name: "Assertion"
          , descr: "..."
          , type_: toNixType' (Proxy :: _ N.Assertion)
          }
      ]
  , defs:
      [ NixDefDoc
          { name: "assertEq"
          , descr: "..."
          , type_: toNixType N.assertEq
          }
      , NixDefDoc
          { name: "testCase"
          , descr: "..."
          , type_: toNixType N.testCase
          }
      ]
  }

tsTypes :: String
tsTypes =
  render
    $ TsDoc
        [ Type "NixDocs" (toTsType (Proxy :: _ NixDocs)) true
        , Type "NixDefDoc" (toTsType (Proxy :: forall a. Newtype NixDefDoc a => _ a)) true
        , Type "NixTypeDoc" (toTsType (Proxy :: forall a. Newtype NixTypeDoc a => _ a)) true
        ]

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
