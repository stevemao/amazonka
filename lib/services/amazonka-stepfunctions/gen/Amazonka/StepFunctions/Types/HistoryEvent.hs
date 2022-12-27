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
-- Module      : Amazonka.StepFunctions.Types.HistoryEvent
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.StepFunctions.Types.HistoryEvent where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.StepFunctions.Types.ActivityFailedEventDetails
import Amazonka.StepFunctions.Types.ActivityScheduleFailedEventDetails
import Amazonka.StepFunctions.Types.ActivityScheduledEventDetails
import Amazonka.StepFunctions.Types.ActivityStartedEventDetails
import Amazonka.StepFunctions.Types.ActivitySucceededEventDetails
import Amazonka.StepFunctions.Types.ActivityTimedOutEventDetails
import Amazonka.StepFunctions.Types.ExecutionAbortedEventDetails
import Amazonka.StepFunctions.Types.ExecutionFailedEventDetails
import Amazonka.StepFunctions.Types.ExecutionStartedEventDetails
import Amazonka.StepFunctions.Types.ExecutionSucceededEventDetails
import Amazonka.StepFunctions.Types.ExecutionTimedOutEventDetails
import Amazonka.StepFunctions.Types.HistoryEventType
import Amazonka.StepFunctions.Types.LambdaFunctionFailedEventDetails
import Amazonka.StepFunctions.Types.LambdaFunctionScheduleFailedEventDetails
import Amazonka.StepFunctions.Types.LambdaFunctionScheduledEventDetails
import Amazonka.StepFunctions.Types.LambdaFunctionStartFailedEventDetails
import Amazonka.StepFunctions.Types.LambdaFunctionSucceededEventDetails
import Amazonka.StepFunctions.Types.LambdaFunctionTimedOutEventDetails
import Amazonka.StepFunctions.Types.MapIterationEventDetails
import Amazonka.StepFunctions.Types.MapRunFailedEventDetails
import Amazonka.StepFunctions.Types.MapRunStartedEventDetails
import Amazonka.StepFunctions.Types.MapStateStartedEventDetails
import Amazonka.StepFunctions.Types.StateEnteredEventDetails
import Amazonka.StepFunctions.Types.StateExitedEventDetails
import Amazonka.StepFunctions.Types.TaskFailedEventDetails
import Amazonka.StepFunctions.Types.TaskScheduledEventDetails
import Amazonka.StepFunctions.Types.TaskStartFailedEventDetails
import Amazonka.StepFunctions.Types.TaskStartedEventDetails
import Amazonka.StepFunctions.Types.TaskSubmitFailedEventDetails
import Amazonka.StepFunctions.Types.TaskSubmittedEventDetails
import Amazonka.StepFunctions.Types.TaskSucceededEventDetails
import Amazonka.StepFunctions.Types.TaskTimedOutEventDetails

-- | Contains details about the events of an execution.
--
-- /See:/ 'newHistoryEvent' smart constructor.
data HistoryEvent = HistoryEvent'
  { activityFailedEventDetails :: Prelude.Maybe ActivityFailedEventDetails,
    -- | Contains details about an activity schedule event that failed during an
    -- execution.
    activityScheduleFailedEventDetails :: Prelude.Maybe ActivityScheduleFailedEventDetails,
    activityScheduledEventDetails :: Prelude.Maybe ActivityScheduledEventDetails,
    activityStartedEventDetails :: Prelude.Maybe ActivityStartedEventDetails,
    activitySucceededEventDetails :: Prelude.Maybe ActivitySucceededEventDetails,
    activityTimedOutEventDetails :: Prelude.Maybe ActivityTimedOutEventDetails,
    executionAbortedEventDetails :: Prelude.Maybe ExecutionAbortedEventDetails,
    executionFailedEventDetails :: Prelude.Maybe ExecutionFailedEventDetails,
    executionStartedEventDetails :: Prelude.Maybe ExecutionStartedEventDetails,
    executionSucceededEventDetails :: Prelude.Maybe ExecutionSucceededEventDetails,
    executionTimedOutEventDetails :: Prelude.Maybe ExecutionTimedOutEventDetails,
    lambdaFunctionFailedEventDetails :: Prelude.Maybe LambdaFunctionFailedEventDetails,
    lambdaFunctionScheduleFailedEventDetails :: Prelude.Maybe LambdaFunctionScheduleFailedEventDetails,
    lambdaFunctionScheduledEventDetails :: Prelude.Maybe LambdaFunctionScheduledEventDetails,
    -- | Contains details about a lambda function that failed to start during an
    -- execution.
    lambdaFunctionStartFailedEventDetails :: Prelude.Maybe LambdaFunctionStartFailedEventDetails,
    -- | Contains details about a Lambda function that terminated successfully
    -- during an execution.
    lambdaFunctionSucceededEventDetails :: Prelude.Maybe LambdaFunctionSucceededEventDetails,
    lambdaFunctionTimedOutEventDetails :: Prelude.Maybe LambdaFunctionTimedOutEventDetails,
    -- | Contains details about an iteration of a Map state that was aborted.
    mapIterationAbortedEventDetails :: Prelude.Maybe MapIterationEventDetails,
    -- | Contains details about an iteration of a Map state that failed.
    mapIterationFailedEventDetails :: Prelude.Maybe MapIterationEventDetails,
    -- | Contains details about an iteration of a Map state that was started.
    mapIterationStartedEventDetails :: Prelude.Maybe MapIterationEventDetails,
    -- | Contains details about an iteration of a Map state that succeeded.
    mapIterationSucceededEventDetails :: Prelude.Maybe MapIterationEventDetails,
    -- | Contains error and cause details about a Map Run that failed.
    mapRunFailedEventDetails :: Prelude.Maybe MapRunFailedEventDetails,
    -- | Contains details, such as @mapRunArn@, and the start date and time of a
    -- Map Run. @mapRunArn@ is the Amazon Resource Name (ARN) of the Map Run
    -- that was started.
    mapRunStartedEventDetails :: Prelude.Maybe MapRunStartedEventDetails,
    -- | Contains details about Map state that was started.
    mapStateStartedEventDetails :: Prelude.Maybe MapStateStartedEventDetails,
    -- | The id of the previous event.
    previousEventId :: Prelude.Maybe Prelude.Integer,
    stateEnteredEventDetails :: Prelude.Maybe StateEnteredEventDetails,
    stateExitedEventDetails :: Prelude.Maybe StateExitedEventDetails,
    -- | Contains details about the failure of a task.
    taskFailedEventDetails :: Prelude.Maybe TaskFailedEventDetails,
    -- | Contains details about a task that was scheduled.
    taskScheduledEventDetails :: Prelude.Maybe TaskScheduledEventDetails,
    -- | Contains details about a task that failed to start.
    taskStartFailedEventDetails :: Prelude.Maybe TaskStartFailedEventDetails,
    -- | Contains details about a task that was started.
    taskStartedEventDetails :: Prelude.Maybe TaskStartedEventDetails,
    -- | Contains details about a task that where the submit failed.
    taskSubmitFailedEventDetails :: Prelude.Maybe TaskSubmitFailedEventDetails,
    -- | Contains details about a submitted task.
    taskSubmittedEventDetails :: Prelude.Maybe TaskSubmittedEventDetails,
    -- | Contains details about a task that succeeded.
    taskSucceededEventDetails :: Prelude.Maybe TaskSucceededEventDetails,
    -- | Contains details about a task that timed out.
    taskTimedOutEventDetails :: Prelude.Maybe TaskTimedOutEventDetails,
    -- | The date and time the event occurred.
    timestamp :: Data.POSIX,
    -- | The type of the event.
    type' :: HistoryEventType,
    -- | The id of the event. Events are numbered sequentially, starting at one.
    id :: Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HistoryEvent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'activityFailedEventDetails', 'historyEvent_activityFailedEventDetails' - Undocumented member.
--
-- 'activityScheduleFailedEventDetails', 'historyEvent_activityScheduleFailedEventDetails' - Contains details about an activity schedule event that failed during an
-- execution.
--
-- 'activityScheduledEventDetails', 'historyEvent_activityScheduledEventDetails' - Undocumented member.
--
-- 'activityStartedEventDetails', 'historyEvent_activityStartedEventDetails' - Undocumented member.
--
-- 'activitySucceededEventDetails', 'historyEvent_activitySucceededEventDetails' - Undocumented member.
--
-- 'activityTimedOutEventDetails', 'historyEvent_activityTimedOutEventDetails' - Undocumented member.
--
-- 'executionAbortedEventDetails', 'historyEvent_executionAbortedEventDetails' - Undocumented member.
--
-- 'executionFailedEventDetails', 'historyEvent_executionFailedEventDetails' - Undocumented member.
--
-- 'executionStartedEventDetails', 'historyEvent_executionStartedEventDetails' - Undocumented member.
--
-- 'executionSucceededEventDetails', 'historyEvent_executionSucceededEventDetails' - Undocumented member.
--
-- 'executionTimedOutEventDetails', 'historyEvent_executionTimedOutEventDetails' - Undocumented member.
--
-- 'lambdaFunctionFailedEventDetails', 'historyEvent_lambdaFunctionFailedEventDetails' - Undocumented member.
--
-- 'lambdaFunctionScheduleFailedEventDetails', 'historyEvent_lambdaFunctionScheduleFailedEventDetails' - Undocumented member.
--
-- 'lambdaFunctionScheduledEventDetails', 'historyEvent_lambdaFunctionScheduledEventDetails' - Undocumented member.
--
-- 'lambdaFunctionStartFailedEventDetails', 'historyEvent_lambdaFunctionStartFailedEventDetails' - Contains details about a lambda function that failed to start during an
-- execution.
--
-- 'lambdaFunctionSucceededEventDetails', 'historyEvent_lambdaFunctionSucceededEventDetails' - Contains details about a Lambda function that terminated successfully
-- during an execution.
--
-- 'lambdaFunctionTimedOutEventDetails', 'historyEvent_lambdaFunctionTimedOutEventDetails' - Undocumented member.
--
-- 'mapIterationAbortedEventDetails', 'historyEvent_mapIterationAbortedEventDetails' - Contains details about an iteration of a Map state that was aborted.
--
-- 'mapIterationFailedEventDetails', 'historyEvent_mapIterationFailedEventDetails' - Contains details about an iteration of a Map state that failed.
--
-- 'mapIterationStartedEventDetails', 'historyEvent_mapIterationStartedEventDetails' - Contains details about an iteration of a Map state that was started.
--
-- 'mapIterationSucceededEventDetails', 'historyEvent_mapIterationSucceededEventDetails' - Contains details about an iteration of a Map state that succeeded.
--
-- 'mapRunFailedEventDetails', 'historyEvent_mapRunFailedEventDetails' - Contains error and cause details about a Map Run that failed.
--
-- 'mapRunStartedEventDetails', 'historyEvent_mapRunStartedEventDetails' - Contains details, such as @mapRunArn@, and the start date and time of a
-- Map Run. @mapRunArn@ is the Amazon Resource Name (ARN) of the Map Run
-- that was started.
--
-- 'mapStateStartedEventDetails', 'historyEvent_mapStateStartedEventDetails' - Contains details about Map state that was started.
--
-- 'previousEventId', 'historyEvent_previousEventId' - The id of the previous event.
--
-- 'stateEnteredEventDetails', 'historyEvent_stateEnteredEventDetails' - Undocumented member.
--
-- 'stateExitedEventDetails', 'historyEvent_stateExitedEventDetails' - Undocumented member.
--
-- 'taskFailedEventDetails', 'historyEvent_taskFailedEventDetails' - Contains details about the failure of a task.
--
-- 'taskScheduledEventDetails', 'historyEvent_taskScheduledEventDetails' - Contains details about a task that was scheduled.
--
-- 'taskStartFailedEventDetails', 'historyEvent_taskStartFailedEventDetails' - Contains details about a task that failed to start.
--
-- 'taskStartedEventDetails', 'historyEvent_taskStartedEventDetails' - Contains details about a task that was started.
--
-- 'taskSubmitFailedEventDetails', 'historyEvent_taskSubmitFailedEventDetails' - Contains details about a task that where the submit failed.
--
-- 'taskSubmittedEventDetails', 'historyEvent_taskSubmittedEventDetails' - Contains details about a submitted task.
--
-- 'taskSucceededEventDetails', 'historyEvent_taskSucceededEventDetails' - Contains details about a task that succeeded.
--
-- 'taskTimedOutEventDetails', 'historyEvent_taskTimedOutEventDetails' - Contains details about a task that timed out.
--
-- 'timestamp', 'historyEvent_timestamp' - The date and time the event occurred.
--
-- 'type'', 'historyEvent_type' - The type of the event.
--
-- 'id', 'historyEvent_id' - The id of the event. Events are numbered sequentially, starting at one.
newHistoryEvent ::
  -- | 'timestamp'
  Prelude.UTCTime ->
  -- | 'type''
  HistoryEventType ->
  -- | 'id'
  Prelude.Integer ->
  HistoryEvent
newHistoryEvent pTimestamp_ pType_ pId_ =
  HistoryEvent'
    { activityFailedEventDetails =
        Prelude.Nothing,
      activityScheduleFailedEventDetails = Prelude.Nothing,
      activityScheduledEventDetails = Prelude.Nothing,
      activityStartedEventDetails = Prelude.Nothing,
      activitySucceededEventDetails = Prelude.Nothing,
      activityTimedOutEventDetails = Prelude.Nothing,
      executionAbortedEventDetails = Prelude.Nothing,
      executionFailedEventDetails = Prelude.Nothing,
      executionStartedEventDetails = Prelude.Nothing,
      executionSucceededEventDetails = Prelude.Nothing,
      executionTimedOutEventDetails = Prelude.Nothing,
      lambdaFunctionFailedEventDetails = Prelude.Nothing,
      lambdaFunctionScheduleFailedEventDetails =
        Prelude.Nothing,
      lambdaFunctionScheduledEventDetails =
        Prelude.Nothing,
      lambdaFunctionStartFailedEventDetails =
        Prelude.Nothing,
      lambdaFunctionSucceededEventDetails =
        Prelude.Nothing,
      lambdaFunctionTimedOutEventDetails = Prelude.Nothing,
      mapIterationAbortedEventDetails = Prelude.Nothing,
      mapIterationFailedEventDetails = Prelude.Nothing,
      mapIterationStartedEventDetails = Prelude.Nothing,
      mapIterationSucceededEventDetails = Prelude.Nothing,
      mapRunFailedEventDetails = Prelude.Nothing,
      mapRunStartedEventDetails = Prelude.Nothing,
      mapStateStartedEventDetails = Prelude.Nothing,
      previousEventId = Prelude.Nothing,
      stateEnteredEventDetails = Prelude.Nothing,
      stateExitedEventDetails = Prelude.Nothing,
      taskFailedEventDetails = Prelude.Nothing,
      taskScheduledEventDetails = Prelude.Nothing,
      taskStartFailedEventDetails = Prelude.Nothing,
      taskStartedEventDetails = Prelude.Nothing,
      taskSubmitFailedEventDetails = Prelude.Nothing,
      taskSubmittedEventDetails = Prelude.Nothing,
      taskSucceededEventDetails = Prelude.Nothing,
      taskTimedOutEventDetails = Prelude.Nothing,
      timestamp = Data._Time Lens.# pTimestamp_,
      type' = pType_,
      id = pId_
    }

-- | Undocumented member.
historyEvent_activityFailedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe ActivityFailedEventDetails)
historyEvent_activityFailedEventDetails = Lens.lens (\HistoryEvent' {activityFailedEventDetails} -> activityFailedEventDetails) (\s@HistoryEvent' {} a -> s {activityFailedEventDetails = a} :: HistoryEvent)

-- | Contains details about an activity schedule event that failed during an
-- execution.
historyEvent_activityScheduleFailedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe ActivityScheduleFailedEventDetails)
historyEvent_activityScheduleFailedEventDetails = Lens.lens (\HistoryEvent' {activityScheduleFailedEventDetails} -> activityScheduleFailedEventDetails) (\s@HistoryEvent' {} a -> s {activityScheduleFailedEventDetails = a} :: HistoryEvent)

-- | Undocumented member.
historyEvent_activityScheduledEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe ActivityScheduledEventDetails)
historyEvent_activityScheduledEventDetails = Lens.lens (\HistoryEvent' {activityScheduledEventDetails} -> activityScheduledEventDetails) (\s@HistoryEvent' {} a -> s {activityScheduledEventDetails = a} :: HistoryEvent)

-- | Undocumented member.
historyEvent_activityStartedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe ActivityStartedEventDetails)
historyEvent_activityStartedEventDetails = Lens.lens (\HistoryEvent' {activityStartedEventDetails} -> activityStartedEventDetails) (\s@HistoryEvent' {} a -> s {activityStartedEventDetails = a} :: HistoryEvent)

-- | Undocumented member.
historyEvent_activitySucceededEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe ActivitySucceededEventDetails)
historyEvent_activitySucceededEventDetails = Lens.lens (\HistoryEvent' {activitySucceededEventDetails} -> activitySucceededEventDetails) (\s@HistoryEvent' {} a -> s {activitySucceededEventDetails = a} :: HistoryEvent)

-- | Undocumented member.
historyEvent_activityTimedOutEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe ActivityTimedOutEventDetails)
historyEvent_activityTimedOutEventDetails = Lens.lens (\HistoryEvent' {activityTimedOutEventDetails} -> activityTimedOutEventDetails) (\s@HistoryEvent' {} a -> s {activityTimedOutEventDetails = a} :: HistoryEvent)

-- | Undocumented member.
historyEvent_executionAbortedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe ExecutionAbortedEventDetails)
historyEvent_executionAbortedEventDetails = Lens.lens (\HistoryEvent' {executionAbortedEventDetails} -> executionAbortedEventDetails) (\s@HistoryEvent' {} a -> s {executionAbortedEventDetails = a} :: HistoryEvent)

-- | Undocumented member.
historyEvent_executionFailedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe ExecutionFailedEventDetails)
historyEvent_executionFailedEventDetails = Lens.lens (\HistoryEvent' {executionFailedEventDetails} -> executionFailedEventDetails) (\s@HistoryEvent' {} a -> s {executionFailedEventDetails = a} :: HistoryEvent)

-- | Undocumented member.
historyEvent_executionStartedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe ExecutionStartedEventDetails)
historyEvent_executionStartedEventDetails = Lens.lens (\HistoryEvent' {executionStartedEventDetails} -> executionStartedEventDetails) (\s@HistoryEvent' {} a -> s {executionStartedEventDetails = a} :: HistoryEvent)

-- | Undocumented member.
historyEvent_executionSucceededEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe ExecutionSucceededEventDetails)
historyEvent_executionSucceededEventDetails = Lens.lens (\HistoryEvent' {executionSucceededEventDetails} -> executionSucceededEventDetails) (\s@HistoryEvent' {} a -> s {executionSucceededEventDetails = a} :: HistoryEvent)

-- | Undocumented member.
historyEvent_executionTimedOutEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe ExecutionTimedOutEventDetails)
historyEvent_executionTimedOutEventDetails = Lens.lens (\HistoryEvent' {executionTimedOutEventDetails} -> executionTimedOutEventDetails) (\s@HistoryEvent' {} a -> s {executionTimedOutEventDetails = a} :: HistoryEvent)

-- | Undocumented member.
historyEvent_lambdaFunctionFailedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe LambdaFunctionFailedEventDetails)
historyEvent_lambdaFunctionFailedEventDetails = Lens.lens (\HistoryEvent' {lambdaFunctionFailedEventDetails} -> lambdaFunctionFailedEventDetails) (\s@HistoryEvent' {} a -> s {lambdaFunctionFailedEventDetails = a} :: HistoryEvent)

-- | Undocumented member.
historyEvent_lambdaFunctionScheduleFailedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe LambdaFunctionScheduleFailedEventDetails)
historyEvent_lambdaFunctionScheduleFailedEventDetails = Lens.lens (\HistoryEvent' {lambdaFunctionScheduleFailedEventDetails} -> lambdaFunctionScheduleFailedEventDetails) (\s@HistoryEvent' {} a -> s {lambdaFunctionScheduleFailedEventDetails = a} :: HistoryEvent)

-- | Undocumented member.
historyEvent_lambdaFunctionScheduledEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe LambdaFunctionScheduledEventDetails)
historyEvent_lambdaFunctionScheduledEventDetails = Lens.lens (\HistoryEvent' {lambdaFunctionScheduledEventDetails} -> lambdaFunctionScheduledEventDetails) (\s@HistoryEvent' {} a -> s {lambdaFunctionScheduledEventDetails = a} :: HistoryEvent)

-- | Contains details about a lambda function that failed to start during an
-- execution.
historyEvent_lambdaFunctionStartFailedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe LambdaFunctionStartFailedEventDetails)
historyEvent_lambdaFunctionStartFailedEventDetails = Lens.lens (\HistoryEvent' {lambdaFunctionStartFailedEventDetails} -> lambdaFunctionStartFailedEventDetails) (\s@HistoryEvent' {} a -> s {lambdaFunctionStartFailedEventDetails = a} :: HistoryEvent)

-- | Contains details about a Lambda function that terminated successfully
-- during an execution.
historyEvent_lambdaFunctionSucceededEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe LambdaFunctionSucceededEventDetails)
historyEvent_lambdaFunctionSucceededEventDetails = Lens.lens (\HistoryEvent' {lambdaFunctionSucceededEventDetails} -> lambdaFunctionSucceededEventDetails) (\s@HistoryEvent' {} a -> s {lambdaFunctionSucceededEventDetails = a} :: HistoryEvent)

-- | Undocumented member.
historyEvent_lambdaFunctionTimedOutEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe LambdaFunctionTimedOutEventDetails)
historyEvent_lambdaFunctionTimedOutEventDetails = Lens.lens (\HistoryEvent' {lambdaFunctionTimedOutEventDetails} -> lambdaFunctionTimedOutEventDetails) (\s@HistoryEvent' {} a -> s {lambdaFunctionTimedOutEventDetails = a} :: HistoryEvent)

-- | Contains details about an iteration of a Map state that was aborted.
historyEvent_mapIterationAbortedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe MapIterationEventDetails)
historyEvent_mapIterationAbortedEventDetails = Lens.lens (\HistoryEvent' {mapIterationAbortedEventDetails} -> mapIterationAbortedEventDetails) (\s@HistoryEvent' {} a -> s {mapIterationAbortedEventDetails = a} :: HistoryEvent)

-- | Contains details about an iteration of a Map state that failed.
historyEvent_mapIterationFailedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe MapIterationEventDetails)
historyEvent_mapIterationFailedEventDetails = Lens.lens (\HistoryEvent' {mapIterationFailedEventDetails} -> mapIterationFailedEventDetails) (\s@HistoryEvent' {} a -> s {mapIterationFailedEventDetails = a} :: HistoryEvent)

-- | Contains details about an iteration of a Map state that was started.
historyEvent_mapIterationStartedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe MapIterationEventDetails)
historyEvent_mapIterationStartedEventDetails = Lens.lens (\HistoryEvent' {mapIterationStartedEventDetails} -> mapIterationStartedEventDetails) (\s@HistoryEvent' {} a -> s {mapIterationStartedEventDetails = a} :: HistoryEvent)

-- | Contains details about an iteration of a Map state that succeeded.
historyEvent_mapIterationSucceededEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe MapIterationEventDetails)
historyEvent_mapIterationSucceededEventDetails = Lens.lens (\HistoryEvent' {mapIterationSucceededEventDetails} -> mapIterationSucceededEventDetails) (\s@HistoryEvent' {} a -> s {mapIterationSucceededEventDetails = a} :: HistoryEvent)

-- | Contains error and cause details about a Map Run that failed.
historyEvent_mapRunFailedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe MapRunFailedEventDetails)
historyEvent_mapRunFailedEventDetails = Lens.lens (\HistoryEvent' {mapRunFailedEventDetails} -> mapRunFailedEventDetails) (\s@HistoryEvent' {} a -> s {mapRunFailedEventDetails = a} :: HistoryEvent)

-- | Contains details, such as @mapRunArn@, and the start date and time of a
-- Map Run. @mapRunArn@ is the Amazon Resource Name (ARN) of the Map Run
-- that was started.
historyEvent_mapRunStartedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe MapRunStartedEventDetails)
historyEvent_mapRunStartedEventDetails = Lens.lens (\HistoryEvent' {mapRunStartedEventDetails} -> mapRunStartedEventDetails) (\s@HistoryEvent' {} a -> s {mapRunStartedEventDetails = a} :: HistoryEvent)

-- | Contains details about Map state that was started.
historyEvent_mapStateStartedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe MapStateStartedEventDetails)
historyEvent_mapStateStartedEventDetails = Lens.lens (\HistoryEvent' {mapStateStartedEventDetails} -> mapStateStartedEventDetails) (\s@HistoryEvent' {} a -> s {mapStateStartedEventDetails = a} :: HistoryEvent)

-- | The id of the previous event.
historyEvent_previousEventId :: Lens.Lens' HistoryEvent (Prelude.Maybe Prelude.Integer)
historyEvent_previousEventId = Lens.lens (\HistoryEvent' {previousEventId} -> previousEventId) (\s@HistoryEvent' {} a -> s {previousEventId = a} :: HistoryEvent)

-- | Undocumented member.
historyEvent_stateEnteredEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe StateEnteredEventDetails)
historyEvent_stateEnteredEventDetails = Lens.lens (\HistoryEvent' {stateEnteredEventDetails} -> stateEnteredEventDetails) (\s@HistoryEvent' {} a -> s {stateEnteredEventDetails = a} :: HistoryEvent)

-- | Undocumented member.
historyEvent_stateExitedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe StateExitedEventDetails)
historyEvent_stateExitedEventDetails = Lens.lens (\HistoryEvent' {stateExitedEventDetails} -> stateExitedEventDetails) (\s@HistoryEvent' {} a -> s {stateExitedEventDetails = a} :: HistoryEvent)

-- | Contains details about the failure of a task.
historyEvent_taskFailedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe TaskFailedEventDetails)
historyEvent_taskFailedEventDetails = Lens.lens (\HistoryEvent' {taskFailedEventDetails} -> taskFailedEventDetails) (\s@HistoryEvent' {} a -> s {taskFailedEventDetails = a} :: HistoryEvent)

-- | Contains details about a task that was scheduled.
historyEvent_taskScheduledEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe TaskScheduledEventDetails)
historyEvent_taskScheduledEventDetails = Lens.lens (\HistoryEvent' {taskScheduledEventDetails} -> taskScheduledEventDetails) (\s@HistoryEvent' {} a -> s {taskScheduledEventDetails = a} :: HistoryEvent)

-- | Contains details about a task that failed to start.
historyEvent_taskStartFailedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe TaskStartFailedEventDetails)
historyEvent_taskStartFailedEventDetails = Lens.lens (\HistoryEvent' {taskStartFailedEventDetails} -> taskStartFailedEventDetails) (\s@HistoryEvent' {} a -> s {taskStartFailedEventDetails = a} :: HistoryEvent)

-- | Contains details about a task that was started.
historyEvent_taskStartedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe TaskStartedEventDetails)
historyEvent_taskStartedEventDetails = Lens.lens (\HistoryEvent' {taskStartedEventDetails} -> taskStartedEventDetails) (\s@HistoryEvent' {} a -> s {taskStartedEventDetails = a} :: HistoryEvent)

-- | Contains details about a task that where the submit failed.
historyEvent_taskSubmitFailedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe TaskSubmitFailedEventDetails)
historyEvent_taskSubmitFailedEventDetails = Lens.lens (\HistoryEvent' {taskSubmitFailedEventDetails} -> taskSubmitFailedEventDetails) (\s@HistoryEvent' {} a -> s {taskSubmitFailedEventDetails = a} :: HistoryEvent)

-- | Contains details about a submitted task.
historyEvent_taskSubmittedEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe TaskSubmittedEventDetails)
historyEvent_taskSubmittedEventDetails = Lens.lens (\HistoryEvent' {taskSubmittedEventDetails} -> taskSubmittedEventDetails) (\s@HistoryEvent' {} a -> s {taskSubmittedEventDetails = a} :: HistoryEvent)

-- | Contains details about a task that succeeded.
historyEvent_taskSucceededEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe TaskSucceededEventDetails)
historyEvent_taskSucceededEventDetails = Lens.lens (\HistoryEvent' {taskSucceededEventDetails} -> taskSucceededEventDetails) (\s@HistoryEvent' {} a -> s {taskSucceededEventDetails = a} :: HistoryEvent)

-- | Contains details about a task that timed out.
historyEvent_taskTimedOutEventDetails :: Lens.Lens' HistoryEvent (Prelude.Maybe TaskTimedOutEventDetails)
historyEvent_taskTimedOutEventDetails = Lens.lens (\HistoryEvent' {taskTimedOutEventDetails} -> taskTimedOutEventDetails) (\s@HistoryEvent' {} a -> s {taskTimedOutEventDetails = a} :: HistoryEvent)

-- | The date and time the event occurred.
historyEvent_timestamp :: Lens.Lens' HistoryEvent Prelude.UTCTime
historyEvent_timestamp = Lens.lens (\HistoryEvent' {timestamp} -> timestamp) (\s@HistoryEvent' {} a -> s {timestamp = a} :: HistoryEvent) Prelude.. Data._Time

-- | The type of the event.
historyEvent_type :: Lens.Lens' HistoryEvent HistoryEventType
historyEvent_type = Lens.lens (\HistoryEvent' {type'} -> type') (\s@HistoryEvent' {} a -> s {type' = a} :: HistoryEvent)

-- | The id of the event. Events are numbered sequentially, starting at one.
historyEvent_id :: Lens.Lens' HistoryEvent Prelude.Integer
historyEvent_id = Lens.lens (\HistoryEvent' {id} -> id) (\s@HistoryEvent' {} a -> s {id = a} :: HistoryEvent)

instance Data.FromJSON HistoryEvent where
  parseJSON =
    Data.withObject
      "HistoryEvent"
      ( \x ->
          HistoryEvent'
            Prelude.<$> (x Data..:? "activityFailedEventDetails")
            Prelude.<*> (x Data..:? "activityScheduleFailedEventDetails")
            Prelude.<*> (x Data..:? "activityScheduledEventDetails")
            Prelude.<*> (x Data..:? "activityStartedEventDetails")
            Prelude.<*> (x Data..:? "activitySucceededEventDetails")
            Prelude.<*> (x Data..:? "activityTimedOutEventDetails")
            Prelude.<*> (x Data..:? "executionAbortedEventDetails")
            Prelude.<*> (x Data..:? "executionFailedEventDetails")
            Prelude.<*> (x Data..:? "executionStartedEventDetails")
            Prelude.<*> (x Data..:? "executionSucceededEventDetails")
            Prelude.<*> (x Data..:? "executionTimedOutEventDetails")
            Prelude.<*> (x Data..:? "lambdaFunctionFailedEventDetails")
            Prelude.<*> ( x
                            Data..:? "lambdaFunctionScheduleFailedEventDetails"
                        )
            Prelude.<*> (x Data..:? "lambdaFunctionScheduledEventDetails")
            Prelude.<*> (x Data..:? "lambdaFunctionStartFailedEventDetails")
            Prelude.<*> (x Data..:? "lambdaFunctionSucceededEventDetails")
            Prelude.<*> (x Data..:? "lambdaFunctionTimedOutEventDetails")
            Prelude.<*> (x Data..:? "mapIterationAbortedEventDetails")
            Prelude.<*> (x Data..:? "mapIterationFailedEventDetails")
            Prelude.<*> (x Data..:? "mapIterationStartedEventDetails")
            Prelude.<*> (x Data..:? "mapIterationSucceededEventDetails")
            Prelude.<*> (x Data..:? "mapRunFailedEventDetails")
            Prelude.<*> (x Data..:? "mapRunStartedEventDetails")
            Prelude.<*> (x Data..:? "mapStateStartedEventDetails")
            Prelude.<*> (x Data..:? "previousEventId")
            Prelude.<*> (x Data..:? "stateEnteredEventDetails")
            Prelude.<*> (x Data..:? "stateExitedEventDetails")
            Prelude.<*> (x Data..:? "taskFailedEventDetails")
            Prelude.<*> (x Data..:? "taskScheduledEventDetails")
            Prelude.<*> (x Data..:? "taskStartFailedEventDetails")
            Prelude.<*> (x Data..:? "taskStartedEventDetails")
            Prelude.<*> (x Data..:? "taskSubmitFailedEventDetails")
            Prelude.<*> (x Data..:? "taskSubmittedEventDetails")
            Prelude.<*> (x Data..:? "taskSucceededEventDetails")
            Prelude.<*> (x Data..:? "taskTimedOutEventDetails")
            Prelude.<*> (x Data..: "timestamp")
            Prelude.<*> (x Data..: "type")
            Prelude.<*> (x Data..: "id")
      )

instance Prelude.Hashable HistoryEvent where
  hashWithSalt _salt HistoryEvent' {..} =
    _salt
      `Prelude.hashWithSalt` activityFailedEventDetails
      `Prelude.hashWithSalt` activityScheduleFailedEventDetails
      `Prelude.hashWithSalt` activityScheduledEventDetails
      `Prelude.hashWithSalt` activityStartedEventDetails
      `Prelude.hashWithSalt` activitySucceededEventDetails
      `Prelude.hashWithSalt` activityTimedOutEventDetails
      `Prelude.hashWithSalt` executionAbortedEventDetails
      `Prelude.hashWithSalt` executionFailedEventDetails
      `Prelude.hashWithSalt` executionStartedEventDetails
      `Prelude.hashWithSalt` executionSucceededEventDetails
      `Prelude.hashWithSalt` executionTimedOutEventDetails
      `Prelude.hashWithSalt` lambdaFunctionFailedEventDetails
      `Prelude.hashWithSalt` lambdaFunctionScheduleFailedEventDetails
      `Prelude.hashWithSalt` lambdaFunctionScheduledEventDetails
      `Prelude.hashWithSalt` lambdaFunctionStartFailedEventDetails
      `Prelude.hashWithSalt` lambdaFunctionSucceededEventDetails
      `Prelude.hashWithSalt` lambdaFunctionTimedOutEventDetails
      `Prelude.hashWithSalt` mapIterationAbortedEventDetails
      `Prelude.hashWithSalt` mapIterationFailedEventDetails
      `Prelude.hashWithSalt` mapIterationStartedEventDetails
      `Prelude.hashWithSalt` mapIterationSucceededEventDetails
      `Prelude.hashWithSalt` mapRunFailedEventDetails
      `Prelude.hashWithSalt` mapRunStartedEventDetails
      `Prelude.hashWithSalt` mapStateStartedEventDetails
      `Prelude.hashWithSalt` previousEventId
      `Prelude.hashWithSalt` stateEnteredEventDetails
      `Prelude.hashWithSalt` stateExitedEventDetails
      `Prelude.hashWithSalt` taskFailedEventDetails
      `Prelude.hashWithSalt` taskScheduledEventDetails
      `Prelude.hashWithSalt` taskStartFailedEventDetails
      `Prelude.hashWithSalt` taskStartedEventDetails
      `Prelude.hashWithSalt` taskSubmitFailedEventDetails
      `Prelude.hashWithSalt` taskSubmittedEventDetails
      `Prelude.hashWithSalt` taskSucceededEventDetails
      `Prelude.hashWithSalt` taskTimedOutEventDetails
      `Prelude.hashWithSalt` timestamp
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` id

instance Prelude.NFData HistoryEvent where
  rnf HistoryEvent' {..} =
    Prelude.rnf activityFailedEventDetails
      `Prelude.seq` Prelude.rnf activityScheduleFailedEventDetails
      `Prelude.seq` Prelude.rnf activityScheduledEventDetails
      `Prelude.seq` Prelude.rnf activityStartedEventDetails
      `Prelude.seq` Prelude.rnf activitySucceededEventDetails
      `Prelude.seq` Prelude.rnf activityTimedOutEventDetails
      `Prelude.seq` Prelude.rnf executionAbortedEventDetails
      `Prelude.seq` Prelude.rnf executionFailedEventDetails
      `Prelude.seq` Prelude.rnf executionStartedEventDetails
      `Prelude.seq` Prelude.rnf executionSucceededEventDetails
      `Prelude.seq` Prelude.rnf executionTimedOutEventDetails
      `Prelude.seq` Prelude.rnf lambdaFunctionFailedEventDetails
      `Prelude.seq` Prelude.rnf
        lambdaFunctionScheduleFailedEventDetails
      `Prelude.seq` Prelude.rnf
        lambdaFunctionScheduledEventDetails
      `Prelude.seq` Prelude.rnf
        lambdaFunctionStartFailedEventDetails
      `Prelude.seq` Prelude.rnf
        lambdaFunctionSucceededEventDetails
      `Prelude.seq` Prelude.rnf
        lambdaFunctionTimedOutEventDetails
      `Prelude.seq` Prelude.rnf
        mapIterationAbortedEventDetails
      `Prelude.seq` Prelude.rnf
        mapIterationFailedEventDetails
      `Prelude.seq` Prelude.rnf
        mapIterationStartedEventDetails
      `Prelude.seq` Prelude.rnf
        mapIterationSucceededEventDetails
      `Prelude.seq` Prelude.rnf
        mapRunFailedEventDetails
      `Prelude.seq` Prelude.rnf
        mapRunStartedEventDetails
      `Prelude.seq` Prelude.rnf
        mapStateStartedEventDetails
      `Prelude.seq` Prelude.rnf
        previousEventId
      `Prelude.seq` Prelude.rnf
        stateEnteredEventDetails
      `Prelude.seq` Prelude.rnf
        stateExitedEventDetails
      `Prelude.seq` Prelude.rnf
        taskFailedEventDetails
      `Prelude.seq` Prelude.rnf
        taskScheduledEventDetails
      `Prelude.seq` Prelude.rnf
        taskStartFailedEventDetails
      `Prelude.seq` Prelude.rnf
        taskStartedEventDetails
      `Prelude.seq` Prelude.rnf
        taskSubmitFailedEventDetails
      `Prelude.seq` Prelude.rnf
        taskSubmittedEventDetails
      `Prelude.seq` Prelude.rnf
        taskSucceededEventDetails
      `Prelude.seq` Prelude.rnf
        taskTimedOutEventDetails
      `Prelude.seq` Prelude.rnf
        timestamp
      `Prelude.seq` Prelude.rnf
        type'
      `Prelude.seq` Prelude.rnf
        id
