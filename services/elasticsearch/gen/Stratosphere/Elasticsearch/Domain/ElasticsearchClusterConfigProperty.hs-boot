module Stratosphere.Elasticsearch.Domain.ElasticsearchClusterConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ElasticsearchClusterConfigProperty :: Prelude.Type
instance ToResourceProperties ElasticsearchClusterConfigProperty
instance JSON.ToJSON ElasticsearchClusterConfigProperty