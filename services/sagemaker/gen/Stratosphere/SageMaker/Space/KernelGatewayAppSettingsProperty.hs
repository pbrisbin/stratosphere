module Stratosphere.SageMaker.Space.KernelGatewayAppSettingsProperty (
        module Exports, KernelGatewayAppSettingsProperty(..),
        mkKernelGatewayAppSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Space.CustomImageProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Space.ResourceSpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KernelGatewayAppSettingsProperty
  = KernelGatewayAppSettingsProperty {customImages :: (Prelude.Maybe [CustomImageProperty]),
                                      defaultResourceSpec :: (Prelude.Maybe ResourceSpecProperty),
                                      lifecycleConfigArns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKernelGatewayAppSettingsProperty ::
  KernelGatewayAppSettingsProperty
mkKernelGatewayAppSettingsProperty
  = KernelGatewayAppSettingsProperty
      {customImages = Prelude.Nothing,
       defaultResourceSpec = Prelude.Nothing,
       lifecycleConfigArns = Prelude.Nothing}
instance ToResourceProperties KernelGatewayAppSettingsProperty where
  toResourceProperties KernelGatewayAppSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space.KernelGatewayAppSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomImages" Prelude.<$> customImages,
                            (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
                            (JSON..=) "LifecycleConfigArns" Prelude.<$> lifecycleConfigArns])}
instance JSON.ToJSON KernelGatewayAppSettingsProperty where
  toJSON KernelGatewayAppSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomImages" Prelude.<$> customImages,
               (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
               (JSON..=) "LifecycleConfigArns" Prelude.<$> lifecycleConfigArns]))
instance Property "CustomImages" KernelGatewayAppSettingsProperty where
  type PropertyType "CustomImages" KernelGatewayAppSettingsProperty = [CustomImageProperty]
  set newValue KernelGatewayAppSettingsProperty {..}
    = KernelGatewayAppSettingsProperty
        {customImages = Prelude.pure newValue, ..}
instance Property "DefaultResourceSpec" KernelGatewayAppSettingsProperty where
  type PropertyType "DefaultResourceSpec" KernelGatewayAppSettingsProperty = ResourceSpecProperty
  set newValue KernelGatewayAppSettingsProperty {..}
    = KernelGatewayAppSettingsProperty
        {defaultResourceSpec = Prelude.pure newValue, ..}
instance Property "LifecycleConfigArns" KernelGatewayAppSettingsProperty where
  type PropertyType "LifecycleConfigArns" KernelGatewayAppSettingsProperty = ValueList Prelude.Text
  set newValue KernelGatewayAppSettingsProperty {..}
    = KernelGatewayAppSettingsProperty
        {lifecycleConfigArns = Prelude.pure newValue, ..}