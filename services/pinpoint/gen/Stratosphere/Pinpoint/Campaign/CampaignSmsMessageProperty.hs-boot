module Stratosphere.Pinpoint.Campaign.CampaignSmsMessageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CampaignSmsMessageProperty :: Prelude.Type
instance ToResourceProperties CampaignSmsMessageProperty
instance JSON.ToJSON CampaignSmsMessageProperty