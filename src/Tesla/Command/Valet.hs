{-# LANGUAGE OverloadedStrings #-}

module Tesla.Command.Valet (
  setValetMode, clearValetPIN
  ) where

import           Control.Monad.IO.Class (MonadIO (..))
import           Network.Wreq           (FormParam (..))
import           Tesla.Command

setValetMode :: MonadIO m => Bool -> Int -> Car m CommandResponse
setValetMode on pin = runCmd "set_valet_mode" [ "on" := on, "password" := pin]

clearValetPIN :: MonadIO m => Car m CommandResponse
clearValetPIN = runCmd' "reset_valet_pin"