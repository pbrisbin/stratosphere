module Stratosphere.QuickSight.Analysis.TableCellStyleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TableCellStyleProperty :: Prelude.Type
instance ToResourceProperties TableCellStyleProperty
instance JSON.ToJSON TableCellStyleProperty