module Stratosphere.QuickSight.Dashboard.NumericalMeasureFieldProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NumericalMeasureFieldProperty :: Prelude.Type
instance ToResourceProperties NumericalMeasureFieldProperty
instance JSON.ToJSON NumericalMeasureFieldProperty