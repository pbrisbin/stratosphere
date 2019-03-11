{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html

module Stratosphere.Resources.GlueTrigger where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueTriggerAction
import Stratosphere.ResourceProperties.GlueTriggerPredicate

-- | Full data type definition for GlueTrigger. See 'glueTrigger' for a more
-- convenient constructor.
data GlueTrigger =
  GlueTrigger
  { _glueTriggerActions :: [GlueTriggerAction]
  , _glueTriggerDescription :: Maybe (Val Text)
  , _glueTriggerName :: Maybe (Val Text)
  , _glueTriggerPredicate :: Maybe GlueTriggerPredicate
  , _glueTriggerSchedule :: Maybe (Val Text)
  , _glueTriggerType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties GlueTrigger where
  toResourceProperties GlueTrigger{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Glue::Trigger"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("Actions",) . toJSON) _glueTriggerActions
        , fmap (("Description",) . toJSON) _glueTriggerDescription
        , fmap (("Name",) . toJSON) _glueTriggerName
        , fmap (("Predicate",) . toJSON) _glueTriggerPredicate
        , fmap (("Schedule",) . toJSON) _glueTriggerSchedule
        , (Just . ("Type",) . toJSON) _glueTriggerType
        ]
    }

-- | Constructor for 'GlueTrigger' containing required fields as arguments.
glueTrigger
  :: [GlueTriggerAction] -- ^ 'gtActions'
  -> Val Text -- ^ 'gtType'
  -> GlueTrigger
glueTrigger actionsarg typearg =
  GlueTrigger
  { _glueTriggerActions = actionsarg
  , _glueTriggerDescription = Nothing
  , _glueTriggerName = Nothing
  , _glueTriggerPredicate = Nothing
  , _glueTriggerSchedule = Nothing
  , _glueTriggerType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-actions
gtActions :: Lens' GlueTrigger [GlueTriggerAction]
gtActions = lens _glueTriggerActions (\s a -> s { _glueTriggerActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-description
gtDescription :: Lens' GlueTrigger (Maybe (Val Text))
gtDescription = lens _glueTriggerDescription (\s a -> s { _glueTriggerDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-name
gtName :: Lens' GlueTrigger (Maybe (Val Text))
gtName = lens _glueTriggerName (\s a -> s { _glueTriggerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-predicate
gtPredicate :: Lens' GlueTrigger (Maybe GlueTriggerPredicate)
gtPredicate = lens _glueTriggerPredicate (\s a -> s { _glueTriggerPredicate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-schedule
gtSchedule :: Lens' GlueTrigger (Maybe (Val Text))
gtSchedule = lens _glueTriggerSchedule (\s a -> s { _glueTriggerSchedule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-type
gtType :: Lens' GlueTrigger (Val Text)
gtType = lens _glueTriggerType (\s a -> s { _glueTriggerType = a })
