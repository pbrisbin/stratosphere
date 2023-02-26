module Stratosphere.MediaPackage.PackagingConfiguration.CmafPackageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CmafPackageProperty :: Prelude.Type
instance ToResourceProperties CmafPackageProperty
instance JSON.ToJSON CmafPackageProperty