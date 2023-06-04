module Stratosphere.QuickSight.Analysis.FunnelChartVisualProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FunnelChartVisualProperty :: Prelude.Type
instance ToResourceProperties FunnelChartVisualProperty
instance JSON.ToJSON FunnelChartVisualProperty