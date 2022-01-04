// This file was generated by purescript-docs-search.
window.DocsSearchIndex["31"] = [["st",[{"values":[{"sourceSpan":{"start":[33,1],"name":".spago/st/cfdcc169101bd3188747051d0886e33615ab7c2c/src/Control/Monad/ST/Internal.purs","end":[33,49]},"score":0,"packageInfo":{"values":["st"],"tag":"Package"},"name":"ST","moduleName":"Control.Monad.ST.Internal","info":{"values":[{"kind":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Control","Monad","ST","Internal"],"Region"]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"Type"]}]},{"tag":"TypeConstructor","contents":[["Prim"],"Type"]}]}]}}],"tag":"ExternDataResult"},"hashAnchor":"t","comments":"The `ST` type constructor allows _local mutation_, i.e. mutation which\ndoes not \"escape\" into the surrounding computation.\n\nAn `ST` computation is parameterized by a phantom type which is used to\nrestrict the set of reference cells it is allowed to access.\n\nThe `run` function can be used to run a computation in the `ST` monad.\n"}],"tag":"SearchResult"}]],["star",[{"values":[{"sourceSpan":{"start":[25,1],"name":".spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Star.purs","end":[25,37]},"score":0,"packageInfo":{"values":["profunctor"],"tag":"Package"},"name":"Star","moduleName":"Data.Profunctor.Star","info":{"values":[{"typeArguments":[["f",null],["a",null],["b",null]],"dataDeclType":"newtype"}],"tag":"DataResult"},"hashAnchor":"t","comments":"`Star` turns a `Functor` into a `Profunctor`.\n\n`Star f` is also the Kleisli category for `f`\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":null,"score":0,"packageInfo":{"values":["profunctor"],"tag":"Package"},"name":"Star","moduleName":"Data.Profunctor.Star","info":{"values":[{"arguments":[{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"b"}]}]}}]}],"tag":"DataConstructorResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[25,1],"name":".spago/miraculix-lite/9b3a8ced22c78fe0e8ea1cd7352df5f5dae1dfbd/src/deps/profunctor/Data/Profunctor/Star.purs","end":[25,37]},"score":0,"packageInfo":{"values":["miraculix-lite"],"tag":"Package"},"name":"Star","moduleName":"LocalDependency.Data.Profunctor.Star","info":{"values":[{"typeArguments":[["f",null],["a",null],["b",null]],"dataDeclType":"newtype"}],"tag":"DataResult"},"hashAnchor":"t","comments":"`Star` turns a `Functor` into a `Profunctor`.\n\n`Star f` is also the Kleisli category for `f`\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":null,"score":0,"packageInfo":{"values":["miraculix-lite"],"tag":"Package"},"name":"Star","moduleName":"LocalDependency.Data.Profunctor.Star","info":{"values":[{"arguments":[{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"b"}]}]}}]}],"tag":"DataConstructorResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"}]],["starray",[{"values":[{"sourceSpan":{"start":[46,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array/ST.purs","end":[46,54]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"STArray","moduleName":"Data.Array.ST","info":{"values":[{"kind":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Control","Monad","ST","Internal"],"Region"]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"Type"]}]},{"tag":"TypeConstructor","contents":[["Prim"],"Type"]}]}]}}],"tag":"ExternDataResult"},"hashAnchor":"t","comments":"A reference to a mutable array.\n\nThe first type parameter represents the memory region which the array belongs to.\nThe second type parameter defines the type of elements of the mutable array.\n\nThe runtime representation of a value of type `STArray h a` is the same as that of `Array a`,\nexcept that mutation is allowed.\n"}],"tag":"SearchResult"}]],["statel",[{"values":[{"sourceSpan":{"start":[11,1],"name":".spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable/Accum/Internal.purs","end":[11,45]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"StateL","moduleName":"Data.Traversable.Accum.Internal","info":{"values":[{"typeArguments":[["s",null],["a",null]],"dataDeclType":"newtype"}],"tag":"DataResult"},"hashAnchor":"t","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":null,"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"StateL","moduleName":"Data.Traversable.Accum.Internal","info":{"values":[{"arguments":[{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Traversable","Accum"],"Accum"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeVar","contents":"a"}]}]}}]}],"tag":"DataConstructorResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[13,1],"name":".spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable/Accum/Internal.purs","end":[13,51]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"stateL","moduleName":"Data.Traversable.Accum.Internal","info":{"values":[{"type":{"tag":"ForAll","contents":["s",{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Traversable","Accum","Internal"],"StateL"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Traversable","Accum"],"Accum"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeVar","contents":"a"}]}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[11,1],"name":".spago/miraculix-lite/9b3a8ced22c78fe0e8ea1cd7352df5f5dae1dfbd/src/deps/foldable-traversable/Data/Traversable/Accum/Internal.purs","end":[11,45]},"score":0,"packageInfo":{"values":["miraculix-lite"],"tag":"Package"},"name":"StateL","moduleName":"LocalDependency.Data.Traversable.Accum.Internal","info":{"values":[{"typeArguments":[["s",null],["a",null]],"dataDeclType":"newtype"}],"tag":"DataResult"},"hashAnchor":"t","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":null,"score":0,"packageInfo":{"values":["miraculix-lite"],"tag":"Package"},"name":"StateL","moduleName":"LocalDependency.Data.Traversable.Accum.Internal","info":{"values":[{"arguments":[{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["LocalDependency","Data","Traversable","Accum"],"Accum"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeVar","contents":"a"}]}]}}]}],"tag":"DataConstructorResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[13,1],"name":".spago/miraculix-lite/9b3a8ced22c78fe0e8ea1cd7352df5f5dae1dfbd/src/deps/foldable-traversable/Data/Traversable/Accum/Internal.purs","end":[13,51]},"score":0,"packageInfo":{"values":["miraculix-lite"],"tag":"Package"},"name":"stateL","moduleName":"LocalDependency.Data.Traversable.Accum.Internal","info":{"values":[{"type":{"tag":"ForAll","contents":["s",{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["LocalDependency","Data","Traversable","Accum","Internal"],"StateL"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["LocalDependency","Data","Traversable","Accum"],"Accum"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeVar","contents":"a"}]}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"}]],["stater",[{"values":[{"sourceSpan":{"start":[29,1],"name":".spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable/Accum/Internal.purs","end":[29,45]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"StateR","moduleName":"Data.Traversable.Accum.Internal","info":{"values":[{"typeArguments":[["s",null],["a",null]],"dataDeclType":"newtype"}],"tag":"DataResult"},"hashAnchor":"t","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":null,"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"StateR","moduleName":"Data.Traversable.Accum.Internal","info":{"values":[{"arguments":[{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Traversable","Accum"],"Accum"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeVar","contents":"a"}]}]}}]}],"tag":"DataConstructorResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[31,1],"name":".spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable/Accum/Internal.purs","end":[31,51]},"score":0,"packageInfo":{"values":["foldable-traversable"],"tag":"Package"},"name":"stateR","moduleName":"Data.Traversable.Accum.Internal","info":{"values":[{"type":{"tag":"ForAll","contents":["s",{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Traversable","Accum","Internal"],"StateR"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Traversable","Accum"],"Accum"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeVar","contents":"a"}]}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[29,1],"name":".spago/miraculix-lite/9b3a8ced22c78fe0e8ea1cd7352df5f5dae1dfbd/src/deps/foldable-traversable/Data/Traversable/Accum/Internal.purs","end":[29,45]},"score":0,"packageInfo":{"values":["miraculix-lite"],"tag":"Package"},"name":"StateR","moduleName":"LocalDependency.Data.Traversable.Accum.Internal","info":{"values":[{"typeArguments":[["s",null],["a",null]],"dataDeclType":"newtype"}],"tag":"DataResult"},"hashAnchor":"t","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":null,"score":0,"packageInfo":{"values":["miraculix-lite"],"tag":"Package"},"name":"StateR","moduleName":"LocalDependency.Data.Traversable.Accum.Internal","info":{"values":[{"arguments":[{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["LocalDependency","Data","Traversable","Accum"],"Accum"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeVar","contents":"a"}]}]}}]}],"tag":"DataConstructorResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[31,1],"name":".spago/miraculix-lite/9b3a8ced22c78fe0e8ea1cd7352df5f5dae1dfbd/src/deps/foldable-traversable/Data/Traversable/Accum/Internal.purs","end":[31,51]},"score":0,"packageInfo":{"values":["miraculix-lite"],"tag":"Package"},"name":"stateR","moduleName":"LocalDependency.Data.Traversable.Accum.Internal","info":{"values":[{"type":{"tag":"ForAll","contents":["s",{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["LocalDependency","Data","Traversable","Accum","Internal"],"StateR"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["LocalDependency","Data","Traversable","Accum"],"Accum"]},{"tag":"TypeVar","contents":"s"}]},{"tag":"TypeVar","contents":"a"}]}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"}]],["storepath",[{"values":[{"sourceSpan":{"start":[21,1],"name":"src/Test/Miraculix/FFI.purs","end":[21,38]},"score":0,"packageInfo":{"values":[],"tag":"LocalPackage"},"name":"StorePath","moduleName":"Test.Miraculix.FFI","info":{"values":[{"kind":{"tag":"TypeConstructor","contents":[["Prim"],"Type"]}}],"tag":"ExternDataResult"},"hashAnchor":"t","comments":"Type that describes a path inside the Nix store.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[21,1],"name":".spago/miraculix-lite/9b3a8ced22c78fe0e8ea1cd7352df5f5dae1dfbd/src/Test/Miraculix/FFI.purs","end":[21,38]},"score":0,"packageInfo":{"values":["miraculix-lite"],"tag":"Package"},"name":"StorePath","moduleName":"Test.MiraculixLite.FFI","info":{"values":[{"kind":{"tag":"TypeConstructor","contents":[["Prim"],"Type"]}}],"tag":"ExternDataResult"},"hashAnchor":"t","comments":"Type that describes a path inside the Nix store.\n"}],"tag":"SearchResult"}]],["stref",[{"values":[{"sourceSpan":{"start":[105,1],"name":".spago/st/cfdcc169101bd3188747051d0886e33615ab7c2c/src/Control/Monad/ST/Internal.purs","end":[105,52]},"score":0,"packageInfo":{"values":["st"],"tag":"Package"},"name":"STRef","moduleName":"Control.Monad.ST.Internal","info":{"values":[{"kind":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Control","Monad","ST","Internal"],"Region"]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Prim"],"Type"]}]},{"tag":"TypeConstructor","contents":[["Prim"],"Type"]}]}]}}],"tag":"ExternDataResult"},"hashAnchor":"t","comments":"The type `STRef r a` represents a mutable reference holding a value of\ntype `a`, which can be used with the `ST r` effect.\n"}],"tag":"SearchResult"}]],["string",[{"values":[{"sourceSpan":null,"score":0,"packageInfo":{"values":[],"tag":"Builtin"},"name":"String","moduleName":"Prim","info":{"values":[{"kind":{"tag":"TypeConstructor","contents":[["Prim"],"Type"]}}],"tag":"ExternDataResult"},"hashAnchor":"t","comments":"A String. As in JavaScript, String values represent sequences of UTF-16\ncode units, which are not required to form a valid encoding of Unicode\ntext (for example, lone surrogates are permitted).\n\nConstruct values of this type with literals, using double quotes `\"`:\n\n    x = \"hello, world\" :: String\n\nMulti-line string literals are also supported with triple quotes (`\"\"\"`).\n"}],"tag":"SearchResult"}]],["strong",[{"values":[{"sourceSpan":{"start":[28,1],"name":".spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Strong.purs","end":[30,61]},"score":0,"packageInfo":{"values":["profunctor"],"tag":"Package"},"name":"Strong","moduleName":"Data.Profunctor.Strong","info":{"values":[{"superclasses":[{"constraintClass":[["Data","Profunctor"],"Profunctor"],"constraintArgs":[{"tag":"TypeVar","contents":"p"}]}],"fundeps":[],"arguments":[["p",null]]}],"tag":"TypeClassResult"},"hashAnchor":"t","comments":"The `Strong` class extends `Profunctor` with combinators for working with\nproduct types.\n\n`first` and `second` lift values in a `Profunctor` to act on the first and\nsecond components of a `Tuple`, respectively.\n\nAnother way to think about Strong is to piggyback on the intuition of\ninputs and outputs.  Rewriting the type signature in this light then yields:\n```\nfirst ::  forall input output a. p input output -> p (Tuple input a) (Tuple output a)\nsecond :: forall input output a. p input output -> p (Tuple a input) (Tuple a output)\n```\nIf we specialize the profunctor p to the function arrow, we get the following type\nsignatures, which may look a bit more familiar:\n```\nfirst ::  forall input output a. (input -> output) -> (Tuple input a) -> (Tuple output a)\nsecond :: forall input output a. (input -> output) -> (Tuple a input) -> (Tuple a output)\n```\nSo, when the `profunctor` is `Function` application, `first` essentially applies your function\nto the first element of a `Tuple`, and `second` applies it to the second element (same as `map` would do).\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[28,1],"name":".spago/miraculix-lite/9b3a8ced22c78fe0e8ea1cd7352df5f5dae1dfbd/src/deps/profunctor/Data/Profunctor/Strong.purs","end":[30,61]},"score":0,"packageInfo":{"values":["miraculix-lite"],"tag":"Package"},"name":"Strong","moduleName":"LocalDependency.Data.Profunctor.Strong","info":{"values":[{"superclasses":[{"constraintClass":[["LocalDependency","Data","Profunctor"],"Profunctor"],"constraintArgs":[{"tag":"TypeVar","contents":"p"}]}],"fundeps":[],"arguments":[["p",null]]}],"tag":"TypeClassResult"},"hashAnchor":"t","comments":"The `Strong` class extends `Profunctor` with combinators for working with\nproduct types.\n\n`first` and `second` lift values in a `Profunctor` to act on the first and\nsecond components of a `Tuple`, respectively.\n\nAnother way to think about Strong is to piggyback on the intuition of\ninputs and outputs.  Rewriting the type signature in this light then yields:\n```\nfirst ::  forall input output a. p input output -> p (Tuple input a) (Tuple output a)\nsecond :: forall input output a. p input output -> p (Tuple a input) (Tuple a output)\n```\nIf we specialize the profunctor p to the function arrow, we get the following type\nsignatures, which may look a bit more familiar:\n```\nfirst ::  forall input output a. (input -> output) -> (Tuple input a) -> (Tuple output a)\nsecond :: forall input output a. (input -> output) -> (Tuple a input) -> (Tuple a output)\n```\nSo, when the `profunctor` is `Function` application, `first` essentially applies your function\nto the first element of a `Tuple`, and `second` applies it to the second element (same as `map` would do).\n"}],"tag":"SearchResult"}]],["run",[{"values":[{"sourceSpan":{"start":[82,1],"name":".spago/st/cfdcc169101bd3188747051d0886e33615ab7c2c/src/Control/Monad/ST/Internal.purs","end":[82,56]},"score":0,"packageInfo":{"values":["st"],"tag":"Package"},"name":"run","moduleName":"Control.Monad.ST.Internal","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"ForAll","contents":["r",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Control","Monad","ST","Internal"],"ST"]},{"tag":"TypeVar","contents":"r"}]},{"tag":"TypeVar","contents":"a"}]},null]}}]},{"tag":"TypeVar","contents":"a"}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Run an `ST` computation.\n\nNote: the type of `run` uses a rank-2 type to constrain the phantom\ntype `r`, such that the computation must not leak any mutable references\nto the surrounding computation. It may cause problems to apply this\nfunction using the `$` operator. The recommended approach is to use\nparentheses instead.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[57,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array/ST.purs","end":[57,59]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"run","moduleName":"Data.Array.ST","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"ForAll","contents":["h",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Control","Monad","ST","Internal"],"ST"]},{"tag":"TypeVar","contents":"h"}]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Array","ST"],"STArray"]},{"tag":"TypeVar","contents":"h"}]},{"tag":"TypeVar","contents":"a"}]}}]},null]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"A safe way to create and work with a mutable array before returning an\nimmutable array for later perusal. This function avoids copying the array\nbefore returning it - it uses unsafeFreeze internally, but this wrapper is\na safe interface to that function.\n"}],"tag":"SearchResult"}]],["runexists",[{"values":[{"sourceSpan":{"start":[56,1],"name":".spago/exists/0d5dbf6ba8b4cfdcc3fa514f429ffd645f9a078f/src/Data/Exists.purs","end":[56,63]},"score":0,"packageInfo":{"values":["exists"],"tag":"Package"},"name":"runExists","moduleName":"Data.Exists","info":{"values":[{"type":{"tag":"ForAll","contents":["f",{"tag":"ForAll","contents":["r",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeVar","contents":"r"}]},null]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Exists"],"Exists"]},{"tag":"TypeVar","contents":"f"}]}]},{"tag":"TypeVar","contents":"r"}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"The `runExists` function is used to eliminate a value of type `Exists f`. The rank 2 type ensures\nthat the existentially-quantified type does not escape its scope. Since the function is required\nto work for _any_ type `a`, it will work for the existentially-quantified type.\n\nFor example, we can write a function to obtain the head of a stream by using `runExists` as follows:\n\n```purescript\nhead :: forall a. Stream a -> a\nhead = runExists head'\n  where\n  head' :: forall s. StreamF a s -> a\n  head' (StreamF s f) = snd (f s)\n```\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[56,1],"name":".spago/miraculix-lite/9b3a8ced22c78fe0e8ea1cd7352df5f5dae1dfbd/src/deps/exists/Data/Exists.purs","end":[56,63]},"score":0,"packageInfo":{"values":["miraculix-lite"],"tag":"Package"},"name":"runExists","moduleName":"LocalDependency.Data.Exists","info":{"values":[{"type":{"tag":"ForAll","contents":["f",{"tag":"ForAll","contents":["r",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeVar","contents":"r"}]},null]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["LocalDependency","Data","Exists"],"Exists"]},{"tag":"TypeVar","contents":"f"}]}]},{"tag":"TypeVar","contents":"r"}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"The `runExists` function is used to eliminate a value of type `Exists f`. The rank 2 type ensures\nthat the existentially-quantified type does not escape its scope. Since the function is required\nto work for _any_ type `a`, it will work for the existentially-quantified type.\n\nFor example, we can write a function to obtain the head of a stream by using `runExists` as follows:\n\n```purescript\nhead :: forall a. Stream a -> a\nhead = runExists head'\n  where\n  head' :: forall s. StreamF a s -> a\n  head' (StreamF s f) = snd (f s)\n```\n"}],"tag":"SearchResult"}]],["runtests",[{"values":[{"sourceSpan":{"start":[24,1],"name":"src/Test/Miraculix.purs","end":[24,41]},"score":0,"packageInfo":{"values":[],"tag":"LocalPackage"},"name":"runTests","moduleName":"Test.Miraculix","info":{"values":[{"type":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Test","Miraculix","TestTree"],"TestTree"]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Effect"],"Effect"]},{"tag":"TypeConstructor","contents":[["Test","Miraculix","FFI"],"StorePath"]}]}]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Run all tests in the test tree\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[16,1],"name":".spago/miraculix-lite/9b3a8ced22c78fe0e8ea1cd7352df5f5dae1dfbd/src/Test/Miraculix.purs","end":[16,41]},"score":0,"packageInfo":{"values":["miraculix-lite"],"tag":"Package"},"name":"runTests","moduleName":"Test.MiraculixLite","info":{"values":[{"type":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Test","MiraculixLite","TestTree"],"TestTree"]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["LocalDependency","Effect"],"Effect"]},{"tag":"TypeConstructor","contents":[["Test","MiraculixLite","FFI"],"StorePath"]}]}]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Run all tests in the test tree\n"}],"tag":"SearchResult"}]]]