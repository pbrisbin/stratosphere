module Stratosphere.CustomerProfiles.Domain.ConflictResolutionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ConflictResolutionProperty :: Prelude.Type
instance ToResourceProperties ConflictResolutionProperty
instance Prelude.Eq ConflictResolutionProperty
instance Prelude.Show ConflictResolutionProperty
instance JSON.ToJSON ConflictResolutionProperty