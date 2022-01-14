// This file was generated by purescript-docs-search
window.DocsSearchTypeIndex["1829853192"] = [{"values":[{"sourceSpan":{"start":[203,1],"name":".spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs","end":[203,53]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"between","moduleName":"Data.Ord","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Ord"],"Ord"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeConstructor","contents":[["Prim"],"Boolean"]}]}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Test whether a value is between a minimum and a maximum (inclusive).\nFor example:\n\n``` purescript\nlet f = between 0 10\nf 0    == true\nf (-5) == false\nf 5    == true\nf 10   == true\nf 15   == false\n```\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[189,1],"name":".spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs","end":[189,45]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"clamp","moduleName":"Data.Ord","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Ord"],"Ord"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"a"}]}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Clamp a value between a minimum and a maximum. For example:\n\n``` purescript\nlet f = clamp 0 10\nf (-5) == 0\nf 5    == 5\nf 15   == 10\n```\n"}],"tag":"SearchResult"}]