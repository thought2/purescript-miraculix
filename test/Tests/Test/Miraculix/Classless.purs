module Tests.Test.Miraculix.Classless where

import Prelude
import Test.MiraculixLite (TestTree, testCase, testGroup, (@?=))
import Test.Miraculix.Classless as C
import Test.Util (eval)

tests :: TestTree
tests =
  testGroup "Test.Miraculix.Classless"
    [ testGroup "nixShow"
        [ testGroup "attrSet"
            [ testCase "empty" $ C.nixShow (eval "{ }") @?= "{ }"
            , testCase "with fields" $ C.nixShow (eval "{ x = 1; y = 2; }")
                @?= "{ x = 1; y = 2; }"
            ]
        , testGroup "boolean"
            [ testCase "true" $ C.nixShow (eval "true") @?= "true"
            , testCase "false" $ C.nixShow (eval "false") @?= "false"
            ]
        , testGroup "path"
            [ testCase "absolute path" $ C.nixShow (eval "/foo/abr") @?= "/foo/abr"
            ]
        , testGroup "number"
            [ testCase "number with fractional digits" $ C.nixShow (eval "12.0") @?= "12.000000"
            ]
        , testGroup "function"
            [ testCase "tagged placeholder" $ C.nixShow (eval "x: y: x + y") @?= "<function>"
            ]
        , testGroup "int"
            [ testCase "positive" $ C.nixShow (eval "12") @?= "12"
            , testCase "negative" $ C.nixShow (eval "-12") @?= "-12"
            ]
        , testGroup "list"
            [ testCase "non empty" $ C.nixShow (eval "[ 1 2 3 ]") @?= "[ 1 2 3 ]"
            , testCase "empty" $ C.nixShow (eval "[ ]") @?= "[ ]"
            ]
        , testCase "null" $ C.nixShow (eval "null") @?= "null"
        , testGroup "string"
            [ testCase "double single ticks" $ C.nixShow (eval "''foo''") @?= "\\\"foo\\\""
            , testCase "double ticks" $ C.nixShow (eval "\\\"foo\\\"") @?= "\\\"foo\\\""
            ]
        ]
    ]
