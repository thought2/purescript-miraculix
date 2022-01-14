{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}

module OptTask where

import Control.Exception.Base
import Control.Monad (foldM)
import Data.Foldable (fold, traverse_)
import Data.Function ((&))
import Data.String (IsString, fromString)
import qualified Data.Text as Tx
import Dot
import qualified Dot as D
import Options.Applicative
import qualified System.Console.Chalk as C
import qualified System.Environment as E
import qualified System.IO as I
import qualified System.Process as S
import Turtle hiding (elem, fold, switch)
import qualified Turtle as T
import Unsafe.Coerce (unsafeCoerce)

--------------------------------------------------------------------------------
-- Lib
--------------------------------------------------------------------------------

colorWheel :: Int -> (Monoid m, IsString m) => m -> m
colorWheel i = C.cyan -- colors !! (i `mod` length colors)
  where
    colors = [C.blue, C.magenta, C.cyan, C.yellow]

data Ctx = Ctx
  { echo :: T.Line -> IO (),
    stdout :: forall io. T.MonadIO io => T.Shell T.Line -> io (),
    proc :: forall io. T.MonadIO io => T.Text -> [T.Text] -> T.Shell T.Line -> io T.ExitCode,
    sh :: forall io. T.MonadIO io => T.Text -> io (),
    sh' :: forall io. T.MonadIO io => T.Text -> Shell T.Line -> io (),
    scope :: [String],
    i :: Int
  }

data Stats = Stats {taskCount :: Int}

type Handler = Ctx -> IO ()

data Task a = Task
  { taskName :: String,
    descr :: String,
    deps :: [Task ()],
    parser :: Parser a,
    mkHandler :: a -> Handler
  }

task :: (String, String) -> [Task ()] -> Parser a -> (a -> Handler) -> Task a
task (taskName, descr) = Task taskName descr

dep :: Task a -> a -> Task ()
dep (Task tn d deps _ mh) x = Task tn d deps (pure ()) (\_ -> mh x)

mk :: Task a -> forall b. Task b
mk t = unsafeCoerce t

scopeCtx :: Opts -> String -> Int -> Ctx -> Ctx
scopeCtx o scope i (Ctx _ stdout proc_ sh sh' scope' _) =
  Ctx
    (\x -> T.echo $ scopeLn x)
    (\x -> stdout $ scopeLn <$> x)
    proc_
    (\c -> shell c "")
    shell
    (scope : scope')
    i
  where
    shell c stdin = do
      T.liftIO $ putStrLn (C.bold ("ᐅ " <> Tx.unpack c))
      (if _silent o then T.output (T.decodeString "/dev/null") else T.stdout) $ scopeLn . either id id <$> T.inshellWithErr c stdin

    scopeLn x = colorWheel i (fromString scope <> ": ") <> x

runTask :: Opts -> Stats -> Ctx -> Task a -> a -> IO ()
runTask o stats _ctx _t _x = do
  go 0 _ctx _t _x
  pure ()
  where
    go :: Int -> Ctx -> Task a -> a -> IO Int
    go idx ctx t x = do
      r <-
        if (_runDeps o)
          then foldM (\i' t' -> go i' (scopeCtx o (taskName t) i' ctx) t' ()) idx (deps t)
          else pure 0
      putStrLn "--------------------------------------------------------------------------------------------------------------"
      putStrLn (colorWheel r ("TASK " <> show (1 + r) <> "/" <> show (taskCount stats) <> ": " <> taskName t) <> C.gray (join $ (<>) " -> " <$> scope ctx))
      putStrLn "--------------------------------------------------------------------------------------------------------------"
      mkHandler t x (scopeCtx o (taskName t) r ctx) `catch` errorHandler
      putStrLn ""
      pure (r + 1)

    errorHandler :: ExitCode -> IO ()
    errorHandler ExitSuccess = pure ()
    errorHandler ec@(ExitFailure n) = do
      putStrLn ""
      putStrLn $ C.red ("Task failed with exit code " <> show n)
      exit ec

countTasks :: [Task a] -> Task a -> Int
countTasks _ts t = foldl f 0 _ts
  where
    f :: Int -> Task a -> Int
    f i t' | taskName t' == taskName t = go i t'
    f i t' = i

    go :: Int -> Task a -> Int
    go i t = 1 + (foldl go i $ deps t)

emptyCtx :: Ctx
emptyCtx =
  Ctx
    T.echo
    T.stdout
    T.proc
    (\c -> T.stdout $ either id id <$> T.inshellWithErr c "")
    (\c si -> T.stdout $ either id id <$> T.inshellWithErr c si)
    []
    0

runTasks :: [Task a] -> IO ()
runTasks ts = do
  r <- execParser $ opts
  matchCmd r ts
  where
    opts =
      info
        (mkParser ts <**> helper)
        ( fullDesc
            <> progDesc "Print a greeting for TARGET"
        )

data NativeCmd = NativeCmd

data UserCmd = UserCmd
  { name :: String,
    opts :: forall a. a
  }

type Cmd = Either NativeCmd UserCmd

data Opts = Opts
  { _runDeps :: Bool,
    _silent :: Bool,
    _task :: Cmd
  }

mkParser :: [Task a] -> Parser Opts
mkParser ts =
  Opts
    <$> switch (long "deps" <> short 'd')
    <*> switch (long "silent" <> short 's')
    <*> subparser (fold ([nativeCmd] <> parseUserCmds))
  where
    parseUserCmds = mkCommand <$> ts

nativeCmd :: Mod CommandFields Cmd
nativeCmd =
  command
    "_graph"
    ( info
        (pure $ Left NativeCmd)
        (progDesc "show graph")
    )

mkCommand :: Task a -> Mod CommandFields Cmd
mkCommand t =
  command
    (taskName t)
    ( info
        ((\x -> Right $ UserCmd (taskName t) $ unsafeCoerce x) <$> parser t)
        (progDesc $ descr t)
    )

getGraph :: [Task a] -> String
getGraph ts = Tx.unpack $ D.encode $ getGraph' ts

getGraph' :: [Task a] -> DotGraph
getGraph' ts =
  DotGraph
    Strict
    Directed
    (Just "foobar")
    ( (mkNode <$> ts)
        <> (mkEdges =<< ts)
    )
  where
    mkNode t =
      StatementNode $
        NodeStatement
          (fromString $ taskName t)
          [ Attribute "color" "blue",
            Attribute "style" "filled",
            Attribute "fillcolor" (if isEntry then "yellow" else "azure"),
            Attribute "shape" "box"
          ]
      where
        isEntry = not $ any (\t' -> elem (taskName t) $ taskName <$> deps t') ts

    mkEdge from to i =
      StatementEdge $
        EdgeStatement
          (ListTwo (fromString $ taskName from) (fromString $ taskName to) [])
          [ Attribute "color" "red",
            Attribute "label" $ fromString $ show i
          ]

    mkEdges t = zipWith (mkEdge t) (deps t) [1 ..]

matchCmd :: Opts -> [Task a] -> IO ()
matchCmd opts@(Opts rd _ (Left nc)) ts = putStrLn $ getGraph ts
matchCmd opts@(Opts rd _ (Right (UserCmd n o))) ts = do
  traverse_
    ( \t ->
        if taskName t == n
          then do
            let stats = Stats $ countTasks ts t
            runTask opts stats emptyCtx t o
          else pure ()
    )
    ts
