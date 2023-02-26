module Stratosphere.CloudWatch.AnomalyDetector.MetricDataQueryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetricDataQueryProperty :: Prelude.Type
instance ToResourceProperties MetricDataQueryProperty
instance JSON.ToJSON MetricDataQueryProperty