{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.DescribeAnalysisSchemes
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the analysis schemes configured for a domain. An analysis scheme
-- defines language-specific text processing options for a @text@ field.
-- Can be limited to specific analysis schemes by name. By default, shows
-- all analysis schemes and includes any pending changes to the
-- configuration. Set the @Deployed@ option to @true@ to show the active
-- configuration and exclude pending changes. For more information, see
-- <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html Configuring Analysis Schemes>
-- in the /Amazon CloudSearch Developer Guide/.
--
-- /See:/ <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/API_DescribeAnalysisSchemes.html AWS API Reference> for DescribeAnalysisSchemes.
module Network.AWS.CloudSearch.DescribeAnalysisSchemes
    (
    -- * Creating a Request
      DescribeAnalysisSchemes
    , describeAnalysisSchemes
    -- * Request Lenses
    , dassDeployed
    , dassAnalysisSchemeNames
    , dassDomainName

    -- * Destructuring the Response
    , DescribeAnalysisSchemesResponse
    , describeAnalysisSchemesResponse
    -- * Response Lenses
    , dasrsStatus
    , dasrsAnalysisSchemes
    ) where

import           Network.AWS.CloudSearch.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | Container for the parameters to the @DescribeAnalysisSchemes@ operation.
-- Specifies the name of the domain you want to describe. To limit the
-- response to particular analysis schemes, specify the names of the
-- analysis schemes you want to describe. To show the active configuration
-- and exclude any pending changes, set the @Deployed@ option to @true@.
--
-- /See:/ 'describeAnalysisSchemes' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dassDeployed'
--
-- * 'dassAnalysisSchemeNames'
--
-- * 'dassDomainName'
data DescribeAnalysisSchemes = DescribeAnalysisSchemes'
    { _dassDeployed            :: !(Maybe Bool)
    , _dassAnalysisSchemeNames :: !(Maybe [Text])
    , _dassDomainName          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeAnalysisSchemes' smart constructor.
describeAnalysisSchemes :: Text -> DescribeAnalysisSchemes
describeAnalysisSchemes pDomainName_ =
    DescribeAnalysisSchemes'
    { _dassDeployed = Nothing
    , _dassAnalysisSchemeNames = Nothing
    , _dassDomainName = pDomainName_
    }

-- | Whether to display the deployed configuration (@true@) or include any
-- pending changes (@false@). Defaults to @false@.
dassDeployed :: Lens' DescribeAnalysisSchemes (Maybe Bool)
dassDeployed = lens _dassDeployed (\ s a -> s{_dassDeployed = a});

-- | The analysis schemes you want to describe.
dassAnalysisSchemeNames :: Lens' DescribeAnalysisSchemes [Text]
dassAnalysisSchemeNames = lens _dassAnalysisSchemeNames (\ s a -> s{_dassAnalysisSchemeNames = a}) . _Default . _Coerce;

-- | The name of the domain you want to describe.
dassDomainName :: Lens' DescribeAnalysisSchemes Text
dassDomainName = lens _dassDomainName (\ s a -> s{_dassDomainName = a});

instance AWSRequest DescribeAnalysisSchemes where
        type Sv DescribeAnalysisSchemes = CloudSearch
        type Rs DescribeAnalysisSchemes =
             DescribeAnalysisSchemesResponse
        request = postQuery
        response
          = receiveXMLWrapper "DescribeAnalysisSchemesResult"
              (\ s h x ->
                 DescribeAnalysisSchemesResponse' <$>
                   (pure (fromEnum s)) <*>
                     (x .@? "AnalysisSchemes" .!@ mempty >>=
                        parseXMLList "member"))

instance ToHeaders DescribeAnalysisSchemes where
        toHeaders = const mempty

instance ToPath DescribeAnalysisSchemes where
        toPath = const "/"

instance ToQuery DescribeAnalysisSchemes where
        toQuery DescribeAnalysisSchemes'{..}
          = mconcat
              ["Action" =:
                 ("DescribeAnalysisSchemes" :: ByteString),
               "Version" =: ("2013-01-01" :: ByteString),
               "Deployed" =: _dassDeployed,
               "AnalysisSchemeNames" =:
                 toQuery
                   (toQueryList "member" <$> _dassAnalysisSchemeNames),
               "DomainName" =: _dassDomainName]

-- | The result of a @DescribeAnalysisSchemes@ request. Contains the analysis
-- schemes configured for the domain specified in the request.
--
-- /See:/ 'describeAnalysisSchemesResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dasrsStatus'
--
-- * 'dasrsAnalysisSchemes'
data DescribeAnalysisSchemesResponse = DescribeAnalysisSchemesResponse'
    { _dasrsStatus          :: !Int
    , _dasrsAnalysisSchemes :: ![AnalysisSchemeStatus]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeAnalysisSchemesResponse' smart constructor.
describeAnalysisSchemesResponse :: Int -> DescribeAnalysisSchemesResponse
describeAnalysisSchemesResponse pStatus_ =
    DescribeAnalysisSchemesResponse'
    { _dasrsStatus = pStatus_
    , _dasrsAnalysisSchemes = mempty
    }

-- | Undocumented member.
dasrsStatus :: Lens' DescribeAnalysisSchemesResponse Int
dasrsStatus = lens _dasrsStatus (\ s a -> s{_dasrsStatus = a});

-- | The analysis scheme descriptions.
dasrsAnalysisSchemes :: Lens' DescribeAnalysisSchemesResponse [AnalysisSchemeStatus]
dasrsAnalysisSchemes = lens _dasrsAnalysisSchemes (\ s a -> s{_dasrsAnalysisSchemes = a}) . _Coerce;
