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
-- Module      : Amazonka.IoT.Types.IndexStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT.Types.IndexStatus
  ( IndexStatus
      ( ..,
        IndexStatus_ACTIVE,
        IndexStatus_BUILDING,
        IndexStatus_REBUILDING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype IndexStatus = IndexStatus'
  { fromIndexStatus ::
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

pattern IndexStatus_ACTIVE :: IndexStatus
pattern IndexStatus_ACTIVE = IndexStatus' "ACTIVE"

pattern IndexStatus_BUILDING :: IndexStatus
pattern IndexStatus_BUILDING = IndexStatus' "BUILDING"

pattern IndexStatus_REBUILDING :: IndexStatus
pattern IndexStatus_REBUILDING = IndexStatus' "REBUILDING"

{-# COMPLETE
  IndexStatus_ACTIVE,
  IndexStatus_BUILDING,
  IndexStatus_REBUILDING,
  IndexStatus'
  #-}
