module Lib
    ( palindrome
    ) where

import Control.Exception

palindrome :: String -> Bool
palindrome [] = error "empty string"
palindrome x = x == reverse x
