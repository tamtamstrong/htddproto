module Lib
    ( palindrome
    ) where

import Control.Exception

palindrome :: String -> Bool
palindrome x = x == reverse x
