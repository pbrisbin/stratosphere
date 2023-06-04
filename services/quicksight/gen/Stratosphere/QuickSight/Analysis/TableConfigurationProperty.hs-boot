module Stratosphere.QuickSight.Analysis.TableConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TableConfigurationProperty :: Prelude.Type
instance ToResourceProperties TableConfigurationProperty
instance JSON.ToJSON TableConfigurationProperty