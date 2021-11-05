{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.MediaLive.Types.SmoothGroupEventStopBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.SmoothGroupEventStopBehavior
  ( SmoothGroupEventStopBehavior
      ( ..,
        SmoothGroupEventStopBehavior_NONE,
        SmoothGroupEventStopBehavior_SEND_EOS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | Smooth Group Event Stop Behavior
newtype SmoothGroupEventStopBehavior = SmoothGroupEventStopBehavior'
  { fromSmoothGroupEventStopBehavior ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern SmoothGroupEventStopBehavior_NONE :: SmoothGroupEventStopBehavior
pattern SmoothGroupEventStopBehavior_NONE = SmoothGroupEventStopBehavior' "NONE"

pattern SmoothGroupEventStopBehavior_SEND_EOS :: SmoothGroupEventStopBehavior
pattern SmoothGroupEventStopBehavior_SEND_EOS = SmoothGroupEventStopBehavior' "SEND_EOS"

{-# COMPLETE
  SmoothGroupEventStopBehavior_NONE,
  SmoothGroupEventStopBehavior_SEND_EOS,
  SmoothGroupEventStopBehavior'
  #-}
