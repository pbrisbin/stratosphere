module Stratosphere.MSK.Cluster.CloudWatchLogsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CloudWatchLogsProperty :: Prelude.Type
instance ToResourceProperties CloudWatchLogsProperty
instance JSON.ToJSON CloudWatchLogsProperty