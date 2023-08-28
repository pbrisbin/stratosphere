module Stratosphere.QuickSight.Analysis.PanelTitleOptionsProperty (
        module Exports, PanelTitleOptionsProperty(..),
        mkPanelTitleOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FontConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PanelTitleOptionsProperty
  = PanelTitleOptionsProperty {fontConfiguration :: (Prelude.Maybe FontConfigurationProperty),
                               horizontalTextAlignment :: (Prelude.Maybe (Value Prelude.Text)),
                               visibility :: (Prelude.Maybe (Value Prelude.Text))}
mkPanelTitleOptionsProperty :: PanelTitleOptionsProperty
mkPanelTitleOptionsProperty
  = PanelTitleOptionsProperty
      {fontConfiguration = Prelude.Nothing,
       horizontalTextAlignment = Prelude.Nothing,
       visibility = Prelude.Nothing}
instance ToResourceProperties PanelTitleOptionsProperty where
  toResourceProperties PanelTitleOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.PanelTitleOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FontConfiguration" Prelude.<$> fontConfiguration,
                            (JSON..=) "HorizontalTextAlignment"
                              Prelude.<$> horizontalTextAlignment,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON PanelTitleOptionsProperty where
  toJSON PanelTitleOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FontConfiguration" Prelude.<$> fontConfiguration,
               (JSON..=) "HorizontalTextAlignment"
                 Prelude.<$> horizontalTextAlignment,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "FontConfiguration" PanelTitleOptionsProperty where
  type PropertyType "FontConfiguration" PanelTitleOptionsProperty = FontConfigurationProperty
  set newValue PanelTitleOptionsProperty {..}
    = PanelTitleOptionsProperty
        {fontConfiguration = Prelude.pure newValue, ..}
instance Property "HorizontalTextAlignment" PanelTitleOptionsProperty where
  type PropertyType "HorizontalTextAlignment" PanelTitleOptionsProperty = Value Prelude.Text
  set newValue PanelTitleOptionsProperty {..}
    = PanelTitleOptionsProperty
        {horizontalTextAlignment = Prelude.pure newValue, ..}
instance Property "Visibility" PanelTitleOptionsProperty where
  type PropertyType "Visibility" PanelTitleOptionsProperty = Value Prelude.Text
  set newValue PanelTitleOptionsProperty {..}
    = PanelTitleOptionsProperty
        {visibility = Prelude.pure newValue, ..}