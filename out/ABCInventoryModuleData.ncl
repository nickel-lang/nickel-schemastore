# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ABCInventoryAdjustTransaction" =
        {
            oldQuantity | Number,
            timestamp | Number,
            transactionData
              | {
                locationID | String,
                lotID | String,
                lotNumber | String,
                materialCategoryID | String,
                materialNumberID | String,
                newQuantity | Number,
                notes | String,
                productID | js2n.Nullable String,
                reasonCodeID | String,
              },
            transactionType | std.enum.TagOrString | [| 'adjust |],
            uid | String,
          },
      "definitions.ABCInventoryBuildTransaction" =
        {
            targetLotID | String | optional,
            timestamp | Number,
            transactionData
              | {
                dateOfExpiry | String,
                dateOfManufacture | String,
                locationID | String,
                lotNumber | String,
                materialCategoryID | String,
                materialNumberID | String,
                notes | String,
                poNumber | String,
                productID | js2n.Nullable String,
                quantity | Number,
                statusID | refs."definitions.ABCStatus" | String,
                tagIDs | Array String,
                upstreamIDs | Array String,
                upstreamLocationIDs | Array String,
                upstreamLotNumbers | Array String,
                upstreamMaterialCategoryIDs | Array String,
                upstreamMaterialNumberIDs | Array String,
                upstreamProductIDs | Array (js2n.Nullable String),
                upstreamQuantities | Array Number,
                upstreams | Array { lotID | String, quantity | Number, },
              },
            transactionType | std.enum.TagOrString | [| 'build |],
            uid | String,
          },
      "definitions.ABCInventoryChangeAttributesTransaction" =
        {
            timestamp | Number,
            transactionData
              | {
                dateOfManufacture | String | optional,
                locationID | String,
                lotID | String,
                lotNumber | String,
                materialCategoryID | String,
                materialNumberID | String,
                notes | String | optional,
                poNumber | String | optional,
                productID | js2n.Nullable String,
                tagIDs | Array String | optional,
              },
            transactionType | std.enum.TagOrString | [| 'changeAttributes |],
            uid | String,
          },
      "definitions.ABCInventoryChangeExpiryTransaction" =
        {
            timestamp | Number,
            transactionData
              | {
                locationID | String,
                lotID | String,
                lotNumber | String,
                materialCategoryID | String,
                materialNumberID | String,
                newDateOfExpiry | String,
                notes | String,
                productID | js2n.Nullable String,
              },
            transactionType | std.enum.TagOrString | [| 'changeExpiry |],
            uid | String,
          },
      "definitions.ABCInventoryDestroyTransaction" =
        {
            timestamp | Number,
            transactionData
              | {
                locationID | String,
                lotID | String,
                lotNumber | String,
                materialCategoryID | String,
                materialNumberID | String,
                notes | String,
                productID | js2n.Nullable String,
              },
            transactionType | std.enum.TagOrString | [| 'destroy |],
            uid | String,
          },
      "definitions.ABCInventoryDistributeTransaction" =
        {
            timestamp | Number,
            transactionData
              | {
                locationID | String,
                lotID | String,
                lotNumber | String,
                materialCategoryID | String,
                materialNumberID | String,
                notes | String,
                productID | js2n.Nullable String,
                quantity | Number,
              },
            transactionType | std.enum.TagOrString | [| 'distribute |],
            uid | String,
          },
      "definitions.ABCInventoryEntry" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."definitions.ABCInventoryEntryWithoutUpstreams",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."definitions.ABCInventoryEntryWithUpstreams",
                  { _ | Dyn }
                ]
            ],
      "definitions.ABCInventoryEntryWithUpstreams" =
        {
            dateOfExpiry | String,
            dateOfManufacture | String,
            hasUpstreams | js2n.Enum [ true ],
            locationID | String,
            lotNumber | String,
            lotNumberLowercase | String,
            materialCategoryID | String,
            materialNumberID | String,
            poNumber | String,
            productID | js2n.Nullable String,
            quantity | Number,
            statusID | refs."definitions.ABCStatus" | String,
            tagIDs | Array String,
            transactionNotes | Array String,
            upstreamIDs | Array String,
            upstreamLotNumbers | Array String,
            upstreamQuantities | Array Number,
          },
      "definitions.ABCInventoryEntryWithoutUpstreams" =
        {
            dateOfExpiry | String,
            dateOfManufacture | String,
            hasUpstreams | js2n.Enum [ false ],
            locationID | String,
            lotNumber | String,
            lotNumberLowercase | String,
            materialCategoryID | String,
            materialNumberID | String,
            poNumber | String,
            productID | js2n.Nullable String,
            quantity | Number,
            statusID | refs."definitions.ABCStatus" | String,
            tagIDs | Array String,
            transactionNotes | Array String,
          },
      "definitions.ABCInventoryReceiveTransaction" =
        {
            targetLotID | String | optional,
            timestamp | Number,
            transactionData
              | {
                dateOfExpiry | String,
                dateOfManufacture | String,
                locationID | String,
                lotNumber | String,
                materialCategoryID | String,
                materialNumberID | String,
                notes | String,
                poNumber | String,
                productID | js2n.Nullable String,
                quantity | Number,
                statusID | refs."definitions.ABCStatus" | String,
                tagIDs | Array String,
              },
            transactionType | std.enum.TagOrString | [| 'receive |],
            uid | String,
          },
      "definitions.ABCInventorySellTransaction" =
        {
            timestamp | Number,
            transactionData
              | {
                locationID | String,
                lotID | String,
                lotNumber | String,
                materialCategoryID | String,
                materialNumberID | String,
                notes | String,
                productID | js2n.Nullable String,
                quantity | Number,
              },
            transactionType | std.enum.TagOrString | [| 'sell |],
            uid | String,
          },
      "definitions.ABCInventoryStatusChangeTransaction" =
        {
            targetLotID | String | optional,
            timestamp | Number,
            transactionData
              | {
                locationID | String,
                lotID | String,
                lotNumber | String,
                materialCategoryID | String,
                materialNumberID | String,
                newStatusID | refs."definitions.ABCStatus" | String,
                notes | String,
                productID | js2n.Nullable String,
                quantity | Number,
              },
            transactionType | std.enum.TagOrString | [| 'statusChange |],
            uid | String,
          },
      "definitions.ABCInventoryTransaction" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."definitions.ABCInventoryReceiveTransaction",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."definitions.ABCInventoryBuildTransaction",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."definitions.ABCInventoryTransferTransaction",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."definitions.ABCInventoryStatusChangeTransaction",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."definitions.ABCInventoryDistributeTransaction",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."definitions.ABCInventoryDestroyTransaction",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."definitions.ABCInventorySellTransaction", { _ | Dyn } ],
              std.contract.Sequence
                [
                  refs."definitions.ABCInventoryAdjustTransaction",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."definitions.ABCInventoryChangeExpiryTransaction",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."definitions.ABCInventoryChangeAttributesTransaction",
                  { _ | Dyn }
                ]
            ],
      "definitions.ABCInventoryTransferTransaction" =
        {
            targetLotID | String | optional,
            timestamp | Number,
            transactionData
              | {
                locationID | String,
                lotID | String,
                lotNumber | String,
                materialCategoryID | String,
                materialNumberID | String,
                newLocationID | String,
                notes | String,
                productID | js2n.Nullable String,
                quantity | Number,
              },
            transactionType | std.enum.TagOrString | [| 'transfer |],
            uid | String,
          },
      "definitions.ABCStatus" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'DAMAGED,
                'EXPIRED,
                'ON_HOLD,
                'IN_TRANSIT,
                'QUARANTINE,
                'CONDITIONAL_RELEASED,
                'RELEASED
              |]
            ],
    }
    in
  {
      "$schema"
        | std.enum.TagOrString
        | [|
          '"https://json.schemastore.org/abc-inventory-module-data-5.1.0.json"
        |]
        | doc "Link to https://json.schemastore.org/abc-inventory-module-data-5.1.0.json",
      ABCInventoryEntries
        | { _ | refs."definitions.ABCInventoryEntry" }
        | js2n.record.FieldsMatch "^[a-zA-Z0-9_-]+$",
      ABCLocations
        | { _ | { isActive | Bool, name | String, } }
        | js2n.record.FieldsMatch "^[a-zA-Z0-9_-]+$",
      ABCMaterialCategories
        | { _ | { isActive | Bool, name | String, prefix | String, } }
        | js2n.record.FieldsMatch "^[a-zA-Z0-9_-]+$",
      ABCMaterialNumbers
        | {
          _ | {
            description | String,
            isActive | Bool,
            materialCategoryID | String,
            name | String,
            number | Number,
            productID | js2n.Nullable String,
            unitOfMeasure | String,
            vendorID | js2n.Nullable String,
          }
        }
        | js2n.record.FieldsMatch "^[a-zA-Z0-9_-]+$",
      ABCProducts
        | { _ | { isActive | Bool, name | String, } }
        | js2n.record.FieldsMatch "^[a-zA-Z0-9_-]+$",
      ABCReasonCodes
        | { _ | { code | String, description | String, isActive | Bool, } }
        | js2n.record.FieldsMatch "^[a-zA-Z0-9_-]+$",
      ABCTags
        | { _ | { isActive | Bool, name | String, } }
        | js2n.record.FieldsMatch "^[a-zA-Z0-9_-]+$",
      ABCTransactions | Array refs."definitions.ABCInventoryTransaction",
      ABCVendors
        | { _ | { isActive | Bool, name | String, } }
        | js2n.record.FieldsMatch "^[a-zA-Z0-9_-]+$",
    }