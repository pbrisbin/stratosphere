module Stratosphere.EKS.Cluster.ClusterLoggingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ClusterLoggingProperty :: Prelude.Type
instance ToResourceProperties ClusterLoggingProperty
instance Prelude.Eq ClusterLoggingProperty
instance Prelude.Show ClusterLoggingProperty
instance JSON.ToJSON ClusterLoggingProperty