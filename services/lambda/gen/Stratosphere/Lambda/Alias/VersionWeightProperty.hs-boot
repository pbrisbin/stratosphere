module Stratosphere.Lambda.Alias.VersionWeightProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VersionWeightProperty :: Prelude.Type
instance ToResourceProperties VersionWeightProperty
instance JSON.ToJSON VersionWeightProperty