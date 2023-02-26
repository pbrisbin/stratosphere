module Stratosphere.WAFv2.WebACL.ByteMatchStatementProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ByteMatchStatementProperty :: Prelude.Type
instance ToResourceProperties ByteMatchStatementProperty
instance JSON.ToJSON ByteMatchStatementProperty