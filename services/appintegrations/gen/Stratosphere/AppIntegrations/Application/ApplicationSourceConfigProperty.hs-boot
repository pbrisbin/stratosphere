module Stratosphere.AppIntegrations.Application.ApplicationSourceConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ApplicationSourceConfigProperty :: Prelude.Type
instance ToResourceProperties ApplicationSourceConfigProperty
instance Prelude.Eq ApplicationSourceConfigProperty
instance Prelude.Show ApplicationSourceConfigProperty
instance JSON.ToJSON ApplicationSourceConfigProperty