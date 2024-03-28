module Stratosphere.S3.StorageLens.StorageLensGroupLevelProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StorageLensGroupLevelProperty :: Prelude.Type
instance ToResourceProperties StorageLensGroupLevelProperty
instance Prelude.Eq StorageLensGroupLevelProperty
instance Prelude.Show StorageLensGroupLevelProperty
instance JSON.ToJSON StorageLensGroupLevelProperty