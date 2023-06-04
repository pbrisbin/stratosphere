module Stratosphere.QuickSight.Analysis.DrillDownFilterProperty (
        module Exports, DrillDownFilterProperty(..),
        mkDrillDownFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CategoryDrillDownFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.NumericEqualityDrillDownFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TimeRangeDrillDownFilterProperty as Exports
import Stratosphere.ResourceProperties
data DrillDownFilterProperty
  = DrillDownFilterProperty {categoryFilter :: (Prelude.Maybe CategoryDrillDownFilterProperty),
                             numericEqualityFilter :: (Prelude.Maybe NumericEqualityDrillDownFilterProperty),
                             timeRangeFilter :: (Prelude.Maybe TimeRangeDrillDownFilterProperty)}
mkDrillDownFilterProperty :: DrillDownFilterProperty
mkDrillDownFilterProperty
  = DrillDownFilterProperty
      {categoryFilter = Prelude.Nothing,
       numericEqualityFilter = Prelude.Nothing,
       timeRangeFilter = Prelude.Nothing}
instance ToResourceProperties DrillDownFilterProperty where
  toResourceProperties DrillDownFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DrillDownFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryFilter" Prelude.<$> categoryFilter,
                            (JSON..=) "NumericEqualityFilter"
                              Prelude.<$> numericEqualityFilter,
                            (JSON..=) "TimeRangeFilter" Prelude.<$> timeRangeFilter])}
instance JSON.ToJSON DrillDownFilterProperty where
  toJSON DrillDownFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryFilter" Prelude.<$> categoryFilter,
               (JSON..=) "NumericEqualityFilter"
                 Prelude.<$> numericEqualityFilter,
               (JSON..=) "TimeRangeFilter" Prelude.<$> timeRangeFilter]))
instance Property "CategoryFilter" DrillDownFilterProperty where
  type PropertyType "CategoryFilter" DrillDownFilterProperty = CategoryDrillDownFilterProperty
  set newValue DrillDownFilterProperty {..}
    = DrillDownFilterProperty
        {categoryFilter = Prelude.pure newValue, ..}
instance Property "NumericEqualityFilter" DrillDownFilterProperty where
  type PropertyType "NumericEqualityFilter" DrillDownFilterProperty = NumericEqualityDrillDownFilterProperty
  set newValue DrillDownFilterProperty {..}
    = DrillDownFilterProperty
        {numericEqualityFilter = Prelude.pure newValue, ..}
instance Property "TimeRangeFilter" DrillDownFilterProperty where
  type PropertyType "TimeRangeFilter" DrillDownFilterProperty = TimeRangeDrillDownFilterProperty
  set newValue DrillDownFilterProperty {..}
    = DrillDownFilterProperty
        {timeRangeFilter = Prelude.pure newValue, ..}