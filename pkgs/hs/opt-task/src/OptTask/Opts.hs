{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE RankNTypes #-}

module OptTask.Opts where

import Control.Exception.Base
import Control.Monad (foldM)
import Data.Foldable (fold, traverse_)
import Data.Function ((&))
import Data.Hashable (Hashable (hash))
import Data.List (intercalate)
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

data NativeCmd = NativeCmd

data UserCmd = UserCmd
  { name :: String,
    opts :: forall a. a
  }

type Cmd = Either NativeCmd UserCmd

data Opts = Opts
  { _runDeps :: Bool,
    _silent :: Bool,
    _task :: Cmd,
    _omit :: [String]
  }

data Task' = forall a. Hashable a => Task' (Task a)

data Task a = Task
  { taskName :: String,
    descr :: String,
    deps :: [Task ()],
    parser :: Parser a,
    mkHandler :: a -> Handler
  }

data Ctx = Ctx
  { echo :: T.Line -> IO (),
    stdout :: forall io. T.MonadIO io => T.Shell T.Line -> io (),
    proc :: forall io. T.MonadIO io => T.Text -> [T.Text] -> T.Shell T.Line -> io T.ExitCode,
    sh :: forall io. T.MonadIO io => T.Text -> io (),
    sh' :: forall io. T.MonadIO io => T.Text -> Shell T.Line -> io (),
    scope :: [String],
    i :: Int
  }

type Handler = Ctx -> IO ()

mkParser :: [Task'] -> Parser Opts
mkParser ts =
  Opts
    <$> switch (long "deps" <> short 'd')
    <*> switch (long "silent" <> short 's')
    <*> (subparser (fold [nativeCmd]) <|> subparser (fold parseUserCmds))
    <*> pure []
  where
    parseUserCmds = mkCommand <$> ts

mkCommand :: Task' -> Mod CommandFields Cmd
mkCommand (Task' t) =
  command
    (taskName t)
    ( info
        ((\x -> Right $ UserCmd (taskName t) $ unsafeCoerce x) <$> parser t)
        (progDesc $ descr t)
    )
    <> commandGroup "User commands:"

nativeCmd :: Mod CommandFields Cmd
nativeCmd =
  command
    "ot-graph"
    ( info
        (pure $ Left NativeCmd)
        (progDesc "show graph")
    )
    <> commandGroup "Builtin commands:"
