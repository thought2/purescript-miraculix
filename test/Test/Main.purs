module Test.Main where

import Prelude
import Test.Miraculix (StorePath, TestTree, runTests, testCase, testGroup, (@?=))
import Data.Array (sort)

main :: StorePath
main = runTests tests

tests :: TestTree
tests =
  testGroup "Lib functions"
    [ testGroup "Math"
        [ testCase "addition" $ 1 + 1 @?= 2
        , testCase "muliplication" $ 3 * 4 @?= 11 -- will fail
        ]
    , testGroup "Strings"
        [ testCase "sorts a list of numbers" $ sort [ 2, 3, 1 ] @?= [ 1, 2, 3 ]
        , testCase "sorts a list of characters" $ sort [ 'c', 'b', 'a' ] @?= [ 'a', 'b' ] -- will fail
        ]
    ]
