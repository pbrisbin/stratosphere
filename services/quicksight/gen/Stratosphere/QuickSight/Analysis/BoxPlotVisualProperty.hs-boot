module Stratosphere.QuickSight.Analysis.BoxPlotVisualProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BoxPlotVisualProperty :: Prelude.Type
instance ToResourceProperties BoxPlotVisualProperty
instance JSON.ToJSON BoxPlotVisualProperty