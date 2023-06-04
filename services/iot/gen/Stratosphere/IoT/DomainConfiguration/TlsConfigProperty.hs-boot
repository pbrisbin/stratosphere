module Stratosphere.IoT.DomainConfiguration.TlsConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TlsConfigProperty :: Prelude.Type
instance ToResourceProperties TlsConfigProperty
instance JSON.ToJSON TlsConfigProperty