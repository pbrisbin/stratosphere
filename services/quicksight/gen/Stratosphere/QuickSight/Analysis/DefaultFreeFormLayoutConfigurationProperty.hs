module Stratosphere.QuickSight.Analysis.DefaultFreeFormLayoutConfigurationProperty (
        module Exports, DefaultFreeFormLayoutConfigurationProperty(..),
        mkDefaultFreeFormLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FreeFormLayoutCanvasSizeOptionsProperty as Exports
import Stratosphere.ResourceProperties
data DefaultFreeFormLayoutConfigurationProperty
  = DefaultFreeFormLayoutConfigurationProperty {canvasSizeOptions :: FreeFormLayoutCanvasSizeOptionsProperty}
mkDefaultFreeFormLayoutConfigurationProperty ::
  FreeFormLayoutCanvasSizeOptionsProperty
  -> DefaultFreeFormLayoutConfigurationProperty
mkDefaultFreeFormLayoutConfigurationProperty canvasSizeOptions
  = DefaultFreeFormLayoutConfigurationProperty
      {canvasSizeOptions = canvasSizeOptions}
instance ToResourceProperties DefaultFreeFormLayoutConfigurationProperty where
  toResourceProperties
    DefaultFreeFormLayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DefaultFreeFormLayoutConfiguration",
         supportsTags = Prelude.False,
         properties = ["CanvasSizeOptions" JSON..= canvasSizeOptions]}
instance JSON.ToJSON DefaultFreeFormLayoutConfigurationProperty where
  toJSON DefaultFreeFormLayoutConfigurationProperty {..}
    = JSON.object ["CanvasSizeOptions" JSON..= canvasSizeOptions]
instance Property "CanvasSizeOptions" DefaultFreeFormLayoutConfigurationProperty where
  type PropertyType "CanvasSizeOptions" DefaultFreeFormLayoutConfigurationProperty = FreeFormLayoutCanvasSizeOptionsProperty
  set newValue DefaultFreeFormLayoutConfigurationProperty {}
    = DefaultFreeFormLayoutConfigurationProperty
        {canvasSizeOptions = newValue, ..}