# !! STILL WORK IN PROGRESS !!

# purescript-miraculix

A testing framework for PureScript's purenix backend.

<img src="miraculix.svg" height="250px"/>

Try the tasty magic potion!

# Docs

# [API Documentation](https://thought2.github.io/purescript-miraculix/Test.Miraculix.html)

# Example

Define some tests like this:

## `test/Main.purs`

```haskell
module Test.Main where

import Prelude
import Miracolix (StorePath, TestTree, runTests, testCase, testGroup, (@?=))

greeting :: String -> String
greeting str = "Hello, " <> str <> "!"

main :: StorePath
main = runTests tests

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

```

## Run tests

```bash
spago build && \
nix-build output/Test.Main/default.nix -A testReport
```

# Limitations

- Currently running the test suite does not work yet with `spago test`.
