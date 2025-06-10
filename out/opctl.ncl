# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "properties.inputs" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [
                    js2n.OneOf
                      [
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "array" ],
                            Array Dyn
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "boolean" ],
                            Array Dyn
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "dir" ],
                            Array Dyn
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "file" ],
                            Array Dyn
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "number" ],
                            Array Dyn
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "object" ],
                            Array Dyn
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "socket" ],
                            Array Dyn
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "string" ],
                            Array Dyn
                          ]
                      ],
                    {
                      array
                        | {
                          constraints
                            | {
                              additionalItems
                                | js2n.Always
                                | doc "JSON Schema [additionalItems keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-01#section-6.10)"
                                | optional,
                              items
                                | std.contract.any_of
                                  [
                                    js2n.Always,
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    { _ | Dyn },
                                    js2n.array.ArrayOf js2n.Always
                                  ]
                                | doc "JSON Schema [items keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-01#section-6.9)"
                                | optional,
                              maxItems
                                | std.number.Integer
                                | js2n.number.Minimum 0
                                | doc "JSON Schema [maxItems keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.10)"
                                | optional,
                              minItems
                                | std.number.Integer
                                | js2n.number.Minimum 0
                                | doc "JSON Schema [minItems keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.11)"
                                | optional,
                              uniqueItems
                                | Bool
                                | doc "JSON Schema [uniqueItems keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-01#section-6.13)"
                                | optional,
                            }
                            | optional,
                          "default" | Array Dyn | optional,
                          description | js2n.Always | optional,
                          isSecret
                            | Bool
                            | doc "If the array is secret"
                            | optional,
                        }
                        | doc "Array parameter of an op"
                        | optional,
                      boolean
                        | {
                          "default" | Bool | doc "Default value" | optional,
                          description | js2n.Always | optional,
                        }
                        | doc "Boolean parameter of an op"
                        | optional,
                      dir
                        | {
                          "default"
                            | String
                            | doc "Default value; an absolute path rooted at dir containing op.yml or, a relative path interpreted from where the op is started"
                            | optional,
                          description
                            | String
                            | doc "Markdown in [v0.28 CommonMark syntax](http://spec.commonmark.org/0.28/) including GFM table extension"
                            | optional,
                          isSecret
                            | Bool
                            | doc "If the directory is secret"
                            | optional,
                        }
                        | doc "Directory parameter of an op"
                        | optional,
                      file
                        | {
                          "default"
                            | String
                            | doc "Default value; an absolute path rooted at dir containing op.yml or, a relative path interpreted from where the op is started"
                            | optional,
                          description | js2n.Always | optional,
                          isSecret
                            | Bool
                            | doc "If the file is secret"
                            | optional,
                        }
                        | doc "File parameter of an op"
                        | optional,
                      number
                        | {
                          constraints
                            | {
                              allOf
                                | Array js2n.Always
                                | doc "JSON Schema [allOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.22)"
                                | optional,
                              anyOf
                                | Array js2n.Always
                                | doc "JSON Schema [anyOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.23)"
                                | optional,
                              enum
                                | Array Number
                                | doc "JSON Schema [enum keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.20)"
                                | optional,
                              format
                                | std.enum.TagOrString
                                | [| 'integer |]
                                | optional,
                              maximum
                                | Number
                                | doc "JSON Schema [maximum keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.2)"
                                | optional,
                              minimum
                                | Number
                                | doc "JSON Schema [minimum keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.4)"
                                | optional,
                              multipleOf
                                | Number
                                | doc "JSON Schema [multipleOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.1)"
                                | optional,
                              not
                                | js2n.Always
                                | doc "JSON Schema [not keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.25)"
                                | optional,
                              oneOf
                                | Array js2n.Always
                                | doc "JSON Schema [oneOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.24)"
                                | optional,
                            }
                            | optional,
                          "default" | Number | optional,
                          description | js2n.Always | optional,
                          isSecret
                            | Bool
                            | doc "If the number is secret"
                            | optional,
                        }
                        | doc "Number parameter of an op"
                        | optional,
                      object
                        | {
                          constraints
                            | {
                              additionalProperties
                                | js2n.OneOf [ Bool, js2n.Always ]
                                | doc "JSON Schema [additionalProperties keyword](https://tools.ietf.org/html/draft-handrews-json-schema-validation-00#section-6.5.6)"
                                | optional,
                              allOf
                                | Array js2n.Always
                                | doc "JSON Schema [allOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.22)"
                                | optional,
                              anyOf
                                | Array js2n.Always
                                | doc "JSON Schema [anyOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.23)"
                                | optional,
                              dependencies
                                | js2n.OneOf
                                  [
                                    js2n.Always,
                                    std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        { _ | Dyn },
                                        js2n.array.ArrayOf String
                                      ]
                                  ]
                                | doc "JSON Schema [dependencies keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.19)"
                                | optional,
                              enum
                                | Array (js2n.Nullable ({ _ | Dyn }))
                                | doc "JSON Schema [enum keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.20)"
                                | optional,
                              maxProperties
                                | std.number.Integer
                                | js2n.number.Minimum 0
                                | doc "JSON Schema [maxProperties keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.13)"
                                | optional,
                              minProperties
                                | std.number.Integer
                                | js2n.number.Minimum 0
                                | doc "JSON Schema [minProperties keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.14)"
                                | optional,
                              not
                                | js2n.Always
                                | doc "JSON Schema [not keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.25)"
                                | optional,
                              oneOf
                                | Array js2n.Always
                                | doc "JSON Schema [oneOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.24)"
                                | optional,
                              patternProperties
                                | { _ | js2n.Always }
                                | doc "JSON Schema [patternProperties keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.17)"
                                | optional,
                              properties
                                | {
                                  _ | std.contract.any_of
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
                                            {
                                                description = String,
                                                title = String,
                                                type =
                                                  std.contract.any_of
                                                      [ String, Array Dyn ],
                                                writeOnly = Bool,
                                              },
                                          required = {},
                                        },
                                      Array Dyn,
                                      js2n.Always,
                                      js2n.Always,
                                      js2n.Always,
                                      js2n.Always
                                    ]
                                }
                                | doc "JSON Schema [properties keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.16)"
                                | optional,
                              required
                                | Array String
                                | doc "JSON Schema [required keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.15)"
                                | optional,
                            }
                            | optional,
                          "default" | { _ | Dyn } | optional,
                          description | js2n.Always | optional,
                          isSecret
                            | Bool
                            | doc "If the object is secret"
                            | optional,
                        }
                        | doc "Object parameter of an op"
                        | optional,
                      socket
                        | {
                          description | js2n.Always | optional,
                          isSecret
                            | Bool
                            | doc "If the socket is secret"
                            | optional,
                        }
                        | doc "Socket parameter of an op"
                        | optional,
                      string
                        | {
                          constraints
                            | {
                              allOf
                                | Array js2n.Always
                                | doc "JSON Schema [allOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.22)"
                                | optional,
                              anyOf
                                | Array js2n.Always
                                | doc "JSON Schema [anyOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.23)"
                                | optional,
                              enum
                                | Array String
                                | doc "JSON Schema [enum keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.20)"
                                | optional,
                              format
                                | js2n.OneOf
                                  [
                                    std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'date-time |]
                                      ],
                                    std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'docker-image-ref |]
                                      ],
                                    std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'email |] ],
                                    std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'hostname |] ],
                                    std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'ipv4 |] ],
                                    std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'ipv6 |] ],
                                    std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'uri |] ],
                                    std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'semver |] ]
                                  ]
                                | doc "Superset of JSON Schema [format keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-7)"
                                | optional,
                              maxLength
                                | std.number.Integer
                                | js2n.number.Minimum 1
                                | doc "JSON Schema [maxLength keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.6)"
                                | optional,
                              minLength
                                | std.number.Integer
                                | js2n.number.Minimum 0
                                | doc "JSON Schema [minLength keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.7)"
                                | optional,
                              not
                                | js2n.Always
                                | doc "JSON Schema [not keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.25)"
                                | optional,
                              oneOf
                                | Array js2n.Always
                                | doc "JSON Schema [oneOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.24)"
                                | optional,
                              pattern
                                | String
                                | doc "JSON Schema [pattern keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.8)"
                                | optional,
                            }
                            | optional,
                          "default" | String | optional,
                          description | js2n.Always | optional,
                          isSecret
                            | Bool
                            | doc "If the string is secret"
                            | optional,
                        }
                        | doc "String parameter of an op"
                        | optional,
                      ..
                    }
                  ]
              },
              js2n.record.FieldsMatch "[-_.a-zA-Z0-9]+"
            ],
      "properties.opspec" =
        js2n.string.Matches
            "^([0-9]+)\\.([0-9]+)\\.([0-9]+)(?:(-[0-9A-Za-z-]+(?:\\.[0-9A-Za-z-]+)*))?(?:\\+[0-9A-Za-z-\\-\\.]+)?$",
      "properties.run" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    container
                      | {
                        cmd
                          | Array js2n.Always
                          | doc "Command run by a container; overrides any set at the image level"
                          | optional,
                        dirs
                          | { _ | js2n.OneOf [ js2n.Null, js2n.Always ] }
                          | js2n.record.FieldsMatch
                            "^([a-zA-Z]:)?[-_.\\/a-zA-Z0-9]+$"
                          | doc "Directories in the container"
                          | optional,
                        envVars
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  {
                                    _ | js2n.OneOf
                                      [
                                        js2n.Null,
                                        std.contract.Sequence
                                          [
                                            refs."properties.run.properties.container.properties.name",
                                            std.contract.any_of
                                              [
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                          ]
                                      ]
                                  },
                                  js2n.record.FieldsMatch "^[^=]+$"
                                ],
                              js2n.string.Matches "^\\$\\(.+\\)$"
                            ]
                          | doc "Environment variables in the container"
                          | optional,
                        files
                          | {
                            _ | js2n.OneOf
                              [
                                js2n.Null,
                                std.contract.Sequence
                                  [
                                    refs."properties.run.properties.container.properties.name",
                                    std.contract.any_of
                                      [
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ]
                                  ]
                              ]
                          }
                          | js2n.record.FieldsMatch
                            "^([a-zA-Z]:)?[-_.\\/a-zA-Z0-9]+$"
                          | doc "Files in the container"
                          | optional,
                        image
                          | {
                            pullCreds
                              | refs."properties.run.properties.op.properties.pullCreds"
                              | { _ | Dyn }
                              | optional,
                            ref | js2n.Always | doc "Reference to an image",
                          },
                        name
                          | std.contract.any_of
                            [ Bool, Number, String, { _ | Dyn }, Array Dyn ]
                          | doc "Name the container can be referenced by from other containers"
                          | optional,
                        ports
                          | {
                            _ | std.contract.any_of
                              [ Number, js2n.string.Matches "[0-9]+(-[0-9]+)?" ]
                          }
                          | js2n.record.FieldsMatch "[0-9]+(-[0-9]+)?(tcp|udp)?"
                          | doc "Ports bound from the container to the host"
                          | optional,
                        sockets
                          | { _ | String }
                          | js2n.record.FieldsMatch "[:a-zA-Z0-9]+"
                          | optional,
                        workDir
                          | String
                          | doc "Working directory path (overrides any defined by image)"
                          | optional,
                      }
                      | optional,
                    "if"
                      | Array (
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
                                    js2n.record.Required [ "eq" ],
                                    Array Dyn
                                  ],
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required [ "exists" ],
                                    Array Dyn
                                  ],
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required [ "ne" ],
                                    Array Dyn
                                  ],
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required [ "notExists" ],
                                    Array Dyn
                                  ]
                              ],
                            {
                              eq
                                | Array js2n.Always
                                | doc "True if all items are equal"
                                | optional,
                              exists
                                | js2n.string.Matches "^\\$\\(.+\\)$"
                                | doc "True if value exists w/ reference"
                                | optional,
                              ne
                                | Array js2n.Always
                                | doc "True if any items aren't equal"
                                | optional,
                              notExists
                                | js2n.string.Matches "^\\$\\(.+\\)$"
                                | doc "True if no value exists w/ reference"
                                | optional,
                              ..
                            }
                          ]
                      )
                      | doc "If any predicate evaluates to false, the call will be skipped."
                      | optional,
                    op
                      | {
                        inputs
                          | {
                            _ | js2n.OneOf
                              [
                                js2n.Null,
                                std.contract.any_of
                                  [
                                    Bool,
                                    Number,
                                    String,
                                    { _ | Dyn },
                                    Array Dyn
                                  ]
                              ]
                          }
                          | js2n.record.FieldsMatch "[-_.a-zA-Z0-9]+"
                          | doc "Initializes INPUT_NAME from VALUE in format 'INPUT_NAME: VALUE'. If VALUE is null, it MUST be assumed VALUE == $(INPUT_NAME)"
                          | optional,
                        outputs
                          | { _ | js2n.Nullable String }
                          | js2n.record.FieldsMatch "[-_.a-zA-Z0-9]+"
                          | doc "Initializes NAME from OUTPUT_NAME in format 'NAME: OUTPUT_NAME'. If OUTPUT_NAME is null, it MUST be assumed NAME == OUTPUT_NAME"
                          | optional,
                        pullCreds
                          | {
                            password
                              | js2n.Always
                              | doc "Expression coercible to string value",
                            username
                              | js2n.Always
                              | doc "Expression coercible to string value",
                          }
                          | doc "Credentials used during authentication with the source of an image or op"
                          | optional,
                        ref | String | doc "Reference to an op",
                      }
                      | optional,
                    parallel | Array js2n.Always | optional,
                    parallelLoop
                      | {
                        range
                          | refs."properties.run.properties.serialLoop.properties.range"
                          | std.contract.any_of
                            [ { _ | Dyn }, Array Dyn, String ],
                        run
                          | js2n.Always
                          | doc "What gets run on each iteration of the loop",
                        vars
                          | refs."properties.run.properties.serialLoop.properties.vars"
                          | { _ | Dyn }
                          | optional,
                      }
                      | doc "Loop in which all iterations are called simultaneously."
                      | optional,
                    serial | Array js2n.Always | optional,
                    serialLoop
                      | js2n.OneOf
                        [
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "range", "run" ],
                              Array Dyn
                            ],
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "run", "until" ],
                              Array Dyn
                            ]
                        ]
                      | {
                        range
                          | std.contract.any_of
                            [ String, { _ | Dyn }, Array Dyn ]
                          | doc "Range of the loop, i.e. the value to loop over"
                          | optional,
                        run
                          | js2n.Always
                          | doc "What gets run on each iteration of the loop"
                          | optional,
                        until
                          | Array (
                            std.contract.Sequence
                              [
                                refs."properties.run.properties.if.items",
                                { _ | Dyn }
                              ]
                          )
                          | doc "Exit condition of the loop; evaluated before each iteration."
                          | optional,
                        vars
                          | {
                            index
                              | refs."properties.run.properties.serialLoop.properties.vars.properties.key"
                              | String
                              | doc "Variable each iterations associated index will be made available through"
                              | optional,
                            key
                              | js2n.string.Matches "^[-_.a-zA-Z0-9]+$"
                              | doc "Variable each iterations associated key will be made available through"
                              | optional,
                            value
                              | refs."properties.run.properties.serialLoop.properties.vars.properties.key"
                              | String
                              | doc "Variable each iterations associated value will be made available through"
                              | optional,
                          }
                          | doc "Variables added to scope on each iteration"
                          | optional,
                      }
                      | doc "Loop in which each iteration gets called sequentially."
                      | optional,
                  },
                  Array Dyn
                ],
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "container" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "op" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "parallel" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "parallelLoop" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "serial" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "serialLoop" ],
                      Array Dyn
                    ]
                ]
            ],
      "properties.run.properties.container.properties.name" =
        std.contract.any_of [ Bool, Number, String, { _ | Dyn }, Array Dyn ],
      "properties.run.properties.if.items" =
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
                      js2n.record.Required [ "eq" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "exists" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "ne" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "notExists" ],
                      Array Dyn
                    ]
                ],
              {
                eq
                  | Array js2n.Always
                  | doc "True if all items are equal"
                  | optional,
                exists
                  | js2n.string.Matches "^\\$\\(.+\\)$"
                  | doc "True if value exists w/ reference"
                  | optional,
                ne
                  | Array js2n.Always
                  | doc "True if any items aren't equal"
                  | optional,
                notExists
                  | js2n.string.Matches "^\\$\\(.+\\)$"
                  | doc "True if no value exists w/ reference"
                  | optional,
                ..
              }
            ],
      "properties.run.properties.op.properties.pullCreds" =
        {
            password | js2n.Always | doc "Expression coercible to string value",
            username | js2n.Always | doc "Expression coercible to string value",
          },
      "properties.run.properties.serialLoop.properties.range" =
        std.contract.any_of [ String, { _ | Dyn }, Array Dyn ],
      "properties.run.properties.serialLoop.properties.vars" =
        {
            index
              | refs."properties.run.properties.serialLoop.properties.vars.properties.key"
              | String
              | doc "Variable each iterations associated index will be made available through"
              | optional,
            key
              | js2n.string.Matches "^[-_.a-zA-Z0-9]+$"
              | doc "Variable each iterations associated key will be made available through"
              | optional,
            value
              | refs."properties.run.properties.serialLoop.properties.vars.properties.key"
              | String
              | doc "Variable each iterations associated value will be made available through"
              | optional,
          },
      "properties.run.properties.serialLoop.properties.vars.properties.key" =
        js2n.string.Matches "^[-_.a-zA-Z0-9]+$",
    }
    in
  std.contract.any_of
      [
        js2n.Null,
        Bool,
        Number,
        String,
        {
          description
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "Description of the op"
            | optional,
          inputs
            | {
              _ | std.contract.Sequence
                [
                  js2n.OneOf
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "array" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "boolean" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "dir" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "file" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "number" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "object" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "socket" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "string" ],
                          Array Dyn
                        ]
                    ],
                  {
                    array
                      | {
                        constraints
                          | {
                            additionalItems
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | doc "JSON Schema [additionalItems keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-01#section-6.10)"
                              | optional,
                            items
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String,
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  { _ | Dyn },
                                  js2n.array.ArrayOf
                                    (std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ])
                                ]
                              | doc "JSON Schema [items keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-01#section-6.9)"
                              | optional,
                            maxItems
                              | std.number.Integer
                              | js2n.number.Minimum 0
                              | doc "JSON Schema [maxItems keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.10)"
                              | optional,
                            minItems
                              | std.number.Integer
                              | js2n.number.Minimum 0
                              | doc "JSON Schema [minItems keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.11)"
                              | optional,
                            uniqueItems
                              | Bool
                              | doc "JSON Schema [uniqueItems keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-01#section-6.13)"
                              | optional,
                          }
                          | optional,
                        "default" | Array Dyn | optional,
                        description
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]
                          | optional,
                        isSecret
                          | Bool
                          | doc "If the array is secret"
                          | optional,
                      }
                      | doc "Array parameter of an op"
                      | optional,
                    boolean
                      | {
                        "default" | Bool | doc "Default value" | optional,
                        description
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]
                          | optional,
                      }
                      | doc "Boolean parameter of an op"
                      | optional,
                    dir
                      | {
                        "default"
                          | String
                          | doc "Default value; an absolute path rooted at dir containing op.yml or, a relative path interpreted from where the op is started"
                          | optional,
                        description
                          | String
                          | doc "Markdown in [v0.28 CommonMark syntax](http://spec.commonmark.org/0.28/) including GFM table extension"
                          | optional,
                        isSecret
                          | Bool
                          | doc "If the directory is secret"
                          | optional,
                      }
                      | doc "Directory parameter of an op"
                      | optional,
                    file
                      | {
                        "default"
                          | String
                          | doc "Default value; an absolute path rooted at dir containing op.yml or, a relative path interpreted from where the op is started"
                          | optional,
                        description
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]
                          | optional,
                        isSecret
                          | Bool
                          | doc "If the file is secret"
                          | optional,
                      }
                      | doc "File parameter of an op"
                      | optional,
                    number
                      | {
                        constraints
                          | {
                            allOf
                              | Array (
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                              )
                              | doc "JSON Schema [allOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.22)"
                              | optional,
                            anyOf
                              | Array (
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                              )
                              | doc "JSON Schema [anyOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.23)"
                              | optional,
                            enum
                              | Array Number
                              | doc "JSON Schema [enum keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.20)"
                              | optional,
                            format
                              | std.enum.TagOrString
                              | [| 'integer |]
                              | optional,
                            maximum
                              | Number
                              | doc "JSON Schema [maximum keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.2)"
                              | optional,
                            minimum
                              | Number
                              | doc "JSON Schema [minimum keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.4)"
                              | optional,
                            multipleOf
                              | Number
                              | doc "JSON Schema [multipleOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.1)"
                              | optional,
                            not
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | doc "JSON Schema [not keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.25)"
                              | optional,
                            oneOf
                              | Array (
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                              )
                              | doc "JSON Schema [oneOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.24)"
                              | optional,
                          }
                          | optional,
                        "default" | Number | optional,
                        description
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]
                          | optional,
                        isSecret
                          | Bool
                          | doc "If the number is secret"
                          | optional,
                      }
                      | doc "Number parameter of an op"
                      | optional,
                    object
                      | {
                        constraints
                          | {
                            additionalProperties
                              | js2n.OneOf
                                [
                                  Bool,
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ]
                                ]
                              | doc "JSON Schema [additionalProperties keyword](https://tools.ietf.org/html/draft-handrews-json-schema-validation-00#section-6.5.6)"
                              | optional,
                            allOf
                              | Array (
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                              )
                              | doc "JSON Schema [allOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.22)"
                              | optional,
                            anyOf
                              | Array (
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                              )
                              | doc "JSON Schema [anyOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.23)"
                              | optional,
                            dependencies
                              | js2n.OneOf
                                [
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      { _ | Dyn },
                                      js2n.array.ArrayOf String
                                    ]
                                ]
                              | doc "JSON Schema [dependencies keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.19)"
                              | optional,
                            enum
                              | Array (js2n.Nullable ({ _ | Dyn }))
                              | doc "JSON Schema [enum keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.20)"
                              | optional,
                            maxProperties
                              | std.number.Integer
                              | js2n.number.Minimum 0
                              | doc "JSON Schema [maxProperties keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.13)"
                              | optional,
                            minProperties
                              | std.number.Integer
                              | js2n.number.Minimum 0
                              | doc "JSON Schema [minProperties keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.14)"
                              | optional,
                            not
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | doc "JSON Schema [not keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.25)"
                              | optional,
                            oneOf
                              | Array (
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                              )
                              | doc "JSON Schema [oneOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.24)"
                              | optional,
                            patternProperties
                              | {
                                _ | std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                              }
                              | doc "JSON Schema [patternProperties keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.17)"
                              | optional,
                            properties
                              | {
                                _ | std.contract.any_of
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
                                          {
                                              description = String,
                                              title = String,
                                              type =
                                                std.contract.any_of
                                                    [ String, Array Dyn ],
                                              writeOnly = Bool,
                                            },
                                        required = {},
                                      },
                                    Array Dyn,
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String,
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String,
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String,
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                              }
                              | doc "JSON Schema [properties keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.16)"
                              | optional,
                            required
                              | Array String
                              | doc "JSON Schema [required keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.15)"
                              | optional,
                          }
                          | optional,
                        "default" | { _ | Dyn } | optional,
                        description
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]
                          | optional,
                        isSecret
                          | Bool
                          | doc "If the object is secret"
                          | optional,
                      }
                      | doc "Object parameter of an op"
                      | optional,
                    socket
                      | {
                        description
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]
                          | optional,
                        isSecret
                          | Bool
                          | doc "If the socket is secret"
                          | optional,
                      }
                      | doc "Socket parameter of an op"
                      | optional,
                    string
                      | {
                        constraints
                          | {
                            allOf
                              | Array (
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                              )
                              | doc "JSON Schema [allOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.22)"
                              | optional,
                            anyOf
                              | Array (
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                              )
                              | doc "JSON Schema [anyOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.23)"
                              | optional,
                            enum
                              | Array String
                              | doc "JSON Schema [enum keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.20)"
                              | optional,
                            format
                              | js2n.OneOf
                                [
                                  std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'date-time |] ],
                                  std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'docker-image-ref |]
                                    ],
                                  std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'email |] ],
                                  std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'hostname |] ],
                                  std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'ipv4 |] ],
                                  std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'ipv6 |] ],
                                  std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'uri |] ],
                                  std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'semver |] ]
                                ]
                              | doc "Superset of JSON Schema [format keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-7)"
                              | optional,
                            maxLength
                              | std.number.Integer
                              | js2n.number.Minimum 1
                              | doc "JSON Schema [maxLength keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.6)"
                              | optional,
                            minLength
                              | std.number.Integer
                              | js2n.number.Minimum 0
                              | doc "JSON Schema [minLength keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.7)"
                              | optional,
                            not
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | doc "JSON Schema [not keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.25)"
                              | optional,
                            oneOf
                              | Array (
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                              )
                              | doc "JSON Schema [oneOf keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.24)"
                              | optional,
                            pattern
                              | String
                              | doc "JSON Schema [pattern keyword](https://tools.ietf.org/html/draft-wright-json-schema-validation-00#section-5.8)"
                              | optional,
                          }
                          | optional,
                        "default" | String | optional,
                        description
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]
                          | optional,
                        isSecret
                          | Bool
                          | doc "If the string is secret"
                          | optional,
                      }
                      | doc "String parameter of an op"
                      | optional,
                    ..
                  }
                ]
            }
            | js2n.record.FieldsMatch "[-_.a-zA-Z0-9]+"
            | doc "Parameter of an op"
            | optional,
          name | String | doc "Name of the op",
          opspec
            | js2n.string.Matches
              "^([0-9]+)\\.([0-9]+)\\.([0-9]+)(?:(-[0-9A-Za-z-]+(?:\\.[0-9A-Za-z-]+)*))?(?:\\+[0-9A-Za-z-\\-\\.]+)?$"
            | doc "Version of [opspec](https://opspec.io) used by the op"
            | optional,
          outputs | refs."properties.inputs" | optional,
          run
            | std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                {
                  container
                    | {
                      cmd
                        | Array (
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]
                        )
                        | doc "Command run by a container; overrides any set at the image level"
                        | optional,
                      dirs
                        | {
                          _ | js2n.OneOf
                            [
                              js2n.Null,
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                            ]
                        }
                        | js2n.record.FieldsMatch
                          "^([a-zA-Z]:)?[-_.\\/a-zA-Z0-9]+$"
                        | doc "Directories in the container"
                        | optional,
                      envVars
                        | std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                {
                                  _ | js2n.OneOf
                                    [
                                      js2n.Null,
                                      std.contract.any_of
                                        [
                                          Bool,
                                          { _ | Dyn },
                                          Array Dyn,
                                          Number,
                                          String
                                        ]
                                    ]
                                },
                                js2n.record.FieldsMatch "^[^=]+$"
                              ],
                            js2n.string.Matches "^\\$\\(.+\\)$"
                          ]
                        | doc "Environment variables in the container"
                        | optional,
                      files
                        | {
                          _ | js2n.OneOf
                            [
                              js2n.Null,
                              std.contract.any_of
                                [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
                            ]
                        }
                        | js2n.record.FieldsMatch
                          "^([a-zA-Z]:)?[-_.\\/a-zA-Z0-9]+$"
                        | doc "Files in the container"
                        | optional,
                      image
                        | {
                          pullCreds
                            | refs."properties.run.properties.op.properties.pullCreds"
                            | optional,
                          ref
                            | std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                { _ | Dyn },
                                Array Dyn,
                                Number,
                                String
                              ]
                            | doc "Reference to an image",
                        },
                      name
                        | std.contract.any_of
                          [ Bool, Number, String, { _ | Dyn }, Array Dyn ]
                        | doc "Name the container can be referenced by from other containers"
                        | optional,
                      ports
                        | {
                          _ | std.contract.any_of
                            [ Number, js2n.string.Matches "[0-9]+(-[0-9]+)?" ]
                        }
                        | js2n.record.FieldsMatch "[0-9]+(-[0-9]+)?(tcp|udp)?"
                        | doc "Ports bound from the container to the host"
                        | optional,
                      sockets
                        | { _ | String }
                        | js2n.record.FieldsMatch "[:a-zA-Z0-9]+"
                        | optional,
                      workDir
                        | String
                        | doc "Working directory path (overrides any defined by image)"
                        | optional,
                    }
                    | optional,
                  "if"
                    | Array (
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
                                  js2n.record.Required [ "eq" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "exists" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "ne" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "notExists" ],
                                  Array Dyn
                                ]
                            ],
                          {
                            eq
                              | Array (
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                              )
                              | doc "True if all items are equal"
                              | optional,
                            exists
                              | js2n.string.Matches "^\\$\\(.+\\)$"
                              | doc "True if value exists w/ reference"
                              | optional,
                            ne
                              | Array (
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                              )
                              | doc "True if any items aren't equal"
                              | optional,
                            notExists
                              | js2n.string.Matches "^\\$\\(.+\\)$"
                              | doc "True if no value exists w/ reference"
                              | optional,
                            ..
                          }
                        ]
                    )
                    | doc "If any predicate evaluates to false, the call will be skipped."
                    | optional,
                  op
                    | {
                      inputs
                        | {
                          _ | js2n.OneOf
                            [
                              js2n.Null,
                              std.contract.any_of
                                [ Bool, Number, String, { _ | Dyn }, Array Dyn ]
                            ]
                        }
                        | js2n.record.FieldsMatch "[-_.a-zA-Z0-9]+"
                        | doc "Initializes INPUT_NAME from VALUE in format 'INPUT_NAME: VALUE'. If VALUE is null, it MUST be assumed VALUE == $(INPUT_NAME)"
                        | optional,
                      outputs
                        | { _ | js2n.Nullable String }
                        | js2n.record.FieldsMatch "[-_.a-zA-Z0-9]+"
                        | doc "Initializes NAME from OUTPUT_NAME in format 'NAME: OUTPUT_NAME'. If OUTPUT_NAME is null, it MUST be assumed NAME == OUTPUT_NAME"
                        | optional,
                      pullCreds
                        | {
                          password
                            | std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                { _ | Dyn },
                                Array Dyn,
                                Number,
                                String
                              ]
                            | doc "Expression coercible to string value",
                          username
                            | std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                { _ | Dyn },
                                Array Dyn,
                                Number,
                                String
                              ]
                            | doc "Expression coercible to string value",
                        }
                        | doc "Credentials used during authentication with the source of an image or op"
                        | optional,
                      ref | String | doc "Reference to an op",
                    }
                    | optional,
                  parallel | Array refs."properties.run" | optional,
                  parallelLoop
                    | {
                      range
                        | std.contract.any_of
                          [ { _ | Dyn }, Array Dyn, String ],
                      run
                        | refs."properties.run"
                        | doc "What gets run on each iteration of the loop",
                      vars
                        | refs."properties.run.properties.serialLoop.properties.vars"
                        | optional,
                    }
                    | doc "Loop in which all iterations are called simultaneously."
                    | optional,
                  serial | Array refs."properties.run" | optional,
                  serialLoop
                    | js2n.OneOf
                      [
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "range", "run" ],
                            Array Dyn
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "run", "until" ],
                            Array Dyn
                          ]
                      ]
                    | {
                      range
                        | std.contract.any_of [ String, { _ | Dyn }, Array Dyn ]
                        | doc "Range of the loop, i.e. the value to loop over"
                        | optional,
                      run
                        | refs."properties.run"
                        | doc "What gets run on each iteration of the loop"
                        | optional,
                      until
                        | Array (
                          std.contract.Sequence
                            [
                              refs."properties.run.properties.if.items",
                              { _ | Dyn }
                            ]
                        )
                        | doc "Exit condition of the loop; evaluated before each iteration."
                        | optional,
                      vars
                        | {
                          index
                            | refs."properties.run.properties.serialLoop.properties.vars.properties.key"
                            | doc "Variable each iterations associated index will be made available through"
                            | optional,
                          key
                            | js2n.string.Matches "^[-_.a-zA-Z0-9]+$"
                            | doc "Variable each iterations associated key will be made available through"
                            | optional,
                          value
                            | refs."properties.run.properties.serialLoop.properties.vars.properties.key"
                            | doc "Variable each iterations associated value will be made available through"
                            | optional,
                        }
                        | doc "Variables added to scope on each iteration"
                        | optional,
                    }
                    | doc "Loop in which each iteration gets called sequentially."
                    | optional,
                },
                Array Dyn
              ]
            | js2n.OneOf
              [
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "container" ],
                    Array Dyn
                  ],
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "op" ],
                    Array Dyn
                  ],
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "parallel" ],
                    Array Dyn
                  ],
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "parallelLoop" ],
                    Array Dyn
                  ],
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "serial" ],
                    Array Dyn
                  ],
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "serialLoop" ],
                    Array Dyn
                  ]
              ]
            | doc "A single node of the [call graph](https://en.wikipedia.org/wiki/Call_graph)"
            | optional,
          version
            | refs."properties.opspec"
            | doc "Version of the op"
            | optional,
        },
        Array Dyn
      ]