module Stratosphere.AppFlow.Flow.ErrorHandlingConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ErrorHandlingConfigProperty :: Prelude.Type
instance ToResourceProperties ErrorHandlingConfigProperty
instance JSON.ToJSON ErrorHandlingConfigProperty