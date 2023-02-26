module Stratosphere.SageMaker.Domain.SharingSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SharingSettingsProperty :: Prelude.Type
instance ToResourceProperties SharingSettingsProperty
instance JSON.ToJSON SharingSettingsProperty