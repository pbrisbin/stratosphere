module Stratosphere.SageMaker.UserProfile.JupyterLabAppSettingsProperty (
        module Exports, JupyterLabAppSettingsProperty(..),
        mkJupyterLabAppSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.AppLifecycleManagementProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.CodeRepositoryProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.CustomImageProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.ResourceSpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JupyterLabAppSettingsProperty
  = JupyterLabAppSettingsProperty {appLifecycleManagement :: (Prelude.Maybe AppLifecycleManagementProperty),
                                   codeRepositories :: (Prelude.Maybe [CodeRepositoryProperty]),
                                   customImages :: (Prelude.Maybe [CustomImageProperty]),
                                   defaultResourceSpec :: (Prelude.Maybe ResourceSpecProperty),
                                   lifecycleConfigArns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJupyterLabAppSettingsProperty :: JupyterLabAppSettingsProperty
mkJupyterLabAppSettingsProperty
  = JupyterLabAppSettingsProperty
      {appLifecycleManagement = Prelude.Nothing,
       codeRepositories = Prelude.Nothing, customImages = Prelude.Nothing,
       defaultResourceSpec = Prelude.Nothing,
       lifecycleConfigArns = Prelude.Nothing}
instance ToResourceProperties JupyterLabAppSettingsProperty where
  toResourceProperties JupyterLabAppSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::UserProfile.JupyterLabAppSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AppLifecycleManagement"
                              Prelude.<$> appLifecycleManagement,
                            (JSON..=) "CodeRepositories" Prelude.<$> codeRepositories,
                            (JSON..=) "CustomImages" Prelude.<$> customImages,
                            (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
                            (JSON..=) "LifecycleConfigArns" Prelude.<$> lifecycleConfigArns])}
instance JSON.ToJSON JupyterLabAppSettingsProperty where
  toJSON JupyterLabAppSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AppLifecycleManagement"
                 Prelude.<$> appLifecycleManagement,
               (JSON..=) "CodeRepositories" Prelude.<$> codeRepositories,
               (JSON..=) "CustomImages" Prelude.<$> customImages,
               (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
               (JSON..=) "LifecycleConfigArns" Prelude.<$> lifecycleConfigArns]))
instance Property "AppLifecycleManagement" JupyterLabAppSettingsProperty where
  type PropertyType "AppLifecycleManagement" JupyterLabAppSettingsProperty = AppLifecycleManagementProperty
  set newValue JupyterLabAppSettingsProperty {..}
    = JupyterLabAppSettingsProperty
        {appLifecycleManagement = Prelude.pure newValue, ..}
instance Property "CodeRepositories" JupyterLabAppSettingsProperty where
  type PropertyType "CodeRepositories" JupyterLabAppSettingsProperty = [CodeRepositoryProperty]
  set newValue JupyterLabAppSettingsProperty {..}
    = JupyterLabAppSettingsProperty
        {codeRepositories = Prelude.pure newValue, ..}
instance Property "CustomImages" JupyterLabAppSettingsProperty where
  type PropertyType "CustomImages" JupyterLabAppSettingsProperty = [CustomImageProperty]
  set newValue JupyterLabAppSettingsProperty {..}
    = JupyterLabAppSettingsProperty
        {customImages = Prelude.pure newValue, ..}
instance Property "DefaultResourceSpec" JupyterLabAppSettingsProperty where
  type PropertyType "DefaultResourceSpec" JupyterLabAppSettingsProperty = ResourceSpecProperty
  set newValue JupyterLabAppSettingsProperty {..}
    = JupyterLabAppSettingsProperty
        {defaultResourceSpec = Prelude.pure newValue, ..}
instance Property "LifecycleConfigArns" JupyterLabAppSettingsProperty where
  type PropertyType "LifecycleConfigArns" JupyterLabAppSettingsProperty = ValueList Prelude.Text
  set newValue JupyterLabAppSettingsProperty {..}
    = JupyterLabAppSettingsProperty
        {lifecycleConfigArns = Prelude.pure newValue, ..}