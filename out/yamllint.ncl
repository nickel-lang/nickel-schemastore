# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.allRules" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  { level | String | optional, .. },
                  Array Dyn
                ],
              refs."definitions.ignore"
            ],
      "definitions.ignore" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                ignore
                  | String
                  | doc "Ignore files, so that the linter doesn't process them."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.toggle" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'disable, 'enable |] ],
    }
    in
  std.contract.Sequence
      [
        refs."definitions.ignore",
        {
          extends | String | optional,
          locale
            | String
            | doc "This is passed to Python's locale.setlocale."
            | optional,
          rules
            | std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                {
                  braces
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [
                            refs."definitions.allRules",
                            {
                              forbid
                                | std.contract.any_of
                                  [
                                    Bool,
                                    std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'non-empty |] ]
                                  ]
                                | doc "Used to forbid the use of flow mappings which are denoted by surrounding braces ({ and })."
                                | optional,
                              max-spaces-inside
                                | Number
                                | doc "Defines the maximal number of spaces allowed inside braces."
                                | optional,
                              max-spaces-inside-empty
                                | Number
                                | doc "Defines the maximal number of spaces allowed inside empty braces."
                                | optional,
                              min-spaces-inside
                                | Number
                                | doc "Defines the minimal number of spaces required inside braces."
                                | optional,
                              min-spaces-inside-empty
                                | Number
                                | doc "Defines the minimal number of spaces required inside empty braces."
                                | optional,
                              ..
                            }
                          ]
                      ]
                    | doc "Use this rule to control the use of flow mappings or number of spaces inside braces ({ and })."
                    | optional,
                  brackets
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [
                            refs."definitions.allRules",
                            {
                              forbid
                                | std.contract.any_of
                                  [
                                    Bool,
                                    std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'non-empty |] ]
                                  ]
                                | doc "Used to forbid the use of flow sequences which are denoted by surrounding brackets ([ and ])."
                                | optional,
                              max-spaces-inside
                                | Number
                                | doc "Defines the maximal number of spaces allowed inside brackets."
                                | optional,
                              max-spaces-inside-empty
                                | Number
                                | doc "Defines the maximal number of spaces allowed inside empty brackets."
                                | optional,
                              min-spaces-inside
                                | Number
                                | doc "Defines the minimal number of spaces required inside brackets."
                                | optional,
                              min-spaces-inside-empty
                                | Number
                                | doc "Defines the minimal number of spaces required inside empty brackets."
                                | optional,
                              ..
                            }
                          ]
                      ]
                    | doc "Use this rule to control the use of flow sequences or the number of spaces inside brackets ([ and ])."
                    | optional,
                  colons
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [
                            refs."definitions.allRules",
                            {
                              max-spaces-after
                                | Number
                                | doc "Defines the maximal number of spaces allowed after colons (use -1 to disable)."
                                | optional,
                              max-spaces-before
                                | Number
                                | doc "Defines the maximal number of spaces allowed before colons (use -1 to disable)."
                                | optional,
                              ..
                            }
                          ]
                      ]
                    | doc "Use this rule to control the number of spaces before and after colons (:)."
                    | optional,
                  commas
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [
                            refs."definitions.allRules",
                            {
                              max-spaces-after
                                | Number
                                | doc "Defines the maximal number of spaces allowed after commas (use -1 to disable)."
                                | optional,
                              max-spaces-before
                                | Number
                                | doc "Defines the maximal number of spaces allowed before commas (use -1 to disable)."
                                | optional,
                              min-spaces-after
                                | Number
                                | doc "Defines the minimal number of spaces required after commas."
                                | optional,
                              ..
                            }
                          ]
                      ]
                    | doc "Use this rule to control the number of spaces before and after commas (,)."
                    | optional,
                  comments
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [
                            refs."definitions.allRules",
                            {
                              ignore-shebangs
                                | Bool
                                | doc "Ignore a shebang at the beginning of the file when require-starting-space is set."
                                | optional,
                              min-spaces-from-content
                                | Number
                                | doc "Used to visually separate inline comments from content."
                                | optional,
                              require-starting-space
                                | Bool
                                | doc "Require a space character right after the #."
                                | optional,
                              ..
                            }
                          ]
                      ]
                    | doc "Use this rule to control the position and formatting of comments."
                    | optional,
                  comments-indentation
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [ refs."definitions.allRules", { _ | Dyn } ]
                      ]
                    | doc "Use this rule to force comments to be indented like content."
                    | optional,
                  document-end
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [
                            refs."definitions.allRules",
                            {
                              present
                                | Bool
                                | doc "True when the document end marker is required, or to false when it is forbidden."
                                | optional,
                              ..
                            }
                          ]
                      ]
                    | doc "Use this rule to require or forbid the use of document end marker (...)."
                    | optional,
                  document-start
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [
                            refs."definitions.allRules",
                            {
                              present
                                | Bool
                                | doc "True when the document start marker is required, or to false when it is forbidden."
                                | optional,
                              ..
                            }
                          ]
                      ]
                    | doc "Use this rule to require or forbid the use of document start marker (---)."
                    | optional,
                  empty-lines
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [
                            refs."definitions.allRules",
                            {
                              max
                                | Number
                                | doc "Defines the maximal number of empty lines allowed in the document."
                                | optional,
                              max-end | Number | doc "" | optional,
                              max-start
                                | Number
                                | doc "Defines the maximal number of empty lines allowed at the beginning of the file."
                                | optional,
                              ..
                            }
                          ]
                      ]
                    | doc "Use this rule to set a maximal number of allowed consecutive blank lines."
                    | optional,
                  empty-values
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [
                            refs."definitions.allRules",
                            {
                              forbid-in-block-mappings
                                | Bool
                                | doc "Prevent empty values in block mappings."
                                | optional,
                              forbid-in-flow-mappings
                                | Bool
                                | doc "Prevent empty values in flow mappings."
                                | optional,
                              ..
                            }
                          ]
                      ]
                    | doc "Use this rule to prevent nodes with empty content, that implicitly result in null values."
                    | optional,
                  hyphens
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [
                            refs."definitions.allRules",
                            {
                              max-spaces-after
                                | Number
                                | doc "Defines the maximal number of spaces allowed after hyphens."
                                | optional,
                              ..
                            }
                          ]
                      ]
                    | doc "Use this rule to control the number of spaces after hyphens (-)."
                    | optional,
                  indentation
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [
                            refs."definitions.allRules",
                            {
                              check-multi-line-strings
                                | Bool
                                | doc "Defines whether to lint indentation in multi-line strings."
                                | optional,
                              indent-sequences
                                | std.contract.any_of
                                  [
                                    Bool,
                                    std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'consistent, 'whatever |]
                                      ]
                                  ]
                                | doc "Defines whether block sequences should be indented or not (when in a mapping, this indentation is not mandatory – some people perceive the - as part of the indentation)."
                                | optional,
                              spaces
                                | std.contract.any_of
                                  [
                                    Number,
                                    std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'consistent |]
                                      ]
                                  ]
                                | doc "Defines the indentation width, in spaces."
                                | optional,
                              ..
                            }
                          ]
                      ]
                    | doc "Use this rule to control the indentation."
                    | optional,
                  key-duplicates
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [ refs."definitions.allRules", { _ | Dyn } ]
                      ]
                    | doc "Use this rule to prevent multiple entries with the same key in mappings."
                    | optional,
                  key-ordering
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [ refs."definitions.allRules", { _ | Dyn } ]
                      ]
                    | doc "Use this rule to enforce alphabetical ordering of keys in mappings."
                    | optional,
                  line-length
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [
                            refs."definitions.allRules",
                            {
                              allow-non-breakable-inline-mappings
                                | Bool
                                | doc "Implies allow-non-breakable-words and extends it to also allow non-breakable words in inline mappings."
                                | optional,
                              allow-non-breakable-words
                                | Bool
                                | doc "Used to allow non breakable words (without spaces inside) to overflow the limit."
                                | optional,
                              max
                                | Number
                                | doc "Defines the maximal (inclusive) length of lines."
                                | optional,
                              ..
                            }
                          ]
                      ]
                    | doc "Use this rule to set a limit to lines length."
                    | optional,
                  new-line-at-end-of-file
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [ refs."definitions.allRules", { _ | Dyn } ]
                      ]
                    | doc m%"
                      Use this rule to require a new line character (
                      ) at the end of files.
                    "%
                    | optional,
                  new-lines
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [
                            refs."definitions.allRules",
                            {
                              type
                                | std.enum.TagOrString
                                | [| 'platform, 'dos, 'unix |]
                                | doc "Unix to use UNIX-typed new line characters (\n), or dos to use DOS-typed new line characters (\r\n)."
                                | optional,
                              ..
                            }
                          ]
                      ]
                    | doc "Use this rule to force the type of new line characters."
                    | optional,
                  octal-values
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [
                            refs."definitions.allRules",
                            {
                              forbid-explicit-octal
                                | Bool
                                | doc "Prevent numbers starting with 0o."
                                | optional,
                              forbid-implicit-octal
                                | Bool
                                | doc "Prevent numbers starting with 0."
                                | optional,
                              ..
                            }
                          ]
                      ]
                    | doc "Use this rule to prevent values with octal numbers."
                    | optional,
                  quoted-strings
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [
                            refs."definitions.allRules",
                            {
                              extra-allowed
                                | Array String
                                | doc "List of PCRE regexes to allow quoted string values, even if required: only-when-needed is set."
                                | optional,
                              extra-required
                                | Array String
                                | doc "List of PCRE regexes to force string values to be quoted, if they match any regex."
                                | optional,
                              quote-type
                                | std.enum.TagOrString
                                | [| 'any, 'double, 'single |]
                                | doc "Defines allowed quotes."
                                | optional,
                              required
                                | std.contract.any_of
                                  [
                                    Bool,
                                    std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'only-when-needed |]
                                      ]
                                  ]
                                | doc "Defines whether using quotes in string values is required."
                                | optional,
                              ..
                            }
                          ]
                      ]
                    | doc "Use this rule to forbid any string values that are not quoted, or to prevent quoted strings without needing it."
                    | optional,
                  trailing-spaces
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [ refs."definitions.allRules", { _ | Dyn } ]
                      ]
                    | doc "Use this rule to forbid trailing spaces at the end of lines."
                    | optional,
                  truthy
                    | std.contract.any_of
                      [
                        refs."definitions.toggle",
                        Bool,
                        std.contract.Sequence
                          [
                            refs."definitions.allRules",
                            {
                              allowed-values
                                | Array (
                                  std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [|
                                        'off,
                                        'Off,
                                        'OFF,
                                        'on,
                                        'On,
                                        'ON,
                                        'no,
                                        'No,
                                        'NO,
                                        'yes,
                                        'Yes,
                                        'YES,
                                        '"false",
                                        'False,
                                        'FALSE,
                                        '"true",
                                        'True,
                                        'TRUE
                                      |]
                                    ]
                                )
                                | doc "Defines the list of truthy values which will be ignored during linting."
                                | optional,
                              check-keys
                                | Bool
                                | doc "Disables verification for keys in mappings."
                                | optional,
                              ..
                            }
                          ]
                      ]
                    | doc "Use this rule to forbid non-explictly typed truthy values other than allowed ones (by default: true and false), for example YES or off."
                    | optional,
                  ..
                },
                Array Dyn
              ]
            | optional,
          yaml-files | Array String | optional,
          ..
        }
      ]