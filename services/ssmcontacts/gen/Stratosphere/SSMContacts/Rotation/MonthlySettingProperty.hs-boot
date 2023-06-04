module Stratosphere.SSMContacts.Rotation.MonthlySettingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MonthlySettingProperty :: Prelude.Type
instance ToResourceProperties MonthlySettingProperty
instance JSON.ToJSON MonthlySettingProperty