{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.Transcribe
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2017-10-26@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Operations and objects for transcribing speech to text.
module Network.AWS.Transcribe
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** NotFoundException
    _NotFoundException,

    -- ** BadRequestException
    _BadRequestException,

    -- ** ConflictException
    _ConflictException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** InternalFailureException
    _InternalFailureException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ListLanguageModels
    ListLanguageModels (ListLanguageModels'),
    newListLanguageModels,
    ListLanguageModelsResponse (ListLanguageModelsResponse'),
    newListLanguageModelsResponse,

    -- ** GetVocabularyFilter
    GetVocabularyFilter (GetVocabularyFilter'),
    newGetVocabularyFilter,
    GetVocabularyFilterResponse (GetVocabularyFilterResponse'),
    newGetVocabularyFilterResponse,

    -- ** StartTranscriptionJob
    StartTranscriptionJob (StartTranscriptionJob'),
    newStartTranscriptionJob,
    StartTranscriptionJobResponse (StartTranscriptionJobResponse'),
    newStartTranscriptionJobResponse,

    -- ** CreateLanguageModel
    CreateLanguageModel (CreateLanguageModel'),
    newCreateLanguageModel,
    CreateLanguageModelResponse (CreateLanguageModelResponse'),
    newCreateLanguageModelResponse,

    -- ** ListVocabularies
    ListVocabularies (ListVocabularies'),
    newListVocabularies,
    ListVocabulariesResponse (ListVocabulariesResponse'),
    newListVocabulariesResponse,

    -- ** CreateVocabulary
    CreateVocabulary (CreateVocabulary'),
    newCreateVocabulary,
    CreateVocabularyResponse (CreateVocabularyResponse'),
    newCreateVocabularyResponse,

    -- ** DeleteVocabulary
    DeleteVocabulary (DeleteVocabulary'),
    newDeleteVocabulary,
    DeleteVocabularyResponse (DeleteVocabularyResponse'),
    newDeleteVocabularyResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** UpdateVocabulary
    UpdateVocabulary (UpdateVocabulary'),
    newUpdateVocabulary,
    UpdateVocabularyResponse (UpdateVocabularyResponse'),
    newUpdateVocabularyResponse,

    -- ** ListVocabularyFilters
    ListVocabularyFilters (ListVocabularyFilters'),
    newListVocabularyFilters,
    ListVocabularyFiltersResponse (ListVocabularyFiltersResponse'),
    newListVocabularyFiltersResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** ListTranscriptionJobs
    ListTranscriptionJobs (ListTranscriptionJobs'),
    newListTranscriptionJobs,
    ListTranscriptionJobsResponse (ListTranscriptionJobsResponse'),
    newListTranscriptionJobsResponse,

    -- ** DeleteTranscriptionJob
    DeleteTranscriptionJob (DeleteTranscriptionJob'),
    newDeleteTranscriptionJob,
    DeleteTranscriptionJobResponse (DeleteTranscriptionJobResponse'),
    newDeleteTranscriptionJobResponse,

    -- ** StartMedicalTranscriptionJob
    StartMedicalTranscriptionJob (StartMedicalTranscriptionJob'),
    newStartMedicalTranscriptionJob,
    StartMedicalTranscriptionJobResponse (StartMedicalTranscriptionJobResponse'),
    newStartMedicalTranscriptionJobResponse,

    -- ** GetCallAnalyticsCategory
    GetCallAnalyticsCategory (GetCallAnalyticsCategory'),
    newGetCallAnalyticsCategory,
    GetCallAnalyticsCategoryResponse (GetCallAnalyticsCategoryResponse'),
    newGetCallAnalyticsCategoryResponse,

    -- ** GetMedicalVocabulary
    GetMedicalVocabulary (GetMedicalVocabulary'),
    newGetMedicalVocabulary,
    GetMedicalVocabularyResponse (GetMedicalVocabularyResponse'),
    newGetMedicalVocabularyResponse,

    -- ** GetTranscriptionJob
    GetTranscriptionJob (GetTranscriptionJob'),
    newGetTranscriptionJob,
    GetTranscriptionJobResponse (GetTranscriptionJobResponse'),
    newGetTranscriptionJobResponse,

    -- ** GetVocabulary
    GetVocabulary (GetVocabulary'),
    newGetVocabulary,
    GetVocabularyResponse (GetVocabularyResponse'),
    newGetVocabularyResponse,

    -- ** GetMedicalTranscriptionJob
    GetMedicalTranscriptionJob (GetMedicalTranscriptionJob'),
    newGetMedicalTranscriptionJob,
    GetMedicalTranscriptionJobResponse (GetMedicalTranscriptionJobResponse'),
    newGetMedicalTranscriptionJobResponse,

    -- ** DeleteLanguageModel
    DeleteLanguageModel (DeleteLanguageModel'),
    newDeleteLanguageModel,
    DeleteLanguageModelResponse (DeleteLanguageModelResponse'),
    newDeleteLanguageModelResponse,

    -- ** CreateVocabularyFilter
    CreateVocabularyFilter (CreateVocabularyFilter'),
    newCreateVocabularyFilter,
    CreateVocabularyFilterResponse (CreateVocabularyFilterResponse'),
    newCreateVocabularyFilterResponse,

    -- ** ListMedicalTranscriptionJobs
    ListMedicalTranscriptionJobs (ListMedicalTranscriptionJobs'),
    newListMedicalTranscriptionJobs,
    ListMedicalTranscriptionJobsResponse (ListMedicalTranscriptionJobsResponse'),
    newListMedicalTranscriptionJobsResponse,

    -- ** StartCallAnalyticsJob
    StartCallAnalyticsJob (StartCallAnalyticsJob'),
    newStartCallAnalyticsJob,
    StartCallAnalyticsJobResponse (StartCallAnalyticsJobResponse'),
    newStartCallAnalyticsJobResponse,

    -- ** DeleteMedicalTranscriptionJob
    DeleteMedicalTranscriptionJob (DeleteMedicalTranscriptionJob'),
    newDeleteMedicalTranscriptionJob,
    DeleteMedicalTranscriptionJobResponse (DeleteMedicalTranscriptionJobResponse'),
    newDeleteMedicalTranscriptionJobResponse,

    -- ** UpdateVocabularyFilter
    UpdateVocabularyFilter (UpdateVocabularyFilter'),
    newUpdateVocabularyFilter,
    UpdateVocabularyFilterResponse (UpdateVocabularyFilterResponse'),
    newUpdateVocabularyFilterResponse,

    -- ** DeleteVocabularyFilter
    DeleteVocabularyFilter (DeleteVocabularyFilter'),
    newDeleteVocabularyFilter,
    DeleteVocabularyFilterResponse (DeleteVocabularyFilterResponse'),
    newDeleteVocabularyFilterResponse,

    -- ** UpdateMedicalVocabulary
    UpdateMedicalVocabulary (UpdateMedicalVocabulary'),
    newUpdateMedicalVocabulary,
    UpdateMedicalVocabularyResponse (UpdateMedicalVocabularyResponse'),
    newUpdateMedicalVocabularyResponse,

    -- ** DescribeLanguageModel
    DescribeLanguageModel (DescribeLanguageModel'),
    newDescribeLanguageModel,
    DescribeLanguageModelResponse (DescribeLanguageModelResponse'),
    newDescribeLanguageModelResponse,

    -- ** CreateCallAnalyticsCategory
    CreateCallAnalyticsCategory (CreateCallAnalyticsCategory'),
    newCreateCallAnalyticsCategory,
    CreateCallAnalyticsCategoryResponse (CreateCallAnalyticsCategoryResponse'),
    newCreateCallAnalyticsCategoryResponse,

    -- ** ListCallAnalyticsCategories
    ListCallAnalyticsCategories (ListCallAnalyticsCategories'),
    newListCallAnalyticsCategories,
    ListCallAnalyticsCategoriesResponse (ListCallAnalyticsCategoriesResponse'),
    newListCallAnalyticsCategoriesResponse,

    -- ** DeleteMedicalVocabulary
    DeleteMedicalVocabulary (DeleteMedicalVocabulary'),
    newDeleteMedicalVocabulary,
    DeleteMedicalVocabularyResponse (DeleteMedicalVocabularyResponse'),
    newDeleteMedicalVocabularyResponse,

    -- ** ListMedicalVocabularies
    ListMedicalVocabularies (ListMedicalVocabularies'),
    newListMedicalVocabularies,
    ListMedicalVocabulariesResponse (ListMedicalVocabulariesResponse'),
    newListMedicalVocabulariesResponse,

    -- ** GetCallAnalyticsJob
    GetCallAnalyticsJob (GetCallAnalyticsJob'),
    newGetCallAnalyticsJob,
    GetCallAnalyticsJobResponse (GetCallAnalyticsJobResponse'),
    newGetCallAnalyticsJobResponse,

    -- ** UpdateCallAnalyticsCategory
    UpdateCallAnalyticsCategory (UpdateCallAnalyticsCategory'),
    newUpdateCallAnalyticsCategory,
    UpdateCallAnalyticsCategoryResponse (UpdateCallAnalyticsCategoryResponse'),
    newUpdateCallAnalyticsCategoryResponse,

    -- ** CreateMedicalVocabulary
    CreateMedicalVocabulary (CreateMedicalVocabulary'),
    newCreateMedicalVocabulary,
    CreateMedicalVocabularyResponse (CreateMedicalVocabularyResponse'),
    newCreateMedicalVocabularyResponse,

    -- ** DeleteCallAnalyticsCategory
    DeleteCallAnalyticsCategory (DeleteCallAnalyticsCategory'),
    newDeleteCallAnalyticsCategory,
    DeleteCallAnalyticsCategoryResponse (DeleteCallAnalyticsCategoryResponse'),
    newDeleteCallAnalyticsCategoryResponse,

    -- ** ListCallAnalyticsJobs
    ListCallAnalyticsJobs (ListCallAnalyticsJobs'),
    newListCallAnalyticsJobs,
    ListCallAnalyticsJobsResponse (ListCallAnalyticsJobsResponse'),
    newListCallAnalyticsJobsResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** DeleteCallAnalyticsJob
    DeleteCallAnalyticsJob (DeleteCallAnalyticsJob'),
    newDeleteCallAnalyticsJob,
    DeleteCallAnalyticsJobResponse (DeleteCallAnalyticsJobResponse'),
    newDeleteCallAnalyticsJobResponse,

    -- * Types

    -- ** BaseModelName
    BaseModelName (..),

    -- ** CLMLanguageCode
    CLMLanguageCode (..),

    -- ** CallAnalyticsJobStatus
    CallAnalyticsJobStatus (..),

    -- ** LanguageCode
    LanguageCode (..),

    -- ** MediaFormat
    MediaFormat (..),

    -- ** MedicalContentIdentificationType
    MedicalContentIdentificationType (..),

    -- ** ModelStatus
    ModelStatus (..),

    -- ** OutputLocationType
    OutputLocationType (..),

    -- ** ParticipantRole
    ParticipantRole (..),

    -- ** RedactionOutput
    RedactionOutput (..),

    -- ** RedactionType
    RedactionType (..),

    -- ** SentimentValue
    SentimentValue (..),

    -- ** Specialty
    Specialty (..),

    -- ** SubtitleFormat
    SubtitleFormat (..),

    -- ** TranscriptFilterType
    TranscriptFilterType (..),

    -- ** TranscriptionJobStatus
    TranscriptionJobStatus (..),

    -- ** Type
    Type (..),

    -- ** VocabularyFilterMethod
    VocabularyFilterMethod (..),

    -- ** VocabularyState
    VocabularyState (..),

    -- ** AbsoluteTimeRange
    AbsoluteTimeRange (AbsoluteTimeRange'),
    newAbsoluteTimeRange,

    -- ** CallAnalyticsJob
    CallAnalyticsJob (CallAnalyticsJob'),
    newCallAnalyticsJob,

    -- ** CallAnalyticsJobSettings
    CallAnalyticsJobSettings (CallAnalyticsJobSettings'),
    newCallAnalyticsJobSettings,

    -- ** CallAnalyticsJobSummary
    CallAnalyticsJobSummary (CallAnalyticsJobSummary'),
    newCallAnalyticsJobSummary,

    -- ** CategoryProperties
    CategoryProperties (CategoryProperties'),
    newCategoryProperties,

    -- ** ChannelDefinition
    ChannelDefinition (ChannelDefinition'),
    newChannelDefinition,

    -- ** ContentRedaction
    ContentRedaction (ContentRedaction'),
    newContentRedaction,

    -- ** InputDataConfig
    InputDataConfig (InputDataConfig'),
    newInputDataConfig,

    -- ** InterruptionFilter
    InterruptionFilter (InterruptionFilter'),
    newInterruptionFilter,

    -- ** JobExecutionSettings
    JobExecutionSettings (JobExecutionSettings'),
    newJobExecutionSettings,

    -- ** LanguageModel
    LanguageModel (LanguageModel'),
    newLanguageModel,

    -- ** Media
    Media (Media'),
    newMedia,

    -- ** MedicalTranscript
    MedicalTranscript (MedicalTranscript'),
    newMedicalTranscript,

    -- ** MedicalTranscriptionJob
    MedicalTranscriptionJob (MedicalTranscriptionJob'),
    newMedicalTranscriptionJob,

    -- ** MedicalTranscriptionJobSummary
    MedicalTranscriptionJobSummary (MedicalTranscriptionJobSummary'),
    newMedicalTranscriptionJobSummary,

    -- ** MedicalTranscriptionSetting
    MedicalTranscriptionSetting (MedicalTranscriptionSetting'),
    newMedicalTranscriptionSetting,

    -- ** ModelSettings
    ModelSettings (ModelSettings'),
    newModelSettings,

    -- ** NonTalkTimeFilter
    NonTalkTimeFilter (NonTalkTimeFilter'),
    newNonTalkTimeFilter,

    -- ** RelativeTimeRange
    RelativeTimeRange (RelativeTimeRange'),
    newRelativeTimeRange,

    -- ** Rule
    Rule (Rule'),
    newRule,

    -- ** SentimentFilter
    SentimentFilter (SentimentFilter'),
    newSentimentFilter,

    -- ** Settings
    Settings (Settings'),
    newSettings,

    -- ** Subtitles
    Subtitles (Subtitles'),
    newSubtitles,

    -- ** SubtitlesOutput
    SubtitlesOutput (SubtitlesOutput'),
    newSubtitlesOutput,

    -- ** Tag
    Tag (Tag'),
    newTag,

    -- ** Transcript
    Transcript (Transcript'),
    newTranscript,

    -- ** TranscriptFilter
    TranscriptFilter (TranscriptFilter'),
    newTranscriptFilter,

    -- ** TranscriptionJob
    TranscriptionJob (TranscriptionJob'),
    newTranscriptionJob,

    -- ** TranscriptionJobSummary
    TranscriptionJobSummary (TranscriptionJobSummary'),
    newTranscriptionJobSummary,

    -- ** VocabularyFilterInfo
    VocabularyFilterInfo (VocabularyFilterInfo'),
    newVocabularyFilterInfo,

    -- ** VocabularyInfo
    VocabularyInfo (VocabularyInfo'),
    newVocabularyInfo,
  )
where

import Network.AWS.Transcribe.CreateCallAnalyticsCategory
import Network.AWS.Transcribe.CreateLanguageModel
import Network.AWS.Transcribe.CreateMedicalVocabulary
import Network.AWS.Transcribe.CreateVocabulary
import Network.AWS.Transcribe.CreateVocabularyFilter
import Network.AWS.Transcribe.DeleteCallAnalyticsCategory
import Network.AWS.Transcribe.DeleteCallAnalyticsJob
import Network.AWS.Transcribe.DeleteLanguageModel
import Network.AWS.Transcribe.DeleteMedicalTranscriptionJob
import Network.AWS.Transcribe.DeleteMedicalVocabulary
import Network.AWS.Transcribe.DeleteTranscriptionJob
import Network.AWS.Transcribe.DeleteVocabulary
import Network.AWS.Transcribe.DeleteVocabularyFilter
import Network.AWS.Transcribe.DescribeLanguageModel
import Network.AWS.Transcribe.GetCallAnalyticsCategory
import Network.AWS.Transcribe.GetCallAnalyticsJob
import Network.AWS.Transcribe.GetMedicalTranscriptionJob
import Network.AWS.Transcribe.GetMedicalVocabulary
import Network.AWS.Transcribe.GetTranscriptionJob
import Network.AWS.Transcribe.GetVocabulary
import Network.AWS.Transcribe.GetVocabularyFilter
import Network.AWS.Transcribe.Lens
import Network.AWS.Transcribe.ListCallAnalyticsCategories
import Network.AWS.Transcribe.ListCallAnalyticsJobs
import Network.AWS.Transcribe.ListLanguageModels
import Network.AWS.Transcribe.ListMedicalTranscriptionJobs
import Network.AWS.Transcribe.ListMedicalVocabularies
import Network.AWS.Transcribe.ListTagsForResource
import Network.AWS.Transcribe.ListTranscriptionJobs
import Network.AWS.Transcribe.ListVocabularies
import Network.AWS.Transcribe.ListVocabularyFilters
import Network.AWS.Transcribe.StartCallAnalyticsJob
import Network.AWS.Transcribe.StartMedicalTranscriptionJob
import Network.AWS.Transcribe.StartTranscriptionJob
import Network.AWS.Transcribe.TagResource
import Network.AWS.Transcribe.Types
import Network.AWS.Transcribe.UntagResource
import Network.AWS.Transcribe.UpdateCallAnalyticsCategory
import Network.AWS.Transcribe.UpdateMedicalVocabulary
import Network.AWS.Transcribe.UpdateVocabulary
import Network.AWS.Transcribe.UpdateVocabularyFilter
import Network.AWS.Transcribe.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Transcribe'.

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
