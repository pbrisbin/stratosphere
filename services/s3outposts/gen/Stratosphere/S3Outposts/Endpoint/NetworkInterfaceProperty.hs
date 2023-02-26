module Stratosphere.S3Outposts.Endpoint.NetworkInterfaceProperty (
        NetworkInterfaceProperty(..), mkNetworkInterfaceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfaceProperty
  = NetworkInterfaceProperty {networkInterfaceId :: (Value Prelude.Text)}
mkNetworkInterfaceProperty ::
  Value Prelude.Text -> NetworkInterfaceProperty
mkNetworkInterfaceProperty networkInterfaceId
  = NetworkInterfaceProperty
      {networkInterfaceId = networkInterfaceId}
instance ToResourceProperties NetworkInterfaceProperty where
  toResourceProperties NetworkInterfaceProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Outposts::Endpoint.NetworkInterface",
         properties = ["NetworkInterfaceId" JSON..= networkInterfaceId]}
instance JSON.ToJSON NetworkInterfaceProperty where
  toJSON NetworkInterfaceProperty {..}
    = JSON.object ["NetworkInterfaceId" JSON..= networkInterfaceId]
instance Property "NetworkInterfaceId" NetworkInterfaceProperty where
  type PropertyType "NetworkInterfaceId" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {}
    = NetworkInterfaceProperty {networkInterfaceId = newValue, ..}