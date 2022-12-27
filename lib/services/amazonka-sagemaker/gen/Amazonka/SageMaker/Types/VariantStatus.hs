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
-- Module      : Amazonka.SageMaker.Types.VariantStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.VariantStatus
  ( VariantStatus
      ( ..,
        VariantStatus_ActivatingTraffic,
        VariantStatus_Baking,
        VariantStatus_Creating,
        VariantStatus_Deleting,
        VariantStatus_Updating
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype VariantStatus = VariantStatus'
  { fromVariantStatus ::
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

pattern VariantStatus_ActivatingTraffic :: VariantStatus
pattern VariantStatus_ActivatingTraffic = VariantStatus' "ActivatingTraffic"

pattern VariantStatus_Baking :: VariantStatus
pattern VariantStatus_Baking = VariantStatus' "Baking"

pattern VariantStatus_Creating :: VariantStatus
pattern VariantStatus_Creating = VariantStatus' "Creating"

pattern VariantStatus_Deleting :: VariantStatus
pattern VariantStatus_Deleting = VariantStatus' "Deleting"

pattern VariantStatus_Updating :: VariantStatus
pattern VariantStatus_Updating = VariantStatus' "Updating"

{-# COMPLETE
  VariantStatus_ActivatingTraffic,
  VariantStatus_Baking,
  VariantStatus_Creating,
  VariantStatus_Deleting,
  VariantStatus_Updating,
  VariantStatus'
  #-}
