// This file was generated by purescript-docs-search
window.DocsSearchTypeIndex["1878673464"] = [{"values":[{"sourceSpan":{"start":[30,1],"name":".spago/miraculix-lite/9b3a8ced22c78fe0e8ea1cd7352df5f5dae1dfbd/src/deps/contravariant/Data/Equivalence.purs","end":[30,65]},"score":0,"packageInfo":{"values":["miraculix-lite"],"tag":"Package"},"name":"comparisonEquivalence","moduleName":"LocalDependency.Data.Equivalence","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["LocalDependency","Data","Comparison"],"Comparison"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["LocalDependency","Data","Equivalence"],"Equivalence"]},{"tag":"TypeVar","contents":"a"}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"An equivalence relation for any `Comparison`.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[18,1],"name":".spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/NaturalTransformation.purs","end":[18,54]},"score":1,"packageInfo":{"values":["prelude"],"tag":"Package"},"name":"NaturalTransformation","moduleName":"Data.NaturalTransformation","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"f"},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeVar","contents":"g"},{"tag":"TypeVar","contents":"a"}]}]},null]},"arguments":[["f",null],["g",null]]}],"tag":"TypeSynonymResult"},"hashAnchor":"t","comments":"A type for natural transformations.\n\nA natural transformation is a mapping between type constructors of kind\n`k -> Type`, for any kind `k`, where the mapping operation has no ability\nto manipulate the inner values.\n\nAn example of this is the `fromFoldable` function provided in\n`purescript-lists`, where some foldable structure containing values of\ntype `a` is converted into a `List a`.\n\nThe definition of a natural transformation in category theory states that\n`f` and `g` should be functors, but the `Functor` constraint is not\nenforced here; that the types are of kind `k -> Type` is enough for our\npurposes.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[30,1],"name":".spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Equivalence.purs","end":[30,65]},"score":0,"packageInfo":{"values":["contravariant"],"tag":"Package"},"name":"comparisonEquivalence","moduleName":"Data.Equivalence","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Comparison"],"Comparison"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Equivalence"],"Equivalence"]},{"tag":"TypeVar","contents":"a"}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"An equivalence relation for any `Comparison`.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[1039,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array.purs","end":[1039,46]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"nubEq","moduleName":"Data.Array","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Eq"],"Eq"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Remove the duplicates from an array, creating a new array.\n\nThis less efficient version of `nub` only requires an `Eq` instance.\n\n```purescript\nnubEq [1, 2, 1, 3, 3] = [1, 2, 3]\n```\n\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[1028,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array.purs","end":[1028,45]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"nub","moduleName":"Data.Array","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Ord"],"Ord"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Remove the duplicates from an array, creating a new array.\n\n```purescript\nnub [1, 2, 1, 3, 3] = [1, 2, 3]\n```\n\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[817,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array.purs","end":[817,46]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"sort","moduleName":"Data.Array","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Ord"],"Ord"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Sort the elements of an array in increasing order, creating a new array.\nSorting is stable: the order of equal elements is preserved.\n\n```purescript\nsort [2, -3, 1] = [-3, 1, 2]\n```\n\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[631,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array.purs","end":[631,55]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"reverse","moduleName":"Data.Array","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Reverse an array, creating a new array.\n\n```purescript\nreverse [] = []\nreverse [1, 2, 3] = [3, 2, 1]\n```\n\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[316,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array.purs","end":[316,37]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"last","moduleName":"Data.Array","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Maybe"],"Maybe"]},{"tag":"TypeVar","contents":"a"}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Get the last element in an array, or `Nothing` if the array is empty\n\nRunning time: `O(1)`.\n\n```purescript\nlast [1, 2] = Just 2\nlast [] = Nothing\n```\n\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[304,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array.purs","end":[304,37]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"head","moduleName":"Data.Array","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Maybe"],"Maybe"]},{"tag":"TypeVar","contents":"a"}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Get the first element in an array, or `Nothing` if the array is empty\n\nRunning time: `O(1)`.\n\n```purescript\nhead [1, 2] = Just 1\nhead [] = Nothing\n```\n\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[34,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array/Partial.purs","end":[34,48]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"init","moduleName":"Data.Array.Partial","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Prim"],"Partial"],"constraintArgs":[]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Get all but the last element of a non-empty array.\n\nRunning time: `O(n)`, where `n` is the length of the array.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[22,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array/Partial.purs","end":[22,48]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"tail","moduleName":"Data.Array.Partial","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Prim"],"Partial"],"constraintArgs":[]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":"Get all but the first element of a non-empty array.\n\nRunning time: `O(n)`, where `n` is the length of the array.\n"}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[455,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array/NonEmpty.purs","end":[455,62]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"nubEq","moduleName":"Data.Array.NonEmpty","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Eq"],"Eq"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Array","NonEmpty","Internal"],"NonEmptyArray"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Array","NonEmpty","Internal"],"NonEmptyArray"]},{"tag":"TypeVar","contents":"a"}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[452,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array/NonEmpty.purs","end":[452,61]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"nub","moduleName":"Data.Array.NonEmpty","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Ord"],"Ord"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Array","NonEmpty","Internal"],"NonEmptyArray"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Array","NonEmpty","Internal"],"NonEmptyArray"]},{"tag":"TypeVar","contents":"a"}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[372,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array/NonEmpty.purs","end":[372,62]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"sort","moduleName":"Data.Array.NonEmpty","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"ConstrainedType","contents":[{"constraintClass":[["Data","Ord"],"Ord"],"constraintArgs":[{"tag":"TypeVar","contents":"a"}]},{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Array","NonEmpty","Internal"],"NonEmptyArray"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Array","NonEmpty","Internal"],"NonEmptyArray"]},{"tag":"TypeVar","contents":"a"}]}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[312,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array/NonEmpty.purs","end":[312,56]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"reverse","moduleName":"Data.Array.NonEmpty","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Array","NonEmpty","Internal"],"NonEmptyArray"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Array","NonEmpty","Internal"],"NonEmptyArray"]},{"tag":"TypeVar","contents":"a"}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[250,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array/NonEmpty.purs","end":[250,45]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"init","moduleName":"Data.Array.NonEmpty","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Array","NonEmpty","Internal"],"NonEmptyArray"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[247,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array/NonEmpty.purs","end":[247,45]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"tail","moduleName":"Data.Array.NonEmpty","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Array","NonEmpty","Internal"],"NonEmptyArray"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"},{"values":[{"sourceSpan":{"start":[174,1],"name":".spago/arrays/cce2d13db0877d208a0cdc57c0e12d60e2b02cfb/src/Data/Array/NonEmpty.purs","end":[174,48]},"score":0,"packageInfo":{"values":["arrays"],"tag":"Package"},"name":"toArray","moduleName":"Data.Array.NonEmpty","info":{"values":[{"type":{"tag":"ForAll","contents":["a",{"tag":"TypeApp","contents":[{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Function"]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Data","Array","NonEmpty","Internal"],"NonEmptyArray"]},{"tag":"TypeVar","contents":"a"}]}]},{"tag":"TypeApp","contents":[{"tag":"TypeConstructor","contents":[["Prim"],"Array"]},{"tag":"TypeVar","contents":"a"}]}]},null]}}],"tag":"ValueResult"},"hashAnchor":"v","comments":null}],"tag":"SearchResult"}]