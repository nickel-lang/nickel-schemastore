# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.arrayConstraints" =
        {
            elements | refs."definitions.elementConstraints" | optional,
            required | Bool | optional,
            type | std.contract.Equal "array",
          },
      "definitions.attributeDefinition" =
        {
            constraints
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.numberConstraints", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.stringConstraints", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.arrayConstraints", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.boolConstraints", { _ | Dyn } ]
                ],
            description
              | refs."definitions.customerDefinedDescription"
              | String
              | optional,
          },
      "definitions.attributeDefinitions" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 25,
              {
                _ | std.contract.Sequence
                  [ refs."definitions.attributeDefinition", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^[^\\n]{1,64}$"
            ],
      "definitions.attributeValue" =
        std.contract.any_of
            [
              js2n.string.MaxLength 1024,
              Number,
              Bool,
              Array (std.contract.any_of [ js2n.string.MaxLength 1024, Number ])
            ],
      "definitions.boolConstraints" =
        { required | Bool | optional, type | std.contract.Equal "boolean", },
      "definitions.customerDefinedDescription" = js2n.string.MaxLength 1024,
      "definitions.customerDefinedName" = js2n.string.Matches "^[^\\n]{1,64}$",
      "definitions.elementConstraints" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."definitions.numberConstraints", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.stringConstraints", { _ | Dyn } ]
            ],
      "definitions.flagDefinition" =
        {
            _createdAt | String | optional,
            _deprecation
              | {
                date | String | optional,
                status | std.contract.Equal "planned" | optional,
              }
              | optional,
            _updatedAt | String | optional,
            attributes | refs."definitions.attributeDefinitions" | { _ | Dyn },
            description
              | refs."definitions.customerDefinedDescription"
              | String
              | optional,
            name | refs."definitions.customerDefinedName" | String | optional,
          },
      "definitions.flagDefinitions" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 25,
              {
                _ | std.contract.Sequence
                  [ refs."definitions.flagDefinition", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^[^\\n]{1,64}$"
            ],
      "definitions.flagSchemaVersions" = std.contract.Equal "1",
      "definitions.flagSetDefinition" =
        {
            flags | refs."definitions.flagDefinitions" | { _ | Dyn },
            values | refs."definitions.flagValues" | { _ | Dyn },
            version | refs."definitions.flagSchemaVersions" | String,
          },
      "definitions.flagValue" =
        {
            _createdAt | String | optional,
            _updatedAt | String | optional,
            _variants
              | js2n.array.MaxItems 32
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.variant", { _ | Dyn } ]
              ),
            enabled | Bool,
          },
      "definitions.flagValues" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 25,
              {
                _ | std.contract.Sequence
                  [ refs."definitions.flagValue", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^[^\\n]{1,64}$"
            ],
      "definitions.numberConstraints" =
        {
            maximum | std.number.Integer | optional,
            minimum | std.number.Integer | optional,
            required | Bool | optional,
            type | std.contract.Equal "number",
          },
      "definitions.stringConstraints" =
        std.contract.Sequence
            [
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
                        properties =
                          { enum = js2n.Always, pattern = js2n.Always, },
                        required = { enum = true, pattern = true, },
                      },
                    Array Dyn
                  ]),
              {
                enum
                  | js2n.array.MaxItems 100
                  | Array (
                    std.contract.any_of
                      [ js2n.string.MaxLength 1024, std.number.Integer ]
                  )
                  | optional,
                pattern | js2n.string.MaxLength 1024 | optional,
                required | Bool | optional,
                type | std.contract.Equal "string",
              }
            ],
      "definitions.variant" =
        {
            attributeValues | refs."definitions.attributeValue" | optional,
            enabled | Bool,
            name | refs."definitions.customerDefinedName" | String,
            rule | js2n.string.MaxLength 1024 | optional,
          },
    }
    in
  refs."definitions.flagSetDefinition"