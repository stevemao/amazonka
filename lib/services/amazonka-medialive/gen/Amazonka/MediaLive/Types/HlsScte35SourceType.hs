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
-- Module      : Amazonka.MediaLive.Types.HlsScte35SourceType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.HlsScte35SourceType
  ( HlsScte35SourceType
      ( ..,
        HlsScte35SourceType_MANIFEST,
        HlsScte35SourceType_SEGMENTS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Hls Scte35 Source Type
newtype HlsScte35SourceType = HlsScte35SourceType'
  { fromHlsScte35SourceType ::
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

pattern HlsScte35SourceType_MANIFEST :: HlsScte35SourceType
pattern HlsScte35SourceType_MANIFEST = HlsScte35SourceType' "MANIFEST"

pattern HlsScte35SourceType_SEGMENTS :: HlsScte35SourceType
pattern HlsScte35SourceType_SEGMENTS = HlsScte35SourceType' "SEGMENTS"

{-# COMPLETE
  HlsScte35SourceType_MANIFEST,
  HlsScte35SourceType_SEGMENTS,
  HlsScte35SourceType'
  #-}
