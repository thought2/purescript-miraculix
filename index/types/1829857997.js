// This file was generated by purescript-docs-search
window.DocsSearchTypeIndex["1829857997"] = [{"values":[{"sourceSpan":{"start":[107,1],"name":".spago/unfoldable/master/src/Data/Unfoldable1.purs","end":[107,56]},"score":0,"packageInfo":{"values":["unfoldable"],"tag":"Package"},"name":"range","moduleName":"Data.Unfoldable1","info":{"values":[{"type":{"tag":"ForAll","contents":["f",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Unfoldable1"],"Unfoldable1"],"constraintArgs":[{"tag":"TypeVar","contents":"f"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"Int"]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"Int"]}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeConstructor","contents":[["Prim"],"Int"]}]}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Create an `Unfoldable1` containing a range of values, including both\nendpoints.\n\n``` purescript\nrange 0 0 == (NEL.singleton 0 :: NEL.NonEmptyList Int)\nrange 1 2 == (NEL.cons 1 (NEL.singleton 2) :: NEL.NonEmptyList Int)\nrange 2 0 == (NEL.cons 2 (NEL.cons 1 (NEL.singleton 0)) :: NEL.NonEmptyList Int)\n```\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[195,1],"name":".spago/arrays/master/src/Data/Array.purs","end":[195,58]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"replicate","moduleName":"Data.Array","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"Int"]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Create an array containing a value repeated the specified number of times.\n```purescript\nreplicate 2 \"Hi\" = [\"Hi\", \"Hi\"]\n```\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[205,1],"name":".spago/arrays/master/src/Data/Array/NonEmpty.purs","end":[205,51]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"replicate","moduleName":"Data.Array.NonEmpty","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"Int"]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Array","NonEmpty","Internal"],"NonEmptyArray"]},{"tag":"TypeVar","contents":"a"}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Replicate an item at least once\n"}],"tag":"SearchResult"}]