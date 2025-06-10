# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "oneOf.0.allOf.1" =
        {
            classifications
              | Array (
                std.contract.Sequence
                  [
                    refs."oneOf.0.allOf.1.definitions.Classification",
                    { _ | Dyn }
                  ]
              )
              | doc "Classification Data and how different classifications relates to one another"
              | optional,
            concepts
              | Array (
                std.contract.Sequence
                  [ refs."oneOf.0.allOf.1.definitions.Concept", { _ | Dyn } ]
              )
              | doc m%"
                All abstract concepts that ties different concrete items or abstract values together
                this is also used to create complex mappings between different concrete items
              "%
              | optional,
            items
              | Array (
                std.contract.Sequence
                  [
                    refs."oneOf.0.allOf.1.definitions.ItemDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "All concrete items in a catalog (usually each item tied to a specific sku)"
              | optional,
            title | String | doc "Title of the data" | optional,
          },
      "oneOf.0.allOf.1.definitions.AddOn" =
        {
            attributes
              | Array (
                std.contract.Sequence
                  [ refs."oneOf.0.allOf.1.definitions.Attribute", { _ | Dyn } ]
              )
              | optional,
            choiceType
              | refs."oneOf.0.allOf.1.definitions.AddOnChoiceType"
              | String
              | optional,
            itemId
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "Id of the Item"
              | optional,
            option
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."oneOf.0.allOf.1.definitions.ConceptOption",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."oneOf.0.allOf.1.definitions.RangeOption",
                      { _ | Dyn }
                    ]
                ]
              | optional,
            target
              | refs."oneOf.0.allOf.1.definitions.Target"
              | String
              | optional,
          },
      "oneOf.0.allOf.1.definitions.AddOnChoiceType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'range, 'option |] ],
      "oneOf.0.allOf.1.definitions.Attribute" =
        {
            conceptId
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "Id of the Concept"
              | optional,
            isDefault | Bool | optional,
            value | std.contract.any_of [ Bool, Number, String ] | optional,
          },
      "oneOf.0.allOf.1.definitions.Choice" =
        {
            choiceValues
              | Array (
                std.contract.Sequence
                  [
                    refs."oneOf.0.allOf.1.definitions.ChoiceValue",
                    { _ | Dyn }
                  ]
              )
              | optional,
            conceptId
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "Id of the Concept"
              | optional,
            defaultQuantity | Number | optional,
            maxQuantity | Number | optional,
            minQuantity | Number | optional,
            required | Bool | optional,
            selectType
              | refs."oneOf.0.allOf.1.definitions.SelectType"
              | String
              | optional,
            target
              | refs."oneOf.0.allOf.1.definitions.Target"
              | String
              | optional,
          },
      "oneOf.0.allOf.1.definitions.ChoiceValue" =
        {
            data
              | { _ | std.contract.any_of [ Bool, Number, String ] }
              | doc "This is a data object that is tied to the value, for the item"
              | optional,
            value
              | String
              | doc "`value` is the associated value in the concept (pointed by the `conceptId`)"
              | optional,
          },
      "oneOf.0.allOf.1.definitions.Classification" =
        {
            id
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "An unique id for the classification"
              | optional,
            name | String | doc "Proper classification name" | optional,
            parent
              | String
              | doc m%"
                The Id of its parent classification
                If parent is not present, that means the classification is a top-level classification
              "%
              | optional,
            synonyms
              | Array String
              | doc "A list of common names for this classification"
              | optional,
          },
      "oneOf.0.allOf.1.definitions.ClassificationItem" =
        {
            classificationId
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "Id of the Classification"
              | optional,
          },
      "oneOf.0.allOf.1.definitions.Component" =
        {
            attribute
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."oneOf.0.allOf.1.definitions.QuantityAttribute",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."oneOf.0.allOf.1.definitions.ConceptAttribute",
                      { _ | Dyn }
                    ]
                ]
              | optional,
            itemId
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "Id of the Item"
              | optional,
            type
              | refs."oneOf.0.allOf.1.definitions.ComponentType"
              | String
              | optional,
          },
      "oneOf.0.allOf.1.definitions.ComponentType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'quantity, 'concept |] ],
      "oneOf.0.allOf.1.definitions.Concept" =
        {
            displayName | String | doc "Proper name" | optional,
            id
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "An unique id for the concept"
              | optional,
            quantity
              | refs."oneOf.0.allOf.1.definitions.QuantityValue"
              | { _ | Dyn }
              | optional,
            type
              | refs."oneOf.0.allOf.1.definitions.ConceptType"
              | String
              | doc "The type of concept values"
              | optional,
            values
              | Array (
                std.contract.Sequence
                  [
                    refs."oneOf.0.allOf.1.definitions.DiscreteItem",
                    { _ | Dyn }
                  ]
              )
              | doc "The list of values"
              | optional,
          },
      "oneOf.0.allOf.1.definitions.ConceptAttribute" =
        { conceptId | String | optional, defaultValue | String | optional, },
      "oneOf.0.allOf.1.definitions.ConceptOption" =
        {
            conceptId | String | optional,
            defaultValue | String | optional,
            optionValues
              | Array (
                std.contract.Sequence
                  [
                    refs."oneOf.0.allOf.1.definitions.OptionValue",
                    { _ | Dyn }
                  ]
              )
              | optional,
          },
      "oneOf.0.allOf.1.definitions.ConceptType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'quantity, 'discrete-ordered, 'discrete |]
            ],
      "oneOf.0.allOf.1.definitions.Customization" =
        {
            conceptId
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "Id of the Concept"
              | optional,
            defaultQuantity | Number | optional,
            maxQuantity | Number | optional,
            minQuantity | Number | optional,
          },
      "oneOf.0.allOf.1.definitions.DiscreteItem" =
        {
            associatedItemId
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "An unique id for the item associated with the item"
              | optional,
            synonyms | Array String | optional,
            value | String | optional,
          },
      "oneOf.0.allOf.1.definitions.ItemDefinition" =
        {
            addOns
              | Array (
                std.contract.Sequence
                  [ refs."oneOf.0.allOf.1.definitions.AddOn", { _ | Dyn } ]
              )
              | optional,
            choices
              | Array (
                std.contract.Sequence
                  [ refs."oneOf.0.allOf.1.definitions.Choice", { _ | Dyn } ]
              )
              | optional,
            classifications
              | Array (
                std.contract.Sequence
                  [
                    refs."oneOf.0.allOf.1.definitions.ClassificationItem",
                    { _ | Dyn }
                  ]
              )
              | optional,
            commonNames | Array String | optional,
            components
              | Array (
                std.contract.Sequence
                  [ refs."oneOf.0.allOf.1.definitions.Component", { _ | Dyn } ]
              )
              | optional,
            customizations
              | Array (
                std.contract.Sequence
                  [
                    refs."oneOf.0.allOf.1.definitions.Customization",
                    { _ | Dyn }
                  ]
              )
              | optional,
            disambiguationAttributes
              | Array (
                std.contract.Sequence
                  [ refs."oneOf.0.allOf.1.definitions.Attribute", { _ | Dyn } ]
              )
              | optional,
            displayName | String | optional,
            id
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "Id of the item"
              | optional,
            metadata
              | Array (
                std.contract.Sequence
                  [ refs."oneOf.0.allOf.1.definitions.Metadata", { _ | Dyn } ]
              )
              | optional,
          },
      "oneOf.0.allOf.1.definitions.Metadata" =
        {
            name | String | optional,
            value | std.contract.any_of [ Bool, Number, String ] | optional,
          },
      "oneOf.0.allOf.1.definitions.OptionValue" =
        {
            data
              | { _ | std.contract.any_of [ Bool, Number, String ] }
              | optional,
            value | String | optional,
          },
      "oneOf.0.allOf.1.definitions.QuantityAttribute" =
        {
            defaultQuantity | Number | optional,
            maxQuantity | Number | optional,
            minQuantity | Number | optional,
          },
      "oneOf.0.allOf.1.definitions.QuantityValue" =
        {
            incrementBy | Number | optional,
            maxQuantity | Number | optional,
            minQuantity | Number | optional,
          },
      "oneOf.0.allOf.1.definitions.RangeOption" =
        {
            defaultQuantity | Number | optional,
            incrementBy | Number | optional,
            maxQuantity | Number | optional,
            minQuantity | Number | optional,
          },
      "oneOf.0.allOf.1.definitions.SelectType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'single, 'multiple |] ],
      "oneOf.0.allOf.1.definitions.Target" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'supplement, 'replace |] ],
      "oneOf.1.allOf.1.definitions.AddOn" =
        {
            attributes
              | Array (
                std.contract.Sequence
                  [ refs."oneOf.1.allOf.1.definitions.Attribute", { _ | Dyn } ]
              )
              | optional,
            choiceType
              | refs."oneOf.1.allOf.1.definitions.AddOnChoiceType"
              | String
              | optional,
            itemId
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "Id of the Item"
              | optional,
            option
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."oneOf.1.allOf.1.definitions.ConceptOption",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."oneOf.1.allOf.1.definitions.RangeOption",
                      { _ | Dyn }
                    ]
                ]
              | optional,
            target
              | refs."oneOf.1.allOf.1.definitions.Target"
              | String
              | optional,
            ..
          },
      "oneOf.1.allOf.1.definitions.AddOnChoiceType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'range, 'option |] ],
      "oneOf.1.allOf.1.definitions.Attribute" =
        {
            conceptId
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "Id of the Concept"
              | optional,
            isDefault | Bool | optional,
            value | std.contract.any_of [ Bool, Number, String ] | optional,
            ..
          },
      "oneOf.1.allOf.1.definitions.Choice" =
        {
            choiceValues
              | Array (
                std.contract.Sequence
                  [
                    refs."oneOf.1.allOf.1.definitions.ChoiceValue",
                    { _ | Dyn }
                  ]
              )
              | optional,
            conceptId
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "Id of the Concept"
              | optional,
            defaultQuantity | Number | optional,
            maxQuantity | Number | optional,
            minQuantity | Number | optional,
            required | Bool | optional,
            selectType
              | refs."oneOf.1.allOf.1.definitions.SelectType"
              | String
              | optional,
            target
              | refs."oneOf.1.allOf.1.definitions.Target"
              | String
              | optional,
            ..
          },
      "oneOf.1.allOf.1.definitions.ChoiceValue" =
        {
            data
              | { _ | std.contract.any_of [ Bool, Number, String ] }
              | doc "This is a data object that is tied to the value, for the item"
              | optional,
            value
              | String
              | doc "`value` is the associated value in the concept (pointed by the `conceptId`)"
              | optional,
            ..
          },
      "oneOf.1.allOf.1.definitions.Classification" =
        {
            id
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "An unique id for the classification"
              | optional,
            name | String | doc "Proper classification name" | optional,
            parent
              | String
              | doc m%"
                The Id of its parent classification
                If parent is not present, that means the classification is a top-level classification
              "%
              | optional,
            synonyms
              | Array String
              | doc "A list of common names for this classification"
              | optional,
            ..
          },
      "oneOf.1.allOf.1.definitions.ClassificationItem" =
        {
            classificationId
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "Id of the Classification"
              | optional,
            ..
          },
      "oneOf.1.allOf.1.definitions.Component" =
        {
            attribute
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."oneOf.1.allOf.1.definitions.QuantityAttribute",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."oneOf.1.allOf.1.definitions.ConceptAttribute",
                      { _ | Dyn }
                    ]
                ]
              | optional,
            itemId
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "Id of the Item"
              | optional,
            type
              | refs."oneOf.1.allOf.1.definitions.ComponentType"
              | String
              | optional,
            ..
          },
      "oneOf.1.allOf.1.definitions.ComponentType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'quantity, 'concept |] ],
      "oneOf.1.allOf.1.definitions.Concept" =
        {
            displayName | String | doc "Proper name" | optional,
            id
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "An unique id for the concept"
              | optional,
            quantity
              | refs."oneOf.1.allOf.1.definitions.QuantityValue"
              | { _ | Dyn }
              | optional,
            type
              | refs."oneOf.1.allOf.1.definitions.ConceptType"
              | String
              | doc "The type of concept values"
              | optional,
            values
              | Array (
                std.contract.Sequence
                  [
                    refs."oneOf.1.allOf.1.definitions.DiscreteItem",
                    { _ | Dyn }
                  ]
              )
              | doc "The list of values"
              | optional,
            ..
          },
      "oneOf.1.allOf.1.definitions.ConceptAttribute" =
        { conceptId | String | optional, defaultValue | String | optional, .. },
      "oneOf.1.allOf.1.definitions.ConceptOption" =
        {
            conceptId | String | optional,
            defaultValue | String | optional,
            optionValues
              | Array (
                std.contract.Sequence
                  [
                    refs."oneOf.1.allOf.1.definitions.OptionValue",
                    { _ | Dyn }
                  ]
              )
              | optional,
            ..
          },
      "oneOf.1.allOf.1.definitions.ConceptType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'quantity, 'discrete-ordered, 'discrete |]
            ],
      "oneOf.1.allOf.1.definitions.Customization" =
        {
            conceptId
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "Id of the Concept"
              | optional,
            defaultQuantity | Number | optional,
            maxQuantity | Number | optional,
            minQuantity | Number | optional,
            ..
          },
      "oneOf.1.allOf.1.definitions.DiscreteItem" =
        {
            associatedItemId
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "An unique id for the item associated with the item"
              | optional,
            synonyms | Array String | optional,
            value | String | optional,
            ..
          },
      "oneOf.1.allOf.1.definitions.ItemDefinition" =
        {
            addOns
              | Array (
                std.contract.Sequence
                  [ refs."oneOf.1.allOf.1.definitions.AddOn", { _ | Dyn } ]
              )
              | optional,
            choices
              | Array (
                std.contract.Sequence
                  [ refs."oneOf.1.allOf.1.definitions.Choice", { _ | Dyn } ]
              )
              | optional,
            classifications
              | Array (
                std.contract.Sequence
                  [
                    refs."oneOf.1.allOf.1.definitions.ClassificationItem",
                    { _ | Dyn }
                  ]
              )
              | optional,
            commonNames | Array String | optional,
            components
              | Array (
                std.contract.Sequence
                  [ refs."oneOf.1.allOf.1.definitions.Component", { _ | Dyn } ]
              )
              | optional,
            customizations
              | Array (
                std.contract.Sequence
                  [
                    refs."oneOf.1.allOf.1.definitions.Customization",
                    { _ | Dyn }
                  ]
              )
              | optional,
            disambiguationAttributes
              | Array (
                std.contract.Sequence
                  [ refs."oneOf.1.allOf.1.definitions.Attribute", { _ | Dyn } ]
              )
              | optional,
            displayName | String | optional,
            id
              | js2n.string.Matches "^[A-Za-z0-9_\\-]+$"
              | doc "Id of the item"
              | optional,
            metadata
              | Array (
                std.contract.Sequence
                  [ refs."oneOf.1.allOf.1.definitions.Metadata", { _ | Dyn } ]
              )
              | optional,
            ..
          },
      "oneOf.1.allOf.1.definitions.Metadata" =
        {
            name | String | optional,
            value | std.contract.any_of [ Bool, Number, String ] | optional,
            ..
          },
      "oneOf.1.allOf.1.definitions.OptionValue" =
        {
            data
              | { _ | std.contract.any_of [ Bool, Number, String ] }
              | optional,
            value | String | optional,
            ..
          },
      "oneOf.1.allOf.1.definitions.QuantityAttribute" =
        {
            defaultQuantity | Number | optional,
            maxQuantity | Number | optional,
            minQuantity | Number | optional,
            ..
          },
      "oneOf.1.allOf.1.definitions.QuantityValue" =
        {
            incrementBy | Number | optional,
            maxQuantity | Number | optional,
            minQuantity | Number | optional,
            ..
          },
      "oneOf.1.allOf.1.definitions.RangeOption" =
        {
            defaultQuantity | Number | optional,
            incrementBy | Number | optional,
            maxQuantity | Number | optional,
            minQuantity | Number | optional,
            ..
          },
      "oneOf.1.allOf.1.definitions.SelectType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'single, 'multiple |] ],
      "oneOf.1.allOf.1.definitions.Target" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'supplement, 'replace |] ],
    }
    in
  std.contract.Sequence
      [
        js2n.OneOf
          [
            std.contract.Sequence
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { version = js2n.Const "0.3.0", },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          classifications =
                            js2n.array.ArrayOf
                                refs."oneOf.0.allOf.1.definitions.Classification",
                          concepts =
                            js2n.array.ArrayOf
                                refs."oneOf.0.allOf.1.definitions.Concept",
                          items =
                            js2n.array.ArrayOf
                                refs."oneOf.0.allOf.1.definitions.ItemDefinition",
                          title = String,
                        },
                    required = {},
                  }
              ],
            std.contract.Sequence
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { version = js2n.Const "0.2.1", },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          classifications =
                            js2n.array.ArrayOf
                                refs."oneOf.1.allOf.1.definitions.Classification",
                          concepts =
                            js2n.array.ArrayOf
                                refs."oneOf.1.allOf.1.definitions.Concept",
                          items =
                            js2n.array.ArrayOf
                                refs."oneOf.1.allOf.1.definitions.ItemDefinition",
                          title = String,
                        },
                    required = {},
                  }
              ],
            std.contract.Sequence
              [
                js2n.OneOf
                  [
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = {},
                            properties = { version = js2n.string.MaxLength 0, },
                            required = { version = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.not
                      (std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties = { version = js2n.Always, },
                              required = { version = true, },
                            },
                          Array Dyn
                        ])
                  ],
                refs."oneOf.0.allOf.1"
              ]
          ],
        { _ | Dyn }
      ]