module Stratosphere.AppTest.TestCase.CloudFormationActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CloudFormationActionProperty :: Prelude.Type
instance ToResourceProperties CloudFormationActionProperty
instance Prelude.Eq CloudFormationActionProperty
instance Prelude.Show CloudFormationActionProperty
instance JSON.ToJSON CloudFormationActionProperty