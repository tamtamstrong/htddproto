import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)
import Lib (palindrome)

main :: IO ()
main = hspec $ do
  -- inspiration from https://www.ibm.com/cloud/architecture/content/course/test-driven-development/tdd-palindrome-kata?task=1
  describe "Lib.palindrome" $ do
    it "returns True for mom" $ do
      pending

    it "returns False for dude" $ do
      pending

    it "returns True for mom mom" $ do
      pending

    it "returns False for dad mom" $ do
      pending

    it "returns True for whitespace" $ do
      pending

    it "returns error for empty string" $ do
      pending

    it "returns error for not a string" $ do
      pending

