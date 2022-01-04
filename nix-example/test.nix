with builtins;
with import ../output/Test.Miraculix.Classless;
let
  tests =
    (testGroup "Lib functions" [
      (testGroup "Math" [
        (testCase "addition" (assertEq (1 + 1) 2))
        (testCase "multiplication" (assertEq (3 * 4) 11))
      ])
      (testGroup "Strings" [
        (testCase "sorts a list of numbers"
          (assertEq (sort lessThan [ 3 2 1 ]) [ 1 2 3 ]))
        (testCase "sorts a list of characters"
          (assertEq (sort lessThan [ "c" "b" "a" ]) [ "a" "b" ]))
      ])
    ]
    );
in
runTests tests null
