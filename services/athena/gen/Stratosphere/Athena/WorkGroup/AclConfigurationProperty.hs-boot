module Stratosphere.Athena.WorkGroup.AclConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AclConfigurationProperty :: Prelude.Type
instance ToResourceProperties AclConfigurationProperty
instance JSON.ToJSON AclConfigurationProperty