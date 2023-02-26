module Stratosphere.MediaPackage.OriginEndpoint.HlsManifestProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HlsManifestProperty :: Prelude.Type
instance ToResourceProperties HlsManifestProperty
instance JSON.ToJSON HlsManifestProperty