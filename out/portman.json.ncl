# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema" | String | optional,
      assignVariables
        | Array
          {
            collectionVariables
              | Array
                {
                  name | String | optional,
                  requestBodyProp | String | optional,
                  responseBodyProp | String | optional,
                  responseHeaderProp | String | optional,
                  value | js2n.Always | optional,
                },
            excludeForOperations | Array String | optional,
            openApiOperation | String | optional,
            openApiOperationId | String | optional,
            openApiOperationIds | Array String | optional,
          }
        | optional,
      globals
        | {
          collectionPreRequestScripts | Array String | optional,
          collectionTestScripts | Array String | optional,
          collectionVariables | {  .. } | optional,
          keyValueReplacements | {  .. } | optional,
          orderOfFolders | Array String | optional,
          orderOfOperations | Array String | optional,
          portmanReplacements
            | Array { replaceWith | String, searchFor | String, }
            | optional,
          rawReplacements
            | Array { replaceWith | String, searchFor | String, }
            | optional,
          securityOverwrites
            | {
              apiKey
                | {
                  "in" | String | optional,
                  key | String | optional,
                  value | String,
                }
                | optional,
              awsv4
                | Array
                  {
                    key | String,
                    type | String | optional,
                    value | js2n.Always | optional,
                  }
                | optional,
              basic | { password | String, username | String, } | optional,
              bearer | { token | String, } | optional,
              digest
                | Array
                  {
                    key | String,
                    type | String | optional,
                    value | js2n.Always | optional,
                  }
                | optional,
              edgegrid
                | Array
                  {
                    key | String,
                    type | String | optional,
                    value | js2n.Always | optional,
                  }
                | optional,
              hawk
                | Array
                  {
                    key | String,
                    type | String | optional,
                    value | js2n.Always | optional,
                  }
                | optional,
              ntlm
                | Array
                  {
                    key | String,
                    type | String | optional,
                    value | js2n.Always | optional,
                  }
                | optional,
              oauth1
                | Array
                  {
                    key | String,
                    type | String | optional,
                    value | js2n.Always | optional,
                  }
                | optional,
              oauth2
                | Array
                  {
                    key | String,
                    type | String | optional,
                    value | js2n.Always | optional,
                  }
                | optional,
              other
                | js2n.record.Record
                  {
                    additional =
                      'Some
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]),
                    patterns = {},
                    properties = { type = String, },
                    required = { type = true, },
                  }
                | optional,
              remove | Bool | optional,
            }
            | optional,
          separatorSymbol | String | optional,
          stripResponseExamples | Bool | optional,
          valueReplacements | {  .. } | optional,
          variableCasing
            | std.enum.TagOrString
            | [|
              'upperCase,
              'lowerCase,
              'dotNotation,
              'cobolCase,
              'constantCase,
              'adaCase,
              'snakeCase,
              'trainCase,
              'kebabCase,
              'pascalCase,
              'camelCase
            |]
            | optional,
        }
        | optional,
      operationPreRequestScripts
        | Array
          {
            excludeForOperations | Array String | optional,
            openApiOperation | String | optional,
            openApiOperationId | String | optional,
            openApiOperationIds | Array String | optional,
            scripts | Array String,
          }
        | optional,
      overwrites
        | Array
          {
            excludeForOperations | Array String | optional,
            openApiOperation | String | optional,
            openApiOperationId | String | optional,
            openApiOperationIds | Array String | optional,
            overwriteRequestBaseUrl
              | {
                overwrite | Bool | optional,
                remove | Bool | optional,
                value | String | optional,
              }
              | optional,
            overwriteRequestBody
              | Array
                {
                  description | String | optional,
                  disable | Bool | optional,
                  insert | Bool | optional,
                  key | String,
                  overwrite | Bool | optional,
                  remove | Bool | optional,
                  value | js2n.Always | optional,
                }
              | optional,
            overwriteRequestHeaders
              | Array
                {
                  description | String | optional,
                  disable | Bool | optional,
                  insert | Bool | optional,
                  key | String,
                  overwrite | Bool | optional,
                  remove | Bool | optional,
                  value | String | optional,
                }
              | optional,
            overwriteRequestPathIdVariables
              | Array { enabled | Bool, }
              | optional,
            overwriteRequestPathVariables
              | Array
                {
                  description | String | optional,
                  disable | Bool | optional,
                  insert | Bool | optional,
                  key | String,
                  overwrite | Bool | optional,
                  remove | Bool | optional,
                  value | String | optional,
                }
              | optional,
            overwriteRequestQueryParams
              | Array
                {
                  description | String | optional,
                  disable | Bool | optional,
                  insert | Bool | optional,
                  key | String,
                  overwrite | Bool | optional,
                  remove | Bool | optional,
                  value | String | optional,
                }
              | optional,
            overwriteRequestSecurity
              | {
                apiKey
                  | {
                    "in" | String | optional,
                    key | String | optional,
                    value | String,
                  }
                  | optional,
                awsv4
                  | Array
                    {
                      key | String,
                      type | String | optional,
                      value | js2n.Always | optional,
                    }
                  | optional,
                basic | { password | String, username | String, } | optional,
                bearer | { token | String, } | optional,
                digest
                  | Array
                    {
                      key | String,
                      type | String | optional,
                      value | js2n.Always | optional,
                    }
                  | optional,
                edgegrid
                  | Array
                    {
                      key | String,
                      type | String | optional,
                      value | js2n.Always | optional,
                    }
                  | optional,
                hawk
                  | Array
                    {
                      key | String,
                      type | String | optional,
                      value | js2n.Always | optional,
                    }
                  | optional,
                ntlm
                  | Array
                    {
                      key | String,
                      type | String | optional,
                      value | js2n.Always | optional,
                    }
                  | optional,
                oauth1
                  | Array
                    {
                      key | String,
                      type | String | optional,
                      value | js2n.Always | optional,
                    }
                  | optional,
                oauth2
                  | Array
                    {
                      key | String,
                      type | String | optional,
                      value | js2n.Always | optional,
                    }
                  | optional,
                other
                  | js2n.record.Record
                    {
                      additional =
                        'Some
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                { _ | Dyn },
                                Array Dyn,
                                Number,
                                String
                              ]),
                      patterns = {},
                      properties = { type = String, },
                      required = { type = true, },
                    }
                  | optional,
                remove | Bool | optional,
              }
              | optional,
          }
        | optional,
      tests
        | {
          contentTests
            | Array
              {
                excludeForOperations | Array String | optional,
                openApiOperation | String | optional,
                openApiOperationId | String | optional,
                openApiOperationIds | Array String | optional,
                responseBodyTests
                  | Array
                    {
                      assert | String | optional,
                      contains | String | optional,
                      key | String,
                      length
                        | std.contract.any_of [ Number, String ]
                        | optional,
                      maxLength
                        | std.contract.any_of [ Number, String ]
                        | optional,
                      minLength
                        | std.contract.any_of [ Number, String ]
                        | optional,
                      notExist | Bool | optional,
                      oneOf
                        | std.contract.any_of
                          [
                            js2n.array.ArrayOf String,
                            js2n.array.ArrayOf Number,
                            js2n.array.ArrayOf Bool
                          ]
                        | optional,
                      value
                        | std.contract.any_of
                          [ js2n.Null, Bool, Number, String ]
                        | optional,
                    }
                  | optional,
                responseHeaderTests
                  | Array
                    {
                      assert | String | optional,
                      contains | String | optional,
                      key | String,
                      length
                        | std.contract.any_of [ Number, String ]
                        | optional,
                      maxLength
                        | std.contract.any_of [ Number, String ]
                        | optional,
                      minLength
                        | std.contract.any_of [ Number, String ]
                        | optional,
                      notExist | Bool | optional,
                      oneOf | Array String | optional,
                      value
                        | std.contract.any_of [ Bool, Number, String ]
                        | optional,
                    }
                  | optional,
              }
            | optional,
          contractTests
            | Array
              {
                additionalProperties
                  | {
                    additionalProperties | Bool | optional,
                    enabled | Bool,
                    excludeForOperations | Array String | optional,
                  }
                  | optional,
                contentType
                  | {
                    enabled | Bool,
                    excludeForOperations | Array String | optional,
                  }
                  | optional,
                excludeForOperations | Array String | optional,
                headersPresent
                  | {
                    enabled | Bool,
                    excludeForOperations | Array String | optional,
                  }
                  | optional,
                jsonBody
                  | {
                    enabled | Bool,
                    excludeForOperations | Array String | optional,
                  }
                  | optional,
                openApiOperation | String | optional,
                openApiOperationId | String | optional,
                openApiOperationIds | Array String | optional,
                responseTime
                  | {
                    enabled | Bool,
                    excludeForOperations | Array String | optional,
                    maxMs | Number,
                  }
                  | optional,
                schemaValidation
                  | {
                    additionalProperties | Bool | optional,
                    enabled | Bool,
                    excludeForOperations | Array String | optional,
                  }
                  | optional,
                statusCode
                  | {
                    code | Number | optional,
                    enabled | Bool,
                    excludeForOperations | Array String | optional,
                  }
                  | optional,
                statusSuccess
                  | {
                    enabled | Bool,
                    excludeForOperations | Array String | optional,
                  }
                  | optional,
              }
            | optional,
          extendTests
            | Array
              {
                append | Bool | optional,
                excludeForOperations | Array String | optional,
                openApiOperation | String | optional,
                openApiOperationId | String | optional,
                openApiOperationIds | Array String | optional,
                overwrite | Bool | optional,
                tests | Array String,
              }
            | optional,
          integrationTests
            | Array
              {
                name | String,
                operations
                  | Array
                    {
                      openApiOperationId | String,
                      openApiResponse | String | optional,
                      variations
                        | Array
                          {
                            assignVariables
                              | Array
                                {
                                  collectionVariables
                                    | Array
                                      {
                                        name | String | optional,
                                        requestBodyProp | String | optional,
                                        responseBodyProp | String | optional,
                                        responseHeaderProp | String | optional,
                                        value | js2n.Always | optional,
                                      },
                                  excludeForOperations
                                    | Array String
                                    | optional,
                                  openApiOperation | String | optional,
                                  openApiOperationId | String | optional,
                                  openApiOperationIds | Array String | optional,
                                }
                              | optional,
                            extendTests
                              | Array
                                {
                                  append | Bool | optional,
                                  excludeForOperations
                                    | Array String
                                    | optional,
                                  openApiOperation | String | optional,
                                  openApiOperationId | String | optional,
                                  openApiOperationIds | Array String | optional,
                                  overwrite | Bool | optional,
                                  tests | Array String,
                                }
                              | optional,
                            fuzzing
                              | Array
                                {
                                  requestBody
                                    | Array
                                      {
                                        maxLengthFields
                                          | { enabled | Bool, }
                                          | optional,
                                        maximumNumberFields
                                          | { enabled | Bool, }
                                          | optional,
                                        minLengthFields
                                          | { enabled | Bool, }
                                          | optional,
                                        minimumNumberFields
                                          | { enabled | Bool, }
                                          | optional,
                                        requiredFields
                                          | { enabled | Bool, }
                                          | optional,
                                      }
                                    | optional,
                                  requestHeaders
                                    | Array
                                      {
                                        maxLengthFields
                                          | { enabled | Bool, }
                                          | optional,
                                        maximumNumberFields
                                          | { enabled | Bool, }
                                          | optional,
                                        minLengthFields
                                          | { enabled | Bool, }
                                          | optional,
                                        minimumNumberFields
                                          | { enabled | Bool, }
                                          | optional,
                                        requiredFields
                                          | { enabled | Bool, }
                                          | optional,
                                      }
                                    | optional,
                                  requestQueryParams
                                    | Array
                                      {
                                        maxLengthFields
                                          | { enabled | Bool, }
                                          | optional,
                                        maximumNumberFields
                                          | { enabled | Bool, }
                                          | optional,
                                        minLengthFields
                                          | { enabled | Bool, }
                                          | optional,
                                        minimumNumberFields
                                          | { enabled | Bool, }
                                          | optional,
                                        requiredFields
                                          | { enabled | Bool, }
                                          | optional,
                                      }
                                    | optional,
                                }
                              | optional,
                            name | String,
                            openApiResponse | String | optional,
                            operationPreRequestScripts
                              | Array
                                {
                                  excludeForOperations
                                    | Array String
                                    | optional,
                                  openApiOperation | String | optional,
                                  openApiOperationId | String | optional,
                                  openApiOperationIds | Array String | optional,
                                  scripts | Array String,
                                }
                              | optional,
                            overwrites | js2n.Always | optional,
                            tests | js2n.Always,
                          },
                    },
              }
            | optional,
          variationTests
            | Array
              {
                excludeForOperations | Array String | optional,
                openApiOperation | String | optional,
                openApiOperationId | String | optional,
                openApiOperationIds | Array String | optional,
                openApiResponse | String | optional,
                variations
                  | Array
                    {
                      assignVariables
                        | Array
                          {
                            collectionVariables
                              | Array
                                {
                                  name | String | optional,
                                  requestBodyProp | String | optional,
                                  responseBodyProp | String | optional,
                                  responseHeaderProp | String | optional,
                                  value | js2n.Always | optional,
                                },
                            excludeForOperations | Array String | optional,
                            openApiOperation | String | optional,
                            openApiOperationId | String | optional,
                            openApiOperationIds | Array String | optional,
                          }
                        | optional,
                      extendTests
                        | Array
                          {
                            append | Bool | optional,
                            excludeForOperations | Array String | optional,
                            openApiOperation | String | optional,
                            openApiOperationId | String | optional,
                            openApiOperationIds | Array String | optional,
                            overwrite | Bool | optional,
                            tests | Array String,
                          }
                        | optional,
                      fuzzing
                        | Array
                          {
                            requestBody
                              | Array
                                {
                                  maxLengthFields
                                    | { enabled | Bool, }
                                    | optional,
                                  maximumNumberFields
                                    | { enabled | Bool, }
                                    | optional,
                                  minLengthFields
                                    | { enabled | Bool, }
                                    | optional,
                                  minimumNumberFields
                                    | { enabled | Bool, }
                                    | optional,
                                  requiredFields
                                    | { enabled | Bool, }
                                    | optional,
                                }
                              | optional,
                            requestHeaders
                              | Array
                                {
                                  maxLengthFields
                                    | { enabled | Bool, }
                                    | optional,
                                  maximumNumberFields
                                    | { enabled | Bool, }
                                    | optional,
                                  minLengthFields
                                    | { enabled | Bool, }
                                    | optional,
                                  minimumNumberFields
                                    | { enabled | Bool, }
                                    | optional,
                                  requiredFields
                                    | { enabled | Bool, }
                                    | optional,
                                }
                              | optional,
                            requestQueryParams
                              | Array
                                {
                                  maxLengthFields
                                    | { enabled | Bool, }
                                    | optional,
                                  maximumNumberFields
                                    | { enabled | Bool, }
                                    | optional,
                                  minLengthFields
                                    | { enabled | Bool, }
                                    | optional,
                                  minimumNumberFields
                                    | { enabled | Bool, }
                                    | optional,
                                  requiredFields
                                    | { enabled | Bool, }
                                    | optional,
                                }
                              | optional,
                          }
                        | optional,
                      name | String,
                      openApiResponse | String | optional,
                      operationPreRequestScripts
                        | Array
                          {
                            excludeForOperations | Array String | optional,
                            openApiOperation | String | optional,
                            openApiOperationId | String | optional,
                            openApiOperationIds | Array String | optional,
                            scripts | Array String,
                          }
                        | optional,
                      overwrites | js2n.Always | optional,
                      tests | js2n.Always,
                    },
              }
            | optional,
        }
        | optional,
      version | Number | optional,
    }