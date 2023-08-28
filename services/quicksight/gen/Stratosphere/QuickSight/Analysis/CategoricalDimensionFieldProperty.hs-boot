module Stratosphere.QuickSight.Analysis.CategoricalDimensionFieldProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CategoricalDimensionFieldProperty :: Prelude.Type
instance ToResourceProperties CategoricalDimensionFieldProperty
instance JSON.ToJSON CategoricalDimensionFieldProperty