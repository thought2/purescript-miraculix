// This file was generated by purescript-docs-search.
window.DocsSearchIndex["11"] = [["range",[{"values":[{"sourceSpan":{"start":[199,1],"name":".spago/arrays/master/src/Data/Array/NonEmpty.purs","end":[199,41]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"range","moduleName":"Data.Array.NonEmpty","info":{"values":[{"type":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"Int"]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"Int"]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Array","NonEmpty","Internal"],"NonEmptyArray"]},{"tag":"TypeConstructor","contents":[["Prim"],"Int"]}]}]}]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[189,1],"name":".spago/arrays/master/src/Data/Array.purs","end":[189,48]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"range","moduleName":"Data.Array","info":{"values":[{"type":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"Int"]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"Int"]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeConstructor","contents":[["Prim"],"Int"]}]}]}]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Create an array containing a range of integers, including both endpoints.\n```purescript\nrange 2 5 = [2, 3, 4, 5]\n```\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[107,1],"name":".spago/unfoldable/master/src/Data/Unfoldable1.purs","end":[107,56]},"score":0,"packageInfo":{"values":["unfoldable"],"tag":"Package"},"name":"range","moduleName":"Data.Unfoldable1","info":{"values":[{"type":{"tag":"ForAll","contents":["f",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Unfoldable1"],"Unfoldable1"],"constraintArgs":[{"tag":"TypeVar","contents":"f"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"Int"]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"Int"]}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeConstructor","contents":[["Prim"],"Int"]}]}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Create an `Unfoldable1` containing a range of values, including both\nendpoints.\n\n``` purescript\nrange 0 0 == (NEL.singleton 0 :: NEL.NonEmptyList Int)\nrange 1 2 == (NEL.cons 1 (NEL.singleton 2) :: NEL.NonEmptyList Int)\nrange 2 0 == (NEL.cons 2 (NEL.cons 1 (NEL.singleton 0)) :: NEL.NonEmptyList Int)\n```\n"}],"tag":"SearchResult"}]],["negate",[{"values":[{"sourceSpan":{"start":[53,1],"name":".spago/prelude/master/src/Data/Ring.purs","end":[53,37]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"negate","moduleName":"Data.Ring","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Ring"],"Ring"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"a"}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"`negate x` can be used as a shorthand for `zero - x`.\n"}],"tag":"SearchResult"}]],["new",[{"values":[{"sourceSpan":{"start":[110,1],"name":".spago/st/master/src/Control/Monad/ST/Internal.purs","end":[110,56]},"score":0,"packageInfo":{"values":["st"],"tag":"Package"},"name":"new","moduleName":"Control.Monad.ST.Internal","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["r",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Control","Monad","ST","Internal"],"ST"]},{"tag":"TypeVar","contents":"r"}]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Control","Monad","ST","Internal"],"STRef"]},{"tag":"TypeVar","contents":"r"}]},{"tag":"TypeVar","contents":"a"}]}}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Create a new mutable reference.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[81,1],"name":".spago/arrays/master/src/Data/Array/ST.purs","end":[81,53]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"new","moduleName":"Data.Array.ST","info":{"values":[{"type":{"tag":"ForAll","contents":["h",{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Control","Monad","ST","Internal"],"ST"]},{"tag":"TypeVar","contents":"h"}]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Array","ST"],"STArray"]},{"tag":"TypeVar","contents":"h"}]},{"tag":"TypeVar","contents":"a"}]}}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Create a new, empty mutable array.\n"}],"tag":"SearchResult"}]],["newtype",[{"values":[{"sourceSpan":{"start":[30,1],"name":".spago/newtype/master/src/Data/Newtype.purs","end":[30,44]},"score":1,"packageInfo":{"values":["newtype"],"tag":"Package"},"name":"Newtype","moduleName":"Data.Newtype","info":{"values":[{"superclasses":[{"constraintClass":[["Prim","Coerce"],"Coercible"],"constraintArgs":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"a"}]}],"fundeps":[[["t"],["a"]]],"arguments":[["t",null],["a",null]]}],"tag":"TypeClassResult"},"hashAnchor":"t","comments":"A type class for `newtype`s to enable convenient wrapping and unwrapping,\nand the use of the other functions in this module.\n\nThe compiler can derive instances of `Newtype` automatically:\n\n``` purescript\nnewtype EmailAddress = EmailAddress String\n\nderive instance newtypeEmailAddress :: Newtype EmailAddress _\n```\n\nNote that deriving for `Newtype` instances requires that the type be\ndefined as `newtype` rather than `data` declaration (even if the `data`\nstructurally fits the rules of a `newtype`), and the use of a wildcard for\nthe wrapped type.\n```\n"}],"tag":"SearchResult"}]],["next",[{"values":[{"sourceSpan":{"start":[48,1],"name":".spago/arrays/master/src/Data/Array/ST/Iterator.purs","end":[48,51]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"next","moduleName":"Data.Array.ST.Iterator","info":{"values":[{"type":{"tag":"ForAll","contents":["r",{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Array","ST","Iterator"],"Iterator"]},{"tag":"TypeVar","contents":"r"}]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Control","Monad","ST","Internal"],"ST"]},{"tag":"TypeVar","contents":"r"}]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Maybe"],"Maybe"]},{"tag":"TypeVar","contents":"a"}]}}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Get the next item out of an iterator, advancing it. Returns Nothing if the\nIterator is exhausted.\n"}],"tag":"SearchResult"}]],["endo",[{"values":[{"sourceSpan":{"start":[15,1],"name":".spago/prelude/master/src/Data/Monoid/Endo.purs","end":[15,32]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"Endo","moduleName":"Data.Monoid.Endo","info":{"values":[{"typeArguments":[["c",null],["a",null]],"dataDeclType":"newtype"}],"tag":"DataResult"},"hashAnchor":"t","comments":"Monoid and semigroup for category endomorphisms.\n\nWhen `c` is instantiated with `->` this composes functions of type\n`a -> a`:\n\n``` purescript\nEndo f <> Endo g == Endo (f <<< g)\n(mempty :: Endo _) == Endo identity\n```\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":null,"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"Endo","moduleName":"Data.Monoid.Endo","info":{"values":[{"arguments":[{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"c"},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"a"}]}}]}],"tag":"DataConstructorResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"}]],["doc",[{"values":[{"sourceSpan":null,"score":0,"packageInfo":{"values":[],"tag":"Builtin"},"name":"Doc","moduleName":"Prim.TypeError","info":{"values":[{"kind":{"tag":"TypeConstructor","contents":[["Prim"],"Type"]}}],"tag":"ExternDataResult"},"hashAnchor":"t","comments":"`Doc` is the kind of type-level documents.\n\nThis kind is used with the `Fail` and `Warn` type classes.\nBuild up a `Doc` with `Text`, `Quote`, `QuoteLabel`, `Beside`, and `Above`.\n"}],"tag":"SearchResult"}]],["down",[{"values":[{"sourceSpan":{"start":[12,1],"name":".spago/orders/master/src/Data/Ord/Down.purs","end":[12,24]},"score":0,"packageInfo":{"values":["orders"],"tag":"Package"},"name":"Down","moduleName":"Data.Ord.Down","info":{"values":[{"typeArguments":[["a",null]],"dataDeclType":"newtype"}],"tag":"DataResult"},"hashAnchor":"t","comments":"A newtype wrapper which provides a reversed `Ord` instance. For example:\n\n    sortBy (comparing Down) [1,2,3] = [3,2,1]\n\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":null,"score":0,"packageInfo":{"values":["orders"],"tag":"Package"},"name":"Down","moduleName":"Data.Ord.Down","info":{"values":[{"arguments":[{"tag":"TypeVar","contents":"a"}]}],"tag":"DataConstructorResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"}]],["argument",[{"values":[{"sourceSpan":{"start":[49,1],"name":".spago/prelude/master/src/Data/Generic/Rep.purs","end":[49,32]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"Argument","moduleName":"Data.Generic.Rep","info":{"values":[{"typeArguments":[["a",null]],"dataDeclType":"newtype"}],"tag":"DataResult"},"hashAnchor":"t","comments":"A representation for an argument in a data constructor.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":null,"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"Argument","moduleName":"Data.Generic.Rep","info":{"values":[{"arguments":[{"tag":"TypeVar","contents":"a"}]}],"tag":"DataConstructorResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"}]],["arr",[{"values":[{"sourceSpan":{"start":[34,1],"name":".spago/profunctor/master/src/Data/Profunctor.purs","end":[34,69]},"score":0,"packageInfo":{"values":["profunctor"],"tag":"Package"},"name":"arr","moduleName":"Data.Profunctor","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"ForAll","contents":["p",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Control","Category"],"Category"],"constraintArgs":[{"tag":"TypeVar","contents":"p"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Profunctor"],"Profunctor"],"constraintArgs":[{"tag":"TypeVar","contents":"p"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"b"}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"p"},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"b"}]}]}]}]},null]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Lift a pure function into any `Profunctor` which is also a `Category`.\n"}],"tag":"SearchResult"}]],["array",[{"values":[{"sourceSpan":null,"score":0,"packageInfo":{"values":[],"tag":"Builtin"},"name":"Array","moduleName":"Prim","info":{"values":[{"kind":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"Type"]}]},{"tag":"TypeConstructor","contents":[["Prim"],"Type"]}]}}],"tag":"ExternDataResult"},"hashAnchor":"t","comments":"An Array: a data structure supporting efficient random access. In\nthe JavaScript backend, values of this type are represented as JavaScript\nArrays at runtime.\n\nConstruct values using literals:\n\n    x = [1,2,3,4,5] :: Array Int\n"}],"tag":"SearchResult"}]]]