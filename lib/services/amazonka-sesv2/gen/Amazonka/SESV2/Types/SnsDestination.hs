{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SESV2.Types.SnsDestination
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SESV2.Types.SnsDestination where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | An object that defines an Amazon SNS destination for email events. You
-- can use Amazon SNS to send notification when certain email events occur.
--
-- /See:/ 'newSnsDestination' smart constructor.
data SnsDestination = SnsDestination'
  { -- | The Amazon Resource Name (ARN) of the Amazon SNS topic to publish email
    -- events to. For more information about Amazon SNS topics, see the
    -- <https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html Amazon SNS Developer Guide>.
    topicArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SnsDestination' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'topicArn', 'snsDestination_topicArn' - The Amazon Resource Name (ARN) of the Amazon SNS topic to publish email
-- events to. For more information about Amazon SNS topics, see the
-- <https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html Amazon SNS Developer Guide>.
newSnsDestination ::
  -- | 'topicArn'
  Prelude.Text ->
  SnsDestination
newSnsDestination pTopicArn_ =
  SnsDestination' {topicArn = pTopicArn_}

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic to publish email
-- events to. For more information about Amazon SNS topics, see the
-- <https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html Amazon SNS Developer Guide>.
snsDestination_topicArn :: Lens.Lens' SnsDestination Prelude.Text
snsDestination_topicArn = Lens.lens (\SnsDestination' {topicArn} -> topicArn) (\s@SnsDestination' {} a -> s {topicArn = a} :: SnsDestination)

instance Data.FromJSON SnsDestination where
  parseJSON =
    Data.withObject
      "SnsDestination"
      ( \x ->
          SnsDestination' Prelude.<$> (x Data..: "TopicArn")
      )

instance Prelude.Hashable SnsDestination where
  hashWithSalt _salt SnsDestination' {..} =
    _salt `Prelude.hashWithSalt` topicArn

instance Prelude.NFData SnsDestination where
  rnf SnsDestination' {..} = Prelude.rnf topicArn

instance Data.ToJSON SnsDestination where
  toJSON SnsDestination' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("TopicArn" Data..= topicArn)]
      )
