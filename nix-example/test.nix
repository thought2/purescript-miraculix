let
  c = import ../output/Test.Miraculix.Classless;

  tests = c.testCase "a" (c.assertEq "s" "f");

  testApp = c.runTests tests;
in
testApp null
