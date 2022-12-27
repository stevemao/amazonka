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
-- Module      : Amazonka.MediaConvert.Types.ImscAccessibilitySubs
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.ImscAccessibilitySubs
  ( ImscAccessibilitySubs
      ( ..,
        ImscAccessibilitySubs_DISABLED,
        ImscAccessibilitySubs_ENABLED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Set Accessibility subtitles to Enabled if the ISMC or WebVTT captions
-- track is intended to provide accessibility for people who are deaf or
-- hard of hearing. When you enable this feature, MediaConvert adds the
-- following attributes under EXT-X-MEDIA in the HLS or CMAF manifest for
-- this track:
-- CHARACTERISTICS=\"public.accessibility.describes-spoken-dialog,public.accessibility.describes-music-and-sound\"
-- and AUTOSELECT=\"YES\". Keep the default value, Disabled, if the
-- captions track is not intended to provide such accessibility.
-- MediaConvert will not add the above attributes.
newtype ImscAccessibilitySubs = ImscAccessibilitySubs'
  { fromImscAccessibilitySubs ::
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

pattern ImscAccessibilitySubs_DISABLED :: ImscAccessibilitySubs
pattern ImscAccessibilitySubs_DISABLED = ImscAccessibilitySubs' "DISABLED"

pattern ImscAccessibilitySubs_ENABLED :: ImscAccessibilitySubs
pattern ImscAccessibilitySubs_ENABLED = ImscAccessibilitySubs' "ENABLED"

{-# COMPLETE
  ImscAccessibilitySubs_DISABLED,
  ImscAccessibilitySubs_ENABLED,
  ImscAccessibilitySubs'
  #-}
