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
-- Module      : Amazonka.SSM.Types.DocumentStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSM.Types.DocumentStatus
  ( DocumentStatus
      ( ..,
        DocumentStatus_Active,
        DocumentStatus_Creating,
        DocumentStatus_Deleting,
        DocumentStatus_Failed,
        DocumentStatus_Updating
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The status of a document.
newtype DocumentStatus = DocumentStatus'
  { fromDocumentStatus ::
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

pattern DocumentStatus_Active :: DocumentStatus
pattern DocumentStatus_Active = DocumentStatus' "Active"

pattern DocumentStatus_Creating :: DocumentStatus
pattern DocumentStatus_Creating = DocumentStatus' "Creating"

pattern DocumentStatus_Deleting :: DocumentStatus
pattern DocumentStatus_Deleting = DocumentStatus' "Deleting"

pattern DocumentStatus_Failed :: DocumentStatus
pattern DocumentStatus_Failed = DocumentStatus' "Failed"

pattern DocumentStatus_Updating :: DocumentStatus
pattern DocumentStatus_Updating = DocumentStatus' "Updating"

{-# COMPLETE
  DocumentStatus_Active,
  DocumentStatus_Creating,
  DocumentStatus_Deleting,
  DocumentStatus_Failed,
  DocumentStatus_Updating,
  DocumentStatus'
  #-}
