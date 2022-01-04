// This file was generated by purescript-docs-search
window.DocsSearchTypeIndex["63437464"] = [{"values":[{"sourceSpan":{"start":[12,1],"name":".spago/partial/948fdc982a3677fc4daa1b884e333d503b5dbac0/src/Partial.purs","end":[12,46]},"score":0,"packageInfo":{"values":["partial"],"tag":"Package"},"name":"crashWith","moduleName":"Partial","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Prim"],"Partial"],"constraintArgs":[]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"String"]}]},{"tag":"TypeVar","contents":"a"}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"A partial function which crashes on any input with the specified message.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[23,1],"name":".spago/partial/948fdc982a3677fc4daa1b884e333d503b5dbac0/src/Partial/Unsafe.purs","end":[23,41]},"score":0,"packageInfo":{"values":["partial"],"tag":"Package"},"name":"unsafeCrashWith","moduleName":"Partial.Unsafe","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"String"]}]},{"tag":"TypeVar","contents":"a"}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"A function which crashes with the specified error message.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[19,1],"name":".spago/partial/948fdc982a3677fc4daa1b884e333d503b5dbac0/src/Partial/Unsafe.purs","end":[19,47]},"score":0,"packageInfo":{"values":["partial"],"tag":"Package"},"name":"unsafePartial","moduleName":"Partial.Unsafe","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"ConstrainedType","contents":[{"constraintClass":[["Prim"],"Partial"],"constraintArgs":[]},{"tag":"TypeVar","contents":"a"}]}}]},{"tag":"TypeVar","contents":"a"}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Discharge a partiality constraint, unsafely.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[20,3],"name":".spago/foreign-path/fe7f41b7749955ee6acdc3edcdc448b48f788ecd/src/Foreign/Path.purs","end":[20,19]},"score":0,"packageInfo":{"values":["foreign-path"],"tag":"Package"},"name":"rel","moduleName":"Foreign.Path","info":{"values":[{"typeClassArguments":[["a",null]],"typeClass":[["Foreign","Path"],"ToPath"],"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Foreign","Path"],"ToPath"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeConstructor","contents":[["Foreign","Path"],"Path"]}]}]},null]}}],"tag":"TypeClassMemberResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[19,3],"name":".spago/foreign-path/fe7f41b7749955ee6acdc3edcdc448b48f788ecd/src/Foreign/Path.purs","end":[19,19]},"score":0,"packageInfo":{"values":["foreign-path"],"tag":"Package"},"name":"abs","moduleName":"Foreign.Path","info":{"values":[{"typeClassArguments":[["a",null]],"typeClass":[["Foreign","Path"],"ToPath"],"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Foreign","Path"],"ToPath"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeConstructor","contents":[["Foreign","Path"],"Path"]}]}]},null]}}],"tag":"TypeClassMemberResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[36,1],"name":".spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Void.purs","end":[36,30]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"absurd","moduleName":"Data.Void","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Data","Void"],"Void"]}]},{"tag":"TypeVar","contents":"a"}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Eliminator for the `Void` type.\nUseful for stating that some code branch is impossible because you've\n\"acquired\" a value of type `Void` (which you can't).\n\n```purescript\nrightOnly :: forall t . Either Void t -> t\nrightOnly (Left v) = absurd v\nrightOnly (Right t) = t\n```\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[18,3],"name":".spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Show.purs","end":[18,22]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"show","moduleName":"Data.Show","info":{"values":[{"typeClassArguments":[["a",null]],"typeClass":[["Data","Show"],"Show"],"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Show"],"Show"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeConstructor","contents":[["Prim"],"String"]}]}]},null]}}],"tag":"TypeClassMemberResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[15,3],"name":".spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Show/Generic.purs","end":[15,30]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"genericShow'","moduleName":"Data.Show.Generic","info":{"values":[{"typeClassArguments":[["a",null]],"typeClass":[["Data","Show","Generic"],"GenericShow"],"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Show","Generic"],"GenericShow"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeConstructor","contents":[["Prim"],"String"]}]}]},null]}}],"tag":"TypeClassMemberResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[53,1],"name":".spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ring.purs","end":[53,37]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"negate","moduleName":"Data.Ring","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Ring"],"Ring"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"a"}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"`negate x` can be used as a shorthand for `zero - x`.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[216,1],"name":".spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs","end":[216,46]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"signum","moduleName":"Data.Ord","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Ord"],"Ord"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Ring"],"Ring"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"a"}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"The sign function; always evaluates to either `one` or `negate one`. For\nany `x`, we should have `signum x * abs x == x`.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[211,1],"name":".spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs","end":[211,43]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"abs","moduleName":"Data.Ord","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Ord"],"Ord"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Ring"],"Ring"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"a"}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"The absolute value function. `abs x` is defined as `if x >= zero then x\nelse negate x`.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[44,3],"name":".spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra.purs","end":[44,16]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"not","moduleName":"Data.HeytingAlgebra","info":{"values":[{"typeClassArguments":[["a",null]],"typeClass":[["Data","HeytingAlgebra"],"HeytingAlgebra"],"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","HeytingAlgebra"],"HeytingAlgebra"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"a"}]}]},null]}}],"tag":"TypeClassMemberResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[14,3],"name":".spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs","end":[14,24]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"genericNot'","moduleName":"Data.HeytingAlgebra.Generic","info":{"values":[{"typeClassArguments":[["a",null]],"typeClass":[["Data","HeytingAlgebra","Generic"],"GenericHeytingAlgebra"],"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","HeytingAlgebra","Generic"],"GenericHeytingAlgebra"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"a"}]}]},null]}}],"tag":"TypeClassMemberResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[64,3],"name":".spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/EuclideanRing.purs","end":[64,21]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"degree","moduleName":"Data.EuclideanRing","info":{"values":[{"typeClassArguments":[["a",null]],"typeClass":[["Data","EuclideanRing"],"EuclideanRing"],"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","EuclideanRing"],"EuclideanRing"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeConstructor","contents":[["Prim"],"Int"]}]}]},null]}}],"tag":"TypeClassMemberResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[30,3],"name":".spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/DivisionRing.purs","end":[30,18]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"recip","moduleName":"Data.DivisionRing","info":{"values":[{"typeClassArguments":[["a",null]],"typeClass":[["Data","DivisionRing"],"DivisionRing"],"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","DivisionRing"],"DivisionRing"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"a"}]}]},null]}}],"tag":"TypeClassMemberResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"}]