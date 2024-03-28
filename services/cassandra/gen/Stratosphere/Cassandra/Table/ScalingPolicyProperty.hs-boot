module Stratosphere.Cassandra.Table.ScalingPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScalingPolicyProperty :: Prelude.Type
instance ToResourceProperties ScalingPolicyProperty
instance Prelude.Eq ScalingPolicyProperty
instance Prelude.Show ScalingPolicyProperty
instance JSON.ToJSON ScalingPolicyProperty