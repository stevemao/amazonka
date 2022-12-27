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
-- Module      : Amazonka.MediaConvert.Types.BurnInSubtitleStylePassthrough
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.BurnInSubtitleStylePassthrough
  ( BurnInSubtitleStylePassthrough
      ( ..,
        BurnInSubtitleStylePassthrough_DISABLED,
        BurnInSubtitleStylePassthrough_ENABLED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Set Style passthrough (StylePassthrough) to ENABLED to use the available
-- style, color, and position information from your input captions.
-- MediaConvert uses default settings for any missing style and position
-- information in your input captions. Set Style passthrough to DISABLED,
-- or leave blank, to ignore the style and position information from your
-- input captions and use default settings: white text with black
-- outlining, bottom-center positioning, and automatic sizing. Whether you
-- set Style passthrough to enabled or not, you can also choose to manually
-- override any of the individual style and position settings.
newtype BurnInSubtitleStylePassthrough = BurnInSubtitleStylePassthrough'
  { fromBurnInSubtitleStylePassthrough ::
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

pattern BurnInSubtitleStylePassthrough_DISABLED :: BurnInSubtitleStylePassthrough
pattern BurnInSubtitleStylePassthrough_DISABLED = BurnInSubtitleStylePassthrough' "DISABLED"

pattern BurnInSubtitleStylePassthrough_ENABLED :: BurnInSubtitleStylePassthrough
pattern BurnInSubtitleStylePassthrough_ENABLED = BurnInSubtitleStylePassthrough' "ENABLED"

{-# COMPLETE
  BurnInSubtitleStylePassthrough_DISABLED,
  BurnInSubtitleStylePassthrough_ENABLED,
  BurnInSubtitleStylePassthrough'
  #-}
