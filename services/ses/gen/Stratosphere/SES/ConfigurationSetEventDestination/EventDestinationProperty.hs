module Stratosphere.SES.ConfigurationSetEventDestination.EventDestinationProperty (
        module Exports, EventDestinationProperty(..),
        mkEventDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.ConfigurationSetEventDestination.CloudWatchDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.ConfigurationSetEventDestination.EventBridgeDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.ConfigurationSetEventDestination.KinesisFirehoseDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.ConfigurationSetEventDestination.SnsDestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventDestinationProperty
  = EventDestinationProperty {cloudWatchDestination :: (Prelude.Maybe CloudWatchDestinationProperty),
                              enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                              eventBridgeDestination :: (Prelude.Maybe EventBridgeDestinationProperty),
                              kinesisFirehoseDestination :: (Prelude.Maybe KinesisFirehoseDestinationProperty),
                              matchingEventTypes :: (ValueList Prelude.Text),
                              name :: (Prelude.Maybe (Value Prelude.Text)),
                              snsDestination :: (Prelude.Maybe SnsDestinationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventDestinationProperty ::
  ValueList Prelude.Text -> EventDestinationProperty
mkEventDestinationProperty matchingEventTypes
  = EventDestinationProperty
      {matchingEventTypes = matchingEventTypes,
       cloudWatchDestination = Prelude.Nothing, enabled = Prelude.Nothing,
       eventBridgeDestination = Prelude.Nothing,
       kinesisFirehoseDestination = Prelude.Nothing,
       name = Prelude.Nothing, snsDestination = Prelude.Nothing}
instance ToResourceProperties EventDestinationProperty where
  toResourceProperties EventDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSetEventDestination.EventDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MatchingEventTypes" JSON..= matchingEventTypes]
                           (Prelude.catMaybes
                              [(JSON..=) "CloudWatchDestination"
                                 Prelude.<$> cloudWatchDestination,
                               (JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "EventBridgeDestination"
                                 Prelude.<$> eventBridgeDestination,
                               (JSON..=) "KinesisFirehoseDestination"
                                 Prelude.<$> kinesisFirehoseDestination,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "SnsDestination" Prelude.<$> snsDestination]))}
instance JSON.ToJSON EventDestinationProperty where
  toJSON EventDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MatchingEventTypes" JSON..= matchingEventTypes]
              (Prelude.catMaybes
                 [(JSON..=) "CloudWatchDestination"
                    Prelude.<$> cloudWatchDestination,
                  (JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "EventBridgeDestination"
                    Prelude.<$> eventBridgeDestination,
                  (JSON..=) "KinesisFirehoseDestination"
                    Prelude.<$> kinesisFirehoseDestination,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "SnsDestination" Prelude.<$> snsDestination])))
instance Property "CloudWatchDestination" EventDestinationProperty where
  type PropertyType "CloudWatchDestination" EventDestinationProperty = CloudWatchDestinationProperty
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty
        {cloudWatchDestination = Prelude.pure newValue, ..}
instance Property "Enabled" EventDestinationProperty where
  type PropertyType "Enabled" EventDestinationProperty = Value Prelude.Bool
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty {enabled = Prelude.pure newValue, ..}
instance Property "EventBridgeDestination" EventDestinationProperty where
  type PropertyType "EventBridgeDestination" EventDestinationProperty = EventBridgeDestinationProperty
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty
        {eventBridgeDestination = Prelude.pure newValue, ..}
instance Property "KinesisFirehoseDestination" EventDestinationProperty where
  type PropertyType "KinesisFirehoseDestination" EventDestinationProperty = KinesisFirehoseDestinationProperty
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty
        {kinesisFirehoseDestination = Prelude.pure newValue, ..}
instance Property "MatchingEventTypes" EventDestinationProperty where
  type PropertyType "MatchingEventTypes" EventDestinationProperty = ValueList Prelude.Text
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty {matchingEventTypes = newValue, ..}
instance Property "Name" EventDestinationProperty where
  type PropertyType "Name" EventDestinationProperty = Value Prelude.Text
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty {name = Prelude.pure newValue, ..}
instance Property "SnsDestination" EventDestinationProperty where
  type PropertyType "SnsDestination" EventDestinationProperty = SnsDestinationProperty
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty
        {snsDestination = Prelude.pure newValue, ..}