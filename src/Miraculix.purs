module Miraculix
  ( 
  ) where

import Prelude

runTests :: TestTree -> StorePath
runTests tt = mkReport $ fold $ (_ <> "\n") <$> finish tt
