module Stratosphere.AutoScaling.ScalingPolicy.PredictiveScalingPredefinedScalingMetricProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PredictiveScalingPredefinedScalingMetricProperty :: Prelude.Type
instance ToResourceProperties PredictiveScalingPredefinedScalingMetricProperty
instance JSON.ToJSON PredictiveScalingPredefinedScalingMetricProperty