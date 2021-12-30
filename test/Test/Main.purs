module Test.Main where

import Prelude
import Miraculix (StorePath, TestTree, runTests, testCase, testGroup, (@?=))

testReport :: StorePath
testReport = runTests tests

tests :: TestTree
tests =
  testGroup "Math functions"
    [ testGroup "Function `add`"
        [ testCase "with positive numbers" $ 1 + 1 @?= 2
        , testCase "with positive numbers" $ 1 + 1 @?= 22
        , testCase "with positive numbers" $ 1 + 1 @?= 2
        , testCase "with negative numbers" $ 1 + 1 @?= 2
        ]
    , testGroup "String functions"
        [ testCase "concatenation" $ "Hello" <> "World!" @?= "HelloWorld!"
        , testCase "concatenation" $ "Hello" <> "World!" @?= "HelloWorld!"
        , testCase "concatenation" $ "Hello" <> "World!" @?= "HelloWorld!X"
        , testCase "concatenation" $ "Hello" <> "World!" @?= "HelloWorld!"
        ]
    ]
