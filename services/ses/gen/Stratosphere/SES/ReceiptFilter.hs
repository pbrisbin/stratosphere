module Stratosphere.SES.ReceiptFilter (
        module Exports, ReceiptFilter(..), mkReceiptFilter
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.ReceiptFilter.FilterProperty as Exports
import Stratosphere.ResourceProperties
data ReceiptFilter = ReceiptFilter {filter :: FilterProperty}
mkReceiptFilter :: FilterProperty -> ReceiptFilter
mkReceiptFilter filter = ReceiptFilter {filter = filter}
instance ToResourceProperties ReceiptFilter where
  toResourceProperties ReceiptFilter {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptFilter",
         properties = ["Filter" JSON..= filter]}
instance JSON.ToJSON ReceiptFilter where
  toJSON ReceiptFilter {..} = JSON.object ["Filter" JSON..= filter]
instance Property "Filter" ReceiptFilter where
  type PropertyType "Filter" ReceiptFilter = FilterProperty
  set newValue ReceiptFilter {}
    = ReceiptFilter {filter = newValue, ..}