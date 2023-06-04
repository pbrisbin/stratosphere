module Stratosphere.QuickSight.Analysis.DrillDownFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DrillDownFilterProperty :: Prelude.Type
instance ToResourceProperties DrillDownFilterProperty
instance JSON.ToJSON DrillDownFilterProperty