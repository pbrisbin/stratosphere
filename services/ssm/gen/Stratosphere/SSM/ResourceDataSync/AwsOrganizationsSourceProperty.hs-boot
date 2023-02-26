module Stratosphere.SSM.ResourceDataSync.AwsOrganizationsSourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AwsOrganizationsSourceProperty :: Prelude.Type
instance ToResourceProperties AwsOrganizationsSourceProperty
instance JSON.ToJSON AwsOrganizationsSourceProperty