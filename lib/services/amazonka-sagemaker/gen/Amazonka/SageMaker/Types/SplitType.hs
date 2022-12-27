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
-- Module      : Amazonka.SageMaker.Types.SplitType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.SplitType
  ( SplitType
      ( ..,
        SplitType_Line,
        SplitType_None,
        SplitType_RecordIO,
        SplitType_TFRecord
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype SplitType = SplitType'
  { fromSplitType ::
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

pattern SplitType_Line :: SplitType
pattern SplitType_Line = SplitType' "Line"

pattern SplitType_None :: SplitType
pattern SplitType_None = SplitType' "None"

pattern SplitType_RecordIO :: SplitType
pattern SplitType_RecordIO = SplitType' "RecordIO"

pattern SplitType_TFRecord :: SplitType
pattern SplitType_TFRecord = SplitType' "TFRecord"

{-# COMPLETE
  SplitType_Line,
  SplitType_None,
  SplitType_RecordIO,
  SplitType_TFRecord,
  SplitType'
  #-}
