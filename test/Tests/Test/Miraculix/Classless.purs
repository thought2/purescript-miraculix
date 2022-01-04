module Tests.Test.Miraculix.Classless where

import Prelude
import Test.MiraculixLite (TestTree, testCase, testGroup, (@?=))
import Test.Miraculix.Classless as C
import Test.Util (eval)

tests :: TestTree
tests =
  testGroup "Test.Miraculix.Classless"
    [ testGroup "nixShow"
        let
          test s = C.nixShow (eval s) @?= s
        in
          [ testGroup "attrSet"
              [ testCase "empty" $ test "{ }"
              , testCase "with fields" $ test "{ x = 1; y = 2; }"
              ]
          , testGroup "boolean"
              [ testCase "true" $ test "true"
              , testCase "false" $ test "false"
              ]
          ]
    ]
