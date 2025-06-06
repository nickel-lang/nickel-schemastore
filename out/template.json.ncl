# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.datatype" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| 'text, 'hex, 'int, 'float, 'bool, 'choice |]
                ],
              js2n.Null,
              Bool,
              Number,
              js2n.string.Matches "^(integer|string)$",
              { _ | Dyn },
              Array Dyn
            ],
      "definitions.generatorCasing" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                generator | std.enum.TagOrString | [| 'casing |] | optional,
                parameters
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        source
                          | String
                          | doc "The name of the symbol whose value should have its case changed.",
                        toLower
                          | Bool
                          | doc "Whether the case changed to should be lower case, if false, the value is made to be uppercase instead."
                          | optional,
                        ..
                      },
                      Array Dyn
                    ]
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.generatorCoalesce" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                generator | std.enum.TagOrString | [| 'coalesce |] | optional,
                parameters
                  | {
                    defaultValue
                      | String
                      | doc "The value to consider as being the default - if the value of the symbol referred to by sourceVariableName is equal to this, the value of the symbol referred to in fallbackVariableName is used instead."
                      | optional,
                    fallbackVariableName
                      | String
                      | doc "The name of the symbol to return the value of if the symbol referred to by sourceVariableName has a value equal to the value of defaultValue.",
                    sourceVariableName
                      | String
                      | doc "The name of the symbol whose value will be inspected - if the value is effectively equal to the default value, the value of the symbol referred to by fallbackVariableName is used, otherwise the value of this symbol.",
                    ..
                  }
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.generatorConstant" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                generator | std.enum.TagOrString | [| 'constant |] | optional,
                parameters
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        value
                          | String
                          | doc "The constant value to be assigned to the symbol."
                          | optional,
                        ..
                      },
                      Array Dyn
                    ]
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.generatorGuid" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                generator | std.enum.TagOrString | [| 'guid |] | optional,
                parameters
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        defaultFormat
                          | String
                          | doc "The format of guid to be generated. Accepts a single value from ('n', 'd', 'b', 'p', 'x') for lowercase output or ('N', 'D', 'B', 'P', 'X') for uppercase output. The formats are defined in Guid.ToString() method documentation."
                          | optional,
                        format
                          | String
                          | doc "This property is not maintained and may be removed in the future. Use defaultFormat instead, or use 'guids' section."
                          | optional,
                        ..
                      },
                      Array Dyn
                    ]
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.generatorJoin" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                generator | std.enum.TagOrString | [| 'join |] | optional,
                parameters
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        removeEmptyValues
                          | Bool
                          | doc "Indication whether null and empty strings should be removed from joining to prevent repetitive separators."
                          | optional,
                        separator
                          | String
                          | doc "The value used as the separator between the values to be concatenated, notice that you can use \"/\" as folder separator also on Windows since File API will convert it into \"\\\"."
                          | optional,
                        symbols
                          | Array
                            {
                              type
                                | std.enum.TagOrString
                                | [| 'const, 'ref |]
                                | doc "\"ref\" to reference value from another symbol or \"const\" for string constant, defaults to \"const\"."
                                | optional,
                              value
                                | String
                                | doc "Either name of another symbol or string constant.",
                              ..
                            }
                          | doc "All values to concatenate."
                          | optional,
                        ..
                      },
                      Array Dyn
                    ]
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.generatorNow" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                generator | std.enum.TagOrString | [| 'now |] | optional,
                parameters
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        format
                          | String
                          | doc "The format string to use when converting the date-time to a string representation."
                          | optional,
                        utc
                          | Bool
                          | doc "If true, use UTC time. If false, use local time."
                          | optional,
                        ..
                      },
                      Array Dyn
                    ]
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.generatorPort" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                generator | std.enum.TagOrString | [| 'port |] | optional,
                parameters
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        fallback
                          | std.number.Integer
                          | doc "The port number to use if no free ports could be found."
                          | optional,
                        high
                          | std.number.Integer
                          | doc "The upper bound of acceptable port numbers."
                          | optional,
                        low
                          | std.number.Integer
                          | doc "The lower bound of acceptable port numbers."
                          | optional,
                        ..
                      },
                      Array Dyn
                    ]
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.generatorRandom" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                generator | std.enum.TagOrString | [| 'random |] | optional,
                parameters
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        high
                          | std.number.Integer
                          | doc "An integer value indicating the high-end of the range to generate the random number in. If not explicitly provided, defaults to int.MaxValue."
                          | optional,
                        low
                          | std.number.Integer
                          | doc "An integer value indicating the low-end of the range to generate the random number in.",
                        ..
                      },
                      Array Dyn
                    ]
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.generatorRegex" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                generator | std.enum.TagOrString | [| 'regex |] | optional,
                parameters
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        source
                          | String
                          | doc "The name of a different parameter in the template configuration. A copy of its value will be used by this generator's regex to generate the value for this parameter. The value of the source parameter is not modified."
                          | optional,
                        steps
                          | Array (
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                {
                                  regex
                                    | String
                                    | doc "The regular expression to use to locate the sequence to replace.",
                                  replacement
                                    | String
                                    | doc "The replacement for any sequences matched by the supplied regular expression.",
                                  ..
                                },
                                Array Dyn
                              ]
                          )
                          | doc "An ordered list of key-value pairs indicating the regex replacement actions. Each element of the list must contain exactly the keys 'regex' and 'replacement' - along with their values. These replacements will be applied to the result of the previous replacement (except the first, which acts on the original value from the source)."
                          | optional,
                        ..
                      },
                      Array Dyn
                    ]
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.generatorRegexMatch" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                datatype | std.enum.TagOrString | [| 'bool |] | optional,
                generator | std.enum.TagOrString | [| 'regexMatch |] | optional,
                parameters
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        pattern
                          | String
                          | doc "The regular expression to use to match."
                          | optional,
                        source
                          | String
                          | doc "The symbol to search for a match. Its value will be used by this generator's regex to evaluate if there is a match. The value of the source parameter is not modified."
                          | optional,
                        ..
                      },
                      Array Dyn
                    ]
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.generatorSwitch" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                generator | std.enum.TagOrString | [| 'switch |] | optional,
                parameters
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        cases
                          | Array
                            {
                              condition
                                | String
                                | doc "An expression to be interpreted by the specified evaluator type.",
                              value
                                | String
                                | doc "The value to return if the condition evaluates to true.",
                              ..
                            }
                          | doc "The set of cases to test for. The first one, in document order, to return true's value is used, if none return true, empty string is returned."
                          | optional,
                        datatype | refs."definitions.datatype" | optional,
                        evaluator
                          | std.enum.TagOrString
                          | [| 'VB, 'MSBUILD, '"C++2", '"C++" |]
                          | doc "The style of evaluator to use."
                          | optional,
                        ..
                      },
                      Array Dyn
                    ]
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.guid" =
        js2n.string.Matches
            "^\\{?[0-9A-Fa-f]{8}[-]?([0-9A-Fa-f]{4}[-]?){3}[0-9A-Fa-f]{12}\\}?$",
      "definitions.ice" =
        std.contract.any_of
            [
              std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
              String
            ],
      "definitions.modifier" =
        {
            condition
              | String
              | doc "Boolean condition to indicate if the sources configuration should be included or ignored. If the condition evaluates to true or is not provided, the sources config will be used for creating the template. If it evaluates to false, the sources config will be ignored."
              | optional,
            copyOnly
              | refs."definitions.ice"
              | std.contract.any_of [ Array Dyn, String ]
              | doc "The set of globbing patterns indicating the content that was included by sources.include, that hasn't been excluded by sources.exclude that should be placed in the user's directory without modification."
              | optional,
            exclude
              | refs."definitions.ice"
              | std.contract.any_of [ Array Dyn, String ]
              | doc "The set of globbing patterns indicating the content that was included by sources.include that should not be processed."
              | optional,
            include
              | refs."definitions.ice"
              | std.contract.any_of [ Array Dyn, String ]
              | doc "The set of globbing patterns indicating the content to process in the path referred to by the source."
              | optional,
            rename
              | { _ | String }
              | doc "The set of explicit renames to perform. Each key is a path to a file in the source, each value is a path to the target location."
              | optional,
            ..
          },
      "definitions.source" =
        std.contract.Sequence
            [
              refs."definitions.modifier",
              {
                modifiers
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.modifier", { _ | Dyn } ]
                  )
                  | doc "A list of additional source information which gets added to the top-level source information, based on evaluation the corresponding source.modifiers.condition."
                  | optional,
                source
                  | String
                  | doc "The path in the template content (relative to the directory containing the .template.config folder) that should be processed."
                  | optional,
                target
                  | String
                  | doc "The path (relative to the directory the user has specified) that content should be written to."
                  | optional,
                ..
              }
            ],
    }
    in
  {
      author | String | doc "The author of the template.",
      baselines
        | {
          _ | {
            defaultOverrides
              | { _ | String }
              | doc "A lookup of symbol names to new defaults."
              | optional,
            description
              | String
              | doc "A string to use to indicate the intent of the baseline."
              | optional,
            ..
          }
        }
        | doc "Alternate sets of defaults for symbols."
        | optional,
      classifications
        | Array (js2n.string.MinLength 1)
        | doc "Zero or more characteristics of the template that a user might search for it by.",
      constraints
        | {
          _ | std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
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
                              properties =
                                {
                                    args =
                                      std.contract.any_of
                                          [ String, { _ | Dyn }, Array Dyn ],
                                  },
                              required = {},
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
                                properties =
                                  {
                                      type =
                                        std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [|
                                                'project-capability,
                                                'sdk-version,
                                                'workload,
                                                'host,
                                                'os
                                              |]
                                            ],
                                    },
                                required = { type = true, },
                              },
                            Array Dyn
                          ])
                    ],
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
                          properties =
                            {
                                args =
                                  std.contract.any_of
                                      [
                                        std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'OSX, 'Linux, 'Windows |]
                                          ],
                                        js2n.array.ArrayOf
                                          (std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'OSX, 'Linux, 'Windows |]
                                            ])
                                      ],
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'os |] ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                args =
                                  js2n.array.ArrayOf
                                      (js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties =
                                            {
                                                hostname =
                                                  std.contract.Sequence
                                                      [
                                                        js2n.OneOf
                                                          [
                                                            std.contract.not
                                                              (std.contract.Sequence
                                                                [
                                                                  std.enum.TagOrString,
                                                                  [|
                                                                    'ide,
                                                                    'vs-mac,
                                                                    'vs,
                                                                    'dotnetcli
                                                                  |]
                                                                ]),
                                                            std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  'ide,
                                                                  'vs-mac,
                                                                  'vs,
                                                                  'dotnetcli
                                                                |]
                                                              ]
                                                          ],
                                                        String
                                                      ],
                                                version = String,
                                              },
                                          required = { hostname = true, },
                                        }),
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'host |] ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                args =
                                  std.contract.any_of
                                      [ String, js2n.array.ArrayOf String ],
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'workload |] ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                args =
                                  std.contract.any_of
                                      [ String, js2n.array.ArrayOf String ],
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'sdk-version |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                args = String,
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'project-capability |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ],
              {
                args
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "Constraints arguments."
                  | optional,
                type | String | doc "Constraint type.",
                ..
              }
            ]
        }
        | doc "The constraints section defines the restrictions when the template can be run. Available since .NET SDK 7.0.100."
        | optional,
      defaultName
        | js2n.string.MinLength 1
        | doc "The name to use during creation if no name has been specified by the user or provided from the host."
        | optional,
      description
        | String
        | doc "A description of the template's purpose or contents for use in help."
        | optional,
      forms
        | {
          _ | std.contract.Sequence
            [
              js2n.OneOf
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
                              {
                                  identifier =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [|
                                            'snakeCase,
                                            'kebabCase,
                                            'titleCase,
                                            'firstUpperCaseInvariant,
                                            'firstUpperCase,
                                            'firstLowerCaseInvariant,
                                            'firstLowerCase,
                                            'jsonEncode,
                                            'upperCase,
                                            'identity,
                                            'lowerCase,
                                            'chain,
                                            'lower_safe_namespace,
                                            'safe_namespace,
                                            'replace,
                                            'upperCaseInvariant,
                                            'lower_safe_name,
                                            'safe_name,
                                            'xmlEncode,
                                            'lowerCaseInvariant
                                          |]
                                        ],
                                },
                            required = { identifier = true, },
                          },
                        Array Dyn
                      ]),
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'lowerCaseInvariant |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'xmlEncode |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'safe_name |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'lower_safe_name |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'replace |] ],
                                pattern = String,
                                replacement = String,
                              },
                          required = { pattern = true, replacement = true, },
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'safe_namespace |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'lower_safe_namespace |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'chain |] ],
                                steps = js2n.array.ArrayOf String,
                              },
                          required = { steps = true, },
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'lowerCase |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'identity |] ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'upperCase |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'upperCaseInvariant |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'jsonEncode |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'firstLowerCase |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'firstLowerCaseInvariant |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'firstUpperCase |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'firstUpperCaseInvariant |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'titleCase |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'kebabCase |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                identifier =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'snakeCase |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ],
              {
                identifier
                  | String
                  | doc "The identifier for the value form component that will be used to transform the value."
                  | optional,
                ..
              }
            ]
        }
        | doc "Custom value forms used by the template."
        | optional,
      generatorVersions
        | String
        | doc "The semantic version range of the Microsoft.TemplateEngine.Orchestrator.RunnableProjects package that this template is usable with. In older versions of the engine, the four octet version string is used but is matched against a constant which was never changed from 1.0.0.0 - either syntax is now accepted, however the four octet string will not be changed from 1.0.0.0."
        | optional,
      groupIdentity
        | js2n.string.MinLength 1
        | doc "The ID of the group this template belongs to. When combined with the \"tags\" section, this allows multiple templates to be displayed as one, with the the decision for which one to use being presented as a choice in each one of the pivot categories (keys)."
        | optional,
      guids
        | js2n.array.UniqueItems
        | Array refs."definitions.guid"
        | doc "A list of guids which appear in the template source and should be replaced in the template output. For each guid listed, a replacement guid is generated, and replaces all occurrences of the source guid in the output."
        | optional,
      identity
        | js2n.string.MinLength 1
        | doc "A unique name for this template.",
      name
        | js2n.string.MinLength 1
        | doc "The name for the template that users should see.",
      placeholderFilename
        | String
        | doc "A filename that will be completely ignored except to indicate that its containing directory should be copied. This allows creation of an empty directory in the created template, by having a corresponding source directory containing just the placeholder file. Completely empty directories are ignored."
        | optional,
      postActions
        | Array (
          std.contract.Sequence
            [
              js2n.OneOf
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
                              {
                                  actionId =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [|
                                            '"84C0DA21-51C8-4541-9940-6CA19AF04EE6",
                                            'D396686C-DE0E-4DE6-906D-291CD29FC5DE,
                                            '"210D431B-A78B-4D2F-B762-4ED3E3EA9025",
                                            'cb9a6cf3-4f5c-4860-b9d2-03a574959774,
                                            'B17581D1-C5C9-4489-8F0A-004BE667B814,
                                            '"3A7C4B45-1F5D-4A30-959A-51B88E82B5D2",
                                            'AC1156F7-BB77-4DB8-B28F-24EEBCCA1E5C
                                          |]
                                        ],
                                },
                            required = { actionId = true, },
                          },
                        Array Dyn
                      ]),
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
                          properties =
                            {
                                actionId =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          'AC1156F7-BB77-4DB8-B28F-24EEBCCA1E5C
                                        |]
                                      ],
                                args =
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
                                            properties =
                                              {
                                                  args = String,
                                                  executable = String,
                                                },
                                            required = {},
                                          },
                                        Array Dyn
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                actionId =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          '"3A7C4B45-1F5D-4A30-959A-51B88E82B5D2"
                                        |]
                                      ],
                                args =
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
                                            properties =
                                              {
                                                  args = String,
                                                  executable = String,
                                                  redirectStandardError = Bool,
                                                  redirectStandardOutput = Bool,
                                                },
                                            required = { executable = true, },
                                          },
                                        Array Dyn
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                actionId =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          'B17581D1-C5C9-4489-8F0A-004BE667B814
                                        |]
                                      ],
                                args =
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
                                            properties =
                                              {
                                                  projectFileExtensions =
                                                    String,
                                                  reference = String,
                                                  referenceType =
                                                    std.contract.Sequence
                                                        [
                                                          std.enum.TagOrString,
                                                          [|
                                                            'framework,
                                                            'package,
                                                            'project
                                                          |]
                                                        ],
                                                  targetFiles =
                                                    std.contract.any_of
                                                        [
                                                          js2n.array.ArrayOf
                                                            String,
                                                          String
                                                        ],
                                                  version = String,
                                                },
                                            required =
                                              {
                                                  reference = true,
                                                  referenceType = true,
                                                },
                                          },
                                        Array Dyn
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                actionId =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          'cb9a6cf3-4f5c-4860-b9d2-03a574959774
                                        |]
                                      ],
                                args =
                                  js2n.record.Record
                                      {
                                        additional =
                                          'Some
                                              (std.contract.any_of
                                                [
                                                  js2n.array.ArrayOf String,
                                                  String
                                                ]),
                                        patterns = {},
                                        properties = {},
                                        required = {},
                                      },
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                actionId =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          '"210D431B-A78B-4D2F-B762-4ED3E3EA9025"
                                        |]
                                      ],
                                args =
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
                                            properties =
                                              {
                                                  files =
                                                    std.contract.any_of
                                                        [
                                                          js2n.array.ArrayOf
                                                            String,
                                                          String
                                                        ],
                                                },
                                            required = {},
                                          },
                                        Array Dyn
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                actionId =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          'D396686C-DE0E-4DE6-906D-291CD29FC5DE
                                        |]
                                      ],
                                args =
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
                                            properties =
                                              {
                                                  inRoot = Bool,
                                                  primaryOutputIndexes = String,
                                                  projectFiles =
                                                    std.contract.any_of
                                                        [
                                                          js2n.array.ArrayOf
                                                            String,
                                                          String
                                                        ],
                                                  solutionFolder = String,
                                                },
                                            required = {},
                                          },
                                        Array Dyn
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                actionId =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          '"84C0DA21-51C8-4541-9940-6CA19AF04EE6"
                                        |]
                                      ],
                                args =
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
                                            properties = { files = String, },
                                            required = {},
                                          },
                                        Array Dyn
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ],
              {
                actionId
                  | refs."definitions.guid"
                  | doc "A guid uniquely defining the action. The value must correspond to a post-action known by the broker.",
                applyFileRenamesToArgs
                  | Array String
                  | doc "A list of arguments names from 'args' to which the file renames configured in symbols should be applied."
                  | optional,
                applyFileRenamesToManualInstructions
                  | Bool
                  | doc "If set to true, the file renames configured in symbols should be applied to manual instructions."
                  | optional,
                args
                  | { _ | Dyn }
                  | doc "A list of key-value pairs to use when performing the action. The specific parameters required / allowed are defined by the action itself."
                  | optional,
                condition
                  | String
                  | doc "A C++ style expression that, if it evaluates to 'false' causes the post-action to be skipped. This expression may refer to any symbols that have been defined."
                  | optional,
                continueOnError
                  | Bool
                  | doc "If this action fails, the value of continueOnError indicates whether to attempt the next action, or stop processing the post actions. Should be set to true when subsequent actions rely on the success of the current action."
                  | optional,
                description
                  | String
                  | doc "A human-readable description of the action."
                  | optional,
                id
                  | String
                  | doc "Defines identifier to be used when localizing the post action artifacts."
                  | optional,
                manualInstructions
                  | Array
                    {
                      condition | String | optional,
                      id
                        | String
                        | doc "Defines identifier to be used when localizing the manual instructions."
                        | optional,
                      text | String,
                      ..
                    }
                  | doc "An ordered list of possible instructions to display if the action cannot be performed. Each element in the list must contain a key named \"text\", whose value contains the instructions. Each element may also optionally provide a key named \"condition\" - a Boolean evaluate-able string. The first instruction whose condition is false or blank will be considered valid, all others are ignored.",
                ..
              }
            ]
        )
        | doc "Defines an ordered list of actions to perform after template generation. The post action information is provided to the creation broker, to act on as appropriate."
        | optional,
      precedence
        | std.contract.any_of
          [ std.number.Integer, js2n.string.Matches "^([0-9]+)$" ]
        | doc "A value used to determine how preferred this template is among the other templates with the same groupIdentity (higher values are more preferred)."
        | optional,
      preferDefaultName
        | Bool
        | doc "Indicated which behaviour to use when no `--name` is specified during template creation. If `true` it will use the template's `defaultName`. If no `defaultName` is found, or `preferDefaultName` is `false` it uses the fallback (output folder)."
        | optional,
      preferNameDirectory
        | Bool
        | doc "Indicates whether to create a directory for the template if name is specified but an output directory is not set (instead of creating the content directly in the current directory)."
        | optional,
      primaryOutputs
        | Array
          {
            condition
              | String
              | doc "The condition for including the specified path in the primary outputs set."
              | optional,
            path
              | String
              | doc "The path to the file in the template content whose corresponding output file should be included as a primary output.",
            ..
          }
        | doc "A list of important output paths created during template generation. These paths need to be added to the newly created project at the end of template creation."
        | optional,
      shortName
        | std.contract.any_of [ js2n.string.MinLength 1, Array Dyn ]
        | std.contract.any_of [ String, Array String ],
      sourceName
        | String
        | doc "The text in the source content to replace with the name the user specifies. The value of the 'sourceName' is available in built-in 'name' symbol that can be used as the source for creating other symbols and condition expressions. See important information about how to select correct 'sourceName' in https://github.com/dotnet/templating/wiki/Naming-and-default-value-forms."
        | optional,
      sources
        | Array (
          std.contract.Sequence [ refs."definitions.source", { _ | Dyn } ]
        )
        | doc "The set of mappings in the template content to user directories."
        | optional,
      symbols
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
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                binding = String,
                                defaultValue = String,
                                fileRename = String,
                                onlyIf =
                                  js2n.array.ArrayOf
                                      (js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties =
                                            {
                                                after = String,
                                                before = String,
                                              },
                                          required = {},
                                        }),
                                replaces = String,
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'bind |] ],
                              },
                          required = { binding = true, },
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                defaultValue = String,
                                fileRename = String,
                                onlyIf =
                                  js2n.array.ArrayOf
                                      (js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties =
                                            {
                                                after = String,
                                                before = String,
                                              },
                                          required = {},
                                        }),
                                replaces = String,
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'derived |] ],
                                valueSource = String,
                                valueTransform = String,
                              },
                          required =
                            { valueSource = true, valueTransform = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.Sequence
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          std.contract.Sequence
                            [
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        fileRename = String,
                                        onlyIf =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'Some Dyn,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        after = String,
                                                        before = String,
                                                      },
                                                  required = {},
                                                }),
                                        replaces = String,
                                        type =
                                          std.contract.Sequence
                                              [
                                                std.enum.TagOrString,
                                                [| 'generated |]
                                              ],
                                      },
                                  required = {},
                                },
                              js2n.record.Required [ "generator" ]
                            ],
                          Array Dyn
                        ],
                      js2n.OneOf
                        [
                          refs."definitions.generatorCasing",
                          refs."definitions.generatorCoalesce",
                          refs."definitions.generatorConstant",
                          refs."definitions.generatorGuid",
                          refs."definitions.generatorNow",
                          refs."definitions.generatorPort",
                          refs."definitions.generatorRandom",
                          refs."definitions.generatorRegex",
                          refs."definitions.generatorRegexMatch",
                          refs."definitions.generatorSwitch",
                          refs."definitions.generatorJoin"
                        ]
                    ],
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
                          properties =
                            {
                                allowMultipleValues = Bool,
                                choices =
                                  js2n.array.ArrayOf
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
                                                {
                                                    choice = String,
                                                    description = String,
                                                    displayName = String,
                                                  },
                                              required = { choice = true, },
                                            },
                                          Array Dyn
                                        ]),
                                defaultValue = String,
                                description = String,
                                displayName = String,
                                enableQuotelessLiterals = Bool,
                                fileRename = String,
                                forms =
                                  js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties =
                                          {
                                              global =
                                                std.contract.any_of
                                                    [
                                                      js2n.array.ArrayOf String,
                                                      String
                                                    ],
                                            },
                                        required = {},
                                      },
                                isEnabled =
                                  std.contract.any_of [ Bool, String ],
                                isRequired =
                                  std.contract.any_of [ Bool, String ],
                                onlyIf =
                                  js2n.array.ArrayOf
                                      (js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties =
                                            {
                                                after = String,
                                                before = String,
                                              },
                                          required = {},
                                        }),
                                replaces = String,
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'parameter |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
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
                          properties =
                            {
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'computed |] ],
                                value = String,
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ],
              {
                datatype | refs."definitions.datatype" | optional,
                type
                  | std.enum.TagOrString
                  | [| 'computed, 'parameter, 'generated, 'derived, 'bind |],
                ..
              }
            ]
        }
        | doc "The symbols section defines variables and their values, the values may be the defined in terms of other symbols. When a defined symbol name is encountered anywhere in the template definition, it is replaced by the value defined in this configuration. The symbols configuration is a collection of key-value pairs. The keys are the symbol names, and the value contains key-value-pair configuration information on how to assign the symbol a value."
        | optional,
      tags
        | {
          language
            | String
            | doc "The programming language the template primarily contains or is intended for use with."
            | optional,
          type
            | std.enum.TagOrString
            | [| 'solution, 'item, 'project |]
            | doc "The type of template: project or item.",
          ..
        }
        | doc "Common information about templates, these are effectively interchangeable with choice type parameter symbols.",
      thirdPartyNotices
        | String
        | doc "An URL for a document indicating any libraries used by the template that are not owned/provided by the template author."
        | optional,
      ..
    }