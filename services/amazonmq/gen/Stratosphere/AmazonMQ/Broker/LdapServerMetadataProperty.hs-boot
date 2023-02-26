module Stratosphere.AmazonMQ.Broker.LdapServerMetadataProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LdapServerMetadataProperty :: Prelude.Type
instance ToResourceProperties LdapServerMetadataProperty
instance JSON.ToJSON LdapServerMetadataProperty