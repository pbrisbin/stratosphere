module Stratosphere.WAFv2.WebACL.HeadersProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HeadersProperty :: Prelude.Type
instance ToResourceProperties HeadersProperty
instance JSON.ToJSON HeadersProperty