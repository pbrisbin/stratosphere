module Stratosphere.QuickSight.Analysis.AxisScaleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AxisScaleProperty :: Prelude.Type
instance ToResourceProperties AxisScaleProperty
instance JSON.ToJSON AxisScaleProperty