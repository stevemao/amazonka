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
-- Module      : Amazonka.MediaLive.Types.ReservationState
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.ReservationState
  ( ReservationState
      ( ..,
        ReservationState_ACTIVE,
        ReservationState_CANCELED,
        ReservationState_DELETED,
        ReservationState_EXPIRED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Current reservation state
newtype ReservationState = ReservationState'
  { fromReservationState ::
      Data.Text
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
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern ReservationState_ACTIVE :: ReservationState
pattern ReservationState_ACTIVE = ReservationState' "ACTIVE"

pattern ReservationState_CANCELED :: ReservationState
pattern ReservationState_CANCELED = ReservationState' "CANCELED"

pattern ReservationState_DELETED :: ReservationState
pattern ReservationState_DELETED = ReservationState' "DELETED"

pattern ReservationState_EXPIRED :: ReservationState
pattern ReservationState_EXPIRED = ReservationState' "EXPIRED"

{-# COMPLETE
  ReservationState_ACTIVE,
  ReservationState_CANCELED,
  ReservationState_DELETED,
  ReservationState_EXPIRED,
  ReservationState'
  #-}
