# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.apiKeySecurity" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties =
                {
                    description = String,
                    "in" =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'query, 'header |] ],
                    name = String,
                    type =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'apiKey |] ],
                  },
              required = { "in" = true, name = true, type = true, },
            },
      "definitions.basicAuthenticationSecurity" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties =
                {
                    description = String,
                    type =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'basic |] ],
                  },
              required = { type = true, },
            },
      "definitions.bodyParameter" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties =
                {
                    description = String,
                    "in" =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'body |] ],
                    name = String,
                    required = Bool,
                    schema =
                      std.contract.Sequence
                          [ refs."definitions.schema", { _ | Dyn } ],
                  },
              required = { "in" = true, name = true, schema = true, },
            },
      "definitions.collectionFormat" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'pipes, 'tsv, 'ssv, 'csv |] ],
      "definitions.collectionFormatWithMulti" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'multi, 'pipes, 'tsv, 'ssv, 'csv |] ],
      "definitions.contact" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties = { email = String, name = String, url = String, },
              required = {},
            },
      "definitions.default" = js2n.Always,
      "definitions.definitions" =
        {
            _ | std.contract.Sequence [ refs."definitions.schema", { _ | Dyn } ]
          },
      "definitions.description" = String,
      "definitions.enum" =
        std.contract.Sequence [ js2n.array.MinItems 1, js2n.array.UniqueItems ],
      "definitions.examples" = {  .. },
      "definitions.exclusiveMaximum" = Bool,
      "definitions.exclusiveMinimum" = Bool,
      "definitions.externalDocs" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties = { description = String, url = String, },
              required = { url = true, },
            },
      "definitions.fileSchema" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties =
                {
                    "default" = refs."definitions.default",
                    description =
                      std.contract.Sequence
                          [ refs."definitions.description", String ],
                    example = js2n.Always,
                    externalDocs =
                      std.contract.Sequence
                          [ refs."definitions.externalDocs", { _ | Dyn } ],
                    format = String,
                    readOnly = Bool,
                    required =
                      std.contract.Sequence
                          [
                            refs."definitions.schema.properties.required",
                            Array Dyn
                          ],
                    title =
                      std.contract.Sequence
                          [ refs."definitions.title", String ],
                    type =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'file |] ],
                  },
              required = { type = true, },
            },
      "definitions.formDataParameterSubSchema" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = { "^x-" = refs."definitions.vendorExtension", },
                  properties =
                    {
                        allowEmptyValue = Bool,
                        collectionFormat =
                          std.contract.Sequence
                              [
                                refs."definitions.collectionFormatWithMulti",
                                String
                              ],
                        "default" = refs."definitions.default",
                        description = String,
                        enum =
                          std.contract.Sequence
                              [ refs."definitions.enum", Array Dyn ],
                        exclusiveMaximum =
                          std.contract.Sequence
                              [ refs."definitions.exclusiveMaximum", Bool ],
                        exclusiveMinimum =
                          std.contract.Sequence
                              [ refs."definitions.exclusiveMinimum", Bool ],
                        format = String,
                        "in" =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'formData |] ],
                        items =
                          std.contract.Sequence
                              [
                                refs."definitions.primitivesItems",
                                { _ | Dyn }
                              ],
                        maxItems =
                          std.contract.Sequence
                              [ refs."definitions.maxItems", Number ],
                        maxLength =
                          std.contract.Sequence
                              [ refs."definitions.maxItems", Number ],
                        maximum =
                          std.contract.Sequence
                              [ refs."definitions.maximum", Number ],
                        minItems =
                          std.contract.Sequence
                              [ refs."definitions.minItems", Number ],
                        minLength =
                          std.contract.Sequence
                              [ refs."definitions.minItems", Number ],
                        minimum =
                          std.contract.Sequence
                              [ refs."definitions.minimum", Number ],
                        multipleOf = js2n.Always,
                        name = String,
                        pattern =
                          std.contract.Sequence
                              [ refs."definitions.pattern", String ],
                        required = Bool,
                        type =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'file,
                                  'array,
                                  'integer,
                                  'boolean,
                                  'number,
                                  'string
                                |]
                              ],
                        uniqueItems =
                          std.contract.Sequence
                              [ refs."definitions.uniqueItems", Bool ],
                      },
                  required = {},
                },
              Array Dyn
            ],
      "definitions.header" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties =
                {
                    collectionFormat =
                      std.contract.Sequence
                          [ refs."definitions.collectionFormat", String ],
                    "default" = refs."definitions.default",
                    description = String,
                    enum =
                      std.contract.Sequence
                          [ refs."definitions.enum", Array Dyn ],
                    exclusiveMaximum =
                      std.contract.Sequence
                          [ refs."definitions.exclusiveMaximum", Bool ],
                    exclusiveMinimum =
                      std.contract.Sequence
                          [ refs."definitions.exclusiveMinimum", Bool ],
                    format = String,
                    items =
                      std.contract.Sequence
                          [ refs."definitions.primitivesItems", { _ | Dyn } ],
                    maxItems =
                      std.contract.Sequence
                          [ refs."definitions.maxItems", Number ],
                    maxLength =
                      std.contract.Sequence
                          [ refs."definitions.maxItems", Number ],
                    maximum =
                      std.contract.Sequence
                          [ refs."definitions.maximum", Number ],
                    minItems =
                      std.contract.Sequence
                          [ refs."definitions.minItems", Number ],
                    minLength =
                      std.contract.Sequence
                          [ refs."definitions.minItems", Number ],
                    minimum =
                      std.contract.Sequence
                          [ refs."definitions.minimum", Number ],
                    multipleOf = js2n.Always,
                    pattern =
                      std.contract.Sequence
                          [ refs."definitions.pattern", String ],
                    type =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'array, 'boolean, 'integer, 'number, 'string |]
                          ],
                    uniqueItems =
                      std.contract.Sequence
                          [ refs."definitions.uniqueItems", Bool ],
                  },
              required = { type = true, },
            },
      "definitions.headerParameterSubSchema" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = { "^x-" = refs."definitions.vendorExtension", },
                  properties =
                    {
                        collectionFormat =
                          std.contract.Sequence
                              [ refs."definitions.collectionFormat", String ],
                        "default" = refs."definitions.default",
                        description = String,
                        enum =
                          std.contract.Sequence
                              [ refs."definitions.enum", Array Dyn ],
                        exclusiveMaximum =
                          std.contract.Sequence
                              [ refs."definitions.exclusiveMaximum", Bool ],
                        exclusiveMinimum =
                          std.contract.Sequence
                              [ refs."definitions.exclusiveMinimum", Bool ],
                        format = String,
                        "in" =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'header |] ],
                        items =
                          std.contract.Sequence
                              [
                                refs."definitions.primitivesItems",
                                { _ | Dyn }
                              ],
                        maxItems =
                          std.contract.Sequence
                              [ refs."definitions.maxItems", Number ],
                        maxLength =
                          std.contract.Sequence
                              [ refs."definitions.maxItems", Number ],
                        maximum =
                          std.contract.Sequence
                              [ refs."definitions.maximum", Number ],
                        minItems =
                          std.contract.Sequence
                              [ refs."definitions.minItems", Number ],
                        minLength =
                          std.contract.Sequence
                              [ refs."definitions.minItems", Number ],
                        minimum =
                          std.contract.Sequence
                              [ refs."definitions.minimum", Number ],
                        multipleOf = js2n.Always,
                        name = String,
                        pattern =
                          std.contract.Sequence
                              [ refs."definitions.pattern", String ],
                        required = Bool,
                        type =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'array,
                                  'integer,
                                  'boolean,
                                  'number,
                                  'string
                                |]
                              ],
                        uniqueItems =
                          std.contract.Sequence
                              [ refs."definitions.uniqueItems", Bool ],
                      },
                  required = {},
                },
              Array Dyn
            ],
      "definitions.headers" =
        {
            _ | std.contract.Sequence [ refs."definitions.header", { _ | Dyn } ]
          },
      "definitions.info" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties =
                {
                    contact =
                      std.contract.Sequence
                          [ refs."definitions.contact", { _ | Dyn } ],
                    description = String,
                    license =
                      std.contract.Sequence
                          [ refs."definitions.license", { _ | Dyn } ],
                    termsOfService = String,
                    title = String,
                    version = String,
                  },
              required = { title = true, version = true, },
            },
      "definitions.jsonReference" = { "$ref" | String, },
      "definitions.license" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties = { name = String, url = String, },
              required = { name = true, },
            },
      "definitions.maxItems" =
        std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 0 ],
      "definitions.maximum" = Number,
      "definitions.mediaTypeList" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence [ refs."definitions.mimeType", String ]
              )
            ],
      "definitions.mimeType" = String,
      "definitions.minItems" =
        std.contract.Sequence [ refs."definitions.maxItems", Number ],
      "definitions.minimum" = Number,
      "definitions.nonBodyParameter" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  refs."definitions.headerParameterSubSchema",
                  refs."definitions.formDataParameterSubSchema",
                  refs."definitions.queryParameterSubSchema",
                  refs."definitions.pathParameterSubSchema"
                ],
              js2n.record.Required [ "in", "name", "type" ]
            ],
      "definitions.oauth2AccessCodeSecurity" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties =
                {
                    authorizationUrl = String,
                    description = String,
                    flow =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'accessCode |] ],
                    scopes =
                      std.contract.Sequence
                          [ refs."definitions.oauth2Scopes", { _ | Dyn } ],
                    tokenUrl = String,
                    type =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'oauth2 |] ],
                  },
              required =
                {
                    authorizationUrl = true,
                    flow = true,
                    tokenUrl = true,
                    type = true,
                  },
            },
      "definitions.oauth2ApplicationSecurity" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties =
                {
                    description = String,
                    flow =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'application |] ],
                    scopes =
                      std.contract.Sequence
                          [ refs."definitions.oauth2Scopes", { _ | Dyn } ],
                    tokenUrl = String,
                    type =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'oauth2 |] ],
                  },
              required = { flow = true, tokenUrl = true, type = true, },
            },
      "definitions.oauth2ImplicitSecurity" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties =
                {
                    authorizationUrl = String,
                    description = String,
                    flow =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'implicit |] ],
                    scopes =
                      std.contract.Sequence
                          [ refs."definitions.oauth2Scopes", { _ | Dyn } ],
                    type =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'oauth2 |] ],
                  },
              required = { authorizationUrl = true, flow = true, type = true, },
            },
      "definitions.oauth2PasswordSecurity" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties =
                {
                    description = String,
                    flow =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'password |] ],
                    scopes =
                      std.contract.Sequence
                          [ refs."definitions.oauth2Scopes", { _ | Dyn } ],
                    tokenUrl = String,
                    type =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'oauth2 |] ],
                  },
              required = { flow = true, tokenUrl = true, type = true, },
            },
      "definitions.oauth2Scopes" = { _ | String },
      "definitions.operation" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties =
                {
                    consumes =
                      std.contract.Sequence
                          [ refs."definitions.mediaTypeList", Array Dyn ],
                    deprecated = Bool,
                    description = String,
                    externalDocs =
                      std.contract.Sequence
                          [ refs."definitions.externalDocs", { _ | Dyn } ],
                    operationId = String,
                    parameters =
                      std.contract.Sequence
                          [ refs."definitions.parametersList", Array Dyn ],
                    produces =
                      std.contract.Sequence
                          [ refs."definitions.mediaTypeList", Array Dyn ],
                    responses =
                      std.contract.Sequence
                          [ refs."definitions.responses", { _ | Dyn } ],
                    schemes =
                      std.contract.Sequence
                          [ refs."definitions.schemesList", Array Dyn ],
                    security =
                      std.contract.Sequence
                          [ refs."definitions.security", Array Dyn ],
                    summary = String,
                    tags =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, Array String ],
                  },
              required = { responses = true, },
            },
      "definitions.parameter" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."definitions.bodyParameter", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.nonBodyParameter", { _ | Dyn } ]
            ],
      "definitions.parameterDefinitions" = { _ | refs."definitions.parameter" },
      "definitions.parametersList" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                js2n.OneOf
                  [
                    refs."definitions.parameter",
                    std.contract.Sequence
                      [ refs."definitions.jsonReference", { _ | Dyn } ]
                  ]
              )
            ],
      "definitions.pathItem" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties =
                {
                    "$ref" = String,
                    delete =
                      std.contract.Sequence
                          [ refs."definitions.operation", { _ | Dyn } ],
                    get =
                      std.contract.Sequence
                          [ refs."definitions.operation", { _ | Dyn } ],
                    head =
                      std.contract.Sequence
                          [ refs."definitions.operation", { _ | Dyn } ],
                    options =
                      std.contract.Sequence
                          [ refs."definitions.operation", { _ | Dyn } ],
                    parameters =
                      std.contract.Sequence
                          [ refs."definitions.parametersList", Array Dyn ],
                    patch =
                      std.contract.Sequence
                          [ refs."definitions.operation", { _ | Dyn } ],
                    post =
                      std.contract.Sequence
                          [ refs."definitions.operation", { _ | Dyn } ],
                    put =
                      std.contract.Sequence
                          [ refs."definitions.operation", { _ | Dyn } ],
                  },
              required = {},
            },
      "definitions.pathParameterSubSchema" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = { "^x-" = refs."definitions.vendorExtension", },
                  properties =
                    {
                        collectionFormat =
                          std.contract.Sequence
                              [ refs."definitions.collectionFormat", String ],
                        "default" = refs."definitions.default",
                        description = String,
                        enum =
                          std.contract.Sequence
                              [ refs."definitions.enum", Array Dyn ],
                        exclusiveMaximum =
                          std.contract.Sequence
                              [ refs."definitions.exclusiveMaximum", Bool ],
                        exclusiveMinimum =
                          std.contract.Sequence
                              [ refs."definitions.exclusiveMinimum", Bool ],
                        format = String,
                        "in" =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'path |] ],
                        items =
                          std.contract.Sequence
                              [
                                refs."definitions.primitivesItems",
                                { _ | Dyn }
                              ],
                        maxItems =
                          std.contract.Sequence
                              [ refs."definitions.maxItems", Number ],
                        maxLength =
                          std.contract.Sequence
                              [ refs."definitions.maxItems", Number ],
                        maximum =
                          std.contract.Sequence
                              [ refs."definitions.maximum", Number ],
                        minItems =
                          std.contract.Sequence
                              [ refs."definitions.minItems", Number ],
                        minLength =
                          std.contract.Sequence
                              [ refs."definitions.minItems", Number ],
                        minimum =
                          std.contract.Sequence
                              [ refs."definitions.minimum", Number ],
                        multipleOf = js2n.Always,
                        name = String,
                        pattern =
                          std.contract.Sequence
                              [ refs."definitions.pattern", String ],
                        required = js2n.Enum [ true ],
                        type =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'array,
                                  'integer,
                                  'boolean,
                                  'number,
                                  'string
                                |]
                              ],
                        uniqueItems =
                          std.contract.Sequence
                              [ refs."definitions.uniqueItems", Bool ],
                      },
                  required = { required = true, },
                },
              Array Dyn
            ],
      "definitions.paths" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^/" =
                      std.contract.Sequence
                          [ refs."definitions.pathItem", { _ | Dyn } ],
                    "^x-" = refs."definitions.vendorExtension",
                  },
              properties = {},
              required = {},
            },
      "definitions.pattern" = String,
      "definitions.primitivesItems" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties =
                {
                    collectionFormat =
                      std.contract.Sequence
                          [ refs."definitions.collectionFormat", String ],
                    "default" = refs."definitions.default",
                    enum =
                      std.contract.Sequence
                          [ refs."definitions.enum", Array Dyn ],
                    exclusiveMaximum =
                      std.contract.Sequence
                          [ refs."definitions.exclusiveMaximum", Bool ],
                    exclusiveMinimum =
                      std.contract.Sequence
                          [ refs."definitions.exclusiveMinimum", Bool ],
                    format = String,
                    items = std.contract.Sequence [ js2n.Always, { _ | Dyn } ],
                    maxItems =
                      std.contract.Sequence
                          [ refs."definitions.maxItems", Number ],
                    maxLength =
                      std.contract.Sequence
                          [ refs."definitions.maxItems", Number ],
                    maximum =
                      std.contract.Sequence
                          [ refs."definitions.maximum", Number ],
                    minItems =
                      std.contract.Sequence
                          [ refs."definitions.minItems", Number ],
                    minLength =
                      std.contract.Sequence
                          [ refs."definitions.minItems", Number ],
                    minimum =
                      std.contract.Sequence
                          [ refs."definitions.minimum", Number ],
                    multipleOf = js2n.Always,
                    pattern =
                      std.contract.Sequence
                          [ refs."definitions.pattern", String ],
                    type =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'array, 'boolean, 'integer, 'number, 'string |]
                          ],
                    uniqueItems =
                      std.contract.Sequence
                          [ refs."definitions.uniqueItems", Bool ],
                  },
              required = {},
            },
      "definitions.queryParameterSubSchema" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = { "^x-" = refs."definitions.vendorExtension", },
                  properties =
                    {
                        allowEmptyValue = Bool,
                        collectionFormat =
                          std.contract.Sequence
                              [
                                refs."definitions.collectionFormatWithMulti",
                                String
                              ],
                        "default" = refs."definitions.default",
                        description = String,
                        enum =
                          std.contract.Sequence
                              [ refs."definitions.enum", Array Dyn ],
                        exclusiveMaximum =
                          std.contract.Sequence
                              [ refs."definitions.exclusiveMaximum", Bool ],
                        exclusiveMinimum =
                          std.contract.Sequence
                              [ refs."definitions.exclusiveMinimum", Bool ],
                        format = String,
                        "in" =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'query |] ],
                        items =
                          std.contract.Sequence
                              [
                                refs."definitions.primitivesItems",
                                { _ | Dyn }
                              ],
                        maxItems =
                          std.contract.Sequence
                              [ refs."definitions.maxItems", Number ],
                        maxLength =
                          std.contract.Sequence
                              [ refs."definitions.maxItems", Number ],
                        maximum =
                          std.contract.Sequence
                              [ refs."definitions.maximum", Number ],
                        minItems =
                          std.contract.Sequence
                              [ refs."definitions.minItems", Number ],
                        minLength =
                          std.contract.Sequence
                              [ refs."definitions.minItems", Number ],
                        minimum =
                          std.contract.Sequence
                              [ refs."definitions.minimum", Number ],
                        multipleOf = js2n.Always,
                        name = String,
                        pattern =
                          std.contract.Sequence
                              [ refs."definitions.pattern", String ],
                        required = Bool,
                        type =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'array,
                                  'integer,
                                  'boolean,
                                  'number,
                                  'string
                                |]
                              ],
                        uniqueItems =
                          std.contract.Sequence
                              [ refs."definitions.uniqueItems", Bool ],
                      },
                  required = {},
                },
              Array Dyn
            ],
      "definitions.response" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties =
                {
                    description = String,
                    examples =
                      std.contract.Sequence
                          [ refs."definitions.examples", { _ | Dyn } ],
                    headers =
                      std.contract.Sequence
                          [ refs."definitions.headers", { _ | Dyn } ],
                    schema =
                      js2n.OneOf
                          [
                            std.contract.Sequence
                              [ refs."definitions.schema", { _ | Dyn } ],
                            std.contract.Sequence
                              [ refs."definitions.fileSchema", { _ | Dyn } ]
                          ],
                  },
              required = { description = true, },
            },
      "definitions.responseDefinitions" =
        {
            _ | std.contract.Sequence
              [ refs."definitions.response", { _ | Dyn } ]
          },
      "definitions.responseValue" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."definitions.response", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.jsonReference", { _ | Dyn } ]
            ],
      "definitions.responses" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              std.contract.not
                (js2n.record.Record
                  {
                    additional = 'None,
                    patterns = { "^x-" = refs."definitions.vendorExtension", },
                    properties = {},
                    required = {},
                  }),
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^([0-9]{3})$|^(default)$" =
                          refs."definitions.responseValue",
                        "^x-" = refs."definitions.vendorExtension",
                      },
                  properties = {},
                  required = {},
                }
            ],
      "definitions.schema" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties =
                {
                    "$ref" = String,
                    additionalProperties =
                      std.contract.any_of
                          [
                            std.contract.Sequence [ js2n.Always, { _ | Dyn } ],
                            Bool
                          ],
                    allOf =
                      std.contract.Sequence
                          [
                            js2n.array.MinItems 1,
                            Array (
                              std.contract.Sequence [ js2n.Always, { _ | Dyn } ]
                            )
                          ],
                    "default" = refs."definitions.default",
                    description =
                      std.contract.Sequence
                          [ refs."definitions.description", String ],
                    discriminator = String,
                    enum =
                      std.contract.Sequence
                          [ refs."definitions.enum", Array Dyn ],
                    example = js2n.Always,
                    exclusiveMaximum =
                      std.contract.Sequence
                          [ refs."definitions.exclusiveMaximum", Bool ],
                    exclusiveMinimum =
                      std.contract.Sequence
                          [ refs."definitions.exclusiveMinimum", Bool ],
                    externalDocs =
                      std.contract.Sequence
                          [ refs."definitions.externalDocs", { _ | Dyn } ],
                    format = String,
                    items =
                      std.contract.any_of
                          [
                            std.contract.Sequence [ js2n.Always, { _ | Dyn } ],
                            std.contract.Sequence
                              [
                                js2n.array.MinItems 1,
                                Array (
                                  std.contract.Sequence
                                    [ js2n.Always, { _ | Dyn } ]
                                )
                              ]
                          ],
                    maxItems =
                      std.contract.Sequence
                          [ refs."definitions.maxItems", Number ],
                    maxLength =
                      std.contract.Sequence
                          [ refs."definitions.maxItems", Number ],
                    maxProperties =
                      std.contract.Sequence
                          [ refs."definitions.maxItems", Number ],
                    maximum =
                      std.contract.Sequence
                          [ refs."definitions.maximum", Number ],
                    minItems =
                      std.contract.Sequence
                          [ refs."definitions.minItems", Number ],
                    minLength =
                      std.contract.Sequence
                          [ refs."definitions.minItems", Number ],
                    minProperties =
                      std.contract.Sequence
                          [ refs."definitions.minItems", Number ],
                    minimum =
                      std.contract.Sequence
                          [ refs."definitions.minimum", Number ],
                    multipleOf = js2n.Always,
                    pattern =
                      std.contract.Sequence
                          [ refs."definitions.pattern", String ],
                    properties =
                      {
                          _ | std.contract.Sequence [ js2n.Always, { _ | Dyn } ]
                        },
                    readOnly = Bool,
                    required =
                      std.contract.Sequence
                          [
                            js2n.array.MinItems 1,
                            js2n.array.UniqueItems,
                            Array String
                          ],
                    title =
                      std.contract.Sequence
                          [ refs."definitions.title", String ],
                    type =
                      std.contract.any_of
                          [
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
                            std.contract.Sequence
                              [
                                js2n.array.MinItems 1,
                                js2n.array.UniqueItems,
                                Array (
                                  std.contract.Sequence
                                    [
                                      refs."definitions.schema.properties.type.anyOf.0",
                                      String
                                    ]
                                )
                              ]
                          ],
                    uniqueItems =
                      std.contract.Sequence
                          [ refs."definitions.uniqueItems", Bool ],
                    xml =
                      std.contract.Sequence
                          [ refs."definitions.xml", { _ | Dyn } ],
                  },
              required = {},
            },
      "definitions.schema.properties.required" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, js2n.array.UniqueItems, Array String ],
      "definitions.schema.properties.type.anyOf.0" =
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
      "definitions.schemesList" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'wss, 'ws, 'https, 'http |] ]
              )
            ],
      "definitions.security" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.securityRequirement", { _ | Dyn } ]
              )
            ],
      "definitions.securityDefinitions" =
        {
            _ | js2n.OneOf
              [
                std.contract.Sequence
                  [
                    refs."definitions.basicAuthenticationSecurity",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [ refs."definitions.apiKeySecurity", { _ | Dyn } ],
                std.contract.Sequence
                  [ refs."definitions.oauth2ImplicitSecurity", { _ | Dyn } ],
                std.contract.Sequence
                  [ refs."definitions.oauth2PasswordSecurity", { _ | Dyn } ],
                std.contract.Sequence
                  [ refs."definitions.oauth2ApplicationSecurity", { _ | Dyn } ],
                std.contract.Sequence
                  [ refs."definitions.oauth2AccessCodeSecurity", { _ | Dyn } ]
              ]
          },
      "definitions.securityRequirement" =
        { _ | std.contract.Sequence [ js2n.array.UniqueItems, Array String ] },
      "definitions.tag" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties =
                {
                    description = String,
                    externalDocs =
                      std.contract.Sequence
                          [ refs."definitions.externalDocs", { _ | Dyn } ],
                    name = String,
                  },
              required = { name = true, },
            },
      "definitions.title" = String,
      "definitions.uniqueItems" = Bool,
      "definitions.vendorExtension" =
        std.contract.any_of
            [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
      "definitions.xml" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = refs."definitions.vendorExtension", },
              properties =
                {
                    attribute = Bool,
                    name = String,
                    namespace = String,
                    prefix = String,
                    wrapped = Bool,
                  },
              required = {},
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
              basePath = js2n.string.Matches "^/",
              consumes =
                std.contract.Sequence
                    [ refs."definitions.mediaTypeList", Array Dyn ],
              definitions = refs."definitions.definitions",
              externalDocs = refs."definitions.externalDocs",
              host = js2n.string.Matches "^[^{}/ :\\\\]+(?::\\d+)?$",
              info = refs."definitions.info",
              parameters = refs."definitions.parameterDefinitions",
              paths = refs."definitions.paths",
              produces =
                std.contract.Sequence
                    [ refs."definitions.mediaTypeList", Array Dyn ],
              responses = refs."definitions.responseDefinitions",
              schemes =
                std.contract.Sequence
                    [ refs."definitions.schemesList", Array Dyn ],
              security =
                std.contract.Sequence
                    [ refs."definitions.security", Array Dyn ],
              securityDefinitions = refs."definitions.securityDefinitions",
              swagger =
                std.contract.Sequence [ std.enum.TagOrString, [| '"2.0" |] ],
              tags =
                std.contract.Sequence
                    [ js2n.array.UniqueItems, Array refs."definitions.tag" ],
            },
        required = { info = true, paths = true, swagger = true, },
      }