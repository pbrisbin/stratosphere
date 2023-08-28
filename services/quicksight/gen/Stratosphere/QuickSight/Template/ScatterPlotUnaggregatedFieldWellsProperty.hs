module Stratosphere.QuickSight.Template.ScatterPlotUnaggregatedFieldWellsProperty (
        module Exports, ScatterPlotUnaggregatedFieldWellsProperty(..),
        mkScatterPlotUnaggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data ScatterPlotUnaggregatedFieldWellsProperty
  = ScatterPlotUnaggregatedFieldWellsProperty {size :: (Prelude.Maybe [MeasureFieldProperty]),
                                               xAxis :: (Prelude.Maybe [DimensionFieldProperty]),
                                               yAxis :: (Prelude.Maybe [DimensionFieldProperty])}
mkScatterPlotUnaggregatedFieldWellsProperty ::
  ScatterPlotUnaggregatedFieldWellsProperty
mkScatterPlotUnaggregatedFieldWellsProperty
  = ScatterPlotUnaggregatedFieldWellsProperty
      {size = Prelude.Nothing, xAxis = Prelude.Nothing,
       yAxis = Prelude.Nothing}
instance ToResourceProperties ScatterPlotUnaggregatedFieldWellsProperty where
  toResourceProperties ScatterPlotUnaggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ScatterPlotUnaggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Size" Prelude.<$> size,
                            (JSON..=) "XAxis" Prelude.<$> xAxis,
                            (JSON..=) "YAxis" Prelude.<$> yAxis])}
instance JSON.ToJSON ScatterPlotUnaggregatedFieldWellsProperty where
  toJSON ScatterPlotUnaggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Size" Prelude.<$> size,
               (JSON..=) "XAxis" Prelude.<$> xAxis,
               (JSON..=) "YAxis" Prelude.<$> yAxis]))
instance Property "Size" ScatterPlotUnaggregatedFieldWellsProperty where
  type PropertyType "Size" ScatterPlotUnaggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue ScatterPlotUnaggregatedFieldWellsProperty {..}
    = ScatterPlotUnaggregatedFieldWellsProperty
        {size = Prelude.pure newValue, ..}
instance Property "XAxis" ScatterPlotUnaggregatedFieldWellsProperty where
  type PropertyType "XAxis" ScatterPlotUnaggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue ScatterPlotUnaggregatedFieldWellsProperty {..}
    = ScatterPlotUnaggregatedFieldWellsProperty
        {xAxis = Prelude.pure newValue, ..}
instance Property "YAxis" ScatterPlotUnaggregatedFieldWellsProperty where
  type PropertyType "YAxis" ScatterPlotUnaggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue ScatterPlotUnaggregatedFieldWellsProperty {..}
    = ScatterPlotUnaggregatedFieldWellsProperty
        {yAxis = Prelude.pure newValue, ..}