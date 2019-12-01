{-# LANGUAGE OverloadedStrings #-}

module Tesla.Command.Sentry (
  setSentryMode
  ) where

import           Control.Monad.IO.Class (MonadIO (..))
import           Network.Wreq           (FormParam (..))
import           Tesla.Command

setSentryMode :: MonadIO m => Bool -> Car m CommandResponse
setSentryMode on = runCmd "set_sentry_mode" [ "on" := on ]