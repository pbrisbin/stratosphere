module Stratosphere.QuickSight.Dashboard.AggregationFunctionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AggregationFunctionProperty :: Prelude.Type
instance ToResourceProperties AggregationFunctionProperty
instance JSON.ToJSON AggregationFunctionProperty