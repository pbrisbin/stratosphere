module Stratosphere.CustomerProfiles.Domain.ExportingConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ExportingConfigProperty :: Prelude.Type
instance ToResourceProperties ExportingConfigProperty
instance Prelude.Eq ExportingConfigProperty
instance Prelude.Show ExportingConfigProperty
instance JSON.ToJSON ExportingConfigProperty