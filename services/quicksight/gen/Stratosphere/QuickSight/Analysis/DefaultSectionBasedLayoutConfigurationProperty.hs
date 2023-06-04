module Stratosphere.QuickSight.Analysis.DefaultSectionBasedLayoutConfigurationProperty (
        module Exports, DefaultSectionBasedLayoutConfigurationProperty(..),
        mkDefaultSectionBasedLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SectionBasedLayoutCanvasSizeOptionsProperty as Exports
import Stratosphere.ResourceProperties
data DefaultSectionBasedLayoutConfigurationProperty
  = DefaultSectionBasedLayoutConfigurationProperty {canvasSizeOptions :: SectionBasedLayoutCanvasSizeOptionsProperty}
mkDefaultSectionBasedLayoutConfigurationProperty ::
  SectionBasedLayoutCanvasSizeOptionsProperty
  -> DefaultSectionBasedLayoutConfigurationProperty
mkDefaultSectionBasedLayoutConfigurationProperty canvasSizeOptions
  = DefaultSectionBasedLayoutConfigurationProperty
      {canvasSizeOptions = canvasSizeOptions}
instance ToResourceProperties DefaultSectionBasedLayoutConfigurationProperty where
  toResourceProperties
    DefaultSectionBasedLayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DefaultSectionBasedLayoutConfiguration",
         supportsTags = Prelude.False,
         properties = ["CanvasSizeOptions" JSON..= canvasSizeOptions]}
instance JSON.ToJSON DefaultSectionBasedLayoutConfigurationProperty where
  toJSON DefaultSectionBasedLayoutConfigurationProperty {..}
    = JSON.object ["CanvasSizeOptions" JSON..= canvasSizeOptions]
instance Property "CanvasSizeOptions" DefaultSectionBasedLayoutConfigurationProperty where
  type PropertyType "CanvasSizeOptions" DefaultSectionBasedLayoutConfigurationProperty = SectionBasedLayoutCanvasSizeOptionsProperty
  set newValue DefaultSectionBasedLayoutConfigurationProperty {}
    = DefaultSectionBasedLayoutConfigurationProperty
        {canvasSizeOptions = newValue, ..}