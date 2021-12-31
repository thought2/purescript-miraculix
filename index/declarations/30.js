// This file was generated by purescript-docs-search.
window.DocsSearchIndex["30"] = [["trace",[{"values":[{"sourceSpan":{"start":[37,1],"name":"src/Test/Miraculix/FFI.purs","end":[37,46]},"score":0,"packageInfo":{"values":[],"tag":"LocalPackage"},"name":"trace","moduleName":"Test.Miraculix.FFI","info":{"values":[{"type":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"String"]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Effect"],"Effect"]},{"tag":"TypeConstructor","contents":[["Data","Unit"],"Unit"]}]}]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"}]],["traversable",[{"values":[{"sourceSpan":{"start":[79,1],"name":".spago/foldable-traversable/master/src/Data/Traversable.purs","end":[81,62]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"Traversable","moduleName":"Data.Traversable","info":{"values":[{"superclasses":[{"constraintClass":[["Data","Functor"],"Functor"],"constraintArgs":[{"tag":"TypeVar","contents":"t"}]},{"constraintClass":[["Data","Foldable"],"Foldable"],"constraintArgs":[{"tag":"TypeVar","contents":"t"}]}],"fundeps":[],"arguments":[["t",null]]}],"tag":"TypeClassResult"},"hashAnchor":"t","comments":"`Traversable` represents data structures which can be _traversed_,\naccumulating results and effects in some `Applicative` functor.\n\n- `traverse` runs an action for every element in a data structure,\n  and accumulates the results.\n- `sequence` runs the actions _contained_ in a data structure,\n  and accumulates the results.\n\n```purescript\nimport Data.Traversable\nimport Data.Maybe\nimport Data.Int (fromNumber)\n\nsequence [Just 1, Just 2, Just 3] == Just [1,2,3]\nsequence [Nothing, Just 2, Just 3] == Nothing\n\ntraverse fromNumber [1.0, 2.0, 3.0] == Just [1,2,3]\ntraverse fromNumber [1.5, 2.0, 3.0] == Nothing\n\ntraverse logShow [1,2,3]\n-- prints:\n   1\n   2\n   3\n\ntraverse (\\x -> [x, 0]) [1,2,3] == [[1,2,3],[1,2,0],[1,0,3],[1,0,0],[0,2,3],[0,2,0],[0,0,3],[0,0,0]]\n```\n\nThe `traverse` and `sequence` functions should be compatible in the\nfollowing sense:\n\n- `traverse f xs = sequence (f <$> xs)`\n- `sequence = traverse identity`\n\n`Traversable` instances should also be compatible with the corresponding\n`Foldable` instances, in the following sense:\n\n- `foldMap f = runConst <<< traverse (Const <<< f)`\n\nDefault implementations are provided by the following functions:\n\n- `traverseDefault`\n- `sequenceDefault`\n"}],"tag":"SearchResult"}]],["traversable1",[{"values":[{"sourceSpan":{"start":[35,1],"name":".spago/foldable-traversable/master/src/Data/Semigroup/Traversable.purs","end":[37,57]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"Traversable1","moduleName":"Data.Semigroup.Traversable","info":{"values":[{"superclasses":[{"constraintClass":[["Data","Semigroup","Foldable"],"Foldable1"],"constraintArgs":[{"tag":"TypeVar","contents":"t"}]},{"constraintClass":[["Data","Traversable"],"Traversable"],"constraintArgs":[{"tag":"TypeVar","contents":"t"}]}],"fundeps":[],"arguments":[["t",null]]}],"tag":"TypeClassResult"},"hashAnchor":"t","comments":"`Traversable1` represents data structures with a minimum of one element that can be _traversed_,\naccumulating results and effects in some `Applicative` functor.\n\n- `traverse1` runs an action for every element in a data structure,\n  and accumulates the results.\n- `sequence1` runs the actions _contained_ in a data structure,\n  and accumulates the results.\n\nThe `traverse1` and `sequence1` functions should be compatible in the\nfollowing sense:\n\n- `traverse1 f xs = sequence1 (f <$> xs)`\n- `sequence1 = traverse1 identity`\n\n`Traversable1` instances should also be compatible with the corresponding\n`Foldable1` instances, in the following sense:\n\n- `foldMap1 f = runConst <<< traverse1 (Const <<< f)`\n\nDefault implementations are provided by the following functions:\n\n- `traverse1Default`\n- `sequence1Default`\n"}],"tag":"SearchResult"}]],["traversablewithindex",[{"values":[{"sourceSpan":{"start":[55,1],"name":".spago/foldable-traversable/master/src/Data/TraversableWithIndex.purs","end":[56,88]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"TraversableWithIndex","moduleName":"Data.TraversableWithIndex","info":{"values":[{"superclasses":[{"constraintClass":[["Data","FunctorWithIndex"],"FunctorWithIndex"],"constraintArgs":[{"tag":"TypeVar","contents":"i"},{"tag":"TypeVar","contents":"t"}]},{"constraintClass":[["Data","FoldableWithIndex"],"FoldableWithIndex"],"constraintArgs":[{"tag":"TypeVar","contents":"i"},{"tag":"TypeVar","contents":"t"}]},{"constraintClass":[["Data","Traversable"],"Traversable"],"constraintArgs":[{"tag":"TypeVar","contents":"t"}]}],"fundeps":[[["t"],["i"]]],"arguments":[["i",null],["t",null]]}],"tag":"TypeClassResult"},"hashAnchor":"t","comments":"A `Traversable` with an additional index.  \nA `TraversableWithIndex` instance must be compatible with its\n`Traversable` instance\n```purescript\ntraverse f = traverseWithIndex (const f)\n```\nwith its `FoldableWithIndex` instance\n```\nfoldMapWithIndex f = unwrap <<< traverseWithIndex (\\i -> Const <<< f i)\n```\nand with its `FunctorWithIndex` instance\n```\nmapWithIndex f = unwrap <<< traverseWithIndex (\\i -> Identity <<< f i)\n```\n\nA default implementation is provided by `traverseWithIndexDefault`.\n"}],"tag":"SearchResult"}]],["traverse",[{"values":[{"sourceSpan":{"start":[284,1],"name":".spago/newtype/master/src/Data/Newtype.purs","end":[291,9]},"score":1,"packageInfo":{"values":["newtype"],"tag":"Package"},"name":"traverse","moduleName":"Data.Newtype","info":{"values":[{"type":{"tag":"ForAll","contents":["f",{"tag":"ForAll","contents":["t",{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Prim","Coerce"],"Coercible"],"constraintArgs":[{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"a"}]}},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"t"}]}}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Newtype"],"Newtype"],"constraintArgs":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"t"}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"a"}]}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"t"}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"t"}]}]}]}]}]}]},null]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Similar to the function from the `Traversable` class, but operating within\na newtype instead.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[80,3],"name":".spago/foldable-traversable/master/src/Data/Traversable.purs","end":[80,74]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"traverse","moduleName":"Data.Traversable","info":{"values":[{"typeClassArguments":[["t",null]],"typeClass":[["Data","Traversable"],"Traversable"],"type":{"tag":"ForAll","contents":["t",{"tag":"ForAll","contents":["m",{"tag":"ForAll","contents":["b",{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Traversable"],"Traversable"],"constraintArgs":[{"tag":"TypeVar","contents":"t"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Control","Applicative"],"Applicative"],"constraintArgs":[{"tag":"TypeVar","contents":"m"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"m"},{"tag":"TypeVar","contents":"b"}]}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"m"},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"b"}]}}]}]}]}]}]},null]},null]},null]},null]}}],"tag":"TypeClassMemberResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"}]],["traverse1",[{"values":[{"sourceSpan":{"start":[36,3],"name":".spago/foldable-traversable/master/src/Data/Semigroup/Traversable.purs","end":[36,69]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"traverse1","moduleName":"Data.Semigroup.Traversable","info":{"values":[{"typeClassArguments":[["t",null]],"typeClass":[["Data","Semigroup","Traversable"],"Traversable1"],"type":{"tag":"ForAll","contents":["t",{"tag":"ForAll","contents":["f",{"tag":"ForAll","contents":["b",{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Semigroup","Traversable"],"Traversable1"],"constraintArgs":[{"tag":"TypeVar","contents":"t"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Control","Apply"],"Apply"],"constraintArgs":[{"tag":"TypeVar","contents":"f"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"b"}]}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"b"}]}}]}]}]}]}]},null]},null]},null]},null]}}],"tag":"TypeClassMemberResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"}]],["traverse1_",[{"values":[{"sourceSpan":{"start":[123,1],"name":".spago/foldable-traversable/master/src/Data/Semigroup/Foldable.purs","end":[123,84]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"traverse1_","moduleName":"Data.Semigroup.Foldable","info":{"values":[{"type":{"tag":"ForAll","contents":["t",{"tag":"ForAll","contents":["f",{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Semigroup","Foldable"],"Foldable1"],"constraintArgs":[{"tag":"TypeVar","contents":"t"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Control","Apply"],"Apply"],"constraintArgs":[{"tag":"TypeVar","contents":"f"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"b"}]}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeConstructor","contents":[["Data","Unit"],"Unit"]}]}]}]}]}]},null]},null]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Traverse a data structure, performing some effects encoded by an\n`Apply` instance at each value, ignoring the final result.\n"}],"tag":"SearchResult"}]],["traverse1default",[{"values":[{"sourceSpan":{"start":[56,1],"name":".spago/foldable-traversable/master/src/Data/Semigroup/Traversable.purs","end":[62,13]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"traverse1Default","moduleName":"Data.Semigroup.Traversable","info":{"values":[{"type":{"tag":"ForAll","contents":["t",{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"ForAll","contents":["m",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Semigroup","Traversable"],"Traversable1"],"constraintArgs":[{"tag":"TypeVar","contents":"t"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Control","Apply"],"Apply"],"constraintArgs":[{"tag":"TypeVar","contents":"m"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"m"},{"tag":"TypeVar","contents":"b"}]}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"m"},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"b"}]}}]}]}]}]}]},null]},null]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"A default implementation of `traverse1` using `sequence1`.\n"}],"tag":"SearchResult"}]],["traverse_",[{"values":[{"sourceSpan":{"start":[243,1],"name":".spago/foldable-traversable/master/src/Data/Foldable.purs","end":[249,12]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"traverse_","moduleName":"Data.Foldable","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"ForAll","contents":["f",{"tag":"ForAll","contents":["m",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Control","Applicative"],"Applicative"],"constraintArgs":[{"tag":"TypeVar","contents":"m"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Foldable"],"Foldable"],"constraintArgs":[{"tag":"TypeVar","contents":"f"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"m"},{"tag":"TypeVar","contents":"b"}]}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"m"},{"tag":"TypeConstructor","contents":[["Data","Unit"],"Unit"]}]}]}]}]}]},null]},null]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Traverse a data structure, performing some effects encoded by an\n`Applicative` functor at each value, ignoring the final result.\n\nFor example:\n\n```purescript\ntraverse_ print [1, 2, 3]\n```\n"}],"tag":"SearchResult"}]],["traversedefault",[{"values":[{"sourceSpan":{"start":[84,1],"name":".spago/foldable-traversable/master/src/Data/Traversable.purs","end":[90,13]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"traverseDefault","moduleName":"Data.Traversable","info":{"values":[{"type":{"tag":"ForAll","contents":["t",{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"ForAll","contents":["m",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Traversable"],"Traversable"],"constraintArgs":[{"tag":"TypeVar","contents":"t"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Control","Applicative"],"Applicative"],"constraintArgs":[{"tag":"TypeVar","contents":"m"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"m"},{"tag":"TypeVar","contents":"b"}]}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"m"},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"b"}]}}]}]}]}]}]},null]},null]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"A default implementation of `traverse` using `sequence` and `map`.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[208,1],"name":".spago/foldable-traversable/master/src/Data/TraversableWithIndex.purs","end":[212,34]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"traverseDefault","moduleName":"Data.TraversableWithIndex","info":{"values":[{"type":{"tag":"ForAll","contents":["i",{"tag":"ForAll","contents":["t",{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"ForAll","contents":["m",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","TraversableWithIndex"],"TraversableWithIndex"],"constraintArgs":[{"tag":"TypeVar","contents":"i"},{"tag":"TypeVar","contents":"t"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Control","Applicative"],"Applicative"],"constraintArgs":[{"tag":"TypeVar","contents":"m"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"m"},{"tag":"TypeVar","contents":"b"}]}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"m"},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"b"}]}}]}]}]}]}]},null]},null]},null]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"A default implementation of `traverse` in terms of `traverseWithIndex`\n"}],"tag":"SearchResult"}]],["traversewithindex",[{"values":[{"sourceSpan":{"start":[56,3],"name":".spago/foldable-traversable/master/src/Data/TraversableWithIndex.purs","end":[56,88]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"traverseWithIndex","moduleName":"Data.TraversableWithIndex","info":{"values":[{"typeClassArguments":[["i",null],["t",null]],"typeClass":[["Data","TraversableWithIndex"],"TraversableWithIndex"],"type":{"tag":"ForAll","contents":["i",{"tag":"ForAll","contents":["t",{"tag":"ForAll","contents":["m",{"tag":"ForAll","contents":["b",{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","TraversableWithIndex"],"TraversableWithIndex"],"constraintArgs":[{"tag":"TypeVar","contents":"i"},{"tag":"TypeVar","contents":"t"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Control","Applicative"],"Applicative"],"constraintArgs":[{"tag":"TypeVar","contents":"m"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"i"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"m"},{"tag":"TypeVar","contents":"b"}]}]}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"m"},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"b"}]}}]}]}]}]}]},null]},null]},null]},null]},null]}}],"tag":"TypeClassMemberResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"}]],["traversewithindex_",[{"values":[{"sourceSpan":{"start":[234,1],"name":".spago/foldable-traversable/master/src/Data/FoldableWithIndex.purs","end":[240,12]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"traverseWithIndex_","moduleName":"Data.FoldableWithIndex","info":{"values":[{"type":{"tag":"ForAll","contents":["i",{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"ForAll","contents":["f",{"tag":"ForAll","contents":["m",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Control","Applicative"],"Applicative"],"constraintArgs":[{"tag":"TypeVar","contents":"m"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","FoldableWithIndex"],"FoldableWithIndex"],"constraintArgs":[{"tag":"TypeVar","contents":"i"},{"tag":"TypeVar","contents":"f"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"i"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"m"},{"tag":"TypeVar","contents":"b"}]}]}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"m"},{"tag":"TypeConstructor","contents":[["Data","Unit"],"Unit"]}]}]}]}]}]},null]},null]},null]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Traverse a data structure with access to the index, performing some\neffects encoded by an `Applicative` functor at each value, ignoring the\nfinal result.\n\nFor example:\n\n```purescript\n> traverseWithIndex_ (curry logShow) [\"a\", \"b\", \"c\"]\n(Tuple 0 \"a\")\n(Tuple 1 \"b\")\n(Tuple 2 \"c\")\n```\n"}],"tag":"SearchResult"}]],["traversewithindexdefault",[{"values":[{"sourceSpan":{"start":[59,1],"name":".spago/foldable-traversable/master/src/Data/TraversableWithIndex.purs","end":[65,13]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"traverseWithIndexDefault","moduleName":"Data.TraversableWithIndex","info":{"values":[{"type":{"tag":"ForAll","contents":["i",{"tag":"ForAll","contents":["t",{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"ForAll","contents":["m",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","TraversableWithIndex"],"TraversableWithIndex"],"constraintArgs":[{"tag":"TypeVar","contents":"i"},{"tag":"TypeVar","contents":"t"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Control","Applicative"],"Applicative"],"constraintArgs":[{"tag":"TypeVar","contents":"m"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"i"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"m"},{"tag":"TypeVar","contents":"b"}]}]}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"m"},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"b"}]}}]}]}]}]}]},null]},null]},null]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"A default implementation of `traverseWithIndex` using `sequence` and `mapWithIndex`.\n"}],"tag":"SearchResult"}]],["true",[{"values":[{"sourceSpan":null,"score":0,"packageInfo":{"values":[],"tag":"Builtin"},"name":"True","moduleName":"Prim.Boolean","info":{"values":[{"kind":{"tag":"TypeConstructor","contents":[["Prim"],"Boolean"]}}],"tag":"ExternDataResult"},"hashAnchor":"t","comments":"The 'True' boolean type.\n"}],"tag":"SearchResult"}]],["rtraverse",[{"values":[{"sourceSpan":{"start":[80,1],"name":".spago/foldable-traversable/master/src/Data/Bitraversable.purs","end":[86,15]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"rtraverse","moduleName":"Data.Bitraversable","info":{"values":[{"type":{"tag":"ForAll","contents":["t",{"tag":"ForAll","contents":["b",{"tag":"ForAll","contents":["c",{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["f",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Bitraversable"],"Bitraversable"],"constraintArgs":[{"tag":"TypeVar","contents":"t"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Control","Applicative"],"Applicative"],"constraintArgs":[{"tag":"TypeVar","contents":"f"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"b"}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"c"}]}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"b"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"c"}]}}]}]}]}]}]},null]},null]},null]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"}]],["quote",[{"values":[{"sourceSpan":null,"score":0,"packageInfo":{"values":[],"tag":"Builtin"},"name":"Quote","moduleName":"Prim.TypeError","info":{"values":[{"kind":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"Type"]}]},{"tag":"TypeConstructor","contents":[["Prim","TypeError"],"Doc"]}]}}],"tag":"ExternDataResult"},"hashAnchor":"t","comments":"The Quote type constructor renders any concrete type as a Doc\nto be used in a custom type error.\n\nFor more information, see\n[the Custom Type Errors guide](https://github.com/purescript/documentation/blob/master/guides/Custom-Type-Errors.md).\n"}],"tag":"SearchResult"}]],["quotelabel",[{"values":[{"sourceSpan":null,"score":0,"packageInfo":{"values":[],"tag":"Builtin"},"name":"QuoteLabel","moduleName":"Prim.TypeError","info":{"values":[{"kind":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"Symbol"]}]},{"tag":"TypeConstructor","contents":[["Prim","TypeError"],"Doc"]}]}}],"tag":"ExternDataResult"},"hashAnchor":"t","comments":"The `QuoteLabel` type constructor will produce a `Doc` when given a `Symbol`. When the resulting `Doc` is rendered\nfor a `Warn` or `Fail` constraint, a syntactically valid label will be produced, escaping with quotes as needed.\n\nFor more information, see\n[the Custom Type Errors guide](https://github.com/purescript/documentation/blob/master/guides/Custom-Type-Errors.md).\n"}],"tag":"SearchResult"}]]]