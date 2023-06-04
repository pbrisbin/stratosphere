module Stratosphere.IoT.ThingGroup.ThingGroupPropertiesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ThingGroupPropertiesProperty :: Prelude.Type
instance ToResourceProperties ThingGroupPropertiesProperty
instance JSON.ToJSON ThingGroupPropertiesProperty