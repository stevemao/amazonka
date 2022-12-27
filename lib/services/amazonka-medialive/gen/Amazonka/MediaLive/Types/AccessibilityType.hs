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
-- Module      : Amazonka.MediaLive.Types.AccessibilityType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.AccessibilityType
  ( AccessibilityType
      ( ..,
        AccessibilityType_DOES_NOT_IMPLEMENT_ACCESSIBILITY_FEATURES,
        AccessibilityType_IMPLEMENTS_ACCESSIBILITY_FEATURES
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Accessibility Type
newtype AccessibilityType = AccessibilityType'
  { fromAccessibilityType ::
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

pattern AccessibilityType_DOES_NOT_IMPLEMENT_ACCESSIBILITY_FEATURES :: AccessibilityType
pattern AccessibilityType_DOES_NOT_IMPLEMENT_ACCESSIBILITY_FEATURES = AccessibilityType' "DOES_NOT_IMPLEMENT_ACCESSIBILITY_FEATURES"

pattern AccessibilityType_IMPLEMENTS_ACCESSIBILITY_FEATURES :: AccessibilityType
pattern AccessibilityType_IMPLEMENTS_ACCESSIBILITY_FEATURES = AccessibilityType' "IMPLEMENTS_ACCESSIBILITY_FEATURES"

{-# COMPLETE
  AccessibilityType_DOES_NOT_IMPLEMENT_ACCESSIBILITY_FEATURES,
  AccessibilityType_IMPLEMENTS_ACCESSIBILITY_FEATURES,
  AccessibilityType'
  #-}
