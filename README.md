# purescript-purenix-miraculix

<img src="miraculix.svg" height="250px"/>

Try the tasty magic potion!

# API Docs

# Example

Define some tests like this:

## `test/Main.purs`

```haskell
module Test.Main where

import Prelude
import Miracolix (StorePath, TestTree, runTests, testCase, testGroup, (@?=))

testReport :: StorePath
testReport = runTests tests

tests :: TestTree
tests =
  testGroup "Math functions"
    [ testGroup "Function `add`"
        [ testCase "with positive numbers" $ 1 + 1 @?= 2
        , testCase "with positive numbers" $ 1 + 1 @?= 2
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

```

## Run tests

```bash
spago build && \
nix-build output/Test.Main/default.nix -A testReport
```

# Limitations

- Currently running the test suite does not work yet with `spago test`.
