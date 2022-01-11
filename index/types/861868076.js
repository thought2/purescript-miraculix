// This file was generated by purescript-docs-search
window.DocsSearchTypeIndex["861868076"] = [{"values":[{"sourceSpan":{"start":[24,3],"name":".spago/prelude/master/src/Data/Symbol.purs","end":[24,53]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"reflectSymbol","moduleName":"Data.Symbol","info":{"values":[{"typeClassArguments":[["sym",{"tag":"TypeConstructor","contents":[["Prim"],"Symbol"]}]],"typeClass":[["Data","Symbol"],"IsSymbol"],"type":{"tag":"ForAll","contents":["sym",{"tag":"TypeConstructor","contents":[["Prim"],"Symbol"]},{"tag":"ForAll","contents":["proxy",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Symbol"],"IsSymbol"],"constraintArgs":[{"tag":"TypeVar","contents":"sym"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"proxy"},{"tag":"TypeVar","contents":"sym"}]}]},{"tag":"TypeConstructor","contents":[["Prim"],"String"]}]}]},null]},null]}}],"tag":"TypeClassMemberResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[144,1],"name":".spago/foldable-traversable/master/src/Data/Semigroup/Foldable.purs","end":[144,56]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"minimum","moduleName":"Data.Semigroup.Foldable","info":{"values":[{"type":{"tag":"ForAll","contents":["f",{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Ord"],"Ord"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Semigroup","Foldable"],"Foldable1"],"constraintArgs":[{"tag":"TypeVar","contents":"f"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeVar","contents":"a"}]}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[138,1],"name":".spago/foldable-traversable/master/src/Data/Semigroup/Foldable.purs","end":[138,56]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"maximum","moduleName":"Data.Semigroup.Foldable","info":{"values":[{"type":{"tag":"ForAll","contents":["f",{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Ord"],"Ord"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Semigroup","Foldable"],"Foldable1"],"constraintArgs":[{"tag":"TypeVar","contents":"f"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeVar","contents":"a"}]}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[109,1],"name":".spago/foldable-traversable/master/src/Data/Semigroup/Foldable.purs","end":[109,60]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"fold1","moduleName":"Data.Semigroup.Foldable","info":{"values":[{"type":{"tag":"ForAll","contents":["t",{"tag":"ForAll","contents":["m",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Semigroup","Foldable"],"Foldable1"],"constraintArgs":[{"tag":"TypeVar","contents":"t"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Semigroup"],"Semigroup"],"constraintArgs":[{"tag":"TypeVar","contents":"m"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"m"}]}]},{"tag":"TypeVar","contents":"m"}]}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Fold a data structure, accumulating values in some `Semigroup`.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[460,1],"name":".spago/foldable-traversable/master/src/Data/Foldable.purs","end":[460,49]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"null","moduleName":"Data.Foldable","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["f",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Foldable"],"Foldable"],"constraintArgs":[{"tag":"TypeVar","contents":"f"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeConstructor","contents":[["Prim"],"Boolean"]}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Test whether the structure is empty.\nOptimized for structures that are similar to cons-lists, because there\nis no general way to do better.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[382,1],"name":".spago/foldable-traversable/master/src/Data/Foldable.purs","end":[382,60]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"product","moduleName":"Data.Foldable","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["f",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Foldable"],"Foldable"],"constraintArgs":[{"tag":"TypeVar","contents":"f"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Semiring"],"Semiring"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeVar","contents":"a"}]}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Find the product of the numeric values in a data structure.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[378,1],"name":".spago/foldable-traversable/master/src/Data/Foldable.purs","end":[378,56]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"sum","moduleName":"Data.Foldable","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["f",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Foldable"],"Foldable"],"constraintArgs":[{"tag":"TypeVar","contents":"f"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Semiring"],"Semiring"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeVar","contents":"a"}]}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Find the sum of the numeric values in a data structure.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[364,1],"name":".spago/foldable-traversable/master/src/Data/Foldable.purs","end":[364,61]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"or","moduleName":"Data.Foldable","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["f",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Foldable"],"Foldable"],"constraintArgs":[{"tag":"TypeVar","contents":"f"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","HeytingAlgebra"],"HeytingAlgebra"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeVar","contents":"a"}]}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"The disjunction of all the values in a data structure. When specialized\nto `Boolean`, this function will test whether any of the values in a data\nstructure is `true`.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[358,1],"name":".spago/foldable-traversable/master/src/Data/Foldable.purs","end":[358,62]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"and","moduleName":"Data.Foldable","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["f",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Foldable"],"Foldable"],"constraintArgs":[{"tag":"TypeVar","contents":"f"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","HeytingAlgebra"],"HeytingAlgebra"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeVar","contents":"a"}]}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"The conjunction of all the values in a data structure. When specialized\nto `Boolean`, this function will test whether all of the values in a data\nstructure are `true`.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[225,1],"name":".spago/foldable-traversable/master/src/Data/Foldable.purs","end":[225,55]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"fold","moduleName":"Data.Foldable","info":{"values":[{"type":{"tag":"ForAll","contents":["f",{"tag":"ForAll","contents":["m",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Foldable"],"Foldable"],"constraintArgs":[{"tag":"TypeVar","contents":"f"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Monoid"],"Monoid"],"constraintArgs":[{"tag":"TypeVar","contents":"m"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"m"}]}]},{"tag":"TypeVar","contents":"m"}]}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Fold a data structure, accumulating values in some `Monoid`.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[21,3],"name":".spago/control/master/src/Control/Comonad.purs","end":[21,32]},"score":1,"packageInfo":{"values":["control"],"tag":"Package"},"name":"extract","moduleName":"Control.Comonad","info":{"values":[{"typeClassArguments":[["w",null]],"typeClass":[["Control","Comonad"],"Comonad"],"type":{"tag":"ForAll","contents":["w",{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Control","Comonad"],"Comonad"],"constraintArgs":[{"tag":"TypeVar","contents":"w"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"w"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeVar","contents":"a"}]}]},null]},null]}}],"tag":"TypeClassMemberResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"}]