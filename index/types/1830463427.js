// This file was generated by purescript-docs-search
window.DocsSearchTypeIndex["1830463427"] = [{"values":[{"sourceSpan":{"start":[10,1],"name":".spago/prelude/master/src/Record/Unsafe.purs","end":[10,70]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"unsafeHas","moduleName":"Record.Unsafe","info":{"values":[{"type":{"tag":"ForAll","contents":["r1",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"String"]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Record"]},{"tag":"TypeVar","contents":"r1"}]}]},{"tag":"TypeConstructor","contents":[["Prim"],"Boolean"]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Checks if a record has a key, using a string for the key.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[255,1],"name":".spago/maybe/master/src/Data/Maybe.purs","end":[255,41]},"score":0,"packageInfo":{"values":["maybe"],"tag":"Package"},"name":"fromMaybe","moduleName":"Data.Maybe","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Maybe"],"Maybe"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeVar","contents":"a"}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Takes a default value, and a `Maybe` value. If the `Maybe` value is\n`Nothing` the default value is returned, otherwise the value inside the\n`Just` is returned.\n\n``` purescript\nfromMaybe x Nothing == x\nfromMaybe x (Just y) == y\n```\n"}],"tag":"SearchResult"}]