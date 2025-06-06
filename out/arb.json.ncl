# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  js2n.record.Record
      {
        additional = 'None,
        patterns =
          {
              "^(?!@@).+$" = String,
              "^@(?!@).+$" =
                {
                    comment
                      | String
                      | doc "A comment on this resource. This is not intended to be sent to translators."
                      | optional,
                    context
                      | String
                      | doc "The context in which this resource applies. Context is organized in hierarchy, and level separated by \":\". Tools can use this information to restore the tree structure from ARB's flat layout. When this piece of information is missing, it defaults to global."
                      | optional,
                    description
                      | String
                      | doc "A short paragraph describing the resource and how it is being used by the app, and message that need to be passed to localization process and translators."
                      | optional,
                    placeholders
                      | {
                        _ | js2n.OneOf
                          [
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      description = String,
                                      example = String,
                                      type =
                                        std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| '"String" |]
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      description = String,
                                      example = String,
                                      format =
                                        std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [|
                                                'simpleCurrency,
                                                'scientificPattern,
                                                'percentPattern,
                                                'decimalPercentPattern,
                                                'decimalPatternDigits,
                                                'decimalPattern,
                                                'currency,
                                                'compactLong,
                                                'compactSimpleCurrency,
                                                'compactCurrency,
                                                'compact
                                              |]
                                            ],
                                      optionalParameters = { _ | Dyn },
                                      type =
                                        std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'num, 'double, 'int |]
                                            ],
                                    },
                                required = { type = true, },
                              },
                            std.contract.Sequence
                              [
                                std.contract.any_of
                                  [
                                    js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties =
                                          {
                                              isCustomDateFormat =
                                                std.contract.any_of
                                                    [
                                                      js2n.Const "true",
                                                      js2n.Const true
                                                    ],
                                            },
                                        required =
                                          { isCustomDateFormat = true, },
                                      },
                                    js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties =
                                          {
                                              format =
                                                std.contract.Sequence
                                                    [
                                                      js2n.OneOf
                                                        [
                                                          js2n.Const "d",
                                                          js2n.Const "E",
                                                          js2n.Const "EEEE",
                                                          js2n.Const "LLL",
                                                          js2n.Const "LLLL",
                                                          js2n.Const "M",
                                                          js2n.Const "Md",
                                                          js2n.Const "MEd",
                                                          js2n.Const "MMM",
                                                          js2n.Const "MMMd",
                                                          js2n.Const "MMMEd",
                                                          js2n.Const "MMMM",
                                                          js2n.Const "MMMMd",
                                                          js2n.Const
                                                            "MMMMEEEEd",
                                                          js2n.Const "QQQ",
                                                          js2n.Const "QQQQ",
                                                          js2n.Const "y",
                                                          js2n.Const "yM",
                                                          js2n.Const "yMd",
                                                          js2n.Const "yMEd",
                                                          js2n.Const "yMMM",
                                                          js2n.Const "yMMMd",
                                                          js2n.Const "yMMMEd",
                                                          js2n.Const "yMMMM",
                                                          js2n.Const "yMMMMd",
                                                          js2n.Const
                                                            "yMMMMEEEEd",
                                                          js2n.Const "yQQQ",
                                                          js2n.Const "yQQQQ",
                                                          js2n.Const "H",
                                                          js2n.Const "Hm",
                                                          js2n.Const "Hms",
                                                          js2n.Const "j",
                                                          js2n.Const "jm",
                                                          js2n.Const "jms",
                                                          js2n.Const "m",
                                                          js2n.Const "ms",
                                                          js2n.Const "s"
                                                        ],
                                                      String
                                                    ],
                                            },
                                        required = { format = true, },
                                      }
                                  ],
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          description = String,
                                          example = String,
                                          format = String,
                                          isCustomDateFormat =
                                            std.contract.any_of
                                                [
                                                  std.contract.Sequence
                                                    [
                                                      std.enum.TagOrString,
                                                      [| '"false", '"true" |]
                                                    ],
                                                  Bool
                                                ],
                                          optionalParameters = { _ | Dyn },
                                          type =
                                            std.contract.Sequence
                                                [
                                                  std.enum.TagOrString,
                                                  [| 'DateTime |]
                                                ],
                                        },
                                    required = { type = true, },
                                  }
                              ]
                          ]
                      }
                      | js2n.record.FieldsMatch "^.+$"
                      | doc "A map from placeholder id to placeholder properties, including description and example. Placeholder can be specified using number (as in \"{0}\") or name (as in \"{num}\"). Number starts from 0 and the corresponding argument(s) are passed directly as function arguments. Named arguments are provided through an map object that maps each name to its value."
                      | optional,
                    type
                      | std.enum.TagOrString
                      | [| 'css, 'image, 'text |]
                      | doc "The type of resource. Possible values are \"text\", \"image\", or \"css\". Program should not rely on this attribute in run time. It is mainly for the localization tools."
                      | optional,
                  },
              "^@@x-.+$" =
                std.contract.any_of [ Bool, std.number.Integer, String ],
            },
        properties =
          {
              "@@author" = String,
              "@@comment" = String,
              "@@context" = String,
              "@@last_modified" = String,
              "@@locale" = String,
            },
        required = { "@@locale" = true, },
      }