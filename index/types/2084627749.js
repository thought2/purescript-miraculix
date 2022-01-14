// This file was generated by purescript-docs-search
window.DocsSearchTypeIndex["2084627749"] = [{"values":[{"sourceSpan":{"start":[71,1],"name":".spago/miraculix-lite/9b3a8ced22c78fe0e8ea1cd7352df5f5dae1dfbd/src/deps/profunctor/Data/Profunctor/Strong.purs","end":[77,21]},"score":0,"packageInfo":{"values":["miraculix-lite"],"tag":"Package"},"name":"fanout","moduleName":"LocalDependency.Data.Profunctor.Strong","info":{"values":[{"type":{"tag":"ForAll","contents":["p",{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"ForAll","contents":["c",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Control","Category"],"Category"],"constraintArgs":[{"tag":"TypeVar","contents":"p"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["LocalDependency","Data","Profunctor","Strong"],"Strong"],"constraintArgs":[{"tag":"TypeVar","contents":"p"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"p"},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"b"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"p"},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"c"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"p"},{"tag":"TypeVar","contents":"a"}]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["LocalDependency","Data","Tuple"],"Tuple"]},{"tag":"TypeVar","contents":"b"}]},{"tag":"TypeVar","contents":"c"}]}}]}]}]}]}]},null]},null]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Compose a value which introduces a `Tuple` from two values, each introducing\none side of the `Tuple`.\n\nThis combinator is useful when assembling values from smaller components,\nbecause it provides a way to support two different types of output.\n\nSpecializing `(&&&)` to function application would look like this:\n```\n(&&&) :: forall a b c. (a -> b) -> (a -> c) -> (a -> (Tuple b c))\n```\nWe take two functions, `f` and `g`, with the same parameter type and we transform them into a\nsingle function which takes one parameter and returns a `Tuple` of the results of running\n`f` and `g` on the parameter, respectively.  This allows us to run two parallel computations\non the same input and return both results in a `Tuple`.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[71,1],"name":".spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Strong.purs","end":[77,21]},"score":0,"packageInfo":{"values":["profunctor"],"tag":"Package"},"name":"fanout","moduleName":"Data.Profunctor.Strong","info":{"values":[{"type":{"tag":"ForAll","contents":["p",{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"ForAll","contents":["c",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Control","Category"],"Category"],"constraintArgs":[{"tag":"TypeVar","contents":"p"}]},{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Profunctor","Strong"],"Strong"],"constraintArgs":[{"tag":"TypeVar","contents":"p"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"p"},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"b"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"p"},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"c"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"p"},{"tag":"TypeVar","contents":"a"}]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Tuple"],"Tuple"]},{"tag":"TypeVar","contents":"b"}]},{"tag":"TypeVar","contents":"c"}]}}]}]}]}]}]},null]},null]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Compose a value which introduces a `Tuple` from two values, each introducing\none side of the `Tuple`.\n\nThis combinator is useful when assembling values from smaller components,\nbecause it provides a way to support two different types of output.\n\nSpecializing `(&&&)` to function application would look like this:\n```\n(&&&) :: forall a b c. (a -> b) -> (a -> c) -> (a -> (Tuple b c))\n```\nWe take two functions, `f` and `g`, with the same parameter type and we transform them into a\nsingle function which takes one parameter and returns a `Tuple` of the results of running\n`f` and `g` on the parameter, respectively.  This allows us to run two parallel computations\non the same input and return both results in a `Tuple`.\n"}],"tag":"SearchResult"}]