module Stratosphere.IoT.DomainConfiguration.AuthorizerConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AuthorizerConfigProperty :: Prelude.Type
instance ToResourceProperties AuthorizerConfigProperty
instance JSON.ToJSON AuthorizerConfigProperty