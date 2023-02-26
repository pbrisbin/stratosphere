module Stratosphere.ACMPCA.Certificate.PolicyInformationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PolicyInformationProperty :: Prelude.Type
instance ToResourceProperties PolicyInformationProperty
instance JSON.ToJSON PolicyInformationProperty