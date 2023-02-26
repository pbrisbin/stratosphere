module Stratosphere.AppIntegrations.EventIntegration.EventIntegrationAssociationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EventIntegrationAssociationProperty :: Prelude.Type
instance ToResourceProperties EventIntegrationAssociationProperty
instance JSON.ToJSON EventIntegrationAssociationProperty