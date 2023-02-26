module Stratosphere.Glue.Crawler.SchemaChangePolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SchemaChangePolicyProperty :: Prelude.Type
instance ToResourceProperties SchemaChangePolicyProperty
instance JSON.ToJSON SchemaChangePolicyProperty