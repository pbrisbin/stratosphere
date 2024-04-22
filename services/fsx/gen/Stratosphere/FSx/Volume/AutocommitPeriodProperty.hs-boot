module Stratosphere.FSx.Volume.AutocommitPeriodProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AutocommitPeriodProperty :: Prelude.Type
instance ToResourceProperties AutocommitPeriodProperty
instance Prelude.Eq AutocommitPeriodProperty
instance Prelude.Show AutocommitPeriodProperty
instance JSON.ToJSON AutocommitPeriodProperty