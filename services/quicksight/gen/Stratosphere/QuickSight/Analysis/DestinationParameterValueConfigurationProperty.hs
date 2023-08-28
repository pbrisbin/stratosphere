module Stratosphere.QuickSight.Analysis.DestinationParameterValueConfigurationProperty (
        module Exports, DestinationParameterValueConfigurationProperty(..),
        mkDestinationParameterValueConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CustomValuesConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DestinationParameterValueConfigurationProperty
  = DestinationParameterValueConfigurationProperty {customValuesConfiguration :: (Prelude.Maybe CustomValuesConfigurationProperty),
                                                    selectAllValueOptions :: (Prelude.Maybe (Value Prelude.Text)),
                                                    sourceField :: (Prelude.Maybe (Value Prelude.Text)),
                                                    sourceParameterName :: (Prelude.Maybe (Value Prelude.Text))}
mkDestinationParameterValueConfigurationProperty ::
  DestinationParameterValueConfigurationProperty
mkDestinationParameterValueConfigurationProperty
  = DestinationParameterValueConfigurationProperty
      {customValuesConfiguration = Prelude.Nothing,
       selectAllValueOptions = Prelude.Nothing,
       sourceField = Prelude.Nothing,
       sourceParameterName = Prelude.Nothing}
instance ToResourceProperties DestinationParameterValueConfigurationProperty where
  toResourceProperties
    DestinationParameterValueConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DestinationParameterValueConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomValuesConfiguration"
                              Prelude.<$> customValuesConfiguration,
                            (JSON..=) "SelectAllValueOptions"
                              Prelude.<$> selectAllValueOptions,
                            (JSON..=) "SourceField" Prelude.<$> sourceField,
                            (JSON..=) "SourceParameterName" Prelude.<$> sourceParameterName])}
instance JSON.ToJSON DestinationParameterValueConfigurationProperty where
  toJSON DestinationParameterValueConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomValuesConfiguration"
                 Prelude.<$> customValuesConfiguration,
               (JSON..=) "SelectAllValueOptions"
                 Prelude.<$> selectAllValueOptions,
               (JSON..=) "SourceField" Prelude.<$> sourceField,
               (JSON..=) "SourceParameterName" Prelude.<$> sourceParameterName]))
instance Property "CustomValuesConfiguration" DestinationParameterValueConfigurationProperty where
  type PropertyType "CustomValuesConfiguration" DestinationParameterValueConfigurationProperty = CustomValuesConfigurationProperty
  set newValue DestinationParameterValueConfigurationProperty {..}
    = DestinationParameterValueConfigurationProperty
        {customValuesConfiguration = Prelude.pure newValue, ..}
instance Property "SelectAllValueOptions" DestinationParameterValueConfigurationProperty where
  type PropertyType "SelectAllValueOptions" DestinationParameterValueConfigurationProperty = Value Prelude.Text
  set newValue DestinationParameterValueConfigurationProperty {..}
    = DestinationParameterValueConfigurationProperty
        {selectAllValueOptions = Prelude.pure newValue, ..}
instance Property "SourceField" DestinationParameterValueConfigurationProperty where
  type PropertyType "SourceField" DestinationParameterValueConfigurationProperty = Value Prelude.Text
  set newValue DestinationParameterValueConfigurationProperty {..}
    = DestinationParameterValueConfigurationProperty
        {sourceField = Prelude.pure newValue, ..}
instance Property "SourceParameterName" DestinationParameterValueConfigurationProperty where
  type PropertyType "SourceParameterName" DestinationParameterValueConfigurationProperty = Value Prelude.Text
  set newValue DestinationParameterValueConfigurationProperty {..}
    = DestinationParameterValueConfigurationProperty
        {sourceParameterName = Prelude.pure newValue, ..}