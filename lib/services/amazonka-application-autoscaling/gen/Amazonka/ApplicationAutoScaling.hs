{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Amazonka.ApplicationAutoScaling
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2016-02-06@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- With Application Auto Scaling, you can configure automatic scaling for
-- the following resources:
--
-- -   Amazon AppStream 2.0 fleets
--
-- -   Amazon Aurora Replicas
--
-- -   Amazon Comprehend document classification and entity recognizer
--     endpoints
--
-- -   Amazon DynamoDB tables and global secondary indexes throughput
--     capacity
--
-- -   Amazon ECS services
--
-- -   Amazon ElastiCache for Redis clusters (replication groups)
--
-- -   Amazon EMR clusters
--
-- -   Amazon Keyspaces (for Apache Cassandra) tables
--
-- -   Lambda function provisioned concurrency
--
-- -   Amazon Managed Streaming for Apache Kafka broker storage
--
-- -   Amazon Neptune clusters
--
-- -   Amazon SageMaker endpoint variants
--
-- -   Spot Fleets (Amazon EC2)
--
-- -   Custom resources provided by your own applications or services
--
-- __API Summary__
--
-- The Application Auto Scaling service API includes three key sets of
-- actions:
--
-- -   Register and manage scalable targets - Register Amazon Web Services
--     or custom resources as scalable targets (a resource that Application
--     Auto Scaling can scale), set minimum and maximum capacity limits,
--     and retrieve information on existing scalable targets.
--
-- -   Configure and manage automatic scaling - Define scaling policies to
--     dynamically scale your resources in response to CloudWatch alarms,
--     schedule one-time or recurring scaling actions, and retrieve your
--     recent scaling activity history.
--
-- -   Suspend and resume scaling - Temporarily suspend and later resume
--     automatic scaling by calling the
--     <https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html RegisterScalableTarget>
--     API action for any Application Auto Scaling scalable target. You can
--     suspend and resume (individually or in combination) scale-out
--     activities that are triggered by a scaling policy, scale-in
--     activities that are triggered by a scaling policy, and scheduled
--     scaling.
--
-- To learn more about Application Auto Scaling, including information
-- about granting IAM users required permissions for Application Auto
-- Scaling actions, see the
-- <https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html Application Auto Scaling User Guide>.
module Amazonka.ApplicationAutoScaling
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** ConcurrentUpdateException
    _ConcurrentUpdateException,

    -- ** FailedResourceAccessException
    _FailedResourceAccessException,

    -- ** InternalServiceException
    _InternalServiceException,

    -- ** InvalidNextTokenException
    _InvalidNextTokenException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ObjectNotFoundException
    _ObjectNotFoundException,

    -- ** ValidationException
    _ValidationException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DeleteScalingPolicy
    DeleteScalingPolicy (DeleteScalingPolicy'),
    newDeleteScalingPolicy,
    DeleteScalingPolicyResponse (DeleteScalingPolicyResponse'),
    newDeleteScalingPolicyResponse,

    -- ** DeleteScheduledAction
    DeleteScheduledAction (DeleteScheduledAction'),
    newDeleteScheduledAction,
    DeleteScheduledActionResponse (DeleteScheduledActionResponse'),
    newDeleteScheduledActionResponse,

    -- ** DeregisterScalableTarget
    DeregisterScalableTarget (DeregisterScalableTarget'),
    newDeregisterScalableTarget,
    DeregisterScalableTargetResponse (DeregisterScalableTargetResponse'),
    newDeregisterScalableTargetResponse,

    -- ** DescribeScalableTargets (Paginated)
    DescribeScalableTargets (DescribeScalableTargets'),
    newDescribeScalableTargets,
    DescribeScalableTargetsResponse (DescribeScalableTargetsResponse'),
    newDescribeScalableTargetsResponse,

    -- ** DescribeScalingActivities (Paginated)
    DescribeScalingActivities (DescribeScalingActivities'),
    newDescribeScalingActivities,
    DescribeScalingActivitiesResponse (DescribeScalingActivitiesResponse'),
    newDescribeScalingActivitiesResponse,

    -- ** DescribeScalingPolicies (Paginated)
    DescribeScalingPolicies (DescribeScalingPolicies'),
    newDescribeScalingPolicies,
    DescribeScalingPoliciesResponse (DescribeScalingPoliciesResponse'),
    newDescribeScalingPoliciesResponse,

    -- ** DescribeScheduledActions (Paginated)
    DescribeScheduledActions (DescribeScheduledActions'),
    newDescribeScheduledActions,
    DescribeScheduledActionsResponse (DescribeScheduledActionsResponse'),
    newDescribeScheduledActionsResponse,

    -- ** PutScalingPolicy
    PutScalingPolicy (PutScalingPolicy'),
    newPutScalingPolicy,
    PutScalingPolicyResponse (PutScalingPolicyResponse'),
    newPutScalingPolicyResponse,

    -- ** PutScheduledAction
    PutScheduledAction (PutScheduledAction'),
    newPutScheduledAction,
    PutScheduledActionResponse (PutScheduledActionResponse'),
    newPutScheduledActionResponse,

    -- ** RegisterScalableTarget
    RegisterScalableTarget (RegisterScalableTarget'),
    newRegisterScalableTarget,
    RegisterScalableTargetResponse (RegisterScalableTargetResponse'),
    newRegisterScalableTargetResponse,

    -- * Types

    -- ** AdjustmentType
    AdjustmentType (..),

    -- ** MetricAggregationType
    MetricAggregationType (..),

    -- ** MetricStatistic
    MetricStatistic (..),

    -- ** MetricType
    MetricType (..),

    -- ** PolicyType
    PolicyType (..),

    -- ** ScalableDimension
    ScalableDimension (..),

    -- ** ScalingActivityStatusCode
    ScalingActivityStatusCode (..),

    -- ** ServiceNamespace
    ServiceNamespace (..),

    -- ** Alarm
    Alarm (Alarm'),
    newAlarm,

    -- ** CustomizedMetricSpecification
    CustomizedMetricSpecification (CustomizedMetricSpecification'),
    newCustomizedMetricSpecification,

    -- ** MetricDimension
    MetricDimension (MetricDimension'),
    newMetricDimension,

    -- ** PredefinedMetricSpecification
    PredefinedMetricSpecification (PredefinedMetricSpecification'),
    newPredefinedMetricSpecification,

    -- ** ScalableTarget
    ScalableTarget (ScalableTarget'),
    newScalableTarget,

    -- ** ScalableTargetAction
    ScalableTargetAction (ScalableTargetAction'),
    newScalableTargetAction,

    -- ** ScalingActivity
    ScalingActivity (ScalingActivity'),
    newScalingActivity,

    -- ** ScalingPolicy
    ScalingPolicy (ScalingPolicy'),
    newScalingPolicy,

    -- ** ScheduledAction
    ScheduledAction (ScheduledAction'),
    newScheduledAction,

    -- ** StepAdjustment
    StepAdjustment (StepAdjustment'),
    newStepAdjustment,

    -- ** StepScalingPolicyConfiguration
    StepScalingPolicyConfiguration (StepScalingPolicyConfiguration'),
    newStepScalingPolicyConfiguration,

    -- ** SuspendedState
    SuspendedState (SuspendedState'),
    newSuspendedState,

    -- ** TargetTrackingScalingPolicyConfiguration
    TargetTrackingScalingPolicyConfiguration (TargetTrackingScalingPolicyConfiguration'),
    newTargetTrackingScalingPolicyConfiguration,
  )
where

import Amazonka.ApplicationAutoScaling.DeleteScalingPolicy
import Amazonka.ApplicationAutoScaling.DeleteScheduledAction
import Amazonka.ApplicationAutoScaling.DeregisterScalableTarget
import Amazonka.ApplicationAutoScaling.DescribeScalableTargets
import Amazonka.ApplicationAutoScaling.DescribeScalingActivities
import Amazonka.ApplicationAutoScaling.DescribeScalingPolicies
import Amazonka.ApplicationAutoScaling.DescribeScheduledActions
import Amazonka.ApplicationAutoScaling.Lens
import Amazonka.ApplicationAutoScaling.PutScalingPolicy
import Amazonka.ApplicationAutoScaling.PutScheduledAction
import Amazonka.ApplicationAutoScaling.RegisterScalableTarget
import Amazonka.ApplicationAutoScaling.Types
import Amazonka.ApplicationAutoScaling.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'ApplicationAutoScaling'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
