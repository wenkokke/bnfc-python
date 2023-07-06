{-# LANGUAGE ForeignFunctionInterface #-}
{-# OPTIONS_GHC -Wall #-}

module BNFCPythonBinding where

import Data.Version (showVersion)
import Foreign.C.String (CString, newCString)
import qualified Main as BNFC (main)
import Paths_BNFC (version)

foreign export ccall hs_bnfc_version :: IO CString

hs_bnfc_version :: IO CString
hs_bnfc_version =
  newCString (showVersion version)

foreign export ccall hs_bnfc_main :: IO ()

hs_bnfc_main :: IO ()
hs_bnfc_main = BNFC.main
