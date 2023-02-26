module Stratosphere.NetworkFirewall.RuleGroup.PublishMetricActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PublishMetricActionProperty :: Prelude.Type
instance ToResourceProperties PublishMetricActionProperty
instance JSON.ToJSON PublishMetricActionProperty