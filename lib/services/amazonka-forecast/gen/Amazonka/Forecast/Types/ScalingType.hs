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
-- Module      : Amazonka.Forecast.Types.ScalingType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Forecast.Types.ScalingType
  ( ScalingType
      ( ..,
        ScalingType_Auto,
        ScalingType_Linear,
        ScalingType_Logarithmic,
        ScalingType_ReverseLogarithmic
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype ScalingType = ScalingType'
  { fromScalingType ::
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

pattern ScalingType_Auto :: ScalingType
pattern ScalingType_Auto = ScalingType' "Auto"

pattern ScalingType_Linear :: ScalingType
pattern ScalingType_Linear = ScalingType' "Linear"

pattern ScalingType_Logarithmic :: ScalingType
pattern ScalingType_Logarithmic = ScalingType' "Logarithmic"

pattern ScalingType_ReverseLogarithmic :: ScalingType
pattern ScalingType_ReverseLogarithmic = ScalingType' "ReverseLogarithmic"

{-# COMPLETE
  ScalingType_Auto,
  ScalingType_Linear,
  ScalingType_Logarithmic,
  ScalingType_ReverseLogarithmic,
  ScalingType'
  #-}
