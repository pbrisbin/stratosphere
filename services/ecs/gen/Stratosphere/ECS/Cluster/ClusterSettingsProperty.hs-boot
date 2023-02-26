module Stratosphere.ECS.Cluster.ClusterSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ClusterSettingsProperty :: Prelude.Type
instance ToResourceProperties ClusterSettingsProperty
instance JSON.ToJSON ClusterSettingsProperty