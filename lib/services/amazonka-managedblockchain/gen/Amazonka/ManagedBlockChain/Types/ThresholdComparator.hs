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
-- Module      : Amazonka.ManagedBlockChain.Types.ThresholdComparator
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ManagedBlockChain.Types.ThresholdComparator
  ( ThresholdComparator
      ( ..,
        ThresholdComparator_GREATER_THAN,
        ThresholdComparator_GREATER_THAN_OR_EQUAL_TO
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype ThresholdComparator = ThresholdComparator'
  { fromThresholdComparator ::
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

pattern ThresholdComparator_GREATER_THAN :: ThresholdComparator
pattern ThresholdComparator_GREATER_THAN = ThresholdComparator' "GREATER_THAN"

pattern ThresholdComparator_GREATER_THAN_OR_EQUAL_TO :: ThresholdComparator
pattern ThresholdComparator_GREATER_THAN_OR_EQUAL_TO = ThresholdComparator' "GREATER_THAN_OR_EQUAL_TO"

{-# COMPLETE
  ThresholdComparator_GREATER_THAN,
  ThresholdComparator_GREATER_THAN_OR_EQUAL_TO,
  ThresholdComparator'
  #-}
