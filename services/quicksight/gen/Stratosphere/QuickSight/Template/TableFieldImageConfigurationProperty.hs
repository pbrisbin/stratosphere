module Stratosphere.QuickSight.Template.TableFieldImageConfigurationProperty (
        module Exports, TableFieldImageConfigurationProperty(..),
        mkTableFieldImageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TableCellImageSizingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data TableFieldImageConfigurationProperty
  = TableFieldImageConfigurationProperty {sizingOptions :: (Prelude.Maybe TableCellImageSizingConfigurationProperty)}
mkTableFieldImageConfigurationProperty ::
  TableFieldImageConfigurationProperty
mkTableFieldImageConfigurationProperty
  = TableFieldImageConfigurationProperty
      {sizingOptions = Prelude.Nothing}
instance ToResourceProperties TableFieldImageConfigurationProperty where
  toResourceProperties TableFieldImageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TableFieldImageConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SizingOptions" Prelude.<$> sizingOptions])}
instance JSON.ToJSON TableFieldImageConfigurationProperty where
  toJSON TableFieldImageConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SizingOptions" Prelude.<$> sizingOptions]))
instance Property "SizingOptions" TableFieldImageConfigurationProperty where
  type PropertyType "SizingOptions" TableFieldImageConfigurationProperty = TableCellImageSizingConfigurationProperty
  set newValue TableFieldImageConfigurationProperty {}
    = TableFieldImageConfigurationProperty
        {sizingOptions = Prelude.pure newValue, ..}