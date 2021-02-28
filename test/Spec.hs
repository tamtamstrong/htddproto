import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)
import Lib (palindrome)

main :: IO ()
main = hspec $ do
  -- inspiration from https://www.ibm.com/cloud/architecture/content/course/test-driven-development/tdd-palindrome-kata?task=1
  describe "Lib.palindrome" $ do
    it "returns True for mom" $ do
      palindrome "mom" `shouldBe` True

    it "returns False for dude" $ do
      palindrome "dude" `shouldBe` False

    it "returns True for mom mom" $ do
      palindrome "mom mom" `shouldBe` True

    it "returns False for dad mom" $ do
      palindrome "dad mom" `shouldBe` False

    it "returns True for whitespace" $ do
      palindrome " " `shouldBe` True

    it "returns error for empty string" $ do
      evaluate (palindrome "") `shouldThrow` anyException

    it "returns error for not a string" $ do
      pendingWith "how can i write this?"
      --evaluate (palindrome 1) `shouldThrow` errorCall

