{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html

module Stratosphere.Resources.GlueCrawler where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.GlueCrawlerSchedule
import Stratosphere.ResourceProperties.GlueCrawlerSchemaChangePolicy
import Stratosphere.ResourceProperties.GlueCrawlerTargets

-- | Full data type definition for GlueCrawler. See 'glueCrawler' for a more
-- convenient constructor.
data GlueCrawler =
  GlueCrawler
  { _glueCrawlerClassifiers :: Maybe (ValList Text)
  , _glueCrawlerDatabaseName :: Val Text
  , _glueCrawlerDescription :: Maybe (Val Text)
  , _glueCrawlerName :: Maybe (Val Text)
  , _glueCrawlerRole :: Val Text
  , _glueCrawlerSchedule :: Maybe GlueCrawlerSchedule
  , _glueCrawlerSchemaChangePolicy :: Maybe GlueCrawlerSchemaChangePolicy
  , _glueCrawlerTablePrefix :: Maybe (Val Text)
  , _glueCrawlerTargets :: GlueCrawlerTargets
  } deriving (Show, Eq)

instance ToJSON GlueCrawler where
  toJSON GlueCrawler{..} =
    object $
    catMaybes
    [ fmap (("Classifiers",) . toJSON) _glueCrawlerClassifiers
    , (Just . ("DatabaseName",) . toJSON) _glueCrawlerDatabaseName
    , fmap (("Description",) . toJSON) _glueCrawlerDescription
    , fmap (("Name",) . toJSON) _glueCrawlerName
    , (Just . ("Role",) . toJSON) _glueCrawlerRole
    , fmap (("Schedule",) . toJSON) _glueCrawlerSchedule
    , fmap (("SchemaChangePolicy",) . toJSON) _glueCrawlerSchemaChangePolicy
    , fmap (("TablePrefix",) . toJSON) _glueCrawlerTablePrefix
    , (Just . ("Targets",) . toJSON) _glueCrawlerTargets
    ]

instance FromJSON GlueCrawler where
  parseJSON (Object obj) =
    GlueCrawler <$>
      (obj .:? "Classifiers") <*>
      (obj .: "DatabaseName") <*>
      (obj .:? "Description") <*>
      (obj .:? "Name") <*>
      (obj .: "Role") <*>
      (obj .:? "Schedule") <*>
      (obj .:? "SchemaChangePolicy") <*>
      (obj .:? "TablePrefix") <*>
      (obj .: "Targets")
  parseJSON _ = mempty

-- | Constructor for 'GlueCrawler' containing required fields as arguments.
glueCrawler
  :: Val Text -- ^ 'gcDatabaseName'
  -> Val Text -- ^ 'gcRole'
  -> GlueCrawlerTargets -- ^ 'gcTargets'
  -> GlueCrawler
glueCrawler databaseNamearg rolearg targetsarg =
  GlueCrawler
  { _glueCrawlerClassifiers = Nothing
  , _glueCrawlerDatabaseName = databaseNamearg
  , _glueCrawlerDescription = Nothing
  , _glueCrawlerName = Nothing
  , _glueCrawlerRole = rolearg
  , _glueCrawlerSchedule = Nothing
  , _glueCrawlerSchemaChangePolicy = Nothing
  , _glueCrawlerTablePrefix = Nothing
  , _glueCrawlerTargets = targetsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-classifiers
gcClassifiers :: Lens' GlueCrawler (Maybe (ValList Text))
gcClassifiers = lens _glueCrawlerClassifiers (\s a -> s { _glueCrawlerClassifiers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-databasename
gcDatabaseName :: Lens' GlueCrawler (Val Text)
gcDatabaseName = lens _glueCrawlerDatabaseName (\s a -> s { _glueCrawlerDatabaseName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-description
gcDescription :: Lens' GlueCrawler (Maybe (Val Text))
gcDescription = lens _glueCrawlerDescription (\s a -> s { _glueCrawlerDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-name
gcName :: Lens' GlueCrawler (Maybe (Val Text))
gcName = lens _glueCrawlerName (\s a -> s { _glueCrawlerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-role
gcRole :: Lens' GlueCrawler (Val Text)
gcRole = lens _glueCrawlerRole (\s a -> s { _glueCrawlerRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-schedule
gcSchedule :: Lens' GlueCrawler (Maybe GlueCrawlerSchedule)
gcSchedule = lens _glueCrawlerSchedule (\s a -> s { _glueCrawlerSchedule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-schemachangepolicy
gcSchemaChangePolicy :: Lens' GlueCrawler (Maybe GlueCrawlerSchemaChangePolicy)
gcSchemaChangePolicy = lens _glueCrawlerSchemaChangePolicy (\s a -> s { _glueCrawlerSchemaChangePolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-tableprefix
gcTablePrefix :: Lens' GlueCrawler (Maybe (Val Text))
gcTablePrefix = lens _glueCrawlerTablePrefix (\s a -> s { _glueCrawlerTablePrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-targets
gcTargets :: Lens' GlueCrawler GlueCrawlerTargets
gcTargets = lens _glueCrawlerTargets (\s a -> s { _glueCrawlerTargets = a })