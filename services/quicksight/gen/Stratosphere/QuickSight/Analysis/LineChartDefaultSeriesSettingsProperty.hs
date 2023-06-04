module Stratosphere.QuickSight.Analysis.LineChartDefaultSeriesSettingsProperty (
        module Exports, LineChartDefaultSeriesSettingsProperty(..),
        mkLineChartDefaultSeriesSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LineChartLineStyleSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LineChartMarkerStyleSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LineChartDefaultSeriesSettingsProperty
  = LineChartDefaultSeriesSettingsProperty {axisBinding :: (Prelude.Maybe (Value Prelude.Text)),
                                            lineStyleSettings :: (Prelude.Maybe LineChartLineStyleSettingsProperty),
                                            markerStyleSettings :: (Prelude.Maybe LineChartMarkerStyleSettingsProperty)}
mkLineChartDefaultSeriesSettingsProperty ::
  LineChartDefaultSeriesSettingsProperty
mkLineChartDefaultSeriesSettingsProperty
  = LineChartDefaultSeriesSettingsProperty
      {axisBinding = Prelude.Nothing,
       lineStyleSettings = Prelude.Nothing,
       markerStyleSettings = Prelude.Nothing}
instance ToResourceProperties LineChartDefaultSeriesSettingsProperty where
  toResourceProperties LineChartDefaultSeriesSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.LineChartDefaultSeriesSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AxisBinding" Prelude.<$> axisBinding,
                            (JSON..=) "LineStyleSettings" Prelude.<$> lineStyleSettings,
                            (JSON..=) "MarkerStyleSettings" Prelude.<$> markerStyleSettings])}
instance JSON.ToJSON LineChartDefaultSeriesSettingsProperty where
  toJSON LineChartDefaultSeriesSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AxisBinding" Prelude.<$> axisBinding,
               (JSON..=) "LineStyleSettings" Prelude.<$> lineStyleSettings,
               (JSON..=) "MarkerStyleSettings" Prelude.<$> markerStyleSettings]))
instance Property "AxisBinding" LineChartDefaultSeriesSettingsProperty where
  type PropertyType "AxisBinding" LineChartDefaultSeriesSettingsProperty = Value Prelude.Text
  set newValue LineChartDefaultSeriesSettingsProperty {..}
    = LineChartDefaultSeriesSettingsProperty
        {axisBinding = Prelude.pure newValue, ..}
instance Property "LineStyleSettings" LineChartDefaultSeriesSettingsProperty where
  type PropertyType "LineStyleSettings" LineChartDefaultSeriesSettingsProperty = LineChartLineStyleSettingsProperty
  set newValue LineChartDefaultSeriesSettingsProperty {..}
    = LineChartDefaultSeriesSettingsProperty
        {lineStyleSettings = Prelude.pure newValue, ..}
instance Property "MarkerStyleSettings" LineChartDefaultSeriesSettingsProperty where
  type PropertyType "MarkerStyleSettings" LineChartDefaultSeriesSettingsProperty = LineChartMarkerStyleSettingsProperty
  set newValue LineChartDefaultSeriesSettingsProperty {..}
    = LineChartDefaultSeriesSettingsProperty
        {markerStyleSettings = Prelude.pure newValue, ..}