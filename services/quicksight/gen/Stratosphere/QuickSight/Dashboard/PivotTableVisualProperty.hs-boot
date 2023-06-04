module Stratosphere.QuickSight.Dashboard.PivotTableVisualProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PivotTableVisualProperty :: Prelude.Type
instance ToResourceProperties PivotTableVisualProperty
instance JSON.ToJSON PivotTableVisualProperty