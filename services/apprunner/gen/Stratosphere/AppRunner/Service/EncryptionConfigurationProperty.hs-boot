module Stratosphere.AppRunner.Service.EncryptionConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EncryptionConfigurationProperty :: Prelude.Type
instance ToResourceProperties EncryptionConfigurationProperty
instance JSON.ToJSON EncryptionConfigurationProperty