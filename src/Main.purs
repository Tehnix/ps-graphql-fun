module Main where

import Prelude
import Data.Function.Uncurried (Fn2, runFn2)
import Effect (Effect)
import Effect.Console (log)


foreign import addImpl :: Fn2 Number Number Number

addNumbers :: Number -> Number -> Number
addNumbers = runFn2 addImpl

main :: Effect Unit
main = do
  log "Hello sailor!"
  log $ show $ addNumbers 2.0 3.0
