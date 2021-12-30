// This file was generated by purescript-docs-search
window.DocsSearchTypeIndex["702309775"] = [{"values":[{"sourceSpan":{"start":[89,1],"name":".spago/nonempty/master/src/Data/NonEmpty.purs","end":[89,67]},"score":0,"packageInfo":{"values":["nonempty"],"tag":"Package"},"name":"fromNonEmpty","moduleName":"Data.NonEmpty","info":{"values":[{"type":{"tag":"ForAll","contents":["f",{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["r",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeVar","contents":"r"}]}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","NonEmpty"],"NonEmpty"]},{"tag":"TypeVar","contents":"f"}]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeVar","contents":"r"}]}]},null]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Apply a function that takes the `first` element and remaining elements\nas arguments to a non-empty container.\n\nFor example, return the remaining elements multiplied by the first element:\n\n```purescript\nfromNonEmpty (\\x xs -> map (_ * x) xs) (3 :| [2, 1]) == [6, 3]\n```\n"}],"tag":"SearchResult"}]