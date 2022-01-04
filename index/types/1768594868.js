// This file was generated by purescript-docs-search
window.DocsSearchTypeIndex["1768594868"] = [{"values":[{"sourceSpan":{"start":[273,1],"name":".spago/miraculix-lite/9b3a8ced22c78fe0e8ea1cd7352df5f5dae1dfbd/src/deps/either/Data/Either.purs","end":[273,58]},"score":0,"packageInfo":{"values":["miraculix-lite"],"tag":"Package"},"name":"note'","moduleName":"LocalDependency.Data.Either","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Data","Unit"],"Unit"]}]},{"tag":"TypeVar","contents":"a"}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["LocalDependency","Data","Maybe"],"Maybe"]},{"tag":"TypeVar","contents":"b"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["LocalDependency","Data","Either"],"Either"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"b"}]}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Similar to `note`, but for use in cases where the default value may be\nexpensive to compute.\n\n```purescript\nnote' (\\_ -> \"default\") Nothing = Left \"default\"\nnote' (\\_ -> \"default\") (Just 1) = Right 1\n```\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[273,1],"name":".spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either.purs","end":[273,58]},"score":0,"packageInfo":{"values":["either"],"tag":"Package"},"name":"note'","moduleName":"Data.Either","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ForAll","contents":["b",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"ParensInType","contents":{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeConstructor","contents":[["Data","Unit"],"Unit"]}]},{"tag":"TypeVar","contents":"a"}]}}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Maybe"],"Maybe"]},{"tag":"TypeVar","contents":"b"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Either"],"Either"]},{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeVar","contents":"b"}]}]}]},null]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Similar to `note`, but for use in cases where the default value may be\nexpensive to compute.\n\n```purescript\nnote' (\\_ -> \"default\") Nothing = Left \"default\"\nnote' (\\_ -> \"default\") (Just 1) = Right 1\n```\n"}],"tag":"SearchResult"}]