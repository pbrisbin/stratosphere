module Stratosphere.QuickSight.Template.FreeFormLayoutConfigurationProperty (
        module Exports, FreeFormLayoutConfigurationProperty(..),
        mkFreeFormLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FreeFormLayoutCanvasSizeOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FreeFormLayoutElementProperty as Exports
import Stratosphere.ResourceProperties
data FreeFormLayoutConfigurationProperty
  = FreeFormLayoutConfigurationProperty {canvasSizeOptions :: (Prelude.Maybe FreeFormLayoutCanvasSizeOptionsProperty),
                                         elements :: [FreeFormLayoutElementProperty]}
mkFreeFormLayoutConfigurationProperty ::
  [FreeFormLayoutElementProperty]
  -> FreeFormLayoutConfigurationProperty
mkFreeFormLayoutConfigurationProperty elements
  = FreeFormLayoutConfigurationProperty
      {elements = elements, canvasSizeOptions = Prelude.Nothing}
instance ToResourceProperties FreeFormLayoutConfigurationProperty where
  toResourceProperties FreeFormLayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FreeFormLayoutConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Elements" JSON..= elements]
                           (Prelude.catMaybes
                              [(JSON..=) "CanvasSizeOptions" Prelude.<$> canvasSizeOptions]))}
instance JSON.ToJSON FreeFormLayoutConfigurationProperty where
  toJSON FreeFormLayoutConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Elements" JSON..= elements]
              (Prelude.catMaybes
                 [(JSON..=) "CanvasSizeOptions" Prelude.<$> canvasSizeOptions])))
instance Property "CanvasSizeOptions" FreeFormLayoutConfigurationProperty where
  type PropertyType "CanvasSizeOptions" FreeFormLayoutConfigurationProperty = FreeFormLayoutCanvasSizeOptionsProperty
  set newValue FreeFormLayoutConfigurationProperty {..}
    = FreeFormLayoutConfigurationProperty
        {canvasSizeOptions = Prelude.pure newValue, ..}
instance Property "Elements" FreeFormLayoutConfigurationProperty where
  type PropertyType "Elements" FreeFormLayoutConfigurationProperty = [FreeFormLayoutElementProperty]
  set newValue FreeFormLayoutConfigurationProperty {..}
    = FreeFormLayoutConfigurationProperty {elements = newValue, ..}