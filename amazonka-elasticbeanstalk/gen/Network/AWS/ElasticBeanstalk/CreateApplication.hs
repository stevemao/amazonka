{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.CreateApplication
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an application that has one configuration template named
-- @default@ and no application versions.
--
-- /See:/ <http://docs.aws.amazon.com/elasticbeanstalk/latest/api/API_CreateApplication.html AWS API Reference> for CreateApplication.
module Network.AWS.ElasticBeanstalk.CreateApplication
    (
    -- * Creating a Request
      CreateApplication
    , createApplication
    -- * Request Lenses
    , caDescription
    , caApplicationName

    -- * Destructuring the Response
    , ApplicationDescriptionMessage
    , applicationDescriptionMessage
    -- * Response Lenses
    , admApplication
    ) where

import           Network.AWS.ElasticBeanstalk.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | This documentation target is not reported in the API reference.
--
-- /See:/ 'createApplication' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'caDescription'
--
-- * 'caApplicationName'
data CreateApplication = CreateApplication'
    { _caDescription     :: !(Maybe Text)
    , _caApplicationName :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'CreateApplication' smart constructor.
createApplication :: Text -> CreateApplication
createApplication pApplicationName_ =
    CreateApplication'
    { _caDescription = Nothing
    , _caApplicationName = pApplicationName_
    }

-- | Describes the application.
caDescription :: Lens' CreateApplication (Maybe Text)
caDescription = lens _caDescription (\ s a -> s{_caDescription = a});

-- | The name of the application.
--
-- Constraint: This name must be unique within your account. If the
-- specified name already exists, the action returns an
-- @InvalidParameterValue@ error.
caApplicationName :: Lens' CreateApplication Text
caApplicationName = lens _caApplicationName (\ s a -> s{_caApplicationName = a});

instance AWSRequest CreateApplication where
        type Sv CreateApplication = ElasticBeanstalk
        type Rs CreateApplication =
             ApplicationDescriptionMessage
        request = postQuery
        response
          = receiveXMLWrapper "CreateApplicationResult"
              (\ s h x -> parseXML x)

instance ToHeaders CreateApplication where
        toHeaders = const mempty

instance ToPath CreateApplication where
        toPath = const "/"

instance ToQuery CreateApplication where
        toQuery CreateApplication'{..}
          = mconcat
              ["Action" =: ("CreateApplication" :: ByteString),
               "Version" =: ("2010-12-01" :: ByteString),
               "Description" =: _caDescription,
               "ApplicationName" =: _caApplicationName]
