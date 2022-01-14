// This file was generated by purescript-docs-search
window.DocsSearchTypeIndex["1924225826"] = [{"values":[{"sourceSpan":{"start":[947,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array.purs","end":[951,42]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"span","moduleName":"Data.Array","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeConstructor","contents":[["Prim"],"Boolean"]}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Record"]},{"tag":"RCons","contents":["init",{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"RCons","contents":["rest",{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"REmpty","contents":{}}]}]}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Split an array into two parts:\n\n1. the longest initial subarray for which all elements satisfy the\n   specified predicate\n2. the remaining elements\n\n```purescript\nspan (\\n -> n % 2 == 1) [1,3,2,4,5] == { init: [1,3], rest: [2,4,5] }\n```\n\nRunning time: `O(n)`.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[669,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array.purs","end":[673,39]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"partition","moduleName":"Data.Array","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeConstructor","contents":[["Prim"],"Boolean"]}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Record"]},{"tag":"RCons","contents":["yes",{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"RCons","contents":["no",{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"REmpty","contents":{}}]}]}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Partition an array using a predicate function, creating a set of\nnew arrays. One for the values satisfying the predicate function\nand one for values that don't.\n\n```purescript\npartition (_ > 0) [-1, 4, -5, 7] = { yes: [4, 7], no: [-1, -5] }\n```\n\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[402,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array/NonEmpty.purs","end":[406,42]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"span","moduleName":"Data.Array.NonEmpty","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeConstructor","contents":[["Prim"],"Boolean"]}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Array","NonEmpty","Internal"],"NonEmptyArray"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Record"]},{"tag":"RCons","contents":["init",{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"RCons","contents":["rest",{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"REmpty","contents":{}}]}]}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[324,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array/NonEmpty.purs","end":[328,38]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"partition","moduleName":"Data.Array.NonEmpty","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeConstructor","contents":[["Prim"],"Boolean"]}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Array","NonEmpty","Internal"],"NonEmptyArray"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Record"]},{"tag":"RCons","contents":["yes",{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"RCons","contents":["no",{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"REmpty","contents":{}}]}]}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"}]