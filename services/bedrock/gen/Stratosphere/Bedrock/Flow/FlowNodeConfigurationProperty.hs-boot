module Stratosphere.Bedrock.Flow.FlowNodeConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FlowNodeConfigurationProperty :: Prelude.Type
instance ToResourceProperties FlowNodeConfigurationProperty
instance Prelude.Eq FlowNodeConfigurationProperty
instance Prelude.Show FlowNodeConfigurationProperty
instance JSON.ToJSON FlowNodeConfigurationProperty