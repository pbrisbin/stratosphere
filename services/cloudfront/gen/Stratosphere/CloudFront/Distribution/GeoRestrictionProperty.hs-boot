module Stratosphere.CloudFront.Distribution.GeoRestrictionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GeoRestrictionProperty :: Prelude.Type
instance ToResourceProperties GeoRestrictionProperty
instance JSON.ToJSON GeoRestrictionProperty