module Stratosphere.QuickSight.Analysis.PivotFieldSortOptionsProperty (
        module Exports, PivotFieldSortOptionsProperty(..),
        mkPivotFieldSortOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PivotTableSortByProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PivotFieldSortOptionsProperty
  = PivotFieldSortOptionsProperty {fieldId :: (Value Prelude.Text),
                                   sortBy :: PivotTableSortByProperty}
mkPivotFieldSortOptionsProperty ::
  Value Prelude.Text
  -> PivotTableSortByProperty -> PivotFieldSortOptionsProperty
mkPivotFieldSortOptionsProperty fieldId sortBy
  = PivotFieldSortOptionsProperty
      {fieldId = fieldId, sortBy = sortBy}
instance ToResourceProperties PivotFieldSortOptionsProperty where
  toResourceProperties PivotFieldSortOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.PivotFieldSortOptions",
         supportsTags = Prelude.False,
         properties = ["FieldId" JSON..= fieldId, "SortBy" JSON..= sortBy]}
instance JSON.ToJSON PivotFieldSortOptionsProperty where
  toJSON PivotFieldSortOptionsProperty {..}
    = JSON.object ["FieldId" JSON..= fieldId, "SortBy" JSON..= sortBy]
instance Property "FieldId" PivotFieldSortOptionsProperty where
  type PropertyType "FieldId" PivotFieldSortOptionsProperty = Value Prelude.Text
  set newValue PivotFieldSortOptionsProperty {..}
    = PivotFieldSortOptionsProperty {fieldId = newValue, ..}
instance Property "SortBy" PivotFieldSortOptionsProperty where
  type PropertyType "SortBy" PivotFieldSortOptionsProperty = PivotTableSortByProperty
  set newValue PivotFieldSortOptionsProperty {..}
    = PivotFieldSortOptionsProperty {sortBy = newValue, ..}