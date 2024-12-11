module Stratosphere.Bedrock.Flow.FlowNodeOutputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FlowNodeOutputProperty :: Prelude.Type
instance ToResourceProperties FlowNodeOutputProperty
instance Prelude.Eq FlowNodeOutputProperty
instance Prelude.Show FlowNodeOutputProperty
instance JSON.ToJSON FlowNodeOutputProperty