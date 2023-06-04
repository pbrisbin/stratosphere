module Stratosphere.QuickSight.Topic.TopicColumnProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TopicColumnProperty :: Prelude.Type
instance ToResourceProperties TopicColumnProperty
instance JSON.ToJSON TopicColumnProperty