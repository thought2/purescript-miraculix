// This file was generated by purescript-docs-search
window.DocsSearchTypeIndex["63467255"] = [{"values":[{"sourceSpan":{"start":[27,1],"name":".spago/unsafe-coerce/master/src/Unsafe/Coerce.purs","end":[27,50]},"score":0,"packageInfo":{"values":["unsafe-coerce"],"tag":"Package"},"name":"unsafeCoerce","moduleName":"Unsafe.Coerce","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"b"}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"A _highly unsafe_ function, which can be used to persuade the type system that\nany type is the same as any other type. When using this function, it is your\n(that is, the caller's) responsibility to ensure that the underlying\nrepresentation for both types is the same.\n\nBecause this function is extraordinarily flexible, type inference\ncan greatly suffer. It is highly recommended to define specializations of\nthis function rather than using it as-is. For example:\n\n```purescript\nfromBoolean :: Boolean -> Json\nfromBoolean = unsafeCoerce\n```\n\nThis way, you won't have any nasty surprises due to the inferred type being\ndifferent to what you expected.\n\nAfter the v0.14.0 PureScript release, some of what was accomplished via\n`unsafeCoerce` can now be accomplished via `coerce` from\n`purescript-safe-coerce`. See that library's documentation for more\ncontext.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[34,1],"name":".spago/type-equality/master/src/Type/Equality.purs","end":[34,45]},"score":0,"packageInfo":{"values":["type-equality"],"tag":"Package"},"name":"from","moduleName":"Type.Equality","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Type","Equality"],"TypeEquals"],"constraintArgs":[{"tag":"TypeVar","contents":"a"},{"tag":"TypeVar","contents":"b"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"b"}]},{"tag":"TypeVar","contents":"a"}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[29,1],"name":".spago/type-equality/master/src/Type/Equality.purs","end":[29,43]},"score":0,"packageInfo":{"values":["type-equality"],"tag":"Package"},"name":"to","moduleName":"Type.Equality","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Type","Equality"],"TypeEquals"],"constraintArgs":[{"tag":"TypeVar","contents":"a"},{"tag":"TypeVar","contents":"b"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"b"}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[26,1],"name":".spago/safe-coerce/master/src/Safe/Coerce.purs","end":[26,46]},"score":0,"packageInfo":{"values":["safe-coerce"],"tag":"Package"},"name":"coerce","moduleName":"Safe.Coerce","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Prim","Coerce"],"Coercible"],"constraintArgs":[{"tag":"TypeVar","contents":"a"},{"tag":"TypeVar","contents":"b"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"b"}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Coerce a value of one type to a value of some other type, without changing\nits runtime representation. This function behaves identically to\n`unsafeCoerce` at runtime. Unlike `unsafeCoerce`, it is safe, because the\n`Coercible` constraint prevents any use of this function from compiling\nunless the compiler can prove that the two types have the same runtime\nrepresentation.\n\nOne application for this function is to avoid doing work that you know is a\nno-op because of newtypes. For example, if you have an `Array (Conj a)` and you\nwant an `Array (Disj a)`, you could do `Data.Array.map (un Conj >>> Disj)`, but\nthis performs an unnecessary traversal of the array, with O(n) cost.\n`coerce` accomplishes the same with only O(1) cost:\n\n```purescript\nmapConjToDisj :: forall a. Array (Conj a) -> Array (Disj a)\nmapConjToDisj = coerce\n```\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[50,1],"name":".spago/prelude/master/src/Data/Show/Generic.purs","end":[50,77]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"genericShow","moduleName":"Data.Show.Generic","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["rep",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Generic","Rep"],"Generic"],"constraintArgs":[{"tag":"TypeVar","contents":"a"},{"tag":"TypeVar","contents":"rep"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Show","Generic"],"GenericShow"],"constraintArgs":[{"tag":"TypeVar","contents":"rep"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeConstructor","contents":[["Prim"],"String"]}]}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"A `Generic` implementation of the `show` member from the `Show` type class.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[35,1],"name":".spago/newtype/master/src/Data/Newtype.purs","end":[35,44]},"score":1,"packageInfo":{"values":["newtype"],"tag":"Package"},"name":"unwrap","moduleName":"Data.Newtype","info":{"values":[{"type":{"tag":"ForAll","contents":["t",{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Newtype"],"Newtype"],"constraintArgs":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"t"}]},{"tag":"TypeVar","contents":"a"}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[32,1],"name":".spago/newtype/master/src/Data/Newtype.purs","end":[32,42]},"score":1,"packageInfo":{"values":["newtype"],"tag":"Package"},"name":"wrap","moduleName":"Data.Newtype","info":{"values":[{"type":{"tag":"ForAll","contents":["t",{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Newtype"],"Newtype"],"constraintArgs":[{"tag":"TypeVar","contents":"t"},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"t"}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[69,1],"name":".spago/prelude/master/src/Data/HeytingAlgebra/Generic.purs","end":[69,81]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"genericNot","moduleName":"Data.HeytingAlgebra.Generic","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["rep",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Generic","Rep"],"Generic"],"constraintArgs":[{"tag":"TypeVar","contents":"a"},{"tag":"TypeVar","contents":"rep"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","HeytingAlgebra","Generic"],"GenericHeytingAlgebra"],"constraintArgs":[{"tag":"TypeVar","contents":"rep"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"a"}]}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"A `Generic` implementation of the `not` member from the `HeytingAlgebra` type class.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[58,3],"name":".spago/prelude/master/src/Data/Generic/Rep.purs","end":[58,19]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"from","moduleName":"Data.Generic.Rep","info":{"values":[{"typeClassArguments":[["a",null],["rep",null]],"typeClass":[["Data","Generic","Rep"],"Generic"],"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["rep",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Generic","Rep"],"Generic"],"constraintArgs":[{"tag":"TypeVar","contents":"a"},{"tag":"TypeVar","contents":"rep"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"rep"}]}]},null]},null]}}],"tag":"TypeClassMemberResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[57,3],"name":".spago/prelude/master/src/Data/Generic/Rep.purs","end":[57,17]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"to","moduleName":"Data.Generic.Rep","info":{"values":[{"typeClassArguments":[["a",null],["rep",null]],"typeClass":[["Data","Generic","Rep"],"Generic"],"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["rep",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Generic","Rep"],"Generic"],"constraintArgs":[{"tag":"TypeVar","contents":"a"},{"tag":"TypeVar","contents":"rep"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"rep"}]},{"tag":"TypeVar","contents":"a"}]}]},null]},null]}}],"tag":"TypeClassMemberResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[9,3],"name":".spago/either/master/src/Data/Either/Inject.purs","end":[9,16]},"score":0,"packageInfo":{"values":["either"],"tag":"Package"},"name":"inj","moduleName":"Data.Either.Inject","info":{"values":[{"typeClassArguments":[["a",null],["b",null]],"typeClass":[["Data","Either","Inject"],"Inject"],"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Either","Inject"],"Inject"],"constraintArgs":[{"tag":"TypeVar","contents":"a"},{"tag":"TypeVar","contents":"b"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"b"}]}]},null]},null]}}],"tag":"TypeClassMemberResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"}]