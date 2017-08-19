{- #LANGUAGE OverloadedStrings #-}
module Main where

import Control.Monad.IO.Class(liftIO)
import System.Environment (getEnv)
import Twilio
import Twilio.Messages

main:: IO()
main = runTwilio' (getEnv "TWILIO_ACCOUNT_SID")
                  (getEnv "TWILIO_AUTH_TOKEN") $ do
  let body = PostMessage "3059154770" "3212048454" "Hello, World!"
  message <- post body
  liftIO $ print message