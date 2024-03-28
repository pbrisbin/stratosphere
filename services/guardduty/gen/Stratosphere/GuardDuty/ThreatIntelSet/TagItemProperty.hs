module Stratosphere.GuardDuty.ThreatIntelSet.TagItemProperty (
        TagItemProperty(..), mkTagItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagItemProperty
  = TagItemProperty {key :: (Value Prelude.Text),
                     value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagItemProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TagItemProperty
mkTagItemProperty key value
  = TagItemProperty {key = key, value = value}
instance ToResourceProperties TagItemProperty where
  toResourceProperties TagItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::ThreatIntelSet.TagItem",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON TagItemProperty where
  toJSON TagItemProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" TagItemProperty where
  type PropertyType "Key" TagItemProperty = Value Prelude.Text
  set newValue TagItemProperty {..}
    = TagItemProperty {key = newValue, ..}
instance Property "Value" TagItemProperty where
  type PropertyType "Value" TagItemProperty = Value Prelude.Text
  set newValue TagItemProperty {..}
    = TagItemProperty {value = newValue, ..}