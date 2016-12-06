{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html

module Stratosphere.ResourceProperties.OpsWorksAppSource where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for OpsWorksAppSource. See 'opsWorksAppSource'
-- | for a more convenient constructor.
data OpsWorksAppSource =
  OpsWorksAppSource
  { _opsWorksAppSourcePassword :: Maybe (Val Text)
  , _opsWorksAppSourceRevision :: Maybe (Val Text)
  , _opsWorksAppSourceSshKey :: Maybe (Val Text)
  , _opsWorksAppSourceType :: Maybe (Val Text)
  , _opsWorksAppSourceUrl :: Maybe (Val Text)
  , _opsWorksAppSourceUsername :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON OpsWorksAppSource where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 18, omitNothingFields = True }

instance FromJSON OpsWorksAppSource where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 18, omitNothingFields = True }

-- | Constructor for 'OpsWorksAppSource' containing required fields as
-- | arguments.
opsWorksAppSource
  :: OpsWorksAppSource
opsWorksAppSource  =
  OpsWorksAppSource
  { _opsWorksAppSourcePassword = Nothing
  , _opsWorksAppSourceRevision = Nothing
  , _opsWorksAppSourceSshKey = Nothing
  , _opsWorksAppSourceType = Nothing
  , _opsWorksAppSourceUrl = Nothing
  , _opsWorksAppSourceUsername = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-pw
owasPassword :: Lens' OpsWorksAppSource (Maybe (Val Text))
owasPassword = lens _opsWorksAppSourcePassword (\s a -> s { _opsWorksAppSourcePassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-revision
owasRevision :: Lens' OpsWorksAppSource (Maybe (Val Text))
owasRevision = lens _opsWorksAppSourceRevision (\s a -> s { _opsWorksAppSourceRevision = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-sshkey
owasSshKey :: Lens' OpsWorksAppSource (Maybe (Val Text))
owasSshKey = lens _opsWorksAppSourceSshKey (\s a -> s { _opsWorksAppSourceSshKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-type
owasType :: Lens' OpsWorksAppSource (Maybe (Val Text))
owasType = lens _opsWorksAppSourceType (\s a -> s { _opsWorksAppSourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-url
owasUrl :: Lens' OpsWorksAppSource (Maybe (Val Text))
owasUrl = lens _opsWorksAppSourceUrl (\s a -> s { _opsWorksAppSourceUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-username
owasUsername :: Lens' OpsWorksAppSource (Maybe (Val Text))
owasUsername = lens _opsWorksAppSourceUsername (\s a -> s { _opsWorksAppSourceUsername = a })