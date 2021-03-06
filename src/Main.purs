module Main where

import Prelude
import Control.Monad.Eff
import Control.Monad.Eff.Console

import Math (sqrt, pi)

diagonal :: Number -> Number -> Number 
diagonal w h =
  sqrt (w*w + h*h)


circleArea :: Number -> Number
circleArea r =
  pi * r * r



main :: forall e. Eff (console :: CONSOLE | e) Unit
main = print (diagonal 3.0 4.0)