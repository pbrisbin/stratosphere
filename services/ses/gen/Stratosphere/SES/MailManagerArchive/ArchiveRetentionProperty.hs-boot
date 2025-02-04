module Stratosphere.SES.MailManagerArchive.ArchiveRetentionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ArchiveRetentionProperty :: Prelude.Type
instance ToResourceProperties ArchiveRetentionProperty
instance Prelude.Eq ArchiveRetentionProperty
instance Prelude.Show ArchiveRetentionProperty
instance JSON.ToJSON ArchiveRetentionProperty