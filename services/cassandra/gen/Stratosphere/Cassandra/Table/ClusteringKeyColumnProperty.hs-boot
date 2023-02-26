module Stratosphere.Cassandra.Table.ClusteringKeyColumnProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ClusteringKeyColumnProperty :: Prelude.Type
instance ToResourceProperties ClusteringKeyColumnProperty
instance JSON.ToJSON ClusteringKeyColumnProperty