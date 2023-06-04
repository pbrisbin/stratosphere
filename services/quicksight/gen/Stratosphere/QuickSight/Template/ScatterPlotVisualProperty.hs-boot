module Stratosphere.QuickSight.Template.ScatterPlotVisualProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScatterPlotVisualProperty :: Prelude.Type
instance ToResourceProperties ScatterPlotVisualProperty
instance JSON.ToJSON ScatterPlotVisualProperty