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
-- Module      : Amazonka.IoTEvents.Types.NotificationTargetActions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTEvents.Types.NotificationTargetActions where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.IoTEvents.Types.LambdaAction
import qualified Amazonka.Prelude as Prelude

-- | Specifies an AWS Lambda function to manage alarm notifications. You can
-- create one or use the
-- <https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html AWS Lambda function provided by AWS IoT Events>.
--
-- /See:/ 'newNotificationTargetActions' smart constructor.
data NotificationTargetActions = NotificationTargetActions'
  { lambdaAction :: Prelude.Maybe LambdaAction
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NotificationTargetActions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lambdaAction', 'notificationTargetActions_lambdaAction' - Undocumented member.
newNotificationTargetActions ::
  NotificationTargetActions
newNotificationTargetActions =
  NotificationTargetActions'
    { lambdaAction =
        Prelude.Nothing
    }

-- | Undocumented member.
notificationTargetActions_lambdaAction :: Lens.Lens' NotificationTargetActions (Prelude.Maybe LambdaAction)
notificationTargetActions_lambdaAction = Lens.lens (\NotificationTargetActions' {lambdaAction} -> lambdaAction) (\s@NotificationTargetActions' {} a -> s {lambdaAction = a} :: NotificationTargetActions)

instance Data.FromJSON NotificationTargetActions where
  parseJSON =
    Data.withObject
      "NotificationTargetActions"
      ( \x ->
          NotificationTargetActions'
            Prelude.<$> (x Data..:? "lambdaAction")
      )

instance Prelude.Hashable NotificationTargetActions where
  hashWithSalt _salt NotificationTargetActions' {..} =
    _salt `Prelude.hashWithSalt` lambdaAction

instance Prelude.NFData NotificationTargetActions where
  rnf NotificationTargetActions' {..} =
    Prelude.rnf lambdaAction

instance Data.ToJSON NotificationTargetActions where
  toJSON NotificationTargetActions' {..} =
    Data.object
      ( Prelude.catMaybes
          [("lambdaAction" Data..=) Prelude.<$> lambdaAction]
      )
