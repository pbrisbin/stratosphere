module Stratosphere.ECS.TaskDefinition.HostVolumePropertiesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HostVolumePropertiesProperty :: Prelude.Type
instance ToResourceProperties HostVolumePropertiesProperty
instance JSON.ToJSON HostVolumePropertiesProperty