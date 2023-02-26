module Stratosphere.Lex.Bot.CustomVocabularyProperty (
        module Exports, CustomVocabularyProperty(..),
        mkCustomVocabularyProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.CustomVocabularyItemProperty as Exports
import Stratosphere.ResourceProperties
data CustomVocabularyProperty
  = CustomVocabularyProperty {customVocabularyItems :: [CustomVocabularyItemProperty]}
mkCustomVocabularyProperty ::
  [CustomVocabularyItemProperty] -> CustomVocabularyProperty
mkCustomVocabularyProperty customVocabularyItems
  = CustomVocabularyProperty
      {customVocabularyItems = customVocabularyItems}
instance ToResourceProperties CustomVocabularyProperty where
  toResourceProperties CustomVocabularyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.CustomVocabulary",
         properties = ["CustomVocabularyItems"
                         JSON..= customVocabularyItems]}
instance JSON.ToJSON CustomVocabularyProperty where
  toJSON CustomVocabularyProperty {..}
    = JSON.object
        ["CustomVocabularyItems" JSON..= customVocabularyItems]
instance Property "CustomVocabularyItems" CustomVocabularyProperty where
  type PropertyType "CustomVocabularyItems" CustomVocabularyProperty = [CustomVocabularyItemProperty]
  set newValue CustomVocabularyProperty {}
    = CustomVocabularyProperty {customVocabularyItems = newValue, ..}