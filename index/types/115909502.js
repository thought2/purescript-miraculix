// This file was generated by purescript-docs-search
window.DocsSearchTypeIndex["115909502"] = [{"values":[{"sourceSpan":{"start":[283,1],"name":".spago/either/master/src/Data/Either.purs","end":[283,42]},"score":0,"packageInfo":{"values":["either"],"tag":"Package"},"name":"hush","moduleName":"Data.Either","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Either"],"Either"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"b"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Maybe"],"Maybe"]},{"tag":"TypeVar","contents":"b"}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Turns an `Either` into a `Maybe`, by throwing eventual `Left` values away and converting\nthem into `Nothing`. `Right` values get turned into `Just`s.\n\n```purescript\nhush (Left \"ParseError\") = Nothing\nhush (Right 42) = Just 42\n```\n"}],"tag":"SearchResult"}]