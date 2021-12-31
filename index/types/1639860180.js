// This file was generated by purescript-docs-search
window.DocsSearchTypeIndex["1639860180"] = [{"values":[{"sourceSpan":{"start":[243,1],"name":".spago/maybe/master/src/Data/Maybe.purs","end":[243,62]},"score":0,"packageInfo":{"values":["maybe"],"tag":"Package"},"name":"maybe'","moduleName":"Data.Maybe","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Data","Unit"],"Unit"]}]},{"tag":"TypeVar","contents":"b"}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"b"}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Maybe"],"Maybe"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeVar","contents":"b"}]}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Similar to `maybe` but for use in cases where the default value may be\nexpensive to compute. As PureScript is not lazy, the standard `maybe` has\nto evaluate the default value before returning the result, whereas here\nthe value is only computed when the `Maybe` is known to be `Nothing`.\n\n``` purescript\nmaybe' (\\_ -> x) f Nothing == x\nmaybe' (\\_ -> x) f (Just y) == f y\n```\n"}],"tag":"SearchResult"}]