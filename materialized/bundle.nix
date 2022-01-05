rec { 
Control-Alt_default-nix = 
let
  module = 
    { "Data.Functor" = Data-Functor_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
    };
  Alt-Dict = x: x;
  altArray = 
    { alt = module."Data.Semigroup".append module."Data.Semigroup".semigroupArray;
      "Functor0" = __unused: module."Data.Functor".functorArray;
    };
  alt = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.alt;
      __patternFail = builtins.throw "Pattern match failure in .spago/control/14103f74386a315f159f85720fac0242810d5b38/src/Control/Alt.purs at 37:3 - 37:37";
    in
      __pattern0 __patternFail;
in
  
  { inherit alt altArray;
    inherit (module."Data.Functor") map void;
  }
;

Control-Alternative_default-nix = 
let
  module = 
    { "Control.Alt" = Control-Alt_default-nix;
      "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Plus" = Control-Plus_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
    };
  Alternative-Dict = x: x;
  guard = dictAlternative: v: 
    let
      __pattern0 = __fail: if v then module."Control.Applicative".pure (dictAlternative."Applicative0" module."Prim".undefined) module."Data.Unit".unit else __fail;
      __pattern1 = __fail: if !v then module."Control.Plus".empty (dictAlternative."Plus1" module."Prim".undefined) else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/control/14103f74386a315f159f85720fac0242810d5b38/src/Control/Alternative.purs at 48:1 - 48:54";
    in
      __pattern0 (__pattern1 __patternFail);
  alternativeArray = 
    { "Applicative0" = __unused: module."Control.Applicative".applicativeArray;
      "Plus1" = __unused: module."Control.Plus".plusArray;
    };
in
  
  { inherit guard alternativeArray;
    inherit (module."Control.Alt") alt;
    inherit (module."Control.Applicative") liftA1 pure unless when;
    inherit (module."Control.Apply") apply;
    inherit (module."Control.Plus") empty;
    inherit (module."Data.Functor") map void;
  }
;

Control-Applicative_default-nix = 
let
  module = 
    { "Control.Apply" = Control-Apply_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Type.Proxy" = Type-Proxy_default-nix;
    };
  Applicative-Dict = x: x;
  pure = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.pure;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Control/Applicative.purs at 34:3 - 34:29";
    in
      __pattern0 __patternFail;
  unless = dictApplicative: v: v1: 
    let
      __pattern0 = __fail: 
        if !v
          then 
            let
              m = v1;
            in
              m
          else __fail;
      __pattern1 = __fail: if v then pure dictApplicative module."Data.Unit".unit else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Control/Applicative.purs at 66:1 - 66:65";
    in
      __pattern0 (__pattern1 __patternFail);
  when = dictApplicative: v: v1: 
    let
      __pattern0 = __fail: 
        if v
          then 
            let
              m = v1;
            in
              m
          else __fail;
      __pattern1 = __fail: if !v then pure dictApplicative module."Data.Unit".unit else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Control/Applicative.purs at 61:1 - 61:63";
    in
      __pattern0 (__pattern1 __patternFail);
  liftA1 = dictApplicative: f: a: module."Control.Apply".apply (dictApplicative."Apply0" module."Prim".undefined) (pure dictApplicative f) a;
  applicativeProxy = 
    { pure = v: module."Type.Proxy".Proxy;
      "Apply0" = __unused: module."Control.Apply".applyProxy;
    };
  applicativeFn = 
    { pure = x: v: x;
      "Apply0" = __unused: module."Control.Apply".applyFn;
    };
  applicativeArray = 
    { pure = x: [x];
      "Apply0" = __unused: module."Control.Apply".applyArray;
    };
in
  
  { inherit pure liftA1 unless when applicativeFn applicativeArray applicativeProxy;
    inherit (module."Control.Apply") apply;
    inherit (module."Data.Functor") map void;
  }
;

Control-Apply_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Type.Proxy" = Type-Proxy_default-nix;
    };
  foreign = Control-Apply_foreign-nix;
  arrayApply = foreign.arrayApply;
  Apply-Dict = x: x;
  applyProxy = 
    { apply = v: v1: module."Type.Proxy".Proxy;
      "Functor0" = __unused: module."Data.Functor".functorProxy;
    };
  applyFn = 
    { apply = f: g: x: f x (g x);
      "Functor0" = __unused: module."Data.Functor".functorFn;
    };
  applyArray = 
    { apply = arrayApply;
      "Functor0" = __unused: module."Data.Functor".functorArray;
    };
  apply = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.apply;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Control/Apply.purs at 46:3 - 46:48";
    in
      __pattern0 __patternFail;
  applyFirst = dictApply: a: b: apply dictApply (module."Data.Functor".map (dictApply."Functor0" module."Prim".undefined) module."Data.Function".const a) b;
  applySecond = dictApply: a: b: apply dictApply (module."Data.Functor".map (dictApply."Functor0" module."Prim".undefined) (module."Data.Function".const (module."Control.Category".identity module."Control.Category".categoryFn)) a) b;
  lift2 = dictApply: f: a: b: apply dictApply (module."Data.Functor".map (dictApply."Functor0" module."Prim".undefined) f a) b;
  lift3 = dictApply: f: a: b: c: apply dictApply (apply dictApply (module."Data.Functor".map (dictApply."Functor0" module."Prim".undefined) f a) b) c;
  lift4 = dictApply: f: a: b: c: d: apply dictApply (apply dictApply (apply dictApply (module."Data.Functor".map (dictApply."Functor0" module."Prim".undefined) f a) b) c) d;
  lift5 = dictApply: f: a: b: c: d: e: apply dictApply (apply dictApply (apply dictApply (apply dictApply (module."Data.Functor".map (dictApply."Functor0" module."Prim".undefined) f a) b) c) d) e;
in
  
  { inherit apply applyFirst applySecond lift2 lift3 lift4 lift5 applyFn applyArray applyProxy;
    inherit (module."Data.Functor") map void;
  }
;

Control-Apply_foreign-nix = 
{ arrayApply = fs: xs: builtins.concatMap (f: map f xs) fs; }

;

Control-Biapplicative_default-nix = 
let
  module = 
    { "Control.Biapply" = Control-Biapply_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
    };
  Biapplicative-Dict = x: x;
  bipure = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.bipure;
      __patternFail = builtins.throw "Pattern match failure in .spago/bifunctors/e2f1d603125a5f42338c6fae10422508be91eda6/src/Control/Biapplicative.purs at 9:3 - 9:40";
    in
      __pattern0 __patternFail;
  biapplicativeTuple = 
    { bipure = module."Data.Tuple".Tuple;
      "Biapply0" = __unused: module."Control.Biapply".biapplyTuple;
    };
in
  {inherit bipure biapplicativeTuple;}
;

Control-Biapply_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Data.Bifunctor" = Data-Bifunctor_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
    };
  Biapply-Dict = x: x;
  biapplyTuple = 
    { biapply = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple" && v1.__tag == "Tuple"
              then 
                let
                  f = v.__field0;
                  g = v.__field1;
                  a = v1.__field0;
                  b = v1.__field1;
                in
                  module."Data.Tuple".Tuple (f a) (g b)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/bifunctors/e2f1d603125a5f42338c6fae10422508be91eda6/src/Control/Biapply.purs at 58:1 - 59:54";
        in
          __pattern0 __patternFail;
      "Bifunctor0" = __unused: module."Data.Bifunctor".bifunctorTuple;
    };
  biapply = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.biapply;
      __patternFail = builtins.throw "Pattern match failure in .spago/bifunctors/e2f1d603125a5f42338c6fae10422508be91eda6/src/Control/Biapply.purs at 19:3 - 19:67";
    in
      __pattern0 __patternFail;
  biapplyFirst = dictBiapply: a: b: biapply dictBiapply (module."Control.Category".identity module."Control.Category".categoryFn (module."Data.Bifunctor".bimap (dictBiapply."Bifunctor0" module."Prim".undefined) (module."Data.Function".const (module."Control.Category".identity module."Control.Category".categoryFn)) (module."Data.Function".const (module."Control.Category".identity module."Control.Category".categoryFn))) a) b;
  biapplySecond = dictBiapply: a: b: biapply dictBiapply (module."Control.Category".identity module."Control.Category".categoryFn (module."Data.Bifunctor".bimap (dictBiapply."Bifunctor0" module."Prim".undefined) module."Data.Function".const module."Data.Function".const) a) b;
  bilift2 = dictBiapply: f: g: a: b: biapply dictBiapply (module."Control.Category".identity module."Control.Category".categoryFn (module."Data.Bifunctor".bimap (dictBiapply."Bifunctor0" module."Prim".undefined) f g) a) b;
  bilift3 = dictBiapply: f: g: a: b: c: biapply dictBiapply (biapply dictBiapply (module."Control.Category".identity module."Control.Category".categoryFn (module."Data.Bifunctor".bimap (dictBiapply."Bifunctor0" module."Prim".undefined) f g) a) b) c;
in
  {inherit biapply biapplyFirst biapplySecond bilift2 bilift3 biapplyTuple;}
;

Control-Bind_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Category" = Control-Category_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Type.Proxy" = Type-Proxy_default-nix;
    };
  foreign = Control-Bind_foreign-nix;
  arrayBind = foreign.arrayBind;
  Bind-Dict = x: x;
  Discard-Dict = x: x;
  discard = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.discard;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Control/Bind.purs at 102:3 - 102:60";
    in
      __pattern0 __patternFail;
  bindProxy = 
    { bind = v: v1: module."Type.Proxy".Proxy;
      "Apply0" = __unused: module."Control.Apply".applyProxy;
    };
  bindFn = 
    { bind = m: f: x: f (m x) x;
      "Apply0" = __unused: module."Control.Apply".applyFn;
    };
  bindArray = 
    { bind = arrayBind;
      "Apply0" = __unused: module."Control.Apply".applyArray;
    };
  bind = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.bind;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Control/Bind.purs at 51:3 - 51:47";
    in
      __pattern0 __patternFail;
  bindFlipped = dictBind: module."Data.Function".flip (bind dictBind);
  composeKleisliFlipped = dictBind: f: g: a: bindFlipped dictBind f (g a);
  composeKleisli = dictBind: f: g: a: bind dictBind (f a) g;
  discardProxy = {discard = dictBind: bind dictBind;};
  discardProxy2 = {discard = dictBind: bind dictBind;};
  discardProxy3 = {discard = dictBind: bind dictBind;};
  discardUnit = {discard = dictBind: bind dictBind;};
  ifM = dictBind: cond: t: f: bind dictBind cond 
    ( cond': 
      let
        __pattern0 = __fail: if cond' then t else __fail;
        __pattern1 = __fail: f;
        __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Control/Bind.purs at 150:35 - 150:57";
      in
        __pattern0 (__pattern1 __patternFail)
    );
  join = dictBind: m: bind dictBind m (module."Control.Category".identity module."Control.Category".categoryFn);
in
  
  { inherit bind bindFlipped discard join composeKleisli composeKleisliFlipped ifM bindFn bindArray bindProxy discardUnit discardProxy discardProxy2 discardProxy3;
    inherit (module."Control.Applicative") liftA1 pure unless when;
    inherit (module."Control.Apply") apply;
    inherit (module."Data.Functor") map void;
  }
;

Control-Bind_foreign-nix = 
{ arrayBind = arr: k: builtins.concatMap k arr; }

;

Control-Category_default-nix = 
let
  module = {"Control.Semigroupoid" = Control-Semigroupoid_default-nix;};
  Category-Dict = x: x;
  identity = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.identity;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Control/Category.purs at 18:3 - 18:30";
    in
      __pattern0 __patternFail;
  categoryFn = 
    { identity = x: x;
      "Semigroupoid0" = __unused: module."Control.Semigroupoid".semigroupoidFn;
    };
in
  
  { inherit identity categoryFn;
    inherit (module."Control.Semigroupoid") compose;
  }
;

Control-Comonad_default-nix = 
let
  module = 
    { "Control.Extend" = Control-Extend_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
    };
  Comonad-Dict = x: x;
  extract = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.extract;
      __patternFail = builtins.throw "Pattern match failure in .spago/control/14103f74386a315f159f85720fac0242810d5b38/src/Control/Comonad.purs at 21:3 - 21:32";
    in
      __pattern0 __patternFail;
in
  
  { inherit extract;
    inherit (module."Control.Extend") duplicate extend;
    inherit (module."Data.Functor") map void;
  }
;

Control-Extend_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
    };
  foreign = Control-Extend_foreign-nix;
  arrayExtend = foreign.arrayExtend;
  Extend-Dict = x: x;
  extendFn = dictSemigroup: 
    { extend = f: g: w: f (w': g (module."Data.Semigroup".append dictSemigroup w w'));
      "Functor0" = __unused: module."Data.Functor".functorFn;
    };
  extendArray = 
    { extend = arrayExtend;
      "Functor0" = __unused: module."Data.Functor".functorArray;
    };
  extend = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.extend;
      __patternFail = builtins.throw "Pattern match failure in .spago/control/14103f74386a315f159f85720fac0242810d5b38/src/Control/Extend.purs at 25:3 - 25:49";
    in
      __pattern0 __patternFail;
  extendFlipped = dictExtend: w: f: extend dictExtend f w;
  duplicate = dictExtend: extend dictExtend (module."Control.Category".identity module."Control.Category".categoryFn);
  composeCoKleisliFlipped = dictExtend: f: g: w: f (extend dictExtend g w);
  composeCoKleisli = dictExtend: f: g: w: g (extend dictExtend f w);
in
  
  { inherit extend extendFlipped composeCoKleisli composeCoKleisliFlipped duplicate extendFn extendArray;
    inherit (module."Data.Functor") map void;
  }
;

Control-Extend_foreign-nix = 
let
  # Drop the number of elements from the start of the list.
  #
  # > drop 3 [1 2 3 4 5 6 7]
  # [4 5 6 7]
  drop = i: xs:
    builtins.genList (n: builtins.elemAt xs (n + i)) (builtins.length xs - i);
in

{ arrayExtend = f: xs: builtins.genList (n: f (drop n xs)) (builtins.length xs);
}

;

Control-Lazy_default-nix = 
let
  module = {"Data.Unit" = Data-Unit_default-nix;};
  Lazy-Dict = x: x;
  lazyUnit = {defer = v: module."Data.Unit".unit;};
  lazyFn = {defer = f: x: f module."Data.Unit".unit x;};
  defer = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.defer;
      __patternFail = builtins.throw "Pattern match failure in .spago/control/14103f74386a315f159f85720fac0242810d5b38/src/Control/Lazy.purs at 11:3 - 11:28";
    in
      __pattern0 __patternFail;
  fix = dictLazy: f: 
    let
      go = defer dictLazy (v: f go);
    in
      go;
in
  {inherit defer fix lazyFn lazyUnit;}
;

Control-Monad_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Type.Proxy" = Type-Proxy_default-nix;
    };
  Monad-Dict = x: x;
  whenM = dictMonad: mb: m: module."Control.Bind".bind (dictMonad."Bind1" module."Prim".undefined) mb (b: module."Control.Applicative".when (dictMonad."Applicative0" module."Prim".undefined) b m);
  unlessM = dictMonad: mb: m: module."Control.Bind".bind (dictMonad."Bind1" module."Prim".undefined) mb (b: module."Control.Applicative".unless (dictMonad."Applicative0" module."Prim".undefined) b m);
  monadProxy = 
    { "Applicative0" = __unused: module."Control.Applicative".applicativeProxy;
      "Bind1" = __unused: module."Control.Bind".bindProxy;
    };
  monadFn = 
    { "Applicative0" = __unused: module."Control.Applicative".applicativeFn;
      "Bind1" = __unused: module."Control.Bind".bindFn;
    };
  monadArray = 
    { "Applicative0" = __unused: module."Control.Applicative".applicativeArray;
      "Bind1" = __unused: module."Control.Bind".bindArray;
    };
  liftM1 = dictMonad: f: a: module."Control.Bind".bind (dictMonad."Bind1" module."Prim".undefined) a (a': module."Control.Applicative".pure (dictMonad."Applicative0" module."Prim".undefined) (f a'));
  ap = dictMonad: f: a: module."Control.Bind".bind (dictMonad."Bind1" module."Prim".undefined) f (f': module."Control.Bind".bind (dictMonad."Bind1" module."Prim".undefined) a (a': module."Control.Applicative".pure (dictMonad."Applicative0" module."Prim".undefined) (f' a')));
in
  
  { inherit liftM1 whenM unlessM ap monadFn monadArray monadProxy;
    inherit (module."Control.Applicative") liftA1 pure unless when;
    inherit (module."Control.Apply") apply;
    inherit (module."Control.Bind") bind ifM join;
    inherit (module."Data.Functor") map void;
  }
;

Control-MonadPlus_default-nix = 
let
  module = 
    { "Control.Alt" = Control-Alt_default-nix;
      "Control.Alternative" = Control-Alternative_default-nix;
      "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Control.MonadZero" = Control-MonadZero_default-nix;
      "Control.Plus" = Control-Plus_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
    };
  MonadPlus-Dict = x: x;
  monadPlusArray = 
    { "Monad0" = __unused: module."Control.Monad".monadArray;
      "Alternative1" = __unused: module."Control.Alternative".alternativeArray;
    };
in
  
  { inherit monadPlusArray;
    inherit (module."Control.Alt") alt;
    inherit (module."Control.Alternative") guard;
    inherit (module."Control.Applicative") liftA1 pure unless when;
    inherit (module."Control.Apply") apply;
    inherit (module."Control.Bind") bind ifM join;
    inherit (module."Control.Monad") ap liftM1;
    inherit (module."Control.MonadZero");
    inherit (module."Control.Plus") empty;
    inherit (module."Data.Functor") map void;
  }
;

Control-MonadZero_default-nix = 
let
  module = 
    { "Control.Alt" = Control-Alt_default-nix;
      "Control.Alternative" = Control-Alternative_default-nix;
      "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Control.Plus" = Control-Plus_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Prim.TypeError" = import ../Prim.TypeError;
    };
  MonadZeroIsDeprecated-Dict = x: x;
  MonadZero-Dict = x: x;
  monadZeroIsDeprecated = dictWarn: { };
  monadZeroArray = 
    { "Monad0" = __unused: module."Control.Monad".monadArray;
      "Alternative1" = __unused: module."Control.Alternative".alternativeArray;
      "MonadZeroIsDeprecated2" = __unused: module."Prim".undefined;
    };
in
  
  { inherit monadZeroIsDeprecated monadZeroArray;
    inherit (module."Control.Alt") alt;
    inherit (module."Control.Alternative") guard;
    inherit (module."Control.Applicative") liftA1 pure unless when;
    inherit (module."Control.Apply") apply;
    inherit (module."Control.Bind") bind ifM join;
    inherit (module."Control.Monad") ap liftM1;
    inherit (module."Control.Plus") empty;
    inherit (module."Data.Functor") map void;
  }
;

Control-Plus_default-nix = 
let
  module = 
    { "Control.Alt" = Control-Alt_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
    };
  Plus-Dict = x: x;
  plusArray = 
    { empty = [];
      "Alt0" = __unused: module."Control.Alt".altArray;
    };
  empty = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.empty;
      __patternFail = builtins.throw "Pattern match failure in .spago/control/14103f74386a315f159f85720fac0242810d5b38/src/Control/Plus.purs at 24:3 - 24:25";
    in
      __pattern0 __patternFail;
in
  
  { inherit empty plusArray;
    inherit (module."Control.Alt") alt;
    inherit (module."Data.Functor") map void;
  }
;

Control-Semigroupoid_default-nix = 
let
  module = { };
  Semigroupoid-Dict = x: x;
  semigroupoidFn = {compose = f: g: x: f (g x);};
  compose = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.compose;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Control/Semigroupoid.purs at 14:3 - 14:51";
    in
      __pattern0 __patternFail;
  composeFlipped = dictSemigroupoid: f: g: compose dictSemigroupoid g f;
in
  {inherit compose composeFlipped semigroupoidFn;}
;

Data-Bifoldable_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Category" = Control-Category_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Const" = Data-Const_default-nix;
      "Data.Either" = Data-Either_default-nix;
      "Data.Foldable" = Data-Foldable_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor.Clown" = Data-Functor-Clown_default-nix;
      "Data.Functor.Flip" = Data-Functor-Flip_default-nix;
      "Data.Functor.Joker" = Data-Functor-Joker_default-nix;
      "Data.Functor.Product2" = Data-Functor-Product2_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Monoid.Conj" = Data-Monoid-Conj_default-nix;
      "Data.Monoid.Disj" = Data-Monoid-Disj_default-nix;
      "Data.Monoid.Dual" = Data-Monoid-Dual_default-nix;
      "Data.Monoid.Endo" = Data-Monoid-Endo_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Bifoldable-Dict = x: x;
  bifoldr = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.bifoldr;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 38:3 - 38:77";
    in
      __pattern0 __patternFail;
  bitraverse_ = dictBifoldable: dictApplicative: f: g: bifoldr dictBifoldable (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Control.Apply".applySecond (dictApplicative."Apply0" module."Prim".undefined)) f) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Control.Apply".applySecond (dictApplicative."Apply0" module."Prim".undefined)) g) (module."Control.Applicative".pure dictApplicative module."Data.Unit".unit);
  bifor_ = dictBifoldable: dictApplicative: t: f: g: bitraverse_ dictBifoldable dictApplicative f g t;
  bisequence_ = dictBifoldable: dictApplicative: bitraverse_ dictBifoldable dictApplicative (module."Control.Category".identity module."Control.Category".categoryFn) (module."Control.Category".identity module."Control.Category".categoryFn);
  bifoldl = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.bifoldl;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 39:3 - 39:77";
    in
      __pattern0 __patternFail;
  bifoldableTuple = 
    { bifoldMap = dictMonoid: f: g: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  g1 = g;
                  a = v.__field0;
                  b = v.__field1;
                in
                  module."Data.Semigroup".append (dictMonoid."Semigroup0" module."Prim".undefined) (f1 a) (g1 b)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 70:1 - 73:42";
        in
          __pattern0 __patternFail;
      bifoldr = f: g: z: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  g1 = g;
                  z1 = z;
                  a = v.__field0;
                  b = v.__field1;
                in
                  f1 a (g1 b z1)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 70:1 - 73:42";
        in
          __pattern0 __patternFail;
      bifoldl = f: g: z: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  g1 = g;
                  z1 = z;
                  a = v.__field0;
                  b = v.__field1;
                in
                  g1 (f1 z1 a) b
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 70:1 - 73:42";
        in
          __pattern0 __patternFail;
    };
  bifoldableJoker = dictFoldable: 
    { bifoldr = v: r: u: v1: 
        let
          __pattern0 = __fail: 
            let
              r1 = r;
              u1 = u;
              f = v1;
            in
              module."Data.Foldable".foldr dictFoldable r1 u1 f;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 47:1 - 50:40";
        in
          __pattern0 __patternFail;
      bifoldl = v: r: u: v1: 
        let
          __pattern0 = __fail: 
            let
              r1 = r;
              u1 = u;
              f = v1;
            in
              module."Data.Foldable".foldl dictFoldable r1 u1 f;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 47:1 - 50:40";
        in
          __pattern0 __patternFail;
      bifoldMap = dictMonoid: v: r: v1: 
        let
          __pattern0 = __fail: 
            let
              r1 = r;
              f = v1;
            in
              module."Data.Foldable".foldMap dictFoldable dictMonoid r1 f;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 47:1 - 50:40";
        in
          __pattern0 __patternFail;
    };
  bifoldableEither = 
    { bifoldr = v: v1: z: v2: 
        let
          __pattern0 = __fail: 
            if v2.__tag == "Left"
              then 
                let
                  f = v;
                  z1 = z;
                  a = v2.__field0;
                in
                  f a z1
              else __fail;
          __pattern1 = __fail: 
            if v2.__tag == "Right"
              then 
                let
                  g = v1;
                  z1 = z;
                  b = v2.__field0;
                in
                  g b z1
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 62:1 - 68:32";
        in
          __pattern0 (__pattern1 __patternFail);
      bifoldl = v: v1: z: v2: 
        let
          __pattern0 = __fail: 
            if v2.__tag == "Left"
              then 
                let
                  f = v;
                  z1 = z;
                  a = v2.__field0;
                in
                  f z1 a
              else __fail;
          __pattern1 = __fail: 
            if v2.__tag == "Right"
              then 
                let
                  g = v1;
                  z1 = z;
                  b = v2.__field0;
                in
                  g z1 b
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 62:1 - 68:32";
        in
          __pattern0 (__pattern1 __patternFail);
      bifoldMap = dictMonoid: v: v1: v2: 
        let
          __pattern0 = __fail: 
            if v2.__tag == "Left"
              then 
                let
                  f = v;
                  a = v2.__field0;
                in
                  f a
              else __fail;
          __pattern1 = __fail: 
            if v2.__tag == "Right"
              then 
                let
                  g = v1;
                  b = v2.__field0;
                in
                  g b
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 62:1 - 68:32";
        in
          __pattern0 (__pattern1 __patternFail);
    };
  bifoldableConst = 
    { bifoldr = f: v: z: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              a = v1;
            in
              f1 a z1;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 75:1 - 78:32";
        in
          __pattern0 __patternFail;
      bifoldl = f: v: z: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              a = v1;
            in
              f1 z1 a;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 75:1 - 78:32";
        in
          __pattern0 __patternFail;
      bifoldMap = dictMonoid: f: v: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              a = v1;
            in
              f1 a;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 75:1 - 78:32";
        in
          __pattern0 __patternFail;
    };
  bifoldableClown = dictFoldable: 
    { bifoldr = l: v: u: v1: 
        let
          __pattern0 = __fail: 
            let
              l1 = l;
              u1 = u;
              f = v1;
            in
              module."Data.Foldable".foldr dictFoldable l1 u1 f;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 42:1 - 45:40";
        in
          __pattern0 __patternFail;
      bifoldl = l: v: u: v1: 
        let
          __pattern0 = __fail: 
            let
              l1 = l;
              u1 = u;
              f = v1;
            in
              module."Data.Foldable".foldl dictFoldable l1 u1 f;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 42:1 - 45:40";
        in
          __pattern0 __patternFail;
      bifoldMap = dictMonoid: l: v: v1: 
        let
          __pattern0 = __fail: 
            let
              l1 = l;
              f = v1;
            in
              module."Data.Foldable".foldMap dictFoldable dictMonoid l1 f;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 42:1 - 45:40";
        in
          __pattern0 __patternFail;
    };
  bifoldMapDefaultR = dictBifoldable: dictMonoid: f: g: bifoldr dictBifoldable (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Semigroup".append (dictMonoid."Semigroup0" module."Prim".undefined)) f) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Semigroup".append (dictMonoid."Semigroup0" module."Prim".undefined)) g) (module."Data.Monoid".mempty dictMonoid);
  bifoldMapDefaultL = dictBifoldable: dictMonoid: f: g: bifoldl dictBifoldable (m: a: module."Data.Semigroup".append (dictMonoid."Semigroup0" module."Prim".undefined) m (f a)) (m: b: module."Data.Semigroup".append (dictMonoid."Semigroup0" module."Prim".undefined) m (g b)) (module."Data.Monoid".mempty dictMonoid);
  bifoldMap = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.bifoldMap;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 40:3 - 40:76";
    in
      __pattern0 __patternFail;
  bifoldableFlip = dictBifoldable: 
    { bifoldr = r: l: u: v: 
        let
          __pattern0 = __fail: 
            let
              r1 = r;
              l1 = l;
              u1 = u;
              p = v;
            in
              bifoldr dictBifoldable l1 r1 u1 p;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 52:1 - 55:43";
        in
          __pattern0 __patternFail;
      bifoldl = r: l: u: v: 
        let
          __pattern0 = __fail: 
            let
              r1 = r;
              l1 = l;
              u1 = u;
              p = v;
            in
              bifoldl dictBifoldable l1 r1 u1 p;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 52:1 - 55:43";
        in
          __pattern0 __patternFail;
      bifoldMap = dictMonoid: r: l: v: 
        let
          __pattern0 = __fail: 
            let
              r1 = r;
              l1 = l;
              p = v;
            in
              bifoldMap dictBifoldable dictMonoid l1 r1 p;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 52:1 - 55:43";
        in
          __pattern0 __patternFail;
    };
  bifoldlDefault = dictBifoldable: f: g: z: p: module."Data.Newtype".unwrap module."Prim".undefined (module."Data.Newtype".unwrap module."Prim".undefined (bifoldMap dictBifoldable (module."Data.Monoid.Dual".monoidDual (module."Data.Monoid.Endo".monoidEndo module."Control.Category".categoryFn)) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Monoid.Dual".Dual (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Monoid.Endo".Endo (module."Data.Function".flip f))) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Monoid.Dual".Dual (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Monoid.Endo".Endo (module."Data.Function".flip g))) p)) z;
  bifoldrDefault = dictBifoldable: f: g: z: p: module."Data.Newtype".unwrap module."Prim".undefined (bifoldMap dictBifoldable (module."Data.Monoid.Endo".monoidEndo module."Control.Category".categoryFn) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Monoid.Endo".Endo f) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Monoid.Endo".Endo g) p) z;
  bifoldableProduct2 = dictBifoldable: dictBifoldable1: 
    { bifoldr = l: r: u: m: bifoldrDefault (bifoldableProduct2 dictBifoldable dictBifoldable1) l r u m;
      bifoldl = l: r: u: m: bifoldlDefault (bifoldableProduct2 dictBifoldable dictBifoldable1) l r u m;
      bifoldMap = dictMonoid: l: r: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product2"
              then 
                let
                  l1 = l;
                  r1 = r;
                  f = v.__field0;
                  g = v.__field1;
                in
                  module."Data.Semigroup".append (dictMonoid."Semigroup0" module."Prim".undefined) (bifoldMap dictBifoldable dictMonoid l1 r1 f) (bifoldMap dictBifoldable1 dictMonoid l1 r1 g)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bifoldable.purs at 57:1 - 60:68";
        in
          __pattern0 __patternFail;
    };
  bifold = dictBifoldable: dictMonoid: bifoldMap dictBifoldable dictMonoid (module."Control.Category".identity module."Control.Category".categoryFn) (module."Control.Category".identity module."Control.Category".categoryFn);
  biany = dictBifoldable: dictBooleanAlgebra: p: q: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Newtype".unwrap module."Prim".undefined) (bifoldMap dictBifoldable (module."Data.Monoid.Disj".monoidDisj (dictBooleanAlgebra."HeytingAlgebra0" module."Prim".undefined)) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Monoid.Disj".Disj p) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Monoid.Disj".Disj q));
  biall = dictBifoldable: dictBooleanAlgebra: p: q: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Newtype".unwrap module."Prim".undefined) (bifoldMap dictBifoldable (module."Data.Monoid.Conj".monoidConj (dictBooleanAlgebra."HeytingAlgebra0" module."Prim".undefined)) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Monoid.Conj".Conj p) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Monoid.Conj".Conj q));
in
  {inherit bifoldMap bifoldl bifoldr bifoldrDefault bifoldlDefault bifoldMapDefaultR bifoldMapDefaultL bifold bitraverse_ bifor_ bisequence_ biany biall bifoldableClown bifoldableJoker bifoldableFlip bifoldableProduct2 bifoldableEither bifoldableTuple bifoldableConst;}
;

Data-Bifunctor-Join_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Biapplicative" = Control-Biapplicative_default-nix;
      "Control.Biapply" = Control-Biapply_default-nix;
      "Data.Bifunctor" = Data-Bifunctor_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Join = x: x;
  showJoin = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Join " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow x) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/bifunctors/e2f1d603125a5f42338c6fae10422508be91eda6/src/Data/Bifunctor/Join.purs at 21:1 - 22:44";
        in
          __pattern0 __patternFail;
    };
  ordJoin = dictOrd: dictOrd;
  newtypeJoin = {"Coercible0" = __unused: module."Prim".undefined;};
  eqJoin = dictEq: dictEq;
  bifunctorJoin = dictBifunctor: 
    { map = f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              a = v;
            in
              module."Data.Bifunctor".bimap dictBifunctor f1 f1 a;
          __patternFail = builtins.throw "Pattern match failure in .spago/bifunctors/e2f1d603125a5f42338c6fae10422508be91eda6/src/Data/Bifunctor/Join.purs at 24:1 - 25:38";
        in
          __pattern0 __patternFail;
    };
  biapplyJoin = dictBiapply: 
    { apply = v: v1: 
        let
          __pattern0 = __fail: 
            let
              f = v;
              a = v1;
            in
              module."Control.Biapply".biapply dictBiapply f a;
          __patternFail = builtins.throw "Pattern match failure in .spago/bifunctors/e2f1d603125a5f42338c6fae10422508be91eda6/src/Data/Bifunctor/Join.purs at 27:1 - 28:45";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: bifunctorJoin (dictBiapply."Bifunctor0" module."Prim".undefined);
    };
  biapplicativeJoin = dictBiapplicative: 
    { pure = a: module."Control.Biapplicative".bipure dictBiapplicative a a;
      "Apply0" = __unused: biapplyJoin (dictBiapplicative."Biapply0" module."Prim".undefined);
    };
in
  {inherit Join newtypeJoin eqJoin ordJoin showJoin bifunctorJoin biapplyJoin biapplicativeJoin;}
;

Data-Bifunctor_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Data.Const" = Data-Const_default-nix;
      "Data.Either" = Data-Either_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
    };
  Bifunctor-Dict = x: x;
  bimap = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.bimap;
      __patternFail = builtins.throw "Pattern match failure in .spago/bifunctors/e2f1d603125a5f42338c6fae10422508be91eda6/src/Data/Bifunctor.purs at 22:3 - 22:66";
    in
      __pattern0 __patternFail;
  lmap = dictBifunctor: f: bimap dictBifunctor f (module."Control.Category".identity module."Control.Category".categoryFn);
  rmap = dictBifunctor: bimap dictBifunctor (module."Control.Category".identity module."Control.Category".categoryFn);
  bifunctorTuple = 
    { bimap = f: g: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  g1 = g;
                  x = v.__field0;
                  y = v.__field1;
                in
                  module."Data.Tuple".Tuple (f1 x) (g1 y)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/bifunctors/e2f1d603125a5f42338c6fae10422508be91eda6/src/Data/Bifunctor.purs at 36:1 - 37:44";
        in
          __pattern0 __patternFail;
    };
  bifunctorEither = 
    { bimap = v: v1: v2: 
        let
          __pattern0 = __fail: 
            if v2.__tag == "Left"
              then 
                let
                  f = v;
                  l = v2.__field0;
                in
                  module."Data.Either".Left (f l)
              else __fail;
          __pattern1 = __fail: 
            if v2.__tag == "Right"
              then 
                let
                  g = v1;
                  r = v2.__field0;
                in
                  module."Data.Either".Right (g r)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/bifunctors/e2f1d603125a5f42338c6fae10422508be91eda6/src/Data/Bifunctor.purs at 32:1 - 34:36";
        in
          __pattern0 (__pattern1 __patternFail);
    };
  bifunctorConst = 
    { bimap = f: v: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              a = v1;
            in
              f1 a;
          __patternFail = builtins.throw "Pattern match failure in .spago/bifunctors/e2f1d603125a5f42338c6fae10422508be91eda6/src/Data/Bifunctor.purs at 39:1 - 40:36";
        in
          __pattern0 __patternFail;
    };
in
  {inherit bimap lmap rmap bifunctorEither bifunctorTuple bifunctorConst;}
;

Data-Bitraversable_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Category" = Control-Category_default-nix;
      "Data.Bifoldable" = Data-Bifoldable_default-nix;
      "Data.Bifunctor" = Data-Bifunctor_default-nix;
      "Data.Const" = Data-Const_default-nix;
      "Data.Either" = Data-Either_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Functor.Clown" = Data-Functor-Clown_default-nix;
      "Data.Functor.Flip" = Data-Functor-Flip_default-nix;
      "Data.Functor.Joker" = Data-Functor-Joker_default-nix;
      "Data.Functor.Product2" = Data-Functor-Product2_default-nix;
      "Data.Traversable" = Data-Traversable_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Bitraversable-Dict = x: x;
  bitraverse = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.bitraverse;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bitraversable.purs at 38:3 - 38:98";
    in
      __pattern0 __patternFail;
  lfor = dictBitraversable: dictApplicative: t: f: bitraverse dictBitraversable dictApplicative f (module."Control.Applicative".pure dictApplicative) t;
  ltraverse = dictBitraversable: dictApplicative: f: bitraverse dictBitraversable dictApplicative f (module."Control.Applicative".pure dictApplicative);
  rfor = dictBitraversable: dictApplicative: t: f: bitraverse dictBitraversable dictApplicative (module."Control.Applicative".pure dictApplicative) f t;
  rtraverse = dictBitraversable: dictApplicative: bitraverse dictBitraversable dictApplicative (module."Control.Applicative".pure dictApplicative);
  bitraversableTuple = 
    { bitraverse = dictApplicative: f: g: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  g1 = g;
                  a = v.__field0;
                  b = v.__field1;
                in
                  module."Control.Apply".apply (dictApplicative."Apply0" module."Prim".undefined) (module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Tuple".Tuple (f1 a)) (g1 b)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bitraversable.purs at 63:1 - 65:45";
        in
          __pattern0 __patternFail;
      bisequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  a = v.__field0;
                  b = v.__field1;
                in
                  module."Control.Apply".apply (dictApplicative."Apply0" module."Prim".undefined) (module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Tuple".Tuple a) b
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bitraversable.purs at 63:1 - 65:45";
        in
          __pattern0 __patternFail;
      "Bifunctor0" = __unused: module."Data.Bifunctor".bifunctorTuple;
      "Bifoldable1" = __unused: module."Data.Bifoldable".bifoldableTuple;
    };
  bitraversableJoker = dictTraversable: 
    { bitraverse = dictApplicative: v: r: v1: 
        let
          __pattern0 = __fail: 
            let
              r1 = r;
              f = v1;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Functor.Joker".Joker (module."Data.Traversable".traverse dictTraversable dictApplicative r1 f);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bitraversable.purs at 45:1 - 47:46";
        in
          __pattern0 __patternFail;
      bisequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            let
              f = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Functor.Joker".Joker (module."Data.Traversable".sequence dictTraversable dictApplicative f);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bitraversable.purs at 45:1 - 47:46";
        in
          __pattern0 __patternFail;
      "Bifunctor0" = __unused: module."Data.Functor.Joker".bifunctorJoker (dictTraversable."Functor0" module."Prim".undefined);
      "Bifoldable1" = __unused: module."Data.Bifoldable".bifoldableJoker (dictTraversable."Foldable1" module."Prim".undefined);
    };
  bitraversableEither = 
    { bitraverse = dictApplicative: v: v1: v2: 
        let
          __pattern0 = __fail: 
            if v2.__tag == "Left"
              then 
                let
                  f = v;
                  a = v2.__field0;
                in
                  module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Either".Left (f a)
              else __fail;
          __pattern1 = __fail: 
            if v2.__tag == "Right"
              then 
                let
                  g = v1;
                  b = v2.__field0;
                in
                  module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Either".Right (g b)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bitraversable.purs at 57:1 - 61:37";
        in
          __pattern0 (__pattern1 __patternFail);
      bisequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Left"
              then 
                let
                  a = v.__field0;
                in
                  module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Either".Left a
              else __fail;
          __pattern1 = __fail: 
            if v.__tag == "Right"
              then 
                let
                  b = v.__field0;
                in
                  module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Either".Right b
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bitraversable.purs at 57:1 - 61:37";
        in
          __pattern0 (__pattern1 __patternFail);
      "Bifunctor0" = __unused: module."Data.Bifunctor".bifunctorEither;
      "Bifoldable1" = __unused: module."Data.Bifoldable".bifoldableEither;
    };
  bitraversableConst = 
    { bitraverse = dictApplicative: f: v: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              a = v1;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Const".Const (f1 a);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bitraversable.purs at 67:1 - 69:37";
        in
          __pattern0 __patternFail;
      bisequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Const".Const a;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bitraversable.purs at 67:1 - 69:37";
        in
          __pattern0 __patternFail;
      "Bifunctor0" = __unused: module."Data.Bifunctor".bifunctorConst;
      "Bifoldable1" = __unused: module."Data.Bifoldable".bifoldableConst;
    };
  bitraversableClown = dictTraversable: 
    { bitraverse = dictApplicative: l: v: v1: 
        let
          __pattern0 = __fail: 
            let
              l1 = l;
              f = v1;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Functor.Clown".Clown (module."Data.Traversable".traverse dictTraversable dictApplicative l1 f);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bitraversable.purs at 41:1 - 43:46";
        in
          __pattern0 __patternFail;
      bisequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            let
              f = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Functor.Clown".Clown (module."Data.Traversable".sequence dictTraversable dictApplicative f);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bitraversable.purs at 41:1 - 43:46";
        in
          __pattern0 __patternFail;
      "Bifunctor0" = __unused: module."Data.Functor.Clown".bifunctorClown (dictTraversable."Functor0" module."Prim".undefined);
      "Bifoldable1" = __unused: module."Data.Bifoldable".bifoldableClown (dictTraversable."Foldable1" module."Prim".undefined);
    };
  bisequenceDefault = dictBitraversable: dictApplicative: bitraverse dictBitraversable dictApplicative (module."Control.Category".identity module."Control.Category".categoryFn) (module."Control.Category".identity module."Control.Category".categoryFn);
  bisequence = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.bisequence;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bitraversable.purs at 39:3 - 39:74";
    in
      __pattern0 __patternFail;
  bitraversableFlip = dictBitraversable: 
    { bitraverse = dictApplicative: r: l: v: 
        let
          __pattern0 = __fail: 
            let
              r1 = r;
              l1 = l;
              p = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Functor.Flip".Flip (bitraverse dictBitraversable dictApplicative l1 r1 p);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bitraversable.purs at 49:1 - 51:46";
        in
          __pattern0 __patternFail;
      bisequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            let
              p = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Functor.Flip".Flip (bisequence dictBitraversable dictApplicative p);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bitraversable.purs at 49:1 - 51:46";
        in
          __pattern0 __patternFail;
      "Bifunctor0" = __unused: module."Data.Functor.Flip".bifunctorFlip (dictBitraversable."Bifunctor0" module."Prim".undefined);
      "Bifoldable1" = __unused: module."Data.Bifoldable".bifoldableFlip (dictBitraversable."Bifoldable1" module."Prim".undefined);
    };
  bitraversableProduct2 = dictBitraversable: dictBitraversable1: 
    { bitraverse = dictApplicative: l: r: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product2"
              then 
                let
                  l1 = l;
                  r1 = r;
                  f = v.__field0;
                  g = v.__field1;
                in
                  module."Control.Apply".apply (dictApplicative."Apply0" module."Prim".undefined) (module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Functor.Product2".Product2 (bitraverse dictBitraversable dictApplicative l1 r1 f)) (bitraverse dictBitraversable1 dictApplicative l1 r1 g)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bitraversable.purs at 53:1 - 55:73";
        in
          __pattern0 __patternFail;
      bisequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product2"
              then 
                let
                  f = v.__field0;
                  g = v.__field1;
                in
                  module."Control.Apply".apply (dictApplicative."Apply0" module."Prim".undefined) (module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Functor.Product2".Product2 (bisequence dictBitraversable dictApplicative f)) (bisequence dictBitraversable1 dictApplicative g)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Bitraversable.purs at 53:1 - 55:73";
        in
          __pattern0 __patternFail;
      "Bifunctor0" = __unused: module."Data.Functor.Product2".bifunctorProduct2 (dictBitraversable."Bifunctor0" module."Prim".undefined) (dictBitraversable1."Bifunctor0" module."Prim".undefined);
      "Bifoldable1" = __unused: module."Data.Bifoldable".bifoldableProduct2 (dictBitraversable."Bifoldable1" module."Prim".undefined) (dictBitraversable1."Bifoldable1" module."Prim".undefined);
    };
  bitraverseDefault = dictBitraversable: dictApplicative: f: g: t: bisequence dictBitraversable dictApplicative (module."Data.Bifunctor".bimap (dictBitraversable."Bifunctor0" module."Prim".undefined) f g t);
  bifor = dictBitraversable: dictApplicative: t: f: g: bitraverse dictBitraversable dictApplicative f g t;
in
  
  { inherit bitraverse bisequence bitraverseDefault bisequenceDefault ltraverse rtraverse bifor lfor rfor bitraversableClown bitraversableJoker bitraversableFlip bitraversableProduct2 bitraversableEither bitraversableTuple bitraversableConst;
    inherit (module."Data.Bifoldable") biall biany bifold bifoldMap bifoldMapDefaultL bifoldMapDefaultR bifoldl bifoldlDefault bifoldr bifoldrDefault bifor_ bisequence_ bitraverse_;
  }
;

Data-Boolean_default-nix = 
let
  module = { };
  otherwise = true;
in
  {inherit otherwise;}
;

Data-BooleanAlgebra_default-nix = 
let
  module = 
    { "Data.HeytingAlgebra" = Data-HeytingAlgebra_default-nix;
      "Data.Symbol" = Data-Symbol_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prim.Row" = import ../Prim.Row;
      "Prim.RowList" = import ../Prim.RowList;
      "Type.Proxy" = Type-Proxy_default-nix;
    };
  BooleanAlgebraRecord-Dict = x: x;
  BooleanAlgebra-Dict = x: x;
  booleanAlgebraUnit = {"HeytingAlgebra0" = __unused: module."Data.HeytingAlgebra".heytingAlgebraUnit;};
  booleanAlgebraRecordNil = {"HeytingAlgebraRecord0" = __unused: module."Data.HeytingAlgebra".heytingAlgebraRecordNil;};
  booleanAlgebraRecordCons = dictIsSymbol: dictCons: dictBooleanAlgebraRecord: dictBooleanAlgebra: {"HeytingAlgebraRecord0" = __unused: module."Data.HeytingAlgebra".heytingAlgebraRecordCons dictIsSymbol module."Prim".undefined (dictBooleanAlgebraRecord."HeytingAlgebraRecord0" module."Prim".undefined) (dictBooleanAlgebra."HeytingAlgebra0" module."Prim".undefined);};
  booleanAlgebraRecord = dictRowToList: dictBooleanAlgebraRecord: {"HeytingAlgebra0" = __unused: module."Data.HeytingAlgebra".heytingAlgebraRecord module."Prim".undefined (dictBooleanAlgebraRecord."HeytingAlgebraRecord0" module."Prim".undefined);};
  booleanAlgebraProxy3 = {"HeytingAlgebra0" = __unused: module."Data.HeytingAlgebra".heytingAlgebraProxy3;};
  booleanAlgebraProxy2 = {"HeytingAlgebra0" = __unused: module."Data.HeytingAlgebra".heytingAlgebraProxy2;};
  booleanAlgebraProxy = {"HeytingAlgebra0" = __unused: module."Data.HeytingAlgebra".heytingAlgebraProxy;};
  booleanAlgebraFn = dictBooleanAlgebra: {"HeytingAlgebra0" = __unused: module."Data.HeytingAlgebra".heytingAlgebraFunction (dictBooleanAlgebra."HeytingAlgebra0" module."Prim".undefined);};
  booleanAlgebraBoolean = {"HeytingAlgebra0" = __unused: module."Data.HeytingAlgebra".heytingAlgebraBoolean;};
in
  
  { inherit booleanAlgebraBoolean booleanAlgebraUnit booleanAlgebraFn booleanAlgebraRecord booleanAlgebraProxy booleanAlgebraProxy2 booleanAlgebraProxy3 booleanAlgebraRecordNil booleanAlgebraRecordCons;
    inherit (module."Data.HeytingAlgebra") conj disj ff implies not tt;
  }
;

Data-Bounded-Generic_default-nix = 
let
  module = 
    { "Data.Bounded" = Data-Bounded_default-nix;
      "Data.Generic.Rep" = Data-Generic-Rep_default-nix;
    };
  GenericTop-Dict = x: x;
  GenericBottom-Dict = x: x;
  genericTopNoArguments = {genericTop' = module."Data.Generic.Rep".NoArguments;};
  genericTopArgument = dictBounded: {genericTop' = module."Data.Bounded".top dictBounded;};
  genericTop' = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericTop';
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Bounded/Generic.purs at 33:3 - 33:19";
    in
      __pattern0 __patternFail;
  genericTopConstructor = dictGenericTop: {genericTop' = genericTop' dictGenericTop;};
  genericTopProduct = dictGenericTop: dictGenericTop1: {genericTop' = module."Data.Generic.Rep".Product (genericTop' dictGenericTop) (genericTop' dictGenericTop1);};
  genericTopSum = dictGenericTop: {genericTop' = module."Data.Generic.Rep".Inr (genericTop' dictGenericTop);};
  genericTop = dictGeneric: dictGenericTop: module."Data.Generic.Rep".to dictGeneric (genericTop' dictGenericTop);
  genericBottomNoArguments = {genericBottom' = module."Data.Generic.Rep".NoArguments;};
  genericBottomArgument = dictBounded: {genericBottom' = module."Data.Bounded".bottom dictBounded;};
  genericBottom' = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericBottom';
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Bounded/Generic.purs at 15:3 - 15:22";
    in
      __pattern0 __patternFail;
  genericBottomConstructor = dictGenericBottom: {genericBottom' = genericBottom' dictGenericBottom;};
  genericBottomProduct = dictGenericBottom: dictGenericBottom1: {genericBottom' = module."Data.Generic.Rep".Product (genericBottom' dictGenericBottom) (genericBottom' dictGenericBottom1);};
  genericBottomSum = dictGenericBottom: {genericBottom' = module."Data.Generic.Rep".Inl (genericBottom' dictGenericBottom);};
  genericBottom = dictGeneric: dictGenericBottom: module."Data.Generic.Rep".to dictGeneric (genericBottom' dictGenericBottom);
in
  {inherit genericBottom' genericBottom genericTop' genericTop genericBottomNoArguments genericBottomArgument genericBottomSum genericBottomProduct genericBottomConstructor genericTopNoArguments genericTopArgument genericTopSum genericTopProduct genericTopConstructor;}
;

Data-Bounded_default-nix = 
let
  module = 
    { "Data.Ord" = Data-Ord_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Data.Symbol" = Data-Symbol_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prim.Row" = import ../Prim.Row;
      "Prim.RowList" = import ../Prim.RowList;
      "Record.Unsafe" = Record-Unsafe_default-nix;
      "Type.Proxy" = Type-Proxy_default-nix;
    };
  foreign = Data-Bounded_foreign-nix;
  topInt = foreign.topInt;
  bottomInt = foreign.bottomInt;
  topChar = foreign.topChar;
  bottomChar = foreign.bottomChar;
  topNumber = foreign.topNumber;
  bottomNumber = foreign.bottomNumber;
  BoundedRecord-Dict = x: x;
  Bounded-Dict = x: x;
  topRecord = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.topRecord;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Bounded.purs at 78:3 - 78:85";
    in
      __pattern0 __patternFail;
  top = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.top;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Bounded.purs at 24:3 - 24:11";
    in
      __pattern0 __patternFail;
  boundedUnit = 
    { top = module."Data.Unit".unit;
      bottom = module."Data.Unit".unit;
      "Ord0" = __unused: module."Data.Ord".ordUnit;
    };
  boundedRecordNil = 
    { topRecord = v: v1: { };
      bottomRecord = v: v1: { };
      "OrdRecord0" = __unused: module."Data.Ord".ordRecordNil;
    };
  boundedProxy3 = 
    { bottom = module."Type.Proxy".Proxy3;
      top = module."Type.Proxy".Proxy3;
      "Ord0" = __unused: module."Data.Ord".ordProxy3;
    };
  boundedProxy2 = 
    { bottom = module."Type.Proxy".Proxy2;
      top = module."Type.Proxy".Proxy2;
      "Ord0" = __unused: module."Data.Ord".ordProxy2;
    };
  boundedProxy = 
    { bottom = module."Type.Proxy".Proxy;
      top = module."Type.Proxy".Proxy;
      "Ord0" = __unused: module."Data.Ord".ordProxy;
    };
  boundedOrdering = 
    { top = module."Data.Ordering".GT;
      bottom = module."Data.Ordering".LT;
      "Ord0" = __unused: module."Data.Ord".ordOrdering;
    };
  boundedNumber = 
    { top = topNumber;
      bottom = bottomNumber;
      "Ord0" = __unused: module."Data.Ord".ordNumber;
    };
  boundedInt = 
    { top = topInt;
      bottom = bottomInt;
      "Ord0" = __unused: module."Data.Ord".ordInt;
    };
  boundedChar = 
    { top = topChar;
      bottom = bottomChar;
      "Ord0" = __unused: module."Data.Ord".ordChar;
    };
  boundedBoolean = 
    { top = true;
      bottom = false;
      "Ord0" = __unused: module."Data.Ord".ordBoolean;
    };
  bottomRecord = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.bottomRecord;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Bounded.purs at 79:3 - 79:88";
    in
      __pattern0 __patternFail;
  boundedRecord = dictRowToList: dictBoundedRecord: 
    { top = topRecord dictBoundedRecord module."Type.Proxy".Proxy module."Type.Proxy".Proxy;
      bottom = bottomRecord dictBoundedRecord module."Type.Proxy".Proxy module."Type.Proxy".Proxy;
      "Ord0" = __unused: module."Data.Ord".ordRecord module."Prim".undefined (dictBoundedRecord."OrdRecord0" module."Prim".undefined);
    };
  bottom = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.bottom;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Bounded.purs at 25:3 - 25:14";
    in
      __pattern0 __patternFail;
  boundedRecordCons = dictIsSymbol: dictBounded: dictCons: dictCons1: dictBoundedRecord: 
    { topRecord = v: rowProxy: 
        let
          tail = topRecord dictBoundedRecord module."Type.Proxy".Proxy rowProxy;
          key = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
          insert = module."Record.Unsafe".unsafeSet key;
        in
          insert (top dictBounded) tail;
      bottomRecord = v: rowProxy: 
        let
          tail = bottomRecord dictBoundedRecord module."Type.Proxy".Proxy rowProxy;
          key = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
          insert = module."Record.Unsafe".unsafeSet key;
        in
          insert (bottom dictBounded) tail;
      "OrdRecord0" = __unused: module."Data.Ord".ordRecordCons (dictBoundedRecord."OrdRecord0" module."Prim".undefined) module."Prim".undefined dictIsSymbol (dictBounded."Ord0" module."Prim".undefined);
    };
in
  
  { inherit bottom top bottomRecord topRecord boundedBoolean boundedInt boundedChar boundedOrdering boundedUnit boundedNumber boundedProxy boundedProxy2 boundedProxy3 boundedRecordNil boundedRecordCons boundedRecord;
    inherit (module."Data.Ord") EQ GT LT compare;
  }
;

Data-Bounded_foreign-nix = 
{
  topInt = 9223372036854775807;
  bottomInt = -9223372036854775807;

  # TODO: Actually figure out what these are:
  # exports.topChar = String.fromCharCode(65535);
  # exports.bottomChar = String.fromCharCode(0);
  topChar = "z";
  bottomChar = "A";

  # TODO: This isn't correct.  From playing around with this on the repl, it
  # doesn't look like floats are bounded in Nix.
  # exports.topNumber = Number.POSITIVE_INFINITY;
  # exports.bottomNumber = Number.NEGATIVE_INFINITY;
  topNumber = 9223372036854775807.0;
  buttomNumber = -9223372036854775807.0;
}



;

Data-CommutativeRing_default-nix = 
let
  module = 
    { "Data.Ring" = Data-Ring_default-nix;
      "Data.Semiring" = Data-Semiring_default-nix;
      "Data.Symbol" = Data-Symbol_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prim.Row" = import ../Prim.Row;
      "Prim.RowList" = import ../Prim.RowList;
      "Type.Proxy" = Type-Proxy_default-nix;
    };
  CommutativeRingRecord-Dict = x: x;
  CommutativeRing-Dict = x: x;
  commutativeRingUnit = {"Ring0" = __unused: module."Data.Ring".ringUnit;};
  commutativeRingRecordNil = {"RingRecord0" = __unused: module."Data.Ring".ringRecordNil;};
  commutativeRingRecordCons = dictIsSymbol: dictCons: dictCommutativeRingRecord: dictCommutativeRing: {"RingRecord0" = __unused: module."Data.Ring".ringRecordCons dictIsSymbol module."Prim".undefined (dictCommutativeRingRecord."RingRecord0" module."Prim".undefined) (dictCommutativeRing."Ring0" module."Prim".undefined);};
  commutativeRingRecord = dictRowToList: dictCommutativeRingRecord: {"Ring0" = __unused: module."Data.Ring".ringRecord module."Prim".undefined (dictCommutativeRingRecord."RingRecord0" module."Prim".undefined);};
  commutativeRingProxy3 = {"Ring0" = __unused: module."Data.Ring".ringProxy3;};
  commutativeRingProxy2 = {"Ring0" = __unused: module."Data.Ring".ringProxy2;};
  commutativeRingProxy = {"Ring0" = __unused: module."Data.Ring".ringProxy;};
  commutativeRingNumber = {"Ring0" = __unused: module."Data.Ring".ringNumber;};
  commutativeRingInt = {"Ring0" = __unused: module."Data.Ring".ringInt;};
  commutativeRingFn = dictCommutativeRing: {"Ring0" = __unused: module."Data.Ring".ringFn (dictCommutativeRing."Ring0" module."Prim".undefined);};
in
  
  { inherit commutativeRingInt commutativeRingNumber commutativeRingUnit commutativeRingFn commutativeRingRecord commutativeRingProxy commutativeRingProxy2 commutativeRingProxy3 commutativeRingRecordNil commutativeRingRecordCons;
    inherit (module."Data.Ring");
    inherit (module."Data.Semiring") add mul one zero;
  }
;

Data-Comparison_default-nix = 
let
  module = 
    { "Data.Function" = Data-Function_default-nix;
      "Data.Functor.Contravariant" = Data-Functor-Contravariant_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Comparison = x: x;
  semigroupComparison = 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            let
              p = v;
              q = v1;
            in
              module."Data.Semigroup".append (module."Data.Semigroup".semigroupFn (module."Data.Semigroup".semigroupFn module."Data.Ordering".semigroupOrdering)) p q;
          __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Comparison.purs at 17:1 - 18:61";
        in
          __pattern0 __patternFail;
    };
  newtypeComparison = {"Coercible0" = __unused: module."Prim".undefined;};
  monoidComparison = 
    { mempty = v: v1: module."Data.Ordering".EQ;
      "Semigroup0" = __unused: semigroupComparison;
    };
  defaultComparison = dictOrd: module."Data.Ord".compare dictOrd;
  contravariantComparison = 
    { cmap = f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g = v;
            in
              module."Data.Function".on g f1;
          __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Comparison.purs at 14:1 - 15:48";
        in
          __pattern0 __patternFail;
    };
in
  {inherit Comparison defaultComparison newtypeComparison contravariantComparison semigroupComparison monoidComparison;}
;

Data-Const_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.BooleanAlgebra" = Data-BooleanAlgebra_default-nix;
      "Data.Bounded" = Data-Bounded_default-nix;
      "Data.CommutativeRing" = Data-CommutativeRing_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.EuclideanRing" = Data-EuclideanRing_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Functor.Invariant" = Data-Functor-Invariant_default-nix;
      "Data.HeytingAlgebra" = Data-HeytingAlgebra_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Ring" = Data-Ring_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Semiring" = Data-Semiring_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Const = x: x;
  showConst = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Const " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow x) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/const/2a3730d452fa1d579642f2d7322a92ffc26f8ca1/src/Data/Const.purs at 32:1 - 33:46";
        in
          __pattern0 __patternFail;
    };
  semiringConst = dictSemiring: dictSemiring;
  semigroupoidConst = 
    { compose = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v1;
            in
              x;
          __patternFail = builtins.throw "Pattern match failure in .spago/const/2a3730d452fa1d579642f2d7322a92ffc26f8ca1/src/Data/Const.purs at 35:1 - 36:32";
        in
          __pattern0 __patternFail;
    };
  semigroupConst = dictSemigroup: dictSemigroup;
  ringConst = dictRing: dictRing;
  ordConst = dictOrd: dictOrd;
  newtypeConst = {"Coercible0" = __unused: module."Prim".undefined;};
  monoidConst = dictMonoid: dictMonoid;
  heytingAlgebraConst = dictHeytingAlgebra: dictHeytingAlgebra;
  functorConst = 
    { map = f: m: 
        let
          __pattern0 = __fail: 
            let
              v = m;
            in
              v;
          __patternFail = builtins.throw "Pattern match failure in .spago/const/2a3730d452fa1d579642f2d7322a92ffc26f8ca1/src/Data/Const.purs at 54:1 - 54:50";
        in
          __pattern0 __patternFail;
    };
  invariantConst = {imap = module."Data.Functor.Invariant".imapF functorConst;};
  euclideanRingConst = dictEuclideanRing: dictEuclideanRing;
  eqConst = dictEq: dictEq;
  eq1Const = dictEq: {eq1 = dictEq1: module."Data.Eq".eq (eqConst dictEq);};
  ord1Const = dictOrd: 
    { compare1 = dictOrd1: module."Data.Ord".compare (ordConst dictOrd);
      "Eq10" = __unused: eq1Const (dictOrd."Eq0" module."Prim".undefined);
    };
  commutativeRingConst = dictCommutativeRing: dictCommutativeRing;
  boundedConst = dictBounded: dictBounded;
  booleanAlgebraConst = dictBooleanAlgebra: dictBooleanAlgebra;
  applyConst = dictSemigroup: 
    { apply = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              y = v1;
            in
              module."Data.Semigroup".append dictSemigroup x y;
          __patternFail = builtins.throw "Pattern match failure in .spago/const/2a3730d452fa1d579642f2d7322a92ffc26f8ca1/src/Data/Const.purs at 59:1 - 60:45";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: functorConst;
    };
  applicativeConst = dictMonoid: 
    { pure = v: module."Data.Monoid".mempty dictMonoid;
      "Apply0" = __unused: applyConst (dictMonoid."Semigroup0" module."Prim".undefined);
    };
in
  {inherit Const newtypeConst eqConst eq1Const ordConst ord1Const boundedConst showConst semigroupoidConst semigroupConst monoidConst semiringConst ringConst euclideanRingConst commutativeRingConst heytingAlgebraConst booleanAlgebraConst functorConst invariantConst applyConst applicativeConst;}
;

Data-Decidable_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Data.Comparison" = Data-Comparison_default-nix;
      "Data.Decide" = Data-Decide_default-nix;
      "Data.Divisible" = Data-Divisible_default-nix;
      "Data.Equivalence" = Data-Equivalence_default-nix;
      "Data.Op" = Data-Op_default-nix;
      "Data.Predicate" = Data-Predicate_default-nix;
      "Data.Void" = Data-Void_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Decidable-Dict = x: x;
  lose = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.lose;
      __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Decidable.purs at 14:3 - 14:39";
    in
      __pattern0 __patternFail;
  lost = dictDecidable: lose dictDecidable (module."Control.Category".identity module."Control.Category".categoryFn);
  decidablePredicate = 
    { lose = f: a: module."Data.Void".absurd (f a);
      "Decide0" = __unused: module."Data.Decide".choosePredicate;
      "Divisible1" = __unused: module."Data.Divisible".divisiblePredicate;
    };
  decidableOp = dictMonoid: 
    { lose = f: a: module."Data.Void".absurd (f a);
      "Decide0" = __unused: module."Data.Decide".chooseOp (dictMonoid."Semigroup0" module."Prim".undefined);
      "Divisible1" = __unused: module."Data.Divisible".divisibleOp dictMonoid;
    };
  decidableEquivalence = 
    { lose = f: a: module."Data.Void".absurd (f a);
      "Decide0" = __unused: module."Data.Decide".chooseEquivalence;
      "Divisible1" = __unused: module."Data.Divisible".divisibleEquivalence;
    };
  decidableComparison = 
    { lose = f: a: v: module."Data.Void".absurd (f a);
      "Decide0" = __unused: module."Data.Decide".chooseComparison;
      "Divisible1" = __unused: module."Data.Divisible".divisibleComparison;
    };
in
  {inherit lose lost decidableComparison decidableEquivalence decidablePredicate decidableOp;}
;

Data-Decide_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Comparison" = Data-Comparison_default-nix;
      "Data.Divide" = Data-Divide_default-nix;
      "Data.Either" = Data-Either_default-nix;
      "Data.Equivalence" = Data-Equivalence_default-nix;
      "Data.Op" = Data-Op_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Data.Predicate" = Data-Predicate_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Decide-Dict = x: x;
  choosePredicate = 
    { choose = f: v: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g = v;
              h = v1;
            in
              module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Either".either g h) f1;
          __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Decide.purs at 34:1 - 35:70";
        in
          __pattern0 __patternFail;
      "Divide0" = __unused: module."Data.Divide".dividePredicate;
    };
  chooseOp = dictSemigroup: 
    { choose = f: v: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g = v;
              h = v1;
            in
              module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Either".either g h) f1;
          __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Decide.purs at 37:1 - 38:49";
        in
          __pattern0 __patternFail;
      "Divide0" = __unused: module."Data.Divide".divideOp dictSemigroup;
    };
  chooseEquivalence = 
    { choose = f: v: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g = v;
              h = v1;
            in
              a: b: 
              let
                v2 = f1 a;
              in
                
                let
                  __pattern0 = __fail: 
                    if v2.__tag == "Left"
                      then 
                        let
                          c = v2.__field0;
                        in
                          
                          let
                            v3 = f1 b;
                          in
                            
                            let
                              __pattern0 = __fail: 
                                if v3.__tag == "Left"
                                  then 
                                    let
                                      d = v3.__field0;
                                    in
                                      g c d
                                  else __fail;
                              __pattern1 = __fail: if v3.__tag == "Right" then false else __fail;
                              __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Decide.purs at 27:15 - 29:23";
                            in
                              __pattern0 (__pattern1 __patternFail)
                      else __fail;
                  __pattern1 = __fail: 
                    if v2.__tag == "Right"
                      then 
                        let
                          c = v2.__field0;
                        in
                          
                          let
                            v3 = f1 b;
                          in
                            
                            let
                              __pattern0 = __fail: if v3.__tag == "Left" then false else __fail;
                              __pattern1 = __fail: 
                                if v3.__tag == "Right"
                                  then 
                                    let
                                      d = v3.__field0;
                                    in
                                      h c d
                                  else __fail;
                              __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Decide.purs at 30:16 - 32:23";
                            in
                              __pattern0 (__pattern1 __patternFail)
                      else __fail;
                  __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Decide.purs at 26:66 - 32:23";
                in
                  __pattern0 (__pattern1 __patternFail);
          __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Decide.purs at 25:1 - 32:23";
        in
          __pattern0 __patternFail;
      "Divide0" = __unused: module."Data.Divide".divideEquivalence;
    };
  chooseComparison = 
    { choose = f: v: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g = v;
              h = v1;
            in
              a: b: 
              let
                v2 = f1 a;
              in
                
                let
                  __pattern0 = __fail: 
                    if v2.__tag == "Left"
                      then 
                        let
                          c = v2.__field0;
                        in
                          
                          let
                            v3 = f1 b;
                          in
                            
                            let
                              __pattern0 = __fail: 
                                if v3.__tag == "Left"
                                  then 
                                    let
                                      d = v3.__field0;
                                    in
                                      g c d
                                  else __fail;
                              __pattern1 = __fail: if v3.__tag == "Right" then module."Data.Ordering".LT else __fail;
                              __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Decide.purs at 18:15 - 20:20";
                            in
                              __pattern0 (__pattern1 __patternFail)
                      else __fail;
                  __pattern1 = __fail: 
                    if v2.__tag == "Right"
                      then 
                        let
                          c = v2.__field0;
                        in
                          
                          let
                            v3 = f1 b;
                          in
                            
                            let
                              __pattern0 = __fail: if v3.__tag == "Left" then module."Data.Ordering".GT else __fail;
                              __pattern1 = __fail: 
                                if v3.__tag == "Right"
                                  then 
                                    let
                                      d = v3.__field0;
                                    in
                                      h c d
                                  else __fail;
                              __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Decide.purs at 21:16 - 23:23";
                            in
                              __pattern0 (__pattern1 __patternFail)
                      else __fail;
                  __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Decide.purs at 17:63 - 23:23";
                in
                  __pattern0 (__pattern1 __patternFail);
          __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Decide.purs at 16:1 - 23:23";
        in
          __pattern0 __patternFail;
      "Divide0" = __unused: module."Data.Divide".divideComparison;
    };
  choose = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.choose;
      __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Decide.purs at 14:3 - 14:65";
    in
      __pattern0 __patternFail;
  chosen = dictDecide: choose dictDecide (module."Control.Category".identity module."Control.Category".categoryFn);
in
  {inherit choose chosen chooseComparison chooseEquivalence choosePredicate chooseOp;}
;

Data-Distributive_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Identity" = Data-Identity_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prelude" = Prelude_default-nix;
      "Type.Equality" = Type-Equality_default-nix;
    };
  Distributive-Dict = x: x;
  distributiveIdentity = 
    { distribute = dictFunctor: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Identity".Identity (module."Data.Functor".map dictFunctor (module."Data.Newtype".unwrap module."Prim".undefined));
      collect = dictFunctor: f: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Identity".Identity (module."Data.Functor".map dictFunctor (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Newtype".unwrap module."Prim".undefined) f));
      "Functor0" = __unused: module."Data.Identity".functorIdentity;
    };
  distribute = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.distribute;
      __patternFail = builtins.throw "Pattern match failure in .spago/distributive/f6dcb7c7870a74c429376ce46a5ac25392b0f25c/src/Data/Distributive.purs at 25:3 - 25:60";
    in
      __pattern0 __patternFail;
  distributiveFunction = 
    { distribute = dictFunctor: a: e: module."Data.Functor".map dictFunctor (v: module."Data.Function".apply v e) a;
      collect = dictFunctor: f: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (distribute distributiveFunction dictFunctor) (module."Data.Functor".map dictFunctor f);
      "Functor0" = __unused: module."Data.Functor".functorFn;
    };
  cotraverse = dictDistributive: dictFunctor: f: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Functor".map (dictDistributive."Functor0" module."Prim".undefined) f) (distribute dictDistributive dictFunctor);
  collectDefault = dictDistributive: dictFunctor: f: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (distribute dictDistributive dictFunctor) (module."Data.Functor".map dictFunctor f);
  distributiveTuple = dictTypeEquals: 
    { collect = dictFunctor: collectDefault (distributiveTuple dictTypeEquals) dictFunctor;
      distribute = dictFunctor: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Tuple".Tuple (module."Type.Equality".from dictTypeEquals module."Data.Unit".unit)) (module."Data.Functor".map dictFunctor module."Data.Tuple".snd);
      "Functor0" = __unused: module."Data.Tuple".functorTuple;
    };
  collect = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.collect;
      __patternFail = builtins.throw "Pattern match failure in .spago/distributive/f6dcb7c7870a74c429376ce46a5ac25392b0f25c/src/Data/Distributive.purs at 26:3 - 26:69";
    in
      __pattern0 __patternFail;
  distributeDefault = dictDistributive: dictFunctor: collect dictDistributive dictFunctor (module."Control.Category".identity module."Control.Category".categoryFn);
in
  {inherit collect distribute distributeDefault collectDefault cotraverse distributiveIdentity distributiveFunction distributiveTuple;}
;

Data-Divide_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Data.Comparison" = Data-Comparison_default-nix;
      "Data.Equivalence" = Data-Equivalence_default-nix;
      "Data.Functor.Contravariant" = Data-Functor-Contravariant_default-nix;
      "Data.HeytingAlgebra" = Data-HeytingAlgebra_default-nix;
      "Data.Op" = Data-Op_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Data.Predicate" = Data-Predicate_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Divide-Dict = x: x;
  dividePredicate = 
    { divide = f: v: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g = v;
              h = v1;
            in
              a: 
              let
                v2 = f1 a;
              in
                
                let
                  __pattern0 = __fail: 
                    if v2.__tag == "Tuple"
                      then 
                        let
                          b = v2.__field0;
                          c = v2.__field1;
                        in
                          module."Data.HeytingAlgebra".conj module."Data.HeytingAlgebra".heytingAlgebraBoolean (g b) (h c)
                      else __fail;
                  __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Divide.purs at 37:58 - 38:28";
                in
                  __pattern0 __patternFail;
          __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Divide.purs at 36:1 - 38:28";
        in
          __pattern0 __patternFail;
      "Contravariant0" = __unused: module."Data.Predicate".contravariantPredicate;
    };
  divideOp = dictSemigroup: 
    { divide = f: v: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g = v;
              h = v1;
            in
              a: 
              let
                v2 = f1 a;
              in
                
                let
                  __pattern0 = __fail: 
                    if v2.__tag == "Tuple"
                      then 
                        let
                          b = v2.__field0;
                          c = v2.__field1;
                        in
                          module."Data.Semigroup".append dictSemigroup (g b) (h c)
                      else __fail;
                  __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Divide.purs at 41:37 - 42:28";
                in
                  __pattern0 __patternFail;
          __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Divide.purs at 40:1 - 42:28";
        in
          __pattern0 __patternFail;
      "Contravariant0" = __unused: module."Data.Op".contravariantOp;
    };
  divideEquivalence = 
    { divide = f: v: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g = v;
              h = v1;
            in
              a: b: 
              let
                v2 = f1 a;
              in
                
                let
                  __pattern0 = __fail: 
                    if v2.__tag == "Tuple"
                      then 
                        let
                          a' = v2.__field0;
                          a'' = v2.__field1;
                        in
                          
                          let
                            v3 = f1 b;
                          in
                            
                            let
                              __pattern0 = __fail: 
                                if v3.__tag == "Tuple"
                                  then 
                                    let
                                      b' = v3.__field0;
                                      b'' = v3.__field1;
                                    in
                                      module."Data.HeytingAlgebra".conj module."Data.HeytingAlgebra".heytingAlgebraBoolean (g a' b') (h a'' b'')
                                  else __fail;
                              __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Divide.purs at 33:21 - 34:43";
                            in
                              __pattern0 __patternFail
                      else __fail;
                  __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Divide.purs at 32:66 - 34:43";
                in
                  __pattern0 __patternFail;
          __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Divide.purs at 31:1 - 34:43";
        in
          __pattern0 __patternFail;
      "Contravariant0" = __unused: module."Data.Equivalence".contravariantEquivalence;
    };
  divideComparison = 
    { divide = f: v: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g = v;
              h = v1;
            in
              a: b: 
              let
                v2 = f1 a;
              in
                
                let
                  __pattern0 = __fail: 
                    if v2.__tag == "Tuple"
                      then 
                        let
                          a' = v2.__field0;
                          a'' = v2.__field1;
                        in
                          
                          let
                            v3 = f1 b;
                          in
                            
                            let
                              __pattern0 = __fail: 
                                if v3.__tag == "Tuple"
                                  then 
                                    let
                                      b' = v3.__field0;
                                      b'' = v3.__field1;
                                    in
                                      module."Data.Semigroup".append module."Data.Ordering".semigroupOrdering (g a' b') (h a'' b'')
                                  else __fail;
                              __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Divide.purs at 28:21 - 29:43";
                            in
                              __pattern0 __patternFail
                      else __fail;
                  __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Divide.purs at 27:63 - 29:43";
                in
                  __pattern0 __patternFail;
          __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Divide.purs at 26:1 - 29:43";
        in
          __pattern0 __patternFail;
      "Contravariant0" = __unused: module."Data.Comparison".contravariantComparison;
    };
  divide = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.divide;
      __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Divide.purs at 24:3 - 24:64";
    in
      __pattern0 __patternFail;
  divided = dictDivide: divide dictDivide (module."Control.Category".identity module."Control.Category".categoryFn);
in
  {inherit divide divided divideComparison divideEquivalence dividePredicate divideOp;}
;

Data-Divisible_default-nix = 
let
  module = 
    { "Data.Comparison" = Data-Comparison_default-nix;
      "Data.Divide" = Data-Divide_default-nix;
      "Data.Equivalence" = Data-Equivalence_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Op" = Data-Op_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Data.Predicate" = Data-Predicate_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Divisible-Dict = x: x;
  divisiblePredicate = 
    { conquer = module."Data.Function".const true;
      "Divide0" = __unused: module."Data.Divide".dividePredicate;
    };
  divisibleOp = dictMonoid: 
    { conquer = module."Data.Function".apply module."Data.Op".Op (module."Data.Function".const (module."Data.Monoid".mempty dictMonoid));
      "Divide0" = __unused: module."Data.Divide".divideOp (dictMonoid."Semigroup0" module."Prim".undefined);
    };
  divisibleEquivalence = 
    { conquer = module."Data.Function".apply module."Data.Equivalence".Equivalence (v: v1: true);
      "Divide0" = __unused: module."Data.Divide".divideEquivalence;
    };
  divisibleComparison = 
    { conquer = module."Data.Function".apply module."Data.Comparison".Comparison (v: v1: module."Data.Ordering".EQ);
      "Divide0" = __unused: module."Data.Divide".divideComparison;
    };
  conquer = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.conquer;
      __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Divisible.purs at 13:3 - 13:27";
    in
      __pattern0 __patternFail;
in
  {inherit conquer divisibleComparison divisibleEquivalence divisiblePredicate divisibleOp;}
;

Data-DivisionRing_default-nix = 
let
  module = 
    { "Data.EuclideanRing" = Data-EuclideanRing_default-nix;
      "Data.Ring" = Data-Ring_default-nix;
      "Data.Semiring" = Data-Semiring_default-nix;
    };
  DivisionRing-Dict = x: x;
  recip = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.recip;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/DivisionRing.purs at 30:3 - 30:18";
    in
      __pattern0 __patternFail;
  rightDiv = dictDivisionRing: a: b: module."Data.Semiring".mul ((dictDivisionRing."Ring0" module."Prim".undefined)."Semiring0" module."Prim".undefined) a (recip dictDivisionRing b);
  leftDiv = dictDivisionRing: a: b: module."Data.Semiring".mul ((dictDivisionRing."Ring0" module."Prim".undefined)."Semiring0" module."Prim".undefined) (recip dictDivisionRing b) a;
  divisionringNumber = 
    { recip = x: module."Data.EuclideanRing".div module."Data.EuclideanRing".euclideanRingNumber 1.0 x;
      "Ring0" = __unused: module."Data.Ring".ringNumber;
    };
in
  
  { inherit recip leftDiv rightDiv divisionringNumber;
    inherit (module."Data.Ring") negate sub;
    inherit (module."Data.Semiring") add mul one zero;
  }
;

Data-Either-Inject_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Either" = Data-Either_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Maybe" = Data-Maybe_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Inject-Dict = x: x;
  prj = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.prj;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Inject.purs at 10:3 - 10:22";
    in
      __pattern0 __patternFail;
  injectReflexive = 
    { inj = module."Control.Category".identity module."Control.Category".categoryFn;
      prj = module."Data.Maybe".Just;
    };
  injectLeft = 
    { inj = module."Data.Either".Left;
      prj = module."Data.Either".either module."Data.Maybe".Just (module."Data.Function".const module."Data.Maybe".Nothing);
    };
  inj = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.inj;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Inject.purs at 9:3 - 9:16";
    in
      __pattern0 __patternFail;
  injectRight = dictInject: 
    { inj = module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Either".Right (inj dictInject);
      prj = module."Data.Either".either (module."Data.Function".const module."Data.Maybe".Nothing) (prj dictInject);
    };
in
  {inherit inj prj injectReflexive injectLeft injectRight;}
;

Data-Either-Nested_default-nix = 
let
  module = 
    { "Data.Either" = Data-Either_default-nix;
      "Data.Void" = Data-Void_default-nix;
    };
  in9 = v: module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Left v))))))));
  in8 = v: module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Left v)))))));
  in7 = v: module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Left v))))));
  in6 = v: module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Left v)))));
  in5 = v: module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Left v))));
  in4 = v: module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Left v)));
  in3 = v: module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Left v));
  in2 = v: module."Data.Either".Right (module."Data.Either".Left v);
  in10 = v: module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Right (module."Data.Either".Left v)))))))));
  in1 = module."Data.Either".Left;
  either9 = a: b: c: d: e: f: g: h: i: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              a r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              
              let
                __pattern0 = __fail: 
                  if _1.__tag == "Left"
                    then 
                      let
                        r = _1.__field0;
                      in
                        b r
                    else __fail;
                __pattern1 = __fail: 
                  if _1.__tag == "Right"
                    then 
                      let
                        _2 = _1.__field0;
                      in
                        
                        let
                          __pattern0 = __fail: 
                            if _2.__tag == "Left"
                              then 
                                let
                                  r = _2.__field0;
                                in
                                  c r
                              else __fail;
                          __pattern1 = __fail: 
                            if _2.__tag == "Right"
                              then 
                                let
                                  _3 = _2.__field0;
                                in
                                  
                                  let
                                    __pattern0 = __fail: 
                                      if _3.__tag == "Left"
                                        then 
                                          let
                                            r = _3.__field0;
                                          in
                                            d r
                                        else __fail;
                                    __pattern1 = __fail: 
                                      if _3.__tag == "Right"
                                        then 
                                          let
                                            _4 = _3.__field0;
                                          in
                                            
                                            let
                                              __pattern0 = __fail: 
                                                if _4.__tag == "Left"
                                                  then 
                                                    let
                                                      r = _4.__field0;
                                                    in
                                                      e r
                                                  else __fail;
                                              __pattern1 = __fail: 
                                                if _4.__tag == "Right"
                                                  then 
                                                    let
                                                      _5 = _4.__field0;
                                                    in
                                                      
                                                      let
                                                        __pattern0 = __fail: 
                                                          if _5.__tag == "Left"
                                                            then 
                                                              let
                                                                r = _5.__field0;
                                                              in
                                                                f r
                                                            else __fail;
                                                        __pattern1 = __fail: 
                                                          if _5.__tag == "Right"
                                                            then 
                                                              let
                                                                _6 = _5.__field0;
                                                              in
                                                                
                                                                let
                                                                  __pattern0 = __fail: 
                                                                    if _6.__tag == "Left"
                                                                      then 
                                                                        let
                                                                          r = _6.__field0;
                                                                        in
                                                                          g r
                                                                      else __fail;
                                                                  __pattern1 = __fail: 
                                                                    if _6.__tag == "Right"
                                                                      then 
                                                                        let
                                                                          _7 = _6.__field0;
                                                                        in
                                                                          
                                                                          let
                                                                            __pattern0 = __fail: 
                                                                              if _7.__tag == "Left"
                                                                                then 
                                                                                  let
                                                                                    r = _7.__field0;
                                                                                  in
                                                                                    h r
                                                                                else __fail;
                                                                            __pattern1 = __fail: 
                                                                              if _7.__tag == "Right"
                                                                                then 
                                                                                  let
                                                                                    _8 = _7.__field0;
                                                                                  in
                                                                                    
                                                                                    let
                                                                                      __pattern0 = __fail: 
                                                                                        if _8.__tag == "Left"
                                                                                          then 
                                                                                            let
                                                                                              r = _8.__field0;
                                                                                            in
                                                                                              i r
                                                                                          else __fail;
                                                                                      __pattern1 = __fail: 
                                                                                        if _8.__tag == "Right"
                                                                                          then 
                                                                                            let
                                                                                              _9 = _8.__field0;
                                                                                            in
                                                                                              module."Data.Void".absurd _9
                                                                                          else __fail;
                                                                                      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 253:29 - 255:40";
                                                                                    in
                                                                                      __pattern0 (__pattern1 __patternFail)
                                                                                else __fail;
                                                                            __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 251:27 - 255:40";
                                                                          in
                                                                            __pattern0 (__pattern1 __patternFail)
                                                                      else __fail;
                                                                  __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 249:25 - 255:40";
                                                                in
                                                                  __pattern0 (__pattern1 __patternFail)
                                                            else __fail;
                                                        __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 247:23 - 255:40";
                                                      in
                                                        __pattern0 (__pattern1 __patternFail)
                                                  else __fail;
                                              __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 245:21 - 255:40";
                                            in
                                              __pattern0 (__pattern1 __patternFail)
                                        else __fail;
                                    __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 243:19 - 255:40";
                                  in
                                    __pattern0 (__pattern1 __patternFail)
                              else __fail;
                          __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 241:17 - 255:40";
                        in
                          __pattern0 (__pattern1 __patternFail)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 239:15 - 255:40";
              in
                __pattern0 (__pattern1 __patternFail)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 237:31 - 255:40";
    in
      __pattern0 (__pattern1 __patternFail);
  either8 = a: b: c: d: e: f: g: h: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              a r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              
              let
                __pattern0 = __fail: 
                  if _1.__tag == "Left"
                    then 
                      let
                        r = _1.__field0;
                      in
                        b r
                    else __fail;
                __pattern1 = __fail: 
                  if _1.__tag == "Right"
                    then 
                      let
                        _2 = _1.__field0;
                      in
                        
                        let
                          __pattern0 = __fail: 
                            if _2.__tag == "Left"
                              then 
                                let
                                  r = _2.__field0;
                                in
                                  c r
                              else __fail;
                          __pattern1 = __fail: 
                            if _2.__tag == "Right"
                              then 
                                let
                                  _3 = _2.__field0;
                                in
                                  
                                  let
                                    __pattern0 = __fail: 
                                      if _3.__tag == "Left"
                                        then 
                                          let
                                            r = _3.__field0;
                                          in
                                            d r
                                        else __fail;
                                    __pattern1 = __fail: 
                                      if _3.__tag == "Right"
                                        then 
                                          let
                                            _4 = _3.__field0;
                                          in
                                            
                                            let
                                              __pattern0 = __fail: 
                                                if _4.__tag == "Left"
                                                  then 
                                                    let
                                                      r = _4.__field0;
                                                    in
                                                      e r
                                                  else __fail;
                                              __pattern1 = __fail: 
                                                if _4.__tag == "Right"
                                                  then 
                                                    let
                                                      _5 = _4.__field0;
                                                    in
                                                      
                                                      let
                                                        __pattern0 = __fail: 
                                                          if _5.__tag == "Left"
                                                            then 
                                                              let
                                                                r = _5.__field0;
                                                              in
                                                                f r
                                                            else __fail;
                                                        __pattern1 = __fail: 
                                                          if _5.__tag == "Right"
                                                            then 
                                                              let
                                                                _6 = _5.__field0;
                                                              in
                                                                
                                                                let
                                                                  __pattern0 = __fail: 
                                                                    if _6.__tag == "Left"
                                                                      then 
                                                                        let
                                                                          r = _6.__field0;
                                                                        in
                                                                          g r
                                                                      else __fail;
                                                                  __pattern1 = __fail: 
                                                                    if _6.__tag == "Right"
                                                                      then 
                                                                        let
                                                                          _7 = _6.__field0;
                                                                        in
                                                                          
                                                                          let
                                                                            __pattern0 = __fail: 
                                                                              if _7.__tag == "Left"
                                                                                then 
                                                                                  let
                                                                                    r = _7.__field0;
                                                                                  in
                                                                                    h r
                                                                                else __fail;
                                                                            __pattern1 = __fail: 
                                                                              if _7.__tag == "Right"
                                                                                then 
                                                                                  let
                                                                                    _8 = _7.__field0;
                                                                                  in
                                                                                    module."Data.Void".absurd _8
                                                                                else __fail;
                                                                            __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 232:27 - 234:38";
                                                                          in
                                                                            __pattern0 (__pattern1 __patternFail)
                                                                      else __fail;
                                                                  __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 230:25 - 234:38";
                                                                in
                                                                  __pattern0 (__pattern1 __patternFail)
                                                            else __fail;
                                                        __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 228:23 - 234:38";
                                                      in
                                                        __pattern0 (__pattern1 __patternFail)
                                                  else __fail;
                                              __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 226:21 - 234:38";
                                            in
                                              __pattern0 (__pattern1 __patternFail)
                                        else __fail;
                                    __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 224:19 - 234:38";
                                  in
                                    __pattern0 (__pattern1 __patternFail)
                              else __fail;
                          __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 222:17 - 234:38";
                        in
                          __pattern0 (__pattern1 __patternFail)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 220:15 - 234:38";
              in
                __pattern0 (__pattern1 __patternFail)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 218:29 - 234:38";
    in
      __pattern0 (__pattern1 __patternFail);
  either7 = a: b: c: d: e: f: g: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              a r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              
              let
                __pattern0 = __fail: 
                  if _1.__tag == "Left"
                    then 
                      let
                        r = _1.__field0;
                      in
                        b r
                    else __fail;
                __pattern1 = __fail: 
                  if _1.__tag == "Right"
                    then 
                      let
                        _2 = _1.__field0;
                      in
                        
                        let
                          __pattern0 = __fail: 
                            if _2.__tag == "Left"
                              then 
                                let
                                  r = _2.__field0;
                                in
                                  c r
                              else __fail;
                          __pattern1 = __fail: 
                            if _2.__tag == "Right"
                              then 
                                let
                                  _3 = _2.__field0;
                                in
                                  
                                  let
                                    __pattern0 = __fail: 
                                      if _3.__tag == "Left"
                                        then 
                                          let
                                            r = _3.__field0;
                                          in
                                            d r
                                        else __fail;
                                    __pattern1 = __fail: 
                                      if _3.__tag == "Right"
                                        then 
                                          let
                                            _4 = _3.__field0;
                                          in
                                            
                                            let
                                              __pattern0 = __fail: 
                                                if _4.__tag == "Left"
                                                  then 
                                                    let
                                                      r = _4.__field0;
                                                    in
                                                      e r
                                                  else __fail;
                                              __pattern1 = __fail: 
                                                if _4.__tag == "Right"
                                                  then 
                                                    let
                                                      _5 = _4.__field0;
                                                    in
                                                      
                                                      let
                                                        __pattern0 = __fail: 
                                                          if _5.__tag == "Left"
                                                            then 
                                                              let
                                                                r = _5.__field0;
                                                              in
                                                                f r
                                                            else __fail;
                                                        __pattern1 = __fail: 
                                                          if _5.__tag == "Right"
                                                            then 
                                                              let
                                                                _6 = _5.__field0;
                                                              in
                                                                
                                                                let
                                                                  __pattern0 = __fail: 
                                                                    if _6.__tag == "Left"
                                                                      then 
                                                                        let
                                                                          r = _6.__field0;
                                                                        in
                                                                          g r
                                                                      else __fail;
                                                                  __pattern1 = __fail: 
                                                                    if _6.__tag == "Right"
                                                                      then 
                                                                        let
                                                                          _7 = _6.__field0;
                                                                        in
                                                                          module."Data.Void".absurd _7
                                                                      else __fail;
                                                                  __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 213:25 - 215:36";
                                                                in
                                                                  __pattern0 (__pattern1 __patternFail)
                                                            else __fail;
                                                        __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 211:23 - 215:36";
                                                      in
                                                        __pattern0 (__pattern1 __patternFail)
                                                  else __fail;
                                              __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 209:21 - 215:36";
                                            in
                                              __pattern0 (__pattern1 __patternFail)
                                        else __fail;
                                    __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 207:19 - 215:36";
                                  in
                                    __pattern0 (__pattern1 __patternFail)
                              else __fail;
                          __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 205:17 - 215:36";
                        in
                          __pattern0 (__pattern1 __patternFail)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 203:15 - 215:36";
              in
                __pattern0 (__pattern1 __patternFail)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 201:27 - 215:36";
    in
      __pattern0 (__pattern1 __patternFail);
  either6 = a: b: c: d: e: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              a r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              
              let
                __pattern0 = __fail: 
                  if _1.__tag == "Left"
                    then 
                      let
                        r = _1.__field0;
                      in
                        b r
                    else __fail;
                __pattern1 = __fail: 
                  if _1.__tag == "Right"
                    then 
                      let
                        _2 = _1.__field0;
                      in
                        
                        let
                          __pattern0 = __fail: 
                            if _2.__tag == "Left"
                              then 
                                let
                                  r = _2.__field0;
                                in
                                  c r
                              else __fail;
                          __pattern1 = __fail: 
                            if _2.__tag == "Right"
                              then 
                                let
                                  _3 = _2.__field0;
                                in
                                  
                                  let
                                    __pattern0 = __fail: 
                                      if _3.__tag == "Left"
                                        then 
                                          let
                                            r = _3.__field0;
                                          in
                                            d r
                                        else __fail;
                                    __pattern1 = __fail: 
                                      if _3.__tag == "Right"
                                        then 
                                          let
                                            _4 = _3.__field0;
                                          in
                                            
                                            let
                                              __pattern0 = __fail: 
                                                if _4.__tag == "Left"
                                                  then 
                                                    let
                                                      r = _4.__field0;
                                                    in
                                                      e r
                                                  else __fail;
                                              __pattern1 = __fail: 
                                                if _4.__tag == "Right"
                                                  then 
                                                    let
                                                      _5 = _4.__field0;
                                                    in
                                                      
                                                      let
                                                        __pattern0 = __fail: 
                                                          if _5.__tag == "Left"
                                                            then 
                                                              let
                                                                r = _5.__field0;
                                                              in
                                                                f r
                                                            else __fail;
                                                        __pattern1 = __fail: 
                                                          if _5.__tag == "Right"
                                                            then 
                                                              let
                                                                _6 = _5.__field0;
                                                              in
                                                                module."Data.Void".absurd _6
                                                            else __fail;
                                                        __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 196:23 - 198:34";
                                                      in
                                                        __pattern0 (__pattern1 __patternFail)
                                                  else __fail;
                                              __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 194:21 - 198:34";
                                            in
                                              __pattern0 (__pattern1 __patternFail)
                                        else __fail;
                                    __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 192:19 - 198:34";
                                  in
                                    __pattern0 (__pattern1 __patternFail)
                              else __fail;
                          __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 190:17 - 198:34";
                        in
                          __pattern0 (__pattern1 __patternFail)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 188:15 - 198:34";
              in
                __pattern0 (__pattern1 __patternFail)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 186:25 - 198:34";
    in
      __pattern0 (__pattern1 __patternFail);
  either5 = a: b: c: d: e: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              a r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              
              let
                __pattern0 = __fail: 
                  if _1.__tag == "Left"
                    then 
                      let
                        r = _1.__field0;
                      in
                        b r
                    else __fail;
                __pattern1 = __fail: 
                  if _1.__tag == "Right"
                    then 
                      let
                        _2 = _1.__field0;
                      in
                        
                        let
                          __pattern0 = __fail: 
                            if _2.__tag == "Left"
                              then 
                                let
                                  r = _2.__field0;
                                in
                                  c r
                              else __fail;
                          __pattern1 = __fail: 
                            if _2.__tag == "Right"
                              then 
                                let
                                  _3 = _2.__field0;
                                in
                                  
                                  let
                                    __pattern0 = __fail: 
                                      if _3.__tag == "Left"
                                        then 
                                          let
                                            r = _3.__field0;
                                          in
                                            d r
                                        else __fail;
                                    __pattern1 = __fail: 
                                      if _3.__tag == "Right"
                                        then 
                                          let
                                            _4 = _3.__field0;
                                          in
                                            
                                            let
                                              __pattern0 = __fail: 
                                                if _4.__tag == "Left"
                                                  then 
                                                    let
                                                      r = _4.__field0;
                                                    in
                                                      e r
                                                  else __fail;
                                              __pattern1 = __fail: 
                                                if _4.__tag == "Right"
                                                  then 
                                                    let
                                                      _5 = _4.__field0;
                                                    in
                                                      module."Data.Void".absurd _5
                                                  else __fail;
                                              __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 181:21 - 183:32";
                                            in
                                              __pattern0 (__pattern1 __patternFail)
                                        else __fail;
                                    __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 179:19 - 183:32";
                                  in
                                    __pattern0 (__pattern1 __patternFail)
                              else __fail;
                          __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 177:17 - 183:32";
                        in
                          __pattern0 (__pattern1 __patternFail)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 175:15 - 183:32";
              in
                __pattern0 (__pattern1 __patternFail)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 173:23 - 183:32";
    in
      __pattern0 (__pattern1 __patternFail);
  either4 = a: b: c: d: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              a r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              
              let
                __pattern0 = __fail: 
                  if _1.__tag == "Left"
                    then 
                      let
                        r = _1.__field0;
                      in
                        b r
                    else __fail;
                __pattern1 = __fail: 
                  if _1.__tag == "Right"
                    then 
                      let
                        _2 = _1.__field0;
                      in
                        
                        let
                          __pattern0 = __fail: 
                            if _2.__tag == "Left"
                              then 
                                let
                                  r = _2.__field0;
                                in
                                  c r
                              else __fail;
                          __pattern1 = __fail: 
                            if _2.__tag == "Right"
                              then 
                                let
                                  _3 = _2.__field0;
                                in
                                  
                                  let
                                    __pattern0 = __fail: 
                                      if _3.__tag == "Left"
                                        then 
                                          let
                                            r = _3.__field0;
                                          in
                                            d r
                                        else __fail;
                                    __pattern1 = __fail: 
                                      if _3.__tag == "Right"
                                        then 
                                          let
                                            _4 = _3.__field0;
                                          in
                                            module."Data.Void".absurd _4
                                        else __fail;
                                    __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 168:19 - 170:30";
                                  in
                                    __pattern0 (__pattern1 __patternFail)
                              else __fail;
                          __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 166:17 - 170:30";
                        in
                          __pattern0 (__pattern1 __patternFail)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 164:15 - 170:30";
              in
                __pattern0 (__pattern1 __patternFail)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 162:21 - 170:30";
    in
      __pattern0 (__pattern1 __patternFail);
  either3 = a: b: c: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              a r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              
              let
                __pattern0 = __fail: 
                  if _1.__tag == "Left"
                    then 
                      let
                        r = _1.__field0;
                      in
                        b r
                    else __fail;
                __pattern1 = __fail: 
                  if _1.__tag == "Right"
                    then 
                      let
                        _2 = _1.__field0;
                      in
                        
                        let
                          __pattern0 = __fail: 
                            if _2.__tag == "Left"
                              then 
                                let
                                  r = _2.__field0;
                                in
                                  c r
                              else __fail;
                          __pattern1 = __fail: 
                            if _2.__tag == "Right"
                              then 
                                let
                                  _3 = _2.__field0;
                                in
                                  module."Data.Void".absurd _3
                              else __fail;
                          __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 157:17 - 159:28";
                        in
                          __pattern0 (__pattern1 __patternFail)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 155:15 - 159:28";
              in
                __pattern0 (__pattern1 __patternFail)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 153:19 - 159:28";
    in
      __pattern0 (__pattern1 __patternFail);
  either2 = a: b: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              a r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              
              let
                __pattern0 = __fail: 
                  if _1.__tag == "Left"
                    then 
                      let
                        r = _1.__field0;
                      in
                        b r
                    else __fail;
                __pattern1 = __fail: 
                  if _1.__tag == "Right"
                    then 
                      let
                        _2 = _1.__field0;
                      in
                        module."Data.Void".absurd _2
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 148:15 - 150:26";
              in
                __pattern0 (__pattern1 __patternFail)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 146:17 - 150:26";
    in
      __pattern0 (__pattern1 __patternFail);
  either10 = a: b: c: d: e: f: g: h: i: j: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              a r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              
              let
                __pattern0 = __fail: 
                  if _1.__tag == "Left"
                    then 
                      let
                        r = _1.__field0;
                      in
                        b r
                    else __fail;
                __pattern1 = __fail: 
                  if _1.__tag == "Right"
                    then 
                      let
                        _2 = _1.__field0;
                      in
                        
                        let
                          __pattern0 = __fail: 
                            if _2.__tag == "Left"
                              then 
                                let
                                  r = _2.__field0;
                                in
                                  c r
                              else __fail;
                          __pattern1 = __fail: 
                            if _2.__tag == "Right"
                              then 
                                let
                                  _3 = _2.__field0;
                                in
                                  
                                  let
                                    __pattern0 = __fail: 
                                      if _3.__tag == "Left"
                                        then 
                                          let
                                            r = _3.__field0;
                                          in
                                            d r
                                        else __fail;
                                    __pattern1 = __fail: 
                                      if _3.__tag == "Right"
                                        then 
                                          let
                                            _4 = _3.__field0;
                                          in
                                            
                                            let
                                              __pattern0 = __fail: 
                                                if _4.__tag == "Left"
                                                  then 
                                                    let
                                                      r = _4.__field0;
                                                    in
                                                      e r
                                                  else __fail;
                                              __pattern1 = __fail: 
                                                if _4.__tag == "Right"
                                                  then 
                                                    let
                                                      _5 = _4.__field0;
                                                    in
                                                      
                                                      let
                                                        __pattern0 = __fail: 
                                                          if _5.__tag == "Left"
                                                            then 
                                                              let
                                                                r = _5.__field0;
                                                              in
                                                                f r
                                                            else __fail;
                                                        __pattern1 = __fail: 
                                                          if _5.__tag == "Right"
                                                            then 
                                                              let
                                                                _6 = _5.__field0;
                                                              in
                                                                
                                                                let
                                                                  __pattern0 = __fail: 
                                                                    if _6.__tag == "Left"
                                                                      then 
                                                                        let
                                                                          r = _6.__field0;
                                                                        in
                                                                          g r
                                                                      else __fail;
                                                                  __pattern1 = __fail: 
                                                                    if _6.__tag == "Right"
                                                                      then 
                                                                        let
                                                                          _7 = _6.__field0;
                                                                        in
                                                                          
                                                                          let
                                                                            __pattern0 = __fail: 
                                                                              if _7.__tag == "Left"
                                                                                then 
                                                                                  let
                                                                                    r = _7.__field0;
                                                                                  in
                                                                                    h r
                                                                                else __fail;
                                                                            __pattern1 = __fail: 
                                                                              if _7.__tag == "Right"
                                                                                then 
                                                                                  let
                                                                                    _8 = _7.__field0;
                                                                                  in
                                                                                    
                                                                                    let
                                                                                      __pattern0 = __fail: 
                                                                                        if _8.__tag == "Left"
                                                                                          then 
                                                                                            let
                                                                                              r = _8.__field0;
                                                                                            in
                                                                                              i r
                                                                                          else __fail;
                                                                                      __pattern1 = __fail: 
                                                                                        if _8.__tag == "Right"
                                                                                          then 
                                                                                            let
                                                                                              _9 = _8.__field0;
                                                                                            in
                                                                                              
                                                                                              let
                                                                                                __pattern0 = __fail: 
                                                                                                  if _9.__tag == "Left"
                                                                                                    then 
                                                                                                      let
                                                                                                        r = _9.__field0;
                                                                                                      in
                                                                                                        j r
                                                                                                    else __fail;
                                                                                                __pattern1 = __fail: 
                                                                                                  if _9.__tag == "Right"
                                                                                                    then 
                                                                                                      let
                                                                                                        _10 = _9.__field0;
                                                                                                      in
                                                                                                        module."Data.Void".absurd _10
                                                                                                    else __fail;
                                                                                                __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 276:31 - 278:44";
                                                                                              in
                                                                                                __pattern0 (__pattern1 __patternFail)
                                                                                          else __fail;
                                                                                      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 274:29 - 278:44";
                                                                                    in
                                                                                      __pattern0 (__pattern1 __patternFail)
                                                                                else __fail;
                                                                            __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 272:27 - 278:44";
                                                                          in
                                                                            __pattern0 (__pattern1 __patternFail)
                                                                      else __fail;
                                                                  __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 270:25 - 278:44";
                                                                in
                                                                  __pattern0 (__pattern1 __patternFail)
                                                            else __fail;
                                                        __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 268:23 - 278:44";
                                                      in
                                                        __pattern0 (__pattern1 __patternFail)
                                                  else __fail;
                                              __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 266:21 - 278:44";
                                            in
                                              __pattern0 (__pattern1 __patternFail)
                                        else __fail;
                                    __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 264:19 - 278:44";
                                  in
                                    __pattern0 (__pattern1 __patternFail)
                              else __fail;
                          __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 262:17 - 278:44";
                        in
                          __pattern0 (__pattern1 __patternFail)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 260:15 - 278:44";
              in
                __pattern0 (__pattern1 __patternFail)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 258:34 - 278:44";
    in
      __pattern0 (__pattern1 __patternFail);
  either1 = y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              module."Data.Void".absurd _1
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 141:13 - 143:24";
    in
      __pattern0 (__pattern1 __patternFail);
  at9 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Right" && y.__field0.__tag == "Right" && y.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Left"
          then 
            let
              r = y.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 131:13 - 133:9";
    in
      __pattern0 (__pattern1 __patternFail);
  at8 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Right" && y.__field0.__tag == "Right" && y.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Left"
          then 
            let
              r = y.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 126:13 - 128:9";
    in
      __pattern0 (__pattern1 __patternFail);
  at7 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Right" && y.__field0.__tag == "Right" && y.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Left"
          then 
            let
              r = y.__field0.__field0.__field0.__field0.__field0.__field0.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 121:13 - 123:9";
    in
      __pattern0 (__pattern1 __patternFail);
  at6 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Right" && y.__field0.__tag == "Right" && y.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__tag == "Left"
          then 
            let
              r = y.__field0.__field0.__field0.__field0.__field0.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 116:13 - 118:9";
    in
      __pattern0 (__pattern1 __patternFail);
  at5 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Right" && y.__field0.__tag == "Right" && y.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__tag == "Left"
          then 
            let
              r = y.__field0.__field0.__field0.__field0.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 111:13 - 113:9";
    in
      __pattern0 (__pattern1 __patternFail);
  at4 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Right" && y.__field0.__tag == "Right" && y.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__tag == "Left"
          then 
            let
              r = y.__field0.__field0.__field0.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 106:13 - 108:9";
    in
      __pattern0 (__pattern1 __patternFail);
  at3 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Right" && y.__field0.__tag == "Right" && y.__field0.__field0.__tag == "Left"
          then 
            let
              r = y.__field0.__field0.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 101:13 - 103:9";
    in
      __pattern0 (__pattern1 __patternFail);
  at2 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Right" && y.__field0.__tag == "Left"
          then 
            let
              r = y.__field0.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 96:13 - 98:9";
    in
      __pattern0 (__pattern1 __patternFail);
  at10 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Right" && y.__field0.__tag == "Right" && y.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Left"
          then 
            let
              r = y.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 136:14 - 138:9";
    in
      __pattern0 (__pattern1 __patternFail);
  at1 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either/Nested.purs at 91:13 - 93:9";
    in
      __pattern0 (__pattern1 __patternFail);
in
  {inherit in1 in2 in3 in4 in5 in6 in7 in8 in9 in10 at1 at2 at3 at4 at5 at6 at7 at8 at9 at10 either1 either2 either3 either4 either5 either6 either7 either8 either9 either10;}
;

Data-Either_default-nix = 
let
  module = 
    { "Control.Alt" = Control-Alt_default-nix;
      "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Extend" = Control-Extend_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Bounded" = Data-Bounded_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Functor.Invariant" = Data-Functor-Invariant_default-nix;
      "Data.Generic.Rep" = Data-Generic-Rep_default-nix;
      "Data.Maybe" = Data-Maybe_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Left = value0: 
    { __tag = "Left";
      __field0 = value0;
    };
  Right = value0: 
    { __tag = "Right";
      __field0 = value0;
    };
  showEither = dictShow: dictShow1: 
    { show = v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Left"
              then 
                let
                  x = v.__field0;
                in
                  module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Left " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow x) ")")
              else __fail;
          __pattern1 = __fail: 
            if v.__tag == "Right"
              then 
                let
                  y = v.__field0;
                in
                  module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Right " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow1 y) ")")
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either.purs at 173:1 - 175:46";
        in
          __pattern0 (__pattern1 __patternFail);
    };
  note' = f: module."Data.Maybe".maybe' (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn Left f) Right;
  note = a: module."Data.Maybe".maybe (Left a) Right;
  genericEither = 
    { to = x: 
        let
          __pattern0 = __fail: 
            if x.__tag == "Inl"
              then 
                let
                  arg = x.__field0;
                in
                  Left arg
              else __fail;
          __pattern1 = __fail: 
            if x.__tag == "Inr"
              then 
                let
                  arg = x.__field0;
                in
                  Right arg
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either.purs at 33:1 - 33:56";
        in
          __pattern0 (__pattern1 __patternFail);
      from = x: 
        let
          __pattern0 = __fail: 
            if x.__tag == "Left"
              then 
                let
                  arg = x.__field0;
                in
                  module."Data.Generic.Rep".Inl arg
              else __fail;
          __pattern1 = __fail: 
            if x.__tag == "Right"
              then 
                let
                  arg = x.__field0;
                in
                  module."Data.Generic.Rep".Inr arg
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either.purs at 33:1 - 33:56";
        in
          __pattern0 (__pattern1 __patternFail);
    };
  functorEither = 
    { map = f: m: 
        let
          __pattern0 = __fail: 
            if m.__tag == "Left"
              then 
                let
                  v = m.__field0;
                in
                  Left v
              else __fail;
          __pattern1 = __fail: 
            if m.__tag == "Right"
              then 
                let
                  v = m.__field0;
                in
                  Right (f v)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either.purs at 31:1 - 31:52";
        in
          __pattern0 (__pattern1 __patternFail);
    };
  invariantEither = {imap = module."Data.Functor.Invariant".imapF functorEither;};
  fromRight' = v: v1: 
    let
      __pattern0 = __fail: 
        if v1.__tag == "Right"
          then 
            let
              b = v1.__field0;
            in
              b
          else __fail;
      __pattern1 = __fail: 
        let
          default = v;
        in
          default module."Data.Unit".unit;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either.purs at 252:1 - 252:57";
    in
      __pattern0 (__pattern1 __patternFail);
  fromRight = v: v1: 
    let
      __pattern0 = __fail: 
        if v1.__tag == "Right"
          then 
            let
              b = v1.__field0;
            in
              b
          else __fail;
      __pattern1 = __fail: 
        let
          default = v;
        in
          default;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either.purs at 243:1 - 243:46";
    in
      __pattern0 (__pattern1 __patternFail);
  fromLeft' = v: v1: 
    let
      __pattern0 = __fail: 
        if v1.__tag == "Left"
          then 
            let
              a = v1.__field0;
            in
              a
          else __fail;
      __pattern1 = __fail: 
        let
          default = v;
        in
          default module."Data.Unit".unit;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either.purs at 236:1 - 236:56";
    in
      __pattern0 (__pattern1 __patternFail);
  fromLeft = v: v1: 
    let
      __pattern0 = __fail: 
        if v1.__tag == "Left"
          then 
            let
              a = v1.__field0;
            in
              a
          else __fail;
      __pattern1 = __fail: 
        let
          default = v;
        in
          default;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either.purs at 227:1 - 227:45";
    in
      __pattern0 (__pattern1 __patternFail);
  extendEither = 
    { extend = v: v1: 
        let
          __pattern0 = __fail: 
            if v1.__tag == "Left"
              then 
                let
                  y = v1.__field0;
                in
                  Left y
              else __fail;
          __pattern1 = __fail: 
            let
              f = v;
              x = v1;
            in
              Right (f x);
          __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either.purs at 166:1 - 168:35";
        in
          __pattern0 (__pattern1 __patternFail);
      "Functor0" = __unused: functorEither;
    };
  eqEither = dictEq: dictEq1: 
    { eq = x: y: 
        let
          __pattern0 = __fail: 
            if x.__tag == "Left" && y.__tag == "Left"
              then 
                let
                  l = x.__field0;
                  r = y.__field0;
                in
                  module."Data.Eq".eq dictEq l r
              else __fail;
          __pattern1 = __fail: 
            if x.__tag == "Right" && y.__tag == "Right"
              then 
                let
                  l = x.__field0;
                  r = y.__field0;
                in
                  module."Data.Eq".eq dictEq1 l r
              else __fail;
          __pattern2 = __fail: false;
          __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either.purs at 180:1 - 180:60";
        in
          __pattern0 (__pattern1 (__pattern2 __patternFail));
    };
  ordEither = dictOrd: dictOrd1: 
    { compare = x: y: 
        let
          __pattern0 = __fail: 
            if x.__tag == "Left" && y.__tag == "Left"
              then 
                let
                  l = x.__field0;
                  r = y.__field0;
                in
                  module."Data.Ord".compare dictOrd l r
              else __fail;
          __pattern1 = __fail: if x.__tag == "Left" then module."Data.Ordering".LT else __fail;
          __pattern2 = __fail: if y.__tag == "Left" then module."Data.Ordering".GT else __fail;
          __pattern3 = __fail: 
            if x.__tag == "Right" && y.__tag == "Right"
              then 
                let
                  l = x.__field0;
                  r = y.__field0;
                in
                  module."Data.Ord".compare dictOrd1 l r
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either.purs at 189:1 - 189:64";
        in
          __pattern0 (__pattern1 (__pattern2 (__pattern3 __patternFail)));
      "Eq0" = __unused: eqEither (dictOrd."Eq0" module."Prim".undefined) (dictOrd1."Eq0" module."Prim".undefined);
    };
  eq1Either = dictEq: {eq1 = dictEq1: module."Data.Eq".eq (eqEither dictEq dictEq1);};
  ord1Either = dictOrd: 
    { compare1 = dictOrd1: module."Data.Ord".compare (ordEither dictOrd dictOrd1);
      "Eq10" = __unused: eq1Either (dictOrd."Eq0" module."Prim".undefined);
    };
  either = v: v1: v2: 
    let
      __pattern0 = __fail: 
        if v2.__tag == "Left"
          then 
            let
              f = v;
              a = v2.__field0;
            in
              f a
          else __fail;
      __pattern1 = __fail: 
        if v2.__tag == "Right"
          then 
            let
              g = v1;
              b = v2.__field0;
            in
              g b
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either.purs at 208:1 - 208:64";
    in
      __pattern0 (__pattern1 __patternFail);
  hush = either (module."Data.Function".const module."Data.Maybe".Nothing) module."Data.Maybe".Just;
  isLeft = either (module."Data.Function".const true) (module."Data.Function".const false);
  isRight = either (module."Data.Function".const false) (module."Data.Function".const true);
  choose = dictAlt: a: b: module."Control.Alt".alt dictAlt (module."Data.Functor".map (dictAlt."Functor0" module."Prim".undefined) Left a) (module."Data.Functor".map (dictAlt."Functor0" module."Prim".undefined) Right b);
  boundedEither = dictBounded: dictBounded1: 
    { top = Right (module."Data.Bounded".top dictBounded1);
      bottom = Left (module."Data.Bounded".bottom dictBounded);
      "Ord0" = __unused: ordEither (dictBounded."Ord0" module."Prim".undefined) (dictBounded1."Ord0" module."Prim".undefined);
    };
  applyEither = 
    { apply = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Left"
              then 
                let
                  e = v.__field0;
                in
                  Left e
              else __fail;
          __pattern1 = __fail: 
            if v.__tag == "Right"
              then 
                let
                  f = v.__field0;
                  r = v1;
                in
                  module."Data.Functor".map functorEither f r
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either.purs at 70:1 - 72:30";
        in
          __pattern0 (__pattern1 __patternFail);
      "Functor0" = __unused: functorEither;
    };
  bindEither = 
    { bind = either (e: v: Left e) (a: f: f a);
      "Apply0" = __unused: applyEither;
    };
  semigroupEither = dictSemigroup: {append = x: y: module."Control.Apply".apply applyEither (module."Data.Functor".map functorEither (module."Data.Semigroup".append dictSemigroup) x) y;};
  applicativeEither = 
    { pure = Right;
      "Apply0" = __unused: applyEither;
    };
  monadEither = 
    { "Applicative0" = __unused: applicativeEither;
      "Bind1" = __unused: bindEither;
    };
  altEither = 
    { alt = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Left"
              then 
                let
                  r = v1;
                in
                  r
              else __fail;
          __pattern1 = __fail: 
            let
              l = v;
            in
              l;
          __patternFail = builtins.throw "Pattern match failure in .spago/either/3169946c381a961c8ccbfa078748cc4a87c80766/src/Data/Either.purs at 105:1 - 107:21";
        in
          __pattern0 (__pattern1 __patternFail);
      "Functor0" = __unused: functorEither;
    };
in
  {inherit Left Right either choose isLeft isRight fromLeft fromLeft' fromRight fromRight' note note' hush functorEither genericEither invariantEither applyEither applicativeEither altEither bindEither monadEither extendEither showEither eqEither eq1Either ordEither ord1Either boundedEither semigroupEither;}
;

Data-Eq-Generic_default-nix = 
let
  module = 
    { "Data.Eq" = Data-Eq_default-nix;
      "Data.Generic.Rep" = Data-Generic-Rep_default-nix;
      "Data.HeytingAlgebra" = Data-HeytingAlgebra_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  GenericEq-Dict = x: x;
  genericEqNoConstructors = {genericEq' = v: v1: true;};
  genericEqNoArguments = {genericEq' = v: v1: true;};
  genericEqArgument = dictEq: 
    { genericEq' = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a1 = v;
              a2 = v1;
            in
              module."Data.Eq".eq dictEq a1 a2;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Eq/Generic.purs at 30:1 - 31:52";
        in
          __pattern0 __patternFail;
    };
  genericEq' = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericEq';
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Eq/Generic.purs at 11:3 - 11:34";
    in
      __pattern0 __patternFail;
  genericEqConstructor = dictGenericEq: 
    { genericEq' = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a1 = v;
              a2 = v1;
            in
              genericEq' dictGenericEq a1 a2;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Eq/Generic.purs at 27:1 - 28:66";
        in
          __pattern0 __patternFail;
    };
  genericEqProduct = dictGenericEq: dictGenericEq1: 
    { genericEq' = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product" && v1.__tag == "Product"
              then 
                let
                  a1 = v.__field0;
                  b1 = v.__field1;
                  a2 = v1.__field0;
                  b2 = v1.__field1;
                in
                  module."Data.HeytingAlgebra".conj module."Data.HeytingAlgebra".heytingAlgebraBoolean (genericEq' dictGenericEq a1 a2) (genericEq' dictGenericEq1 b1 b2)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Eq/Generic.purs at 24:1 - 25:84";
        in
          __pattern0 __patternFail;
    };
  genericEqSum = dictGenericEq: dictGenericEq1: 
    { genericEq' = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Inl" && v1.__tag == "Inl"
              then 
                let
                  a1 = v.__field0;
                  a2 = v1.__field0;
                in
                  genericEq' dictGenericEq a1 a2
              else __fail;
          __pattern1 = __fail: 
            if v.__tag == "Inr" && v1.__tag == "Inr"
              then 
                let
                  b1 = v.__field0;
                  b2 = v1.__field0;
                in
                  genericEq' dictGenericEq1 b1 b2
              else __fail;
          __pattern2 = __fail: false;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Eq/Generic.purs at 19:1 - 22:25";
        in
          __pattern0 (__pattern1 (__pattern2 __patternFail));
    };
  genericEq = dictGeneric: dictGenericEq: x: y: genericEq' dictGenericEq (module."Data.Generic.Rep".from dictGeneric x) (module."Data.Generic.Rep".from dictGeneric y);
in
  {inherit genericEq' genericEq genericEqNoConstructors genericEqNoArguments genericEqSum genericEqProduct genericEqConstructor genericEqArgument;}
;

Data-Eq_default-nix = 
let
  module = 
    { "Data.HeytingAlgebra" = Data-HeytingAlgebra_default-nix;
      "Data.Symbol" = Data-Symbol_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Data.Void" = Data-Void_default-nix;
      "Prim.Row" = import ../Prim.Row;
      "Prim.RowList" = import ../Prim.RowList;
      "Record.Unsafe" = Record-Unsafe_default-nix;
      "Type.Proxy" = Type-Proxy_default-nix;
    };
  foreign = Data-Eq_foreign-nix;
  eqBooleanImpl = foreign.eqBooleanImpl;
  eqIntImpl = foreign.eqIntImpl;
  eqNumberImpl = foreign.eqNumberImpl;
  eqCharImpl = foreign.eqCharImpl;
  eqStringImpl = foreign.eqStringImpl;
  eqArrayImpl = foreign.eqArrayImpl;
  EqRecord-Dict = x: x;
  Eq-Dict = x: x;
  Eq1-Dict = x: x;
  eqVoid = {eq = v: v1: true;};
  eqUnit = {eq = v: v1: true;};
  eqString = {eq = eqStringImpl;};
  eqRowNil = {eqRecord = v: v1: v2: true;};
  eqRecord = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.eqRecord;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Eq.purs at 98:3 - 98:85";
    in
      __pattern0 __patternFail;
  eqRec = dictRowToList: dictEqRecord: {eq = eqRecord dictEqRecord module."Type.Proxy".Proxy;};
  eqProxy3 = {eq = v: v1: true;};
  eqProxy2 = {eq = v: v1: true;};
  eqProxy = {eq = v: v1: true;};
  eqNumber = {eq = eqNumberImpl;};
  eqInt = {eq = eqIntImpl;};
  eqChar = {eq = eqCharImpl;};
  eqBoolean = {eq = eqBooleanImpl;};
  eq1 = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.eq1;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Eq.purs at 86:3 - 86:49";
    in
      __pattern0 __patternFail;
  eq = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.eq;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Eq.purs at 29:3 - 29:26";
    in
      __pattern0 __patternFail;
  eqArray = dictEq: {eq = eqArrayImpl (eq dictEq);};
  eq1Array = {eq1 = dictEq: eq (eqArray dictEq);};
  eqRowCons = dictEqRecord: dictCons: dictIsSymbol: dictEq: 
    { eqRecord = v: ra: rb: 
        let
          tail = eqRecord dictEqRecord module."Type.Proxy".Proxy ra rb;
          key = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
          get = module."Record.Unsafe".unsafeGet key;
        in
          module."Data.HeytingAlgebra".conj module."Data.HeytingAlgebra".heytingAlgebraBoolean (eq dictEq (get ra) (get rb)) tail;
    };
  notEq = dictEq: x: y: eq eqBoolean (eq dictEq x y) false;
  notEq1 = dictEq1: dictEq: x: y: eq eqBoolean (eq1 dictEq1 dictEq x y) false;
in
  {inherit eq notEq eq1 notEq1 eqRecord eqBoolean eqInt eqNumber eqChar eqString eqUnit eqVoid eqArray eqRec eqProxy eqProxy2 eqProxy3 eq1Array eqRowNil eqRowCons;}
;

Data-Eq_foreign-nix = 
let
  myEq = a: b: a == b;
in
{ eqBooleanImpl = myEq;

  eqIntImpl = myEq;

  eqNumberImpl = myEq;

  eqCharImpl = myEq;

  eqStringImpl = myEq;

  eqArrayImpl = eq: xs: ys:
    # if the arrrays are different lengths, then they are different
    if builtins.length xs != builtins.length ys then
      false
    else
      let
        len = builtins.length xs;

        go = n:
          # if we've gone through the whole list and never found elements that
          # are non-equal, then the lists are equal
          if n >= len then
            true
          else
            if eq (builtins.elemAt xs n) (builtins.elemAt ys n) then
              # if these elements are equal, then go on to the next one
              go (n + 1)
            else
              # if these elements are not equal, then the lists are not equal
              false;
      in
      go 0;
}

;

Data-Equivalence_default-nix = 
let
  module = 
    { "Data.Comparison" = Data-Comparison_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor.Contravariant" = Data-Functor-Contravariant_default-nix;
      "Data.HeytingAlgebra" = Data-HeytingAlgebra_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Equivalence = x: x;
  semigroupEquivalence = 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            let
              p = v;
              q = v1;
            in
              a: b: module."Data.HeytingAlgebra".conj module."Data.HeytingAlgebra".heytingAlgebraBoolean (p a b) (q a b);
          __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Equivalence.purs at 19:1 - 20:80";
        in
          __pattern0 __patternFail;
    };
  newtypeEquivalence = {"Coercible0" = __unused: module."Prim".undefined;};
  monoidEquivalence = 
    { mempty = v: v1: true;
      "Semigroup0" = __unused: semigroupEquivalence;
    };
  defaultEquivalence = dictEq: module."Data.Eq".eq dictEq;
  contravariantEquivalence = 
    { cmap = f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g = v;
            in
              module."Data.Function".on g f1;
          __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Equivalence.purs at 16:1 - 17:50";
        in
          __pattern0 __patternFail;
    };
  comparisonEquivalence = v: 
    let
      __pattern0 = __fail: 
        let
          p = v;
        in
          a: b: module."Data.Eq".eq module."Data.Ordering".eqOrdering (p a b) module."Data.Ordering".EQ;
      __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Equivalence.purs at 30:1 - 30:65";
    in
      __pattern0 __patternFail;
in
  {inherit Equivalence defaultEquivalence comparisonEquivalence newtypeEquivalence contravariantEquivalence semigroupEquivalence monoidEquivalence;}
;

Data-EuclideanRing_default-nix = 
let
  module = 
    { "Data.BooleanAlgebra" = Data-BooleanAlgebra_default-nix;
      "Data.CommutativeRing" = Data-CommutativeRing_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.HeytingAlgebra" = Data-HeytingAlgebra_default-nix;
      "Data.Ring" = Data-Ring_default-nix;
      "Data.Semiring" = Data-Semiring_default-nix;
    };
  foreign = Data-EuclideanRing_foreign-nix;
  intDegree = foreign.intDegree;
  intDiv = foreign.intDiv;
  intMod = foreign.intMod;
  numDiv = foreign.numDiv;
  EuclideanRing-Dict = x: x;
  mod = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.mod;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/EuclideanRing.purs at 66:3 - 66:21";
    in
      __pattern0 __patternFail;
  gcd = dictEq: dictEuclideanRing: a: b: 
    let
      __pattern0 = __fail: if module."Data.Eq".eq dictEq b (module."Data.Semiring".zero (((dictEuclideanRing."CommutativeRing0" module."Prim".undefined)."Ring0" module."Prim".undefined)."Semiring0" module."Prim".undefined)) then a else __fail;
      __pattern1 = __fail: gcd dictEq dictEuclideanRing b (mod dictEuclideanRing a b);
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/EuclideanRing.purs at 89:3 - 91:27";
    in
      __pattern0 (__pattern1 __patternFail);
  euclideanRingNumber = 
    { degree = v: 1;
      div = numDiv;
      mod = v: v1: 0.0;
      "CommutativeRing0" = __unused: module."Data.CommutativeRing".commutativeRingNumber;
    };
  euclideanRingInt = 
    { degree = intDegree;
      div = intDiv;
      mod = intMod;
      "CommutativeRing0" = __unused: module."Data.CommutativeRing".commutativeRingInt;
    };
  div = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.div;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/EuclideanRing.purs at 65:3 - 65:21";
    in
      __pattern0 __patternFail;
  lcm = dictEq: dictEuclideanRing: a: b: 
    let
      __pattern0 = __fail: if module."Data.HeytingAlgebra".disj module."Data.HeytingAlgebra".heytingAlgebraBoolean (module."Data.Eq".eq dictEq a (module."Data.Semiring".zero (((dictEuclideanRing."CommutativeRing0" module."Prim".undefined)."Ring0" module."Prim".undefined)."Semiring0" module."Prim".undefined))) (module."Data.Eq".eq dictEq b (module."Data.Semiring".zero (((dictEuclideanRing."CommutativeRing0" module."Prim".undefined)."Ring0" module."Prim".undefined)."Semiring0" module."Prim".undefined))) then module."Data.Semiring".zero (((dictEuclideanRing."CommutativeRing0" module."Prim".undefined)."Ring0" module."Prim".undefined)."Semiring0" module."Prim".undefined) else __fail;
      __pattern1 = __fail: div dictEuclideanRing (module."Data.Semiring".mul (((dictEuclideanRing."CommutativeRing0" module."Prim".undefined)."Ring0" module."Prim".undefined)."Semiring0" module."Prim".undefined) a b) (gcd dictEq dictEuclideanRing a b);
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/EuclideanRing.purs at 96:3 - 98:25";
    in
      __pattern0 (__pattern1 __patternFail);
  degree = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.degree;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/EuclideanRing.purs at 64:3 - 64:21";
    in
      __pattern0 __patternFail;
in
  
  { inherit degree div mod gcd lcm euclideanRingInt euclideanRingNumber;
    inherit (module."Data.CommutativeRing");
    inherit (module."Data.Ring") sub;
    inherit (module."Data.Semiring") add mul one zero;
  }
;

Data-EuclideanRing_foreign-nix = 
let
  abs = x: if x < 0 then -x else x;

  # taken from nixpkgs/lib/trivial.nix
  mod = base: int: base - (int * (builtins.div base int));
in

{
  intDegree = x: abs x;

  intDiv = x: y: if y == 0 then 0 else x / y;

  intMod = x: y:
    if y == 0 then
      0
    else
      let
        yy = abs y;
      in mod ((mod x yy) + yy) yy;

  numDiv = x: y:
    # Add 0.0 to x to make sure that it is a float and floating division will
    # be used, even if the user accidentally passes in two integers.
    (x + 0.0) / y;
}

;

Data-Exists_default-nix = 
let
  module = {"Unsafe.Coerce" = Unsafe-Coerce_default-nix;};
  runExists = module."Unsafe.Coerce".unsafeCoerce;
  mkExists = module."Unsafe.Coerce".unsafeCoerce;
in
  {inherit mkExists runExists;}
;

Data-Field_default-nix = 
let
  module = 
    { "Data.CommutativeRing" = Data-CommutativeRing_default-nix;
      "Data.DivisionRing" = Data-DivisionRing_default-nix;
      "Data.EuclideanRing" = Data-EuclideanRing_default-nix;
      "Data.Ring" = Data-Ring_default-nix;
      "Data.Semiring" = Data-Semiring_default-nix;
    };
  Field-Dict = x: x;
  field = dictEuclideanRing: dictDivisionRing: 
    { "EuclideanRing0" = __unused: dictEuclideanRing;
      "DivisionRing1" = __unused: dictDivisionRing;
    };
in
  
  { inherit field;
    inherit (module."Data.CommutativeRing");
    inherit (module."Data.DivisionRing") recip;
    inherit (module."Data.EuclideanRing") degree div gcd lcm mod;
    inherit (module."Data.Ring") negate sub;
    inherit (module."Data.Semiring") add mul one zero;
  }
;

Data-Foldable_default-nix = 
let
  module = 
    { "Control.Alt" = Control-Alt_default-nix;
      "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Category" = Control-Category_default-nix;
      "Control.Plus" = Control-Plus_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Const" = Data-Const_default-nix;
      "Data.Either" = Data-Either_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor.App" = Data-Functor-App_default-nix;
      "Data.Functor.Compose" = Data-Functor-Compose_default-nix;
      "Data.Functor.Coproduct" = Data-Functor-Coproduct_default-nix;
      "Data.Functor.Product" = Data-Functor-Product_default-nix;
      "Data.HeytingAlgebra" = Data-HeytingAlgebra_default-nix;
      "Data.Identity" = Data-Identity_default-nix;
      "Data.Maybe" = Data-Maybe_default-nix;
      "Data.Maybe.First" = Data-Maybe-First_default-nix;
      "Data.Maybe.Last" = Data-Maybe-Last_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Monoid.Additive" = Data-Monoid-Additive_default-nix;
      "Data.Monoid.Conj" = Data-Monoid-Conj_default-nix;
      "Data.Monoid.Disj" = Data-Monoid-Disj_default-nix;
      "Data.Monoid.Dual" = Data-Monoid-Dual_default-nix;
      "Data.Monoid.Endo" = Data-Monoid-Endo_default-nix;
      "Data.Monoid.Multiplicative" = Data-Monoid-Multiplicative_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Semiring" = Data-Semiring_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  foreign = Data-Foldable_foreign-nix;
  foldrArray = foreign.foldrArray;
  foldlArray = foreign.foldlArray;
  Foldable-Dict = x: x;
  foldr = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.foldr;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 74:3 - 74:54";
    in
      __pattern0 __patternFail;
  indexr = dictFoldable: idx: 
    let
      go = a: cursor: 
        let
          __pattern0 = __fail: if cursor.elem.__tag == "Just" then cursor else __fail;
          __pattern1 = __fail: 
            let
              __pattern0 = __fail: 
                if module."Data.Eq".eq module."Data.Eq".eqInt cursor.pos idx
                  then 
                    { elem = module."Data.Maybe".Just a;
                      pos = cursor.pos;
                    }
                  else __fail;
              __pattern1 = __fail: 
                { pos = module."Data.Semiring".add module."Data.Semiring".semiringInt cursor.pos 1;
                  elem = cursor.elem;
                };
              __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 413:9 - 415:58";
            in
              __pattern0 (__pattern1 __patternFail);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 410:5 - 415:58";
        in
          __pattern0 (__pattern1 __patternFail);
    in
      module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (v: v.elem) 
      ( foldr dictFoldable go 
        { elem = module."Data.Maybe".Nothing;
          pos = 0;
        }
      );
  null = dictFoldable: foldr dictFoldable (v: v1: false) true;
  oneOf = dictFoldable: dictPlus: foldr dictFoldable (module."Control.Alt".alt (dictPlus."Alt0" module."Prim".undefined)) (module."Control.Plus".empty dictPlus);
  oneOfMap = dictFoldable: dictPlus: f: foldr dictFoldable (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Control.Alt".alt (dictPlus."Alt0" module."Prim".undefined)) f) (module."Control.Plus".empty dictPlus);
  traverse_ = dictApplicative: dictFoldable: f: foldr dictFoldable (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Control.Apply".applySecond (dictApplicative."Apply0" module."Prim".undefined)) f) (module."Control.Applicative".pure dictApplicative module."Data.Unit".unit);
  for_ = dictApplicative: dictFoldable: module."Data.Function".flip (traverse_ dictApplicative dictFoldable);
  sequence_ = dictApplicative: dictFoldable: traverse_ dictApplicative dictFoldable (module."Control.Category".identity module."Control.Category".categoryFn);
  foldl = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.foldl;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 75:3 - 75:54";
    in
      __pattern0 __patternFail;
  indexl = dictFoldable: idx: 
    let
      go = cursor: a: 
        let
          __pattern0 = __fail: if cursor.elem.__tag == "Just" then cursor else __fail;
          __pattern1 = __fail: 
            let
              __pattern0 = __fail: 
                if module."Data.Eq".eq module."Data.Eq".eqInt cursor.pos idx
                  then 
                    { elem = module."Data.Maybe".Just a;
                      pos = cursor.pos;
                    }
                  else __fail;
              __pattern1 = __fail: 
                { pos = module."Data.Semiring".add module."Data.Semiring".semiringInt cursor.pos 1;
                  elem = cursor.elem;
                };
              __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 401:9 - 403:58";
            in
              __pattern0 (__pattern1 __patternFail);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 398:5 - 403:58";
        in
          __pattern0 (__pattern1 __patternFail);
    in
      module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (v: v.elem) 
      ( foldl dictFoldable go 
        { elem = module."Data.Maybe".Nothing;
          pos = 0;
        }
      );
  intercalate = dictFoldable: dictMonoid: sep: xs: 
    let
      go = v: x: 
        let
          __pattern0 = __fail: 
            if v.init
              then 
                let
                  x1 = x;
                in
                  
                  { init = false;
                    acc = x1;
                  }
              else __fail;
          __pattern1 = __fail: 
            let
              acc = v.acc;
              x1 = x;
            in
              
              { init = false;
                acc = module."Data.Semigroup".append (dictMonoid."Semigroup0" module."Prim".undefined) acc (module."Data.Semigroup".append (dictMonoid."Semigroup0" module."Prim".undefined) sep x1);
              };
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 311:3 - 311:48";
        in
          __pattern0 (__pattern1 __patternFail);
    in
      
      ( foldl dictFoldable go 
        { init = true;
          acc = module."Data.Monoid".mempty dictMonoid;
        } xs
      ).acc;
  length = dictFoldable: dictSemiring: foldl dictFoldable (c: v: module."Data.Semiring".add dictSemiring (module."Data.Semiring".one dictSemiring) c) (module."Data.Semiring".zero dictSemiring);
  maximumBy = dictFoldable: cmp: 
    let
      max' = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Nothing"
              then 
                let
                  x = v1;
                in
                  module."Data.Maybe".Just x
              else __fail;
          __pattern1 = __fail: 
            if v.__tag == "Just"
              then 
                let
                  x = v.__field0;
                  y = v1;
                in
                  module."Data.Maybe".Just 
                  ( 
                    let
                      __pattern0 = __fail: if module."Data.Eq".eq module."Data.Ordering".eqOrdering (cmp x y) module."Data.Ordering".GT then x else __fail;
                      __pattern1 = __fail: y;
                      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 442:27 - 442:57";
                    in
                      __pattern0 (__pattern1 __patternFail)
                  )
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 441:3 - 441:27";
        in
          __pattern0 (__pattern1 __patternFail);
    in
      foldl dictFoldable max' module."Data.Maybe".Nothing;
  maximum = dictOrd: dictFoldable: maximumBy dictFoldable (module."Data.Ord".compare dictOrd);
  minimumBy = dictFoldable: cmp: 
    let
      min' = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Nothing"
              then 
                let
                  x = v1;
                in
                  module."Data.Maybe".Just x
              else __fail;
          __pattern1 = __fail: 
            if v.__tag == "Just"
              then 
                let
                  x = v.__field0;
                  y = v1;
                in
                  module."Data.Maybe".Just 
                  ( 
                    let
                      __pattern0 = __fail: if module."Data.Eq".eq module."Data.Ordering".eqOrdering (cmp x y) module."Data.Ordering".LT then x else __fail;
                      __pattern1 = __fail: y;
                      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 455:27 - 455:57";
                    in
                      __pattern0 (__pattern1 __patternFail)
                  )
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 454:3 - 454:27";
        in
          __pattern0 (__pattern1 __patternFail);
    in
      foldl dictFoldable min' module."Data.Maybe".Nothing;
  minimum = dictOrd: dictFoldable: minimumBy dictFoldable (module."Data.Ord".compare dictOrd);
  product = dictFoldable: dictSemiring: foldl dictFoldable (module."Data.Semiring".mul dictSemiring) (module."Data.Semiring".one dictSemiring);
  sum = dictFoldable: dictSemiring: foldl dictFoldable (module."Data.Semiring".add dictSemiring) (module."Data.Semiring".zero dictSemiring);
  foldableTuple = 
    { foldr = f: z: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  z1 = z;
                  x = v.__field1;
                in
                  f1 x z1
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 189:1 - 192:30";
        in
          __pattern0 __patternFail;
      foldl = f: z: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  z1 = z;
                  x = v.__field1;
                in
                  f1 z1 x
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 189:1 - 192:30";
        in
          __pattern0 __patternFail;
      foldMap = dictMonoid: f: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  x = v.__field1;
                in
                  f1 x
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 189:1 - 192:30";
        in
          __pattern0 __patternFail;
    };
  foldableMultiplicative = 
    { foldr = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              f1 x z1;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 176:1 - 179:37";
        in
          __pattern0 __patternFail;
      foldl = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              f1 z1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 176:1 - 179:37";
        in
          __pattern0 __patternFail;
      foldMap = dictMonoid: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 176:1 - 179:37";
        in
          __pattern0 __patternFail;
    };
  foldableMaybe = 
    { foldr = v: z: v1: 
        let
          __pattern0 = __fail: 
            if v1.__tag == "Nothing"
              then 
                let
                  z1 = z;
                in
                  z1
              else __fail;
          __pattern1 = __fail: 
            if v1.__tag == "Just"
              then 
                let
                  f = v;
                  z1 = z;
                  x = v1.__field0;
                in
                  f x z1
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 138:1 - 144:27";
        in
          __pattern0 (__pattern1 __patternFail);
      foldl = v: z: v1: 
        let
          __pattern0 = __fail: 
            if v1.__tag == "Nothing"
              then 
                let
                  z1 = z;
                in
                  z1
              else __fail;
          __pattern1 = __fail: 
            if v1.__tag == "Just"
              then 
                let
                  f = v;
                  z1 = z;
                  x = v1.__field0;
                in
                  f z1 x
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 138:1 - 144:27";
        in
          __pattern0 (__pattern1 __patternFail);
      foldMap = dictMonoid: v: v1: 
        let
          __pattern0 = __fail: if v1.__tag == "Nothing" then module."Data.Monoid".mempty dictMonoid else __fail;
          __pattern1 = __fail: 
            if v1.__tag == "Just"
              then 
                let
                  f = v;
                  x = v1.__field0;
                in
                  f x
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 138:1 - 144:27";
        in
          __pattern0 (__pattern1 __patternFail);
    };
  foldableIdentity = 
    { foldr = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              f1 x z1;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 194:1 - 197:31";
        in
          __pattern0 __patternFail;
      foldl = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              f1 z1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 194:1 - 197:31";
        in
          __pattern0 __patternFail;
      foldMap = dictMonoid: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 194:1 - 197:31";
        in
          __pattern0 __patternFail;
    };
  foldableEither = 
    { foldr = v: z: v1: 
        let
          __pattern0 = __fail: 
            if v1.__tag == "Left"
              then 
                let
                  z1 = z;
                in
                  z1
              else __fail;
          __pattern1 = __fail: 
            if v1.__tag == "Right"
              then 
                let
                  f = v;
                  z1 = z;
                  x = v1.__field0;
                in
                  f x z1
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 181:1 - 187:28";
        in
          __pattern0 (__pattern1 __patternFail);
      foldl = v: z: v1: 
        let
          __pattern0 = __fail: 
            if v1.__tag == "Left"
              then 
                let
                  z1 = z;
                in
                  z1
              else __fail;
          __pattern1 = __fail: 
            if v1.__tag == "Right"
              then 
                let
                  f = v;
                  z1 = z;
                  x = v1.__field0;
                in
                  f z1 x
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 181:1 - 187:28";
        in
          __pattern0 (__pattern1 __patternFail);
      foldMap = dictMonoid: v: v1: 
        let
          __pattern0 = __fail: if v1.__tag == "Left" then module."Data.Monoid".mempty dictMonoid else __fail;
          __pattern1 = __fail: 
            if v1.__tag == "Right"
              then 
                let
                  f = v;
                  x = v1.__field0;
                in
                  f x
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 181:1 - 187:28";
        in
          __pattern0 (__pattern1 __patternFail);
    };
  foldableDual = 
    { foldr = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              f1 x z1;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 161:1 - 164:27";
        in
          __pattern0 __patternFail;
      foldl = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              f1 z1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 161:1 - 164:27";
        in
          __pattern0 __patternFail;
      foldMap = dictMonoid: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 161:1 - 164:27";
        in
          __pattern0 __patternFail;
    };
  foldableDisj = 
    { foldr = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              f1 x z1;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 166:1 - 169:27";
        in
          __pattern0 __patternFail;
      foldl = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              f1 z1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 166:1 - 169:27";
        in
          __pattern0 __patternFail;
      foldMap = dictMonoid: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 166:1 - 169:27";
        in
          __pattern0 __patternFail;
    };
  foldableConst = 
    { foldr = v: z: v1: z;
      foldl = v: z: v1: z;
      foldMap = dictMonoid: v: v1: module."Data.Monoid".mempty dictMonoid;
    };
  foldableConj = 
    { foldr = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              f1 x z1;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 171:1 - 174:27";
        in
          __pattern0 __patternFail;
      foldl = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              f1 z1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 171:1 - 174:27";
        in
          __pattern0 __patternFail;
      foldMap = dictMonoid: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 171:1 - 174:27";
        in
          __pattern0 __patternFail;
    };
  foldableAdditive = 
    { foldr = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              f1 x z1;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 156:1 - 159:31";
        in
          __pattern0 __patternFail;
      foldl = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              f1 z1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 156:1 - 159:31";
        in
          __pattern0 __patternFail;
      foldMap = dictMonoid: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 156:1 - 159:31";
        in
          __pattern0 __patternFail;
    };
  foldMapDefaultR = dictFoldable: dictMonoid: f: foldr dictFoldable (x: acc: module."Data.Semigroup".append (dictMonoid."Semigroup0" module."Prim".undefined) (f x) acc) (module."Data.Monoid".mempty dictMonoid);
  foldableArray = 
    { foldr = foldrArray;
      foldl = foldlArray;
      foldMap = dictMonoid: foldMapDefaultR foldableArray dictMonoid;
    };
  foldMapDefaultL = dictFoldable: dictMonoid: f: foldl dictFoldable (acc: x: module."Data.Semigroup".append (dictMonoid."Semigroup0" module."Prim".undefined) acc (f x)) (module."Data.Monoid".mempty dictMonoid);
  foldMap = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.foldMap;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 76:3 - 76:58";
    in
      __pattern0 __patternFail;
  foldableApp = dictFoldable: 
    { foldr = f: i: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              i1 = i;
              x = v;
            in
              foldr dictFoldable f1 i1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 219:1 - 222:34";
        in
          __pattern0 __patternFail;
      foldl = f: i: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              i1 = i;
              x = v;
            in
              foldl dictFoldable f1 i1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 219:1 - 222:34";
        in
          __pattern0 __patternFail;
      foldMap = dictMonoid: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              foldMap dictFoldable dictMonoid f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 219:1 - 222:34";
        in
          __pattern0 __patternFail;
    };
  foldableCompose = dictFoldable: dictFoldable1: 
    { foldr = f: i: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              i1 = i;
              fga = v;
            in
              foldr dictFoldable (module."Data.Function".flip (foldr dictFoldable1 f1)) i1 fga;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 214:1 - 217:52";
        in
          __pattern0 __patternFail;
      foldl = f: i: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              i1 = i;
              fga = v;
            in
              foldl dictFoldable (foldl dictFoldable1 f1) i1 fga;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 214:1 - 217:52";
        in
          __pattern0 __patternFail;
      foldMap = dictMonoid: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              fga = v;
            in
              foldMap dictFoldable dictMonoid (foldMap dictFoldable1 dictMonoid f1) fga;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 214:1 - 217:52";
        in
          __pattern0 __patternFail;
    };
  foldableCoproduct = dictFoldable: dictFoldable1: 
    { foldr = f: z: module."Data.Functor.Coproduct".coproduct (foldr dictFoldable f z) (foldr dictFoldable1 f z);
      foldl = f: z: module."Data.Functor.Coproduct".coproduct (foldl dictFoldable f z) (foldl dictFoldable1 f z);
      foldMap = dictMonoid: f: module."Data.Functor.Coproduct".coproduct (foldMap dictFoldable dictMonoid f) (foldMap dictFoldable1 dictMonoid f);
    };
  foldableFirst = 
    { foldr = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              foldr foldableMaybe f1 z1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 146:1 - 149:36";
        in
          __pattern0 __patternFail;
      foldl = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              foldl foldableMaybe f1 z1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 146:1 - 149:36";
        in
          __pattern0 __patternFail;
      foldMap = dictMonoid: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              foldMap foldableMaybe dictMonoid f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 146:1 - 149:36";
        in
          __pattern0 __patternFail;
    };
  foldableLast = 
    { foldr = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              foldr foldableMaybe f1 z1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 151:1 - 154:35";
        in
          __pattern0 __patternFail;
      foldl = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              foldl foldableMaybe f1 z1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 151:1 - 154:35";
        in
          __pattern0 __patternFail;
      foldMap = dictMonoid: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              foldMap foldableMaybe dictMonoid f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 151:1 - 154:35";
        in
          __pattern0 __patternFail;
    };
  foldableProduct = dictFoldable: dictFoldable1: 
    { foldr = f: z: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  z1 = z;
                  fa = v.__field0;
                  ga = v.__field1;
                in
                  foldr dictFoldable f1 (foldr dictFoldable1 f1 z1 ga) fa
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 204:1 - 207:67";
        in
          __pattern0 __patternFail;
      foldl = f: z: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  z1 = z;
                  fa = v.__field0;
                  ga = v.__field1;
                in
                  foldl dictFoldable1 f1 (foldl dictFoldable f1 z1 fa) ga
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 204:1 - 207:67";
        in
          __pattern0 __patternFail;
      foldMap = dictMonoid: f: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  fa = v.__field0;
                  ga = v.__field1;
                in
                  module."Data.Semigroup".append (dictMonoid."Semigroup0" module."Prim".undefined) (foldMap dictFoldable dictMonoid f1 fa) (foldMap dictFoldable1 dictMonoid f1 ga)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 204:1 - 207:67";
        in
          __pattern0 __patternFail;
    };
  foldlDefault = dictFoldable: c: u: xs: module."Data.Newtype".unwrap module."Prim".undefined (module."Data.Newtype".unwrap module."Prim".undefined (foldMap dictFoldable (module."Data.Monoid.Dual".monoidDual (module."Data.Monoid.Endo".monoidEndo module."Control.Category".categoryFn)) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Monoid.Dual".Dual (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Monoid.Endo".Endo (module."Data.Function".flip c))) xs)) u;
  foldrDefault = dictFoldable: c: u: xs: module."Data.Newtype".unwrap module."Prim".undefined (foldMap dictFoldable (module."Data.Monoid.Endo".monoidEndo module."Control.Category".categoryFn) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Monoid.Endo".Endo c) xs) u;
  lookup = dictFoldable: dictEq: a: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Newtype".unwrap module."Prim".undefined) 
    ( foldMap dictFoldable module."Data.Maybe.First".monoidFirst 
      ( v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  a' = v.__field0;
                  b = v.__field1;
                in
                  
                  let
                    __pattern0 = __fail: if module."Data.Eq".eq dictEq a a' then module."Data.Maybe".Just b else __fail;
                    __pattern1 = __fail: module."Data.Maybe".Nothing;
                    __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 471:55 - 471:90";
                  in
                    __pattern0 (__pattern1 __patternFail)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 471:31 - 471:91";
        in
          __pattern0 __patternFail
      )
    );
  surroundMap = dictFoldable: dictSemigroup: d: t: f: 
    let
      joined = a: m: module."Data.Semigroup".append dictSemigroup d (module."Data.Semigroup".append dictSemigroup (t a) m);
    in
      module."Data.Newtype".unwrap module."Prim".undefined (foldMap dictFoldable (module."Data.Monoid.Endo".monoidEndo module."Control.Category".categoryFn) joined f) d;
  surround = dictFoldable: dictSemigroup: d: surroundMap dictFoldable dictSemigroup d (module."Control.Category".identity module."Control.Category".categoryFn);
  foldM = dictFoldable: dictMonad: f: b0: foldl dictFoldable (b: a: module."Control.Bind".bind (dictMonad."Bind1" module."Prim".undefined) b (module."Data.Function".flip f a)) (module."Control.Applicative".pure (dictMonad."Applicative0" module."Prim".undefined) b0);
  fold = dictFoldable: dictMonoid: foldMap dictFoldable dictMonoid (module."Control.Category".identity module."Control.Category".categoryFn);
  findMap = dictFoldable: p: 
    let
      go = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Nothing"
              then 
                let
                  x = v1;
                in
                  p x
              else __fail;
          __pattern1 = __fail: 
            let
              r = v;
            in
              r;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 428:3 - 428:21";
        in
          __pattern0 (__pattern1 __patternFail);
    in
      foldl dictFoldable go module."Data.Maybe".Nothing;
  find = dictFoldable: p: 
    let
      go = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Nothing"
              then 
                let
                  x = v1;
                in
                  if p x then module."Data.Maybe".Just x else __fail
              else __fail;
          __pattern1 = __fail: 
            let
              r = v;
            in
              r;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Foldable.purs at 421:3 - 421:30";
        in
          __pattern0 (__pattern1 __patternFail);
    in
      foldl dictFoldable go module."Data.Maybe".Nothing;
  any = dictFoldable: dictHeytingAlgebra: module."Data.Newtype".alaF module."Prim".undefined module."Prim".undefined module."Prim".undefined module."Prim".undefined module."Data.Monoid.Disj".Disj (foldMap dictFoldable (module."Data.Monoid.Disj".monoidDisj dictHeytingAlgebra));
  elem = dictFoldable: dictEq: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (any dictFoldable module."Data.HeytingAlgebra".heytingAlgebraBoolean) (module."Data.Eq".eq dictEq);
  notElem = dictFoldable: dictEq: x: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.HeytingAlgebra".not module."Data.HeytingAlgebra".heytingAlgebraBoolean) (elem dictFoldable dictEq x);
  or- = dictFoldable: dictHeytingAlgebra: any dictFoldable dictHeytingAlgebra (module."Control.Category".identity module."Control.Category".categoryFn);
  all = dictFoldable: dictHeytingAlgebra: module."Data.Newtype".alaF module."Prim".undefined module."Prim".undefined module."Prim".undefined module."Prim".undefined module."Data.Monoid.Conj".Conj (foldMap dictFoldable (module."Data.Monoid.Conj".monoidConj dictHeytingAlgebra));
  and = dictFoldable: dictHeytingAlgebra: all dictFoldable dictHeytingAlgebra (module."Control.Category".identity module."Control.Category".categoryFn);
in
  {inherit foldr foldl foldMap foldrDefault foldlDefault foldMapDefaultL foldMapDefaultR fold foldM traverse_ for_ sequence_ oneOf oneOfMap intercalate surroundMap surround and or- all any sum product elem notElem indexl indexr find findMap maximum maximumBy minimum minimumBy null length lookup foldableArray foldableMaybe foldableFirst foldableLast foldableAdditive foldableDual foldableDisj foldableConj foldableMultiplicative foldableEither foldableTuple foldableIdentity foldableConst foldableProduct foldableCoproduct foldableCompose foldableApp;}
;

Data-Foldable_foreign-nix = 
{ # This is foldr from nixpkgs/lib/lists.nix
  foldrArray = op: nul: list:
    let
      len = builtins.length list;
      fold' = n:
        if n == len
        then nul
        else op (builtins.elemAt list n) (fold' (n + 1));
    in fold' 0;

  foldlArray = builtins.foldl';
}

;

Data-FoldableWithIndex_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Category" = Control-Category_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Const" = Data-Const_default-nix;
      "Data.Either" = Data-Either_default-nix;
      "Data.Foldable" = Data-Foldable_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor.App" = Data-Functor-App_default-nix;
      "Data.Functor.Compose" = Data-Functor-Compose_default-nix;
      "Data.Functor.Coproduct" = Data-Functor-Coproduct_default-nix;
      "Data.Functor.Product" = Data-Functor-Product_default-nix;
      "Data.FunctorWithIndex" = Data-FunctorWithIndex_default-nix;
      "Data.Identity" = Data-Identity_default-nix;
      "Data.Maybe" = Data-Maybe_default-nix;
      "Data.Maybe.First" = Data-Maybe-First_default-nix;
      "Data.Maybe.Last" = Data-Maybe-Last_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Monoid.Additive" = Data-Monoid-Additive_default-nix;
      "Data.Monoid.Conj" = Data-Monoid-Conj_default-nix;
      "Data.Monoid.Disj" = Data-Monoid-Disj_default-nix;
      "Data.Monoid.Dual" = Data-Monoid-Dual_default-nix;
      "Data.Monoid.Endo" = Data-Monoid-Endo_default-nix;
      "Data.Monoid.Multiplicative" = Data-Monoid-Multiplicative_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  FoldableWithIndex-Dict = x: x;
  foldrWithIndex = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.foldrWithIndex;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 63:3 - 63:68";
    in
      __pattern0 __patternFail;
  traverseWithIndex_ = dictApplicative: dictFoldableWithIndex: f: foldrWithIndex dictFoldableWithIndex (i: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Control.Apply".applySecond (dictApplicative."Apply0" module."Prim".undefined)) (f i)) (module."Control.Applicative".pure dictApplicative module."Data.Unit".unit);
  forWithIndex_ = dictApplicative: dictFoldableWithIndex: module."Data.Function".flip (traverseWithIndex_ dictApplicative dictFoldableWithIndex);
  foldrDefault = dictFoldableWithIndex: f: foldrWithIndex dictFoldableWithIndex (module."Data.Function".const f);
  foldlWithIndex = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.foldlWithIndex;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 64:3 - 64:68";
    in
      __pattern0 __patternFail;
  foldlDefault = dictFoldableWithIndex: f: foldlWithIndex dictFoldableWithIndex (module."Data.Function".const f);
  foldableWithIndexTuple = 
    { foldrWithIndex = f: z: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  z1 = z;
                  x = v.__field1;
                in
                  f1 module."Data.Unit".unit x z1
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 172:1 - 175:44";
        in
          __pattern0 __patternFail;
      foldlWithIndex = f: z: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  z1 = z;
                  x = v.__field1;
                in
                  f1 module."Data.Unit".unit z1 x
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 172:1 - 175:44";
        in
          __pattern0 __patternFail;
      foldMapWithIndex = dictMonoid: f: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  x = v.__field1;
                in
                  f1 module."Data.Unit".unit x
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 172:1 - 175:44";
        in
          __pattern0 __patternFail;
      "Foldable0" = __unused: module."Data.Foldable".foldableTuple;
    };
  foldableWithIndexMultiplicative = 
    { foldrWithIndex = f: module."Data.Function".apply (module."Data.Foldable".foldr module."Data.Foldable".foldableMultiplicative) (f module."Data.Unit".unit);
      foldlWithIndex = f: module."Data.Function".apply (module."Data.Foldable".foldl module."Data.Foldable".foldableMultiplicative) (f module."Data.Unit".unit);
      foldMapWithIndex = dictMonoid: f: module."Data.Function".apply (module."Data.Foldable".foldMap module."Data.Foldable".foldableMultiplicative dictMonoid) (f module."Data.Unit".unit);
      "Foldable0" = __unused: module."Data.Foldable".foldableMultiplicative;
    };
  foldableWithIndexMaybe = 
    { foldrWithIndex = f: module."Data.Function".apply (module."Data.Foldable".foldr module."Data.Foldable".foldableMaybe) (f module."Data.Unit".unit);
      foldlWithIndex = f: module."Data.Function".apply (module."Data.Foldable".foldl module."Data.Foldable".foldableMaybe) (f module."Data.Unit".unit);
      foldMapWithIndex = dictMonoid: f: module."Data.Function".apply (module."Data.Foldable".foldMap module."Data.Foldable".foldableMaybe dictMonoid) (f module."Data.Unit".unit);
      "Foldable0" = __unused: module."Data.Foldable".foldableMaybe;
    };
  foldableWithIndexLast = 
    { foldrWithIndex = f: module."Data.Function".apply (module."Data.Foldable".foldr module."Data.Foldable".foldableLast) (f module."Data.Unit".unit);
      foldlWithIndex = f: module."Data.Function".apply (module."Data.Foldable".foldl module."Data.Foldable".foldableLast) (f module."Data.Unit".unit);
      foldMapWithIndex = dictMonoid: f: module."Data.Function".apply (module."Data.Foldable".foldMap module."Data.Foldable".foldableLast dictMonoid) (f module."Data.Unit".unit);
      "Foldable0" = __unused: module."Data.Foldable".foldableLast;
    };
  foldableWithIndexIdentity = 
    { foldrWithIndex = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              f1 module."Data.Unit".unit x z1;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 177:1 - 180:45";
        in
          __pattern0 __patternFail;
      foldlWithIndex = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              f1 module."Data.Unit".unit z1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 177:1 - 180:45";
        in
          __pattern0 __patternFail;
      foldMapWithIndex = dictMonoid: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              f1 module."Data.Unit".unit x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 177:1 - 180:45";
        in
          __pattern0 __patternFail;
      "Foldable0" = __unused: module."Data.Foldable".foldableIdentity;
    };
  foldableWithIndexFirst = 
    { foldrWithIndex = f: module."Data.Function".apply (module."Data.Foldable".foldr module."Data.Foldable".foldableFirst) (f module."Data.Unit".unit);
      foldlWithIndex = f: module."Data.Function".apply (module."Data.Foldable".foldl module."Data.Foldable".foldableFirst) (f module."Data.Unit".unit);
      foldMapWithIndex = dictMonoid: f: module."Data.Function".apply (module."Data.Foldable".foldMap module."Data.Foldable".foldableFirst dictMonoid) (f module."Data.Unit".unit);
      "Foldable0" = __unused: module."Data.Foldable".foldableFirst;
    };
  foldableWithIndexEither = 
    { foldrWithIndex = v: z: v1: 
        let
          __pattern0 = __fail: 
            if v1.__tag == "Left"
              then 
                let
                  z1 = z;
                in
                  z1
              else __fail;
          __pattern1 = __fail: 
            if v1.__tag == "Right"
              then 
                let
                  f = v;
                  z1 = z;
                  x = v1.__field0;
                in
                  f module."Data.Unit".unit x z1
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 164:1 - 170:42";
        in
          __pattern0 (__pattern1 __patternFail);
      foldlWithIndex = v: z: v1: 
        let
          __pattern0 = __fail: 
            if v1.__tag == "Left"
              then 
                let
                  z1 = z;
                in
                  z1
              else __fail;
          __pattern1 = __fail: 
            if v1.__tag == "Right"
              then 
                let
                  f = v;
                  z1 = z;
                  x = v1.__field0;
                in
                  f module."Data.Unit".unit z1 x
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 164:1 - 170:42";
        in
          __pattern0 (__pattern1 __patternFail);
      foldMapWithIndex = dictMonoid: v: v1: 
        let
          __pattern0 = __fail: if v1.__tag == "Left" then module."Data.Monoid".mempty dictMonoid else __fail;
          __pattern1 = __fail: 
            if v1.__tag == "Right"
              then 
                let
                  f = v;
                  x = v1.__field0;
                in
                  f module."Data.Unit".unit x
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 164:1 - 170:42";
        in
          __pattern0 (__pattern1 __patternFail);
      "Foldable0" = __unused: module."Data.Foldable".foldableEither;
    };
  foldableWithIndexDual = 
    { foldrWithIndex = f: module."Data.Function".apply (module."Data.Foldable".foldr module."Data.Foldable".foldableDual) (f module."Data.Unit".unit);
      foldlWithIndex = f: module."Data.Function".apply (module."Data.Foldable".foldl module."Data.Foldable".foldableDual) (f module."Data.Unit".unit);
      foldMapWithIndex = dictMonoid: f: module."Data.Function".apply (module."Data.Foldable".foldMap module."Data.Foldable".foldableDual dictMonoid) (f module."Data.Unit".unit);
      "Foldable0" = __unused: module."Data.Foldable".foldableDual;
    };
  foldableWithIndexDisj = 
    { foldrWithIndex = f: module."Data.Function".apply (module."Data.Foldable".foldr module."Data.Foldable".foldableDisj) (f module."Data.Unit".unit);
      foldlWithIndex = f: module."Data.Function".apply (module."Data.Foldable".foldl module."Data.Foldable".foldableDisj) (f module."Data.Unit".unit);
      foldMapWithIndex = dictMonoid: f: module."Data.Function".apply (module."Data.Foldable".foldMap module."Data.Foldable".foldableDisj dictMonoid) (f module."Data.Unit".unit);
      "Foldable0" = __unused: module."Data.Foldable".foldableDisj;
    };
  foldableWithIndexConst = 
    { foldrWithIndex = v: z: v1: z;
      foldlWithIndex = v: z: v1: z;
      foldMapWithIndex = dictMonoid: v: v1: module."Data.Monoid".mempty dictMonoid;
      "Foldable0" = __unused: module."Data.Foldable".foldableConst;
    };
  foldableWithIndexConj = 
    { foldrWithIndex = f: module."Data.Function".apply (module."Data.Foldable".foldr module."Data.Foldable".foldableConj) (f module."Data.Unit".unit);
      foldlWithIndex = f: module."Data.Function".apply (module."Data.Foldable".foldl module."Data.Foldable".foldableConj) (f module."Data.Unit".unit);
      foldMapWithIndex = dictMonoid: f: module."Data.Function".apply (module."Data.Foldable".foldMap module."Data.Foldable".foldableConj dictMonoid) (f module."Data.Unit".unit);
      "Foldable0" = __unused: module."Data.Foldable".foldableConj;
    };
  foldableWithIndexAdditive = 
    { foldrWithIndex = f: module."Data.Function".apply (module."Data.Foldable".foldr module."Data.Foldable".foldableAdditive) (f module."Data.Unit".unit);
      foldlWithIndex = f: module."Data.Function".apply (module."Data.Foldable".foldl module."Data.Foldable".foldableAdditive) (f module."Data.Unit".unit);
      foldMapWithIndex = dictMonoid: f: module."Data.Function".apply (module."Data.Foldable".foldMap module."Data.Foldable".foldableAdditive dictMonoid) (f module."Data.Unit".unit);
      "Foldable0" = __unused: module."Data.Foldable".foldableAdditive;
    };
  foldWithIndexM = dictFoldableWithIndex: dictMonad: f: a0: foldlWithIndex dictFoldableWithIndex (i: ma: b: module."Control.Bind".bind (dictMonad."Bind1" module."Prim".undefined) ma (module."Data.Function".flip (f i) b)) (module."Control.Applicative".pure (dictMonad."Applicative0" module."Prim".undefined) a0);
  foldMapWithIndexDefaultR = dictFoldableWithIndex: dictMonoid: f: foldrWithIndex dictFoldableWithIndex (i: x: acc: module."Data.Semigroup".append (dictMonoid."Semigroup0" module."Prim".undefined) (f i x) acc) (module."Data.Monoid".mempty dictMonoid);
  foldableWithIndexArray = 
    { foldrWithIndex = f: z: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn 
        ( module."Data.Foldable".foldr module."Data.Foldable".foldableArray 
          ( v: 
            let
              __pattern0 = __fail: 
                if v.__tag == "Tuple"
                  then 
                    let
                      i = v.__field0;
                      x = v.__field1;
                    in
                      y: f i x y
                  else __fail;
              __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 120:31 - 120:56";
            in
              __pattern0 __patternFail
          ) z
        ) (module."Data.FunctorWithIndex".mapWithIndex module."Data.FunctorWithIndex".functorWithIndexArray module."Data.Tuple".Tuple);
      foldlWithIndex = f: z: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn 
        ( module."Data.Foldable".foldl module."Data.Foldable".foldableArray 
          ( y: v: 
            let
              __pattern0 = __fail: 
                if v.__tag == "Tuple"
                  then 
                    let
                      i = v.__field0;
                      x = v.__field1;
                    in
                      f i y x
                  else __fail;
              __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 121:31 - 121:56";
            in
              __pattern0 __patternFail
          ) z
        ) (module."Data.FunctorWithIndex".mapWithIndex module."Data.FunctorWithIndex".functorWithIndexArray module."Data.Tuple".Tuple);
      foldMapWithIndex = dictMonoid: foldMapWithIndexDefaultR foldableWithIndexArray dictMonoid;
      "Foldable0" = __unused: module."Data.Foldable".foldableArray;
    };
  foldMapWithIndexDefaultL = dictFoldableWithIndex: dictMonoid: f: foldlWithIndex dictFoldableWithIndex (i: acc: x: module."Data.Semigroup".append (dictMonoid."Semigroup0" module."Prim".undefined) acc (f i x)) (module."Data.Monoid".mempty dictMonoid);
  foldMapWithIndex = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.foldMapWithIndex;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 65:3 - 65:72";
    in
      __pattern0 __patternFail;
  foldableWithIndexApp = dictFoldableWithIndex: 
    { foldrWithIndex = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              foldrWithIndex dictFoldableWithIndex f1 z1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 202:1 - 205:52";
        in
          __pattern0 __patternFail;
      foldlWithIndex = f: z: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              z1 = z;
              x = v;
            in
              foldlWithIndex dictFoldableWithIndex f1 z1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 202:1 - 205:52";
        in
          __pattern0 __patternFail;
      foldMapWithIndex = dictMonoid: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              foldMapWithIndex dictFoldableWithIndex dictMonoid f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 202:1 - 205:52";
        in
          __pattern0 __patternFail;
      "Foldable0" = __unused: module."Data.Foldable".foldableApp (dictFoldableWithIndex."Foldable0" module."Prim".undefined);
    };
  foldableWithIndexCompose = dictFoldableWithIndex: dictFoldableWithIndex1: 
    { foldrWithIndex = f: i: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              i1 = i;
              fga = v;
            in
              foldrWithIndex dictFoldableWithIndex (a: module."Data.Function".flip (foldrWithIndex dictFoldableWithIndex1 (module."Data.Tuple".curry f1 a))) i1 fga;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 197:1 - 200:89";
        in
          __pattern0 __patternFail;
      foldlWithIndex = f: i: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              i1 = i;
              fga = v;
            in
              foldlWithIndex dictFoldableWithIndex (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (foldlWithIndex dictFoldableWithIndex1) (module."Data.Tuple".curry f1)) i1 fga;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 197:1 - 200:89";
        in
          __pattern0 __patternFail;
      foldMapWithIndex = dictMonoid: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              fga = v;
            in
              foldMapWithIndex dictFoldableWithIndex dictMonoid (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (foldMapWithIndex dictFoldableWithIndex1 dictMonoid) (module."Data.Tuple".curry f1)) fga;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 197:1 - 200:89";
        in
          __pattern0 __patternFail;
      "Foldable0" = __unused: module."Data.Foldable".foldableCompose (dictFoldableWithIndex."Foldable0" module."Prim".undefined) (dictFoldableWithIndex1."Foldable0" module."Prim".undefined);
    };
  foldableWithIndexCoproduct = dictFoldableWithIndex: dictFoldableWithIndex1: 
    { foldrWithIndex = f: z: module."Data.Functor.Coproduct".coproduct (foldrWithIndex dictFoldableWithIndex (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f module."Data.Either".Left) z) (foldrWithIndex dictFoldableWithIndex1 (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f module."Data.Either".Right) z);
      foldlWithIndex = f: z: module."Data.Functor.Coproduct".coproduct (foldlWithIndex dictFoldableWithIndex (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f module."Data.Either".Left) z) (foldlWithIndex dictFoldableWithIndex1 (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f module."Data.Either".Right) z);
      foldMapWithIndex = dictMonoid: f: module."Data.Functor.Coproduct".coproduct (foldMapWithIndex dictFoldableWithIndex dictMonoid (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f module."Data.Either".Left)) (foldMapWithIndex dictFoldableWithIndex1 dictMonoid (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f module."Data.Either".Right));
      "Foldable0" = __unused: module."Data.Foldable".foldableCoproduct (dictFoldableWithIndex."Foldable0" module."Prim".undefined) (dictFoldableWithIndex1."Foldable0" module."Prim".undefined);
    };
  foldableWithIndexProduct = dictFoldableWithIndex: dictFoldableWithIndex1: 
    { foldrWithIndex = f: z: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  z1 = z;
                  fa = v.__field0;
                  ga = v.__field1;
                in
                  foldrWithIndex dictFoldableWithIndex (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f1 module."Data.Either".Left) (foldrWithIndex dictFoldableWithIndex1 (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f1 module."Data.Either".Right) z1 ga) fa
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 187:1 - 190:117";
        in
          __pattern0 __patternFail;
      foldlWithIndex = f: z: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  z1 = z;
                  fa = v.__field0;
                  ga = v.__field1;
                in
                  foldlWithIndex dictFoldableWithIndex1 (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f1 module."Data.Either".Right) (foldlWithIndex dictFoldableWithIndex (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f1 module."Data.Either".Left) z1 fa) ga
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 187:1 - 190:117";
        in
          __pattern0 __patternFail;
      foldMapWithIndex = dictMonoid: f: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  fa = v.__field0;
                  ga = v.__field1;
                in
                  module."Data.Semigroup".append (dictMonoid."Semigroup0" module."Prim".undefined) (foldMapWithIndex dictFoldableWithIndex dictMonoid (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f1 module."Data.Either".Left) fa) (foldMapWithIndex dictFoldableWithIndex1 dictMonoid (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f1 module."Data.Either".Right) ga)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 187:1 - 190:117";
        in
          __pattern0 __patternFail;
      "Foldable0" = __unused: module."Data.Foldable".foldableProduct (dictFoldableWithIndex."Foldable0" module."Prim".undefined) (dictFoldableWithIndex1."Foldable0" module."Prim".undefined);
    };
  foldlWithIndexDefault = dictFoldableWithIndex: c: u: xs: module."Data.Newtype".unwrap module."Prim".undefined (module."Data.Newtype".unwrap module."Prim".undefined (foldMapWithIndex dictFoldableWithIndex (module."Data.Monoid.Dual".monoidDual (module."Data.Monoid.Endo".monoidEndo module."Control.Category".categoryFn)) (i: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Monoid.Dual".Dual (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Monoid.Endo".Endo (module."Data.Function".flip (c i)))) xs)) u;
  foldrWithIndexDefault = dictFoldableWithIndex: c: u: xs: module."Data.Newtype".unwrap module."Prim".undefined (foldMapWithIndex dictFoldableWithIndex (module."Data.Monoid.Endo".monoidEndo module."Control.Category".categoryFn) (i: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Monoid.Endo".Endo (c i)) xs) u;
  surroundMapWithIndex = dictFoldableWithIndex: dictSemigroup: d: t: f: 
    let
      joined = i: a: m: module."Data.Semigroup".append dictSemigroup d (module."Data.Semigroup".append dictSemigroup (t i a) m);
    in
      module."Data.Newtype".unwrap module."Prim".undefined (foldMapWithIndex dictFoldableWithIndex (module."Data.Monoid.Endo".monoidEndo module."Control.Category".categoryFn) joined f) d;
  foldMapDefault = dictFoldableWithIndex: dictMonoid: f: foldMapWithIndex dictFoldableWithIndex dictMonoid (module."Data.Function".const f);
  findWithIndex = dictFoldableWithIndex: p: 
    let
      go = v: v1: v2: 
        let
          __pattern0 = __fail: 
            if v1.__tag == "Nothing"
              then 
                let
                  i = v;
                  x = v2;
                in
                  
                  if p i x
                    then module."Data.Maybe".Just 
                      { index = i;
                        value = x;
                      }
                    else __fail
              else __fail;
          __pattern1 = __fail: 
            let
              r = v1;
            in
              r;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 324:5 - 328:42";
        in
          __pattern0 (__pattern1 __patternFail);
    in
      foldlWithIndex dictFoldableWithIndex go module."Data.Maybe".Nothing;
  findMapWithIndex = dictFoldableWithIndex: f: 
    let
      go = v: v1: v2: 
        let
          __pattern0 = __fail: 
            if v1.__tag == "Nothing"
              then 
                let
                  i = v;
                  x = v2;
                in
                  f i x
              else __fail;
          __pattern1 = __fail: 
            let
              r = v1;
            in
              r;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FoldableWithIndex.purs at 342:5 - 346:17";
        in
          __pattern0 (__pattern1 __patternFail);
    in
      foldlWithIndex dictFoldableWithIndex go module."Data.Maybe".Nothing;
  anyWithIndex = dictFoldableWithIndex: dictHeytingAlgebra: t: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Newtype".unwrap module."Prim".undefined) (foldMapWithIndex dictFoldableWithIndex (module."Data.Monoid.Disj".monoidDisj dictHeytingAlgebra) (i: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Monoid.Disj".Disj (t i)));
  allWithIndex = dictFoldableWithIndex: dictHeytingAlgebra: t: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Newtype".unwrap module."Prim".undefined) (foldMapWithIndex dictFoldableWithIndex (module."Data.Monoid.Conj".monoidConj dictHeytingAlgebra) (i: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Monoid.Conj".Conj (t i)));
in
  {inherit foldrWithIndex foldlWithIndex foldMapWithIndex foldrWithIndexDefault foldlWithIndexDefault foldMapWithIndexDefaultR foldMapWithIndexDefaultL foldWithIndexM traverseWithIndex_ forWithIndex_ surroundMapWithIndex allWithIndex anyWithIndex findWithIndex findMapWithIndex foldrDefault foldlDefault foldMapDefault foldableWithIndexArray foldableWithIndexMaybe foldableWithIndexFirst foldableWithIndexLast foldableWithIndexAdditive foldableWithIndexDual foldableWithIndexDisj foldableWithIndexConj foldableWithIndexMultiplicative foldableWithIndexEither foldableWithIndexTuple foldableWithIndexIdentity foldableWithIndexConst foldableWithIndexProduct foldableWithIndexCoproduct foldableWithIndexCompose foldableWithIndexApp;}
;

Data-Function_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Data.Boolean" = Data-Boolean_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Ring" = Data-Ring_default-nix;
    };
  on = f: g: x: y: f (g x) (g y);
  flip = f: b: a: f a b;
  const = a: v: a;
  applyN = f: 
    let
      go = n: acc: 
        let
          __pattern0 = __fail: 
            let
              n1 = n;
              acc1 = acc;
            in
              if module."Data.Ord".lessThanOrEq module."Data.Ord".ordInt n1 0 then acc1 else if module."Data.Boolean".otherwise then go (module."Data.Ring".sub module."Data.Ring".ringInt n1 1) (f acc1) else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Function.purs at 100:3 - 102:37";
        in
          __pattern0 __patternFail;
    in
      go;
  applyFlipped = x: f: f x;
  apply = f: x: f x;
in
  
  { inherit flip const apply applyFlipped applyN on;
    inherit (module."Control.Category") compose identity;
  }
;

Data-Functor-App_default-nix = 
let
  module = 
    { "Control.Alt" = Control-Alt_default-nix;
      "Control.Alternative" = Control-Alternative_default-nix;
      "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Comonad" = Control-Comonad_default-nix;
      "Control.Extend" = Control-Extend_default-nix;
      "Control.Lazy" = Control-Lazy_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Control.MonadPlus" = Control-MonadPlus_default-nix;
      "Control.MonadZero" = Control-MonadZero_default-nix;
      "Control.Plus" = Control-Plus_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
      "Unsafe.Coerce" = Unsafe-Coerce_default-nix;
    };
  App = x: x;
  showApp = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              fa = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(App " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow fa) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/App.purs at 36:1 - 37:44";
        in
          __pattern0 __patternFail;
    };
  semigroupApp = dictApply: dictSemigroup: 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            let
              fa1 = v;
              fa2 = v1;
            in
              module."Control.Apply".lift2 dictApply (module."Data.Semigroup".append dictSemigroup) fa1 fa2;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/App.purs at 39:1 - 40:58";
        in
          __pattern0 __patternFail;
    };
  plusApp = dictPlus: dictPlus;
  newtypeApp = {"Coercible0" = __unused: module."Prim".undefined;};
  monoidApp = dictApplicative: dictMonoid: 
    { mempty = module."Control.Applicative".pure dictApplicative (module."Data.Monoid".mempty dictMonoid);
      "Semigroup0" = __unused: semigroupApp (dictApplicative."Apply0" module."Prim".undefined) (dictMonoid."Semigroup0" module."Prim".undefined);
    };
  monadPlusApp = dictMonadPlus: dictMonadPlus;
  monadApp = dictMonad: dictMonad;
  lazyApp = dictLazy: dictLazy;
  hoistLowerApp = module."Unsafe.Coerce".unsafeCoerce;
  hoistLiftApp = module."Unsafe.Coerce".unsafeCoerce;
  hoistApp = f: v: 
    let
      __pattern0 = __fail: 
        let
          f1 = f;
          fa = v;
        in
          f1 fa;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/App.purs at 21:1 - 21:51";
    in
      __pattern0 __patternFail;
  functorApp = dictFunctor: dictFunctor;
  extendApp = dictExtend: dictExtend;
  eqApp = dictEq1: dictEq: 
    { eq = x: y: 
        let
          __pattern0 = __fail: 
            let
              l = x;
              r = y;
            in
              module."Data.Eq".eq1 dictEq1 dictEq l r;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/App.purs at 31:1 - 31:55";
        in
          __pattern0 __patternFail;
    };
  ordApp = dictOrd1: dictOrd: 
    { compare = x: y: 
        let
          __pattern0 = __fail: 
            let
              l = x;
              r = y;
            in
              module."Data.Ord".compare1 dictOrd1 dictOrd l r;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/App.purs at 33:1 - 33:59";
        in
          __pattern0 __patternFail;
      "Eq0" = __unused: eqApp (dictOrd1."Eq10" module."Prim".undefined) (dictOrd."Eq0" module."Prim".undefined);
    };
  eq1App = dictEq1: {eq1 = dictEq: module."Data.Eq".eq (eqApp dictEq1 dictEq);};
  ord1App = dictOrd1: 
    { compare1 = dictOrd: module."Data.Ord".compare (ordApp dictOrd1 dictOrd);
      "Eq10" = __unused: eq1App (dictOrd1."Eq10" module."Prim".undefined);
    };
  comonadApp = dictComonad: dictComonad;
  bindApp = dictBind: dictBind;
  applyApp = dictApply: dictApply;
  applicativeApp = dictApplicative: dictApplicative;
  alternativeApp = dictAlternative: dictAlternative;
  monadZeroApp = dictMonadZero: 
    { "Monad0" = __unused: monadApp (dictMonadZero."Monad0" module."Prim".undefined);
      "Alternative1" = __unused: alternativeApp (dictMonadZero."Alternative1" module."Prim".undefined);
      "MonadZeroIsDeprecated2" = __unused: module."Prim".undefined;
    };
  altApp = dictAlt: dictAlt;
in
  {inherit App hoistApp hoistLiftApp hoistLowerApp newtypeApp eqApp eq1App ordApp ord1App showApp semigroupApp monoidApp monadZeroApp functorApp applyApp applicativeApp bindApp monadApp altApp plusApp alternativeApp monadPlusApp lazyApp extendApp comonadApp;}
;

Data-Functor-Clown_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Biapplicative" = Control-Biapplicative_default-nix;
      "Control.Biapply" = Control-Biapply_default-nix;
      "Data.Bifunctor" = Data-Bifunctor_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Functor.Contravariant" = Data-Functor-Contravariant_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Profunctor" = Data-Profunctor_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Clown = x: x;
  showClown = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Clown " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow x) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Clown.purs at 25:1 - 26:46";
        in
          __pattern0 __patternFail;
    };
  profunctorClown = dictContravariant: 
    { dimap = f: v: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              a = v1;
            in
              module."Data.Functor.Contravariant".cmap dictContravariant f1 a;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Clown.purs at 40:1 - 41:41";
        in
          __pattern0 __patternFail;
    };
  ordClown = dictOrd: dictOrd;
  newtypeClown = {"Coercible0" = __unused: module."Prim".undefined;};
  hoistClown = f: v: 
    let
      __pattern0 = __fail: 
        let
          f1 = f;
          a = v;
        in
          f1 a;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Clown.purs at 43:1 - 43:69";
    in
      __pattern0 __patternFail;
  functorClown = 
    { map = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a = v1;
            in
              a;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Clown.purs at 28:1 - 29:28";
        in
          __pattern0 __patternFail;
    };
  eqClown = dictEq: dictEq;
  bifunctorClown = dictFunctor: 
    { bimap = f: v: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              a = v1;
            in
              module."Data.Functor".map dictFunctor f1 a;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Clown.purs at 31:1 - 32:40";
        in
          __pattern0 __patternFail;
    };
  biapplyClown = dictApply: 
    { biapply = v: v1: 
        let
          __pattern0 = __fail: 
            let
              fg = v;
              xy = v1;
            in
              module."Control.Apply".apply dictApply fg xy;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Clown.purs at 34:1 - 35:52";
        in
          __pattern0 __patternFail;
      "Bifunctor0" = __unused: bifunctorClown (dictApply."Functor0" module."Prim".undefined);
    };
  biapplicativeClown = dictApplicative: 
    { bipure = a: v: module."Control.Applicative".pure dictApplicative a;
      "Biapply0" = __unused: biapplyClown (dictApplicative."Apply0" module."Prim".undefined);
    };
in
  {inherit Clown hoistClown newtypeClown eqClown ordClown showClown functorClown bifunctorClown biapplyClown biapplicativeClown profunctorClown;}
;

Data-Functor-Compose_default-nix = 
let
  module = 
    { "Control.Alt" = Control-Alt_default-nix;
      "Control.Alternative" = Control-Alternative_default-nix;
      "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Plus" = Control-Plus_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Functor.App" = Data-Functor-App_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Compose = x: x;
  showCompose = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              fga = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Compose " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow fga) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Compose.purs at 40:1 - 41:54";
        in
          __pattern0 __patternFail;
    };
  newtypeCompose = {"Coercible0" = __unused: module."Prim".undefined;};
  functorCompose = dictFunctor: dictFunctor1: 
    { map = f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              fga = v;
            in
              module."Data.Function".apply Compose (module."Data.Functor".map dictFunctor (module."Data.Functor".map dictFunctor1 f1) fga);
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Compose.purs at 43:1 - 44:48";
        in
          __pattern0 __patternFail;
    };
  eqCompose = dictEq1: dictEq11: dictEq: 
    { eq = v: v1: 
        let
          __pattern0 = __fail: 
            let
              fga1 = v;
              fga2 = v1;
            in
              module."Data.Eq".eq1 dictEq1 (module."Data.Functor.App".eqApp dictEq11 dictEq) (module."Data.Functor.App".hoistLiftApp fga1) (module."Data.Functor.App".hoistLiftApp fga2);
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Compose.purs at 28:1 - 30:48";
        in
          __pattern0 __patternFail;
    };
  ordCompose = dictOrd1: dictOrd11: dictOrd: 
    { compare = v: v1: 
        let
          __pattern0 = __fail: 
            let
              fga1 = v;
              fga2 = v1;
            in
              module."Data.Ord".compare1 dictOrd1 (module."Data.Functor.App".ordApp dictOrd11 dictOrd) (module."Data.Functor.App".hoistLiftApp fga1) (module."Data.Functor.App".hoistLiftApp fga2);
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Compose.purs at 34:1 - 36:53";
        in
          __pattern0 __patternFail;
      "Eq0" = __unused: eqCompose (dictOrd1."Eq10" module."Prim".undefined) (dictOrd11."Eq10" module."Prim".undefined) (dictOrd."Eq0" module."Prim".undefined);
    };
  eq1Compose = dictEq1: dictEq11: {eq1 = dictEq: module."Data.Eq".eq (eqCompose dictEq1 dictEq11 dictEq);};
  ord1Compose = dictOrd1: dictOrd11: 
    { compare1 = dictOrd: module."Data.Ord".compare (ordCompose dictOrd1 dictOrd11 dictOrd);
      "Eq10" = __unused: eq1Compose (dictOrd1."Eq10" module."Prim".undefined) (dictOrd11."Eq10" module."Prim".undefined);
    };
  bihoistCompose = dictFunctor: natF: natG: v: 
    let
      __pattern0 = __fail: 
        let
          natF1 = natF;
          natG1 = natG;
          fga = v;
        in
          natF1 (module."Data.Functor".map dictFunctor natG1 fga);
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Compose.purs at 17:1 - 23:17";
    in
      __pattern0 __patternFail;
  applyCompose = dictApply: dictApply1: 
    { apply = v: v1: 
        let
          __pattern0 = __fail: 
            let
              f = v;
              x = v1;
            in
              module."Data.Function".apply Compose (module."Control.Apply".apply dictApply (module."Data.Functor".map (dictApply."Functor0" module."Prim".undefined) (module."Control.Apply".apply dictApply1) f) x);
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Compose.purs at 46:1 - 47:62";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: functorCompose (dictApply."Functor0" module."Prim".undefined) (dictApply1."Functor0" module."Prim".undefined);
    };
  applicativeCompose = dictApplicative: dictApplicative1: 
    { pure = module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn Compose (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Control.Applicative".pure dictApplicative) (module."Control.Applicative".pure dictApplicative1));
      "Apply0" = __unused: applyCompose (dictApplicative."Apply0" module."Prim".undefined) (dictApplicative1."Apply0" module."Prim".undefined);
    };
  altCompose = dictAlt: dictFunctor: 
    { alt = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a = v;
              b = v1;
            in
              module."Data.Function".apply Compose (module."Control.Alt".alt dictAlt a b);
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Compose.purs at 52:1 - 53:50";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: functorCompose (dictAlt."Functor0" module."Prim".undefined) dictFunctor;
    };
  plusCompose = dictPlus: dictFunctor: 
    { empty = module."Control.Plus".empty dictPlus;
      "Alt0" = __unused: altCompose (dictPlus."Alt0" module."Prim".undefined) dictFunctor;
    };
  alternativeCompose = dictAlternative: dictApplicative: 
    { "Applicative0" = __unused: applicativeCompose (dictAlternative."Applicative0" module."Prim".undefined) dictApplicative;
      "Plus1" = __unused: plusCompose (dictAlternative."Plus1" module."Prim".undefined) ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined);
    };
in
  {inherit Compose bihoistCompose newtypeCompose eqCompose eq1Compose ordCompose ord1Compose showCompose functorCompose applyCompose applicativeCompose altCompose plusCompose alternativeCompose;}
;

Data-Functor-Contravariant_default-nix = 
let
  module = 
    { "Data.Const" = Data-Const_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Void" = Data-Void_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Contravariant-Dict = x: x;
  contravariantConst = 
    { cmap = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v1;
            in
              x;
          __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Functor/Contravariant.purs at 34:1 - 35:29";
        in
          __pattern0 __patternFail;
    };
  cmap = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.cmap;
      __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Functor/Contravariant.purs at 17:3 - 17:45";
    in
      __pattern0 __patternFail;
  cmapFlipped = dictContravariant: x: f: cmap dictContravariant f x;
  coerce = dictContravariant: dictFunctor: a: module."Data.Functor".map dictFunctor module."Data.Void".absurd (cmap dictContravariant module."Data.Void".absurd a);
  imapC = dictContravariant: v: f: cmap dictContravariant f;
in
  {inherit cmap cmapFlipped coerce imapC contravariantConst;}
;

Data-Functor-Coproduct-Inject_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Either" = Data-Either_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor.Coproduct" = Data-Functor-Coproduct_default-nix;
      "Data.Maybe" = Data-Maybe_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Inject-Dict = x: x;
  prj = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.prj;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Inject.purs at 12:3 - 12:38";
    in
      __pattern0 __patternFail;
  injectReflexive = 
    { inj = module."Control.Category".identity module."Control.Category".categoryFn;
      prj = module."Data.Maybe".Just;
    };
  injectLeft = 
    { inj = module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Functor.Coproduct".Coproduct module."Data.Either".Left;
      prj = module."Data.Functor.Coproduct".coproduct module."Data.Maybe".Just (module."Data.Function".const module."Data.Maybe".Nothing);
    };
  inj = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.inj;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Inject.purs at 11:3 - 11:30";
    in
      __pattern0 __patternFail;
  injectRight = dictInject: 
    { inj = module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Functor.Coproduct".Coproduct (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Either".Right (inj dictInject));
      prj = module."Data.Functor.Coproduct".coproduct (module."Data.Function".const module."Data.Maybe".Nothing) (prj dictInject);
    };
in
  {inherit inj prj injectReflexive injectLeft injectRight;}
;

Data-Functor-Coproduct-Nested_default-nix = 
let
  module = 
    { "Data.Const" = Data-Const_default-nix;
      "Data.Either" = Data-Either_default-nix;
      "Data.Functor.Coproduct" = Data-Functor-Coproduct_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Void" = Data-Void_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  in9 = v: module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".left v))))))));
  in8 = v: module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".left v)))))));
  in7 = v: module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".left v))))));
  in6 = v: module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".left v)))));
  in5 = v: module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".left v))));
  in4 = v: module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".left v)));
  in3 = v: module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".left v));
  in2 = v: module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".left v);
  in10 = v: module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".right (module."Data.Functor.Coproduct".left v)))))))));
  in1 = module."Data.Functor.Coproduct".left;
  coproduct9 = a: b: c: d: e: f: g: h: i: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              a r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              
              let
                __pattern0 = __fail: 
                  if _1.__tag == "Left"
                    then 
                      let
                        r = _1.__field0;
                      in
                        b r
                    else __fail;
                __pattern1 = __fail: 
                  if _1.__tag == "Right"
                    then 
                      let
                        _2 = _1.__field0;
                      in
                        
                        let
                          __pattern0 = __fail: 
                            if _2.__tag == "Left"
                              then 
                                let
                                  r = _2.__field0;
                                in
                                  c r
                              else __fail;
                          __pattern1 = __fail: 
                            if _2.__tag == "Right"
                              then 
                                let
                                  _3 = _2.__field0;
                                in
                                  
                                  let
                                    __pattern0 = __fail: 
                                      if _3.__tag == "Left"
                                        then 
                                          let
                                            r = _3.__field0;
                                          in
                                            d r
                                        else __fail;
                                    __pattern1 = __fail: 
                                      if _3.__tag == "Right"
                                        then 
                                          let
                                            _4 = _3.__field0;
                                          in
                                            
                                            let
                                              __pattern0 = __fail: 
                                                if _4.__tag == "Left"
                                                  then 
                                                    let
                                                      r = _4.__field0;
                                                    in
                                                      e r
                                                  else __fail;
                                              __pattern1 = __fail: 
                                                if _4.__tag == "Right"
                                                  then 
                                                    let
                                                      _5 = _4.__field0;
                                                    in
                                                      
                                                      let
                                                        __pattern0 = __fail: 
                                                          if _5.__tag == "Left"
                                                            then 
                                                              let
                                                                r = _5.__field0;
                                                              in
                                                                f r
                                                            else __fail;
                                                        __pattern1 = __fail: 
                                                          if _5.__tag == "Right"
                                                            then 
                                                              let
                                                                _6 = _5.__field0;
                                                              in
                                                                
                                                                let
                                                                  __pattern0 = __fail: 
                                                                    if _6.__tag == "Left"
                                                                      then 
                                                                        let
                                                                          r = _6.__field0;
                                                                        in
                                                                          g r
                                                                      else __fail;
                                                                  __pattern1 = __fail: 
                                                                    if _6.__tag == "Right"
                                                                      then 
                                                                        let
                                                                          _7 = _6.__field0;
                                                                        in
                                                                          
                                                                          let
                                                                            __pattern0 = __fail: 
                                                                              if _7.__tag == "Left"
                                                                                then 
                                                                                  let
                                                                                    r = _7.__field0;
                                                                                  in
                                                                                    h r
                                                                                else __fail;
                                                                            __pattern1 = __fail: 
                                                                              if _7.__tag == "Right"
                                                                                then 
                                                                                  let
                                                                                    _8 = _7.__field0;
                                                                                  in
                                                                                    
                                                                                    let
                                                                                      __pattern0 = __fail: 
                                                                                        if _8.__tag == "Left"
                                                                                          then 
                                                                                            let
                                                                                              r = _8.__field0;
                                                                                            in
                                                                                              i r
                                                                                          else __fail;
                                                                                      __pattern1 = __fail: 
                                                                                        if _8.__tag == "Right"
                                                                                          then 
                                                                                            let
                                                                                              _9 = _8.__field0;
                                                                                            in
                                                                                              module."Data.Void".absurd (module."Data.Newtype".unwrap module."Prim".undefined _9)
                                                                                          else __fail;
                                                                                      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 248:41 - 250:61";
                                                                                    in
                                                                                      __pattern0 (__pattern1 __patternFail)
                                                                                else __fail;
                                                                            __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 246:39 - 250:61";
                                                                          in
                                                                            __pattern0 (__pattern1 __patternFail)
                                                                      else __fail;
                                                                  __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 244:37 - 250:61";
                                                                in
                                                                  __pattern0 (__pattern1 __patternFail)
                                                            else __fail;
                                                        __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 242:35 - 250:61";
                                                      in
                                                        __pattern0 (__pattern1 __patternFail)
                                                  else __fail;
                                              __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 240:33 - 250:61";
                                            in
                                              __pattern0 (__pattern1 __patternFail)
                                        else __fail;
                                    __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 238:31 - 250:61";
                                  in
                                    __pattern0 (__pattern1 __patternFail)
                              else __fail;
                          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 236:29 - 250:61";
                        in
                          __pattern0 (__pattern1 __patternFail)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 234:27 - 250:61";
              in
                __pattern0 (__pattern1 __patternFail)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 232:34 - 250:61";
    in
      __pattern0 (__pattern1 __patternFail);
  coproduct8 = a: b: c: d: e: f: g: h: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              a r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              
              let
                __pattern0 = __fail: 
                  if _1.__tag == "Left"
                    then 
                      let
                        r = _1.__field0;
                      in
                        b r
                    else __fail;
                __pattern1 = __fail: 
                  if _1.__tag == "Right"
                    then 
                      let
                        _2 = _1.__field0;
                      in
                        
                        let
                          __pattern0 = __fail: 
                            if _2.__tag == "Left"
                              then 
                                let
                                  r = _2.__field0;
                                in
                                  c r
                              else __fail;
                          __pattern1 = __fail: 
                            if _2.__tag == "Right"
                              then 
                                let
                                  _3 = _2.__field0;
                                in
                                  
                                  let
                                    __pattern0 = __fail: 
                                      if _3.__tag == "Left"
                                        then 
                                          let
                                            r = _3.__field0;
                                          in
                                            d r
                                        else __fail;
                                    __pattern1 = __fail: 
                                      if _3.__tag == "Right"
                                        then 
                                          let
                                            _4 = _3.__field0;
                                          in
                                            
                                            let
                                              __pattern0 = __fail: 
                                                if _4.__tag == "Left"
                                                  then 
                                                    let
                                                      r = _4.__field0;
                                                    in
                                                      e r
                                                  else __fail;
                                              __pattern1 = __fail: 
                                                if _4.__tag == "Right"
                                                  then 
                                                    let
                                                      _5 = _4.__field0;
                                                    in
                                                      
                                                      let
                                                        __pattern0 = __fail: 
                                                          if _5.__tag == "Left"
                                                            then 
                                                              let
                                                                r = _5.__field0;
                                                              in
                                                                f r
                                                            else __fail;
                                                        __pattern1 = __fail: 
                                                          if _5.__tag == "Right"
                                                            then 
                                                              let
                                                                _6 = _5.__field0;
                                                              in
                                                                
                                                                let
                                                                  __pattern0 = __fail: 
                                                                    if _6.__tag == "Left"
                                                                      then 
                                                                        let
                                                                          r = _6.__field0;
                                                                        in
                                                                          g r
                                                                      else __fail;
                                                                  __pattern1 = __fail: 
                                                                    if _6.__tag == "Right"
                                                                      then 
                                                                        let
                                                                          _7 = _6.__field0;
                                                                        in
                                                                          
                                                                          let
                                                                            __pattern0 = __fail: 
                                                                              if _7.__tag == "Left"
                                                                                then 
                                                                                  let
                                                                                    r = _7.__field0;
                                                                                  in
                                                                                    h r
                                                                                else __fail;
                                                                            __pattern1 = __fail: 
                                                                              if _7.__tag == "Right"
                                                                                then 
                                                                                  let
                                                                                    _8 = _7.__field0;
                                                                                  in
                                                                                    module."Data.Void".absurd (module."Data.Newtype".unwrap module."Prim".undefined _8)
                                                                                else __fail;
                                                                            __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 227:39 - 229:59";
                                                                          in
                                                                            __pattern0 (__pattern1 __patternFail)
                                                                      else __fail;
                                                                  __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 225:37 - 229:59";
                                                                in
                                                                  __pattern0 (__pattern1 __patternFail)
                                                            else __fail;
                                                        __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 223:35 - 229:59";
                                                      in
                                                        __pattern0 (__pattern1 __patternFail)
                                                  else __fail;
                                              __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 221:33 - 229:59";
                                            in
                                              __pattern0 (__pattern1 __patternFail)
                                        else __fail;
                                    __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 219:31 - 229:59";
                                  in
                                    __pattern0 (__pattern1 __patternFail)
                              else __fail;
                          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 217:29 - 229:59";
                        in
                          __pattern0 (__pattern1 __patternFail)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 215:27 - 229:59";
              in
                __pattern0 (__pattern1 __patternFail)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 213:32 - 229:59";
    in
      __pattern0 (__pattern1 __patternFail);
  coproduct7 = a: b: c: d: e: f: g: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              a r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              
              let
                __pattern0 = __fail: 
                  if _1.__tag == "Left"
                    then 
                      let
                        r = _1.__field0;
                      in
                        b r
                    else __fail;
                __pattern1 = __fail: 
                  if _1.__tag == "Right"
                    then 
                      let
                        _2 = _1.__field0;
                      in
                        
                        let
                          __pattern0 = __fail: 
                            if _2.__tag == "Left"
                              then 
                                let
                                  r = _2.__field0;
                                in
                                  c r
                              else __fail;
                          __pattern1 = __fail: 
                            if _2.__tag == "Right"
                              then 
                                let
                                  _3 = _2.__field0;
                                in
                                  
                                  let
                                    __pattern0 = __fail: 
                                      if _3.__tag == "Left"
                                        then 
                                          let
                                            r = _3.__field0;
                                          in
                                            d r
                                        else __fail;
                                    __pattern1 = __fail: 
                                      if _3.__tag == "Right"
                                        then 
                                          let
                                            _4 = _3.__field0;
                                          in
                                            
                                            let
                                              __pattern0 = __fail: 
                                                if _4.__tag == "Left"
                                                  then 
                                                    let
                                                      r = _4.__field0;
                                                    in
                                                      e r
                                                  else __fail;
                                              __pattern1 = __fail: 
                                                if _4.__tag == "Right"
                                                  then 
                                                    let
                                                      _5 = _4.__field0;
                                                    in
                                                      
                                                      let
                                                        __pattern0 = __fail: 
                                                          if _5.__tag == "Left"
                                                            then 
                                                              let
                                                                r = _5.__field0;
                                                              in
                                                                f r
                                                            else __fail;
                                                        __pattern1 = __fail: 
                                                          if _5.__tag == "Right"
                                                            then 
                                                              let
                                                                _6 = _5.__field0;
                                                              in
                                                                
                                                                let
                                                                  __pattern0 = __fail: 
                                                                    if _6.__tag == "Left"
                                                                      then 
                                                                        let
                                                                          r = _6.__field0;
                                                                        in
                                                                          g r
                                                                      else __fail;
                                                                  __pattern1 = __fail: 
                                                                    if _6.__tag == "Right"
                                                                      then 
                                                                        let
                                                                          _7 = _6.__field0;
                                                                        in
                                                                          module."Data.Void".absurd (module."Data.Newtype".unwrap module."Prim".undefined _7)
                                                                      else __fail;
                                                                  __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 208:37 - 210:57";
                                                                in
                                                                  __pattern0 (__pattern1 __patternFail)
                                                            else __fail;
                                                        __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 206:35 - 210:57";
                                                      in
                                                        __pattern0 (__pattern1 __patternFail)
                                                  else __fail;
                                              __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 204:33 - 210:57";
                                            in
                                              __pattern0 (__pattern1 __patternFail)
                                        else __fail;
                                    __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 202:31 - 210:57";
                                  in
                                    __pattern0 (__pattern1 __patternFail)
                              else __fail;
                          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 200:29 - 210:57";
                        in
                          __pattern0 (__pattern1 __patternFail)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 198:27 - 210:57";
              in
                __pattern0 (__pattern1 __patternFail)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 196:30 - 210:57";
    in
      __pattern0 (__pattern1 __patternFail);
  coproduct6 = a: b: c: d: e: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              a r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              
              let
                __pattern0 = __fail: 
                  if _1.__tag == "Left"
                    then 
                      let
                        r = _1.__field0;
                      in
                        b r
                    else __fail;
                __pattern1 = __fail: 
                  if _1.__tag == "Right"
                    then 
                      let
                        _2 = _1.__field0;
                      in
                        
                        let
                          __pattern0 = __fail: 
                            if _2.__tag == "Left"
                              then 
                                let
                                  r = _2.__field0;
                                in
                                  c r
                              else __fail;
                          __pattern1 = __fail: 
                            if _2.__tag == "Right"
                              then 
                                let
                                  _3 = _2.__field0;
                                in
                                  
                                  let
                                    __pattern0 = __fail: 
                                      if _3.__tag == "Left"
                                        then 
                                          let
                                            r = _3.__field0;
                                          in
                                            d r
                                        else __fail;
                                    __pattern1 = __fail: 
                                      if _3.__tag == "Right"
                                        then 
                                          let
                                            _4 = _3.__field0;
                                          in
                                            
                                            let
                                              __pattern0 = __fail: 
                                                if _4.__tag == "Left"
                                                  then 
                                                    let
                                                      r = _4.__field0;
                                                    in
                                                      e r
                                                  else __fail;
                                              __pattern1 = __fail: 
                                                if _4.__tag == "Right"
                                                  then 
                                                    let
                                                      _5 = _4.__field0;
                                                    in
                                                      
                                                      let
                                                        __pattern0 = __fail: 
                                                          if _5.__tag == "Left"
                                                            then 
                                                              let
                                                                r = _5.__field0;
                                                              in
                                                                f r
                                                            else __fail;
                                                        __pattern1 = __fail: 
                                                          if _5.__tag == "Right"
                                                            then 
                                                              let
                                                                _6 = _5.__field0;
                                                              in
                                                                module."Data.Void".absurd (module."Data.Newtype".unwrap module."Prim".undefined _6)
                                                            else __fail;
                                                        __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 191:35 - 193:55";
                                                      in
                                                        __pattern0 (__pattern1 __patternFail)
                                                  else __fail;
                                              __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 189:33 - 193:55";
                                            in
                                              __pattern0 (__pattern1 __patternFail)
                                        else __fail;
                                    __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 187:31 - 193:55";
                                  in
                                    __pattern0 (__pattern1 __patternFail)
                              else __fail;
                          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 185:29 - 193:55";
                        in
                          __pattern0 (__pattern1 __patternFail)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 183:27 - 193:55";
              in
                __pattern0 (__pattern1 __patternFail)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 181:28 - 193:55";
    in
      __pattern0 (__pattern1 __patternFail);
  coproduct5 = a: b: c: d: e: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              a r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              
              let
                __pattern0 = __fail: 
                  if _1.__tag == "Left"
                    then 
                      let
                        r = _1.__field0;
                      in
                        b r
                    else __fail;
                __pattern1 = __fail: 
                  if _1.__tag == "Right"
                    then 
                      let
                        _2 = _1.__field0;
                      in
                        
                        let
                          __pattern0 = __fail: 
                            if _2.__tag == "Left"
                              then 
                                let
                                  r = _2.__field0;
                                in
                                  c r
                              else __fail;
                          __pattern1 = __fail: 
                            if _2.__tag == "Right"
                              then 
                                let
                                  _3 = _2.__field0;
                                in
                                  
                                  let
                                    __pattern0 = __fail: 
                                      if _3.__tag == "Left"
                                        then 
                                          let
                                            r = _3.__field0;
                                          in
                                            d r
                                        else __fail;
                                    __pattern1 = __fail: 
                                      if _3.__tag == "Right"
                                        then 
                                          let
                                            _4 = _3.__field0;
                                          in
                                            
                                            let
                                              __pattern0 = __fail: 
                                                if _4.__tag == "Left"
                                                  then 
                                                    let
                                                      r = _4.__field0;
                                                    in
                                                      e r
                                                  else __fail;
                                              __pattern1 = __fail: 
                                                if _4.__tag == "Right"
                                                  then 
                                                    let
                                                      _5 = _4.__field0;
                                                    in
                                                      module."Data.Void".absurd (module."Data.Newtype".unwrap module."Prim".undefined _5)
                                                  else __fail;
                                              __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 176:33 - 178:53";
                                            in
                                              __pattern0 (__pattern1 __patternFail)
                                        else __fail;
                                    __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 174:31 - 178:53";
                                  in
                                    __pattern0 (__pattern1 __patternFail)
                              else __fail;
                          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 172:29 - 178:53";
                        in
                          __pattern0 (__pattern1 __patternFail)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 170:27 - 178:53";
              in
                __pattern0 (__pattern1 __patternFail)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 168:26 - 178:53";
    in
      __pattern0 (__pattern1 __patternFail);
  coproduct4 = a: b: c: d: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              a r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              
              let
                __pattern0 = __fail: 
                  if _1.__tag == "Left"
                    then 
                      let
                        r = _1.__field0;
                      in
                        b r
                    else __fail;
                __pattern1 = __fail: 
                  if _1.__tag == "Right"
                    then 
                      let
                        _2 = _1.__field0;
                      in
                        
                        let
                          __pattern0 = __fail: 
                            if _2.__tag == "Left"
                              then 
                                let
                                  r = _2.__field0;
                                in
                                  c r
                              else __fail;
                          __pattern1 = __fail: 
                            if _2.__tag == "Right"
                              then 
                                let
                                  _3 = _2.__field0;
                                in
                                  
                                  let
                                    __pattern0 = __fail: 
                                      if _3.__tag == "Left"
                                        then 
                                          let
                                            r = _3.__field0;
                                          in
                                            d r
                                        else __fail;
                                    __pattern1 = __fail: 
                                      if _3.__tag == "Right"
                                        then 
                                          let
                                            _4 = _3.__field0;
                                          in
                                            module."Data.Void".absurd (module."Data.Newtype".unwrap module."Prim".undefined _4)
                                        else __fail;
                                    __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 163:31 - 165:51";
                                  in
                                    __pattern0 (__pattern1 __patternFail)
                              else __fail;
                          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 161:29 - 165:51";
                        in
                          __pattern0 (__pattern1 __patternFail)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 159:27 - 165:51";
              in
                __pattern0 (__pattern1 __patternFail)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 157:24 - 165:51";
    in
      __pattern0 (__pattern1 __patternFail);
  coproduct3 = a: b: c: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              a r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              
              let
                __pattern0 = __fail: 
                  if _1.__tag == "Left"
                    then 
                      let
                        r = _1.__field0;
                      in
                        b r
                    else __fail;
                __pattern1 = __fail: 
                  if _1.__tag == "Right"
                    then 
                      let
                        _2 = _1.__field0;
                      in
                        
                        let
                          __pattern0 = __fail: 
                            if _2.__tag == "Left"
                              then 
                                let
                                  r = _2.__field0;
                                in
                                  c r
                              else __fail;
                          __pattern1 = __fail: 
                            if _2.__tag == "Right"
                              then 
                                let
                                  _3 = _2.__field0;
                                in
                                  module."Data.Void".absurd (module."Data.Newtype".unwrap module."Prim".undefined _3)
                              else __fail;
                          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 152:29 - 154:49";
                        in
                          __pattern0 (__pattern1 __patternFail)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 150:27 - 154:49";
              in
                __pattern0 (__pattern1 __patternFail)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 148:22 - 154:49";
    in
      __pattern0 (__pattern1 __patternFail);
  coproduct2 = a: b: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              a r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              
              let
                __pattern0 = __fail: 
                  if _1.__tag == "Left"
                    then 
                      let
                        r = _1.__field0;
                      in
                        b r
                    else __fail;
                __pattern1 = __fail: 
                  if _1.__tag == "Right"
                    then 
                      let
                        _2 = _1.__field0;
                      in
                        module."Data.Void".absurd (module."Data.Newtype".unwrap module."Prim".undefined _2)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 143:27 - 145:47";
              in
                __pattern0 (__pattern1 __patternFail)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 141:20 - 145:47";
    in
      __pattern0 (__pattern1 __patternFail);
  coproduct10 = a: b: c: d: e: f: g: h: i: j: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              a r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              
              let
                __pattern0 = __fail: 
                  if _1.__tag == "Left"
                    then 
                      let
                        r = _1.__field0;
                      in
                        b r
                    else __fail;
                __pattern1 = __fail: 
                  if _1.__tag == "Right"
                    then 
                      let
                        _2 = _1.__field0;
                      in
                        
                        let
                          __pattern0 = __fail: 
                            if _2.__tag == "Left"
                              then 
                                let
                                  r = _2.__field0;
                                in
                                  c r
                              else __fail;
                          __pattern1 = __fail: 
                            if _2.__tag == "Right"
                              then 
                                let
                                  _3 = _2.__field0;
                                in
                                  
                                  let
                                    __pattern0 = __fail: 
                                      if _3.__tag == "Left"
                                        then 
                                          let
                                            r = _3.__field0;
                                          in
                                            d r
                                        else __fail;
                                    __pattern1 = __fail: 
                                      if _3.__tag == "Right"
                                        then 
                                          let
                                            _4 = _3.__field0;
                                          in
                                            
                                            let
                                              __pattern0 = __fail: 
                                                if _4.__tag == "Left"
                                                  then 
                                                    let
                                                      r = _4.__field0;
                                                    in
                                                      e r
                                                  else __fail;
                                              __pattern1 = __fail: 
                                                if _4.__tag == "Right"
                                                  then 
                                                    let
                                                      _5 = _4.__field0;
                                                    in
                                                      
                                                      let
                                                        __pattern0 = __fail: 
                                                          if _5.__tag == "Left"
                                                            then 
                                                              let
                                                                r = _5.__field0;
                                                              in
                                                                f r
                                                            else __fail;
                                                        __pattern1 = __fail: 
                                                          if _5.__tag == "Right"
                                                            then 
                                                              let
                                                                _6 = _5.__field0;
                                                              in
                                                                
                                                                let
                                                                  __pattern0 = __fail: 
                                                                    if _6.__tag == "Left"
                                                                      then 
                                                                        let
                                                                          r = _6.__field0;
                                                                        in
                                                                          g r
                                                                      else __fail;
                                                                  __pattern1 = __fail: 
                                                                    if _6.__tag == "Right"
                                                                      then 
                                                                        let
                                                                          _7 = _6.__field0;
                                                                        in
                                                                          
                                                                          let
                                                                            __pattern0 = __fail: 
                                                                              if _7.__tag == "Left"
                                                                                then 
                                                                                  let
                                                                                    r = _7.__field0;
                                                                                  in
                                                                                    h r
                                                                                else __fail;
                                                                            __pattern1 = __fail: 
                                                                              if _7.__tag == "Right"
                                                                                then 
                                                                                  let
                                                                                    _8 = _7.__field0;
                                                                                  in
                                                                                    
                                                                                    let
                                                                                      __pattern0 = __fail: 
                                                                                        if _8.__tag == "Left"
                                                                                          then 
                                                                                            let
                                                                                              r = _8.__field0;
                                                                                            in
                                                                                              i r
                                                                                          else __fail;
                                                                                      __pattern1 = __fail: 
                                                                                        if _8.__tag == "Right"
                                                                                          then 
                                                                                            let
                                                                                              _9 = _8.__field0;
                                                                                            in
                                                                                              
                                                                                              let
                                                                                                __pattern0 = __fail: 
                                                                                                  if _9.__tag == "Left"
                                                                                                    then 
                                                                                                      let
                                                                                                        r = _9.__field0;
                                                                                                      in
                                                                                                        j r
                                                                                                    else __fail;
                                                                                                __pattern1 = __fail: 
                                                                                                  if _9.__tag == "Right"
                                                                                                    then 
                                                                                                      let
                                                                                                        _10 = _9.__field0;
                                                                                                      in
                                                                                                        module."Data.Void".absurd (module."Data.Newtype".unwrap module."Prim".undefined _10)
                                                                                                    else __fail;
                                                                                                __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 271:43 - 273:65";
                                                                                              in
                                                                                                __pattern0 (__pattern1 __patternFail)
                                                                                          else __fail;
                                                                                      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 269:41 - 273:65";
                                                                                    in
                                                                                      __pattern0 (__pattern1 __patternFail)
                                                                                else __fail;
                                                                            __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 267:39 - 273:65";
                                                                          in
                                                                            __pattern0 (__pattern1 __patternFail)
                                                                      else __fail;
                                                                  __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 265:37 - 273:65";
                                                                in
                                                                  __pattern0 (__pattern1 __patternFail)
                                                            else __fail;
                                                        __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 263:35 - 273:65";
                                                      in
                                                        __pattern0 (__pattern1 __patternFail)
                                                  else __fail;
                                              __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 261:33 - 273:65";
                                            in
                                              __pattern0 (__pattern1 __patternFail)
                                        else __fail;
                                    __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 259:31 - 273:65";
                                  in
                                    __pattern0 (__pattern1 __patternFail)
                              else __fail;
                          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 257:29 - 273:65";
                        in
                          __pattern0 (__pattern1 __patternFail)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 255:27 - 273:65";
              in
                __pattern0 (__pattern1 __patternFail)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 253:37 - 273:65";
    in
      __pattern0 (__pattern1 __patternFail);
  coproduct1 = y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              r
          else __fail;
      __pattern1 = __fail: 
        if y.__tag == "Right"
          then 
            let
              _1 = y.__field0;
            in
              module."Data.Void".absurd (module."Data.Newtype".unwrap module."Prim".undefined _1)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 136:16 - 138:45";
    in
      __pattern0 (__pattern1 __patternFail);
  at9 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Right" && y.__field0.__tag == "Right" && y.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Left"
          then 
            let
              r = y.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 126:13 - 128:9";
    in
      __pattern0 (__pattern1 __patternFail);
  at8 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Right" && y.__field0.__tag == "Right" && y.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Left"
          then 
            let
              r = y.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 121:13 - 123:9";
    in
      __pattern0 (__pattern1 __patternFail);
  at7 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Right" && y.__field0.__tag == "Right" && y.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Left"
          then 
            let
              r = y.__field0.__field0.__field0.__field0.__field0.__field0.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 116:13 - 118:9";
    in
      __pattern0 (__pattern1 __patternFail);
  at6 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Right" && y.__field0.__tag == "Right" && y.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__tag == "Left"
          then 
            let
              r = y.__field0.__field0.__field0.__field0.__field0.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 111:13 - 113:9";
    in
      __pattern0 (__pattern1 __patternFail);
  at5 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Right" && y.__field0.__tag == "Right" && y.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__tag == "Left"
          then 
            let
              r = y.__field0.__field0.__field0.__field0.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 106:13 - 108:9";
    in
      __pattern0 (__pattern1 __patternFail);
  at4 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Right" && y.__field0.__tag == "Right" && y.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__tag == "Left"
          then 
            let
              r = y.__field0.__field0.__field0.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 101:13 - 103:9";
    in
      __pattern0 (__pattern1 __patternFail);
  at3 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Right" && y.__field0.__tag == "Right" && y.__field0.__field0.__tag == "Left"
          then 
            let
              r = y.__field0.__field0.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 96:13 - 98:9";
    in
      __pattern0 (__pattern1 __patternFail);
  at2 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Right" && y.__field0.__tag == "Left"
          then 
            let
              r = y.__field0.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 91:13 - 93:9";
    in
      __pattern0 (__pattern1 __patternFail);
  at10 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Right" && y.__field0.__tag == "Right" && y.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Right" && y.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__tag == "Left"
          then 
            let
              r = y.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 131:14 - 133:9";
    in
      __pattern0 (__pattern1 __patternFail);
  at1 = b: f: y: 
    let
      __pattern0 = __fail: 
        if y.__tag == "Left"
          then 
            let
              r = y.__field0;
            in
              f r
          else __fail;
      __pattern1 = __fail: b;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct/Nested.purs at 86:13 - 88:9";
    in
      __pattern0 (__pattern1 __patternFail);
in
  {inherit in1 in2 in3 in4 in5 in6 in7 in8 in9 in10 at1 at2 at3 at4 at5 at6 at7 at8 at9 at10 coproduct1 coproduct2 coproduct3 coproduct4 coproduct5 coproduct6 coproduct7 coproduct8 coproduct9 coproduct10;}
;

Data-Functor-Coproduct_default-nix = 
let
  module = 
    { "Control.Comonad" = Control-Comonad_default-nix;
      "Control.Extend" = Control-Extend_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Bifunctor" = Data-Bifunctor_default-nix;
      "Data.Either" = Data-Either_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Coproduct = x: x;
  showCoproduct = dictShow: dictShow1: 
    { show = v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Left"
              then 
                let
                  fa = v.__field0;
                in
                  module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(left " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow fa) ")")
              else __fail;
          __pattern1 = __fail: 
            if v.__tag == "Right"
              then 
                let
                  ga = v.__field0;
                in
                  module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(right " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow1 ga) ")")
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct.purs at 63:1 - 65:60";
        in
          __pattern0 (__pattern1 __patternFail);
    };
  right = ga: module."Data.Either".Right ga;
  newtypeCoproduct = {"Coercible0" = __unused: module."Prim".undefined;};
  left = fa: module."Data.Either".Left fa;
  functorCoproduct = dictFunctor: dictFunctor1: 
    { map = f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              e = v;
            in
              module."Data.Bifunctor".bimap module."Data.Bifunctor".bifunctorEither (module."Data.Functor".map dictFunctor f1) (module."Data.Functor".map dictFunctor1 f1) e;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct.purs at 67:1 - 68:60";
        in
          __pattern0 __patternFail;
    };
  eq1Coproduct = dictEq1: dictEq11: 
    { eq1 = dictEq: v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              y = v1;
            in
              
              let
                __pattern0 = __fail: 
                  if x.__tag == "Left" && y.__tag == "Left"
                    then 
                      let
                        fa = x.__field0;
                        ga = y.__field0;
                      in
                        module."Data.Eq".eq1 dictEq1 dictEq fa ga
                    else __fail;
                __pattern1 = __fail: 
                  if x.__tag == "Right" && y.__tag == "Right"
                    then 
                      let
                        fa = x.__field0;
                        ga = y.__field0;
                      in
                        module."Data.Eq".eq1 dictEq11 dictEq fa ga
                    else __fail;
                __pattern2 = __fail: false;
                __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct.purs at 47:5 - 50:20";
              in
                __pattern0 (__pattern1 (__pattern2 __patternFail));
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct.purs at 45:1 - 50:20";
        in
          __pattern0 __patternFail;
    };
  eqCoproduct = dictEq1: dictEq11: dictEq: {eq = module."Data.Eq".eq1 (eq1Coproduct dictEq1 dictEq11) dictEq;};
  ord1Coproduct = dictOrd1: dictOrd11: 
    { compare1 = dictOrd: v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              y = v1;
            in
              
              let
                __pattern0 = __fail: 
                  if x.__tag == "Left" && y.__tag == "Left"
                    then 
                      let
                        fa = x.__field0;
                        ga = y.__field0;
                      in
                        module."Data.Ord".compare1 dictOrd1 dictOrd fa ga
                    else __fail;
                __pattern1 = __fail: if x.__tag == "Left" then module."Data.Ordering".LT else __fail;
                __pattern2 = __fail: if y.__tag == "Left" then module."Data.Ordering".GT else __fail;
                __pattern3 = __fail: 
                  if x.__tag == "Right" && y.__tag == "Right"
                    then 
                      let
                        fa = x.__field0;
                        ga = y.__field0;
                      in
                        module."Data.Ord".compare1 dictOrd11 dictOrd fa ga
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct.purs at 57:5 - 61:43";
              in
                __pattern0 (__pattern1 (__pattern2 (__pattern3 __patternFail)));
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct.purs at 55:1 - 61:43";
        in
          __pattern0 __patternFail;
      "Eq10" = __unused: eq1Coproduct (dictOrd1."Eq10" module."Prim".undefined) (dictOrd11."Eq10" module."Prim".undefined);
    };
  ordCoproduct = dictOrd1: dictOrd11: dictOrd: 
    { compare = module."Data.Ord".compare1 (ord1Coproduct dictOrd1 dictOrd11) dictOrd;
      "Eq0" = __unused: eqCoproduct (dictOrd1."Eq10" module."Prim".undefined) (dictOrd11."Eq10" module."Prim".undefined) (dictOrd."Eq0" module."Prim".undefined);
    };
  coproduct = v: v1: v2: 
    let
      __pattern0 = __fail: 
        if v2.__tag == "Left"
          then 
            let
              f = v;
              a = v2.__field0;
            in
              f a
          else __fail;
      __pattern1 = __fail: 
        if v2.__tag == "Right"
          then 
            let
              g = v1;
              b = v2.__field0;
            in
              g b
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct.purs at 27:1 - 27:78";
    in
      __pattern0 (__pattern1 __patternFail);
  extendCoproduct = dictExtend: dictExtend1: 
    { extend = f: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn Coproduct (coproduct (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Either".Left (module."Control.Extend".extend dictExtend (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn Coproduct module."Data.Either".Left)))) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Either".Right (module."Control.Extend".extend dictExtend1 (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn Coproduct module."Data.Either".Right)))));
      "Functor0" = __unused: functorCoproduct (dictExtend."Functor0" module."Prim".undefined) (dictExtend1."Functor0" module."Prim".undefined);
    };
  comonadCoproduct = dictComonad: dictComonad1: 
    { extract = coproduct (module."Control.Comonad".extract dictComonad) (module."Control.Comonad".extract dictComonad1);
      "Extend0" = __unused: extendCoproduct (dictComonad."Extend0" module."Prim".undefined) (dictComonad1."Extend0" module."Prim".undefined);
    };
  bihoistCoproduct = natF: natG: v: 
    let
      __pattern0 = __fail: 
        let
          natF1 = natF;
          natG1 = natG;
          e = v;
        in
          module."Data.Bifunctor".bimap module."Data.Bifunctor".bifunctorEither natF1 natG1 e;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Coproduct.purs at 32:1 - 37:19";
    in
      __pattern0 __patternFail;
in
  {inherit Coproduct left right coproduct bihoistCoproduct newtypeCoproduct eqCoproduct eq1Coproduct ordCoproduct ord1Coproduct showCoproduct functorCoproduct extendCoproduct comonadCoproduct;}
;

Data-Functor-Costar_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Category" = Control-Category_default-nix;
      "Control.Comonad" = Control-Comonad_default-nix;
      "Control.Extend" = Control-Extend_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Bifunctor" = Data-Bifunctor_default-nix;
      "Data.Distributive" = Data-Distributive_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Functor.Contravariant" = Data-Functor-Contravariant_default-nix;
      "Data.Functor.Invariant" = Data-Functor-Invariant_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Profunctor" = Data-Profunctor_default-nix;
      "Data.Profunctor.Closed" = Data-Profunctor-Closed_default-nix;
      "Data.Profunctor.Strong" = Data-Profunctor-Strong_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Costar = x: x;
  semigroupoidCostar = dictExtend: 
    { compose = v: v1: 
        let
          __pattern0 = __fail: 
            let
              f = v;
              g = v1;
            in
              module."Control.Extend".composeCoKleisliFlipped dictExtend f g;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Costar.purs at 25:1 - 26:51";
        in
          __pattern0 __patternFail;
    };
  profunctorCostar = dictFunctor: 
    { dimap = f: g: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g1 = g;
              h = v;
            in
              module."Control.Semigroupoid".composeFlipped module."Control.Semigroupoid".semigroupoidFn (module."Data.Functor".map dictFunctor f1) (module."Control.Semigroupoid".composeFlipped module."Control.Semigroupoid".semigroupoidFn h g1);
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Costar.purs at 55:1 - 56:52";
        in
          __pattern0 __patternFail;
    };
  strongCostar = dictComonad: 
    { first = v: 
        let
          __pattern0 = __fail: 
            let
              f = v;
            in
              x: module."Data.Tuple".Tuple (f (module."Data.Functor".map ((dictComonad."Extend0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Tuple".fst x)) (module."Data.Tuple".snd (module."Control.Comonad".extract dictComonad x));
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Costar.purs at 58:1 - 60:75";
        in
          __pattern0 __patternFail;
      second = v: 
        let
          __pattern0 = __fail: 
            let
              f = v;
            in
              x: module."Data.Tuple".Tuple (module."Data.Tuple".fst (module."Control.Comonad".extract dictComonad x)) (f (module."Data.Functor".map ((dictComonad."Extend0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Tuple".snd x));
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Costar.purs at 58:1 - 60:75";
        in
          __pattern0 __patternFail;
      "Profunctor0" = __unused: profunctorCostar ((dictComonad."Extend0" module."Prim".undefined)."Functor0" module."Prim".undefined);
    };
  newtypeCostar = {"Coercible0" = __unused: module."Prim".undefined;};
  hoistCostar = f: v: 
    let
      __pattern0 = __fail: 
        let
          f1 = f;
          g = v;
        in
          module."Data.Profunctor".lcmap module."Data.Profunctor".profunctorFn f1 g;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Costar.purs at 65:1 - 65:72";
    in
      __pattern0 __patternFail;
  functorCostar = 
    { map = f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g = v;
            in
              module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f1 g;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Costar.purs at 31:1 - 32:38";
        in
          __pattern0 __patternFail;
    };
  invariantCostar = {imap = module."Data.Functor.Invariant".imapF functorCostar;};
  distributiveCostar = 
    { distribute = dictFunctor: f: a: module."Data.Functor".map dictFunctor 
        ( v: 
          let
            __pattern0 = __fail: 
              let
                g = v;
              in
                g a;
            __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Costar.purs at 49:36 - 49:54";
          in
            __pattern0 __patternFail
        ) f;
      collect = dictFunctor: f: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Distributive".distribute distributiveCostar dictFunctor) (module."Data.Functor".map dictFunctor f);
      "Functor0" = __unused: functorCostar;
    };
  closedCostar = dictFunctor: 
    { closed = v: 
        let
          __pattern0 = __fail: 
            let
              f = v;
            in
              g: x: f (module."Data.Functor".map dictFunctor (v1: module."Data.Function".apply v1 x) g);
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Costar.purs at 62:1 - 63:55";
        in
          __pattern0 __patternFail;
      "Profunctor0" = __unused: profunctorCostar dictFunctor;
    };
  categoryCostar = dictComonad: 
    { identity = module."Control.Comonad".extract dictComonad;
      "Semigroupoid0" = __unused: semigroupoidCostar (dictComonad."Extend0" module."Prim".undefined);
    };
  bifunctorCostar = dictContravariant: 
    { bimap = f: g: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g1 = g;
              h = v;
            in
              module."Control.Semigroupoid".composeFlipped module."Control.Semigroupoid".semigroupoidFn (module."Data.Functor.Contravariant".cmap dictContravariant f1) (module."Control.Semigroupoid".composeFlipped module."Control.Semigroupoid".semigroupoidFn h g1);
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Costar.purs at 52:1 - 53:53";
        in
          __pattern0 __patternFail;
    };
  applyCostar = 
    { apply = v: v1: 
        let
          __pattern0 = __fail: 
            let
              f = v;
              g = v1;
            in
              a: f a (g a);
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Costar.purs at 37:1 - 38:55";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: functorCostar;
    };
  bindCostar = 
    { bind = v: f: 
        let
          __pattern0 = __fail: 
            let
              m = v;
              f1 = f;
            in
              x: 
              let
                v1 = f1 (m x);
              in
                
                let
                  __pattern0 = __fail: 
                    let
                      g = v1;
                    in
                      g x;
                  __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Costar.purs at 44:36 - 44:67";
                in
                  __pattern0 __patternFail;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Costar.purs at 43:1 - 44:67";
        in
          __pattern0 __patternFail;
      "Apply0" = __unused: applyCostar;
    };
  applicativeCostar = 
    { pure = a: v: a;
      "Apply0" = __unused: applyCostar;
    };
  monadCostar = 
    { "Applicative0" = __unused: applicativeCostar;
      "Bind1" = __unused: bindCostar;
    };
in
  {inherit Costar hoistCostar newtypeCostar semigroupoidCostar categoryCostar functorCostar invariantCostar applyCostar applicativeCostar bindCostar monadCostar distributiveCostar bifunctorCostar profunctorCostar strongCostar closedCostar;}
;

Data-Functor-Flip_default-nix = 
let
  module = 
    { "Control.Biapplicative" = Control-Biapplicative_default-nix;
      "Control.Biapply" = Control-Biapply_default-nix;
      "Control.Category" = Control-Category_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Bifunctor" = Data-Bifunctor_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Functor.Contravariant" = Data-Functor-Contravariant_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Profunctor" = Data-Profunctor_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Flip = x: x;
  showFlip = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Flip " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow x) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Flip.purs at 22:1 - 23:44";
        in
          __pattern0 __patternFail;
    };
  semigroupoidFlip = dictSemigroupoid: 
    { compose = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a = v;
              b = v1;
            in
              module."Data.Function".apply Flip (module."Control.Semigroupoid".compose dictSemigroupoid b a);
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Flip.purs at 40:1 - 41:49";
        in
          __pattern0 __patternFail;
    };
  ordFlip = dictOrd: dictOrd;
  newtypeFlip = {"Coercible0" = __unused: module."Prim".undefined;};
  functorFlip = dictBifunctor: 
    { map = f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              a = v;
            in
              module."Data.Bifunctor".lmap dictBifunctor f1 a;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Flip.purs at 25:1 - 26:35";
        in
          __pattern0 __patternFail;
    };
  eqFlip = dictEq: dictEq;
  contravariantFlip = dictProfunctor: 
    { cmap = f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              a = v;
            in
              module."Data.Profunctor".lcmap dictProfunctor f1 a;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Flip.purs at 37:1 - 38:37";
        in
          __pattern0 __patternFail;
    };
  categoryFlip = dictCategory: 
    { identity = module."Control.Category".identity dictCategory;
      "Semigroupoid0" = __unused: semigroupoidFlip (dictCategory."Semigroupoid0" module."Prim".undefined);
    };
  bifunctorFlip = dictBifunctor: 
    { bimap = f: g: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g1 = g;
              a = v;
            in
              module."Data.Bifunctor".bimap dictBifunctor g1 f1 a;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Flip.purs at 28:1 - 29:42";
        in
          __pattern0 __patternFail;
    };
  biapplyFlip = dictBiapply: 
    { biapply = v: v1: 
        let
          __pattern0 = __fail: 
            let
              fg = v;
              xy = v1;
            in
              module."Control.Biapply".biapply dictBiapply fg xy;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Flip.purs at 31:1 - 32:51";
        in
          __pattern0 __patternFail;
      "Bifunctor0" = __unused: bifunctorFlip (dictBiapply."Bifunctor0" module."Prim".undefined);
    };
  biapplicativeFlip = dictBiapplicative: 
    { bipure = a: b: module."Control.Biapplicative".bipure dictBiapplicative b a;
      "Biapply0" = __unused: biapplyFlip (dictBiapplicative."Biapply0" module."Prim".undefined);
    };
in
  {inherit Flip newtypeFlip eqFlip ordFlip showFlip functorFlip bifunctorFlip biapplyFlip biapplicativeFlip contravariantFlip semigroupoidFlip categoryFlip;}
;

Data-Functor-Invariant_default-nix = 
let
  module = 
    { "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Monoid.Additive" = Data-Monoid-Additive_default-nix;
      "Data.Monoid.Alternate" = Data-Monoid-Alternate_default-nix;
      "Data.Monoid.Conj" = Data-Monoid-Conj_default-nix;
      "Data.Monoid.Disj" = Data-Monoid-Disj_default-nix;
      "Data.Monoid.Dual" = Data-Monoid-Dual_default-nix;
      "Data.Monoid.Endo" = Data-Monoid-Endo_default-nix;
      "Data.Monoid.Multiplicative" = Data-Monoid-Multiplicative_default-nix;
    };
  Invariant-Dict = x: x;
  invariantMultiplicative = 
    { imap = f: v: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v1;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/invariant/30a5b24011c13d01d64337a459d0a7de68b93351/src/Data/Functor/Invariant.purs at 47:1 - 48:53";
        in
          __pattern0 __patternFail;
    };
  invariantEndo = 
    { imap = ab: ba: v: 
        let
          __pattern0 = __fail: 
            let
              ab1 = ab;
              ba1 = ba;
              f = v;
            in
              module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn ab1 (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f ba1);
          __patternFail = builtins.throw "Pattern match failure in .spago/invariant/30a5b24011c13d01d64337a459d0a7de68b93351/src/Data/Functor/Invariant.purs at 44:1 - 45:47";
        in
          __pattern0 __patternFail;
    };
  invariantDual = 
    { imap = f: v: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v1;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/invariant/30a5b24011c13d01d64337a459d0a7de68b93351/src/Data/Functor/Invariant.purs at 41:1 - 42:33";
        in
          __pattern0 __patternFail;
    };
  invariantDisj = 
    { imap = f: v: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v1;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/invariant/30a5b24011c13d01d64337a459d0a7de68b93351/src/Data/Functor/Invariant.purs at 38:1 - 39:33";
        in
          __pattern0 __patternFail;
    };
  invariantConj = 
    { imap = f: v: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v1;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/invariant/30a5b24011c13d01d64337a459d0a7de68b93351/src/Data/Functor/Invariant.purs at 35:1 - 36:33";
        in
          __pattern0 __patternFail;
    };
  invariantAdditive = 
    { imap = f: v: v1: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v1;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/invariant/30a5b24011c13d01d64337a459d0a7de68b93351/src/Data/Functor/Invariant.purs at 32:1 - 33:41";
        in
          __pattern0 __patternFail;
    };
  imapF = dictFunctor: f: v: module."Data.Functor".map dictFunctor f;
  invariantArray = {imap = imapF module."Data.Functor".functorArray;};
  invariantFn = {imap = imapF module."Data.Functor".functorFn;};
  imap = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.imap;
      __patternFail = builtins.throw "Pattern match failure in .spago/invariant/30a5b24011c13d01d64337a459d0a7de68b93351/src/Data/Functor/Invariant.purs at 24:3 - 24:57";
    in
      __pattern0 __patternFail;
  invariantAlternate = dictInvariant: 
    { imap = f: g: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g1 = g;
              x = v;
            in
              imap dictInvariant f1 g1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/invariant/30a5b24011c13d01d64337a459d0a7de68b93351/src/Data/Functor/Invariant.purs at 50:1 - 51:50";
        in
          __pattern0 __patternFail;
    };
in
  {inherit imap imapF invariantFn invariantArray invariantAdditive invariantConj invariantDisj invariantDual invariantEndo invariantMultiplicative invariantAlternate;}
;

Data-Functor-Joker_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Biapplicative" = Control-Biapplicative_default-nix;
      "Control.Biapply" = Control-Biapply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Bifunctor" = Data-Bifunctor_default-nix;
      "Data.Either" = Data-Either_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Profunctor" = Data-Profunctor_default-nix;
      "Data.Profunctor.Choice" = Data-Profunctor-Choice_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Joker = x: x;
  showJoker = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Joker " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow x) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Joker.purs at 26:1 - 27:46";
        in
          __pattern0 __patternFail;
    };
  profunctorJoker = dictFunctor: 
    { dimap = v: g: v1: 
        let
          __pattern0 = __fail: 
            let
              g1 = g;
              a = v1;
            in
              module."Data.Functor".map dictFunctor g1 a;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Joker.purs at 52:1 - 53:40";
        in
          __pattern0 __patternFail;
    };
  ordJoker = dictOrd: dictOrd;
  newtypeJoker = {"Coercible0" = __unused: module."Prim".undefined;};
  hoistJoker = f: v: 
    let
      __pattern0 = __fail: 
        let
          f1 = f;
          a = v;
        in
          f1 a;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Joker.purs at 59:1 - 59:69";
    in
      __pattern0 __patternFail;
  functorJoker = dictFunctor: 
    { map = f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              a = v;
            in
              module."Data.Functor".map dictFunctor f1 a;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Joker.purs at 29:1 - 30:36";
        in
          __pattern0 __patternFail;
    };
  eqJoker = dictEq: dictEq;
  choiceJoker = dictFunctor: 
    { left = v: 
        let
          __pattern0 = __fail: 
            let
              f = v;
            in
              module."Data.Function".apply Joker (module."Data.Functor".map dictFunctor module."Data.Either".Left f);
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Joker.purs at 55:1 - 57:40";
        in
          __pattern0 __patternFail;
      right = v: 
        let
          __pattern0 = __fail: 
            let
              f = v;
            in
              module."Data.Function".apply Joker (module."Data.Functor".map dictFunctor module."Data.Either".Right f);
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Joker.purs at 55:1 - 57:40";
        in
          __pattern0 __patternFail;
      "Profunctor0" = __unused: profunctorJoker dictFunctor;
    };
  bifunctorJoker = dictFunctor: 
    { bimap = v: g: v1: 
        let
          __pattern0 = __fail: 
            let
              g1 = g;
              a = v1;
            in
              module."Data.Functor".map dictFunctor g1 a;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Joker.purs at 43:1 - 44:40";
        in
          __pattern0 __patternFail;
    };
  biapplyJoker = dictApply: 
    { biapply = v: v1: 
        let
          __pattern0 = __fail: 
            let
              fg = v;
              xy = v1;
            in
              module."Control.Apply".apply dictApply fg xy;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Joker.purs at 46:1 - 47:52";
        in
          __pattern0 __patternFail;
      "Bifunctor0" = __unused: bifunctorJoker (dictApply."Functor0" module."Prim".undefined);
    };
  biapplicativeJoker = dictApplicative: 
    { bipure = v: b: module."Control.Applicative".pure dictApplicative b;
      "Biapply0" = __unused: biapplyJoker (dictApplicative."Apply0" module."Prim".undefined);
    };
  applyJoker = dictApply: 
    { apply = v: v1: 
        let
          __pattern0 = __fail: 
            let
              f = v;
              g = v1;
            in
              module."Data.Function".apply Joker (module."Control.Apply".apply dictApply f g);
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Joker.purs at 32:1 - 33:48";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: functorJoker (dictApply."Functor0" module."Prim".undefined);
    };
  bindJoker = dictBind: 
    { bind = v: amb: 
        let
          __pattern0 = __fail: 
            let
              ma = v;
              amb1 = amb;
            in
              module."Data.Function".apply Joker (module."Control.Bind".bind dictBind ma (module."Control.Semigroupoid".composeFlipped module."Control.Semigroupoid".semigroupoidFn amb1 (module."Data.Newtype".un module."Prim".undefined Joker)));
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Joker.purs at 38:1 - 39:58";
        in
          __pattern0 __patternFail;
      "Apply0" = __unused: applyJoker (dictBind."Apply0" module."Prim".undefined);
    };
  applicativeJoker = dictApplicative: 
    { pure = module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn Joker (module."Control.Applicative".pure dictApplicative);
      "Apply0" = __unused: applyJoker (dictApplicative."Apply0" module."Prim".undefined);
    };
  monadJoker = dictMonad: 
    { "Applicative0" = __unused: applicativeJoker (dictMonad."Applicative0" module."Prim".undefined);
      "Bind1" = __unused: bindJoker (dictMonad."Bind1" module."Prim".undefined);
    };
in
  {inherit Joker hoistJoker newtypeJoker eqJoker ordJoker showJoker functorJoker applyJoker applicativeJoker bindJoker monadJoker bifunctorJoker biapplyJoker biapplicativeJoker profunctorJoker choiceJoker;}
;

Data-Functor-Product-Nested_default-nix = 
let
  module = 
    { "Data.Const" = Data-Const_default-nix;
      "Data.Functor.Product" = Data-Functor-Product_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  product9 = a: b: c: d: e: f: g: h: i: module."Data.Functor.Product".product a (module."Data.Functor.Product".product b (module."Data.Functor.Product".product c (module."Data.Functor.Product".product d (module."Data.Functor.Product".product e (module."Data.Functor.Product".product f (module."Data.Functor.Product".product g (module."Data.Functor.Product".product h (module."Data.Functor.Product".product i module."Data.Unit".unit))))))));
  product8 = a: b: c: d: e: f: g: h: module."Data.Functor.Product".product a (module."Data.Functor.Product".product b (module."Data.Functor.Product".product c (module."Data.Functor.Product".product d (module."Data.Functor.Product".product e (module."Data.Functor.Product".product f (module."Data.Functor.Product".product g (module."Data.Functor.Product".product h module."Data.Unit".unit)))))));
  product7 = a: b: c: d: e: f: g: module."Data.Functor.Product".product a (module."Data.Functor.Product".product b (module."Data.Functor.Product".product c (module."Data.Functor.Product".product d (module."Data.Functor.Product".product e (module."Data.Functor.Product".product f (module."Data.Functor.Product".product g module."Data.Unit".unit))))));
  product6 = a: b: c: d: e: f: module."Data.Functor.Product".product a (module."Data.Functor.Product".product b (module."Data.Functor.Product".product c (module."Data.Functor.Product".product d (module."Data.Functor.Product".product e (module."Data.Functor.Product".product f module."Data.Unit".unit)))));
  product5 = a: b: c: d: e: module."Data.Functor.Product".product a (module."Data.Functor.Product".product b (module."Data.Functor.Product".product c (module."Data.Functor.Product".product d (module."Data.Functor.Product".product e module."Data.Unit".unit))));
  product4 = a: b: c: d: module."Data.Functor.Product".product a (module."Data.Functor.Product".product b (module."Data.Functor.Product".product c (module."Data.Functor.Product".product d module."Data.Unit".unit)));
  product3 = a: b: c: module."Data.Functor.Product".product a (module."Data.Functor.Product".product b (module."Data.Functor.Product".product c module."Data.Unit".unit));
  product2 = a: b: module."Data.Functor.Product".product a (module."Data.Functor.Product".product b module."Data.Unit".unit);
  product10 = a: b: c: d: e: f: g: h: i: j: module."Data.Functor.Product".product a (module."Data.Functor.Product".product b (module."Data.Functor.Product".product c (module."Data.Functor.Product".product d (module."Data.Functor.Product".product e (module."Data.Functor.Product".product f (module."Data.Functor.Product".product g (module."Data.Functor.Product".product h (module."Data.Functor.Product".product i (module."Data.Functor.Product".product j module."Data.Unit".unit)))))))));
  product1 = a: module."Data.Functor.Product".product a module."Data.Unit".unit;
  get9 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              i = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
            in
              i
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product/Nested.purs at 108:1 - 108:65";
    in
      __pattern0 __patternFail;
  get8 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              h = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
            in
              h
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product/Nested.purs at 105:1 - 105:60";
    in
      __pattern0 __patternFail;
  get7 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              g = v.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
            in
              g
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product/Nested.purs at 102:1 - 102:56";
    in
      __pattern0 __patternFail;
  get6 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              f = v.__field1.__field1.__field1.__field1.__field1.__field0;
            in
              f
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product/Nested.purs at 99:1 - 99:52";
    in
      __pattern0 __patternFail;
  get5 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              e = v.__field1.__field1.__field1.__field1.__field0;
            in
              e
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product/Nested.purs at 96:1 - 96:48";
    in
      __pattern0 __patternFail;
  get4 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              d = v.__field1.__field1.__field1.__field0;
            in
              d
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product/Nested.purs at 93:1 - 93:44";
    in
      __pattern0 __patternFail;
  get3 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple"
          then 
            let
              c = v.__field1.__field1.__field0;
            in
              c
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product/Nested.purs at 90:1 - 90:40";
    in
      __pattern0 __patternFail;
  get2 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple"
          then 
            let
              b = v.__field1.__field0;
            in
              b
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product/Nested.purs at 87:1 - 87:36";
    in
      __pattern0 __patternFail;
  get10 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              j = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
            in
              j
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product/Nested.purs at 111:1 - 111:70";
    in
      __pattern0 __patternFail;
  get1 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple"
          then 
            let
              a = v.__field0;
            in
              a
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product/Nested.purs at 84:1 - 84:32";
    in
      __pattern0 __patternFail;
in
  {inherit product1 product2 product3 product4 product5 product6 product7 product8 product9 product10 get1 get2 get3 get4 get5 get6 get7 get8 get9 get10;}
;

Data-Functor-Product_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Bifunctor" = Data-Bifunctor_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.HeytingAlgebra" = Data-HeytingAlgebra_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Product = x: x;
  showProduct = dictShow: dictShow1: 
    { show = v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  fa = v.__field0;
                  ga = v.__field1;
                in
                  module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(product " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow fa) (module."Data.Semigroup".append module."Data.Semigroup".semigroupString " " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow1 ga) ")")))
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product.purs at 44:1 - 45:81";
        in
          __pattern0 __patternFail;
    };
  product = fa: ga: module."Data.Tuple".Tuple fa ga;
  newtypeProduct = {"Coercible0" = __unused: module."Prim".undefined;};
  functorProduct = dictFunctor: dictFunctor1: 
    { map = f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              fga = v;
            in
              module."Data.Bifunctor".bimap module."Data.Bifunctor".bifunctorTuple (module."Data.Functor".map dictFunctor f1) (module."Data.Functor".map dictFunctor1 f1) fga;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product.purs at 47:1 - 48:60";
        in
          __pattern0 __patternFail;
    };
  eq1Product = dictEq1: dictEq11: 
    { eq1 = dictEq: v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple" && v1.__tag == "Tuple"
              then 
                let
                  l1 = v.__field0;
                  r1 = v.__field1;
                  l2 = v1.__field0;
                  r2 = v1.__field1;
                in
                  module."Data.HeytingAlgebra".conj module."Data.HeytingAlgebra".heytingAlgebraBoolean (module."Data.Eq".eq1 dictEq1 dictEq l1 l2) (module."Data.Eq".eq1 dictEq11 dictEq r1 r2)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product.purs at 32:1 - 33:79";
        in
          __pattern0 __patternFail;
    };
  eqProduct = dictEq1: dictEq11: dictEq: {eq = module."Data.Eq".eq1 (eq1Product dictEq1 dictEq11) dictEq;};
  ord1Product = dictOrd1: dictOrd11: 
    { compare1 = dictOrd: v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple" && v1.__tag == "Tuple"
              then 
                let
                  l1 = v.__field0;
                  r1 = v.__field1;
                  l2 = v1.__field0;
                  r2 = v1.__field1;
                in
                  
                  let
                    v2 = module."Data.Ord".compare1 dictOrd1 dictOrd l1 l2;
                  in
                    
                    let
                      __pattern0 = __fail: if v2.__tag == "EQ" then module."Data.Ord".compare1 dictOrd11 dictOrd r1 r2 else __fail;
                      __pattern1 = __fail: 
                        let
                          o = v2;
                        in
                          o;
                      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product.purs at 40:5 - 42:13";
                    in
                      __pattern0 (__pattern1 __patternFail)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product.purs at 38:1 - 42:13";
        in
          __pattern0 __patternFail;
      "Eq10" = __unused: eq1Product (dictOrd1."Eq10" module."Prim".undefined) (dictOrd11."Eq10" module."Prim".undefined);
    };
  ordProduct = dictOrd1: dictOrd11: dictOrd: 
    { compare = module."Data.Ord".compare1 (ord1Product dictOrd1 dictOrd11) dictOrd;
      "Eq0" = __unused: eqProduct (dictOrd1."Eq10" module."Prim".undefined) (dictOrd11."Eq10" module."Prim".undefined) (dictOrd."Eq0" module."Prim".undefined);
    };
  bihoistProduct = natF: natG: v: 
    let
      __pattern0 = __fail: 
        let
          natF1 = natF;
          natG1 = natG;
          e = v;
        in
          module."Data.Bifunctor".bimap module."Data.Bifunctor".bifunctorTuple natF1 natG1 e;
      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product.purs at 19:1 - 24:17";
    in
      __pattern0 __patternFail;
  applyProduct = dictApply: dictApply1: 
    { apply = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple" && v1.__tag == "Tuple"
              then 
                let
                  f = v.__field0;
                  g = v.__field1;
                  a = v1.__field0;
                  b = v1.__field1;
                in
                  product (module."Control.Apply".apply dictApply f a) (module."Control.Apply".apply dictApply1 g b)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product.purs at 50:1 - 51:86";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: functorProduct (dictApply."Functor0" module."Prim".undefined) (dictApply1."Functor0" module."Prim".undefined);
    };
  bindProduct = dictBind: dictBind1: 
    { bind = v: f: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  fa = v.__field0;
                  ga = v.__field1;
                  f1 = f;
                in
                  product (module."Control.Bind".bind dictBind fa (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Tuple".fst (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Newtype".unwrap module."Prim".undefined) f1))) (module."Control.Bind".bind dictBind1 ga (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Tuple".snd (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Newtype".unwrap module."Prim".undefined) f1)))
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product.purs at 56:1 - 58:72";
        in
          __pattern0 __patternFail;
      "Apply0" = __unused: applyProduct (dictBind."Apply0" module."Prim".undefined) (dictBind1."Apply0" module."Prim".undefined);
    };
  applicativeProduct = dictApplicative: dictApplicative1: 
    { pure = a: product (module."Control.Applicative".pure dictApplicative a) (module."Control.Applicative".pure dictApplicative1 a);
      "Apply0" = __unused: applyProduct (dictApplicative."Apply0" module."Prim".undefined) (dictApplicative1."Apply0" module."Prim".undefined);
    };
  monadProduct = dictMonad: dictMonad1: 
    { "Applicative0" = __unused: applicativeProduct (dictMonad."Applicative0" module."Prim".undefined) (dictMonad1."Applicative0" module."Prim".undefined);
      "Bind1" = __unused: bindProduct (dictMonad."Bind1" module."Prim".undefined) (dictMonad1."Bind1" module."Prim".undefined);
    };
in
  {inherit Product product bihoistProduct newtypeProduct eqProduct eq1Product ordProduct ord1Product showProduct functorProduct applyProduct applicativeProduct bindProduct monadProduct;}
;

Data-Functor-Product2_default-nix = 
let
  module = 
    { "Control.Biapplicative" = Control-Biapplicative_default-nix;
      "Control.Biapply" = Control-Biapply_default-nix;
      "Data.Bifunctor" = Data-Bifunctor_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.HeytingAlgebra" = Data-HeytingAlgebra_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Data.Profunctor" = Data-Profunctor_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Product2 = value0: value1: 
    { __tag = "Product2";
      __field0 = value0;
      __field1 = value1;
    };
  showProduct2 = dictShow: dictShow1: 
    { show = v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product2"
              then 
                let
                  x = v.__field0;
                  y = v.__field1;
                in
                  module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Product2 " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow x) (module."Data.Semigroup".append module."Data.Semigroup".semigroupString " " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow1 y) ")")))
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product2.purs at 24:1 - 25:71";
        in
          __pattern0 __patternFail;
    };
  profunctorProduct2 = dictProfunctor: dictProfunctor1: 
    { dimap = f: g: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product2"
              then 
                let
                  f1 = f;
                  g1 = g;
                  x = v.__field0;
                  y = v.__field1;
                in
                  Product2 (module."Data.Profunctor".dimap dictProfunctor f1 g1 x) (module."Data.Profunctor".dimap dictProfunctor1 f1 g1 y)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product2.purs at 39:1 - 40:66";
        in
          __pattern0 __patternFail;
    };
  functorProduct2 = dictFunctor: dictFunctor1: 
    { map = f: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product2"
              then 
                let
                  f1 = f;
                  x = v.__field0;
                  y = v.__field1;
                in
                  Product2 (module."Data.Functor".map dictFunctor f1 x) (module."Data.Functor".map dictFunctor1 f1 y)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product2.purs at 27:1 - 28:54";
        in
          __pattern0 __patternFail;
    };
  eqProduct2 = dictEq: dictEq1: 
    { eq = x: y: 
        let
          __pattern0 = __fail: 
            if x.__tag == "Product2" && y.__tag == "Product2"
              then 
                let
                  l = x.__field0;
                  l1 = x.__field1;
                  r = y.__field0;
                  r1 = y.__field1;
                in
                  module."Data.HeytingAlgebra".conj module."Data.HeytingAlgebra".heytingAlgebraBoolean (module."Data.Eq".eq dictEq l r) (module."Data.Eq".eq dictEq1 l1 r1)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product2.purs at 20:1 - 20:80";
        in
          __pattern0 __patternFail;
    };
  ordProduct2 = dictOrd: dictOrd1: 
    { compare = x: y: 
        let
          __pattern0 = __fail: 
            if x.__tag == "Product2" && y.__tag == "Product2"
              then 
                let
                  l = x.__field0;
                  l1 = x.__field1;
                  r = y.__field0;
                  r1 = y.__field1;
                in
                  
                  let
                    v = module."Data.Ord".compare dictOrd l r;
                  in
                    
                    let
                      __pattern0 = __fail: if v.__tag == "LT" then module."Data.Ordering".LT else __fail;
                      __pattern1 = __fail: if v.__tag == "GT" then module."Data.Ordering".GT else __fail;
                      __pattern2 = __fail: module."Data.Ord".compare dictOrd1 l1 r1;
                      __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product2.purs at 22:1 - 22:84";
                    in
                      __pattern0 (__pattern1 (__pattern2 __patternFail))
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product2.purs at 22:1 - 22:84";
        in
          __pattern0 __patternFail;
      "Eq0" = __unused: eqProduct2 (dictOrd."Eq0" module."Prim".undefined) (dictOrd1."Eq0" module."Prim".undefined);
    };
  bifunctorProduct2 = dictBifunctor: dictBifunctor1: 
    { bimap = f: g: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product2"
              then 
                let
                  f1 = f;
                  g1 = g;
                  x = v.__field0;
                  y = v.__field1;
                in
                  Product2 (module."Data.Bifunctor".bimap dictBifunctor f1 g1 x) (module."Data.Bifunctor".bimap dictBifunctor1 f1 g1 y)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product2.purs at 30:1 - 31:66";
        in
          __pattern0 __patternFail;
    };
  biapplyProduct2 = dictBiapply: dictBiapply1: 
    { biapply = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product2" && v1.__tag == "Product2"
              then 
                let
                  w = v.__field0;
                  x = v.__field1;
                  y = v1.__field0;
                  z = v1.__field1;
                in
                  Product2 (module."Control.Biapply".biapply dictBiapply w y) (module."Control.Biapply".biapply dictBiapply1 x z)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/functors/5d67eb8f277da9ed2e22ba9e1b6fdd0ba00dfe3e/src/Data/Functor/Product2.purs at 33:1 - 34:79";
        in
          __pattern0 __patternFail;
      "Bifunctor0" = __unused: bifunctorProduct2 (dictBiapply."Bifunctor0" module."Prim".undefined) (dictBiapply1."Bifunctor0" module."Prim".undefined);
    };
  biapplicativeProduct2 = dictBiapplicative: dictBiapplicative1: 
    { bipure = a: b: Product2 (module."Control.Biapplicative".bipure dictBiapplicative a b) (module."Control.Biapplicative".bipure dictBiapplicative1 a b);
      "Biapply0" = __unused: biapplyProduct2 (dictBiapplicative."Biapply0" module."Prim".undefined) (dictBiapplicative1."Biapply0" module."Prim".undefined);
    };
in
  {inherit Product2 eqProduct2 ordProduct2 showProduct2 functorProduct2 bifunctorProduct2 biapplyProduct2 biapplicativeProduct2 profunctorProduct2;}
;

Data-Functor_default-nix = 
let
  module = 
    { "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Type.Proxy" = Type-Proxy_default-nix;
    };
  foreign = Data-Functor_foreign-nix;
  arrayMap = foreign.arrayMap;
  Functor-Dict = x: x;
  map = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.map;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Functor.purs at 26:3 - 26:44";
    in
      __pattern0 __patternFail;
  mapFlipped = dictFunctor: fa: f: map dictFunctor f fa;
  void = dictFunctor: map dictFunctor (module."Data.Function".const module."Data.Unit".unit);
  voidLeft = dictFunctor: f: x: map dictFunctor (module."Data.Function".const x) f;
  voidRight = dictFunctor: x: map dictFunctor (module."Data.Function".const x);
  functorProxy = {map = v: v1: module."Type.Proxy".Proxy;};
  functorFn = {map = module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn;};
  functorArray = {map = arrayMap;};
  flap = dictFunctor: ff: x: map dictFunctor (f: f x) ff;
in
  {inherit map mapFlipped void voidRight voidLeft flap functorFn functorArray functorProxy;}
;

Data-Functor_foreign-nix = 
{ arrayMap = map; }

;

Data-FunctorWithIndex_default-nix = 
let
  module = 
    { "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Bifunctor" = Data-Bifunctor_default-nix;
      "Data.Const" = Data-Const_default-nix;
      "Data.Either" = Data-Either_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Functor.App" = Data-Functor-App_default-nix;
      "Data.Functor.Compose" = Data-Functor-Compose_default-nix;
      "Data.Functor.Coproduct" = Data-Functor-Coproduct_default-nix;
      "Data.Functor.Product" = Data-Functor-Product_default-nix;
      "Data.Identity" = Data-Identity_default-nix;
      "Data.Maybe" = Data-Maybe_default-nix;
      "Data.Maybe.First" = Data-Maybe-First_default-nix;
      "Data.Maybe.Last" = Data-Maybe-Last_default-nix;
      "Data.Monoid.Additive" = Data-Monoid-Additive_default-nix;
      "Data.Monoid.Conj" = Data-Monoid-Conj_default-nix;
      "Data.Monoid.Disj" = Data-Monoid-Disj_default-nix;
      "Data.Monoid.Dual" = Data-Monoid-Dual_default-nix;
      "Data.Monoid.Multiplicative" = Data-Monoid-Multiplicative_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  foreign = Data-FunctorWithIndex_foreign-nix;
  mapWithIndexArray = foreign.mapWithIndexArray;
  FunctorWithIndex-Dict = x: x;
  mapWithIndex = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.mapWithIndex;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FunctorWithIndex.purs at 36:3 - 36:58";
    in
      __pattern0 __patternFail;
  mapDefault = dictFunctorWithIndex: f: mapWithIndex dictFunctorWithIndex (module."Data.Function".const f);
  functorWithIndexTuple = 
    { mapWithIndex = f: module."Data.Function".apply (module."Data.Functor".map module."Data.Tuple".functorTuple) (f module."Data.Unit".unit);
      "Functor0" = __unused: module."Data.Tuple".functorTuple;
    };
  functorWithIndexProduct = dictFunctorWithIndex: dictFunctorWithIndex1: 
    { mapWithIndex = f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              fga = v;
            in
              module."Data.Bifunctor".bimap module."Data.Bifunctor".bifunctorTuple (mapWithIndex dictFunctorWithIndex (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f1 module."Data.Either".Left)) (mapWithIndex dictFunctorWithIndex1 (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f1 module."Data.Either".Right)) fga;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FunctorWithIndex.purs at 79:1 - 80:110";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: module."Data.Functor.Product".functorProduct (dictFunctorWithIndex."Functor0" module."Prim".undefined) (dictFunctorWithIndex1."Functor0" module."Prim".undefined);
    };
  functorWithIndexMultiplicative = 
    { mapWithIndex = f: module."Data.Function".apply (module."Data.Functor".map module."Data.Monoid.Multiplicative".functorMultiplicative) (f module."Data.Unit".unit);
      "Functor0" = __unused: module."Data.Monoid.Multiplicative".functorMultiplicative;
    };
  functorWithIndexMaybe = 
    { mapWithIndex = f: module."Data.Function".apply (module."Data.Functor".map module."Data.Maybe".functorMaybe) (f module."Data.Unit".unit);
      "Functor0" = __unused: module."Data.Maybe".functorMaybe;
    };
  functorWithIndexLast = 
    { mapWithIndex = f: module."Data.Function".apply (module."Data.Functor".map module."Data.Maybe.Last".functorLast) (f module."Data.Unit".unit);
      "Functor0" = __unused: module."Data.Maybe.Last".functorLast;
    };
  functorWithIndexIdentity = 
    { mapWithIndex = f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              a = v;
            in
              f1 module."Data.Unit".unit a;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FunctorWithIndex.purs at 73:1 - 74:52";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: module."Data.Identity".functorIdentity;
    };
  functorWithIndexFirst = 
    { mapWithIndex = f: module."Data.Function".apply (module."Data.Functor".map module."Data.Maybe.First".functorFirst) (f module."Data.Unit".unit);
      "Functor0" = __unused: module."Data.Maybe.First".functorFirst;
    };
  functorWithIndexEither = 
    { mapWithIndex = f: module."Data.Function".apply (module."Data.Functor".map module."Data.Either".functorEither) (f module."Data.Unit".unit);
      "Functor0" = __unused: module."Data.Either".functorEither;
    };
  functorWithIndexDual = 
    { mapWithIndex = f: module."Data.Function".apply (module."Data.Functor".map module."Data.Monoid.Dual".functorDual) (f module."Data.Unit".unit);
      "Functor0" = __unused: module."Data.Monoid.Dual".functorDual;
    };
  functorWithIndexDisj = 
    { mapWithIndex = f: module."Data.Function".apply (module."Data.Functor".map module."Data.Monoid.Disj".functorDisj) (f module."Data.Unit".unit);
      "Functor0" = __unused: module."Data.Monoid.Disj".functorDisj;
    };
  functorWithIndexCoproduct = dictFunctorWithIndex: dictFunctorWithIndex1: 
    { mapWithIndex = f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              e = v;
            in
              module."Data.Bifunctor".bimap module."Data.Bifunctor".bifunctorEither (mapWithIndex dictFunctorWithIndex (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f1 module."Data.Either".Left)) (mapWithIndex dictFunctorWithIndex1 (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f1 module."Data.Either".Right)) e;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FunctorWithIndex.purs at 82:1 - 83:110";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: module."Data.Functor.Coproduct".functorCoproduct (dictFunctorWithIndex."Functor0" module."Prim".undefined) (dictFunctorWithIndex1."Functor0" module."Prim".undefined);
    };
  functorWithIndexConst = 
    { mapWithIndex = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v1;
            in
              x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FunctorWithIndex.purs at 76:1 - 77:37";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: module."Data.Const".functorConst;
    };
  functorWithIndexConj = 
    { mapWithIndex = f: module."Data.Function".apply (module."Data.Functor".map module."Data.Monoid.Conj".functorConj) (f module."Data.Unit".unit);
      "Functor0" = __unused: module."Data.Monoid.Conj".functorConj;
    };
  functorWithIndexCompose = dictFunctorWithIndex: dictFunctorWithIndex1: 
    { mapWithIndex = f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              fga = v;
            in
              module."Data.Function".apply module."Data.Functor.Compose".Compose (mapWithIndex dictFunctorWithIndex (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (mapWithIndex dictFunctorWithIndex1) (module."Data.Tuple".curry f1)) fga);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FunctorWithIndex.purs at 85:1 - 86:87";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: module."Data.Functor.Compose".functorCompose (dictFunctorWithIndex."Functor0" module."Prim".undefined) (dictFunctorWithIndex1."Functor0" module."Prim".undefined);
    };
  functorWithIndexArray = 
    { mapWithIndex = mapWithIndexArray;
      "Functor0" = __unused: module."Data.Functor".functorArray;
    };
  functorWithIndexApp = dictFunctorWithIndex: 
    { mapWithIndex = f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              module."Data.Function".apply module."Data.Functor.App".App (mapWithIndex dictFunctorWithIndex f1 x);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/FunctorWithIndex.purs at 88:1 - 89:50";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: module."Data.Functor.App".functorApp (dictFunctorWithIndex."Functor0" module."Prim".undefined);
    };
  functorWithIndexAdditive = 
    { mapWithIndex = f: module."Data.Function".apply (module."Data.Functor".map module."Data.Monoid.Additive".functorAdditive) (f module."Data.Unit".unit);
      "Functor0" = __unused: module."Data.Monoid.Additive".functorAdditive;
    };
in
  {inherit mapWithIndex mapDefault functorWithIndexArray functorWithIndexMaybe functorWithIndexFirst functorWithIndexLast functorWithIndexAdditive functorWithIndexDual functorWithIndexConj functorWithIndexDisj functorWithIndexMultiplicative functorWithIndexEither functorWithIndexTuple functorWithIndexIdentity functorWithIndexConst functorWithIndexProduct functorWithIndexCoproduct functorWithIndexCompose functorWithIndexApp;}
;

Data-FunctorWithIndex_foreign-nix = 

{ # (i -> a -> b) -> Array a -> Array b
  #
  # This is the imap0 function from nixpkgs/lib/lists.nix.
  mapWithIndexArray = f: xs:
    builtins.genList (n: f n (builtins.elemAt xs n)) (builtins.length xs);
}

;

Data-Generic-Rep_default-nix = 
let
  module = 
    { "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Data.Symbol" = Data-Symbol_default-nix;
      "Type.Proxy" = Type-Proxy_default-nix;
    };
  Inl = value0: 
    { __tag = "Inl";
      __field0 = value0;
    };
  Inr = value0: 
    { __tag = "Inr";
      __field0 = value0;
    };
  Product = value0: value1: 
    { __tag = "Product";
      __field0 = value0;
      __field1 = value1;
    };
  NoArguments = {__tag = "NoArguments";};
  Generic-Dict = x: x;
  Constructor = x: x;
  Argument = x: x;
  to = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.to;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Generic/Rep.purs at 57:3 - 57:17";
    in
      __pattern0 __patternFail;
  showSum = dictShow: dictShow1: 
    { show = v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Inl"
              then 
                let
                  a = v.__field0;
                in
                  module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Inl " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow a) ")")
              else __fail;
          __pattern1 = __fail: 
            if v.__tag == "Inr"
              then 
                let
                  b = v.__field0;
                in
                  module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Inr " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow1 b) ")")
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Generic/Rep.purs at 31:1 - 33:42";
        in
          __pattern0 (__pattern1 __patternFail);
    };
  showProduct = dictShow: dictShow1: 
    { show = v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product"
              then 
                let
                  a = v.__field0;
                  b = v.__field1;
                in
                  module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Product " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow a) (module."Data.Semigroup".append module."Data.Semigroup".semigroupString " " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow1 b) ")")))
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Generic/Rep.purs at 38:1 - 39:69";
        in
          __pattern0 __patternFail;
    };
  showNoArguments = {show = v: "NoArguments";};
  showConstructor = dictIsSymbol: dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Constructor @" (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show module."Data.Show".showString (module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy)) (module."Data.Semigroup".append module."Data.Semigroup".semigroupString " " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow a) ")")));
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Generic/Rep.purs at 45:1 - 46:112";
        in
          __pattern0 __patternFail;
    };
  showArgument = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Argument " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow a) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Generic/Rep.purs at 51:1 - 52:52";
        in
          __pattern0 __patternFail;
    };
  repOf = dictGeneric: v: module."Type.Proxy".Proxy;
  from = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.from;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Generic/Rep.purs at 58:3 - 58:19";
    in
      __pattern0 __patternFail;
in
  {inherit to from repOf NoArguments Inl Inr Product Constructor Argument showNoArguments showSum showProduct showConstructor showArgument;}
;

Data-HeytingAlgebra-Generic_default-nix = 
let
  module = 
    { "Data.Function" = Data-Function_default-nix;
      "Data.Generic.Rep" = Data-Generic-Rep_default-nix;
      "Data.HeytingAlgebra" = Data-HeytingAlgebra_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  GenericHeytingAlgebra-Dict = x: x;
  genericTT' = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericTT';
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs at 10:3 - 10:18";
    in
      __pattern0 __patternFail;
  genericTT = dictGeneric: dictGenericHeytingAlgebra: module."Data.Generic.Rep".to dictGeneric (genericTT' dictGenericHeytingAlgebra);
  genericNot' = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericNot';
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs at 14:3 - 14:24";
    in
      __pattern0 __patternFail;
  genericNot = dictGeneric: dictGenericHeytingAlgebra: x: module."Data.Function".apply (module."Data.Generic.Rep".to dictGeneric) (genericNot' dictGenericHeytingAlgebra (module."Data.Generic.Rep".from dictGeneric x));
  genericImplies' = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericImplies';
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs at 11:3 - 11:33";
    in
      __pattern0 __patternFail;
  genericImplies = dictGeneric: dictGenericHeytingAlgebra: x: y: module."Data.Function".apply (module."Data.Generic.Rep".to dictGeneric) (genericImplies' dictGenericHeytingAlgebra (module."Data.Generic.Rep".from dictGeneric x) (module."Data.Generic.Rep".from dictGeneric y));
  genericHeytingAlgebraNoArguments = 
    { genericFF' = module."Data.Generic.Rep".NoArguments;
      genericTT' = module."Data.Generic.Rep".NoArguments;
      genericImplies' = v: v1: module."Data.Generic.Rep".NoArguments;
      genericConj' = v: v1: module."Data.Generic.Rep".NoArguments;
      genericDisj' = v: v1: module."Data.Generic.Rep".NoArguments;
      genericNot' = v: module."Data.Generic.Rep".NoArguments;
    };
  genericHeytingAlgebraArgument = dictHeytingAlgebra: 
    { genericFF' = module."Data.HeytingAlgebra".ff dictHeytingAlgebra;
      genericTT' = module."Data.HeytingAlgebra".tt dictHeytingAlgebra;
      genericImplies' = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              y = v1;
            in
              module."Data.HeytingAlgebra".implies dictHeytingAlgebra x y;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs at 24:1 - 30:46";
        in
          __pattern0 __patternFail;
      genericConj' = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              y = v1;
            in
              module."Data.HeytingAlgebra".conj dictHeytingAlgebra x y;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs at 24:1 - 30:46";
        in
          __pattern0 __patternFail;
      genericDisj' = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              y = v1;
            in
              module."Data.HeytingAlgebra".disj dictHeytingAlgebra x y;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs at 24:1 - 30:46";
        in
          __pattern0 __patternFail;
      genericNot' = v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.HeytingAlgebra".not dictHeytingAlgebra x;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs at 24:1 - 30:46";
        in
          __pattern0 __patternFail;
    };
  genericFF' = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericFF';
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs at 9:3 - 9:18";
    in
      __pattern0 __patternFail;
  genericFF = dictGeneric: dictGenericHeytingAlgebra: module."Data.Generic.Rep".to dictGeneric (genericFF' dictGenericHeytingAlgebra);
  genericDisj' = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericDisj';
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs at 13:3 - 13:30";
    in
      __pattern0 __patternFail;
  genericDisj = dictGeneric: dictGenericHeytingAlgebra: x: y: module."Data.Function".apply (module."Data.Generic.Rep".to dictGeneric) (genericDisj' dictGenericHeytingAlgebra (module."Data.Generic.Rep".from dictGeneric x) (module."Data.Generic.Rep".from dictGeneric y));
  genericConj' = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericConj';
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs at 12:3 - 12:30";
    in
      __pattern0 __patternFail;
  genericHeytingAlgebraConstructor = dictGenericHeytingAlgebra: 
    { genericFF' = genericFF' dictGenericHeytingAlgebra;
      genericTT' = genericTT' dictGenericHeytingAlgebra;
      genericImplies' = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a1 = v;
              a2 = v1;
            in
              genericImplies' dictGenericHeytingAlgebra a1 a2;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs at 40:1 - 46:60";
        in
          __pattern0 __patternFail;
      genericConj' = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a1 = v;
              a2 = v1;
            in
              genericConj' dictGenericHeytingAlgebra a1 a2;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs at 40:1 - 46:60";
        in
          __pattern0 __patternFail;
      genericDisj' = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a1 = v;
              a2 = v1;
            in
              genericDisj' dictGenericHeytingAlgebra a1 a2;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs at 40:1 - 46:60";
        in
          __pattern0 __patternFail;
      genericNot' = v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              genericNot' dictGenericHeytingAlgebra a;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs at 40:1 - 46:60";
        in
          __pattern0 __patternFail;
    };
  genericHeytingAlgebraProduct = dictGenericHeytingAlgebra: dictGenericHeytingAlgebra1: 
    { genericFF' = module."Data.Generic.Rep".Product (genericFF' dictGenericHeytingAlgebra) (genericFF' dictGenericHeytingAlgebra1);
      genericTT' = module."Data.Generic.Rep".Product (genericTT' dictGenericHeytingAlgebra) (genericTT' dictGenericHeytingAlgebra1);
      genericImplies' = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product" && v1.__tag == "Product"
              then 
                let
                  a1 = v.__field0;
                  b1 = v.__field1;
                  a2 = v1.__field0;
                  b2 = v1.__field1;
                in
                  module."Data.Generic.Rep".Product (genericImplies' dictGenericHeytingAlgebra a1 a2) (genericImplies' dictGenericHeytingAlgebra1 b1 b2)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs at 32:1 - 38:70";
        in
          __pattern0 __patternFail;
      genericConj' = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product" && v1.__tag == "Product"
              then 
                let
                  a1 = v.__field0;
                  b1 = v.__field1;
                  a2 = v1.__field0;
                  b2 = v1.__field1;
                in
                  module."Data.Generic.Rep".Product (genericConj' dictGenericHeytingAlgebra a1 a2) (genericConj' dictGenericHeytingAlgebra1 b1 b2)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs at 32:1 - 38:70";
        in
          __pattern0 __patternFail;
      genericDisj' = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product" && v1.__tag == "Product"
              then 
                let
                  a1 = v.__field0;
                  b1 = v.__field1;
                  a2 = v1.__field0;
                  b2 = v1.__field1;
                in
                  module."Data.Generic.Rep".Product (genericDisj' dictGenericHeytingAlgebra a1 a2) (genericDisj' dictGenericHeytingAlgebra1 b1 b2)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs at 32:1 - 38:70";
        in
          __pattern0 __patternFail;
      genericNot' = v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product"
              then 
                let
                  a = v.__field0;
                  b = v.__field1;
                in
                  module."Data.Generic.Rep".Product (genericNot' dictGenericHeytingAlgebra a) (genericNot' dictGenericHeytingAlgebra1 b)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra/Generic.purs at 32:1 - 38:70";
        in
          __pattern0 __patternFail;
    };
  genericConj = dictGeneric: dictGenericHeytingAlgebra: x: y: module."Data.Function".apply (module."Data.Generic.Rep".to dictGeneric) (genericConj' dictGenericHeytingAlgebra (module."Data.Generic.Rep".from dictGeneric x) (module."Data.Generic.Rep".from dictGeneric y));
in
  {inherit genericConj' genericDisj' genericFF' genericImplies' genericNot' genericTT' genericFF genericTT genericImplies genericConj genericDisj genericNot genericHeytingAlgebraNoArguments genericHeytingAlgebraArgument genericHeytingAlgebraProduct genericHeytingAlgebraConstructor;}
;

Data-HeytingAlgebra_default-nix = 
let
  module = 
    { "Data.Symbol" = Data-Symbol_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prim.Row" = import ../Prim.Row;
      "Prim.RowList" = import ../Prim.RowList;
      "Record.Unsafe" = Record-Unsafe_default-nix;
      "Type.Proxy" = Type-Proxy_default-nix;
    };
  foreign = Data-HeytingAlgebra_foreign-nix;
  boolConj = foreign.boolConj;
  boolDisj = foreign.boolDisj;
  boolNot = foreign.boolNot;
  HeytingAlgebraRecord-Dict = x: x;
  HeytingAlgebra-Dict = x: x;
  ttRecord = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.ttRecord;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra.purs at 114:3 - 114:84";
    in
      __pattern0 __patternFail;
  tt = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.tt;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra.purs at 40:3 - 40:10";
    in
      __pattern0 __patternFail;
  notRecord = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.notRecord;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra.purs at 118:3 - 118:78";
    in
      __pattern0 __patternFail;
  not = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.not;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra.purs at 44:3 - 44:16";
    in
      __pattern0 __patternFail;
  impliesRecord = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.impliesRecord;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra.purs at 115:3 - 115:96";
    in
      __pattern0 __patternFail;
  implies = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.implies;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra.purs at 41:3 - 41:25";
    in
      __pattern0 __patternFail;
  heytingAlgebraUnit = 
    { ff = module."Data.Unit".unit;
      tt = module."Data.Unit".unit;
      implies = v: v1: module."Data.Unit".unit;
      conj = v: v1: module."Data.Unit".unit;
      disj = v: v1: module."Data.Unit".unit;
      not = v: module."Data.Unit".unit;
    };
  heytingAlgebraRecordNil = 
    { conjRecord = v: v1: v2: { };
      disjRecord = v: v1: v2: { };
      ffRecord = v: v1: { };
      impliesRecord = v: v1: v2: { };
      notRecord = v: v1: { };
      ttRecord = v: v1: { };
    };
  heytingAlgebraProxy3 = 
    { conj = v: v1: module."Type.Proxy".Proxy3;
      disj = v: v1: module."Type.Proxy".Proxy3;
      implies = v: v1: module."Type.Proxy".Proxy3;
      ff = module."Type.Proxy".Proxy3;
      not = v: module."Type.Proxy".Proxy3;
      tt = module."Type.Proxy".Proxy3;
    };
  heytingAlgebraProxy2 = 
    { conj = v: v1: module."Type.Proxy".Proxy2;
      disj = v: v1: module."Type.Proxy".Proxy2;
      implies = v: v1: module."Type.Proxy".Proxy2;
      ff = module."Type.Proxy".Proxy2;
      not = v: module."Type.Proxy".Proxy2;
      tt = module."Type.Proxy".Proxy2;
    };
  heytingAlgebraProxy = 
    { conj = v: v1: module."Type.Proxy".Proxy;
      disj = v: v1: module."Type.Proxy".Proxy;
      implies = v: v1: module."Type.Proxy".Proxy;
      ff = module."Type.Proxy".Proxy;
      not = v: module."Type.Proxy".Proxy;
      tt = module."Type.Proxy".Proxy;
    };
  ffRecord = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.ffRecord;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra.purs at 113:3 - 113:84";
    in
      __pattern0 __patternFail;
  ff = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.ff;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra.purs at 39:3 - 39:10";
    in
      __pattern0 __patternFail;
  disjRecord = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.disjRecord;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra.purs at 116:3 - 116:93";
    in
      __pattern0 __patternFail;
  disj = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.disj;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra.purs at 43:3 - 43:22";
    in
      __pattern0 __patternFail;
  heytingAlgebraBoolean = 
    { ff = false;
      tt = true;
      implies = a: b: disj heytingAlgebraBoolean (not heytingAlgebraBoolean a) b;
      conj = boolConj;
      disj = boolDisj;
      not = boolNot;
    };
  conjRecord = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.conjRecord;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra.purs at 117:3 - 117:93";
    in
      __pattern0 __patternFail;
  heytingAlgebraRecord = dictRowToList: dictHeytingAlgebraRecord: 
    { ff = ffRecord dictHeytingAlgebraRecord module."Type.Proxy".Proxy module."Type.Proxy".Proxy;
      tt = ttRecord dictHeytingAlgebraRecord module."Type.Proxy".Proxy module."Type.Proxy".Proxy;
      conj = conjRecord dictHeytingAlgebraRecord module."Type.Proxy".Proxy;
      disj = disjRecord dictHeytingAlgebraRecord module."Type.Proxy".Proxy;
      implies = impliesRecord dictHeytingAlgebraRecord module."Type.Proxy".Proxy;
      not = notRecord dictHeytingAlgebraRecord module."Type.Proxy".Proxy;
    };
  conj = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.conj;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/HeytingAlgebra.purs at 42:3 - 42:22";
    in
      __pattern0 __patternFail;
  heytingAlgebraFunction = dictHeytingAlgebra: 
    { ff = v: ff dictHeytingAlgebra;
      tt = v: tt dictHeytingAlgebra;
      implies = f: g: a: implies dictHeytingAlgebra (f a) (g a);
      conj = f: g: a: conj dictHeytingAlgebra (f a) (g a);
      disj = f: g: a: disj dictHeytingAlgebra (f a) (g a);
      not = f: a: not dictHeytingAlgebra (f a);
    };
  heytingAlgebraRecordCons = dictIsSymbol: dictCons: dictHeytingAlgebraRecord: dictHeytingAlgebra: 
    { conjRecord = v: ra: rb: 
        let
          tail = conjRecord dictHeytingAlgebraRecord module."Type.Proxy".Proxy ra rb;
          key = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
          insert = module."Record.Unsafe".unsafeSet key;
          get = module."Record.Unsafe".unsafeGet key;
        in
          insert (conj dictHeytingAlgebra (get ra) (get rb)) tail;
      disjRecord = v: ra: rb: 
        let
          tail = disjRecord dictHeytingAlgebraRecord module."Type.Proxy".Proxy ra rb;
          key = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
          insert = module."Record.Unsafe".unsafeSet key;
          get = module."Record.Unsafe".unsafeGet key;
        in
          insert (disj dictHeytingAlgebra (get ra) (get rb)) tail;
      impliesRecord = v: ra: rb: 
        let
          tail = impliesRecord dictHeytingAlgebraRecord module."Type.Proxy".Proxy ra rb;
          key = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
          insert = module."Record.Unsafe".unsafeSet key;
          get = module."Record.Unsafe".unsafeGet key;
        in
          insert (implies dictHeytingAlgebra (get ra) (get rb)) tail;
      ffRecord = v: row: 
        let
          tail = ffRecord dictHeytingAlgebraRecord module."Type.Proxy".Proxy row;
          key = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
          insert = module."Record.Unsafe".unsafeSet key;
        in
          insert (ff dictHeytingAlgebra) tail;
      notRecord = v: row: 
        let
          tail = notRecord dictHeytingAlgebraRecord module."Type.Proxy".Proxy row;
          key = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
          insert = module."Record.Unsafe".unsafeSet key;
          get = module."Record.Unsafe".unsafeGet key;
        in
          insert (not dictHeytingAlgebra (get row)) tail;
      ttRecord = v: row: 
        let
          tail = ttRecord dictHeytingAlgebraRecord module."Type.Proxy".Proxy row;
          key = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
          insert = module."Record.Unsafe".unsafeSet key;
        in
          insert (tt dictHeytingAlgebra) tail;
    };
in
  {inherit tt ff implies conj disj not ffRecord ttRecord impliesRecord conjRecord disjRecord notRecord heytingAlgebraBoolean heytingAlgebraUnit heytingAlgebraFunction heytingAlgebraProxy heytingAlgebraProxy2 heytingAlgebraProxy3 heytingAlgebraRecord heytingAlgebraRecordNil heytingAlgebraRecordCons;}
;

Data-HeytingAlgebra_foreign-nix = 
{ boolConj = bool1: bool2: bool1 && bool2;
  boolDisj = bool1: bool2: bool1 || bool2;
  boolNot = bool1: ! bool1;
}

;

Data-Identity_default-nix = 
let
  module = 
    { "Control.Alt" = Control-Alt_default-nix;
      "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Comonad" = Control-Comonad_default-nix;
      "Control.Extend" = Control-Extend_default-nix;
      "Control.Lazy" = Control-Lazy_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Data.BooleanAlgebra" = Data-BooleanAlgebra_default-nix;
      "Data.Bounded" = Data-Bounded_default-nix;
      "Data.CommutativeRing" = Data-CommutativeRing_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.EuclideanRing" = Data-EuclideanRing_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Functor.Invariant" = Data-Functor-Invariant_default-nix;
      "Data.HeytingAlgebra" = Data-HeytingAlgebra_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Ring" = Data-Ring_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Semiring" = Data-Semiring_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Identity = x: x;
  showIdentity = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Identity " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow x) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/identity/cb1f4df0bcd835bff8148881a64f4b136a5827d3/src/Data/Identity.purs at 42:1 - 43:52";
        in
          __pattern0 __patternFail;
    };
  semiringIdentity = dictSemiring: dictSemiring;
  semigroupIdentity = dictSemigroup: dictSemigroup;
  ringIdentity = dictRing: dictRing;
  ordIdentity = dictOrd: dictOrd;
  newtypeIdentity = {"Coercible0" = __unused: module."Prim".undefined;};
  monoidIdentity = dictMonoid: dictMonoid;
  lazyIdentity = dictLazy: dictLazy;
  heytingAlgebraIdentity = dictHeytingAlgebra: dictHeytingAlgebra;
  functorIdentity = 
    { map = f: m: 
        let
          __pattern0 = __fail: 
            let
              v = m;
            in
              f v;
          __patternFail = builtins.throw "Pattern match failure in .spago/identity/cb1f4df0bcd835bff8148881a64f4b136a5827d3/src/Data/Identity.purs at 49:1 - 49:52";
        in
          __pattern0 __patternFail;
    };
  invariantIdentity = {imap = module."Data.Functor.Invariant".imapF functorIdentity;};
  extendIdentity = 
    { extend = f: m: f m;
      "Functor0" = __unused: functorIdentity;
    };
  euclideanRingIdentity = dictEuclideanRing: dictEuclideanRing;
  eqIdentity = dictEq: dictEq;
  eq1Identity = {eq1 = dictEq: module."Data.Eq".eq (eqIdentity dictEq);};
  ord1Identity = 
    { compare1 = dictOrd: module."Data.Ord".compare (ordIdentity dictOrd);
      "Eq10" = __unused: eq1Identity;
    };
  comonadIdentity = 
    { extract = v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              x;
          __patternFail = builtins.throw "Pattern match failure in .spago/identity/cb1f4df0bcd835bff8148881a64f4b136a5827d3/src/Data/Identity.purs at 71:1 - 72:27";
        in
          __pattern0 __patternFail;
      "Extend0" = __unused: extendIdentity;
    };
  commutativeRingIdentity = dictCommutativeRing: dictCommutativeRing;
  boundedIdentity = dictBounded: dictBounded;
  booleanAlgebraIdentity = dictBooleanAlgebra: dictBooleanAlgebra;
  applyIdentity = 
    { apply = v: v1: 
        let
          __pattern0 = __fail: 
            let
              f = v;
              x = v1;
            in
              f x;
          __patternFail = builtins.throw "Pattern match failure in .spago/identity/cb1f4df0bcd835bff8148881a64f4b136a5827d3/src/Data/Identity.purs at 57:1 - 58:51";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: functorIdentity;
    };
  bindIdentity = 
    { bind = v: f: 
        let
          __pattern0 = __fail: 
            let
              m = v;
              f1 = f;
            in
              f1 m;
          __patternFail = builtins.throw "Pattern match failure in .spago/identity/cb1f4df0bcd835bff8148881a64f4b136a5827d3/src/Data/Identity.purs at 63:1 - 64:28";
        in
          __pattern0 __patternFail;
      "Apply0" = __unused: applyIdentity;
    };
  applicativeIdentity = 
    { pure = Identity;
      "Apply0" = __unused: applyIdentity;
    };
  monadIdentity = 
    { "Applicative0" = __unused: applicativeIdentity;
      "Bind1" = __unused: bindIdentity;
    };
  altIdentity = 
    { alt = x: v: x;
      "Functor0" = __unused: functorIdentity;
    };
in
  {inherit Identity newtypeIdentity eqIdentity ordIdentity boundedIdentity heytingAlgebraIdentity booleanAlgebraIdentity semigroupIdentity monoidIdentity semiringIdentity euclideanRingIdentity ringIdentity commutativeRingIdentity lazyIdentity showIdentity eq1Identity ord1Identity functorIdentity invariantIdentity altIdentity applyIdentity applicativeIdentity bindIdentity monadIdentity extendIdentity comonadIdentity;}
;

Data-Maybe-First_default-nix = 
let
  module = 
    { "Control.Alt" = Control-Alt_default-nix;
      "Control.Alternative" = Control-Alternative_default-nix;
      "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Extend" = Control-Extend_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Control.MonadZero" = Control-MonadZero_default-nix;
      "Control.Plus" = Control-Plus_default-nix;
      "Data.Bounded" = Data-Bounded_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Functor.Invariant" = Data-Functor-Invariant_default-nix;
      "Data.Maybe" = Data-Maybe_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  First = x: x;
  showFirst = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "First (" (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show (module."Data.Maybe".showMaybe dictShow) a) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/maybe/b13eab54d7e3b67c1820ea76e05181d34c42ee0d/src/Data/Maybe/First.purs at 49:1 - 50:46";
        in
          __pattern0 __patternFail;
    };
  semigroupFirst = 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Just"
              then 
                let
                  first = v;
                in
                  first
              else __fail;
          __pattern1 = __fail: 
            let
              second = v1;
            in
              second;
          __patternFail = builtins.throw "Pattern match failure in .spago/maybe/b13eab54d7e3b67c1820ea76e05181d34c42ee0d/src/Data/Maybe/First.purs at 52:1 - 54:27";
        in
          __pattern0 (__pattern1 __patternFail);
    };
  ordFirst = dictOrd: module."Data.Maybe".ordMaybe dictOrd;
  ord1First = module."Data.Maybe".ord1Maybe;
  newtypeFirst = {"Coercible0" = __unused: module."Prim".undefined;};
  monoidFirst = 
    { mempty = module."Data.Maybe".Nothing;
      "Semigroup0" = __unused: semigroupFirst;
    };
  monadFirst = module."Data.Maybe".monadMaybe;
  invariantFirst = module."Data.Maybe".invariantMaybe;
  functorFirst = module."Data.Maybe".functorMaybe;
  extendFirst = module."Data.Maybe".extendMaybe;
  eqFirst = dictEq: module."Data.Maybe".eqMaybe dictEq;
  eq1First = module."Data.Maybe".eq1Maybe;
  boundedFirst = dictBounded: module."Data.Maybe".boundedMaybe dictBounded;
  bindFirst = module."Data.Maybe".bindMaybe;
  applyFirst = module."Data.Maybe".applyMaybe;
  applicativeFirst = module."Data.Maybe".applicativeMaybe;
  altFirst = 
    { alt = module."Data.Semigroup".append semigroupFirst;
      "Functor0" = __unused: functorFirst;
    };
  plusFirst = 
    { empty = module."Data.Monoid".mempty monoidFirst;
      "Alt0" = __unused: altFirst;
    };
  alternativeFirst = 
    { "Applicative0" = __unused: applicativeFirst;
      "Plus1" = __unused: plusFirst;
    };
  monadZeroFirst = 
    { "Monad0" = __unused: monadFirst;
      "Alternative1" = __unused: alternativeFirst;
      "MonadZeroIsDeprecated2" = __unused: module."Prim".undefined;
    };
in
  {inherit First newtypeFirst eqFirst eq1First ordFirst ord1First boundedFirst functorFirst invariantFirst applyFirst applicativeFirst bindFirst monadFirst extendFirst showFirst semigroupFirst monoidFirst altFirst plusFirst alternativeFirst monadZeroFirst;}
;

Data-Maybe-Last_default-nix = 
let
  module = 
    { "Control.Alt" = Control-Alt_default-nix;
      "Control.Alternative" = Control-Alternative_default-nix;
      "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Extend" = Control-Extend_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Control.MonadZero" = Control-MonadZero_default-nix;
      "Control.Plus" = Control-Plus_default-nix;
      "Data.Bounded" = Data-Bounded_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Functor.Invariant" = Data-Functor-Invariant_default-nix;
      "Data.Maybe" = Data-Maybe_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Last = x: x;
  showLast = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Last " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show (module."Data.Maybe".showMaybe dictShow) a) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/maybe/b13eab54d7e3b67c1820ea76e05181d34c42ee0d/src/Data/Maybe/Last.purs at 49:1 - 50:44";
        in
          __pattern0 __patternFail;
    };
  semigroupLast = 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            if v1.__tag == "Just"
              then 
                let
                  last = v1;
                in
                  last
              else __fail;
          __pattern1 = __fail: 
            if v1.__tag == "Nothing"
              then 
                let
                  last = v;
                in
                  last
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/maybe/b13eab54d7e3b67c1820ea76e05181d34c42ee0d/src/Data/Maybe/Last.purs at 52:1 - 54:36";
        in
          __pattern0 (__pattern1 __patternFail);
    };
  ordLast = dictOrd: module."Data.Maybe".ordMaybe dictOrd;
  ord1Last = module."Data.Maybe".ord1Maybe;
  newtypeLast = {"Coercible0" = __unused: module."Prim".undefined;};
  monoidLast = 
    { mempty = module."Data.Maybe".Nothing;
      "Semigroup0" = __unused: semigroupLast;
    };
  monadLast = module."Data.Maybe".monadMaybe;
  invariantLast = module."Data.Maybe".invariantMaybe;
  functorLast = module."Data.Maybe".functorMaybe;
  extendLast = module."Data.Maybe".extendMaybe;
  eqLast = dictEq: module."Data.Maybe".eqMaybe dictEq;
  eq1Last = module."Data.Maybe".eq1Maybe;
  boundedLast = dictBounded: module."Data.Maybe".boundedMaybe dictBounded;
  bindLast = module."Data.Maybe".bindMaybe;
  applyLast = module."Data.Maybe".applyMaybe;
  applicativeLast = module."Data.Maybe".applicativeMaybe;
  altLast = 
    { alt = module."Data.Semigroup".append semigroupLast;
      "Functor0" = __unused: functorLast;
    };
  plusLast = 
    { empty = module."Data.Monoid".mempty monoidLast;
      "Alt0" = __unused: altLast;
    };
  alternativeLast = 
    { "Applicative0" = __unused: applicativeLast;
      "Plus1" = __unused: plusLast;
    };
  monadZeroLast = 
    { "Monad0" = __unused: monadLast;
      "Alternative1" = __unused: alternativeLast;
      "MonadZeroIsDeprecated2" = __unused: module."Prim".undefined;
    };
in
  {inherit Last newtypeLast eqLast eq1Last ordLast ord1Last boundedLast functorLast invariantLast applyLast applicativeLast bindLast monadLast extendLast showLast semigroupLast monoidLast altLast plusLast alternativeLast monadZeroLast;}
;

Data-Maybe_default-nix = 
let
  module = 
    { "Control.Alt" = Control-Alt_default-nix;
      "Control.Alternative" = Control-Alternative_default-nix;
      "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Category" = Control-Category_default-nix;
      "Control.Extend" = Control-Extend_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Control.MonadZero" = Control-MonadZero_default-nix;
      "Control.Plus" = Control-Plus_default-nix;
      "Data.Bounded" = Data-Bounded_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Functor.Invariant" = Data-Functor-Invariant_default-nix;
      "Data.Generic.Rep" = Data-Generic-Rep_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Nothing = {__tag = "Nothing";};
  Just = value0: 
    { __tag = "Just";
      __field0 = value0;
    };
  showMaybe = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Just"
              then 
                let
                  x = v.__field0;
                in
                  module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Just " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow x) ")")
              else __fail;
          __pattern1 = __fail: if v.__tag == "Nothing" then "Nothing" else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/maybe/b13eab54d7e3b67c1820ea76e05181d34c42ee0d/src/Data/Maybe.purs at 216:1 - 218:28";
        in
          __pattern0 (__pattern1 __patternFail);
    };
  semigroupMaybe = dictSemigroup: 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Nothing"
              then 
                let
                  y = v1;
                in
                  y
              else __fail;
          __pattern1 = __fail: 
            if v1.__tag == "Nothing"
              then 
                let
                  x = v;
                in
                  x
              else __fail;
          __pattern2 = __fail: 
            if v.__tag == "Just" && v1.__tag == "Just"
              then 
                let
                  x = v.__field0;
                  y = v1.__field0;
                in
                  Just (module."Data.Semigroup".append dictSemigroup x y)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/maybe/b13eab54d7e3b67c1820ea76e05181d34c42ee0d/src/Data/Maybe.purs at 185:1 - 188:43";
        in
          __pattern0 (__pattern1 (__pattern2 __patternFail));
    };
  optional = dictAlt: dictApplicative: a: module."Control.Alt".alt dictAlt (module."Data.Functor".map (dictAlt."Functor0" module."Prim".undefined) Just a) (module."Control.Applicative".pure dictApplicative Nothing);
  monoidMaybe = dictSemigroup: 
    { mempty = Nothing;
      "Semigroup0" = __unused: semigroupMaybe dictSemigroup;
    };
  maybe' = v: v1: v2: 
    let
      __pattern0 = __fail: 
        if v2.__tag == "Nothing"
          then 
            let
              g = v;
            in
              g module."Data.Unit".unit
          else __fail;
      __pattern1 = __fail: 
        if v2.__tag == "Just"
          then 
            let
              f = v1;
              a = v2.__field0;
            in
              f a
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/maybe/b13eab54d7e3b67c1820ea76e05181d34c42ee0d/src/Data/Maybe.purs at 243:1 - 243:62";
    in
      __pattern0 (__pattern1 __patternFail);
  maybe = v: v1: v2: 
    let
      __pattern0 = __fail: 
        if v2.__tag == "Nothing"
          then 
            let
              b = v;
            in
              b
          else __fail;
      __pattern1 = __fail: 
        if v2.__tag == "Just"
          then 
            let
              f = v1;
              a = v2.__field0;
            in
              f a
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/maybe/b13eab54d7e3b67c1820ea76e05181d34c42ee0d/src/Data/Maybe.purs at 230:1 - 230:51";
    in
      __pattern0 (__pattern1 __patternFail);
  isNothing = maybe true (module."Data.Function".const false);
  isJust = maybe false (module."Data.Function".const true);
  genericMaybe = 
    { to = x: 
        let
          __pattern0 = __fail: if x.__tag == "Inl" then Nothing else __fail;
          __pattern1 = __fail: 
            if x.__tag == "Inr"
              then 
                let
                  arg = x.__field0;
                in
                  Just arg
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/maybe/b13eab54d7e3b67c1820ea76e05181d34c42ee0d/src/Data/Maybe.purs at 220:1 - 220:52";
        in
          __pattern0 (__pattern1 __patternFail);
      from = x: 
        let
          __pattern0 = __fail: if x.__tag == "Nothing" then module."Data.Generic.Rep".Inl module."Data.Generic.Rep".NoArguments else __fail;
          __pattern1 = __fail: 
            if x.__tag == "Just"
              then 
                let
                  arg = x.__field0;
                in
                  module."Data.Generic.Rep".Inr arg
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/maybe/b13eab54d7e3b67c1820ea76e05181d34c42ee0d/src/Data/Maybe.purs at 220:1 - 220:52";
        in
          __pattern0 (__pattern1 __patternFail);
    };
  functorMaybe = 
    { map = v: v1: 
        let
          __pattern0 = __fail: 
            if v1.__tag == "Just"
              then 
                let
                  fn = v;
                  x = v1.__field0;
                in
                  Just (fn x)
              else __fail;
          __pattern1 = __fail: Nothing;
          __patternFail = builtins.throw "Pattern match failure in .spago/maybe/b13eab54d7e3b67c1820ea76e05181d34c42ee0d/src/Data/Maybe.purs at 33:1 - 35:28";
        in
          __pattern0 (__pattern1 __patternFail);
    };
  invariantMaybe = {imap = module."Data.Functor.Invariant".imapF functorMaybe;};
  fromMaybe' = a: maybe' a (module."Control.Category".identity module."Control.Category".categoryFn);
  fromMaybe = a: maybe a (module."Control.Category".identity module."Control.Category".categoryFn);
  fromJust = dictPartial: v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Just"
          then 
            let
              x = v.__field0;
            in
              x
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/maybe/b13eab54d7e3b67c1820ea76e05181d34c42ee0d/src/Data/Maybe.purs at 281:1 - 281:46";
    in
      __pattern0 __patternFail;
  extendMaybe = 
    { extend = v: v1: 
        let
          __pattern0 = __fail: if v1.__tag == "Nothing" then Nothing else __fail;
          __pattern1 = __fail: 
            let
              f = v;
              x = v1;
            in
              Just (f x);
          __patternFail = builtins.throw "Pattern match failure in .spago/maybe/b13eab54d7e3b67c1820ea76e05181d34c42ee0d/src/Data/Maybe.purs at 167:1 - 169:33";
        in
          __pattern0 (__pattern1 __patternFail);
      "Functor0" = __unused: functorMaybe;
    };
  eqMaybe = dictEq: 
    { eq = x: y: 
        let
          __pattern0 = __fail: if x.__tag == "Nothing" && y.__tag == "Nothing" then true else __fail;
          __pattern1 = __fail: 
            if x.__tag == "Just" && y.__tag == "Just"
              then 
                let
                  l = x.__field0;
                  r = y.__field0;
                in
                  module."Data.Eq".eq dictEq l r
              else __fail;
          __pattern2 = __fail: false;
          __patternFail = builtins.throw "Pattern match failure in .spago/maybe/b13eab54d7e3b67c1820ea76e05181d34c42ee0d/src/Data/Maybe.purs at 196:1 - 196:48";
        in
          __pattern0 (__pattern1 (__pattern2 __patternFail));
    };
  ordMaybe = dictOrd: 
    { compare = x: y: 
        let
          __pattern0 = __fail: if x.__tag == "Nothing" && y.__tag == "Nothing" then module."Data.Ordering".EQ else __fail;
          __pattern1 = __fail: if x.__tag == "Nothing" then module."Data.Ordering".LT else __fail;
          __pattern2 = __fail: if y.__tag == "Nothing" then module."Data.Ordering".GT else __fail;
          __pattern3 = __fail: 
            if x.__tag == "Just" && y.__tag == "Just"
              then 
                let
                  l = x.__field0;
                  r = y.__field0;
                in
                  module."Data.Ord".compare dictOrd l r
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/maybe/b13eab54d7e3b67c1820ea76e05181d34c42ee0d/src/Data/Maybe.purs at 205:1 - 205:51";
        in
          __pattern0 (__pattern1 (__pattern2 (__pattern3 __patternFail)));
      "Eq0" = __unused: eqMaybe (dictOrd."Eq0" module."Prim".undefined);
    };
  eq1Maybe = {eq1 = dictEq: module."Data.Eq".eq (eqMaybe dictEq);};
  ord1Maybe = 
    { compare1 = dictOrd: module."Data.Ord".compare (ordMaybe dictOrd);
      "Eq10" = __unused: eq1Maybe;
    };
  boundedMaybe = dictBounded: 
    { top = Just (module."Data.Bounded".top dictBounded);
      bottom = Nothing;
      "Ord0" = __unused: ordMaybe (dictBounded."Ord0" module."Prim".undefined);
    };
  applyMaybe = 
    { apply = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Just"
              then 
                let
                  fn = v.__field0;
                  x = v1;
                in
                  module."Data.Functor".map functorMaybe fn x
              else __fail;
          __pattern1 = __fail: if v.__tag == "Nothing" then Nothing else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/maybe/b13eab54d7e3b67c1820ea76e05181d34c42ee0d/src/Data/Maybe.purs at 68:1 - 70:30";
        in
          __pattern0 (__pattern1 __patternFail);
      "Functor0" = __unused: functorMaybe;
    };
  bindMaybe = 
    { bind = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Just"
              then 
                let
                  x = v.__field0;
                  k = v1;
                in
                  k x
              else __fail;
          __pattern1 = __fail: if v.__tag == "Nothing" then Nothing else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/maybe/b13eab54d7e3b67c1820ea76e05181d34c42ee0d/src/Data/Maybe.purs at 126:1 - 128:28";
        in
          __pattern0 (__pattern1 __patternFail);
      "Apply0" = __unused: applyMaybe;
    };
  applicativeMaybe = 
    { pure = Just;
      "Apply0" = __unused: applyMaybe;
    };
  monadMaybe = 
    { "Applicative0" = __unused: applicativeMaybe;
      "Bind1" = __unused: bindMaybe;
    };
  altMaybe = 
    { alt = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Nothing"
              then 
                let
                  r = v1;
                in
                  r
              else __fail;
          __pattern1 = __fail: 
            let
              l = v;
            in
              l;
          __patternFail = builtins.throw "Pattern match failure in .spago/maybe/b13eab54d7e3b67c1820ea76e05181d34c42ee0d/src/Data/Maybe.purs at 103:1 - 105:20";
        in
          __pattern0 (__pattern1 __patternFail);
      "Functor0" = __unused: functorMaybe;
    };
  plusMaybe = 
    { empty = Nothing;
      "Alt0" = __unused: altMaybe;
    };
  alternativeMaybe = 
    { "Applicative0" = __unused: applicativeMaybe;
      "Plus1" = __unused: plusMaybe;
    };
  monadZeroMaybe = 
    { "Monad0" = __unused: monadMaybe;
      "Alternative1" = __unused: alternativeMaybe;
      "MonadZeroIsDeprecated2" = __unused: module."Prim".undefined;
    };
in
  {inherit Nothing Just maybe maybe' fromMaybe fromMaybe' isJust isNothing fromJust optional functorMaybe applyMaybe applicativeMaybe altMaybe plusMaybe alternativeMaybe bindMaybe monadMaybe monadZeroMaybe extendMaybe invariantMaybe semigroupMaybe monoidMaybe eqMaybe eq1Maybe ordMaybe ord1Maybe boundedMaybe showMaybe genericMaybe;}
;

Data-Monoid-Additive_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Data.Bounded" = Data-Bounded_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Semiring" = Data-Semiring_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Additive = x: x;
  showAdditive = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Additive " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow a) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Additive.purs at 24:1 - 25:52";
        in
          __pattern0 __patternFail;
    };
  semigroupAdditive = dictSemiring: 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a = v;
              b = v1;
            in
              module."Data.Semiring".add dictSemiring a b;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Additive.purs at 40:1 - 41:54";
        in
          __pattern0 __patternFail;
    };
  ordAdditive = dictOrd: dictOrd;
  monoidAdditive = dictSemiring: 
    { mempty = module."Data.Semiring".zero dictSemiring;
      "Semigroup0" = __unused: semigroupAdditive dictSemiring;
    };
  functorAdditive = 
    { map = f: m: 
        let
          __pattern0 = __fail: 
            let
              v = m;
            in
              f v;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Additive.purs at 27:1 - 27:52";
        in
          __pattern0 __patternFail;
    };
  eqAdditive = dictEq: dictEq;
  eq1Additive = {eq1 = dictEq: module."Data.Eq".eq (eqAdditive dictEq);};
  ord1Additive = 
    { compare1 = dictOrd: module."Data.Ord".compare (ordAdditive dictOrd);
      "Eq10" = __unused: eq1Additive;
    };
  boundedAdditive = dictBounded: dictBounded;
  applyAdditive = 
    { apply = v: v1: 
        let
          __pattern0 = __fail: 
            let
              f = v;
              x = v1;
            in
              f x;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Additive.purs at 29:1 - 30:51";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: functorAdditive;
    };
  bindAdditive = 
    { bind = v: f: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              f1 = f;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Additive.purs at 35:1 - 36:28";
        in
          __pattern0 __patternFail;
      "Apply0" = __unused: applyAdditive;
    };
  applicativeAdditive = 
    { pure = Additive;
      "Apply0" = __unused: applyAdditive;
    };
  monadAdditive = 
    { "Applicative0" = __unused: applicativeAdditive;
      "Bind1" = __unused: bindAdditive;
    };
in
  {inherit Additive eqAdditive eq1Additive ordAdditive ord1Additive boundedAdditive showAdditive functorAdditive applyAdditive applicativeAdditive bindAdditive monadAdditive semigroupAdditive monoidAdditive;}
;

Data-Monoid-Alternate_default-nix = 
let
  module = 
    { "Control.Alt" = Control-Alt_default-nix;
      "Control.Alternative" = Control-Alternative_default-nix;
      "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Comonad" = Control-Comonad_default-nix;
      "Control.Extend" = Control-Extend_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Control.Plus" = Control-Plus_default-nix;
      "Data.Bounded" = Data-Bounded_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Alternate = x: x;
  showAlternate = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Alternate " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow a) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/control/14103f74386a315f159f85720fac0242810d5b38/src/Data/Monoid/Alternate.purs at 53:1 - 54:54";
        in
          __pattern0 __patternFail;
    };
  semigroupAlternate = dictAlt: 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a = v;
              b = v1;
            in
              module."Control.Alt".alt dictAlt a b;
          __patternFail = builtins.throw "Pattern match failure in .spago/control/14103f74386a315f159f85720fac0242810d5b38/src/Data/Monoid/Alternate.purs at 56:1 - 57:59";
        in
          __pattern0 __patternFail;
    };
  plusAlternate = dictPlus: dictPlus;
  ordAlternate = dictOrd: dictOrd;
  ord1Alternate = dictOrd1: dictOrd1;
  newtypeAlternate = {"Coercible0" = __unused: module."Prim".undefined;};
  monoidAlternate = dictPlus: 
    { mempty = module."Control.Plus".empty dictPlus;
      "Semigroup0" = __unused: semigroupAlternate (dictPlus."Alt0" module."Prim".undefined);
    };
  monadAlternate = dictMonad: dictMonad;
  functorAlternate = dictFunctor: dictFunctor;
  extendAlternate = dictExtend: dictExtend;
  eqAlternate = dictEq: dictEq;
  eq1Alternate = dictEq1: dictEq1;
  comonadAlternate = dictComonad: dictComonad;
  boundedAlternate = dictBounded: dictBounded;
  bindAlternate = dictBind: dictBind;
  applyAlternate = dictApply: dictApply;
  applicativeAlternate = dictApplicative: dictApplicative;
  alternativeAlternate = dictAlternative: dictAlternative;
  altAlternate = dictAlt: dictAlt;
in
  {inherit Alternate newtypeAlternate eqAlternate eq1Alternate ordAlternate ord1Alternate boundedAlternate functorAlternate applyAlternate applicativeAlternate altAlternate plusAlternate alternativeAlternate bindAlternate monadAlternate extendAlternate comonadAlternate showAlternate semigroupAlternate monoidAlternate;}
;

Data-Monoid-Conj_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Data.Bounded" = Data-Bounded_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.HeytingAlgebra" = Data-HeytingAlgebra_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Semiring" = Data-Semiring_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Conj = x: x;
  showConj = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Conj " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow a) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Conj.purs at 25:1 - 26:44";
        in
          __pattern0 __patternFail;
    };
  semiringConj = dictHeytingAlgebra: 
    { zero = module."Data.HeytingAlgebra".tt dictHeytingAlgebra;
      one = module."Data.HeytingAlgebra".ff dictHeytingAlgebra;
      add = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a = v;
              b = v1;
            in
              module."Data.HeytingAlgebra".conj dictHeytingAlgebra a b;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Conj.purs at 47:1 - 51:42";
        in
          __pattern0 __patternFail;
      mul = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a = v;
              b = v1;
            in
              module."Data.HeytingAlgebra".disj dictHeytingAlgebra a b;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Conj.purs at 47:1 - 51:42";
        in
          __pattern0 __patternFail;
    };
  semigroupConj = dictHeytingAlgebra: 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a = v;
              b = v1;
            in
              module."Data.HeytingAlgebra".conj dictHeytingAlgebra a b;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Conj.purs at 41:1 - 42:45";
        in
          __pattern0 __patternFail;
    };
  ordConj = dictOrd: dictOrd;
  monoidConj = dictHeytingAlgebra: 
    { mempty = module."Data.HeytingAlgebra".tt dictHeytingAlgebra;
      "Semigroup0" = __unused: semigroupConj dictHeytingAlgebra;
    };
  functorConj = 
    { map = f: m: 
        let
          __pattern0 = __fail: 
            let
              v = m;
            in
              f v;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Conj.purs at 28:1 - 28:44";
        in
          __pattern0 __patternFail;
    };
  eqConj = dictEq: dictEq;
  eq1Conj = {eq1 = dictEq: module."Data.Eq".eq (eqConj dictEq);};
  ord1Conj = 
    { compare1 = dictOrd: module."Data.Ord".compare (ordConj dictOrd);
      "Eq10" = __unused: eq1Conj;
    };
  boundedConj = dictBounded: dictBounded;
  applyConj = 
    { apply = v: v1: 
        let
          __pattern0 = __fail: 
            let
              f = v;
              x = v1;
            in
              f x;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Conj.purs at 30:1 - 31:39";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: functorConj;
    };
  bindConj = 
    { bind = v: f: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              f1 = f;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Conj.purs at 36:1 - 37:24";
        in
          __pattern0 __patternFail;
      "Apply0" = __unused: applyConj;
    };
  applicativeConj = 
    { pure = Conj;
      "Apply0" = __unused: applyConj;
    };
  monadConj = 
    { "Applicative0" = __unused: applicativeConj;
      "Bind1" = __unused: bindConj;
    };
in
  {inherit Conj eqConj eq1Conj ordConj ord1Conj boundedConj showConj functorConj applyConj applicativeConj bindConj monadConj semigroupConj monoidConj semiringConj;}
;

Data-Monoid-Disj_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Data.Bounded" = Data-Bounded_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.HeytingAlgebra" = Data-HeytingAlgebra_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Semiring" = Data-Semiring_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Disj = x: x;
  showDisj = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Disj " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow a) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Disj.purs at 25:1 - 26:44";
        in
          __pattern0 __patternFail;
    };
  semiringDisj = dictHeytingAlgebra: 
    { zero = module."Data.HeytingAlgebra".ff dictHeytingAlgebra;
      one = module."Data.HeytingAlgebra".tt dictHeytingAlgebra;
      add = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a = v;
              b = v1;
            in
              module."Data.HeytingAlgebra".disj dictHeytingAlgebra a b;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Disj.purs at 47:1 - 51:42";
        in
          __pattern0 __patternFail;
      mul = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a = v;
              b = v1;
            in
              module."Data.HeytingAlgebra".conj dictHeytingAlgebra a b;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Disj.purs at 47:1 - 51:42";
        in
          __pattern0 __patternFail;
    };
  semigroupDisj = dictHeytingAlgebra: 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a = v;
              b = v1;
            in
              module."Data.HeytingAlgebra".disj dictHeytingAlgebra a b;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Disj.purs at 41:1 - 42:45";
        in
          __pattern0 __patternFail;
    };
  ordDisj = dictOrd: dictOrd;
  monoidDisj = dictHeytingAlgebra: 
    { mempty = module."Data.HeytingAlgebra".ff dictHeytingAlgebra;
      "Semigroup0" = __unused: semigroupDisj dictHeytingAlgebra;
    };
  functorDisj = 
    { map = f: m: 
        let
          __pattern0 = __fail: 
            let
              v = m;
            in
              f v;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Disj.purs at 28:1 - 28:44";
        in
          __pattern0 __patternFail;
    };
  eqDisj = dictEq: dictEq;
  eq1Disj = {eq1 = dictEq: module."Data.Eq".eq (eqDisj dictEq);};
  ord1Disj = 
    { compare1 = dictOrd: module."Data.Ord".compare (ordDisj dictOrd);
      "Eq10" = __unused: eq1Disj;
    };
  boundedDisj = dictBounded: dictBounded;
  applyDisj = 
    { apply = v: v1: 
        let
          __pattern0 = __fail: 
            let
              f = v;
              x = v1;
            in
              f x;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Disj.purs at 30:1 - 31:39";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: functorDisj;
    };
  bindDisj = 
    { bind = v: f: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              f1 = f;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Disj.purs at 36:1 - 37:24";
        in
          __pattern0 __patternFail;
      "Apply0" = __unused: applyDisj;
    };
  applicativeDisj = 
    { pure = Disj;
      "Apply0" = __unused: applyDisj;
    };
  monadDisj = 
    { "Applicative0" = __unused: applicativeDisj;
      "Bind1" = __unused: bindDisj;
    };
in
  {inherit Disj eqDisj eq1Disj ordDisj ord1Disj boundedDisj showDisj functorDisj applyDisj applicativeDisj bindDisj monadDisj semigroupDisj monoidDisj semiringDisj;}
;

Data-Monoid-Dual_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Data.Bounded" = Data-Bounded_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Dual = x: x;
  showDual = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Dual " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow a) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Dual.purs at 24:1 - 25:44";
        in
          __pattern0 __patternFail;
    };
  semigroupDual = dictSemigroup: 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              y = v1;
            in
              module."Data.Semigroup".append dictSemigroup y x;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Dual.purs at 40:1 - 41:43";
        in
          __pattern0 __patternFail;
    };
  ordDual = dictOrd: dictOrd;
  monoidDual = dictMonoid: 
    { mempty = module."Data.Monoid".mempty dictMonoid;
      "Semigroup0" = __unused: semigroupDual (dictMonoid."Semigroup0" module."Prim".undefined);
    };
  functorDual = 
    { map = f: m: 
        let
          __pattern0 = __fail: 
            let
              v = m;
            in
              f v;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Dual.purs at 27:1 - 27:44";
        in
          __pattern0 __patternFail;
    };
  eqDual = dictEq: dictEq;
  eq1Dual = {eq1 = dictEq: module."Data.Eq".eq (eqDual dictEq);};
  ord1Dual = 
    { compare1 = dictOrd: module."Data.Ord".compare (ordDual dictOrd);
      "Eq10" = __unused: eq1Dual;
    };
  boundedDual = dictBounded: dictBounded;
  applyDual = 
    { apply = v: v1: 
        let
          __pattern0 = __fail: 
            let
              f = v;
              x = v1;
            in
              f x;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Dual.purs at 29:1 - 30:39";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: functorDual;
    };
  bindDual = 
    { bind = v: f: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              f1 = f;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Dual.purs at 35:1 - 36:24";
        in
          __pattern0 __patternFail;
      "Apply0" = __unused: applyDual;
    };
  applicativeDual = 
    { pure = Dual;
      "Apply0" = __unused: applyDual;
    };
  monadDual = 
    { "Applicative0" = __unused: applicativeDual;
      "Bind1" = __unused: bindDual;
    };
in
  {inherit Dual eqDual eq1Dual ordDual ord1Dual boundedDual showDual functorDual applyDual applicativeDual bindDual monadDual semigroupDual monoidDual;}
;

Data-Monoid-Endo_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Bounded" = Data-Bounded_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Endo = x: x;
  showEndo = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Endo " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow x) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Endo.purs at 23:1 - 24:44";
        in
          __pattern0 __patternFail;
    };
  semigroupEndo = dictSemigroupoid: 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a = v;
              b = v1;
            in
              module."Control.Semigroupoid".compose dictSemigroupoid a b;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Endo.purs at 26:1 - 27:44";
        in
          __pattern0 __patternFail;
    };
  ordEndo = dictOrd: dictOrd;
  monoidEndo = dictCategory: 
    { mempty = module."Control.Category".identity dictCategory;
      "Semigroup0" = __unused: semigroupEndo (dictCategory."Semigroupoid0" module."Prim".undefined);
    };
  eqEndo = dictEq: dictEq;
  boundedEndo = dictBounded: dictBounded;
in
  {inherit Endo eqEndo ordEndo boundedEndo showEndo semigroupEndo monoidEndo;}
;

Data-Monoid-Generic_default-nix = 
let
  module = 
    { "Data.Generic.Rep" = Data-Generic-Rep_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
    };
  GenericMonoid-Dict = x: x;
  genericMonoidNoArguments = {genericMempty' = module."Data.Generic.Rep".NoArguments;};
  genericMonoidArgument = dictMonoid: {genericMempty' = module."Data.Monoid".mempty dictMonoid;};
  genericMempty' = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericMempty';
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Generic.purs at 11:3 - 11:22";
    in
      __pattern0 __patternFail;
  genericMonoidConstructor = dictGenericMonoid: {genericMempty' = genericMempty' dictGenericMonoid;};
  genericMonoidProduct = dictGenericMonoid: dictGenericMonoid1: {genericMempty' = module."Data.Generic.Rep".Product (genericMempty' dictGenericMonoid) (genericMempty' dictGenericMonoid1);};
  genericMempty = dictGeneric: dictGenericMonoid: module."Data.Generic.Rep".to dictGeneric (genericMempty' dictGenericMonoid);
in
  {inherit genericMempty' genericMempty genericMonoidNoArguments genericMonoidProduct genericMonoidConstructor genericMonoidArgument;}
;

Data-Monoid-Multiplicative_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Data.Bounded" = Data-Bounded_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Semiring" = Data-Semiring_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Multiplicative = x: x;
  showMultiplicative = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Multiplicative " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow a) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Multiplicative.purs at 24:1 - 25:64";
        in
          __pattern0 __patternFail;
    };
  semigroupMultiplicative = dictSemiring: 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a = v;
              b = v1;
            in
              module."Data.Semiring".mul dictSemiring a b;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Multiplicative.purs at 40:1 - 41:72";
        in
          __pattern0 __patternFail;
    };
  ordMultiplicative = dictOrd: dictOrd;
  monoidMultiplicative = dictSemiring: 
    { mempty = module."Data.Semiring".one dictSemiring;
      "Semigroup0" = __unused: semigroupMultiplicative dictSemiring;
    };
  functorMultiplicative = 
    { map = f: m: 
        let
          __pattern0 = __fail: 
            let
              v = m;
            in
              f v;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Multiplicative.purs at 27:1 - 27:64";
        in
          __pattern0 __patternFail;
    };
  eqMultiplicative = dictEq: dictEq;
  eq1Multiplicative = {eq1 = dictEq: module."Data.Eq".eq (eqMultiplicative dictEq);};
  ord1Multiplicative = 
    { compare1 = dictOrd: module."Data.Ord".compare (ordMultiplicative dictOrd);
      "Eq10" = __unused: eq1Multiplicative;
    };
  boundedMultiplicative = dictBounded: dictBounded;
  applyMultiplicative = 
    { apply = v: v1: 
        let
          __pattern0 = __fail: 
            let
              f = v;
              x = v1;
            in
              f x;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Multiplicative.purs at 29:1 - 30:69";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: functorMultiplicative;
    };
  bindMultiplicative = 
    { bind = v: f: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              f1 = f;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid/Multiplicative.purs at 35:1 - 36:34";
        in
          __pattern0 __patternFail;
      "Apply0" = __unused: applyMultiplicative;
    };
  applicativeMultiplicative = 
    { pure = Multiplicative;
      "Apply0" = __unused: applyMultiplicative;
    };
  monadMultiplicative = 
    { "Applicative0" = __unused: applicativeMultiplicative;
      "Bind1" = __unused: bindMultiplicative;
    };
in
  {inherit Multiplicative eqMultiplicative eq1Multiplicative ordMultiplicative ord1Multiplicative boundedMultiplicative showMultiplicative functorMultiplicative applyMultiplicative applicativeMultiplicative bindMultiplicative monadMultiplicative semigroupMultiplicative monoidMultiplicative;}
;

Data-Monoid_default-nix = 
let
  module = 
    { "Data.Boolean" = Data-Boolean_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.EuclideanRing" = Data-EuclideanRing_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Symbol" = Data-Symbol_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prim.Row" = import ../Prim.Row;
      "Prim.RowList" = import ../Prim.RowList;
      "Record.Unsafe" = Record-Unsafe_default-nix;
      "Type.Proxy" = Type-Proxy_default-nix;
    };
  MonoidRecord-Dict = x: x;
  Monoid-Dict = x: x;
  monoidUnit = 
    { mempty = module."Data.Unit".unit;
      "Semigroup0" = __unused: module."Data.Semigroup".semigroupUnit;
    };
  monoidString = 
    { mempty = "";
      "Semigroup0" = __unused: module."Data.Semigroup".semigroupString;
    };
  monoidRecordNil = 
    { memptyRecord = v: { };
      "SemigroupRecord0" = __unused: module."Data.Semigroup".semigroupRecordNil;
    };
  monoidOrdering = 
    { mempty = module."Data.Ordering".EQ;
      "Semigroup0" = __unused: module."Data.Ordering".semigroupOrdering;
    };
  monoidArray = 
    { mempty = [];
      "Semigroup0" = __unused: module."Data.Semigroup".semigroupArray;
    };
  memptyRecord = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.memptyRecord;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid.purs at 102:3 - 102:67";
    in
      __pattern0 __patternFail;
  monoidRecord = dictRowToList: dictMonoidRecord: 
    { mempty = memptyRecord dictMonoidRecord module."Type.Proxy".Proxy;
      "Semigroup0" = __unused: module."Data.Semigroup".semigroupRecord module."Prim".undefined (dictMonoidRecord."SemigroupRecord0" module."Prim".undefined);
    };
  mempty = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.mempty;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid.purs at 45:3 - 45:14";
    in
      __pattern0 __patternFail;
  monoidFn = dictMonoid: 
    { mempty = v: mempty dictMonoid;
      "Semigroup0" = __unused: module."Data.Semigroup".semigroupFn (dictMonoid."Semigroup0" module."Prim".undefined);
    };
  monoidRecordCons = dictIsSymbol: dictMonoid: dictCons: dictMonoidRecord: 
    { memptyRecord = v: 
        let
          tail = memptyRecord dictMonoidRecord module."Type.Proxy".Proxy;
          key = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
          insert = module."Record.Unsafe".unsafeSet key;
        in
          insert (mempty dictMonoid) tail;
      "SemigroupRecord0" = __unused: module."Data.Semigroup".semigroupRecordCons dictIsSymbol module."Prim".undefined (dictMonoidRecord."SemigroupRecord0" module."Prim".undefined) (dictMonoid."Semigroup0" module."Prim".undefined);
    };
  power = dictMonoid: x: 
    let
      go = p: 
        let
          __pattern0 = __fail: 
            let
              p1 = p;
            in
              
              if module."Data.Ord".lessThanOrEq module."Data.Ord".ordInt p1 0
                then mempty dictMonoid
                else 
                  if module."Data.Eq".eq module."Data.Eq".eqInt p1 1
                    then x
                    else 
                      if module."Data.Eq".eq module."Data.Eq".eqInt (module."Data.EuclideanRing".mod module."Data.EuclideanRing".euclideanRingInt p1 2) 0
                        then 
                          let
                            x' = go (module."Data.EuclideanRing".div module."Data.EuclideanRing".euclideanRingInt p1 2);
                          in
                            module."Data.Semigroup".append (dictMonoid."Semigroup0" module."Prim".undefined) x' x'
                        else 
                          if module."Data.Boolean".otherwise
                            then 
                              let
                                x' = go (module."Data.EuclideanRing".div module."Data.EuclideanRing".euclideanRingInt p1 2);
                              in
                                module."Data.Semigroup".append (dictMonoid."Semigroup0" module."Prim".undefined) x' (module."Data.Semigroup".append (dictMonoid."Semigroup0" module."Prim".undefined) x' x)
                            else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid.purs at 86:3 - 86:17";
        in
          __pattern0 __patternFail;
    in
      go;
  guard = dictMonoid: v: v1: 
    let
      __pattern0 = __fail: 
        if v
          then 
            let
              a = v1;
            in
              a
          else __fail;
      __pattern1 = __fail: if !v then mempty dictMonoid else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Monoid.purs at 94:1 - 94:49";
    in
      __pattern0 (__pattern1 __patternFail);
in
  
  { inherit mempty power guard memptyRecord monoidUnit monoidOrdering monoidFn monoidString monoidArray monoidRecord monoidRecordNil monoidRecordCons;
    inherit (module."Data.Semigroup");
  }
;

Data-NaturalTransformation_default-nix = 
let
  module = { };
in
  { }
;

Data-Newtype_default-nix = 
let
  module = 
    { "Data.Monoid.Additive" = Data-Monoid-Additive_default-nix;
      "Data.Monoid.Conj" = Data-Monoid-Conj_default-nix;
      "Data.Monoid.Disj" = Data-Monoid-Disj_default-nix;
      "Data.Monoid.Dual" = Data-Monoid-Dual_default-nix;
      "Data.Monoid.Endo" = Data-Monoid-Endo_default-nix;
      "Data.Monoid.Multiplicative" = Data-Monoid-Multiplicative_default-nix;
      "Data.Semigroup.First" = Data-Semigroup-First_default-nix;
      "Data.Semigroup.Last" = Data-Semigroup-Last_default-nix;
      "Safe.Coerce" = Safe-Coerce_default-nix;
    };
  Newtype-Dict = x: x;
  wrap = dictNewtype: module."Safe.Coerce".coerce module."Prim".undefined;
  unwrap = dictNewtype: module."Safe.Coerce".coerce module."Prim".undefined;
  underF2 = dictCoercible: dictCoercible1: dictNewtype: dictNewtype1: v: module."Safe.Coerce".coerce module."Prim".undefined;
  underF = dictCoercible: dictCoercible1: dictNewtype: dictNewtype1: v: module."Safe.Coerce".coerce module."Prim".undefined;
  under2 = dictNewtype: dictNewtype1: v: module."Safe.Coerce".coerce module."Prim".undefined;
  under = dictNewtype: dictNewtype1: v: module."Safe.Coerce".coerce module."Prim".undefined;
  un = dictNewtype: v: unwrap module."Prim".undefined;
  traverse = dictCoercible: dictNewtype: v: module."Safe.Coerce".coerce module."Prim".undefined;
  overF2 = dictCoercible: dictCoercible1: dictNewtype: dictNewtype1: v: module."Safe.Coerce".coerce module."Prim".undefined;
  overF = dictCoercible: dictCoercible1: dictNewtype: dictNewtype1: v: module."Safe.Coerce".coerce module."Prim".undefined;
  over2 = dictNewtype: dictNewtype1: v: module."Safe.Coerce".coerce module."Prim".undefined;
  over = dictNewtype: dictNewtype1: v: module."Safe.Coerce".coerce module."Prim".undefined;
  newtypeMultiplicative = {"Coercible0" = __unused: module."Prim".undefined;};
  newtypeLast = {"Coercible0" = __unused: module."Prim".undefined;};
  newtypeFirst = {"Coercible0" = __unused: module."Prim".undefined;};
  newtypeEndo = {"Coercible0" = __unused: module."Prim".undefined;};
  newtypeDual = {"Coercible0" = __unused: module."Prim".undefined;};
  newtypeDisj = {"Coercible0" = __unused: module."Prim".undefined;};
  newtypeConj = {"Coercible0" = __unused: module."Prim".undefined;};
  newtypeAdditive = {"Coercible0" = __unused: module."Prim".undefined;};
  collect = dictCoercible: dictNewtype: v: module."Safe.Coerce".coerce module."Prim".undefined;
  alaF = dictCoercible: dictCoercible1: dictNewtype: dictNewtype1: v: module."Safe.Coerce".coerce module."Prim".undefined;
  ala = dictCoercible: dictNewtype: dictNewtype1: v: f: module."Safe.Coerce".coerce module."Prim".undefined (f (wrap module."Prim".undefined));
in
  {inherit wrap unwrap un ala alaF over overF under underF over2 overF2 under2 underF2 traverse collect newtypeAdditive newtypeMultiplicative newtypeConj newtypeDisj newtypeDual newtypeEndo newtypeFirst newtypeLast;}
;

Data-Op_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Functor.Contravariant" = Data-Functor-Contravariant_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Op = x: x;
  semigroupoidOp = 
    { compose = v: v1: 
        let
          __pattern0 = __fail: 
            let
              f = v;
              g = v1;
            in
              module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn g f;
          __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Op.purs at 15:1 - 16:43";
        in
          __pattern0 __patternFail;
    };
  semigroupOp = dictSemigroup: module."Data.Semigroup".semigroupFn dictSemigroup;
  newtypeOp = {"Coercible0" = __unused: module."Prim".undefined;};
  monoidOp = dictMonoid: module."Data.Monoid".monoidFn dictMonoid;
  contravariantOp = 
    { cmap = f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g = v;
            in
              module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn g f1;
          __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Op.purs at 21:1 - 22:31";
        in
          __pattern0 __patternFail;
    };
  categoryOp = 
    { identity = module."Control.Category".identity module."Control.Category".categoryFn;
      "Semigroupoid0" = __unused: semigroupoidOp;
    };
in
  {inherit Op newtypeOp semigroupOp monoidOp semigroupoidOp categoryOp contravariantOp;}
;

Data-Ord-Down_default-nix = 
let
  module = 
    { "Data.Bounded" = Data-Bounded_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Down = x: x;
  showDown = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Down " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow a) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/orders/757ab6d323dd5a2252c4198c65a821a92484751b/src/Data/Ord/Down.purs at 25:1 - 26:44";
        in
          __pattern0 __patternFail;
    };
  newtypeDown = {"Coercible0" = __unused: module."Prim".undefined;};
  eqDown = dictEq: dictEq;
  ordDown = dictOrd: 
    { compare = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              y = v1;
            in
              module."Data.Ordering".invert (module."Data.Ord".compare dictOrd x y);
          __patternFail = builtins.throw "Pattern match failure in .spago/orders/757ab6d323dd5a2252c4198c65a821a92484751b/src/Data/Ord/Down.purs at 18:1 - 19:51";
        in
          __pattern0 __patternFail;
      "Eq0" = __unused: eqDown (dictOrd."Eq0" module."Prim".undefined);
    };
  boundedDown = dictBounded: 
    { top = module."Data.Bounded".bottom dictBounded;
      bottom = module."Data.Bounded".top dictBounded;
      "Ord0" = __unused: ordDown (dictBounded."Ord0" module."Prim".undefined);
    };
in
  {inherit Down newtypeDown eqDown ordDown boundedDown showDown;}
;

Data-Ord-Generic_default-nix = 
let
  module = 
    { "Data.Generic.Rep" = Data-Generic-Rep_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  GenericOrd-Dict = x: x;
  genericOrdNoConstructors = {genericCompare' = v: v1: module."Data.Ordering".EQ;};
  genericOrdNoArguments = {genericCompare' = v: v1: module."Data.Ordering".EQ;};
  genericOrdArgument = dictOrd: 
    { genericCompare' = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a1 = v;
              a2 = v1;
            in
              module."Data.Ord".compare dictOrd a1 a2;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord/Generic.purs at 34:1 - 35:62";
        in
          __pattern0 __patternFail;
    };
  genericCompare' = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericCompare';
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord/Generic.purs at 11:3 - 11:40";
    in
      __pattern0 __patternFail;
  genericOrdConstructor = dictGenericOrd: 
    { genericCompare' = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a1 = v;
              a2 = v1;
            in
              genericCompare' dictGenericOrd a1 a2;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord/Generic.purs at 31:1 - 32:76";
        in
          __pattern0 __patternFail;
    };
  genericOrdProduct = dictGenericOrd: dictGenericOrd1: 
    { genericCompare' = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product" && v1.__tag == "Product"
              then 
                let
                  a1 = v.__field0;
                  b1 = v.__field1;
                  a2 = v1.__field0;
                  b2 = v1.__field1;
                in
                  
                  let
                    v2 = genericCompare' dictGenericOrd a1 a2;
                  in
                    
                    let
                      __pattern0 = __fail: if v2.__tag == "EQ" then genericCompare' dictGenericOrd1 b1 b2 else __fail;
                      __pattern1 = __fail: 
                        let
                          other = v2;
                        in
                          other;
                      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord/Generic.purs at 27:5 - 29:21";
                    in
                      __pattern0 (__pattern1 __patternFail)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord/Generic.purs at 25:1 - 29:21";
        in
          __pattern0 __patternFail;
    };
  genericOrdSum = dictGenericOrd: dictGenericOrd1: 
    { genericCompare' = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Inl" && v1.__tag == "Inl"
              then 
                let
                  a1 = v.__field0;
                  a2 = v1.__field0;
                in
                  genericCompare' dictGenericOrd a1 a2
              else __fail;
          __pattern1 = __fail: 
            if v.__tag == "Inr" && v1.__tag == "Inr"
              then 
                let
                  b1 = v.__field0;
                  b2 = v1.__field0;
                in
                  genericCompare' dictGenericOrd1 b1 b2
              else __fail;
          __pattern2 = __fail: if v.__tag == "Inl" && v1.__tag == "Inr" then module."Data.Ordering".LT else __fail;
          __pattern3 = __fail: if v.__tag == "Inr" && v1.__tag == "Inl" then module."Data.Ordering".GT else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord/Generic.purs at 19:1 - 23:39";
        in
          __pattern0 (__pattern1 (__pattern2 (__pattern3 __patternFail)));
    };
  genericCompare = dictGeneric: dictGenericOrd: x: y: genericCompare' dictGenericOrd (module."Data.Generic.Rep".from dictGeneric x) (module."Data.Generic.Rep".from dictGeneric y);
in
  {inherit genericCompare' genericCompare genericOrdNoConstructors genericOrdNoArguments genericOrdSum genericOrdProduct genericOrdConstructor genericOrdArgument;}
;

Data-Ord-Max_default-nix = 
let
  module = 
    { "Data.Bounded" = Data-Bounded_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Max = x: x;
  showMax = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Max " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow a) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/orders/757ab6d323dd5a2252c4198c65a821a92484751b/src/Data/Ord/Max.purs at 28:1 - 29:42";
        in
          __pattern0 __patternFail;
    };
  semigroupMax = dictOrd: 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              y = v1;
            in
              module."Data.Ord".max dictOrd x y;
          __patternFail = builtins.throw "Pattern match failure in .spago/orders/757ab6d323dd5a2252c4198c65a821a92484751b/src/Data/Ord/Max.purs at 22:1 - 23:41";
        in
          __pattern0 __patternFail;
    };
  newtypeMax = {"Coercible0" = __unused: module."Prim".undefined;};
  monoidMax = dictBounded: 
    { mempty = module."Data.Bounded".bottom dictBounded;
      "Semigroup0" = __unused: semigroupMax (dictBounded."Ord0" module."Prim".undefined);
    };
  eqMax = dictEq: dictEq;
  ordMax = dictOrd: 
    { compare = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              y = v1;
            in
              module."Data.Ord".compare dictOrd x y;
          __patternFail = builtins.throw "Pattern match failure in .spago/orders/757ab6d323dd5a2252c4198c65a821a92484751b/src/Data/Ord/Max.purs at 19:1 - 20:40";
        in
          __pattern0 __patternFail;
      "Eq0" = __unused: eqMax (dictOrd."Eq0" module."Prim".undefined);
    };
in
  {inherit Max newtypeMax eqMax ordMax semigroupMax monoidMax showMax;}
;

Data-Ord-Min_default-nix = 
let
  module = 
    { "Data.Bounded" = Data-Bounded_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Min = x: x;
  showMin = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Min " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow a) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/orders/757ab6d323dd5a2252c4198c65a821a92484751b/src/Data/Ord/Min.purs at 28:1 - 29:42";
        in
          __pattern0 __patternFail;
    };
  semigroupMin = dictOrd: 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              y = v1;
            in
              module."Data.Ord".min dictOrd x y;
          __patternFail = builtins.throw "Pattern match failure in .spago/orders/757ab6d323dd5a2252c4198c65a821a92484751b/src/Data/Ord/Min.purs at 22:1 - 23:41";
        in
          __pattern0 __patternFail;
    };
  newtypeMin = {"Coercible0" = __unused: module."Prim".undefined;};
  monoidMin = dictBounded: 
    { mempty = module."Data.Bounded".top dictBounded;
      "Semigroup0" = __unused: semigroupMin (dictBounded."Ord0" module."Prim".undefined);
    };
  eqMin = dictEq: dictEq;
  ordMin = dictOrd: 
    { compare = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              y = v1;
            in
              module."Data.Ord".compare dictOrd x y;
          __patternFail = builtins.throw "Pattern match failure in .spago/orders/757ab6d323dd5a2252c4198c65a821a92484751b/src/Data/Ord/Min.purs at 19:1 - 20:40";
        in
          __pattern0 __patternFail;
      "Eq0" = __unused: eqMin (dictOrd."Eq0" module."Prim".undefined);
    };
in
  {inherit Min newtypeMin eqMin ordMin semigroupMin monoidMin showMin;}
;

Data-Ord_default-nix = 
let
  module = 
    { "Data.Eq" = Data-Eq_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Data.Ring" = Data-Ring_default-nix;
      "Data.Semiring" = Data-Semiring_default-nix;
      "Data.Symbol" = Data-Symbol_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Data.Void" = Data-Void_default-nix;
      "Prim.Row" = import ../Prim.Row;
      "Prim.RowList" = import ../Prim.RowList;
      "Record.Unsafe" = Record-Unsafe_default-nix;
      "Type.Proxy" = Type-Proxy_default-nix;
    };
  foreign = Data-Ord_foreign-nix;
  ordBooleanImpl = foreign.ordBooleanImpl;
  ordIntImpl = foreign.ordIntImpl;
  ordNumberImpl = foreign.ordNumberImpl;
  ordStringImpl = foreign.ordStringImpl;
  ordCharImpl = foreign.ordCharImpl;
  ordArrayImpl = foreign.ordArrayImpl;
  OrdRecord-Dict = x: x;
  Ord-Dict = x: x;
  Ord1-Dict = x: x;
  ordVoid = 
    { compare = v: v1: module."Data.Ordering".EQ;
      "Eq0" = __unused: module."Data.Eq".eqVoid;
    };
  ordUnit = 
    { compare = v: v1: module."Data.Ordering".EQ;
      "Eq0" = __unused: module."Data.Eq".eqUnit;
    };
  ordString = 
    { compare = ordStringImpl module."Data.Ordering".LT module."Data.Ordering".EQ module."Data.Ordering".GT;
      "Eq0" = __unused: module."Data.Eq".eqString;
    };
  ordRecordNil = 
    { compareRecord = v: v1: v2: module."Data.Ordering".EQ;
      "EqRecord0" = __unused: module."Data.Eq".eqRowNil;
    };
  ordProxy3 = 
    { compare = v: v1: module."Data.Ordering".EQ;
      "Eq0" = __unused: module."Data.Eq".eqProxy3;
    };
  ordProxy2 = 
    { compare = v: v1: module."Data.Ordering".EQ;
      "Eq0" = __unused: module."Data.Eq".eqProxy2;
    };
  ordProxy = 
    { compare = v: v1: module."Data.Ordering".EQ;
      "Eq0" = __unused: module."Data.Eq".eqProxy;
    };
  ordOrdering = 
    { compare = v: v1: 
        let
          __pattern0 = __fail: if v.__tag == "LT" && v1.__tag == "LT" then module."Data.Ordering".EQ else __fail;
          __pattern1 = __fail: if v.__tag == "EQ" && v1.__tag == "EQ" then module."Data.Ordering".EQ else __fail;
          __pattern2 = __fail: if v.__tag == "GT" && v1.__tag == "GT" then module."Data.Ordering".EQ else __fail;
          __pattern3 = __fail: if v.__tag == "LT" then module."Data.Ordering".LT else __fail;
          __pattern4 = __fail: if v.__tag == "EQ" && v1.__tag == "LT" then module."Data.Ordering".GT else __fail;
          __pattern5 = __fail: if v.__tag == "EQ" && v1.__tag == "GT" then module."Data.Ordering".LT else __fail;
          __pattern6 = __fail: if v.__tag == "GT" then module."Data.Ordering".GT else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs at 121:1 - 128:21";
        in
          __pattern0 (__pattern1 (__pattern2 (__pattern3 (__pattern4 (__pattern5 (__pattern6 __patternFail))))));
      "Eq0" = __unused: module."Data.Ordering".eqOrdering;
    };
  ordNumber = 
    { compare = ordNumberImpl module."Data.Ordering".LT module."Data.Ordering".EQ module."Data.Ordering".GT;
      "Eq0" = __unused: module."Data.Eq".eqNumber;
    };
  ordInt = 
    { compare = ordIntImpl module."Data.Ordering".LT module."Data.Ordering".EQ module."Data.Ordering".GT;
      "Eq0" = __unused: module."Data.Eq".eqInt;
    };
  ordChar = 
    { compare = ordCharImpl module."Data.Ordering".LT module."Data.Ordering".EQ module."Data.Ordering".GT;
      "Eq0" = __unused: module."Data.Eq".eqChar;
    };
  ordBoolean = 
    { compare = ordBooleanImpl module."Data.Ordering".LT module."Data.Ordering".EQ module."Data.Ordering".GT;
      "Eq0" = __unused: module."Data.Eq".eqBoolean;
    };
  compareRecord = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.compareRecord;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs at 228:3 - 228:91";
    in
      __pattern0 __patternFail;
  ordRecord = dictRowToList: dictOrdRecord: 
    { compare = compareRecord dictOrdRecord module."Type.Proxy".Proxy;
      "Eq0" = __unused: module."Data.Eq".eqRec module."Prim".undefined (dictOrdRecord."EqRecord0" module."Prim".undefined);
    };
  compare1 = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.compare1;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs at 221:3 - 221:56";
    in
      __pattern0 __patternFail;
  compare = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.compare;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs at 38:3 - 38:32";
    in
      __pattern0 __patternFail;
  comparing = dictOrd: f: x: y: compare dictOrd (f x) (f y);
  greaterThan = dictOrd: a1: a2: 
    let
      v = compare dictOrd a1 a2;
    in
      
      let
        __pattern0 = __fail: if v.__tag == "GT" then true else __fail;
        __pattern1 = __fail: false;
        __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs at 138:21 - 140:13";
      in
        __pattern0 (__pattern1 __patternFail);
  greaterThanOrEq = dictOrd: a1: a2: 
    let
      v = compare dictOrd a1 a2;
    in
      
      let
        __pattern0 = __fail: if v.__tag == "LT" then false else __fail;
        __pattern1 = __fail: true;
        __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs at 150:25 - 152:12";
      in
        __pattern0 (__pattern1 __patternFail);
  signum = dictOrd: dictRing: x: 
    let
      __pattern0 = __fail: if greaterThanOrEq dictOrd x (module."Data.Semiring".zero (dictRing."Semiring0" module."Prim".undefined)) then module."Data.Semiring".one (dictRing."Semiring0" module."Prim".undefined) else __fail;
      __pattern1 = __fail: module."Data.Ring".negate dictRing (module."Data.Semiring".one (dictRing."Semiring0" module."Prim".undefined));
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs at 217:12 - 217:49";
    in
      __pattern0 (__pattern1 __patternFail);
  lessThan = dictOrd: a1: a2: 
    let
      v = compare dictOrd a1 a2;
    in
      
      let
        __pattern0 = __fail: if v.__tag == "LT" then true else __fail;
        __pattern1 = __fail: false;
        __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs at 132:18 - 134:13";
      in
        __pattern0 (__pattern1 __patternFail);
  lessThanOrEq = dictOrd: a1: a2: 
    let
      v = compare dictOrd a1 a2;
    in
      
      let
        __pattern0 = __fail: if v.__tag == "GT" then false else __fail;
        __pattern1 = __fail: true;
        __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs at 144:22 - 146:12";
      in
        __pattern0 (__pattern1 __patternFail);
  max = dictOrd: x: y: 
    let
      v = compare dictOrd x y;
    in
      
      let
        __pattern0 = __fail: if v.__tag == "LT" then y else __fail;
        __pattern1 = __fail: if v.__tag == "EQ" then x else __fail;
        __pattern2 = __fail: if v.__tag == "GT" then x else __fail;
        __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs at 176:3 - 179:12";
      in
        __pattern0 (__pattern1 (__pattern2 __patternFail));
  min = dictOrd: x: y: 
    let
      v = compare dictOrd x y;
    in
      
      let
        __pattern0 = __fail: if v.__tag == "LT" then x else __fail;
        __pattern1 = __fail: if v.__tag == "EQ" then x else __fail;
        __pattern2 = __fail: if v.__tag == "GT" then y else __fail;
        __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs at 167:3 - 170:12";
      in
        __pattern0 (__pattern1 (__pattern2 __patternFail));
  ordArray = dictOrd: 
    { compare = 
        let
          toDelta = x: y: 
            let
              v = compare dictOrd x y;
            in
              
              let
                __pattern0 = __fail: if v.__tag == "EQ" then 0 else __fail;
                __pattern1 = __fail: if v.__tag == "LT" then 1 else __fail;
                __pattern2 = __fail: if v.__tag == "GT" then module."Data.Ring".negate module."Data.Ring".ringInt 1 else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs at 74:7 - 77:17";
              in
                __pattern0 (__pattern1 (__pattern2 __patternFail));
        in
          xs: ys: compare ordInt 0 (ordArrayImpl toDelta xs ys);
      "Eq0" = __unused: module."Data.Eq".eqArray (dictOrd."Eq0" module."Prim".undefined);
    };
  ord1Array = 
    { compare1 = dictOrd: compare (ordArray dictOrd);
      "Eq10" = __unused: module."Data.Eq".eq1Array;
    };
  ordRecordCons = dictOrdRecord: dictCons: dictIsSymbol: dictOrd: 
    { compareRecord = v: ra: rb: 
        let
          unsafeGet' = module."Record.Unsafe".unsafeGet;
          key = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
          left = compare dictOrd (unsafeGet' key ra) (unsafeGet' key rb);
        in
          
          let
            __pattern0 = __fail: if module."Data.Eq".notEq module."Data.Ordering".eqOrdering left module."Data.Ordering".EQ then left else __fail;
            __pattern1 = __fail: compareRecord dictOrdRecord module."Type.Proxy".Proxy ra rb;
            __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs at 241:7 - 243:62";
          in
            __pattern0 (__pattern1 __patternFail);
      "EqRecord0" = __unused: module."Data.Eq".eqRowCons (dictOrdRecord."EqRecord0" module."Prim".undefined) module."Prim".undefined dictIsSymbol (dictOrd."Eq0" module."Prim".undefined);
    };
  clamp = dictOrd: low: hi: x: min dictOrd hi (max dictOrd low x);
  between = dictOrd: low: hi: x: 
    let
      __pattern0 = __fail: 
        let
          low1 = low;
          hi1 = hi;
          x1 = x;
        in
          if lessThan dictOrd x1 low1 then false else if greaterThan dictOrd x1 hi1 then false else if true then true else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs at 203:1 - 203:53";
    in
      __pattern0 __patternFail;
  abs = dictOrd: dictRing: x: 
    let
      __pattern0 = __fail: if greaterThanOrEq dictOrd x (module."Data.Semiring".zero (dictRing."Semiring0" module."Prim".undefined)) then x else __fail;
      __pattern1 = __fail: module."Data.Ring".negate dictRing x;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ord.purs at 212:9 - 212:42";
    in
      __pattern0 (__pattern1 __patternFail);
in
  
  { inherit compare compare1 lessThan lessThanOrEq greaterThan greaterThanOrEq comparing min max clamp between abs signum compareRecord ordBoolean ordInt ordNumber ordString ordChar ordUnit ordVoid ordProxy ordProxy2 ordProxy3 ordArray ordOrdering ord1Array ordRecordNil ordRecordCons ordRecord;
    inherit (module."Data.Ordering") EQ GT LT;
  }
;

Data-Ord_foreign-nix = 
let
  myOrd = lt: eq: gt: a: b:
    if a < b
      then lt
      else
        if a == b then eq else gt;

  # TODO: A while loop incrementing the index of the array and using
  # builtins.elemAt may be faster than builtins.head and builtins.tail.
  arrOrd = compare: arrA: arrB:
    if arrA == [] then
      if arrB == [] then
        0
      else
        1
    else
      if arrB == [] then
        -1
      else
        let
          rel = compare (builtins.head arrA) (builtins.head arrB);
         in
           if rel == 0 then
             arrOrd compare (builtins.tail arrA) (builtins.tail arrB)
           else
             rel;

  # In PureScript, true > false.  But in Nix, we can't directly compare
  # booleans, so we need this function.
  ordBooleanImpl = lt: eq: gt: a: b:
    if a && !b then
      gt
    else
      if !a && b then
        lt
      else
        eq;
in

{ inherit ordBooleanImpl;
  ordIntImpl = myOrd;
  ordNumberImpl = myOrd;
  ordStringImpl = myOrd;
  ordCharImpl = myOrd;
  ordArrayImpl = arrOrd;
}

;

Data-Ordering_default-nix = 
let
  module = 
    { "Data.Eq" = Data-Eq_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
    };
  LT = {__tag = "LT";};
  GT = {__tag = "GT";};
  EQ = {__tag = "EQ";};
  showOrdering = 
    { show = v: 
        let
          __pattern0 = __fail: if v.__tag == "LT" then "LT" else __fail;
          __pattern1 = __fail: if v.__tag == "GT" then "GT" else __fail;
          __pattern2 = __fail: if v.__tag == "EQ" then "EQ" else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ordering.purs at 26:1 - 29:17";
        in
          __pattern0 (__pattern1 (__pattern2 __patternFail));
    };
  semigroupOrdering = 
    { append = v: v1: 
        let
          __pattern0 = __fail: if v.__tag == "LT" then LT else __fail;
          __pattern1 = __fail: if v.__tag == "GT" then GT else __fail;
          __pattern2 = __fail: 
            if v.__tag == "EQ"
              then 
                let
                  y = v1;
                in
                  y
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ordering.purs at 21:1 - 24:18";
        in
          __pattern0 (__pattern1 (__pattern2 __patternFail));
    };
  invert = v: 
    let
      __pattern0 = __fail: if v.__tag == "GT" then LT else __fail;
      __pattern1 = __fail: if v.__tag == "EQ" then EQ else __fail;
      __pattern2 = __fail: if v.__tag == "LT" then GT else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ordering.purs at 33:1 - 33:31";
    in
      __pattern0 (__pattern1 (__pattern2 __patternFail));
  eqOrdering = 
    { eq = v: v1: 
        let
          __pattern0 = __fail: if v.__tag == "LT" && v1.__tag == "LT" then true else __fail;
          __pattern1 = __fail: if v.__tag == "GT" && v1.__tag == "GT" then true else __fail;
          __pattern2 = __fail: if v.__tag == "EQ" && v1.__tag == "EQ" then true else __fail;
          __pattern3 = __fail: false;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ordering.purs at 15:1 - 19:19";
        in
          __pattern0 (__pattern1 (__pattern2 (__pattern3 __patternFail)));
    };
in
  {inherit LT GT EQ invert eqOrdering semigroupOrdering showOrdering;}
;

Data-Predicate_default-nix = 
let
  module = 
    { "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.BooleanAlgebra" = Data-BooleanAlgebra_default-nix;
      "Data.Functor.Contravariant" = Data-Functor-Contravariant_default-nix;
      "Data.HeytingAlgebra" = Data-HeytingAlgebra_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Predicate = x: x;
  newtypePredicate = {"Coercible0" = __unused: module."Prim".undefined;};
  heytingAlgebraPredicate = module."Data.HeytingAlgebra".heytingAlgebraFunction module."Data.HeytingAlgebra".heytingAlgebraBoolean;
  contravariantPredicate = 
    { cmap = f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g = v;
            in
              module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn g f1;
          __patternFail = builtins.throw "Pattern match failure in .spago/contravariant/f131d673128a490d27f85039dea34b5b316cc16e/src/Data/Predicate.purs at 17:1 - 18:45";
        in
          __pattern0 __patternFail;
    };
  booleanAlgebraPredicate = module."Data.BooleanAlgebra".booleanAlgebraFn module."Data.BooleanAlgebra".booleanAlgebraBoolean;
in
  {inherit Predicate newtypePredicate heytingAlgebraPredicate booleanAlgebraPredicate contravariantPredicate;}
;

Data-Profunctor-Choice_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Either" = Data-Either_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Profunctor" = Data-Profunctor_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Choice-Dict = x: x;
  right = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.right;
      __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Choice.purs at 30:3 - 30:62";
    in
      __pattern0 __patternFail;
  left = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.left;
      __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Choice.purs at 29:3 - 29:61";
    in
      __pattern0 __patternFail;
  splitChoice = dictCategory: dictChoice: l: r: module."Control.Semigroupoid".composeFlipped (dictCategory."Semigroupoid0" module."Prim".undefined) (left dictChoice l) (right dictChoice r);
  fanin = dictCategory: dictChoice: l: r: 
    let
      join = module."Data.Profunctor".dimap (dictChoice."Profunctor0" module."Prim".undefined) (module."Data.Either".either (module."Control.Category".identity module."Control.Category".categoryFn) (module."Control.Category".identity module."Control.Category".categoryFn)) (module."Control.Category".identity module."Control.Category".categoryFn) (module."Control.Category".identity dictCategory);
    in
      module."Control.Semigroupoid".composeFlipped (dictCategory."Semigroupoid0" module."Prim".undefined) (splitChoice dictCategory dictChoice l r) join;
  choiceFn = 
    { left = v: v1: 
        let
          __pattern0 = __fail: 
            if v1.__tag == "Left"
              then 
                let
                  a2b = v;
                  a = v1.__field0;
                in
                  module."Data.Function".apply module."Data.Either".Left (a2b a)
              else __fail;
          __pattern1 = __fail: 
            if v1.__tag == "Right"
              then 
                let
                  c = v1.__field0;
                in
                  module."Data.Either".Right c
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Choice.purs at 32:1 - 35:16";
        in
          __pattern0 (__pattern1 __patternFail);
      right = module."Data.Functor".map module."Data.Either".functorEither;
      "Profunctor0" = __unused: module."Data.Profunctor".profunctorFn;
    };
in
  {inherit left right splitChoice fanin choiceFn;}
;

Data-Profunctor-Closed_default-nix = 
let
  module = 
    { "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Profunctor" = Data-Profunctor_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Closed-Dict = x: x;
  closedFunction = 
    { closed = module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn;
      "Profunctor0" = __unused: module."Data.Profunctor".profunctorFn;
    };
  closed = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.closed;
      __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Closed.purs at 9:3 - 9:55";
    in
      __pattern0 __patternFail;
in
  {inherit closed closedFunction;}
;

Data-Profunctor-Cochoice_default-nix = 
let
  module = 
    { "Data.Either" = Data-Either_default-nix;
      "Data.Profunctor" = Data-Profunctor_default-nix;
    };
  Cochoice-Dict = x: x;
  unright = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.unright;
      __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Cochoice.purs at 9:3 - 9:64";
    in
      __pattern0 __patternFail;
  unleft = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.unleft;
      __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Cochoice.purs at 8:3 - 8:63";
    in
      __pattern0 __patternFail;
in
  {inherit unleft unright;}
;

Data-Profunctor-Costrong_default-nix = 
let
  module = 
    { "Data.Profunctor" = Data-Profunctor_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
    };
  Costrong-Dict = x: x;
  unsecond = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.unsecond;
      __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Costrong.purs at 9:3 - 9:63";
    in
      __pattern0 __patternFail;
  unfirst = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.unfirst;
      __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Costrong.purs at 8:3 - 8:62";
    in
      __pattern0 __patternFail;
in
  {inherit unfirst unsecond;}
;

Data-Profunctor-Join_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Functor.Invariant" = Data-Functor-Invariant_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Profunctor" = Data-Profunctor_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Join = x: x;
  showJoin = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Join " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow x) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Join.purs at 18:1 - 19:44";
        in
          __pattern0 __patternFail;
    };
  semigroupJoin = dictSemigroupoid: 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a = v;
              b = v1;
            in
              module."Control.Semigroupoid".compose dictSemigroupoid a b;
          __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Join.purs at 21:1 - 22:44";
        in
          __pattern0 __patternFail;
    };
  ordJoin = dictOrd: dictOrd;
  newtypeJoin = {"Coercible0" = __unused: module."Prim".undefined;};
  monoidJoin = dictCategory: 
    { mempty = module."Control.Category".identity dictCategory;
      "Semigroup0" = __unused: semigroupJoin (dictCategory."Semigroupoid0" module."Prim".undefined);
    };
  invariantJoin = dictProfunctor: 
    { imap = f: g: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g1 = g;
              a = v;
            in
              module."Data.Profunctor".dimap dictProfunctor g1 f1 a;
          __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Join.purs at 27:1 - 28:41";
        in
          __pattern0 __patternFail;
    };
  eqJoin = dictEq: dictEq;
in
  {inherit Join newtypeJoin eqJoin ordJoin showJoin semigroupJoin monoidJoin invariantJoin;}
;

Data-Profunctor-Split_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Exists" = Data-Exists_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Functor.Invariant" = Data-Functor-Invariant_default-nix;
      "Data.Profunctor" = Data-Profunctor_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  SplitF = value0: value1: value2: 
    { __tag = "SplitF";
      __field0 = value0;
      __field1 = value1;
      __field2 = value2;
    };
  Split = x: x;
  unSplit = f: v: 
    let
      __pattern0 = __fail: 
        let
          f1 = f;
          e = v;
        in
          module."Data.Exists".runExists 
          ( v1: 
            let
              __pattern0 = __fail: 
                if v1.__tag == "SplitF"
                  then 
                    let
                      g = v1.__field0;
                      h = v1.__field1;
                      fx = v1.__field2;
                    in
                      f1 g h fx
                  else __fail;
              __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Split.purs at 30:34 - 30:62";
            in
              __pattern0 __patternFail
          ) e;
      __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Split.purs at 29:1 - 29:92";
    in
      __pattern0 __patternFail;
  split = f: g: fx: module."Data.Exists".mkExists (SplitF f g fx);
  profunctorSplit = {dimap = f: g: unSplit (h: i: split (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn h f) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn g i));};
  lowerSplit = dictInvariant: unSplit (module."Data.Function".flip (module."Data.Functor.Invariant".imap dictInvariant));
  liftSplit = split (module."Control.Category".identity module."Control.Category".categoryFn) (module."Control.Category".identity module."Control.Category".categoryFn);
  hoistSplit = nat: unSplit (f: g: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (split f g) nat);
  functorSplit = {map = f: unSplit (g: h: fx: split g (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f h) fx);};
in
  {inherit split unSplit liftSplit lowerSplit hoistSplit functorSplit profunctorSplit;}
;

Data-Profunctor-Star_default-nix = 
let
  module = 
    { "Control.Alt" = Control-Alt_default-nix;
      "Control.Alternative" = Control-Alternative_default-nix;
      "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Category" = Control-Category_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Control.MonadPlus" = Control-MonadPlus_default-nix;
      "Control.MonadZero" = Control-MonadZero_default-nix;
      "Control.Plus" = Control-Plus_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Distributive" = Data-Distributive_default-nix;
      "Data.Either" = Data-Either_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Functor.Invariant" = Data-Functor-Invariant_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Profunctor" = Data-Profunctor_default-nix;
      "Data.Profunctor.Choice" = Data-Profunctor-Choice_default-nix;
      "Data.Profunctor.Closed" = Data-Profunctor-Closed_default-nix;
      "Data.Profunctor.Strong" = Data-Profunctor-Strong_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Star = x: x;
  semigroupoidStar = dictBind: 
    { compose = v: v1: 
        let
          __pattern0 = __fail: 
            let
              f = v;
              g = v1;
            in
              x: module."Control.Bind".bind dictBind (g x) f;
          __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Star.purs at 29:1 - 30:51";
        in
          __pattern0 __patternFail;
    };
  profunctorStar = dictFunctor: 
    { dimap = f: g: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g1 = g;
              ft = v;
            in
              module."Control.Semigroupoid".composeFlipped module."Control.Semigroupoid".semigroupoidFn f1 (module."Control.Semigroupoid".composeFlipped module."Control.Semigroupoid".semigroupoidFn ft (module."Data.Functor".map dictFunctor g1));
          __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Star.purs at 68:1 - 69:50";
        in
          __pattern0 __patternFail;
    };
  strongStar = dictFunctor: 
    { first = v: 
        let
          __pattern0 = __fail: 
            let
              f = v;
            in
              v1: 
              let
                __pattern0 = __fail: 
                  if v1.__tag == "Tuple"
                    then 
                      let
                        s = v1.__field0;
                        x = v1.__field1;
                      in
                        module."Data.Functor".map dictFunctor (v2: module."Data.Tuple".Tuple v2 x) (f s)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Star.purs at 72:26 - 72:65";
              in
                __pattern0 __patternFail;
          __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Star.purs at 71:1 - 73:61";
        in
          __pattern0 __patternFail;
      second = v: 
        let
          __pattern0 = __fail: 
            let
              f = v;
            in
              v1: 
              let
                __pattern0 = __fail: 
                  if v1.__tag == "Tuple"
                    then 
                      let
                        x = v1.__field0;
                        s = v1.__field1;
                      in
                        module."Data.Functor".map dictFunctor (module."Data.Tuple".Tuple x) (f s)
                    else __fail;
                __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Star.purs at 73:26 - 73:61";
              in
                __pattern0 __patternFail;
          __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Star.purs at 71:1 - 73:61";
        in
          __pattern0 __patternFail;
      "Profunctor0" = __unused: profunctorStar dictFunctor;
    };
  newtypeStar = {"Coercible0" = __unused: module."Prim".undefined;};
  invariantStar = dictInvariant: 
    { imap = f: g: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g1 = g;
              h = v;
            in
              module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Functor.Invariant".imap dictInvariant f1 g1) h;
          __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Star.purs at 38:1 - 39:44";
        in
          __pattern0 __patternFail;
    };
  hoistStar = f: v: 
    let
      __pattern0 = __fail: 
        let
          f1 = f;
          g = v;
        in
          module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f1 g;
      __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Star.purs at 82:1 - 82:66";
    in
      __pattern0 __patternFail;
  functorStar = dictFunctor: 
    { map = f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              g = v;
            in
              module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Functor".map dictFunctor f1) g;
          __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Star.purs at 35:1 - 36:38";
        in
          __pattern0 __patternFail;
    };
  distributiveStar = dictDistributive: 
    { distribute = dictFunctor: f: a: module."Data.Distributive".collect dictDistributive dictFunctor 
        ( v: 
          let
            __pattern0 = __fail: 
              let
                g = v;
              in
                g a;
            __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Star.purs at 65:38 - 65:54";
          in
            __pattern0 __patternFail
        ) f;
      collect = dictFunctor: f: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Distributive".distribute (distributiveStar dictDistributive) dictFunctor) (module."Data.Functor".map dictFunctor f);
      "Functor0" = __unused: functorStar (dictDistributive."Functor0" module."Prim".undefined);
    };
  closedStar = dictDistributive: 
    { closed = v: 
        let
          __pattern0 = __fail: 
            let
              f = v;
            in
              g: module."Data.Distributive".distribute dictDistributive module."Data.Functor".functorFn (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f g);
          __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Star.purs at 79:1 - 80:52";
        in
          __pattern0 __patternFail;
      "Profunctor0" = __unused: profunctorStar (dictDistributive."Functor0" module."Prim".undefined);
    };
  choiceStar = dictApplicative: 
    { left = v: 
        let
          __pattern0 = __fail: 
            let
              f = v;
            in
              module."Data.Function".apply Star (module."Data.Either".either (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Either".Left) f) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Control.Applicative".pure dictApplicative) module."Data.Either".Right));
          __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Star.purs at 75:1 - 77:67";
        in
          __pattern0 __patternFail;
      right = v: 
        let
          __pattern0 = __fail: 
            let
              f = v;
            in
              module."Data.Function".apply Star (module."Data.Either".either (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Control.Applicative".pure dictApplicative) module."Data.Either".Left) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Either".Right) f));
          __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Star.purs at 75:1 - 77:67";
        in
          __pattern0 __patternFail;
      "Profunctor0" = __unused: profunctorStar ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined);
    };
  categoryStar = dictMonad: 
    { identity = module."Control.Applicative".pure (dictMonad."Applicative0" module."Prim".undefined);
      "Semigroupoid0" = __unused: semigroupoidStar (dictMonad."Bind1" module."Prim".undefined);
    };
  applyStar = dictApply: 
    { apply = v: v1: 
        let
          __pattern0 = __fail: 
            let
              f = v;
              g = v1;
            in
              a: module."Control.Apply".apply dictApply (f a) (g a);
          __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Star.purs at 41:1 - 42:51";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: functorStar (dictApply."Functor0" module."Prim".undefined);
    };
  bindStar = dictBind: 
    { bind = v: f: 
        let
          __pattern0 = __fail: 
            let
              m = v;
              f1 = f;
            in
              x: module."Control.Bind".bind dictBind (m x) 
              ( a: 
                let
                  v1 = f1 a;
                in
                  
                  let
                    __pattern0 = __fail: 
                      let
                        g = v1;
                      in
                        g x;
                    __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Star.purs at 48:46 - 48:71";
                  in
                    __pattern0 __patternFail
              );
          __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Star.purs at 47:1 - 48:71";
        in
          __pattern0 __patternFail;
      "Apply0" = __unused: applyStar (dictBind."Apply0" module."Prim".undefined);
    };
  applicativeStar = dictApplicative: 
    { pure = a: v: module."Control.Applicative".pure dictApplicative a;
      "Apply0" = __unused: applyStar (dictApplicative."Apply0" module."Prim".undefined);
    };
  monadStar = dictMonad: 
    { "Applicative0" = __unused: applicativeStar (dictMonad."Applicative0" module."Prim".undefined);
      "Bind1" = __unused: bindStar (dictMonad."Bind1" module."Prim".undefined);
    };
  altStar = dictAlt: 
    { alt = v: v1: 
        let
          __pattern0 = __fail: 
            let
              f = v;
              g = v1;
            in
              a: module."Control.Alt".alt dictAlt (f a) (g a);
          __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Star.purs at 52:1 - 53:49";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: functorStar (dictAlt."Functor0" module."Prim".undefined);
    };
  plusStar = dictPlus: 
    { empty = v: module."Control.Plus".empty dictPlus;
      "Alt0" = __unused: altStar (dictPlus."Alt0" module."Prim".undefined);
    };
  alternativeStar = dictAlternative: 
    { "Applicative0" = __unused: applicativeStar (dictAlternative."Applicative0" module."Prim".undefined);
      "Plus1" = __unused: plusStar (dictAlternative."Plus1" module."Prim".undefined);
    };
  monadPlusStar = dictMonadPlus: 
    { "Monad0" = __unused: monadStar (dictMonadPlus."Monad0" module."Prim".undefined);
      "Alternative1" = __unused: alternativeStar (dictMonadPlus."Alternative1" module."Prim".undefined);
    };
  monadZeroStar = dictMonadZero: 
    { "Monad0" = __unused: monadStar (dictMonadZero."Monad0" module."Prim".undefined);
      "Alternative1" = __unused: alternativeStar (dictMonadZero."Alternative1" module."Prim".undefined);
      "MonadZeroIsDeprecated2" = __unused: module."Prim".undefined;
    };
in
  {inherit Star hoistStar newtypeStar semigroupoidStar categoryStar functorStar invariantStar applyStar applicativeStar bindStar monadStar altStar plusStar alternativeStar monadZeroStar monadPlusStar distributiveStar profunctorStar strongStar choiceStar closedStar;}
;

Data-Profunctor-Strong_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Profunctor" = Data-Profunctor_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Strong-Dict = x: x;
  strongFn = 
    { first = a2b: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  a2b1 = a2b;
                  a = v.__field0;
                  c = v.__field1;
                in
                  module."Data.Tuple".Tuple (a2b1 a) c
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Strong.purs at 32:1 - 34:17";
        in
          __pattern0 __patternFail;
      second = module."Data.Functor".map module."Data.Tuple".functorTuple;
      "Profunctor0" = __unused: module."Data.Profunctor".profunctorFn;
    };
  second = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.second;
      __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Strong.purs at 30:3 - 30:61";
    in
      __pattern0 __patternFail;
  first = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.first;
      __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor/Strong.purs at 29:3 - 29:60";
    in
      __pattern0 __patternFail;
  splitStrong = dictCategory: dictStrong: l: r: module."Control.Semigroupoid".composeFlipped (dictCategory."Semigroupoid0" module."Prim".undefined) (first dictStrong l) (second dictStrong r);
  fanout = dictCategory: dictStrong: l: r: 
    let
      split = module."Data.Profunctor".dimap (dictStrong."Profunctor0" module."Prim".undefined) (module."Control.Category".identity module."Control.Category".categoryFn) (a: module."Data.Tuple".Tuple a a) (module."Control.Category".identity dictCategory);
    in
      module."Control.Semigroupoid".composeFlipped (dictCategory."Semigroupoid0" module."Prim".undefined) split (splitStrong dictCategory dictStrong l r);
in
  {inherit first second splitStrong fanout strongFn;}
;

Data-Profunctor_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Profunctor-Dict = x: x;
  profunctorFn = {dimap = a2b: c2d: b2c: module."Control.Semigroupoid".composeFlipped module."Control.Semigroupoid".semigroupoidFn a2b (module."Control.Semigroupoid".composeFlipped module."Control.Semigroupoid".semigroupoidFn b2c c2d);};
  dimap = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.dimap;
      __patternFail = builtins.throw "Pattern match failure in .spago/profunctor/78b2577b62fcbd0aa9232aac214faa8dab378096/src/Data/Profunctor.purs at 23:3 - 23:66";
    in
      __pattern0 __patternFail;
  lcmap = dictProfunctor: a2b: dimap dictProfunctor a2b (module."Control.Category".identity module."Control.Category".categoryFn);
  rmap = dictProfunctor: b2c: dimap dictProfunctor (module."Control.Category".identity module."Control.Category".categoryFn) b2c;
  unwrapIso = dictProfunctor: dictNewtype: dimap dictProfunctor (module."Data.Newtype".wrap module."Prim".undefined) (module."Data.Newtype".unwrap module."Prim".undefined);
  wrapIso = dictProfunctor: dictNewtype: v: dimap dictProfunctor (module."Data.Newtype".unwrap module."Prim".undefined) (module."Data.Newtype".wrap module."Prim".undefined);
  arr = dictCategory: dictProfunctor: f: rmap dictProfunctor f (module."Control.Category".identity dictCategory);
in
  {inherit dimap lcmap rmap arr unwrapIso wrapIso profunctorFn;}
;

Data-Ring-Generic_default-nix = 
let
  module = 
    { "Data.Function" = Data-Function_default-nix;
      "Data.Generic.Rep" = Data-Generic-Rep_default-nix;
      "Data.Ring" = Data-Ring_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  GenericRing-Dict = x: x;
  genericSub' = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericSub';
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ring/Generic.purs at 8:3 - 8:29";
    in
      __pattern0 __patternFail;
  genericSub = dictGeneric: dictGenericRing: x: y: module."Data.Function".apply (module."Data.Generic.Rep".to dictGeneric) (genericSub' dictGenericRing (module."Data.Generic.Rep".from dictGeneric x) (module."Data.Generic.Rep".from dictGeneric y));
  genericRingProduct = dictGenericRing: dictGenericRing1: 
    { genericSub' = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product" && v1.__tag == "Product"
              then 
                let
                  a1 = v.__field0;
                  b1 = v.__field1;
                  a2 = v1.__field0;
                  b2 = v1.__field1;
                in
                  module."Data.Generic.Rep".Product (genericSub' dictGenericRing a1 a2) (genericSub' dictGenericRing1 b1 b2)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ring/Generic.purs at 16:1 - 17:96";
        in
          __pattern0 __patternFail;
    };
  genericRingNoArguments = {genericSub' = v: v1: module."Data.Generic.Rep".NoArguments;};
  genericRingConstructor = dictGenericRing: 
    { genericSub' = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a1 = v;
              a2 = v1;
            in
              genericSub' dictGenericRing a1 a2;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ring/Generic.purs at 19:1 - 20:82";
        in
          __pattern0 __patternFail;
    };
  genericRingArgument = dictRing: 
    { genericSub' = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              y = v1;
            in
              module."Data.Ring".sub dictRing x y;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ring/Generic.purs at 13:1 - 14:61";
        in
          __pattern0 __patternFail;
    };
in
  {inherit genericSub' genericSub genericRingNoArguments genericRingArgument genericRingProduct genericRingConstructor;}
;

Data-Ring_default-nix = 
let
  module = 
    { "Data.Semiring" = Data-Semiring_default-nix;
      "Data.Symbol" = Data-Symbol_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prim.Row" = import ../Prim.Row;
      "Prim.RowList" = import ../Prim.RowList;
      "Record.Unsafe" = Record-Unsafe_default-nix;
      "Type.Proxy" = Type-Proxy_default-nix;
    };
  foreign = Data-Ring_foreign-nix;
  intSub = foreign.intSub;
  numSub = foreign.numSub;
  RingRecord-Dict = x: x;
  Ring-Dict = x: x;
  subRecord = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.subRecord;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ring.purs at 63:3 - 63:92";
    in
      __pattern0 __patternFail;
  sub = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.sub;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Ring.purs at 24:3 - 24:21";
    in
      __pattern0 __patternFail;
  ringUnit = 
    { sub = v: v1: module."Data.Unit".unit;
      "Semiring0" = __unused: module."Data.Semiring".semiringUnit;
    };
  ringRecordNil = 
    { subRecord = v: v1: v2: { };
      "SemiringRecord0" = __unused: module."Data.Semiring".semiringRecordNil;
    };
  ringRecordCons = dictIsSymbol: dictCons: dictRingRecord: dictRing: 
    { subRecord = v: ra: rb: 
        let
          tail = subRecord dictRingRecord module."Type.Proxy".Proxy ra rb;
          key = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
          insert = module."Record.Unsafe".unsafeSet key;
          get = module."Record.Unsafe".unsafeGet key;
        in
          insert (sub dictRing (get ra) (get rb)) tail;
      "SemiringRecord0" = __unused: module."Data.Semiring".semiringRecordCons dictIsSymbol module."Prim".undefined (dictRingRecord."SemiringRecord0" module."Prim".undefined) (dictRing."Semiring0" module."Prim".undefined);
    };
  ringRecord = dictRowToList: dictRingRecord: 
    { sub = subRecord dictRingRecord module."Type.Proxy".Proxy;
      "Semiring0" = __unused: module."Data.Semiring".semiringRecord module."Prim".undefined (dictRingRecord."SemiringRecord0" module."Prim".undefined);
    };
  ringProxy3 = 
    { sub = v: v1: module."Type.Proxy".Proxy3;
      "Semiring0" = __unused: module."Data.Semiring".semiringProxy3;
    };
  ringProxy2 = 
    { sub = v: v1: module."Type.Proxy".Proxy2;
      "Semiring0" = __unused: module."Data.Semiring".semiringProxy2;
    };
  ringProxy = 
    { sub = v: v1: module."Type.Proxy".Proxy;
      "Semiring0" = __unused: module."Data.Semiring".semiringProxy;
    };
  ringNumber = 
    { sub = numSub;
      "Semiring0" = __unused: module."Data.Semiring".semiringNumber;
    };
  ringInt = 
    { sub = intSub;
      "Semiring0" = __unused: module."Data.Semiring".semiringInt;
    };
  ringFn = dictRing: 
    { sub = f: g: x: sub dictRing (f x) (g x);
      "Semiring0" = __unused: module."Data.Semiring".semiringFn (dictRing."Semiring0" module."Prim".undefined);
    };
  negate = dictRing: a: sub dictRing (module."Data.Semiring".zero (dictRing."Semiring0" module."Prim".undefined)) a;
in
  
  { inherit sub negate subRecord ringInt ringNumber ringUnit ringFn ringProxy ringProxy2 ringProxy3 ringRecord ringRecordNil ringRecordCons;
    inherit (module."Data.Semiring") add mul one zero;
  }
;

Data-Ring_foreign-nix = 
{ intSub = a: b: a - b;
  numSub = a: b: a - b;
}

;

Data-Semigroup-First_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Data.Bounded" = Data-Bounded_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  First = x: x;
  showFirst = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(First " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow a) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semigroup/First.purs at 23:1 - 24:46";
        in
          __pattern0 __patternFail;
    };
  semigroupFirst = {append = x: v: x;};
  ordFirst = dictOrd: dictOrd;
  functorFirst = 
    { map = f: m: 
        let
          __pattern0 = __fail: 
            let
              v = m;
            in
              f v;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semigroup/First.purs at 26:1 - 26:46";
        in
          __pattern0 __patternFail;
    };
  eqFirst = dictEq: dictEq;
  eq1First = {eq1 = dictEq: module."Data.Eq".eq (eqFirst dictEq);};
  ord1First = 
    { compare1 = dictOrd: module."Data.Ord".compare (ordFirst dictOrd);
      "Eq10" = __unused: eq1First;
    };
  boundedFirst = dictBounded: dictBounded;
  applyFirst = 
    { apply = v: v1: 
        let
          __pattern0 = __fail: 
            let
              f = v;
              x = v1;
            in
              f x;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semigroup/First.purs at 28:1 - 29:42";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: functorFirst;
    };
  bindFirst = 
    { bind = v: f: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              f1 = f;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semigroup/First.purs at 34:1 - 35:25";
        in
          __pattern0 __patternFail;
      "Apply0" = __unused: applyFirst;
    };
  applicativeFirst = 
    { pure = First;
      "Apply0" = __unused: applyFirst;
    };
  monadFirst = 
    { "Applicative0" = __unused: applicativeFirst;
      "Bind1" = __unused: bindFirst;
    };
in
  {inherit First eqFirst eq1First ordFirst ord1First boundedFirst showFirst functorFirst applyFirst applicativeFirst bindFirst monadFirst semigroupFirst;}
;

Data-Semigroup-Foldable_default-nix = 
let
  module = 
    { "Control.Apply" = Control-Apply_default-nix;
      "Control.Category" = Control-Category_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Foldable" = Data-Foldable_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Identity" = Data-Identity_default-nix;
      "Data.Monoid.Dual" = Data-Monoid-Dual_default-nix;
      "Data.Monoid.Multiplicative" = Data-Monoid-Multiplicative_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Ord.Max" = Data-Ord-Max_default-nix;
      "Data.Ord.Min" = Data-Ord-Min_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prelude" = Prelude_default-nix;
      "Prim.TypeError" = import ../Prim.TypeError;
    };
  JoinWith = x: x;
  Foldable1-Dict = x: x;
  FoldRight1 = value0: value1: 
    { __tag = "FoldRight1";
      __field0 = value0;
      __field1 = value1;
    };
  Act = x: x;
  semigroupJoinWith = dictSemigroup: 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a = v;
              b = v1;
            in
              module."Data.Function".apply JoinWith (j: module."Data.Semigroup".append dictSemigroup (a j) (module."Data.Semigroup".append dictSemigroup j (b j)));
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 156:1 - 157:70";
        in
          __pattern0 __patternFail;
    };
  semigroupAct = dictApply: 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a = v;
              b = v1;
            in
              module."Control.Apply".applySecond dictApply a b;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 118:1 - 119:40";
        in
          __pattern0 __patternFail;
    };
  runFoldRight1 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "FoldRight1"
          then 
            let
              f = v.__field0;
              a = v.__field1;
            in
              f a
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 183:1 - 183:62";
    in
      __pattern0 __patternFail;
  mkFoldRight1 = FoldRight1 module."Data.Function".const;
  joinee = v: 
    let
      __pattern0 = __fail: 
        let
          x = v;
        in
          x;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 153:1 - 153:41";
    in
      __pattern0 __patternFail;
  getAct = v: 
    let
      __pattern0 = __fail: 
        let
          f = v;
        in
          f;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 115:1 - 115:37";
    in
      __pattern0 __patternFail;
  foldr1 = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.foldr1;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 52:3 - 52:48";
    in
      __pattern0 __patternFail;
  foldl1 = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.foldl1;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 53:3 - 53:48";
    in
      __pattern0 __patternFail;
  maximumBy = dictFoldable1: cmp: foldl1 dictFoldable1 
    ( x: y: 
      let
        __pattern0 = __fail: if module."Data.Eq".eq module."Data.Ordering".eqOrdering (cmp x y) module."Data.Ordering".GT then x else __fail;
        __pattern1 = __fail: y;
        __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 142:32 - 142:62";
      in
        __pattern0 (__pattern1 __patternFail)
    );
  minimumBy = dictFoldable1: cmp: foldl1 dictFoldable1 
    ( x: y: 
      let
        __pattern0 = __fail: if module."Data.Eq".eq module."Data.Ordering".eqOrdering (cmp x y) module."Data.Ordering".LT then x else __fail;
        __pattern1 = __fail: y;
        __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 148:32 - 148:62";
      in
        __pattern0 (__pattern1 __patternFail)
    );
  foldableTuple = 
    { foldMap1 = dictSemigroup: f: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  x = v.__field1;
                in
                  f1 x
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 98:1 - 101:27";
        in
          __pattern0 __patternFail;
      foldr1 = v: v1: 
        let
          __pattern0 = __fail: 
            if v1.__tag == "Tuple"
              then 
                let
                  x = v1.__field1;
                in
                  x
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 98:1 - 101:27";
        in
          __pattern0 __patternFail;
      foldl1 = v: v1: 
        let
          __pattern0 = __fail: 
            if v1.__tag == "Tuple"
              then 
                let
                  x = v1.__field1;
                in
                  x
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 98:1 - 101:27";
        in
          __pattern0 __patternFail;
      "Foldable0" = __unused: module."Data.Foldable".foldableTuple;
    };
  foldableMultiplicative = 
    { foldr1 = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v1;
            in
              x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 93:1 - 96:38";
        in
          __pattern0 __patternFail;
      foldl1 = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v1;
            in
              x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 93:1 - 96:38";
        in
          __pattern0 __patternFail;
      foldMap1 = dictSemigroup: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 93:1 - 96:38";
        in
          __pattern0 __patternFail;
      "Foldable0" = __unused: module."Data.Foldable".foldableMultiplicative;
    };
  foldableIdentity = 
    { foldMap1 = dictSemigroup: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 103:1 - 106:28";
        in
          __pattern0 __patternFail;
      foldl1 = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v1;
            in
              x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 103:1 - 106:28";
        in
          __pattern0 __patternFail;
      foldr1 = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v1;
            in
              x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 103:1 - 106:28";
        in
          __pattern0 __patternFail;
      "Foldable0" = __unused: module."Data.Foldable".foldableIdentity;
    };
  foldableDual = 
    { foldr1 = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v1;
            in
              x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 88:1 - 91:28";
        in
          __pattern0 __patternFail;
      foldl1 = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v1;
            in
              x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 88:1 - 91:28";
        in
          __pattern0 __patternFail;
      foldMap1 = dictSemigroup: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 88:1 - 91:28";
        in
          __pattern0 __patternFail;
      "Foldable0" = __unused: module."Data.Foldable".foldableDual;
    };
  foldRight1Semigroup = 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "FoldRight1" && v1.__tag == "FoldRight1"
              then 
                let
                  lf = v.__field0;
                  lr = v.__field1;
                  rf = v1.__field0;
                  rr = v1.__field1;
                in
                  FoldRight1 (a: f: lf (f lr (rf a f)) f) rr
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 177:1 - 178:94";
        in
          __pattern0 __patternFail;
    };
  foldMap1DefaultR = dictFoldable1: dictFunctor: dictSemigroup: f: module."Control.Semigroupoid".composeFlipped module."Control.Semigroupoid".semigroupoidFn (module."Data.Functor".map dictFunctor f) (foldr1 dictFoldable1 (module."Data.Semigroup".append dictSemigroup));
  foldMap1DefaultL = dictFoldable1: dictFunctor: dictSemigroup: f: module."Control.Semigroupoid".composeFlipped module."Control.Semigroupoid".semigroupoidFn (module."Data.Functor".map dictFunctor f) (foldl1 dictFoldable1 (module."Data.Semigroup".append dictSemigroup));
  foldMap1Default = dictWarn: dictFoldable1: dictFunctor: dictSemigroup: foldMap1DefaultL dictFoldable1 dictFunctor dictSemigroup;
  foldMap1 = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.foldMap1;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Foldable.purs at 54:3 - 54:62";
    in
      __pattern0 __patternFail;
  foldl1Default = dictFoldable1: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Function".flip (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn runFoldRight1 (module."Data.Newtype".alaF module."Prim".undefined module."Prim".undefined module."Prim".undefined module."Prim".undefined module."Data.Monoid.Dual".Dual (foldMap1 dictFoldable1 (module."Data.Monoid.Dual".semigroupDual foldRight1Semigroup)) mkFoldRight1))) module."Data.Function".flip;
  foldr1Default = dictFoldable1: module."Data.Function".flip (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn runFoldRight1 (foldMap1 dictFoldable1 foldRight1Semigroup mkFoldRight1));
  intercalateMap = dictFoldable1: dictSemigroup: j: f: foldable: joinee (foldMap1 dictFoldable1 (semigroupJoinWith dictSemigroup) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn JoinWith (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Function".const f)) foldable) j;
  intercalate = dictFoldable1: dictSemigroup: module."Data.Function".flip (intercalateMap dictFoldable1 dictSemigroup) (module."Control.Category".identity module."Control.Category".categoryFn);
  maximum = dictOrd: dictFoldable1: module."Data.Newtype".ala module."Prim".undefined module."Prim".undefined module."Prim".undefined module."Data.Ord.Max".Max (foldMap1 dictFoldable1 (module."Data.Ord.Max".semigroupMax dictOrd));
  minimum = dictOrd: dictFoldable1: module."Data.Newtype".ala module."Prim".undefined module."Prim".undefined module."Prim".undefined module."Data.Ord.Min".Min (foldMap1 dictFoldable1 (module."Data.Ord.Min".semigroupMin dictOrd));
  traverse1_ = dictFoldable1: dictApply: f: t: module."Data.Functor".voidRight (dictApply."Functor0" module."Prim".undefined) module."Data.Unit".unit (getAct (foldMap1 dictFoldable1 (semigroupAct dictApply) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn Act f) t));
  for1_ = dictFoldable1: dictApply: module."Data.Function".flip (traverse1_ dictFoldable1 dictApply);
  sequence1_ = dictFoldable1: dictApply: traverse1_ dictFoldable1 dictApply (module."Control.Category".identity module."Control.Category".categoryFn);
  fold1 = dictFoldable1: dictSemigroup: foldMap1 dictFoldable1 dictSemigroup (module."Control.Category".identity module."Control.Category".categoryFn);
in
  {inherit foldMap1 fold1 foldr1 foldl1 traverse1_ for1_ sequence1_ foldr1Default foldl1Default foldMap1DefaultR foldMap1DefaultL foldMap1Default intercalate intercalateMap maximum maximumBy minimum minimumBy foldableDual foldableMultiplicative foldableTuple foldableIdentity;}
;

Data-Semigroup-Generic_default-nix = 
let
  module = 
    { "Data.Generic.Rep" = Data-Generic-Rep_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  GenericSemigroup-Dict = x: x;
  genericSemigroupNoConstructors = {genericAppend' = a: v: a;};
  genericSemigroupNoArguments = {genericAppend' = a: v: a;};
  genericSemigroupArgument = dictSemigroup: 
    { genericAppend' = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a1 = v;
              a2 = v1;
            in
              module."Data.Semigroup".append dictSemigroup a1 a2;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semigroup/Generic.purs at 26:1 - 27:71";
        in
          __pattern0 __patternFail;
    };
  genericAppend' = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericAppend';
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semigroup/Generic.purs at 11:3 - 11:32";
    in
      __pattern0 __patternFail;
  genericSemigroupConstructor = dictGenericSemigroup: 
    { genericAppend' = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a1 = v;
              a2 = v1;
            in
              genericAppend' dictGenericSemigroup a1 a2;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semigroup/Generic.purs at 23:1 - 24:88";
        in
          __pattern0 __patternFail;
    };
  genericSemigroupProduct = dictGenericSemigroup: dictGenericSemigroup1: 
    { genericAppend' = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product" && v1.__tag == "Product"
              then 
                let
                  a1 = v.__field0;
                  b1 = v.__field1;
                  a2 = v1.__field0;
                  b2 = v1.__field1;
                in
                  module."Data.Generic.Rep".Product (genericAppend' dictGenericSemigroup a1 a2) (genericAppend' dictGenericSemigroup1 b1 b2)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semigroup/Generic.purs at 19:1 - 21:58";
        in
          __pattern0 __patternFail;
    };
  genericAppend = dictGeneric: dictGenericSemigroup: x: y: module."Data.Generic.Rep".to dictGeneric (genericAppend' dictGenericSemigroup (module."Data.Generic.Rep".from dictGeneric x) (module."Data.Generic.Rep".from dictGeneric y));
in
  {inherit genericAppend' genericAppend genericSemigroupNoConstructors genericSemigroupNoArguments genericSemigroupProduct genericSemigroupConstructor genericSemigroupArgument;}
;

Data-Semigroup-Last_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Data.Bounded" = Data-Bounded_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Last = x: x;
  showLast = dictShow: 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Last " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow a) ")");
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semigroup/Last.purs at 23:1 - 24:44";
        in
          __pattern0 __patternFail;
    };
  semigroupLast = {append = v: x: x;};
  ordLast = dictOrd: dictOrd;
  functorLast = 
    { map = f: m: 
        let
          __pattern0 = __fail: 
            let
              v = m;
            in
              f v;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semigroup/Last.purs at 26:1 - 26:44";
        in
          __pattern0 __patternFail;
    };
  eqLast = dictEq: dictEq;
  eq1Last = {eq1 = dictEq: module."Data.Eq".eq (eqLast dictEq);};
  ord1Last = 
    { compare1 = dictOrd: module."Data.Ord".compare (ordLast dictOrd);
      "Eq10" = __unused: eq1Last;
    };
  boundedLast = dictBounded: dictBounded;
  applyLast = 
    { apply = v: v1: 
        let
          __pattern0 = __fail: 
            let
              f = v;
              x = v1;
            in
              f x;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semigroup/Last.purs at 28:1 - 29:39";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: functorLast;
    };
  bindLast = 
    { bind = v: f: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              f1 = f;
            in
              f1 x;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semigroup/Last.purs at 34:1 - 35:24";
        in
          __pattern0 __patternFail;
      "Apply0" = __unused: applyLast;
    };
  applicativeLast = 
    { pure = Last;
      "Apply0" = __unused: applyLast;
    };
  monadLast = 
    { "Applicative0" = __unused: applicativeLast;
      "Bind1" = __unused: bindLast;
    };
in
  {inherit Last eqLast eq1Last ordLast ord1Last boundedLast showLast functorLast applyLast applicativeLast bindLast monadLast semigroupLast;}
;

Data-Semigroup-Traversable_default-nix = 
let
  module = 
    { "Control.Category" = Control-Category_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Identity" = Data-Identity_default-nix;
      "Data.Monoid.Dual" = Data-Monoid-Dual_default-nix;
      "Data.Monoid.Multiplicative" = Data-Monoid-Multiplicative_default-nix;
      "Data.Semigroup.Foldable" = Data-Semigroup-Foldable_default-nix;
      "Data.Traversable" = Data-Traversable_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Traversable1-Dict = x: x;
  traverse1 = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.traverse1;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Traversable.purs at 36:3 - 36:69";
    in
      __pattern0 __patternFail;
  traversableTuple = 
    { traverse1 = dictApply: f: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  x = v.__field0;
                  y = v.__field1;
                in
                  module."Data.Functor".map (dictApply."Functor0" module."Prim".undefined) (module."Data.Tuple".Tuple x) (f1 y)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Traversable.purs at 47:1 - 49:40";
        in
          __pattern0 __patternFail;
      sequence1 = dictApply: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  x = v.__field0;
                  y = v.__field1;
                in
                  module."Data.Functor".map (dictApply."Functor0" module."Prim".undefined) (module."Data.Tuple".Tuple x) y
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Traversable.purs at 47:1 - 49:40";
        in
          __pattern0 __patternFail;
      "Foldable10" = __unused: module."Data.Semigroup.Foldable".foldableTuple;
      "Traversable1" = __unused: module."Data.Traversable".traversableTuple;
    };
  traversableIdentity = 
    { traverse1 = dictApply: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              module."Data.Functor".map (dictApply."Functor0" module."Prim".undefined) module."Data.Identity".Identity (f1 x);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Traversable.purs at 51:1 - 53:42";
        in
          __pattern0 __patternFail;
      sequence1 = dictApply: v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.Functor".map (dictApply."Functor0" module."Prim".undefined) module."Data.Identity".Identity x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Traversable.purs at 51:1 - 53:42";
        in
          __pattern0 __patternFail;
      "Foldable10" = __unused: module."Data.Semigroup.Foldable".foldableIdentity;
      "Traversable1" = __unused: module."Data.Traversable".traversableIdentity;
    };
  sequence1Default = dictTraversable1: dictApply: traverse1 dictTraversable1 dictApply (module."Control.Category".identity module."Control.Category".categoryFn);
  traversableDual = 
    { traverse1 = dictApply: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              module."Data.Functor".map (dictApply."Functor0" module."Prim".undefined) module."Data.Monoid.Dual".Dual (f1 x);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Traversable.purs at 39:1 - 41:31";
        in
          __pattern0 __patternFail;
      sequence1 = dictApply: sequence1Default traversableDual dictApply;
      "Foldable10" = __unused: module."Data.Semigroup.Foldable".foldableDual;
      "Traversable1" = __unused: module."Data.Traversable".traversableDual;
    };
  traversableMultiplicative = 
    { traverse1 = dictApply: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              module."Data.Functor".map (dictApply."Functor0" module."Prim".undefined) module."Data.Monoid.Multiplicative".Multiplicative (f1 x);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Traversable.purs at 43:1 - 45:31";
        in
          __pattern0 __patternFail;
      sequence1 = dictApply: sequence1Default traversableMultiplicative dictApply;
      "Foldable10" = __unused: module."Data.Semigroup.Foldable".foldableMultiplicative;
      "Traversable1" = __unused: module."Data.Traversable".traversableMultiplicative;
    };
  sequence1 = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.sequence1;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Semigroup/Traversable.purs at 37:3 - 37:57";
    in
      __pattern0 __patternFail;
  traverse1Default = dictTraversable1: dictApply: f: ta: sequence1 dictTraversable1 dictApply (module."Data.Functor".map ((dictTraversable1."Traversable1" module."Prim".undefined)."Functor0" module."Prim".undefined) f ta);
in
  {inherit sequence1 traverse1 traverse1Default sequence1Default traversableDual traversableMultiplicative traversableTuple traversableIdentity;}
;

Data-Semigroup_default-nix = 
let
  module = 
    { "Data.Symbol" = Data-Symbol_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Data.Void" = Data-Void_default-nix;
      "Prim.Row" = import ../Prim.Row;
      "Prim.RowList" = import ../Prim.RowList;
      "Record.Unsafe" = Record-Unsafe_default-nix;
      "Type.Proxy" = Type-Proxy_default-nix;
    };
  foreign = Data-Semigroup_foreign-nix;
  concatString = foreign.concatString;
  concatArray = foreign.concatArray;
  SemigroupRecord-Dict = x: x;
  Semigroup-Dict = x: x;
  semigroupVoid = {append = v: module."Data.Void".absurd;};
  semigroupUnit = {append = v: v1: module."Data.Unit".unit;};
  semigroupString = {append = concatString;};
  semigroupRecordNil = {appendRecord = v: v1: v2: { };};
  semigroupProxy3 = {append = v: v1: module."Type.Proxy".Proxy3;};
  semigroupProxy2 = {append = v: v1: module."Type.Proxy".Proxy2;};
  semigroupProxy = {append = v: v1: module."Type.Proxy".Proxy;};
  semigroupArray = {append = concatArray;};
  appendRecord = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.appendRecord;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semigroup.purs at 70:3 - 70:95";
    in
      __pattern0 __patternFail;
  semigroupRecord = dictRowToList: dictSemigroupRecord: {append = appendRecord dictSemigroupRecord module."Type.Proxy".Proxy;};
  append = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.append;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semigroup.purs at 32:3 - 32:24";
    in
      __pattern0 __patternFail;
  semigroupFn = dictSemigroup: {append = f: g: x: append dictSemigroup (f x) (g x);};
  semigroupRecordCons = dictIsSymbol: dictCons: dictSemigroupRecord: dictSemigroup: 
    { appendRecord = v: ra: rb: 
        let
          tail = appendRecord dictSemigroupRecord module."Type.Proxy".Proxy ra rb;
          key = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
          insert = module."Record.Unsafe".unsafeSet key;
          get = module."Record.Unsafe".unsafeGet key;
        in
          insert (append dictSemigroup (get ra) (get rb)) tail;
    };
in
  {inherit append appendRecord semigroupString semigroupUnit semigroupVoid semigroupFn semigroupArray semigroupProxy semigroupProxy2 semigroupProxy3 semigroupRecord semigroupRecordNil semigroupRecordCons;}
;

Data-Semigroup_foreign-nix = 
{ concatString = str1: str2: str1 + str2;
  concatArray = arr1: arr2: arr1 ++ arr2;
}

;

Data-Semiring-Generic_default-nix = 
let
  module = 
    { "Data.Function" = Data-Function_default-nix;
      "Data.Generic.Rep" = Data-Generic-Rep_default-nix;
      "Data.Semiring" = Data-Semiring_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  GenericSemiring-Dict = x: x;
  genericZero' = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericZero';
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semiring/Generic.purs at 9:3 - 9:20";
    in
      __pattern0 __patternFail;
  genericZero = dictGeneric: dictGenericSemiring: module."Data.Generic.Rep".to dictGeneric (genericZero' dictGenericSemiring);
  genericSemiringNoArguments = 
    { genericAdd' = v: v1: module."Data.Generic.Rep".NoArguments;
      genericZero' = module."Data.Generic.Rep".NoArguments;
      genericMul' = v: v1: module."Data.Generic.Rep".NoArguments;
      genericOne' = module."Data.Generic.Rep".NoArguments;
    };
  genericSemiringArgument = dictSemiring: 
    { genericAdd' = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              y = v1;
            in
              module."Data.Semiring".add dictSemiring x y;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semiring/Generic.purs at 19:1 - 23:29";
        in
          __pattern0 __patternFail;
      genericZero' = module."Data.Semiring".zero dictSemiring;
      genericMul' = v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v;
              y = v1;
            in
              module."Data.Semiring".mul dictSemiring x y;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semiring/Generic.purs at 19:1 - 23:29";
        in
          __pattern0 __patternFail;
      genericOne' = module."Data.Semiring".one dictSemiring;
    };
  genericOne' = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericOne';
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semiring/Generic.purs at 11:3 - 11:20";
    in
      __pattern0 __patternFail;
  genericOne = dictGeneric: dictGenericSemiring: module."Data.Generic.Rep".to dictGeneric (genericOne' dictGenericSemiring);
  genericMul' = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericMul';
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semiring/Generic.purs at 10:3 - 10:30";
    in
      __pattern0 __patternFail;
  genericMul = dictGeneric: dictGenericSemiring: x: y: module."Data.Function".apply (module."Data.Generic.Rep".to dictGeneric) (genericMul' dictGenericSemiring (module."Data.Generic.Rep".from dictGeneric x) (module."Data.Generic.Rep".from dictGeneric y));
  genericAdd' = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericAdd';
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semiring/Generic.purs at 8:3 - 8:30";
    in
      __pattern0 __patternFail;
  genericSemiringConstructor = dictGenericSemiring: 
    { genericAdd' = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a1 = v;
              a2 = v1;
            in
              genericAdd' dictGenericSemiring a1 a2;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semiring/Generic.purs at 31:1 - 35:40";
        in
          __pattern0 __patternFail;
      genericZero' = genericZero' dictGenericSemiring;
      genericMul' = v: v1: 
        let
          __pattern0 = __fail: 
            let
              a1 = v;
              a2 = v1;
            in
              genericMul' dictGenericSemiring a1 a2;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semiring/Generic.purs at 31:1 - 35:40";
        in
          __pattern0 __patternFail;
      genericOne' = genericOne' dictGenericSemiring;
    };
  genericSemiringProduct = dictGenericSemiring: dictGenericSemiring1: 
    { genericAdd' = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product" && v1.__tag == "Product"
              then 
                let
                  a1 = v.__field0;
                  b1 = v.__field1;
                  a2 = v1.__field0;
                  b2 = v1.__field1;
                in
                  module."Data.Generic.Rep".Product (genericAdd' dictGenericSemiring a1 a2) (genericAdd' dictGenericSemiring1 b1 b2)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semiring/Generic.purs at 25:1 - 29:48";
        in
          __pattern0 __patternFail;
      genericZero' = module."Data.Generic.Rep".Product (genericZero' dictGenericSemiring) (genericZero' dictGenericSemiring1);
      genericMul' = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product" && v1.__tag == "Product"
              then 
                let
                  a1 = v.__field0;
                  b1 = v.__field1;
                  a2 = v1.__field0;
                  b2 = v1.__field1;
                in
                  module."Data.Generic.Rep".Product (genericMul' dictGenericSemiring a1 a2) (genericMul' dictGenericSemiring1 b1 b2)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semiring/Generic.purs at 25:1 - 29:48";
        in
          __pattern0 __patternFail;
      genericOne' = module."Data.Generic.Rep".Product (genericOne' dictGenericSemiring) (genericOne' dictGenericSemiring1);
    };
  genericAdd = dictGeneric: dictGenericSemiring: x: y: module."Data.Function".apply (module."Data.Generic.Rep".to dictGeneric) (genericAdd' dictGenericSemiring (module."Data.Generic.Rep".from dictGeneric x) (module."Data.Generic.Rep".from dictGeneric y));
in
  {inherit genericAdd' genericMul' genericOne' genericZero' genericZero genericOne genericAdd genericMul genericSemiringNoArguments genericSemiringArgument genericSemiringProduct genericSemiringConstructor;}
;

Data-Semiring_default-nix = 
let
  module = 
    { "Data.Symbol" = Data-Symbol_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prim.Row" = import ../Prim.Row;
      "Prim.RowList" = import ../Prim.RowList;
      "Record.Unsafe" = Record-Unsafe_default-nix;
      "Type.Proxy" = Type-Proxy_default-nix;
    };
  foreign = Data-Semiring_foreign-nix;
  intAdd = foreign.intAdd;
  intMul = foreign.intMul;
  numAdd = foreign.numAdd;
  numMul = foreign.numMul;
  SemiringRecord-Dict = x: x;
  Semiring-Dict = x: x;
  zeroRecord = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.zeroRecord;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semiring.purs at 103:3 - 103:86";
    in
      __pattern0 __patternFail;
  zero = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.zero;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semiring.purs at 36:3 - 36:12";
    in
      __pattern0 __patternFail;
  semiringUnit = 
    { add = v: v1: module."Data.Unit".unit;
      zero = module."Data.Unit".unit;
      mul = v: v1: module."Data.Unit".unit;
      one = module."Data.Unit".unit;
    };
  semiringRecordNil = 
    { addRecord = v: v1: v2: { };
      mulRecord = v: v1: v2: { };
      oneRecord = v: v1: { };
      zeroRecord = v: v1: { };
    };
  semiringProxy3 = 
    { add = v: v1: module."Type.Proxy".Proxy3;
      mul = v: v1: module."Type.Proxy".Proxy3;
      one = module."Type.Proxy".Proxy3;
      zero = module."Type.Proxy".Proxy3;
    };
  semiringProxy2 = 
    { add = v: v1: module."Type.Proxy".Proxy2;
      mul = v: v1: module."Type.Proxy".Proxy2;
      one = module."Type.Proxy".Proxy2;
      zero = module."Type.Proxy".Proxy2;
    };
  semiringProxy = 
    { add = v: v1: module."Type.Proxy".Proxy;
      mul = v: v1: module."Type.Proxy".Proxy;
      one = module."Type.Proxy".Proxy;
      zero = module."Type.Proxy".Proxy;
    };
  semiringNumber = 
    { add = numAdd;
      zero = 0.0;
      mul = numMul;
      one = 1.0;
    };
  semiringInt = 
    { add = intAdd;
      zero = 0;
      mul = intMul;
      one = 1;
    };
  oneRecord = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.oneRecord;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semiring.purs at 102:3 - 102:85";
    in
      __pattern0 __patternFail;
  one = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.one;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semiring.purs at 38:3 - 38:12";
    in
      __pattern0 __patternFail;
  mulRecord = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.mulRecord;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semiring.purs at 101:3 - 101:92";
    in
      __pattern0 __patternFail;
  mul = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.mul;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semiring.purs at 37:3 - 37:22";
    in
      __pattern0 __patternFail;
  addRecord = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.addRecord;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semiring.purs at 100:3 - 100:92";
    in
      __pattern0 __patternFail;
  semiringRecord = dictRowToList: dictSemiringRecord: 
    { add = addRecord dictSemiringRecord module."Type.Proxy".Proxy;
      mul = mulRecord dictSemiringRecord module."Type.Proxy".Proxy;
      one = oneRecord dictSemiringRecord module."Type.Proxy".Proxy module."Type.Proxy".Proxy;
      zero = zeroRecord dictSemiringRecord module."Type.Proxy".Proxy module."Type.Proxy".Proxy;
    };
  add = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.add;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Semiring.purs at 35:3 - 35:22";
    in
      __pattern0 __patternFail;
  semiringFn = dictSemiring: 
    { add = f: g: x: add dictSemiring (f x) (g x);
      zero = v: zero dictSemiring;
      mul = f: g: x: mul dictSemiring (f x) (g x);
      one = v: one dictSemiring;
    };
  semiringRecordCons = dictIsSymbol: dictCons: dictSemiringRecord: dictSemiring: 
    { addRecord = v: ra: rb: 
        let
          tail = addRecord dictSemiringRecord module."Type.Proxy".Proxy ra rb;
          key = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
          insert = module."Record.Unsafe".unsafeSet key;
          get = module."Record.Unsafe".unsafeGet key;
        in
          insert (add dictSemiring (get ra) (get rb)) tail;
      mulRecord = v: ra: rb: 
        let
          tail = mulRecord dictSemiringRecord module."Type.Proxy".Proxy ra rb;
          key = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
          insert = module."Record.Unsafe".unsafeSet key;
          get = module."Record.Unsafe".unsafeGet key;
        in
          insert (mul dictSemiring (get ra) (get rb)) tail;
      oneRecord = v: v1: 
        let
          tail = oneRecord dictSemiringRecord module."Type.Proxy".Proxy module."Type.Proxy".Proxy;
          key = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
          insert = module."Record.Unsafe".unsafeSet key;
        in
          insert (one dictSemiring) tail;
      zeroRecord = v: v1: 
        let
          tail = zeroRecord dictSemiringRecord module."Type.Proxy".Proxy module."Type.Proxy".Proxy;
          key = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
          insert = module."Record.Unsafe".unsafeSet key;
        in
          insert (zero dictSemiring) tail;
    };
in
  {inherit add zero mul one addRecord mulRecord oneRecord zeroRecord semiringInt semiringNumber semiringFn semiringUnit semiringProxy semiringProxy2 semiringProxy3 semiringRecord semiringRecordNil semiringRecordCons;}
;

Data-Semiring_foreign-nix = 
{ intAdd = a: b: a + b;
  intMul = a: b: a * b;
  numAdd = a: b: a + b;
  numMul = a: b: a * b;
}

;

Data-Show-Generic_default-nix = 
let
  module = 
    { "Data.Generic.Rep" = Data-Generic-Rep_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Data.Symbol" = Data-Symbol_default-nix;
      "Prelude" = Prelude_default-nix;
      "Type.Proxy" = Type-Proxy_default-nix;
    };
  foreign = Data-Show-Generic_foreign-nix;
  intercalate = foreign.intercalate;
  GenericShowArgs-Dict = x: x;
  GenericShow-Dict = x: x;
  genericShowArgsNoArguments = {genericShowArgs = v: [];};
  genericShowArgsArgument = dictShow: 
    { genericShowArgs = v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              [(module."Data.Show".show dictShow a)];
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Show/Generic.purs at 46:1 - 47:42";
        in
          __pattern0 __patternFail;
    };
  genericShowArgs = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericShowArgs;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Show/Generic.purs at 18:3 - 18:39";
    in
      __pattern0 __patternFail;
  genericShowArgsProduct = dictGenericShowArgs: dictGenericShowArgs1: 
    { genericShowArgs = v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Product"
              then 
                let
                  a = v.__field0;
                  b = v.__field1;
                in
                  module."Data.Semigroup".append module."Data.Semigroup".semigroupArray (genericShowArgs dictGenericShowArgs a) (genericShowArgs dictGenericShowArgs1 b)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Show/Generic.purs at 30:1 - 33:73";
        in
          __pattern0 __patternFail;
    };
  genericShowConstructor = dictGenericShowArgs: dictIsSymbol: 
    { genericShow' = v: 
        let
          __pattern0 = __fail: 
            let
              a = v;
            in
              
              let
                ctor = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
              in
                
                let
                  v1 = genericShowArgs dictGenericShowArgs a;
                in
                  
                  let
                    __pattern0 = __fail: if builtins.length v1 == 0 then ctor else __fail;
                    __pattern1 = __fail: 
                      let
                        args = v1;
                      in
                        module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(" (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (intercalate " " (module."Data.Semigroup".append module."Data.Semigroup".semigroupArray [ctor] args)) ")");
                    __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Show/Generic.purs at 39:7 - 41:63";
                  in
                    __pattern0 (__pattern1 __patternFail);
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Show/Generic.purs at 35:1 - 44:49";
        in
          __pattern0 __patternFail;
    };
  genericShow' = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.genericShow';
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Show/Generic.purs at 15:3 - 15:30";
    in
      __pattern0 __patternFail;
  genericShowNoConstructors = {genericShow' = a: genericShow' genericShowNoConstructors a;};
  genericShowSum = dictGenericShow: dictGenericShow1: 
    { genericShow' = v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Inl"
              then 
                let
                  a = v.__field0;
                in
                  genericShow' dictGenericShow a
              else __fail;
          __pattern1 = __fail: 
            if v.__tag == "Inr"
              then 
                let
                  b = v.__field0;
                in
                  genericShow' dictGenericShow1 b
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Show/Generic.purs at 26:1 - 28:40";
        in
          __pattern0 (__pattern1 __patternFail);
    };
  genericShow = dictGeneric: dictGenericShow: x: genericShow' dictGenericShow (module."Data.Generic.Rep".from dictGeneric x);
in
  {inherit genericShow' genericShow genericShowArgs genericShowNoConstructors genericShowArgsNoArguments genericShowSum genericShowArgsProduct genericShowConstructor genericShowArgsArgument;}
;

Data-Show-Generic_foreign-nix = 
{ intercalate = builtins.concatStringsSep; }

;

Data-Show_default-nix = 
let
  module = 
    { "Data.Symbol" = Data-Symbol_default-nix;
      "Prim.RowList" = import ../Prim.RowList;
      "Record.Unsafe" = Record-Unsafe_default-nix;
      "Type.Proxy" = Type-Proxy_default-nix;
    };
  foreign = Data-Show_foreign-nix;
  showIntImpl = foreign.showIntImpl;
  showNumberImpl = foreign.showNumberImpl;
  showCharImpl = foreign.showCharImpl;
  showStringImpl = foreign.showStringImpl;
  showArrayImpl = foreign.showArrayImpl;
  cons = foreign.cons;
  intercalate = foreign.intercalate;
  ShowRecordFields-Dict = x: x;
  Show-Dict = x: x;
  showString = {show = showStringImpl;};
  showRecordFieldsNil = {showRecordFields = v: v1: [];};
  showRecordFields = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.showRecordFields;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Show.purs at 57:3 - 57:84";
    in
      __pattern0 __patternFail;
  showRecord = dictRowToList: dictShowRecordFields: 
    { show = record: 
        let
          v = showRecordFields dictShowRecordFields module."Type.Proxy".Proxy record;
        in
          
          let
            __pattern0 = __fail: if builtins.length v == 0 then "{}" else __fail;
            __pattern1 = __fail: 
              let
                fields = v;
              in
                intercalate " " ["{"
                (intercalate ", " fields)
                "}"];
            __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Show.purs at 49:17 - 51:66";
          in
            __pattern0 (__pattern1 __patternFail);
    };
  showProxy3 = {show = v: "Proxy3";};
  showProxy2 = {show = v: "Proxy2";};
  showProxy = {show = v: "Proxy";};
  showNumber = {show = showNumberImpl;};
  showInt = {show = showIntImpl;};
  showChar = {show = showCharImpl;};
  showBoolean = 
    { show = v: 
        let
          __pattern0 = __fail: if v then "true" else __fail;
          __pattern1 = __fail: if !v then "false" else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Show.purs at 20:1 - 22:23";
        in
          __pattern0 (__pattern1 __patternFail);
    };
  show = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.show;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Show.purs at 18:3 - 18:22";
    in
      __pattern0 __patternFail;
  showArray = dictShow: {show = showArrayImpl (show dictShow);};
  showRecordFieldsCons = dictIsSymbol: dictShowRecordFields: dictShow: 
    { showRecordFields = v: record: 
        let
          tail = showRecordFields dictShowRecordFields module."Type.Proxy".Proxy record;
          key = module."Data.Symbol".reflectSymbol dictIsSymbol module."Type.Proxy".Proxy;
          focus = module."Record.Unsafe".unsafeGet key record;
        in
          cons (intercalate ": " [key
          (show dictShow focus)]) tail;
    };
in
  {inherit show showRecordFields showBoolean showInt showNumber showChar showString showArray showProxy showProxy2 showProxy3 showRecord showRecordFieldsNil showRecordFieldsCons;}
;

Data-Show_foreign-nix = 
{ showIntImpl = builtins.toString;

  # TODO: This should remove extra zeros from the end of a number
  showNumberImpl = builtins.toString;

  # TODO: There are some characters that are shown specially.  See JS implementation.
  showCharImpl = c: "'" + c + "'";

  # TODO: There are some characters that need to be shown specially.  See JS implementation.
  showStringImpl = str: "\"" + str + "\"";

  showArrayImpl = show: arr:
    "[" + builtins.concatStringsSep "," (map show arr) + "]";

  cons = a: arr: [ a ] ++ arr;

  intercalate = builtins.concatStringsSep;
}

;

Data-Symbol_default-nix = 
let
  module = {"Type.Proxy" = Type-Proxy_default-nix;};
  foreign = Data-Symbol_foreign-nix;
  unsafeCoerce = foreign.unsafeCoerce;
  SProxy = {__tag = "SProxy";};
  IsSymbol-Dict = x: x;
  reifySymbol = s: f: 
    let
      coerce = unsafeCoerce;
    in
      coerce (dictIsSymbol: f dictIsSymbol) {reflectSymbol = v: s;} module."Type.Proxy".Proxy;
  reflectSymbol = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.reflectSymbol;
      __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Symbol.purs at 24:3 - 24:53";
    in
      __pattern0 __patternFail;
in
  {inherit reflectSymbol reifySymbol SProxy;}
;

Data-Symbol_foreign-nix = 
{ unsafeCoerce = x: x; }

;

Data-Traversable-Accum-Internal_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Traversable.Accum" = Data-Traversable-Accum_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  StateR = x: x;
  StateL = x: x;
  stateR = v: 
    let
      __pattern0 = __fail: 
        let
          k = v;
        in
          k;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable/Accum/Internal.purs at 31:1 - 31:51";
    in
      __pattern0 __patternFail;
  stateL = v: 
    let
      __pattern0 = __fail: 
        let
          k = v;
        in
          k;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable/Accum/Internal.purs at 13:1 - 13:51";
    in
      __pattern0 __patternFail;
  functorStateR = 
    { map = f: k: s: 
        let
          v = stateR k s;
        in
          
          let
            __pattern0 = __fail: 
              let
                s1 = v.accum;
                a = v.value;
              in
                
                { accum = s1;
                  value = f a;
                };
            __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable/Accum/Internal.purs at 35:26 - 36:57";
          in
            __pattern0 __patternFail;
    };
  functorStateL = 
    { map = f: k: s: 
        let
          v = stateL k s;
        in
          
          let
            __pattern0 = __fail: 
              let
                s1 = v.accum;
                a = v.value;
              in
                
                { accum = s1;
                  value = f a;
                };
            __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable/Accum/Internal.purs at 17:26 - 18:57";
          in
            __pattern0 __patternFail;
    };
  applyStateR = 
    { apply = f: x: s: 
        let
          v = stateR x s;
        in
          
          let
            __pattern0 = __fail: 
              let
                s1 = v.accum;
                x' = v.value;
              in
                
                let
                  v1 = stateR f s1;
                in
                  
                  let
                    __pattern0 = __fail: 
                      let
                        s2 = v1.accum;
                        f' = v1.value;
                      in
                        
                        { accum = s2;
                          value = f' x';
                        };
                    __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable/Accum/Internal.purs at 40:33 - 41:62";
                  in
                    __pattern0 __patternFail;
            __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable/Accum/Internal.purs at 39:28 - 41:62";
          in
            __pattern0 __patternFail;
      "Functor0" = __unused: functorStateR;
    };
  applyStateL = 
    { apply = f: x: s: 
        let
          v = stateL f s;
        in
          
          let
            __pattern0 = __fail: 
              let
                s1 = v.accum;
                f' = v.value;
              in
                
                let
                  v1 = stateL x s1;
                in
                  
                  let
                    __pattern0 = __fail: 
                      let
                        s2 = v1.accum;
                        x' = v1.value;
                      in
                        
                        { accum = s2;
                          value = f' x';
                        };
                    __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable/Accum/Internal.purs at 22:33 - 23:62";
                  in
                    __pattern0 __patternFail;
            __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable/Accum/Internal.purs at 21:28 - 23:62";
          in
            __pattern0 __patternFail;
      "Functor0" = __unused: functorStateL;
    };
  applicativeStateR = 
    { pure = a: s: 
        { accum = s;
          value = a;
        };
      "Apply0" = __unused: applyStateR;
    };
  applicativeStateL = 
    { pure = a: s: 
        { accum = s;
          value = a;
        };
      "Apply0" = __unused: applyStateL;
    };
in
  {inherit StateL stateL StateR stateR functorStateL applyStateL applicativeStateL functorStateR applyStateR applicativeStateR;}
;

Data-Traversable-Accum_default-nix = 
let
  module = { };
in
  { }
;

Data-Traversable_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Category" = Control-Category_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Const" = Data-Const_default-nix;
      "Data.Either" = Data-Either_default-nix;
      "Data.Foldable" = Data-Foldable_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Functor.App" = Data-Functor-App_default-nix;
      "Data.Functor.Compose" = Data-Functor-Compose_default-nix;
      "Data.Functor.Coproduct" = Data-Functor-Coproduct_default-nix;
      "Data.Functor.Product" = Data-Functor-Product_default-nix;
      "Data.Identity" = Data-Identity_default-nix;
      "Data.Maybe" = Data-Maybe_default-nix;
      "Data.Maybe.First" = Data-Maybe-First_default-nix;
      "Data.Maybe.Last" = Data-Maybe-Last_default-nix;
      "Data.Monoid.Additive" = Data-Monoid-Additive_default-nix;
      "Data.Monoid.Conj" = Data-Monoid-Conj_default-nix;
      "Data.Monoid.Disj" = Data-Monoid-Disj_default-nix;
      "Data.Monoid.Dual" = Data-Monoid-Dual_default-nix;
      "Data.Monoid.Multiplicative" = Data-Monoid-Multiplicative_default-nix;
      "Data.Traversable.Accum" = Data-Traversable-Accum_default-nix;
      "Data.Traversable.Accum.Internal" = Data-Traversable-Accum-Internal_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  foreign = Data-Traversable_foreign-nix;
  traverseArrayImpl = foreign.traverseArrayImpl;
  Traversable-Dict = x: x;
  traverse = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.traverse;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 80:3 - 80:74";
    in
      __pattern0 __patternFail;
  traversableTuple = 
    { traverse = dictApplicative: f: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  x = v.__field0;
                  y = v.__field1;
                in
                  module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) (module."Data.Tuple".Tuple x) (f1 y)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 155:1 - 157:39";
        in
          __pattern0 __patternFail;
      sequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  x = v.__field0;
                  y = v.__field1;
                in
                  module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) (module."Data.Tuple".Tuple x) y
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 155:1 - 157:39";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: module."Data.Tuple".functorTuple;
      "Foldable1" = __unused: module."Data.Foldable".foldableTuple;
    };
  traversableMultiplicative = 
    { traverse = dictApplicative: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Monoid.Multiplicative".Multiplicative (f1 x);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 145:1 - 147:53";
        in
          __pattern0 __patternFail;
      sequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Monoid.Multiplicative".Multiplicative x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 145:1 - 147:53";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: module."Data.Monoid.Multiplicative".functorMultiplicative;
      "Foldable1" = __unused: module."Data.Foldable".foldableMultiplicative;
    };
  traversableMaybe = 
    { traverse = dictApplicative: v: v1: 
        let
          __pattern0 = __fail: if v1.__tag == "Nothing" then module."Control.Applicative".pure dictApplicative module."Data.Maybe".Nothing else __fail;
          __pattern1 = __fail: 
            if v1.__tag == "Just"
              then 
                let
                  f = v;
                  x = v1.__field0;
                in
                  module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Maybe".Just (f x)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 115:1 - 119:33";
        in
          __pattern0 (__pattern1 __patternFail);
      sequence = dictApplicative: v: 
        let
          __pattern0 = __fail: if v.__tag == "Nothing" then module."Control.Applicative".pure dictApplicative module."Data.Maybe".Nothing else __fail;
          __pattern1 = __fail: 
            if v.__tag == "Just"
              then 
                let
                  x = v.__field0;
                in
                  module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Maybe".Just x
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 115:1 - 119:33";
        in
          __pattern0 (__pattern1 __patternFail);
      "Functor0" = __unused: module."Data.Maybe".functorMaybe;
      "Foldable1" = __unused: module."Data.Foldable".foldableMaybe;
    };
  traversableIdentity = 
    { traverse = dictApplicative: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Identity".Identity (f1 x);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 159:1 - 161:41";
        in
          __pattern0 __patternFail;
      sequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Identity".Identity x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 159:1 - 161:41";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: module."Data.Identity".functorIdentity;
      "Foldable1" = __unused: module."Data.Foldable".foldableIdentity;
    };
  traversableEither = 
    { traverse = dictApplicative: v: v1: 
        let
          __pattern0 = __fail: 
            if v1.__tag == "Left"
              then 
                let
                  x = v1.__field0;
                in
                  module."Control.Applicative".pure dictApplicative (module."Data.Either".Left x)
              else __fail;
          __pattern1 = __fail: 
            if v1.__tag == "Right"
              then 
                let
                  f = v;
                  x = v1.__field0;
                in
                  module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Either".Right (f x)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 149:1 - 153:36";
        in
          __pattern0 (__pattern1 __patternFail);
      sequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Left"
              then 
                let
                  x = v.__field0;
                in
                  module."Control.Applicative".pure dictApplicative (module."Data.Either".Left x)
              else __fail;
          __pattern1 = __fail: 
            if v.__tag == "Right"
              then 
                let
                  x = v.__field0;
                in
                  module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Either".Right x
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 149:1 - 153:36";
        in
          __pattern0 (__pattern1 __patternFail);
      "Functor0" = __unused: module."Data.Either".functorEither;
      "Foldable1" = __unused: module."Data.Foldable".foldableEither;
    };
  traversableDual = 
    { traverse = dictApplicative: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Monoid.Dual".Dual (f1 x);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 133:1 - 135:33";
        in
          __pattern0 __patternFail;
      sequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Monoid.Dual".Dual x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 133:1 - 135:33";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: module."Data.Monoid.Dual".functorDual;
      "Foldable1" = __unused: module."Data.Foldable".foldableDual;
    };
  traversableDisj = 
    { traverse = dictApplicative: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Monoid.Disj".Disj (f1 x);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 141:1 - 143:33";
        in
          __pattern0 __patternFail;
      sequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Monoid.Disj".Disj x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 141:1 - 143:33";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: module."Data.Monoid.Disj".functorDisj;
      "Foldable1" = __unused: module."Data.Foldable".foldableDisj;
    };
  traversableConst = 
    { traverse = dictApplicative: v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v1;
            in
              module."Control.Applicative".pure dictApplicative x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 163:1 - 165:38";
        in
          __pattern0 __patternFail;
      sequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Control.Applicative".pure dictApplicative x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 163:1 - 165:38";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: module."Data.Const".functorConst;
      "Foldable1" = __unused: module."Data.Foldable".foldableConst;
    };
  traversableConj = 
    { traverse = dictApplicative: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Monoid.Conj".Conj (f1 x);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 137:1 - 139:33";
        in
          __pattern0 __patternFail;
      sequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Monoid.Conj".Conj x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 137:1 - 139:33";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: module."Data.Monoid.Conj".functorConj;
      "Foldable1" = __unused: module."Data.Foldable".foldableConj;
    };
  traversableCompose = dictTraversable: dictTraversable1: 
    { traverse = dictApplicative: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              fga = v;
            in
              module."Data.Function".apply (module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Functor.Compose".Compose) (traverse dictTraversable dictApplicative (traverse dictTraversable1 dictApplicative f1) fga);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 179:1 - 181:31";
        in
          __pattern0 __patternFail;
      sequence = dictApplicative: traverse (traversableCompose dictTraversable dictTraversable1) dictApplicative (module."Control.Category".identity module."Control.Category".categoryFn);
      "Functor0" = __unused: module."Data.Functor.Compose".functorCompose (dictTraversable."Functor0" module."Prim".undefined) (dictTraversable1."Functor0" module."Prim".undefined);
      "Foldable1" = __unused: module."Data.Foldable".foldableCompose (dictTraversable."Foldable1" module."Prim".undefined) (dictTraversable1."Foldable1" module."Prim".undefined);
    };
  traversableAdditive = 
    { traverse = dictApplicative: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Monoid.Additive".Additive (f1 x);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 129:1 - 131:41";
        in
          __pattern0 __patternFail;
      sequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Monoid.Additive".Additive x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 129:1 - 131:41";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: module."Data.Monoid.Additive".functorAdditive;
      "Foldable1" = __unused: module."Data.Foldable".foldableAdditive;
    };
  sequenceDefault = dictTraversable: dictApplicative: traverse dictTraversable dictApplicative (module."Control.Category".identity module."Control.Category".categoryFn);
  traversableArray = 
    { traverse = dictApplicative: traverseArrayImpl (module."Control.Apply".apply (dictApplicative."Apply0" module."Prim".undefined)) (module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined)) (module."Control.Applicative".pure dictApplicative);
      sequence = dictApplicative: sequenceDefault traversableArray dictApplicative;
      "Functor0" = __unused: module."Data.Functor".functorArray;
      "Foldable1" = __unused: module."Data.Foldable".foldableArray;
    };
  sequence = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.sequence;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 81:3 - 81:62";
    in
      __pattern0 __patternFail;
  traversableApp = dictTraversable: 
    { traverse = dictApplicative: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Functor.App".App (traverse dictTraversable dictApplicative f1 x);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 183:1 - 185:40";
        in
          __pattern0 __patternFail;
      sequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Functor.App".App (sequence dictTraversable dictApplicative x);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 183:1 - 185:40";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: module."Data.Functor.App".functorApp (dictTraversable."Functor0" module."Prim".undefined);
      "Foldable1" = __unused: module."Data.Foldable".foldableApp (dictTraversable."Foldable1" module."Prim".undefined);
    };
  traversableCoproduct = dictTraversable: dictTraversable1: 
    { traverse = dictApplicative: f: module."Data.Functor.Coproduct".coproduct (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Functor.Coproduct".Coproduct module."Data.Either".Left)) (traverse dictTraversable dictApplicative f)) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Functor.Coproduct".Coproduct module."Data.Either".Right)) (traverse dictTraversable1 dictApplicative f));
      sequence = dictApplicative: module."Data.Functor.Coproduct".coproduct (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Functor.Coproduct".Coproduct module."Data.Either".Left)) (sequence dictTraversable dictApplicative)) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Functor.Coproduct".Coproduct module."Data.Either".Right)) (sequence dictTraversable1 dictApplicative));
      "Functor0" = __unused: module."Data.Functor.Coproduct".functorCoproduct (dictTraversable."Functor0" module."Prim".undefined) (dictTraversable1."Functor0" module."Prim".undefined);
      "Foldable1" = __unused: module."Data.Foldable".foldableCoproduct (dictTraversable."Foldable1" module."Prim".undefined) (dictTraversable1."Foldable1" module."Prim".undefined);
    };
  traversableFirst = 
    { traverse = dictApplicative: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Maybe.First".First (traverse traversableMaybe dictApplicative f1 x);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 121:1 - 123:44";
        in
          __pattern0 __patternFail;
      sequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Maybe.First".First (sequence traversableMaybe dictApplicative x);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 121:1 - 123:44";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: module."Data.Maybe.First".functorFirst;
      "Foldable1" = __unused: module."Data.Foldable".foldableFirst;
    };
  traversableLast = 
    { traverse = dictApplicative: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Maybe.Last".Last (traverse traversableMaybe dictApplicative f1 x);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 125:1 - 127:42";
        in
          __pattern0 __patternFail;
      sequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            let
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Maybe.Last".Last (sequence traversableMaybe dictApplicative x);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 125:1 - 127:42";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: module."Data.Maybe.Last".functorLast;
      "Foldable1" = __unused: module."Data.Foldable".foldableLast;
    };
  traversableProduct = dictTraversable: dictTraversable1: 
    { traverse = dictApplicative: f: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  fa = v.__field0;
                  ga = v.__field1;
                in
                  module."Control.Apply".lift2 (dictApplicative."Apply0" module."Prim".undefined) module."Data.Functor.Product".product (traverse dictTraversable dictApplicative f1 fa) (traverse dictTraversable1 dictApplicative f1 ga)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 167:1 - 169:79";
        in
          __pattern0 __patternFail;
      sequence = dictApplicative: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  fa = v.__field0;
                  ga = v.__field1;
                in
                  module."Control.Apply".lift2 (dictApplicative."Apply0" module."Prim".undefined) module."Data.Functor.Product".product (sequence dictTraversable dictApplicative fa) (sequence dictTraversable1 dictApplicative ga)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/Traversable.purs at 167:1 - 169:79";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: module."Data.Functor.Product".functorProduct (dictTraversable."Functor0" module."Prim".undefined) (dictTraversable1."Functor0" module."Prim".undefined);
      "Foldable1" = __unused: module."Data.Foldable".foldableProduct (dictTraversable."Foldable1" module."Prim".undefined) (dictTraversable1."Foldable1" module."Prim".undefined);
    };
  traverseDefault = dictTraversable: dictApplicative: f: ta: sequence dictTraversable dictApplicative (module."Data.Functor".map (dictTraversable."Functor0" module."Prim".undefined) f ta);
  mapAccumR = dictTraversable: f: s0: xs: module."Data.Traversable.Accum.Internal".stateR (traverse dictTraversable module."Data.Traversable.Accum.Internal".applicativeStateR (a: s: f s a) xs) s0;
  scanr = dictTraversable: f: b0: xs: 
    ( mapAccumR dictTraversable 
      ( b: a: 
        let
          b' = f a b;
        in
          
          { accum = b';
            value = b';
          }
      ) b0 xs
    ).value;
  mapAccumL = dictTraversable: f: s0: xs: module."Data.Traversable.Accum.Internal".stateL (traverse dictTraversable module."Data.Traversable.Accum.Internal".applicativeStateL (a: s: f s a) xs) s0;
  scanl = dictTraversable: f: b0: xs: 
    ( mapAccumL dictTraversable 
      ( b: a: 
        let
          b' = f b a;
        in
          
          { accum = b';
            value = b';
          }
      ) b0 xs
    ).value;
  for = dictApplicative: dictTraversable: x: f: traverse dictTraversable dictApplicative f x;
in
  
  { inherit traverse sequence traverseDefault sequenceDefault for scanl scanr mapAccumL mapAccumR traversableArray traversableMaybe traversableFirst traversableLast traversableAdditive traversableDual traversableConj traversableDisj traversableMultiplicative traversableEither traversableTuple traversableIdentity traversableConst traversableProduct traversableCoproduct traversableCompose traversableApp;
    inherit (module."Data.Foldable") all and any elem find fold foldMap foldMapDefaultL foldMapDefaultR foldl foldlDefault foldr foldrDefault for_ intercalate maximum maximumBy minimum minimumBy notElem oneOf or- sequence_ sum traverse_;
    inherit (module."Data.Traversable.Accum");
  }
;

Data-Traversable_foreign-nix = let
  # This is foldr from nixpkgs/lib/lists.nix
  foldr = op: nul: list:
    let
      len = builtins.length list;
      fold' = n:
        if n == len
        then nul
        else op (builtins.elemAt list n) (fold' (n + 1));
    in fold' 0;
in
{
  # type:
  #    forall m a b
  #  . (forall x y. m (x -> y) -> m x -> m y)  # apply
  # -> (forall x y. (x -> y) -> m x -> m y)    # fmap
  # -> (forall x. x -> m x)                    # pure
  # -> (a -> m b)                              # f
  # -> Array a
  # -> m (Array b)
  #
  # Implementation is based on Haskell's Data.Traversable [] instance.
  traverseArrayImpl = apply: fmap: pure: f: arr:
    let
      # :: forall x. x -> Array x -> Array x
      cons = m: ms: [m] ++ ms;
      # :: a -> m (Array b) -> m (Array b)
      cons_f = x: ys: apply (fmap cons (f x)) ys;
    in
    foldr cons_f (pure []) arr;
}

;

Data-TraversableWithIndex_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Const" = Data-Const_default-nix;
      "Data.Either" = Data-Either_default-nix;
      "Data.FoldableWithIndex" = Data-FoldableWithIndex_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Functor.App" = Data-Functor-App_default-nix;
      "Data.Functor.Compose" = Data-Functor-Compose_default-nix;
      "Data.Functor.Coproduct" = Data-Functor-Coproduct_default-nix;
      "Data.Functor.Product" = Data-Functor-Product_default-nix;
      "Data.FunctorWithIndex" = Data-FunctorWithIndex_default-nix;
      "Data.Identity" = Data-Identity_default-nix;
      "Data.Maybe" = Data-Maybe_default-nix;
      "Data.Maybe.First" = Data-Maybe-First_default-nix;
      "Data.Maybe.Last" = Data-Maybe-Last_default-nix;
      "Data.Monoid.Additive" = Data-Monoid-Additive_default-nix;
      "Data.Monoid.Conj" = Data-Monoid-Conj_default-nix;
      "Data.Monoid.Disj" = Data-Monoid-Disj_default-nix;
      "Data.Monoid.Dual" = Data-Monoid-Dual_default-nix;
      "Data.Monoid.Multiplicative" = Data-Monoid-Multiplicative_default-nix;
      "Data.Traversable" = Data-Traversable_default-nix;
      "Data.Traversable.Accum" = Data-Traversable-Accum_default-nix;
      "Data.Traversable.Accum.Internal" = Data-Traversable-Accum-Internal_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  TraversableWithIndex-Dict = x: x;
  traverseWithIndexDefault = dictTraversableWithIndex: dictApplicative: f: module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Traversable".sequence (dictTraversableWithIndex."Traversable2" module."Prim".undefined) dictApplicative) (module."Data.FunctorWithIndex".mapWithIndex (dictTraversableWithIndex."FunctorWithIndex0" module."Prim".undefined) f);
  traverseWithIndex = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.traverseWithIndex;
      __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/TraversableWithIndex.purs at 56:3 - 56:88";
    in
      __pattern0 __patternFail;
  traverseDefault = dictTraversableWithIndex: dictApplicative: f: traverseWithIndex dictTraversableWithIndex dictApplicative (module."Data.Function".const f);
  traversableWithIndexTuple = 
    { traverseWithIndex = dictApplicative: f: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  x = v.__field0;
                  y = v.__field1;
                in
                  module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) (module."Data.Tuple".Tuple x) (f1 module."Data.Unit".unit y)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/TraversableWithIndex.purs at 99:1 - 100:57";
        in
          __pattern0 __patternFail;
      "FunctorWithIndex0" = __unused: module."Data.FunctorWithIndex".functorWithIndexTuple;
      "FoldableWithIndex1" = __unused: module."Data.FoldableWithIndex".foldableWithIndexTuple;
      "Traversable2" = __unused: module."Data.Traversable".traversableTuple;
    };
  traversableWithIndexProduct = dictTraversableWithIndex: dictTraversableWithIndex1: 
    { traverseWithIndex = dictApplicative: f: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  fa = v.__field0;
                  ga = v.__field1;
                in
                  module."Control.Apply".lift2 (dictApplicative."Apply0" module."Prim".undefined) module."Data.Functor.Product".product (traverseWithIndex dictTraversableWithIndex dictApplicative (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f1 module."Data.Either".Left) fa) (traverseWithIndex dictTraversableWithIndex1 dictApplicative (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f1 module."Data.Either".Right) ga)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/TraversableWithIndex.purs at 108:1 - 109:135";
        in
          __pattern0 __patternFail;
      "FunctorWithIndex0" = __unused: module."Data.FunctorWithIndex".functorWithIndexProduct (dictTraversableWithIndex."FunctorWithIndex0" module."Prim".undefined) (dictTraversableWithIndex1."FunctorWithIndex0" module."Prim".undefined);
      "FoldableWithIndex1" = __unused: module."Data.FoldableWithIndex".foldableWithIndexProduct (dictTraversableWithIndex."FoldableWithIndex1" module."Prim".undefined) (dictTraversableWithIndex1."FoldableWithIndex1" module."Prim".undefined);
      "Traversable2" = __unused: module."Data.Traversable".traversableProduct (dictTraversableWithIndex."Traversable2" module."Prim".undefined) (dictTraversableWithIndex1."Traversable2" module."Prim".undefined);
    };
  traversableWithIndexMultiplicative = 
    { traverseWithIndex = dictApplicative: f: module."Data.Function".apply (module."Data.Traversable".traverse module."Data.Traversable".traversableMultiplicative dictApplicative) (f module."Data.Unit".unit);
      "FunctorWithIndex0" = __unused: module."Data.FunctorWithIndex".functorWithIndexMultiplicative;
      "FoldableWithIndex1" = __unused: module."Data.FoldableWithIndex".foldableWithIndexMultiplicative;
      "Traversable2" = __unused: module."Data.Traversable".traversableMultiplicative;
    };
  traversableWithIndexMaybe = 
    { traverseWithIndex = dictApplicative: f: module."Data.Function".apply (module."Data.Traversable".traverse module."Data.Traversable".traversableMaybe dictApplicative) (f module."Data.Unit".unit);
      "FunctorWithIndex0" = __unused: module."Data.FunctorWithIndex".functorWithIndexMaybe;
      "FoldableWithIndex1" = __unused: module."Data.FoldableWithIndex".foldableWithIndexMaybe;
      "Traversable2" = __unused: module."Data.Traversable".traversableMaybe;
    };
  traversableWithIndexLast = 
    { traverseWithIndex = dictApplicative: f: module."Data.Function".apply (module."Data.Traversable".traverse module."Data.Traversable".traversableLast dictApplicative) (f module."Data.Unit".unit);
      "FunctorWithIndex0" = __unused: module."Data.FunctorWithIndex".functorWithIndexLast;
      "FoldableWithIndex1" = __unused: module."Data.FoldableWithIndex".foldableWithIndexLast;
      "Traversable2" = __unused: module."Data.Traversable".traversableLast;
    };
  traversableWithIndexIdentity = 
    { traverseWithIndex = dictApplicative: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Identity".Identity (f1 module."Data.Unit".unit x);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/TraversableWithIndex.purs at 102:1 - 103:59";
        in
          __pattern0 __patternFail;
      "FunctorWithIndex0" = __unused: module."Data.FunctorWithIndex".functorWithIndexIdentity;
      "FoldableWithIndex1" = __unused: module."Data.FoldableWithIndex".foldableWithIndexIdentity;
      "Traversable2" = __unused: module."Data.Traversable".traversableIdentity;
    };
  traversableWithIndexFirst = 
    { traverseWithIndex = dictApplicative: f: module."Data.Function".apply (module."Data.Traversable".traverse module."Data.Traversable".traversableFirst dictApplicative) (f module."Data.Unit".unit);
      "FunctorWithIndex0" = __unused: module."Data.FunctorWithIndex".functorWithIndexFirst;
      "FoldableWithIndex1" = __unused: module."Data.FoldableWithIndex".foldableWithIndexFirst;
      "Traversable2" = __unused: module."Data.Traversable".traversableFirst;
    };
  traversableWithIndexEither = 
    { traverseWithIndex = dictApplicative: v: v1: 
        let
          __pattern0 = __fail: 
            if v1.__tag == "Left"
              then 
                let
                  x = v1.__field0;
                in
                  module."Control.Applicative".pure dictApplicative (module."Data.Either".Left x)
              else __fail;
          __pattern1 = __fail: 
            if v1.__tag == "Right"
              then 
                let
                  f = v;
                  x = v1.__field0;
                in
                  module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Either".Right (f module."Data.Unit".unit x)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/TraversableWithIndex.purs at 95:1 - 97:53";
        in
          __pattern0 (__pattern1 __patternFail);
      "FunctorWithIndex0" = __unused: module."Data.FunctorWithIndex".functorWithIndexEither;
      "FoldableWithIndex1" = __unused: module."Data.FoldableWithIndex".foldableWithIndexEither;
      "Traversable2" = __unused: module."Data.Traversable".traversableEither;
    };
  traversableWithIndexDual = 
    { traverseWithIndex = dictApplicative: f: module."Data.Function".apply (module."Data.Traversable".traverse module."Data.Traversable".traversableDual dictApplicative) (f module."Data.Unit".unit);
      "FunctorWithIndex0" = __unused: module."Data.FunctorWithIndex".functorWithIndexDual;
      "FoldableWithIndex1" = __unused: module."Data.FoldableWithIndex".foldableWithIndexDual;
      "Traversable2" = __unused: module."Data.Traversable".traversableDual;
    };
  traversableWithIndexDisj = 
    { traverseWithIndex = dictApplicative: f: module."Data.Function".apply (module."Data.Traversable".traverse module."Data.Traversable".traversableDisj dictApplicative) (f module."Data.Unit".unit);
      "FunctorWithIndex0" = __unused: module."Data.FunctorWithIndex".functorWithIndexDisj;
      "FoldableWithIndex1" = __unused: module."Data.FoldableWithIndex".foldableWithIndexDisj;
      "Traversable2" = __unused: module."Data.Traversable".traversableDisj;
    };
  traversableWithIndexCoproduct = dictTraversableWithIndex: dictTraversableWithIndex1: 
    { traverseWithIndex = dictApplicative: f: module."Data.Functor.Coproduct".coproduct (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Functor.Coproduct".Coproduct module."Data.Either".Left)) (traverseWithIndex dictTraversableWithIndex dictApplicative (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f module."Data.Either".Left))) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn module."Data.Functor.Coproduct".Coproduct module."Data.Either".Right)) (traverseWithIndex dictTraversableWithIndex1 dictApplicative (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn f module."Data.Either".Right)));
      "FunctorWithIndex0" = __unused: module."Data.FunctorWithIndex".functorWithIndexCoproduct (dictTraversableWithIndex."FunctorWithIndex0" module."Prim".undefined) (dictTraversableWithIndex1."FunctorWithIndex0" module."Prim".undefined);
      "FoldableWithIndex1" = __unused: module."Data.FoldableWithIndex".foldableWithIndexCoproduct (dictTraversableWithIndex."FoldableWithIndex1" module."Prim".undefined) (dictTraversableWithIndex1."FoldableWithIndex1" module."Prim".undefined);
      "Traversable2" = __unused: module."Data.Traversable".traversableCoproduct (dictTraversableWithIndex."Traversable2" module."Prim".undefined) (dictTraversableWithIndex1."Traversable2" module."Prim".undefined);
    };
  traversableWithIndexConst = 
    { traverseWithIndex = dictApplicative: v: v1: 
        let
          __pattern0 = __fail: 
            let
              x = v1;
            in
              module."Control.Applicative".pure dictApplicative x;
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/TraversableWithIndex.purs at 105:1 - 106:49";
        in
          __pattern0 __patternFail;
      "FunctorWithIndex0" = __unused: module."Data.FunctorWithIndex".functorWithIndexConst;
      "FoldableWithIndex1" = __unused: module."Data.FoldableWithIndex".foldableWithIndexConst;
      "Traversable2" = __unused: module."Data.Traversable".traversableConst;
    };
  traversableWithIndexConj = 
    { traverseWithIndex = dictApplicative: f: module."Data.Function".apply (module."Data.Traversable".traverse module."Data.Traversable".traversableConj dictApplicative) (f module."Data.Unit".unit);
      "FunctorWithIndex0" = __unused: module."Data.FunctorWithIndex".functorWithIndexConj;
      "FoldableWithIndex1" = __unused: module."Data.FoldableWithIndex".foldableWithIndexConj;
      "Traversable2" = __unused: module."Data.Traversable".traversableConj;
    };
  traversableWithIndexCompose = dictTraversableWithIndex: dictTraversableWithIndex1: 
    { traverseWithIndex = dictApplicative: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              fga = v;
            in
              module."Data.Function".apply (module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Functor.Compose".Compose) (traverseWithIndex dictTraversableWithIndex dictApplicative (module."Control.Semigroupoid".compose module."Control.Semigroupoid".semigroupoidFn (traverseWithIndex dictTraversableWithIndex1 dictApplicative) (module."Data.Tuple".curry f1)) fga);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/TraversableWithIndex.purs at 116:1 - 117:106";
        in
          __pattern0 __patternFail;
      "FunctorWithIndex0" = __unused: module."Data.FunctorWithIndex".functorWithIndexCompose (dictTraversableWithIndex."FunctorWithIndex0" module."Prim".undefined) (dictTraversableWithIndex1."FunctorWithIndex0" module."Prim".undefined);
      "FoldableWithIndex1" = __unused: module."Data.FoldableWithIndex".foldableWithIndexCompose (dictTraversableWithIndex."FoldableWithIndex1" module."Prim".undefined) (dictTraversableWithIndex1."FoldableWithIndex1" module."Prim".undefined);
      "Traversable2" = __unused: module."Data.Traversable".traversableCompose (dictTraversableWithIndex."Traversable2" module."Prim".undefined) (dictTraversableWithIndex1."Traversable2" module."Prim".undefined);
    };
  traversableWithIndexArray = 
    { traverseWithIndex = dictApplicative: traverseWithIndexDefault traversableWithIndexArray dictApplicative;
      "FunctorWithIndex0" = __unused: module."Data.FunctorWithIndex".functorWithIndexArray;
      "FoldableWithIndex1" = __unused: module."Data.FoldableWithIndex".foldableWithIndexArray;
      "Traversable2" = __unused: module."Data.Traversable".traversableArray;
    };
  traversableWithIndexApp = dictTraversableWithIndex: 
    { traverseWithIndex = dictApplicative: f: v: 
        let
          __pattern0 = __fail: 
            let
              f1 = f;
              x = v;
            in
              module."Data.Functor".map ((dictApplicative."Apply0" module."Prim".undefined)."Functor0" module."Prim".undefined) module."Data.Functor.App".App (traverseWithIndex dictTraversableWithIndex dictApplicative f1 x);
          __patternFail = builtins.throw "Pattern match failure in .spago/foldable-traversable/bbb02b2752b1f1520c7c0b9f79bf7152002e989a/src/Data/TraversableWithIndex.purs at 119:1 - 120:62";
        in
          __pattern0 __patternFail;
      "FunctorWithIndex0" = __unused: module."Data.FunctorWithIndex".functorWithIndexApp (dictTraversableWithIndex."FunctorWithIndex0" module."Prim".undefined);
      "FoldableWithIndex1" = __unused: module."Data.FoldableWithIndex".foldableWithIndexApp (dictTraversableWithIndex."FoldableWithIndex1" module."Prim".undefined);
      "Traversable2" = __unused: module."Data.Traversable".traversableApp (dictTraversableWithIndex."Traversable2" module."Prim".undefined);
    };
  traversableWithIndexAdditive = 
    { traverseWithIndex = dictApplicative: f: module."Data.Function".apply (module."Data.Traversable".traverse module."Data.Traversable".traversableAdditive dictApplicative) (f module."Data.Unit".unit);
      "FunctorWithIndex0" = __unused: module."Data.FunctorWithIndex".functorWithIndexAdditive;
      "FoldableWithIndex1" = __unused: module."Data.FoldableWithIndex".foldableWithIndexAdditive;
      "Traversable2" = __unused: module."Data.Traversable".traversableAdditive;
    };
  mapAccumRWithIndex = dictTraversableWithIndex: f: s0: xs: module."Data.Traversable.Accum.Internal".stateR (traverseWithIndex dictTraversableWithIndex module."Data.Traversable.Accum.Internal".applicativeStateR (i: a: s: f i s a) xs) s0;
  scanrWithIndex = dictTraversableWithIndex: f: b0: xs: 
    ( mapAccumRWithIndex dictTraversableWithIndex 
      ( i: b: a: 
        let
          b' = f i a b;
        in
          
          { accum = b';
            value = b';
          }
      ) b0 xs
    ).value;
  mapAccumLWithIndex = dictTraversableWithIndex: f: s0: xs: module."Data.Traversable.Accum.Internal".stateL (traverseWithIndex dictTraversableWithIndex module."Data.Traversable.Accum.Internal".applicativeStateL (i: a: s: f i s a) xs) s0;
  scanlWithIndex = dictTraversableWithIndex: f: b0: xs: 
    ( mapAccumLWithIndex dictTraversableWithIndex 
      ( i: b: a: 
        let
          b' = f i b a;
        in
          
          { accum = b';
            value = b';
          }
      ) b0 xs
    ).value;
  forWithIndex = dictApplicative: dictTraversableWithIndex: module."Data.Function".flip (traverseWithIndex dictTraversableWithIndex dictApplicative);
in
  
  { inherit traverseWithIndex traverseWithIndexDefault forWithIndex scanlWithIndex mapAccumLWithIndex scanrWithIndex mapAccumRWithIndex traverseDefault traversableWithIndexArray traversableWithIndexMaybe traversableWithIndexFirst traversableWithIndexLast traversableWithIndexAdditive traversableWithIndexDual traversableWithIndexConj traversableWithIndexDisj traversableWithIndexMultiplicative traversableWithIndexEither traversableWithIndexTuple traversableWithIndexIdentity traversableWithIndexConst traversableWithIndexProduct traversableWithIndexCoproduct traversableWithIndexCompose traversableWithIndexApp;
    inherit (module."Data.Traversable.Accum");
  }
;

Data-Tuple-Nested_default-nix = 
let
  module = 
    { "Data.Tuple" = Data-Tuple_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  uncurry9 = f': v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              f'1 = f';
              a = v.__field0;
              b = v.__field1.__field0;
              c = v.__field1.__field1.__field0;
              d = v.__field1.__field1.__field1.__field0;
              e = v.__field1.__field1.__field1.__field1.__field0;
              f = v.__field1.__field1.__field1.__field1.__field1.__field0;
              g = v.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
              h = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
              i = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
            in
              f'1 a b c d e f g h i
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 249:1 - 249:123";
    in
      __pattern0 __patternFail;
  uncurry8 = f': v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              f'1 = f';
              a = v.__field0;
              b = v.__field1.__field0;
              c = v.__field1.__field1.__field0;
              d = v.__field1.__field1.__field1.__field0;
              e = v.__field1.__field1.__field1.__field1.__field0;
              f = v.__field1.__field1.__field1.__field1.__field1.__field0;
              g = v.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
              h = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
            in
              f'1 a b c d e f g h
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 245:1 - 245:113";
    in
      __pattern0 __patternFail;
  uncurry7 = f': v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              f'1 = f';
              a = v.__field0;
              b = v.__field1.__field0;
              c = v.__field1.__field1.__field0;
              d = v.__field1.__field1.__field1.__field0;
              e = v.__field1.__field1.__field1.__field1.__field0;
              f = v.__field1.__field1.__field1.__field1.__field1.__field0;
              g = v.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
            in
              f'1 a b c d e f g
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 241:1 - 241:104";
    in
      __pattern0 __patternFail;
  uncurry6 = f': v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              f'1 = f';
              a = v.__field0;
              b = v.__field1.__field0;
              c = v.__field1.__field1.__field0;
              d = v.__field1.__field1.__field1.__field0;
              e = v.__field1.__field1.__field1.__field1.__field0;
              f = v.__field1.__field1.__field1.__field1.__field1.__field0;
            in
              f'1 a b c d e f
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 237:1 - 237:95";
    in
      __pattern0 __patternFail;
  uncurry5 = f: v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              f1 = f;
              a = v.__field0;
              b = v.__field1.__field0;
              c = v.__field1.__field1.__field0;
              d = v.__field1.__field1.__field1.__field0;
              e = v.__field1.__field1.__field1.__field1.__field0;
            in
              f1 a b c d e
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 233:1 - 233:86";
    in
      __pattern0 __patternFail;
  uncurry4 = f: v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              f1 = f;
              a = v.__field0;
              b = v.__field1.__field0;
              c = v.__field1.__field1.__field0;
              d = v.__field1.__field1.__field1.__field0;
            in
              f1 a b c d
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 229:1 - 229:77";
    in
      __pattern0 __patternFail;
  uncurry3 = f: v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple"
          then 
            let
              f1 = f;
              a = v.__field0;
              b = v.__field1.__field0;
              c = v.__field1.__field1.__field0;
            in
              f1 a b c
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 225:1 - 225:68";
    in
      __pattern0 __patternFail;
  uncurry2 = f: v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple"
          then 
            let
              f1 = f;
              a = v.__field0;
              b = v.__field1.__field0;
            in
              f1 a b
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 221:1 - 221:59";
    in
      __pattern0 __patternFail;
  uncurry10 = f': v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              f'1 = f';
              a = v.__field0;
              b = v.__field1.__field0;
              c = v.__field1.__field1.__field0;
              d = v.__field1.__field1.__field1.__field0;
              e = v.__field1.__field1.__field1.__field1.__field0;
              f = v.__field1.__field1.__field1.__field1.__field1.__field0;
              g = v.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
              h = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
              i = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
              j = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
            in
              f'1 a b c d e f g h i j
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 253:1 - 253:133";
    in
      __pattern0 __patternFail;
  uncurry1 = f: v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple"
          then 
            let
              f1 = f;
              a = v.__field0;
            in
              f1 a
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 217:1 - 217:50";
    in
      __pattern0 __patternFail;
  tuple9 = a: b: c: d: e: f: g: h: i: module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d (module."Data.Tuple".Tuple e (module."Data.Tuple".Tuple f (module."Data.Tuple".Tuple g (module."Data.Tuple".Tuple h (module."Data.Tuple".Tuple i module."Data.Unit".unit))))))));
  tuple8 = a: b: c: d: e: f: g: h: module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d (module."Data.Tuple".Tuple e (module."Data.Tuple".Tuple f (module."Data.Tuple".Tuple g (module."Data.Tuple".Tuple h module."Data.Unit".unit)))))));
  tuple7 = a: b: c: d: e: f: g: module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d (module."Data.Tuple".Tuple e (module."Data.Tuple".Tuple f (module."Data.Tuple".Tuple g module."Data.Unit".unit))))));
  tuple6 = a: b: c: d: e: f: module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d (module."Data.Tuple".Tuple e (module."Data.Tuple".Tuple f module."Data.Unit".unit)))));
  tuple5 = a: b: c: d: e: module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d (module."Data.Tuple".Tuple e module."Data.Unit".unit))));
  tuple4 = a: b: c: d: module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d module."Data.Unit".unit)));
  tuple3 = a: b: c: module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c module."Data.Unit".unit));
  tuple2 = a: b: module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b module."Data.Unit".unit);
  tuple10 = a: b: c: d: e: f: g: h: i: j: module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d (module."Data.Tuple".Tuple e (module."Data.Tuple".Tuple f (module."Data.Tuple".Tuple g (module."Data.Tuple".Tuple h (module."Data.Tuple".Tuple i (module."Data.Tuple".Tuple j module."Data.Unit".unit)))))))));
  tuple1 = a: module."Data.Tuple".Tuple a module."Data.Unit".unit;
  over9 = o: v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              o1 = o;
              a = v.__field0;
              b = v.__field1.__field0;
              c = v.__field1.__field1.__field0;
              d = v.__field1.__field1.__field1.__field0;
              e = v.__field1.__field1.__field1.__field1.__field0;
              f = v.__field1.__field1.__field1.__field1.__field1.__field0;
              g = v.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
              h = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
              i = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
              z = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1;
            in
              module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d (module."Data.Tuple".Tuple e (module."Data.Tuple".Tuple f (module."Data.Tuple".Tuple g (module."Data.Tuple".Tuple h (module."Data.Tuple".Tuple (o1 i) z))))))))
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 209:1 - 209:102";
    in
      __pattern0 __patternFail;
  over8 = o: v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              o1 = o;
              a = v.__field0;
              b = v.__field1.__field0;
              c = v.__field1.__field1.__field0;
              d = v.__field1.__field1.__field1.__field0;
              e = v.__field1.__field1.__field1.__field1.__field0;
              f = v.__field1.__field1.__field1.__field1.__field1.__field0;
              g = v.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
              h = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
              z = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1;
            in
              module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d (module."Data.Tuple".Tuple e (module."Data.Tuple".Tuple f (module."Data.Tuple".Tuple g (module."Data.Tuple".Tuple (o1 h) z)))))))
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 205:1 - 205:94";
    in
      __pattern0 __patternFail;
  over7 = o: v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              o1 = o;
              a = v.__field0;
              b = v.__field1.__field0;
              c = v.__field1.__field1.__field0;
              d = v.__field1.__field1.__field1.__field0;
              e = v.__field1.__field1.__field1.__field1.__field0;
              f = v.__field1.__field1.__field1.__field1.__field1.__field0;
              g = v.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
              z = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1;
            in
              module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d (module."Data.Tuple".Tuple e (module."Data.Tuple".Tuple f (module."Data.Tuple".Tuple (o1 g) z))))))
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 201:1 - 201:88";
    in
      __pattern0 __patternFail;
  over6 = o: v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              o1 = o;
              a = v.__field0;
              b = v.__field1.__field0;
              c = v.__field1.__field1.__field0;
              d = v.__field1.__field1.__field1.__field0;
              e = v.__field1.__field1.__field1.__field1.__field0;
              f = v.__field1.__field1.__field1.__field1.__field1.__field0;
              z = v.__field1.__field1.__field1.__field1.__field1.__field1;
            in
              module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d (module."Data.Tuple".Tuple e (module."Data.Tuple".Tuple (o1 f) z)))))
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 197:1 - 197:82";
    in
      __pattern0 __patternFail;
  over5 = o: v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              o1 = o;
              a = v.__field0;
              b = v.__field1.__field0;
              c = v.__field1.__field1.__field0;
              d = v.__field1.__field1.__field1.__field0;
              e = v.__field1.__field1.__field1.__field1.__field0;
              z = v.__field1.__field1.__field1.__field1.__field1;
            in
              module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d (module."Data.Tuple".Tuple (o1 e) z))))
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 193:1 - 193:76";
    in
      __pattern0 __patternFail;
  over4 = o: v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              o1 = o;
              a = v.__field0;
              b = v.__field1.__field0;
              c = v.__field1.__field1.__field0;
              d = v.__field1.__field1.__field1.__field0;
              z = v.__field1.__field1.__field1.__field1;
            in
              module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple (o1 d) z)))
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 189:1 - 189:70";
    in
      __pattern0 __patternFail;
  over3 = o: v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple"
          then 
            let
              o1 = o;
              a = v.__field0;
              b = v.__field1.__field0;
              c = v.__field1.__field1.__field0;
              z = v.__field1.__field1.__field1;
            in
              module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple (o1 c) z))
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 185:1 - 185:64";
    in
      __pattern0 __patternFail;
  over2 = o: v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple"
          then 
            let
              o1 = o;
              a = v.__field0;
              b = v.__field1.__field0;
              z = v.__field1.__field1;
            in
              module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple (o1 b) z)
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 181:1 - 181:58";
    in
      __pattern0 __patternFail;
  over10 = o: v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              o1 = o;
              a = v.__field0;
              b = v.__field1.__field0;
              c = v.__field1.__field1.__field0;
              d = v.__field1.__field1.__field1.__field0;
              e = v.__field1.__field1.__field1.__field1.__field0;
              f = v.__field1.__field1.__field1.__field1.__field1.__field0;
              g = v.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
              h = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
              i = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
              j = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
              z = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1;
            in
              module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d (module."Data.Tuple".Tuple e (module."Data.Tuple".Tuple f (module."Data.Tuple".Tuple g (module."Data.Tuple".Tuple h (module."Data.Tuple".Tuple i (module."Data.Tuple".Tuple (o1 j) z)))))))))
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 213:1 - 213:109";
    in
      __pattern0 __patternFail;
  over1 = o: v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple"
          then 
            let
              o1 = o;
              a = v.__field0;
              z = v.__field1;
            in
              module."Data.Tuple".Tuple (o1 a) z
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 177:1 - 177:52";
    in
      __pattern0 __patternFail;
  get9 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              i = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
            in
              i
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 169:1 - 169:65";
    in
      __pattern0 __patternFail;
  get8 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              h = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
            in
              h
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 165:1 - 165:60";
    in
      __pattern0 __patternFail;
  get7 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              g = v.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
            in
              g
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 161:1 - 161:56";
    in
      __pattern0 __patternFail;
  get6 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              f = v.__field1.__field1.__field1.__field1.__field1.__field0;
            in
              f
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 157:1 - 157:52";
    in
      __pattern0 __patternFail;
  get5 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              e = v.__field1.__field1.__field1.__field1.__field0;
            in
              e
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 153:1 - 153:48";
    in
      __pattern0 __patternFail;
  get4 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              d = v.__field1.__field1.__field1.__field0;
            in
              d
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 149:1 - 149:44";
    in
      __pattern0 __patternFail;
  get3 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple"
          then 
            let
              c = v.__field1.__field1.__field0;
            in
              c
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 145:1 - 145:40";
    in
      __pattern0 __patternFail;
  get2 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple"
          then 
            let
              b = v.__field1.__field0;
            in
              b
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 141:1 - 141:36";
    in
      __pattern0 __patternFail;
  get10 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple" && v.__field1.__tag == "Tuple" && v.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple" && v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__tag == "Tuple"
          then 
            let
              j = v.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field1.__field0;
            in
              j
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 173:1 - 173:70";
    in
      __pattern0 __patternFail;
  get1 = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple"
          then 
            let
              a = v.__field0;
            in
              a
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple/Nested.purs at 137:1 - 137:32";
    in
      __pattern0 __patternFail;
  curry9 = z: f': a: b: c: d: e: f: g: h: i: f' (module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d (module."Data.Tuple".Tuple e (module."Data.Tuple".Tuple f (module."Data.Tuple".Tuple g (module."Data.Tuple".Tuple h (module."Data.Tuple".Tuple i z)))))))));
  curry8 = z: f': a: b: c: d: e: f: g: h: f' (module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d (module."Data.Tuple".Tuple e (module."Data.Tuple".Tuple f (module."Data.Tuple".Tuple g (module."Data.Tuple".Tuple h z))))))));
  curry7 = z: f': a: b: c: d: e: f: g: f' (module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d (module."Data.Tuple".Tuple e (module."Data.Tuple".Tuple f (module."Data.Tuple".Tuple g z)))))));
  curry6 = z: f': a: b: c: d: e: f: f' (module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d (module."Data.Tuple".Tuple e (module."Data.Tuple".Tuple f z))))));
  curry5 = z: f: a: b: c: d: e: f (module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d (module."Data.Tuple".Tuple e z)))));
  curry4 = z: f: a: b: c: d: f (module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d z))));
  curry3 = z: f: a: b: c: f (module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c z)));
  curry2 = z: f: a: b: f (module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b z));
  curry10 = z: f': a: b: c: d: e: f: g: h: i: j: f' (module."Data.Tuple".Tuple a (module."Data.Tuple".Tuple b (module."Data.Tuple".Tuple c (module."Data.Tuple".Tuple d (module."Data.Tuple".Tuple e (module."Data.Tuple".Tuple f (module."Data.Tuple".Tuple g (module."Data.Tuple".Tuple h (module."Data.Tuple".Tuple i (module."Data.Tuple".Tuple j z))))))))));
  curry1 = z: f: a: f (module."Data.Tuple".Tuple a z);
in
  {inherit tuple1 tuple2 tuple3 tuple4 tuple5 tuple6 tuple7 tuple8 tuple9 tuple10 get1 get2 get3 get4 get5 get6 get7 get8 get9 get10 over1 over2 over3 over4 over5 over6 over7 over8 over9 over10 uncurry1 uncurry2 uncurry3 uncurry4 uncurry5 uncurry6 uncurry7 uncurry8 uncurry9 uncurry10 curry1 curry2 curry3 curry4 curry5 curry6 curry7 curry8 curry9 curry10;}
;

Data-Tuple_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Comonad" = Control-Comonad_default-nix;
      "Control.Extend" = Control-Extend_default-nix;
      "Control.Lazy" = Control-Lazy_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.BooleanAlgebra" = Data-BooleanAlgebra_default-nix;
      "Data.Bounded" = Data-Bounded_default-nix;
      "Data.CommutativeRing" = Data-CommutativeRing_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Functor.Invariant" = Data-Functor-Invariant_default-nix;
      "Data.Generic.Rep" = Data-Generic-Rep_default-nix;
      "Data.HeytingAlgebra" = Data-HeytingAlgebra_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Data.Ring" = Data-Ring_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Semiring" = Data-Semiring_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  Tuple = value0: value1: 
    { __tag = "Tuple";
      __field0 = value0;
      __field1 = value1;
    };
  uncurry = f: v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple"
          then 
            let
              f1 = f;
              a = v.__field0;
              b = v.__field1;
            in
              f1 a b
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 130:1 - 130:57";
    in
      __pattern0 __patternFail;
  swap = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple"
          then 
            let
              a = v.__field0;
              b = v.__field1;
            in
              Tuple b a
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 134:1 - 134:43";
    in
      __pattern0 __patternFail;
  snd = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple"
          then 
            let
              b = v.__field1;
            in
              b
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 122:1 - 122:34";
    in
      __pattern0 __patternFail;
  showTuple = dictShow: dictShow1: 
    { show = v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  a = v.__field0;
                  b = v.__field1;
                in
                  module."Data.Semigroup".append module."Data.Semigroup".semigroupString "(Tuple " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow a) (module."Data.Semigroup".append module."Data.Semigroup".semigroupString " " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow1 b) ")")))
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 20:1 - 21:65";
        in
          __pattern0 __patternFail;
    };
  semiringTuple = dictSemiring: dictSemiring1: 
    { add = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple" && v1.__tag == "Tuple"
              then 
                let
                  x1 = v.__field0;
                  y1 = v.__field1;
                  x2 = v1.__field0;
                  y2 = v1.__field1;
                in
                  Tuple (module."Data.Semiring".add dictSemiring x1 x2) (module."Data.Semiring".add dictSemiring1 y1 y2)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 56:1 - 60:25";
        in
          __pattern0 __patternFail;
      one = Tuple (module."Data.Semiring".one dictSemiring) (module."Data.Semiring".one dictSemiring1);
      mul = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple" && v1.__tag == "Tuple"
              then 
                let
                  x1 = v.__field0;
                  y1 = v.__field1;
                  x2 = v1.__field0;
                  y2 = v1.__field1;
                in
                  Tuple (module."Data.Semiring".mul dictSemiring x1 x2) (module."Data.Semiring".mul dictSemiring1 y1 y2)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 56:1 - 60:25";
        in
          __pattern0 __patternFail;
      zero = Tuple (module."Data.Semiring".zero dictSemiring) (module."Data.Semiring".zero dictSemiring1);
    };
  semigroupoidTuple = 
    { compose = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple" && v1.__tag == "Tuple"
              then 
                let
                  c = v.__field1;
                  a = v1.__field0;
                in
                  Tuple a c
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 41:1 - 42:46";
        in
          __pattern0 __patternFail;
    };
  semigroupTuple = dictSemigroup: dictSemigroup1: 
    { append = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple" && v1.__tag == "Tuple"
              then 
                let
                  a1 = v.__field0;
                  b1 = v.__field1;
                  a2 = v1.__field0;
                  b2 = v1.__field1;
                in
                  Tuple (module."Data.Semigroup".append dictSemigroup a1 a2) (module."Data.Semigroup".append dictSemigroup1 b1 b2)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 50:1 - 51:67";
        in
          __pattern0 __patternFail;
    };
  ringTuple = dictRing: dictRing1: 
    { sub = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple" && v1.__tag == "Tuple"
              then 
                let
                  x1 = v.__field0;
                  y1 = v.__field1;
                  x2 = v1.__field0;
                  y2 = v1.__field1;
                in
                  Tuple (module."Data.Ring".sub dictRing x1 x2) (module."Data.Ring".sub dictRing1 y1 y2)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 62:1 - 63:66";
        in
          __pattern0 __patternFail;
      "Semiring0" = __unused: semiringTuple (dictRing."Semiring0" module."Prim".undefined) (dictRing1."Semiring0" module."Prim".undefined);
    };
  monoidTuple = dictMonoid: dictMonoid1: 
    { mempty = Tuple (module."Data.Monoid".mempty dictMonoid) (module."Data.Monoid".mempty dictMonoid1);
      "Semigroup0" = __unused: semigroupTuple (dictMonoid."Semigroup0" module."Prim".undefined) (dictMonoid1."Semigroup0" module."Prim".undefined);
    };
  heytingAlgebraTuple = dictHeytingAlgebra: dictHeytingAlgebra1: 
    { tt = Tuple (module."Data.HeytingAlgebra".tt dictHeytingAlgebra) (module."Data.HeytingAlgebra".tt dictHeytingAlgebra1);
      ff = Tuple (module."Data.HeytingAlgebra".ff dictHeytingAlgebra) (module."Data.HeytingAlgebra".ff dictHeytingAlgebra1);
      implies = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple" && v1.__tag == "Tuple"
              then 
                let
                  x1 = v.__field0;
                  y1 = v.__field1;
                  x2 = v1.__field0;
                  y2 = v1.__field1;
                in
                  Tuple (module."Data.HeytingAlgebra".implies dictHeytingAlgebra x1 x2) (module."Data.HeytingAlgebra".implies dictHeytingAlgebra1 y1 y2)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 67:1 - 73:42";
        in
          __pattern0 __patternFail;
      conj = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple" && v1.__tag == "Tuple"
              then 
                let
                  x1 = v.__field0;
                  y1 = v.__field1;
                  x2 = v1.__field0;
                  y2 = v1.__field1;
                in
                  Tuple (module."Data.HeytingAlgebra".conj dictHeytingAlgebra x1 x2) (module."Data.HeytingAlgebra".conj dictHeytingAlgebra1 y1 y2)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 67:1 - 73:42";
        in
          __pattern0 __patternFail;
      disj = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple" && v1.__tag == "Tuple"
              then 
                let
                  x1 = v.__field0;
                  y1 = v.__field1;
                  x2 = v1.__field0;
                  y2 = v1.__field1;
                in
                  Tuple (module."Data.HeytingAlgebra".disj dictHeytingAlgebra x1 x2) (module."Data.HeytingAlgebra".disj dictHeytingAlgebra1 y1 y2)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 67:1 - 73:42";
        in
          __pattern0 __patternFail;
      not = v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  x = v.__field0;
                  y = v.__field1;
                in
                  Tuple (module."Data.HeytingAlgebra".not dictHeytingAlgebra x) (module."Data.HeytingAlgebra".not dictHeytingAlgebra1 y)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 67:1 - 73:42";
        in
          __pattern0 __patternFail;
    };
  genericTuple = 
    { to = x: 
        let
          __pattern0 = __fail: 
            if x.__tag == "Product"
              then 
                let
                  arg = x.__field0;
                  arg1 = x.__field1;
                in
                  Tuple arg arg1
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 85:1 - 85:54";
        in
          __pattern0 __patternFail;
      from = x: 
        let
          __pattern0 = __fail: 
            if x.__tag == "Tuple"
              then 
                let
                  arg = x.__field0;
                  arg1 = x.__field1;
                in
                  module."Data.Generic.Rep".Product arg arg1
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 85:1 - 85:54";
        in
          __pattern0 __patternFail;
    };
  functorTuple = 
    { map = f: m: 
        let
          __pattern0 = __fail: 
            if m.__tag == "Tuple"
              then 
                let
                  v = m.__field0;
                  v1 = m.__field1;
                in
                  Tuple v (f v1)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 83:1 - 83:50";
        in
          __pattern0 __patternFail;
    };
  invariantTuple = {imap = module."Data.Functor.Invariant".imapF functorTuple;};
  fst = v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "Tuple"
          then 
            let
              a = v.__field0;
            in
              a
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 118:1 - 118:34";
    in
      __pattern0 __patternFail;
  lazyTuple = dictLazy: dictLazy1: {defer = f: Tuple (module."Data.Function".apply (module."Control.Lazy".defer dictLazy) (v: fst (f module."Data.Unit".unit))) (module."Data.Function".apply (module."Control.Lazy".defer dictLazy1) (v: snd (f module."Data.Unit".unit)));};
  extendTuple = 
    { extend = f: v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  f1 = f;
                  t = v;
                  a = v.__field0;
                in
                  Tuple a (f1 t)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 108:1 - 109:41";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: functorTuple;
    };
  eqTuple = dictEq: dictEq1: 
    { eq = x: y: 
        let
          __pattern0 = __fail: 
            if x.__tag == "Tuple" && y.__tag == "Tuple"
              then 
                let
                  l = x.__field0;
                  l1 = x.__field1;
                  r = y.__field0;
                  r1 = y.__field1;
                in
                  module."Data.HeytingAlgebra".conj module."Data.HeytingAlgebra".heytingAlgebraBoolean (module."Data.Eq".eq dictEq l r) (module."Data.Eq".eq dictEq1 l1 r1)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 25:1 - 25:58";
        in
          __pattern0 __patternFail;
    };
  ordTuple = dictOrd: dictOrd1: 
    { compare = x: y: 
        let
          __pattern0 = __fail: 
            if x.__tag == "Tuple" && y.__tag == "Tuple"
              then 
                let
                  l = x.__field0;
                  l1 = x.__field1;
                  r = y.__field0;
                  r1 = y.__field1;
                in
                  
                  let
                    v = module."Data.Ord".compare dictOrd l r;
                  in
                    
                    let
                      __pattern0 = __fail: if v.__tag == "LT" then module."Data.Ordering".LT else __fail;
                      __pattern1 = __fail: if v.__tag == "GT" then module."Data.Ordering".GT else __fail;
                      __pattern2 = __fail: module."Data.Ord".compare dictOrd1 l1 r1;
                      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 33:1 - 33:62";
                    in
                      __pattern0 (__pattern1 (__pattern2 __patternFail))
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 33:1 - 33:62";
        in
          __pattern0 __patternFail;
      "Eq0" = __unused: eqTuple (dictOrd."Eq0" module."Prim".undefined) (dictOrd1."Eq0" module."Prim".undefined);
    };
  eq1Tuple = dictEq: {eq1 = dictEq1: module."Data.Eq".eq (eqTuple dictEq dictEq1);};
  ord1Tuple = dictOrd: 
    { compare1 = dictOrd1: module."Data.Ord".compare (ordTuple dictOrd dictOrd1);
      "Eq10" = __unused: eq1Tuple (dictOrd."Eq0" module."Prim".undefined);
    };
  curry = f: a: b: f (Tuple a b);
  comonadTuple = 
    { extract = snd;
      "Extend0" = __unused: extendTuple;
    };
  commutativeRingTuple = dictCommutativeRing: dictCommutativeRing1: {"Ring0" = __unused: ringTuple (dictCommutativeRing."Ring0" module."Prim".undefined) (dictCommutativeRing1."Ring0" module."Prim".undefined);};
  boundedTuple = dictBounded: dictBounded1: 
    { top = Tuple (module."Data.Bounded".top dictBounded) (module."Data.Bounded".top dictBounded1);
      bottom = Tuple (module."Data.Bounded".bottom dictBounded) (module."Data.Bounded".bottom dictBounded1);
      "Ord0" = __unused: ordTuple (dictBounded."Ord0" module."Prim".undefined) (dictBounded1."Ord0" module."Prim".undefined);
    };
  booleanAlgebraTuple = dictBooleanAlgebra: dictBooleanAlgebra1: {"HeytingAlgebra0" = __unused: heytingAlgebraTuple (dictBooleanAlgebra."HeytingAlgebra0" module."Prim".undefined) (dictBooleanAlgebra1."HeytingAlgebra0" module."Prim".undefined);};
  applyTuple = dictSemigroup: 
    { apply = v: v1: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple" && v1.__tag == "Tuple"
              then 
                let
                  a1 = v.__field0;
                  f = v.__field1;
                  a2 = v1.__field0;
                  x = v1.__field1;
                in
                  Tuple (module."Data.Semigroup".append dictSemigroup a1 a2) (f x)
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 96:1 - 97:59";
        in
          __pattern0 __patternFail;
      "Functor0" = __unused: functorTuple;
    };
  bindTuple = dictSemigroup: 
    { bind = v: f: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  a1 = v.__field0;
                  b = v.__field1;
                  f1 = f;
                in
                  
                  let
                    v1 = f1 b;
                  in
                    
                    let
                      __pattern0 = __fail: 
                        if v1.__tag == "Tuple"
                          then 
                            let
                              a2 = v1.__field0;
                              c = v1.__field1;
                            in
                              Tuple (module."Data.Semigroup".append dictSemigroup a1 a2) c
                          else __fail;
                      __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 103:25 - 104:37";
                    in
                      __pattern0 __patternFail
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in .spago/tuples/1ea47bb6ff4f5aa04a42ca01c3a78bca48160743/src/Data/Tuple.purs at 102:1 - 104:37";
        in
          __pattern0 __patternFail;
      "Apply0" = __unused: applyTuple dictSemigroup;
    };
  applicativeTuple = dictMonoid: 
    { pure = Tuple (module."Data.Monoid".mempty dictMonoid);
      "Apply0" = __unused: applyTuple (dictMonoid."Semigroup0" module."Prim".undefined);
    };
  monadTuple = dictMonoid: 
    { "Applicative0" = __unused: applicativeTuple dictMonoid;
      "Bind1" = __unused: bindTuple (dictMonoid."Semigroup0" module."Prim".undefined);
    };
in
  {inherit Tuple fst snd curry uncurry swap showTuple eqTuple eq1Tuple ordTuple ord1Tuple boundedTuple semigroupoidTuple semigroupTuple monoidTuple semiringTuple ringTuple commutativeRingTuple heytingAlgebraTuple booleanAlgebraTuple functorTuple genericTuple invariantTuple applyTuple applicativeTuple bindTuple monadTuple extendTuple comonadTuple lazyTuple;}
;

Data-Unit_default-nix = 
let
  module = {"Data.Show" = Data-Show_default-nix;};
  foreign = Data-Unit_foreign-nix;
  unit = foreign.unit;
  showUnit = {show = v: "unit";};
in
  {inherit unit showUnit;}
;

Data-Unit_foreign-nix = { unit = null; }

;

Data-Void_default-nix = 
let
  module = {"Data.Show" = Data-Show_default-nix;};
  Void = x: x;
  absurd = a: 
    let
      spin = v: 
        let
          __pattern0 = __fail: 
            let
              b = v;
            in
              spin b;
          __patternFail = builtins.throw "Pattern match failure in .spago/prelude/0a991d6422d5d57650955fab8468f7af82dba944/src/Data/Void.purs at 39:3 - 39:25";
        in
          __pattern0 __patternFail;
    in
      spin a;
  showVoid = {show = absurd;};
in
  {inherit absurd showVoid;}
;

Effect_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  foreign = Effect_foreign-nix;
  pureE = foreign.pureE;
  bindE = foreign.bindE;
  monadEffect = 
    { "Applicative0" = __unused: applicativeEffect;
      "Bind1" = __unused: bindEffect;
    };
  bindEffect = 
    { bind = bindE;
      "Apply0" = __unused: applyEffect;
    };
  applyEffect = 
    { apply = module."Control.Monad".ap monadEffect;
      "Functor0" = __unused: functorEffect;
    };
  applicativeEffect = 
    { pure = pureE;
      "Apply0" = __unused: applyEffect;
    };
  functorEffect = {map = module."Control.Applicative".liftA1 applicativeEffect;};
  semigroupEffect = dictSemigroup: {append = module."Control.Apply".lift2 applyEffect (module."Data.Semigroup".append dictSemigroup);};
  monoidEffect = dictMonoid: 
    { mempty = pureE (module."Data.Monoid".mempty dictMonoid);
      "Semigroup0" = __unused: semigroupEffect (dictMonoid."Semigroup0" module."Prim".undefined);
    };
in
  {inherit functorEffect applyEffect applicativeEffect bindEffect monadEffect semigroupEffect monoidEffect;}
;

Effect_foreign-nix = {
  pureE = a: _: a;

  bindE = x: f: _:
    let
      r = x null;
    in
    builtins.seq r (f r null);
}

;

Foreign-Object_default-nix = 
let
  module = { };
  foreign = Foreign-Object_foreign-nix;
  toArrayWithKey = foreign.toArrayWithKey;
in
  {inherit toArrayWithKey;}
;

Foreign-Object_foreign-nix = with builtins; {
  toArrayWithKey = f: m:
    let
      keys = attrNames m;
    in
    map (key: f key (m.${key})) keys;
}

;

Foreign-Path_default-nix = 
let
  module = 
    { "Data.Foldable" = Data-Foldable_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  foreign = Foreign-Path_foreign-nix;
  absStr = foreign.absStr;
  relStr = foreign.relStr;
  toString = foreign.toString;
  ToPath-Dict = x: x;
  toPathString = 
    { abs = absStr;
      rel = relStr;
    };
  relSegs = segs: module."Data.Function".apply relStr (module."Data.Foldable".intercalate module."Data.Foldable".foldableArray module."Data.Monoid".monoidString "/" segs);
  rel = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.rel;
      __patternFail = builtins.throw "Pattern match failure in .spago/foreign-path/fe7f41b7749955ee6acdc3edcdc448b48f788ecd/src/Foreign/Path.purs at 20:3 - 20:19";
    in
      __pattern0 __patternFail;
  absSegs = segs: module."Data.Function".apply absStr (module."Data.Foldable".intercalate module."Data.Foldable".foldableArray module."Data.Monoid".monoidString "/" segs);
  toPathArrayString = 
    { abs = absSegs;
      rel = relSegs;
    };
  abs = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.abs;
      __patternFail = builtins.throw "Pattern match failure in .spago/foreign-path/fe7f41b7749955ee6acdc3edcdc448b48f788ecd/src/Foreign/Path.purs at 19:3 - 19:19";
    in
      __pattern0 __patternFail;
in
  {inherit abs rel absStr relStr absSegs relSegs toString toPathString toPathArrayString;}
;

Foreign-Path_foreign-nix = with builtins; {
  absStr = s: /. + ("/" + s);
  relStr = s: ./. + ("/" + s);
  toString = toString;
}

;

Foreign_default-nix = 
let
  module = { };
  foreign = Foreign_foreign-nix;
  isNull = foreign.isNull;
  isArray = foreign.isArray;
  isAttrs = foreign.isAttrs;
  isBool = foreign.isBool;
  isPath = foreign.isPath;
  isFloat = foreign.isFloat;
  isFunction = foreign.isFunction;
  isInt = foreign.isInt;
  isList = foreign.isList;
  isString = foreign.isString;
in
  {inherit isAttrs isBool isPath isFloat isFunction isInt isList isNull isString;}
;

Foreign_foreign-nix = with builtins ; {
  inherit
    isAttrs
    isBool
    isPath
    isFloat
    isFunction
    isInt
    isList
    isNull
    isString
    ;
}

;

Partial-Unsafe_default-nix = 
let
  module = {"Partial" = Partial_default-nix;};
  foreign = Partial-Unsafe_foreign-nix;
  _unsafePartial = foreign._unsafePartial;
  unsafePartial = _unsafePartial;
  unsafeCrashWith = msg: unsafePartial (dictPartial: module."Partial".crashWith module."Prim".undefined msg);
in
  {inherit unsafePartial unsafeCrashWith;}
;

Partial-Unsafe_foreign-nix = 
{ _unsafePartial = f: f {}; }

;

Partial_default-nix = 
let
  module = { };
  foreign = Partial_foreign-nix;
  _crashWith = foreign._crashWith;
  crashWith = dictPartial: _crashWith;
  crash = dictPartial: crashWith module."Prim".undefined "Partial.crash: partial function";
in
  {inherit crash crashWith;}
;

Partial_foreign-nix = 
{ _crashWith = msg: builtins.throw msg; }

;

Prelude_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Apply" = Control-Apply_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Control.Category" = Control-Category_default-nix;
      "Control.Monad" = Control-Monad_default-nix;
      "Control.Semigroupoid" = Control-Semigroupoid_default-nix;
      "Data.Boolean" = Data-Boolean_default-nix;
      "Data.BooleanAlgebra" = Data-BooleanAlgebra_default-nix;
      "Data.Bounded" = Data-Bounded_default-nix;
      "Data.CommutativeRing" = Data-CommutativeRing_default-nix;
      "Data.DivisionRing" = Data-DivisionRing_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.EuclideanRing" = Data-EuclideanRing_default-nix;
      "Data.Field" = Data-Field_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.HeytingAlgebra" = Data-HeytingAlgebra_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.NaturalTransformation" = Data-NaturalTransformation_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Ordering" = Data-Ordering_default-nix;
      "Data.Ring" = Data-Ring_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Semiring" = Data-Semiring_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Data.Unit" = Data-Unit_default-nix;
      "Data.Void" = Data-Void_default-nix;
    };
in
  
  { inherit (module."Control.Applicative") liftA1 pure unless when;
    inherit (module."Control.Apply") apply;
    inherit (module."Control.Bind") bind discard ifM join;
    inherit (module."Control.Category") identity;
    inherit (module."Control.Monad") ap liftM1 unlessM whenM;
    inherit (module."Control.Semigroupoid") compose;
    inherit (module."Data.Boolean") otherwise;
    inherit (module."Data.BooleanAlgebra");
    inherit (module."Data.Bounded") bottom top;
    inherit (module."Data.CommutativeRing");
    inherit (module."Data.DivisionRing") recip;
    inherit (module."Data.Eq") eq notEq;
    inherit (module."Data.EuclideanRing") degree div gcd lcm mod;
    inherit (module."Data.Field");
    inherit (module."Data.Function") const flip;
    inherit (module."Data.Functor") flap map void;
    inherit (module."Data.HeytingAlgebra") conj disj not;
    inherit (module."Data.Monoid") mempty;
    inherit (module."Data.NaturalTransformation");
    inherit (module."Data.Ord") between clamp compare comparing max min;
    inherit (module."Data.Ordering") EQ GT LT;
    inherit (module."Data.Ring") negate sub;
    inherit (module."Data.Semigroup") append;
    inherit (module."Data.Semiring") add mul one zero;
    inherit (module."Data.Show") show;
    inherit (module."Data.Unit") unit;
    inherit (module."Data.Void") absurd;
  }
;

Record-Unsafe_default-nix = 
let
  module = { };
  foreign = Record-Unsafe_foreign-nix;
  unsafeHas = foreign.unsafeHas;
  unsafeGet = foreign.unsafeGet;
  unsafeSet = foreign.unsafeSet;
  unsafeDelete = foreign.unsafeDelete;
in
  {inherit unsafeHas unsafeGet unsafeSet unsafeDelete;}
;

Record-Unsafe_foreign-nix = 
{ unsafeHas = builtins.hasAttr;
  unsafeGet = builtins.getAttr;
  unsafeSet = strKey: val: attrSet: attrSet // { ${strKey} = val; };
  unsafeDelete = strKey: attrSet: builtins.removeAttrs attrSet [ strKey ];
}

;

Safe-Coerce_default-nix = 
let
  module = 
    { "Prim.Coerce" = import ../Prim.Coerce;
      "Unsafe.Coerce" = Unsafe-Coerce_default-nix;
    };
  coerce = dictCoercible: module."Unsafe.Coerce".unsafeCoerce;
in
  
  { inherit coerce;
    inherit (module."Prim.Coerce");
  }
;

Test-Miraculix-Assertion_default-nix = 
let
  module = 
    { "Data.Eq" = Data-Eq_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Ord" = Data-Ord_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
      "Test.Miraculix.Typo" = Test-Miraculix-Typo_default-nix;
    };
  Assertion = x: x;
  message = v: 
    let
      __pattern0 = __fail: 
        let
          message' = v.message;
        in
          message';
      __patternFail = builtins.throw "Pattern match failure in src/Test/Miraculix/Assertion.purs at 59:1 - 59:37";
    in
      __pattern0 __patternFail;
  isSuccess = v: 
    let
      __pattern0 = __fail: 
        let
          result = v.result;
        in
          result;
      __patternFail = builtins.throw "Pattern match failure in src/Test/Miraculix/Assertion.purs at 56:1 - 56:34";
    in
      __pattern0 __patternFail;
  assert- = result: message': 
    { result = result;
      message = message';
    };
  assertEq = dictShow: dictEq: actual: expected: assert- (module."Data.Eq".eq dictEq actual expected) [(module."Data.Function".apply module."Test.Miraculix.Typo".withBullet (module."Test.Miraculix.Typo".fontColor module."Test.Miraculix.Typo".Yellow "actual:"))
    (module."Data.Function".apply (module."Test.Miraculix.Typo".indent 1) (module."Data.Show".show dictShow actual))
    (module."Data.Function".apply module."Test.Miraculix.Typo".withBullet (module."Test.Miraculix.Typo".fontColor module."Test.Miraculix.Typo".Yellow "expected:"))
    (module."Data.Function".apply (module."Test.Miraculix.Typo".indent 1) (module."Data.Show".show dictShow expected))];
  assertGt = dictShow: dictOrd: l: r: assert- (module."Data.Ord".greaterThan dictOrd l r) [(module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow l) (module."Data.Semigroup".append module."Data.Semigroup".semigroupString " is not greater than " (module."Data.Show".show dictShow r)))];
  assertLt = dictShow: dictOrd: l: r: assert- (module."Data.Ord".lessThan dictOrd l r) [(module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show dictShow l) (module."Data.Semigroup".append module."Data.Semigroup".semigroupString " is not lower than " (module."Data.Show".show dictShow r)))];
in
  {inherit assertEq assertLt assertGt assert- isSuccess message;}
;

Test-Miraculix-Classless_default-nix = 
let
  module = 
    { "Data.Eq" = Data-Eq_default-nix;
      "Data.Foldable" = Data-Foldable_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Data.Tuple" = Data-Tuple_default-nix;
      "Data.Tuple.Nested" = Data-Tuple-Nested_default-nix;
      "Foreign" = Foreign_default-nix;
      "Foreign.Object" = Foreign-Object_default-nix;
      "Foreign.Path" = Foreign-Path_default-nix;
      "Partial.Unsafe" = Partial-Unsafe_default-nix;
      "Prelude" = Prelude_default-nix;
      "Test.Miraculix" = Test-Miraculix_default-nix;
      "Test.Miraculix.Assertion" = Test-Miraculix-Assertion_default-nix;
      "Unsafe.Coerce" = Unsafe-Coerce_default-nix;
    };
  foreign = Test-Miraculix-Classless_foreign-nix;
  nixEq = foreign.nixEq;
  Val = x: x;
  eqVal = {eq = nixEq;};
  caseForeign = onAttrs: onBool: onPath: onFloat: onFunction: onInt: onList: onNull: onString: v: 
    let
      u = module."Unsafe.Coerce".unsafeCoerce;
      go = dictPartial: 
        let
          __pattern0 = __fail: if module."Foreign".isAttrs v then module."Data.Function".apply onAttrs (u v) else if module."Foreign".isBool v then module."Data.Function".apply onBool (u v) else if module."Foreign".isPath v then module."Data.Function".apply onPath (u v) else if module."Foreign".isFloat v then module."Data.Function".apply onFloat (u v) else if module."Foreign".isFunction v then module."Data.Function".apply onFunction (u v) else if module."Foreign".isInt v then module."Data.Function".apply onInt (u v) else if module."Foreign".isList v then module."Data.Function".apply onList (u v) else if module."Foreign".isNull v then module."Data.Function".apply onNull (u v) else if module."Foreign".isString v then module."Data.Function".apply onString (u v) else __fail;
          __patternFail = builtins.throw "Pattern match failure in src/Test/Miraculix/Classless.purs at 83:3 - 83:21";
        in
          __pattern0 __patternFail;
    in
      module."Partial.Unsafe".unsafePartial (dictPartial: go module."Prim".undefined);
  nixShow = 
    let
      showNull = v: "null";
      showListItem = x: module."Data.Semigroup".append module."Data.Semigroup".semigroupString (nixShow x) " ";
      showList = xs: module."Data.Semigroup".append module."Data.Semigroup".semigroupString "[ " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Function".apply (module."Data.Foldable".intercalate module."Data.Foldable".foldableArray module."Data.Monoid".monoidString "") (module."Data.Functor".map module."Data.Functor".functorArray showListItem xs)) "]");
      showFunction = v: "<function>";
      showAttr = v: 
        let
          __pattern0 = __fail: 
            if v.__tag == "Tuple"
              then 
                let
                  k = v.__field0;
                  v1 = v.__field1;
                in
                  module."Data.Semigroup".append module."Data.Semigroup".semigroupString k (module."Data.Semigroup".append module."Data.Semigroup".semigroupString " = " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (nixShow v1) "; "))
              else __fail;
          __patternFail = builtins.throw "Pattern match failure in src/Test/Miraculix/Classless.purs at 55:3 - 55:54";
        in
          __pattern0 __patternFail;
      showAttrSet = o: module."Data.Semigroup".append module."Data.Semigroup".semigroupString "{ " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Function".apply (module."Data.Foldable".intercalate module."Data.Foldable".foldableArray module."Data.Monoid".monoidString "") (module."Data.Functor".map module."Data.Functor".functorArray showAttr (module."Foreign.Object".toArrayWithKey module."Data.Tuple".Tuple o))) "}");
    in
      caseForeign showAttrSet (module."Data.Show".show module."Data.Show".showBoolean) module."Foreign.Path".toString (module."Data.Show".show module."Data.Show".showNumber) showFunction (module."Data.Show".show module."Data.Show".showInt) showList showNull (module."Data.Show".show module."Data.Show".showString);
  showVal = 
    { show = v: 
        let
          __pattern0 = __fail: 
            let
              fo = v;
            in
              nixShow fo;
          __patternFail = builtins.throw "Pattern match failure in src/Test/Miraculix/Classless.purs at 30:1 - 31:29";
        in
          __pattern0 __patternFail;
    };
  assertEq = module."Test.Miraculix.Assertion".assertEq showVal eqVal;
in
  
  { inherit assertEq nixShow eqVal showVal;
    inherit (module."Test.Miraculix") runTests testCase testGroup;
  }
;

Test-Miraculix-Classless_foreign-nix = {
  nixEq = x: y: x == y;
  nixShow = x: x;
}

;

Test-Miraculix-FFI_default-nix = 
let
  module = 
    { "Effect" = Effect_default-nix;
      "Prelude" = Prelude_default-nix;
    };
  foreign = Test-Miraculix-FFI_foreign-nix;
  abort = foreign.abort;
  seq = foreign.seq;
  deepSeq = foreign.deepSeq;
  mkReport = foreign.mkReport;
  trace = foreign.trace;
  foldl' = foreign.foldl';
  concatStringsSep = foreign.concatStringsSep;
  substring = foreign.substring;
  bullet = foreign.bullet;
in
  {inherit abort seq deepSeq mkReport trace foldl' concatStringsSep substring bullet;}
;

Test-Miraculix-FFI_foreign-nix = let
  pkgs = import <nixpkgs> { };
  mkReport = txt: pkgs.writeText "test-success" txt;
in
{
  inherit (builtins)
    seq
    deepSeq
    foldl'
    concatStringsSep
    substring
    ;

  trace = x: _: builtins.trace x null;
  abort = x: _: builtins.abort x;

  inherit mkReport;

  bullet = "•";
}

;

Test-Miraculix-Summary_default-nix = 
let
  module = 
    { "Data.Eq" = Data-Eq_default-nix;
      "Data.Foldable" = Data-Foldable_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Monoid.Additive" = Data-Monoid-Additive_default-nix;
      "Data.Newtype" = Data-Newtype_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Show" = Data-Show_default-nix;
      "Prelude" = Prelude_default-nix;
      "Test.Miraculix.Typo" = Test-Miraculix-Typo_default-nix;
    };
  printSummaryFooter = summary: 
    let
      failures = module."Data.Newtype".un module."Prim".undefined module."Data.Monoid.Additive".Additive summary.failures;
      count = module."Data.Newtype".un module."Prim".undefined module."Data.Monoid.Additive".Additive summary.count;
      color = 
        let
          __pattern0 = __fail: if module."Data.Eq".eq module."Data.Eq".eqInt failures 0 then module."Test.Miraculix.Typo".Green else __fail;
          __pattern1 = __fail: module."Test.Miraculix.Typo".Red;
          __patternFail = builtins.throw "Pattern match failure in src/Test/Miraculix/Summary.purs at 34:11 - 34:47";
        in
          __pattern0 (__pattern1 __patternFail);
    in
      [(module."Data.Function".apply (module."Test.Miraculix.Typo".fontColor color) (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show module."Data.Show".showInt failures) (module."Data.Semigroup".append module."Data.Semigroup".semigroupString " out of " (module."Data.Semigroup".append module."Data.Semigroup".semigroupString (module."Data.Show".show module."Data.Show".showInt count) " tests failed"))))];
  printSummary = summary: module."Data.Function".apply (module."Data.Foldable".fold module."Data.Foldable".foldableArray module."Data.Monoid".monoidString) (module."Data.Functor".map module."Data.Functor".functorArray (v: module."Data.Semigroup".append module."Data.Semigroup".semigroupString v "
") summary.log);
in
  {inherit printSummaryFooter printSummary;}
;

Test-Miraculix-TestTree_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Data.Boolean" = Data-Boolean_default-nix;
      "Data.Eq" = Data-Eq_default-nix;
      "Data.Foldable" = Data-Foldable_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Data.Functor" = Data-Functor_default-nix;
      "Data.Monoid" = Data-Monoid_default-nix;
      "Data.Monoid.Additive" = Data-Monoid-Additive_default-nix;
      "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Semiring" = Data-Semiring_default-nix;
      "Data.Symbol" = Data-Symbol_default-nix;
      "Data.Traversable" = Data-Traversable_default-nix;
      "Effect" = Effect_default-nix;
      "Prelude" = Prelude_default-nix;
      "Test.Miraculix.Assertion" = Test-Miraculix-Assertion_default-nix;
      "Test.Miraculix.FFI" = Test-Miraculix-FFI_default-nix;
      "Test.Miraculix.Summary" = Test-Miraculix-Summary_default-nix;
      "Test.Miraculix.Typo" = Test-Miraculix-Typo_default-nix;
    };
  TestCase = value0: 
    { __tag = "TestCase";
      __field0 = value0;
    };
  TestGroup = value0: 
    { __tag = "TestGroup";
      __field0 = value0;
    };
  testGroup = name: tests: TestGroup 
    { name = name;
      tests = tests;
    };
  testCase = name: assertion: TestCase 
    { name = name;
      assertion = assertion;
    };
  mkTestGroupLog = v: 
    let
      __pattern0 = __fail: 
        let
          name = v.name;
        in
          [(module."Test.Miraculix.Typo".withBullet name)];
      __patternFail = builtins.throw "Pattern match failure in src/Test/Miraculix/TestTree.purs at 60:1 - 60:45";
    in
      __pattern0 __patternFail;
  mkTestCaseLog = v: 
    let
      __pattern0 = __fail: 
        let
          name = v.name;
          assertion = v.assertion;
        in
          if module."Test.Miraculix.Assertion".isSuccess assertion then [(module."Test.Miraculix.Typo".withBullet (module."Data.Semigroup".append module."Data.Semigroup".semigroupString name (module."Data.Semigroup".append module."Data.Semigroup".semigroupString ": " (module."Test.Miraculix.Typo".fontColor module."Test.Miraculix.Typo".Green "ok"))))] else __fail;
      __pattern1 = __fail: 
        let
          name = v.name;
          assertion = v.assertion;
        in
          if module."Data.Boolean".otherwise then module."Data.Semigroup".append module."Data.Semigroup".semigroupArray [(module."Test.Miraculix.Typo".withBullet (module."Data.Semigroup".append module."Data.Semigroup".semigroupString name (module."Data.Semigroup".append module."Data.Semigroup".semigroupString ": " (module."Test.Miraculix.Typo".fontColor module."Test.Miraculix.Typo".Red "failed"))))] (module."Data.Functor".map module."Data.Functor".functorArray (module."Test.Miraculix.Typo".indent 1) (module."Test.Miraculix.Assertion".message assertion)) else __fail;
      __patternFail = builtins.throw "Pattern match failure in src/Test/Miraculix/TestTree.purs at 48:1 - 48:43";
    in
      __pattern0 (__pattern1 __patternFail);
  getSummary' = depth: v: 
    let
      __pattern0 = __fail: 
        if v.__tag == "TestCase"
          then 
            let
              depth1 = depth;
              tc = v.__field0;
            in
              
              let
                log = module."Data.Functor".map module."Data.Functor".functorArray (module."Test.Miraculix.Typo".indent depth1) (mkTestCaseLog tc);
                isSuccess = module."Test.Miraculix.Assertion".isSuccess tc.assertion;
                report = 
                  let
                    __pattern0 = __fail: 
                      if isSuccess
                        then 
                          { failures = module."Control.Applicative".pure module."Data.Monoid.Additive".applicativeAdditive 0;
                            count = module."Control.Applicative".pure module."Data.Monoid.Additive".applicativeAdditive 1;
                            log = log;
                          }
                        else 
                          if module."Data.Boolean".otherwise
                            then 
                              { failures = module."Control.Applicative".pure module."Data.Monoid.Additive".applicativeAdditive 1;
                                count = module."Control.Applicative".pure module."Data.Monoid.Additive".applicativeAdditive 1;
                                log = log;
                              }
                            else __fail;
                    __patternFail = builtins.throw "Pattern match failure in src/Test/Miraculix/TestTree.purs at 72:3 - 74:59";
                  in
                    __pattern0 __patternFail;
              in
                module."Control.Bind".discard module."Control.Bind".discardUnit module."Effect".bindEffect (module."Data.Foldable".traverse_ module."Effect".applicativeEffect module."Data.Foldable".foldableArray module."Test.Miraculix.FFI".trace log) (__unused: module."Data.Function".apply (module."Control.Applicative".pure module."Effect".applicativeEffect) report)
          else __fail;
      __pattern1 = __fail: 
        if v.__tag == "TestGroup"
          then 
            let
              depth1 = depth;
              testGroup' = v.__field0;
            in
              
              let
                log = module."Data.Functor".map module."Data.Functor".functorArray (module."Test.Miraculix.Typo".indent depth1) (mkTestGroupLog testGroup');
                here = 
                  { failures = module."Control.Applicative".pure module."Data.Monoid.Additive".applicativeAdditive 0;
                    count = module."Control.Applicative".pure module."Data.Monoid.Additive".applicativeAdditive 0;
                    log = log;
                  };
              in
                module."Control.Bind".discard module."Control.Bind".discardUnit module."Effect".bindEffect (module."Data.Foldable".traverse_ module."Effect".applicativeEffect module."Data.Foldable".foldableArray module."Test.Miraculix.FFI".trace log) (__unused: module."Control.Bind".bind module."Effect".bindEffect (module."Data.Functor".map module."Effect".functorEffect (module."Data.Foldable".fold module."Data.Foldable".foldableArray (module."Data.Monoid".monoidRecord module."Prim".undefined (module."Data.Monoid".monoidRecordCons {reflectSymbol = __unused: "count";} (module."Data.Monoid.Additive".monoidAdditive module."Data.Semiring".semiringInt) module."Prim".undefined (module."Data.Monoid".monoidRecordCons {reflectSymbol = __unused: "failures";} (module."Data.Monoid.Additive".monoidAdditive module."Data.Semiring".semiringInt) module."Prim".undefined (module."Data.Monoid".monoidRecordCons {reflectSymbol = __unused: "log";} module."Data.Monoid".monoidArray module."Prim".undefined module."Data.Monoid".monoidRecordNil))))) (module."Data.Traversable".traverse module."Data.Traversable".traversableArray module."Effect".applicativeEffect (getSummary' (module."Data.Semiring".add module."Data.Semiring".semiringInt depth1 1)) testGroup'.tests)) (children: module."Control.Applicative".pure module."Effect".applicativeEffect (module."Data.Semigroup".append (module."Data.Semigroup".semigroupRecord module."Prim".undefined (module."Data.Semigroup".semigroupRecordCons {reflectSymbol = __unused: "count";} module."Prim".undefined (module."Data.Semigroup".semigroupRecordCons {reflectSymbol = __unused: "failures";} module."Prim".undefined (module."Data.Semigroup".semigroupRecordCons {reflectSymbol = __unused: "log";} module."Prim".undefined module."Data.Semigroup".semigroupRecordNil module."Data.Semigroup".semigroupArray) (module."Data.Monoid.Additive".semigroupAdditive module."Data.Semiring".semiringInt)) (module."Data.Monoid.Additive".semigroupAdditive module."Data.Semiring".semiringInt))) here children)))
          else __fail;
      __patternFail = builtins.throw "Pattern match failure in src/Test/Miraculix/TestTree.purs at 63:1 - 63:49";
    in
      __pattern0 (__pattern1 __patternFail);
  getSummary = tt: module."Control.Bind".bind module."Effect".bindEffect (getSummary' 0 tt) 
    ( summary: 
      let
        footer = module."Data.Semigroup".append module."Data.Semigroup".semigroupArray [""] (module."Test.Miraculix.Summary".printSummaryFooter summary);
      in
        module."Control.Bind".discard module."Control.Bind".discardUnit module."Effect".bindEffect (module."Data.Foldable".traverse_ module."Effect".applicativeEffect module."Data.Foldable".foldableArray module."Test.Miraculix.FFI".trace footer) 
        ( __unused: module."Control.Bind".discard module."Control.Bind".discardUnit module."Effect".bindEffect (module."Data.Function".apply (module."Control.Applicative".when module."Effect".applicativeEffect (module."Data.Eq".notEq (module."Data.Monoid.Additive".eqAdditive module."Data.Eq".eqInt) summary.failures (module."Control.Applicative".pure module."Data.Monoid.Additive".applicativeAdditive 0))) (module."Test.Miraculix.FFI".abort "Test suite failed")) 
          ( __unused: module."Data.Function".apply (module."Control.Applicative".pure module."Effect".applicativeEffect) 
            ( 
              let
                v = summary;
              in
                
                { log = module."Data.Semigroup".append module."Data.Semigroup".semigroupArray summary.log footer;
                  count = v.count;
                  failures = v.failures;
                }
            )
          )
        )
    );
in
  {inherit testCase testGroup getSummary;}
;

Test-Miraculix-Typo_default-nix = 
let
  module = 
    { "Data.Semigroup" = Data-Semigroup_default-nix;
      "Data.Semiring" = Data-Semiring_default-nix;
      "Prelude" = Prelude_default-nix;
      "Test.Miraculix.FFI" = Test-Miraculix-FFI_default-nix;
    };
  Red = {__tag = "Red";};
  Green = {__tag = "Green";};
  Yellow = {__tag = "Yellow";};
  withBullet = txt: module."Data.Semigroup".append module."Data.Semigroup".semigroupString module."Test.Miraculix.FFI".bullet (module."Data.Semigroup".append module."Data.Semigroup".semigroupString " " txt);
  toColorCode = c: 
    let
      __pattern0 = __fail: if c.__tag == "Red" then "[31m" else __fail;
      __pattern1 = __fail: if c.__tag == "Green" then "[32m" else __fail;
      __pattern2 = __fail: if c.__tag == "Yellow" then "[33m" else __fail;
      __patternFail = builtins.throw "Pattern match failure in src/Test/Miraculix/Typo.purs at 23:17 - 26:25";
    in
      __pattern0 (__pattern1 (__pattern2 __patternFail));
  resetColor = "[0m";
  indent = n: line: 
    let
      maxSpaces = "                    ";
      spaces = module."Test.Miraculix.FFI".substring 0 (module."Data.Semiring".mul module."Data.Semiring".semiringInt n 2) maxSpaces;
    in
      module."Data.Semigroup".append module."Data.Semigroup".semigroupString spaces line;
  fontColor = color: txt: module."Data.Semigroup".append module."Data.Semigroup".semigroupString (toColorCode color) (module."Data.Semigroup".append module."Data.Semigroup".semigroupString txt resetColor);
in
  {inherit withBullet indent fontColor Red Green Yellow;}
;

Test-Miraculix_default-nix = 
let
  module = 
    { "Control.Applicative" = Control-Applicative_default-nix;
      "Control.Bind" = Control-Bind_default-nix;
      "Data.Function" = Data-Function_default-nix;
      "Effect" = Effect_default-nix;
      "Prelude" = Prelude_default-nix;
      "Test.Miraculix.Assertion" = Test-Miraculix-Assertion_default-nix;
      "Test.Miraculix.FFI" = Test-Miraculix-FFI_default-nix;
      "Test.Miraculix.Summary" = Test-Miraculix-Summary_default-nix;
      "Test.Miraculix.TestTree" = Test-Miraculix-TestTree_default-nix;
    };
  runTests = tt: module."Control.Bind".bind module."Effect".bindEffect (module."Test.Miraculix.TestTree".getSummary tt) (summary: module."Data.Function".apply (module."Control.Applicative".pure module."Effect".applicativeEffect) (module."Data.Function".apply module."Test.Miraculix.FFI".mkReport (module."Test.Miraculix.Summary".printSummary summary)));
in
  
  { inherit runTests;
    inherit (module."Test.Miraculix.Assertion") assert- assertEq assertGt assertLt;
    inherit (module."Test.Miraculix.FFI");
    inherit (module."Test.Miraculix.TestTree") testCase testGroup;
  }
;

Type-Data-Row_default-nix = 
let
  module = { };
  RProxy = {__tag = "RProxy";};
in
  {inherit RProxy;}
;

Type-Data-RowList_default-nix = 
let
  module = {"Prim.RowList" = import ../Prim.RowList;};
  RLProxy = {__tag = "RLProxy";};
in
  {inherit RLProxy;}
;

Type-Equality_default-nix = 
let
  module = {"Prim.Coerce" = import ../Prim.Coerce;};
  TypeEquals-Dict = x: x;
  To = x: x;
  From = x: x;
  refl = 
    { proof = a: a;
      "Coercible0" = __unused: module."Prim".undefined;
    };
  proof = dict: 
    let
      __pattern0 = __fail: 
        let
          v = dict;
        in
          v.proof;
      __patternFail = builtins.throw "Pattern match failure in .spago/type-equality/f251a957aa464013d625d37aaaa430e16dee8f21/src/Type/Equality.purs at 22:3 - 22:32";
    in
      __pattern0 __patternFail;
  to = dictTypeEquals: 
    let
      v = proof dictTypeEquals (a: a);
    in
      
      let
        __pattern0 = __fail: 
          let
            f = v;
          in
            f;
        __patternFail = builtins.throw "Pattern match failure in .spago/type-equality/f251a957aa464013d625d37aaaa430e16dee8f21/src/Type/Equality.purs at 30:6 - 30:44";
      in
        __pattern0 __patternFail;
  from = dictTypeEquals: 
    let
      v = proof dictTypeEquals (a: a);
    in
      
      let
        __pattern0 = __fail: 
          let
            f = v;
          in
            f;
        __patternFail = builtins.throw "Pattern match failure in .spago/type-equality/f251a957aa464013d625d37aaaa430e16dee8f21/src/Type/Equality.purs at 35:8 - 35:50";
      in
        __pattern0 __patternFail;
in
  {inherit proof to from refl;}
;

Type-Proxy_default-nix = 
let
  module = { };
  Proxy3 = {__tag = "Proxy3";};
  Proxy2 = {__tag = "Proxy2";};
  Proxy = {__tag = "Proxy";};
in
  {inherit Proxy Proxy2 Proxy3;}
;

Unsafe-Coerce_default-nix = 
let
  module = { };
  foreign = Unsafe-Coerce_foreign-nix;
  unsafeCoerce = foreign.unsafeCoerce;
in
  {inherit unsafeCoerce;}
;

Unsafe-Coerce_foreign-nix = 
{ unsafeCoerce = x: x; }

;


}