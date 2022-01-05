module Tests.Test.Miraculix.Nix where

import Prelude
import Test.MiraculixLite (TestTree, testCase, testGroup, (@?=))
import Test.Miraculix.Nix.Internal as N
import Test.Util (eval)

tests :: TestTree
tests =
  testGroup "Test.Miraculix.Nix.Internal"
    [ testGroup "nixShow"
        [ testGroup "attrSet"
            [ testCase "empty" $ N.nixShow (eval "{ }") @?= "{ }"
            , testCase "with fields" $ N.nixShow (eval "{ x = 1; y = 2; }")
                @?= "{ x = 1; y = 2; }"
            ]
        , testGroup "boolean"
            [ testCase "true" $ N.nixShow (eval "true") @?= "true"
            , testCase "false" $ N.nixShow (eval "false") @?= "false"
            ]
        , testGroup "path"
            [ testCase "absolute path" $ N.nixShow (eval "/foo/abr") @?= "/foo/abr"
            ]
        , testGroup "number"
            [ testCase "number with fractional digits" $ N.nixShow (eval "12.0") @?= "12.000000"
            ]
        , testGroup "function"
            [ testCase "tagged placeholder" $ N.nixShow (eval "x: y: x + y") @?= "<function>"
            ]
        , testGroup "int"
            [ testCase "positive" $ N.nixShow (eval "12") @?= "12"
            , testCase "negative" $ N.nixShow (eval "-12") @?= "-12"
            ]
        , testGroup "list"
            [ testCase "non empty" $ N.nixShow (eval "[ 1 2 3 ]") @?= "[ 1 2 3 ]"
            , testCase "empty" $ N.nixShow (eval "[ ]") @?= "[ ]"
            ]
        , testCase "null" $ N.nixShow (eval "null") @?= "null"
        , testGroup "string"
            [ testCase "double single ticks" $ N.nixShow (eval "''foo''") @?= "\\\"foo\\\""
            , testCase "double ticks" $ N.nixShow (eval "\\\"foo\\\"") @?= "\\\"foo\\\""
            ]
        , testGroup "nested"
            [ testCase "attrs with lists"
                $ N.nixShow (eval "{ x = [ 1 2 3 ]; y = { z = [ 1 2 3 ]; }; }")
                @?= "{ x = [ 1 2 3 ]; y = { z = [ 1 2 3 ]; }; }"
            , testCase "lists with lists"
                $ N.nixShow (eval "[ [ 1 2 3 ] [ 1 2 3 ] ]")
                @?= "[ [ 1 2 3 ] [ 1 2 3 ] ]"
            ]
        ]
    ]
