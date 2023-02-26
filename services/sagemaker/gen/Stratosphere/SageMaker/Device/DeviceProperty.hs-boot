module Stratosphere.SageMaker.Device.DeviceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DeviceProperty :: Prelude.Type
instance ToResourceProperties DeviceProperty
instance JSON.ToJSON DeviceProperty