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
-- Module      : Amazonka.RDS.Types.TargetState
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RDS.Types.TargetState
  ( TargetState
      ( ..,
        TargetState_AVAILABLE,
        TargetState_REGISTERING,
        TargetState_UNAVAILABLE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype TargetState = TargetState'
  { fromTargetState ::
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

pattern TargetState_AVAILABLE :: TargetState
pattern TargetState_AVAILABLE = TargetState' "AVAILABLE"

pattern TargetState_REGISTERING :: TargetState
pattern TargetState_REGISTERING = TargetState' "REGISTERING"

pattern TargetState_UNAVAILABLE :: TargetState
pattern TargetState_UNAVAILABLE = TargetState' "UNAVAILABLE"

{-# COMPLETE
  TargetState_AVAILABLE,
  TargetState_REGISTERING,
  TargetState_UNAVAILABLE,
  TargetState'
  #-}
