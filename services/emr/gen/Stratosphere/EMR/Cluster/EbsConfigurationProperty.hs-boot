module Stratosphere.EMR.Cluster.EbsConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EbsConfigurationProperty :: Prelude.Type
instance ToResourceProperties EbsConfigurationProperty
instance JSON.ToJSON EbsConfigurationProperty