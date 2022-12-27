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
-- Module      : Amazonka.CustomerProfiles.Types.TaskType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CustomerProfiles.Types.TaskType
  ( TaskType
      ( ..,
        TaskType_Arithmetic,
        TaskType_Filter,
        TaskType_Map,
        TaskType_Mask,
        TaskType_Merge,
        TaskType_Truncate,
        TaskType_Validate
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype TaskType = TaskType'
  { fromTaskType ::
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

pattern TaskType_Arithmetic :: TaskType
pattern TaskType_Arithmetic = TaskType' "Arithmetic"

pattern TaskType_Filter :: TaskType
pattern TaskType_Filter = TaskType' "Filter"

pattern TaskType_Map :: TaskType
pattern TaskType_Map = TaskType' "Map"

pattern TaskType_Mask :: TaskType
pattern TaskType_Mask = TaskType' "Mask"

pattern TaskType_Merge :: TaskType
pattern TaskType_Merge = TaskType' "Merge"

pattern TaskType_Truncate :: TaskType
pattern TaskType_Truncate = TaskType' "Truncate"

pattern TaskType_Validate :: TaskType
pattern TaskType_Validate = TaskType' "Validate"

{-# COMPLETE
  TaskType_Arithmetic,
  TaskType_Filter,
  TaskType_Map,
  TaskType_Mask,
  TaskType_Merge,
  TaskType_Truncate,
  TaskType_Validate,
  TaskType'
  #-}
