import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)
import Lib (someFunc)

main :: IO ()
main = hspec $ do
  describe "Lib.someFunc" $ do
    it "returns the first element of a list" $ do
      someFunc [23 ..] `shouldBe` (23 :: Int)

    it "returns the first element of an *arbitrary* list" $
      property $ \x xs -> someFunc (x:xs) == (x :: Int)

    it "throws an exception if used with an empty list" $ do
      evaluate (someFunc []) `shouldThrow` anyException
