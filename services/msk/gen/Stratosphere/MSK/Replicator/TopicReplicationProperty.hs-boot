module Stratosphere.MSK.Replicator.TopicReplicationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TopicReplicationProperty :: Prelude.Type
instance ToResourceProperties TopicReplicationProperty
instance Prelude.Eq TopicReplicationProperty
instance Prelude.Show TopicReplicationProperty
instance JSON.ToJSON TopicReplicationProperty