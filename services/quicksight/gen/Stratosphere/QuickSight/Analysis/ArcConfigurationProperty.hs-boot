module Stratosphere.QuickSight.Analysis.ArcConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ArcConfigurationProperty :: Prelude.Type
instance ToResourceProperties ArcConfigurationProperty
instance JSON.ToJSON ArcConfigurationProperty