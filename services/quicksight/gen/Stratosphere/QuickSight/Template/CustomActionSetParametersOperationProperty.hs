module Stratosphere.QuickSight.Template.CustomActionSetParametersOperationProperty (
        module Exports, CustomActionSetParametersOperationProperty(..),
        mkCustomActionSetParametersOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SetParameterValueConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data CustomActionSetParametersOperationProperty
  = CustomActionSetParametersOperationProperty {parameterValueConfigurations :: [SetParameterValueConfigurationProperty]}
mkCustomActionSetParametersOperationProperty ::
  [SetParameterValueConfigurationProperty]
  -> CustomActionSetParametersOperationProperty
mkCustomActionSetParametersOperationProperty
  parameterValueConfigurations
  = CustomActionSetParametersOperationProperty
      {parameterValueConfigurations = parameterValueConfigurations}
instance ToResourceProperties CustomActionSetParametersOperationProperty where
  toResourceProperties
    CustomActionSetParametersOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.CustomActionSetParametersOperation",
         supportsTags = Prelude.False,
         properties = ["ParameterValueConfigurations"
                         JSON..= parameterValueConfigurations]}
instance JSON.ToJSON CustomActionSetParametersOperationProperty where
  toJSON CustomActionSetParametersOperationProperty {..}
    = JSON.object
        ["ParameterValueConfigurations"
           JSON..= parameterValueConfigurations]
instance Property "ParameterValueConfigurations" CustomActionSetParametersOperationProperty where
  type PropertyType "ParameterValueConfigurations" CustomActionSetParametersOperationProperty = [SetParameterValueConfigurationProperty]
  set newValue CustomActionSetParametersOperationProperty {}
    = CustomActionSetParametersOperationProperty
        {parameterValueConfigurations = newValue, ..}