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
-- Module      : Amazonka.MediaConvert.Types.CmafSegmentLengthControl
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.CmafSegmentLengthControl
  ( CmafSegmentLengthControl
      ( ..,
        CmafSegmentLengthControl_EXACT,
        CmafSegmentLengthControl_GOP_MULTIPLE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Specify how you want MediaConvert to determine the segment length.
-- Choose Exact (EXACT) to have the encoder use the exact length that you
-- specify with the setting Segment length (SegmentLength). This might
-- result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have
-- the encoder round up the segment lengths to match the next GOP boundary.
newtype CmafSegmentLengthControl = CmafSegmentLengthControl'
  { fromCmafSegmentLengthControl ::
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

pattern CmafSegmentLengthControl_EXACT :: CmafSegmentLengthControl
pattern CmafSegmentLengthControl_EXACT = CmafSegmentLengthControl' "EXACT"

pattern CmafSegmentLengthControl_GOP_MULTIPLE :: CmafSegmentLengthControl
pattern CmafSegmentLengthControl_GOP_MULTIPLE = CmafSegmentLengthControl' "GOP_MULTIPLE"

{-# COMPLETE
  CmafSegmentLengthControl_EXACT,
  CmafSegmentLengthControl_GOP_MULTIPLE,
  CmafSegmentLengthControl'
  #-}
