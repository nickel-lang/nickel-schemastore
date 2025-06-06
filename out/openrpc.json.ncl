# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.JSONSchema" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."definitions.JSONSchema.definitions.JSONSchemaObject",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."definitions.JSONSchema.definitions.JSONSchemaBoolean",
                  Bool
                ]
            ],
      "definitions.JSONSchema.definitions.JSONSchemaBoolean" = Bool,
      "definitions.JSONSchema.definitions.JSONSchemaObject" =
        {
            "$comment" | String | optional,
            "$id" | String | optional,
            "$ref" | String | optional,
            "$schema" | String | optional,
            additionalItems | refs."definitions.JSONSchema" | optional,
            additionalProperties | refs."definitions.JSONSchema" | optional,
            allOf
              | refs."definitions.JSONSchema.definitions.schemaArray"
              | Array Dyn
              | optional,
            anyOf
              | refs."definitions.JSONSchema.definitions.schemaArray"
              | Array Dyn
              | optional,
            const | js2n.Always | optional,
            contains | refs."definitions.JSONSchema" | optional,
            contentEncoding | String | optional,
            contentMediaType | String | optional,
            "default" | js2n.Always | optional,
            definitions | { _ | refs."definitions.JSONSchema" } | optional,
            dependencies
              | {
                _ | std.contract.any_of
                  [
                    refs."definitions.JSONSchema",
                    std.contract.Sequence
                      [
                        refs."definitions.JSONSchema.definitions.stringArray",
                        Array Dyn
                      ]
                  ]
              }
              | optional,
            description | String | optional,
            "else" | refs."definitions.JSONSchema" | optional,
            enum
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array js2n.Always
              | optional,
            examples | Array js2n.Always | optional,
            exclusiveMaximum | Number | optional,
            exclusiveMinimum | Number | optional,
            format | String | optional,
            "if" | refs."definitions.JSONSchema" | optional,
            items
              | std.contract.any_of
                [
                  refs."definitions.JSONSchema",
                  std.contract.Sequence
                    [
                      refs."definitions.JSONSchema.definitions.schemaArray",
                      Array Dyn
                    ]
                ]
              | optional,
            maxItems
              | refs."definitions.JSONSchema.definitions.nonNegativeInteger"
              | Number
              | optional,
            maxLength
              | refs."definitions.JSONSchema.definitions.nonNegativeInteger"
              | Number
              | optional,
            maxProperties
              | refs."definitions.JSONSchema.definitions.nonNegativeInteger"
              | Number
              | optional,
            maximum | Number | optional,
            minItems
              | refs."definitions.JSONSchema.definitions.nonNegativeIntegerDefault0"
              | Number
              | optional,
            minLength
              | refs."definitions.JSONSchema.definitions.nonNegativeIntegerDefault0"
              | Number
              | optional,
            minProperties
              | refs."definitions.JSONSchema.definitions.nonNegativeIntegerDefault0"
              | Number
              | optional,
            minimum | Number | optional,
            multipleOf | js2n.number.ExclusiveMinimum 0 | optional,
            not | refs."definitions.JSONSchema" | optional,
            oneOf
              | refs."definitions.JSONSchema.definitions.schemaArray"
              | Array Dyn
              | optional,
            pattern | String | optional,
            patternProperties
              | js2n.record.PropertyNames
                (std.contract.any_of
                  [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ])
              | { _ | refs."definitions.JSONSchema" }
              | optional,
            properties | { _ | refs."definitions.JSONSchema" } | optional,
            propertyNames | refs."definitions.JSONSchema" | optional,
            readOnly | Bool | optional,
            required
              | refs."definitions.JSONSchema.definitions.stringArray"
              | Array Dyn
              | optional,
            "then" | refs."definitions.JSONSchema" | optional,
            title | String | optional,
            type
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.JSONSchema.definitions.simpleTypes",
                      String
                    ],
                  std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [
                            refs."definitions.JSONSchema.definitions.simpleTypes",
                            String
                          ]
                      )
                    ]
                ]
              | optional,
            uniqueItems | Bool | optional,
            ..
          },
      "definitions.JSONSchema.definitions.JSONSchemaObject.properties.%24ref" =
        String,
      "definitions.JSONSchema.definitions.nonNegativeInteger" =
        std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 0 ],
      "definitions.JSONSchema.definitions.nonNegativeIntegerDefault0" =
        std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 0 ],
      "definitions.JSONSchema.definitions.schemaArray" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."definitions.JSONSchema" ],
      "definitions.JSONSchema.definitions.simpleTypes" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'string,
                'object,
                'number,
                '"null",
                'integer,
                'boolean,
                'array
              |]
            ],
      "definitions.JSONSchema.definitions.stringArray" =
        std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
      "definitions.contactObject" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.specificationExtension", },
              properties = { email = String, name = String, url = String, },
              required = {},
            },
      "definitions.contentDescriptorObject" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.specificationExtension", },
              properties =
                {
                    deprecated = Bool,
                    description = String,
                    name = js2n.string.MinLength 1,
                    required = Bool,
                    schema = refs."definitions.JSONSchema",
                    summary = String,
                  },
              required = { name = true, schema = true, },
            },
      "definitions.errorObject" =
        {
            code
              | std.number.Integer
              | doc "A Number that indicates the error type that occurred. This MUST be an integer. The error codes from and including -32768 to -32000 are reserved for pre-defined errors. These pre-defined errors SHOULD be assumed to be returned from any JSON-RPC api.",
            data
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "A Primitive or Structured value that contains additional information about the error. This may be omitted. The value of this member is defined by the Server (e.g. detailed error information, nested errors etc.)."
              | optional,
            message
              | String
              | doc "A String providing a short description of the error. The message SHOULD be limited to a concise single sentence.",
          },
      "definitions.exampleObject" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns = { "^x-" = refs."definitions.specificationExtension", },
              properties =
                {
                    description = String,
                    name = js2n.string.MinLength 1,
                    summary = String,
                    value =
                      std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            { _ | Dyn },
                            Array Dyn
                          ],
                  },
              required = { name = true, value = true, },
            },
      "definitions.examplePairingObject" =
        {
            description | String | optional,
            name | js2n.string.MinLength 1,
            params
              | Array (
                js2n.OneOf
                  [
                    std.contract.Sequence
                      [ refs."definitions.exampleObject", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.referenceObject", { _ | Dyn } ]
                  ]
              ),
            result
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.exampleObject", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.referenceObject", { _ | Dyn } ]
                ]
              | optional,
            ..
          },
      "definitions.externalDocumentationObject" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.specificationExtension", },
              properties = { description = String, url = String, },
              required = { url = true, },
            },
      "definitions.infoObject" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.specificationExtension", },
              properties =
                {
                    contact =
                      std.contract.Sequence
                          [ refs."definitions.contactObject", { _ | Dyn } ],
                    description = String,
                    license =
                      std.contract.Sequence
                          [ refs."definitions.licenseObject", { _ | Dyn } ],
                    termsOfService = String,
                    title = String,
                    version = String,
                  },
              required = { title = true, version = true, },
            },
      "definitions.licenseObject" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.specificationExtension", },
              properties = { name = String, url = String, },
              required = {},
            },
      "definitions.linkObject" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.specificationExtension", },
              properties =
                {
                    description = String,
                    method = String,
                    name = js2n.string.MinLength 1,
                    params =
                      std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            { _ | Dyn },
                            Array Dyn
                          ],
                    server =
                      std.contract.Sequence
                          [ refs."definitions.serverObject", { _ | Dyn } ],
                    summary = String,
                  },
              required = {},
            },
      "definitions.methodObject" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.specificationExtension", },
              properties =
                {
                    deprecated = Bool,
                    description = String,
                    errors =
                      Array (
                          js2n.OneOf
                            [
                              std.contract.Sequence
                                [ refs."definitions.errorObject", { _ | Dyn } ],
                              std.contract.Sequence
                                [
                                  refs."definitions.referenceObject",
                                  { _ | Dyn }
                                ]
                            ]
                        ),
                    examples =
                      Array (
                          js2n.OneOf
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.examplePairingObject",
                                  { _ | Dyn }
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.referenceObject",
                                  { _ | Dyn }
                                ]
                            ]
                        ),
                    externalDocs =
                      std.contract.Sequence
                          [
                            refs."definitions.externalDocumentationObject",
                            { _ | Dyn }
                          ],
                    links =
                      Array (
                          js2n.OneOf
                            [
                              std.contract.Sequence
                                [ refs."definitions.linkObject", { _ | Dyn } ],
                              std.contract.Sequence
                                [
                                  refs."definitions.referenceObject",
                                  { _ | Dyn }
                                ]
                            ]
                        ),
                    name = js2n.string.MinLength 1,
                    paramStructure =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'either, 'by-name, 'by-position |]
                          ],
                    params =
                      Array (
                          js2n.OneOf
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.contentDescriptorObject",
                                  { _ | Dyn }
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.referenceObject",
                                  { _ | Dyn }
                                ]
                            ]
                        ),
                    result =
                      js2n.OneOf
                          [
                            std.contract.Sequence
                              [
                                refs."definitions.contentDescriptorObject",
                                { _ | Dyn }
                              ],
                            std.contract.Sequence
                              [
                                refs."definitions.referenceObject",
                                { _ | Dyn }
                              ]
                          ],
                    servers =
                      Array (
                          std.contract.Sequence
                            [ refs."definitions.serverObject", { _ | Dyn } ]
                        ),
                    summary = String,
                    tags =
                      Array (
                          js2n.OneOf
                            [
                              std.contract.Sequence
                                [ refs."definitions.tagObject", { _ | Dyn } ],
                              std.contract.Sequence
                                [
                                  refs."definitions.referenceObject",
                                  { _ | Dyn }
                                ]
                            ]
                        ),
                  },
              required = { name = true, params = true, },
            },
      "definitions.referenceObject" =
        {
            "$ref"
              | refs."definitions.JSONSchema.definitions.JSONSchemaObject.properties.%24ref"
              | String,
          },
      "definitions.serverObject" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.specificationExtension", },
              properties =
                {
                    description = String,
                    name = String,
                    summary = String,
                    url = String,
                    variables =
                      js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns =
                              {
                                  "[0-z]+" =
                                    {
                                        "default" | String,
                                        description | String | optional,
                                        enum | Array String | optional,
                                        ..
                                      },
                                },
                            properties = {},
                            required = {},
                          },
                  },
              required = { url = true, },
            },
      "definitions.specificationExtension" =
        std.contract.any_of
            [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
      "definitions.tagObject" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.specificationExtension", },
              properties =
                {
                    description = String,
                    externalDocs =
                      std.contract.Sequence
                          [
                            refs."definitions.externalDocumentationObject",
                            { _ | Dyn }
                          ],
                    name = js2n.string.MinLength 1,
                  },
              required = { name = true, },
            },
    }
    in
  js2n.record.Record
      {
        additional = 'None,
        patterns =
          {
              "^x-" =
                std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
            },
        properties =
          {
              "$schema" = String,
              components =
                {
                    contentDescriptors
                      | js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns =
                            {
                                "[0-z]+" =
                                  refs."definitions.contentDescriptorObject",
                              },
                          properties = {},
                          required = {},
                        }
                      | optional,
                    errors
                      | js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns =
                            { "[0-z]+" = refs."definitions.errorObject", },
                          properties = {},
                          required = {},
                        }
                      | optional,
                    examplePairings
                      | js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns =
                            {
                                "[0-z]+" =
                                  refs."definitions.examplePairingObject",
                              },
                          properties = {},
                          required = {},
                        }
                      | optional,
                    examples
                      | js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns =
                            { "[0-z]+" = refs."definitions.exampleObject", },
                          properties = {},
                          required = {},
                        }
                      | optional,
                    links
                      | js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns =
                            { "[0-z]+" = refs."definitions.linkObject", },
                          properties = {},
                          required = {},
                        }
                      | optional,
                    schemas
                      | js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns =
                            { "[0-z]+" = refs."definitions.JSONSchema", },
                          properties = {},
                          required = {},
                        }
                      | optional,
                    tags
                      | js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns =
                            { "[0-z]+" = refs."definitions.tagObject", },
                          properties = {},
                          required = {},
                        }
                      | optional,
                    ..
                  },
              externalDocs = refs."definitions.externalDocumentationObject",
              info = refs."definitions.infoObject",
              methods =
                Array (
                    js2n.OneOf
                      [
                        refs."definitions.methodObject",
                        refs."definitions.referenceObject"
                      ]
                  ),
              openrpc =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        '"1.0.0-rc0",
                        '"1.0.0-rc1",
                        '"1.0.0",
                        '"1.1.0",
                        '"1.1.1",
                        '"1.1.2",
                        '"1.1.3",
                        '"1.1.4",
                        '"1.1.5",
                        '"1.1.6",
                        '"1.1.7",
                        '"1.1.8",
                        '"1.1.9",
                        '"1.1.10",
                        '"1.1.11",
                        '"1.1.12",
                        '"1.2.0",
                        '"1.2.1",
                        '"1.2.2",
                        '"1.2.3",
                        '"1.2.4",
                        '"1.2.5",
                        '"1.2.6",
                        '"1.3.0",
                        '"1.3.1",
                        '"1.3.2"
                      |]
                    ],
              servers = Array refs."definitions.serverObject",
            },
        required = { info = true, methods = true, openrpc = true, },
      }