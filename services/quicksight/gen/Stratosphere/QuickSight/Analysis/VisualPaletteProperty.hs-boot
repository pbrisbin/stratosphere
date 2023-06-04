module Stratosphere.QuickSight.Analysis.VisualPaletteProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VisualPaletteProperty :: Prelude.Type
instance ToResourceProperties VisualPaletteProperty
instance JSON.ToJSON VisualPaletteProperty