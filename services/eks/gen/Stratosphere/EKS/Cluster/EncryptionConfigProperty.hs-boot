module Stratosphere.EKS.Cluster.EncryptionConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EncryptionConfigProperty :: Prelude.Type
instance ToResourceProperties EncryptionConfigProperty
instance JSON.ToJSON EncryptionConfigProperty