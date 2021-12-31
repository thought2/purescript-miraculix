# purescript-miraculix

A testing framework for PureScript's purenix backend.

<img src="assets/miraculix.svg" height="250px"/>

# Docs

[API Documentation](https://thought2.github.io/purescript-miraculix/Test.Miraculix.html)

# Example

Define some tests like this:

## `test/Main.purs`

```haskell
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
        [ testCase "greets the world" $ sort [ 2, 3, 1 ] @?= [ 1, 2, 3 ]
        , testCase "greets the world" $ sort [ 2, 3, 1 ] @?= [ 1, 2 ] -- will fail
        ]
    ]
```

## Run tests

```bash
spago build && \
nix-build output/Test.Main/default.nix -A testReport
```

You'll get the following output on the terminal:

<img src="assets/test-output.png" />

If you fix the tests, the derivation can be built. You'll find a report of the successful tests in the `result` symlink. E.g. try `cat result` to display the file.

# Limitations

- Currently running the test suite does not work yet with `spago test`.
- For now the library is specialized on unit tests.
