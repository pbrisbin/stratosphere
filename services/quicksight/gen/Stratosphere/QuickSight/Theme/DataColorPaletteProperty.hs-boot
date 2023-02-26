module Stratosphere.QuickSight.Theme.DataColorPaletteProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataColorPaletteProperty :: Prelude.Type
instance ToResourceProperties DataColorPaletteProperty
instance JSON.ToJSON DataColorPaletteProperty