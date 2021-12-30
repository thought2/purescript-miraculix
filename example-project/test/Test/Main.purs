module Test.Main where

import Prelude
import Test.Miraculix (StorePath, TestTree, runTests, testCase, testGroup, (@?=))
import Lib (greeting)

testReport :: StorePath
testReport = runTests tests

tests :: TestTree
tests =
  testGroup "Lib functions"
    [ testGroup "Math"
        [ testCase "addition" $ 1 + 1 @?= 2
        , testCase "muliplication" $ 3 * 4 @?= 12
        ]
    , testGroup "Strings"
        [ testCase "concatenation" $ "Hello" <> "World!" @?= "HelloWorld!"
        , testCase "greets the world" $ greeting "World" @?= "Hello, World!"
        ]
    ]
