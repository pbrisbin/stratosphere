module Stratosphere.ECS.TaskDefinition.DockerVolumeConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DockerVolumeConfigurationProperty :: Prelude.Type
instance ToResourceProperties DockerVolumeConfigurationProperty
instance JSON.ToJSON DockerVolumeConfigurationProperty