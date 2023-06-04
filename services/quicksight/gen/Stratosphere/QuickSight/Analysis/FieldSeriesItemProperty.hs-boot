module Stratosphere.QuickSight.Analysis.FieldSeriesItemProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FieldSeriesItemProperty :: Prelude.Type
instance ToResourceProperties FieldSeriesItemProperty
instance JSON.ToJSON FieldSeriesItemProperty