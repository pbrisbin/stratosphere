module Stratosphere.DynamoDB.GlobalTable.ReplicaSpecificationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ReplicaSpecificationProperty :: Prelude.Type
instance ToResourceProperties ReplicaSpecificationProperty
instance JSON.ToJSON ReplicaSpecificationProperty