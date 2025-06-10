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
              refs."definitions.atRule",
              refs."definitions.block",
              refs."definitions.color",
              refs."definitions.comment",
              refs."definitions.customMedia",
              refs."definitions.customProperty",
              refs."definitions.declaration",
              refs."definitions.declarationBlock",
              refs."definitions.font",
              refs."definitions.function",
              refs."definitions.generalSheet",
              refs."definitions.keyframeDeclaration",
              refs."definitions.length",
              refs."definitions.lightness",
              refs."definitions.mediaFeature",
              refs."definitions.mediaQuery",
              refs."definitions.mediaQueryList",
              refs."definitions.number",
              refs."definitions.property",
              refs."definitions.rootRule",
              refs."definitions.rule",
              refs."definitions.selector",
              refs."definitions.selectorList",
              refs."definitions.shorthandProperty",
              refs."definitions.string",
              refs."definitions.stylelintDisableComment",
              refs."definitions.time",
              refs."definitions.unit",
              refs."definitions.value",
              refs."definitions.valueList",
              { _ | Dyn }
            ],
      "definitions.alwaysMultiLineRule" =
        std.contract.any_of
            [
              js2n.Null,
              std.contract.Sequence
                [ js2n.Enum [ "always", "always-multi-line", [  ] ], String ],
              std.contract.Sequence
                [
                  js2n.array.MaxItems 2,
                  js2n.array.MinItems 2,
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            js2n.Enum [ "always", "always-multi-line", {} ],
                            String
                          ],
                        std.contract.Sequence
                          [ refs."definitions.coreRule", { _ | Dyn } ]
                      ]
                  )
                ]
            ],
      "definitions.alwaysNeverRule" =
        std.contract.any_of
            [
              js2n.Null,
              std.contract.Sequence
                [ js2n.Enum [ "always", "never", [  ] ], String ],
              std.contract.Sequence
                [
                  js2n.array.MaxItems 2,
                  js2n.array.MinItems 2,
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ js2n.Enum [ "always", "never", {} ], String ],
                        std.contract.Sequence
                          [ refs."definitions.coreRule", { _ | Dyn } ]
                      ]
                  )
                ]
            ],
      "definitions.arrayStringRule" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.Nullable String,
                  std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                refs."definitions.simpleArrayStringRule",
                                Array Dyn
                              ],
                            std.contract.Sequence
                              [ refs."definitions.coreRule", { _ | Dyn } ]
                          ])
                    ]
                ],
              std.contract.any_of [ js2n.Null, Array Dyn, String ]
            ],
      "definitions.atRule" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                at-rule-blacklist
                  | refs."definitions.arrayStringRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify a blacklist of disallowed at-rules"
                  | optional,
                at-rule-empty-line-before
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [ js2n.Enum [ "always", "never", [  ] ], String ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    js2n.Enum [ "always", "never", {} ],
                                    String
                                  ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      except
                                        | js2n.array.MinItems 1
                                        | js2n.array.UniqueItems
                                        | Array (
                                          std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [|
                                                'first-nested,
                                                'blockless-after-blockless,
                                                'blockless-after-same-name-blockless,
                                                'inside-block,
                                                'after-same-name,
                                                'all-nested
                                              |]
                                            ]
                                        )
                                        | optional,
                                      ignore
                                        | js2n.array.MinItems 1
                                        | js2n.array.UniqueItems
                                        | Array (
                                          std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [|
                                                'blockless-after-blockless,
                                                'blockless-after-same-name-blockless,
                                                'inside-block,
                                                'first-nested,
                                                'after-comment
                                              |]
                                            ]
                                        )
                                        | optional,
                                      ignoreAtRules
                                        | refs."definitions.simpleStringOrArrayStringRule"
                                        | std.contract.any_of
                                          [ Array Dyn, String ]
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Require or disallow an empty line before at-rules"
                  | optional,
                at-rule-name-case
                  | refs."definitions.lowerUpperRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify lowercase or uppercase for at-rules names"
                  | optional,
                at-rule-name-newline-after
                  | refs."definitions.alwaysMultiLineRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a newline after at-rule names"
                  | optional,
                at-rule-name-space-after
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [
                          js2n.Enum [ "always", "always-single-line", [  ] ],
                          String
                        ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    js2n.Enum
                                      [ "always", "always-single-line", {} ],
                                    String
                                  ],
                                std.contract.Sequence
                                  [ refs."definitions.coreRule", { _ | Dyn } ]
                              ]
                          )
                        ]
                    ]
                  | doc "Require a single space after at-rule names"
                  | optional,
                at-rule-no-unknown
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence [ js2n.Enum [ true, [  ] ], Bool ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ js2n.Enum [ true, {} ], Bool ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      ignoreAtRules
                                        | refs."definitions.simpleArrayStringRule"
                                        | Array Dyn
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Disallow unknown at-rules"
                  | optional,
                at-rule-no-vendor-prefix
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow vendor prefixes for at-rules"
                  | optional,
                at-rule-semicolon-newline-after
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [ js2n.Enum [ "always", [  ] ], String ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ js2n.Enum [ "always", {} ], String ],
                                std.contract.Sequence
                                  [ refs."definitions.coreRule", { _ | Dyn } ]
                              ]
                          )
                        ]
                    ]
                  | doc "Require a newline after the semicolon of at-rules"
                  | optional,
                at-rule-semicolon-space-before
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "Require a single space or disallow whitespace before the semicolons of at-rules"
                  | optional,
                at-rule-whitelist
                  | refs."definitions.arrayStringRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify a whitelist of allowed at-rules"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.block" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                block-closing-brace-empty-line-before
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [
                          js2n.Enum [ "always-multi-line", "never", [  ] ],
                          String
                        ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    js2n.Enum
                                      [ "always-multi-line", "never", {} ],
                                    String
                                  ],
                                std.contract.Sequence
                                  [ refs."definitions.coreRule", { _ | Dyn } ]
                              ]
                          )
                        ]
                    ]
                  | doc "Require or disallow an empty line before the closing brace of blocks"
                  | optional,
                block-closing-brace-newline-after
                  | refs."definitions.newlineSpaceWithIgnoreRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a newline or disallow whitespace after the closing brace of blocks"
                  | optional,
                block-closing-brace-newline-before
                  | refs."definitions.newlineRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a newline or disallow whitespace before the closing brace of blocks"
                  | optional,
                block-closing-brace-space-after
                  | refs."definitions.newlineSpaceRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace after the closing brace of blocks"
                  | optional,
                block-closing-brace-space-before
                  | refs."definitions.newlineSpaceRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace before the closing brace of blocks"
                  | optional,
                block-no-empty
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow empty blocks"
                  | optional,
                block-no-single-line
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow single-line blocks"
                  | optional,
                block-opening-brace-newline-after
                  | refs."definitions.newlineRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a newline after the opening brace of blocks"
                  | optional,
                block-opening-brace-newline-before
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [
                          js2n.Enum
                            [
                              "always",
                              "always-single-line",
                              "never-single-line",
                              "always-multi-line",
                              "never-multi-line",
                              [  ]
                            ],
                          String
                        ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    js2n.Enum
                                      [
                                        "always",
                                        "always-single-line",
                                        "never-single-line",
                                        "always-multi-line",
                                        "never-multi-line",
                                        {}
                                      ],
                                    String
                                  ],
                                std.contract.Sequence
                                  [ refs."definitions.coreRule", { _ | Dyn } ]
                              ]
                          )
                        ]
                    ]
                  | doc "Require a newline or disallow whitespace before the opening brace of blocks"
                  | optional,
                block-opening-brace-space-after
                  | refs."definitions.newlineSpaceRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace after the opening brace of blocks"
                  | optional,
                block-opening-brace-space-before
                  | refs."definitions.newlineSpaceWithIgnoreRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace before the opening brace of blocks"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.booleanRule" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              std.contract.Sequence
                [
                  js2n.array.MaxItems 2,
                  js2n.array.MinItems 2,
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.any_of
                      [
                        Bool,
                        std.contract.Sequence
                          [ refs."definitions.coreRule", { _ | Dyn } ]
                      ]
                  )
                ]
            ],
      "definitions.color" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                color-hex-case
                  | refs."definitions.lowerUpperRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify lowercase or uppercase for hex colors"
                  | optional,
                color-hex-length
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [ js2n.Enum [ "short", "long", [  ] ], String ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ js2n.Enum [ "short", "long", {} ], String ],
                                std.contract.Sequence
                                  [ refs."definitions.coreRule", { _ | Dyn } ]
                              ]
                          )
                        ]
                    ]
                  | doc "Specify short or long notation for hex colors"
                  | optional,
                color-named
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [
                          js2n.Enum [ "always-where-possible", "never", [  ] ],
                          String
                        ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    js2n.Enum
                                      [ "always-where-possible", "never", {} ],
                                    String
                                  ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      ignore
                                        | refs."definitions.simpleArrayStringRule"
                                        | Array Dyn
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Require (where possible) or disallow named colors"
                  | optional,
                color-no-hex
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow hex colors"
                  | optional,
                color-no-invalid-hex
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow invalid hex colors"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.comment" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                comment-empty-line-before
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [ js2n.Enum [ "always", "never", [  ] ], String ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    js2n.Enum [ "always", "never", {} ],
                                    String
                                  ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      except
                                        | js2n.array.MinItems 1
                                        | js2n.array.UniqueItems
                                        | Array (
                                          std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'first-nested |]
                                            ]
                                        )
                                        | doc "Reverse the primary option for comments that are nested and the first child of their parent node"
                                        | optional,
                                      ignore
                                        | js2n.array.MinItems 1
                                        | js2n.array.UniqueItems
                                        | Array (
                                          std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [|
                                                'stylelint-commands,
                                                'stylelint-command,
                                                'after-comment,
                                                'between-comments
                                              |]
                                            ]
                                        )
                                        | doc "Don't require an empty line between comments"
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Require or disallow an empty line before comments"
                  | optional,
                comment-no-empty
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow empty comments"
                  | optional,
                comment-whitespace-inside
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require or disallow whitespace on the inside of comment markers"
                  | optional,
                comment-word-blacklist
                  | refs."definitions.arrayStringRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify a blacklist of disallowed words within comments"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.coreRule" =
        {
            disableFix | Bool | optional,
            message
              | String
              | doc "Custom message that will be used in errors and warnings"
              | optional,
            reportDisables | Bool | optional,
            severity
              | std.enum.TagOrString
              | [| 'error, 'warning |]
              | doc "Message status"
              | optional,
            url | String | optional,
            ..
          },
      "definitions.customMedia" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                custom-media-pattern
                  | refs."definitions.stringRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify a pattern for custom media query names"
                  | optional,
                no-unknown-custom-media
                  | js2n.OneOf
                    [
                      js2n.Nullable (js2n.Const true),
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 1,
                          js2n.array.Items
                            [
                              js2n.Nullable (js2n.Const true),
                              std.contract.Sequence
                                [ refs."definitions.coreRule", {} ]
                            ] js2n.Always
                        ]
                    ]
                  | doc "Disallow unknown custom media queries"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.customProperty" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                custom-property-empty-line-before
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [ js2n.Enum [ "always", "never", [  ] ], String ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    js2n.Enum [ "always", "never", {} ],
                                    String
                                  ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      except
                                        | js2n.array.MinItems 1
                                        | js2n.array.UniqueItems
                                        | Array (
                                          std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [|
                                                'first-nested,
                                                'after-custom-property,
                                                'after-comment
                                              |]
                                            ]
                                        )
                                        | doc "Reverse the primary option for custom properties that come after a comment, custom property or first child of their parent node"
                                        | optional,
                                      ignore
                                        | js2n.array.MinItems 1
                                        | js2n.array.UniqueItems
                                        | Array (
                                          std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [|
                                                'inside-single-line-block,
                                                'after-comment
                                              |]
                                            ]
                                        )
                                        | doc "Ignore custom properties that are preceded by comments or inside single-line blocks"
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Require or disallow an empty line before custom properties"
                  | optional,
                custom-property-no-outside-root
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow custom properties outside of `:root` rules"
                  | optional,
                custom-property-pattern
                  | refs."definitions.stringRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify a pattern for custom properties"
                  | optional,
                no-unknown-custom-properties
                  | js2n.OneOf
                    [
                      js2n.Nullable (js2n.Const true),
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 1,
                          js2n.array.Items
                            [
                              js2n.Nullable (js2n.Const true),
                              std.contract.Sequence
                                [ refs."definitions.coreRule", {} ]
                            ] js2n.Always
                        ]
                    ]
                  | doc "Disallow unknown custom properties"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.declaration" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                declaration-bang-space-after
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace after the bang of declarations"
                  | optional,
                declaration-bang-space-before
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace before the bang of declarations"
                  | optional,
                declaration-colon-newline-after
                  | refs."definitions.alwaysMultiLineRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a newline or disallow whitespace after the colon of declarations"
                  | optional,
                declaration-colon-space-after
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [
                          js2n.Enum
                            [ "always", "never", "always-single-line", [  ] ],
                          String
                        ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    js2n.Enum
                                      [
                                        "always",
                                        "never",
                                        "always-single-line",
                                        {}
                                      ],
                                    String
                                  ],
                                std.contract.Sequence
                                  [ refs."definitions.coreRule", { _ | Dyn } ]
                              ]
                          )
                        ]
                    ]
                  | doc "Require a single space or disallow whitespace after the colon of declarations"
                  | optional,
                declaration-colon-space-before
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace before the colon of declarations"
                  | optional,
                declaration-empty-line-before
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [ js2n.Enum [ "always", "never", [  ] ], String ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    js2n.Enum [ "always", "never", {} ],
                                    String
                                  ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      except
                                        | js2n.array.MinItems 1
                                        | js2n.array.UniqueItems
                                        | Array (
                                          std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [|
                                                'first-nested,
                                                'after-declaration,
                                                'after-comment
                                              |]
                                            ]
                                        )
                                        | optional,
                                      ignore
                                        | js2n.array.MinItems 1
                                        | js2n.array.UniqueItems
                                        | Array (
                                          std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [|
                                                'inside-single-line-block,
                                                'first-nested,
                                                'after-declaration,
                                                'after-comment
                                              |]
                                            ]
                                        )
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Require or disallow an empty line before declarations"
                  | optional,
                declaration-no-important
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow `!important` within declarations"
                  | optional,
                declaration-property-unit-blacklist
                  | refs."definitions.objectRule"
                  | doc "Specify a blacklist of disallowed property and unit pairs within declarations"
                  | optional,
                declaration-property-unit-whitelist
                  | refs."definitions.objectRule"
                  | doc "Specify a whitelist of allowed property and unit pairs within declarations"
                  | optional,
                declaration-property-value-blacklist
                  | refs."definitions.objectRule"
                  | doc "Specify a blacklist of disallowed property and value pairs within declarations"
                  | optional,
                declaration-property-value-no-unknown
                  | js2n.OneOf
                    [
                      js2n.Nullable (js2n.Const true),
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 1,
                          js2n.array.Items
                            [
                              js2n.Nullable (js2n.Const true),
                              std.contract.Sequence
                                [
                                  refs."definitions.coreRule",
                                  js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        {
                                            ignoreProperties =
                                              js2n.record.Record
                                                  {
                                                    additional =
                                                      'Some
                                                          (std.contract.any_of
                                                            [
                                                              String,
                                                              js2n.array.ArrayOf
                                                                String,
                                                              js2n.OneOf
                                                                [
                                                                  std.contract.any_of
                                                                    [
                                                                      {
                                                                        _ | Dyn
                                                                      },
                                                                      js2n.string.Matches
                                                                        "^\\/.+\\/i?$"
                                                                    ],
                                                                  js2n.array.ArrayOf
                                                                    (std.contract.any_of
                                                                      [
                                                                        {
                                                                          _ | Dyn
                                                                        },
                                                                        js2n.string.Matches
                                                                          "^\\/.+\\/i?$"
                                                                      ])
                                                                ]
                                                            ]),
                                                    patterns = {},
                                                    properties = {},
                                                    required = {},
                                                  },
                                            propertiesSyntax =
                                              js2n.record.Record
                                                  {
                                                    additional =
                                                      'Some
                                                          (std.contract.any_of
                                                            [
                                                              String,
                                                              js2n.array.ArrayOf
                                                                String
                                                            ]),
                                                    patterns = {},
                                                    properties = {},
                                                    required = {},
                                                  },
                                            typesSyntax =
                                              js2n.record.Record
                                                  {
                                                    additional =
                                                      'Some
                                                          (std.contract.any_of
                                                            [
                                                              String,
                                                              js2n.array.ArrayOf
                                                                String
                                                            ]),
                                                    patterns = {},
                                                    properties = {},
                                                    required = {},
                                                  },
                                          },
                                      required = {},
                                    }
                                ]
                            ] js2n.Always
                        ]
                    ]
                  | doc "Disallow unknown values for properties within declarations"
                  | optional,
                declaration-property-value-whitelist
                  | refs."definitions.objectRule"
                  | doc "Specify a whitelist of allowed property and value pairs within declarations"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.declarationBlock" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                declaration-block-no-duplicate-properties
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence [ js2n.Enum [ true, [  ] ], Bool ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ js2n.Enum [ true, {} ], Bool ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      ignore
                                        | js2n.array.MinItems 1
                                        | js2n.array.UniqueItems
                                        | Array (
                                          std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [|
                                                'consecutive-duplicates-with-same-prefixless-values,
                                                'consecutive-duplicates-with-different-syntaxes,
                                                'consecutive-duplicates-with-different-values,
                                                'consecutive-duplicates
                                              |]
                                            ]
                                        )
                                        | optional,
                                      ignoreProperties
                                        | refs."definitions.simpleArrayStringRule"
                                        | Array Dyn
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Disallow duplicate properties within declaration blocks"
                  | optional,
                declaration-block-no-ignored-properties
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow property values that are ignored due to another property value in the same rule"
                  | optional,
                declaration-block-no-redundant-longhand-properties
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence [ js2n.Enum [ true, [  ] ], Bool ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ js2n.Enum [ true, {} ], Bool ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      ignoreShorthands
                                        | refs."definitions.simpleArrayStringRule"
                                        | Array Dyn
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Disallow longhand properties that can be combined into one shorthand property"
                  | optional,
                declaration-block-no-shorthand-property-overrides
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow shorthand properties that override related longhand properties"
                  | optional,
                declaration-block-properties-order
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [ js2n.Enum [ "alphabetical", [  ] ], String ],
                      std.contract.Sequence
                        [
                          js2n.array.MinItems 1,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    js2n.Enum [ "alphabetical", [  ], {} ],
                                    String
                                  ],
                                String,
                                std.contract.Sequence
                                  [
                                    refs."definitions.simpleArrayStringRule",
                                    Array Dyn
                                  ],
                                std.contract.Sequence
                                  [
                                    js2n.record.DependentFields
                                      {
                                        order = [ "properties" ],
                                        properties = [ "order" ],
                                      },
                                    refs."definitions.coreRule",
                                    js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties =
                                          {
                                              order =
                                                std.contract.Sequence
                                                    [
                                                      std.enum.TagOrString,
                                                      [| 'flexible, 'strict |]
                                                    ],
                                              properties =
                                                std.contract.Sequence
                                                    [
                                                      refs."definitions.simpleArrayStringRule",
                                                      Array Dyn
                                                    ],
                                              unspecified =
                                                std.contract.Sequence
                                                    [
                                                      std.enum.TagOrString,
                                                      [|
                                                        'ignore,
                                                        'bottomAlphabetical,
                                                        'bottom,
                                                        'top
                                                      |]
                                                    ],
                                            },
                                        required = {},
                                      }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Specify the order of properties within declaration blocks"
                  | optional,
                declaration-block-semicolon-newline-after
                  | refs."definitions.newlineRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a newline or disallow whitespace after the semicolons of declaration blocks"
                  | optional,
                declaration-block-semicolon-newline-before
                  | refs."definitions.newlineRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a newline or disallow whitespace before the semicolons of declaration blocks"
                  | optional,
                declaration-block-semicolon-space-after
                  | refs."definitions.spaceRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace after the semicolons of declaration blocks"
                  | optional,
                declaration-block-semicolon-space-before
                  | refs."definitions.spaceRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace before the semicolons of declaration blocks"
                  | optional,
                declaration-block-single-line-max-declarations
                  | refs."definitions.integerRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, Number ]
                  | doc "Limit the number of declaration within a single line declaration block"
                  | optional,
                declaration-block-trailing-semicolon
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require or disallow a trailing semicolon within declaration blocks"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.font" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                font-family-name-quotes
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [
                          js2n.Enum
                            [
                              "always-where-required",
                              "always-where-recommended",
                              "always-unless-keyword",
                              [  ]
                            ],
                          String
                        ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    js2n.Enum
                                      [
                                        "always-where-required",
                                        "always-where-recommended",
                                        "always-unless-keyword",
                                        {}
                                      ],
                                    String
                                  ],
                                std.contract.Sequence
                                  [ refs."definitions.coreRule", { _ | Dyn } ]
                              ]
                          )
                        ]
                    ]
                  | doc "Specify whether or not quotation marks should be used around font family names"
                  | optional,
                font-weight-notation
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [
                          js2n.Enum [ "numeric", "named-where-possible", [  ] ],
                          String
                        ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    js2n.Enum
                                      [ "numeric", "named-where-possible", {} ],
                                    String
                                  ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      ignore
                                        | js2n.array.MinItems 1
                                        | js2n.array.UniqueItems
                                        | Array (
                                          std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'relative |]
                                            ]
                                        )
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Require numeric or named (where possible) `font-weight` values. Also, when named values are expected, require only valid names"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.function" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                function-blacklist
                  | refs."definitions.arrayStringRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify a blacklist of disallowed functions"
                  | optional,
                function-calc-no-unspaced-operator
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow an unspaced operator within `calc` functions"
                  | optional,
                function-comma-newline-after
                  | refs."definitions.newlineRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a newline or disallow whitespace after the commas of functions"
                  | optional,
                function-comma-newline-before
                  | refs."definitions.newlineRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a newline or disallow whitespace before the commas of functions"
                  | optional,
                function-comma-space-after
                  | refs."definitions.spaceRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace after the commas of functions"
                  | optional,
                function-comma-space-before
                  | refs."definitions.spaceRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace before the commas of functions"
                  | optional,
                function-linear-gradient-no-nonstandard-direction
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow direction values in `linear-gradient()` calls that are not valid according to the standard syntax"
                  | optional,
                function-max-empty-lines
                  | refs."definitions.integerRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, Number ]
                  | doc "Limit the number of adjacent empty lines within functions"
                  | optional,
                function-name-case
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [ js2n.Enum [ "lower", "upper", [  ] ], String ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    js2n.Enum [ "lower", "upper", {} ],
                                    String
                                  ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      ignoreFunctions
                                        | refs."definitions.simpleArrayStringRule"
                                        | Array Dyn
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Specify lowercase or uppercase for function names"
                  | optional,
                function-parentheses-newline-inside
                  | refs."definitions.newlineRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a newline or disallow whitespace on the inside of the parentheses of functions"
                  | optional,
                function-parentheses-space-inside
                  | refs."definitions.spaceRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace on the inside of the parentheses of functions"
                  | optional,
                function-url-data-uris
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require or disallow data URIs for urls"
                  | optional,
                function-url-no-scheme-relative
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow scheme-relative urls"
                  | optional,
                function-url-quotes
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require or disallow quotes for urls"
                  | optional,
                function-url-scheme-whitelist
                  | refs."definitions.arrayStringRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify a whitelist of allowed url schemes"
                  | optional,
                function-whitelist
                  | refs."definitions.arrayStringRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify a whitelist of allowed functions"
                  | optional,
                function-whitespace-after
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require or disallow whitespace after functions"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.generalSheet" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                indentation
                  | std.contract.any_of
                    [ js2n.Null, std.number.Integer, String, Array Dyn ]
                  | js2n.OneOf
                    [
                      js2n.Nullable std.number.Integer,
                      std.contract.Sequence
                        [ js2n.Enum [ "tab", [  ] ], String ],
                      std.contract.Sequence
                        [
                          js2n.array.MinItems 1,
                          js2n.array.UniqueItems,
                          js2n.array.ArrayOf std.number.Integer
                        ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          js2n.array.ArrayOf
                            (std.contract.Sequence
                              [
                                std.contract.any_of
                                  [ std.number.Integer, String, { _ | Dyn } ],
                                std.contract.any_of
                                  [
                                    std.number.Integer,
                                    std.contract.Sequence
                                      [ js2n.Enum [ "tab", {} ], String ],
                                    std.contract.Sequence
                                      [
                                        refs."definitions.coreRule",
                                        js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  except =
                                                    std.contract.Sequence
                                                        [
                                                          js2n.array.MinItems 1,
                                                          js2n.array.UniqueItems,
                                                          js2n.array.ArrayOf
                                                            (std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  'value,
                                                                  'param,
                                                                  'block
                                                                |]
                                                              ])
                                                        ],
                                                  ignore =
                                                    std.contract.Sequence
                                                        [
                                                          js2n.array.MinItems 1,
                                                          js2n.array.UniqueItems,
                                                          js2n.array.ArrayOf
                                                            (std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  'value,
                                                                  'param,
                                                                  'inside-parens
                                                                |]
                                                              ])
                                                        ],
                                                  indentInsideParens =
                                                    std.contract.Sequence
                                                        [
                                                          std.enum.TagOrString,
                                                          [|
                                                            'once-at-root-twice-in-block,
                                                            'twice
                                                          |]
                                                        ],
                                                },
                                            required = {},
                                          }
                                      ]
                                  ]
                              ])
                        ]
                    ]
                  | doc "Specify indentation"
                  | optional,
                linebreaks
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "Specify unix or windows linebreaks"
                  | optional,
                max-empty-lines
                  | refs."definitions.integerRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, Number ]
                  | doc "Limit the number of adjacent empty lines"
                  | optional,
                max-line-length
                  | std.contract.any_of
                    [ js2n.Null, std.number.Integer, Array Dyn ]
                  | js2n.OneOf
                    [
                      js2n.Nullable std.number.Integer,
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          js2n.array.ArrayOf
                            (std.contract.Sequence
                              [
                                std.contract.any_of
                                  [ std.number.Integer, { _ | Dyn } ],
                                std.contract.any_of
                                  [
                                    std.number.Integer,
                                    std.contract.Sequence
                                      [
                                        refs."definitions.coreRule",
                                        js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  ignore =
                                                    std.contract.any_of
                                                        [
                                                          std.contract.Sequence
                                                            [
                                                              std.enum.TagOrString,
                                                              [|
                                                                'comments,
                                                                'non-comments
                                                              |]
                                                            ],
                                                          std.contract.Sequence
                                                            [
                                                              js2n.array.MinItems
                                                                1,
                                                              js2n.array.UniqueItems,
                                                              js2n.array.ArrayOf
                                                                (std.contract.Sequence
                                                                  [
                                                                    std.enum.TagOrString,
                                                                    [|
                                                                      'comments,
                                                                      'non-comments
                                                                    |]
                                                                  ])
                                                            ]
                                                        ],
                                                },
                                            required = {},
                                          }
                                      ]
                                  ]
                              ])
                        ]
                    ]
                  | doc "Limit the length of a line"
                  | optional,
                max-nesting-depth
                  | std.contract.any_of
                    [ js2n.Null, std.number.Integer, Array Dyn ]
                  | js2n.OneOf
                    [
                      js2n.Nullable std.number.Integer,
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          js2n.array.ArrayOf
                            (std.contract.Sequence
                              [
                                std.contract.any_of
                                  [ std.number.Integer, { _ | Dyn } ],
                                std.contract.any_of
                                  [
                                    std.number.Integer,
                                    std.contract.Sequence
                                      [
                                        refs."definitions.coreRule",
                                        js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  ignore =
                                                    std.contract.Sequence
                                                        [
                                                          js2n.array.MinItems 1,
                                                          js2n.array.UniqueItems,
                                                          js2n.array.ArrayOf
                                                            (std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  'pseudo-classes,
                                                                  'blockless-at-rules,
                                                                  'at-rules-without-declaration-blocks
                                                                |]
                                                              ])
                                                        ],
                                                  ignoreAtRules =
                                                    std.contract.Sequence
                                                        [
                                                          refs."definitions.simpleArrayStringRule",
                                                          Array Dyn
                                                        ],
                                                },
                                            required = {},
                                          }
                                      ]
                                  ]
                              ])
                        ]
                    ]
                  | doc "Limit the allowed nesting depth"
                  | optional,
                no-browser-hacks
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence [ js2n.Enum [ true, [  ] ], Bool ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ js2n.Enum [ true, {} ], Bool ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      browsers
                                        | refs."definitions.simpleStringOrArrayStringRule"
                                        | std.contract.any_of
                                          [ Array Dyn, String ]
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Disallow browser hacks that are irrelevant to the browsers you are targeting"
                  | optional,
                no-descending-specificity
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow selectors of lower specificity from coming after overriding selectors of higher specificity"
                  | optional,
                no-duplicate-selectors
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow duplicate selectors within a stylesheet"
                  | optional,
                no-empty-first-line
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "Disallow empty first lines"
                  | optional,
                no-empty-source
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow empty sources"
                  | optional,
                no-eol-whitespace
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence [ js2n.Enum [ true, [  ] ], Bool ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ js2n.Enum [ true, {} ], Bool ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      ignore
                                        | js2n.array.MinItems 1
                                        | js2n.array.UniqueItems
                                        | Array (
                                          std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'empty-lines |]
                                            ]
                                        )
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Disallow end-of-line whitespace"
                  | optional,
                no-extra-semicolons
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow extra semicolons"
                  | optional,
                no-indistinguishable-colors
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence [ js2n.Enum [ true, [  ] ], Bool ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ js2n.Enum [ true, {} ], Bool ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      ignore
                                        | refs."definitions.simpleArrayStringRule"
                                        | Array Dyn
                                        | optional,
                                      threshold
                                        | std.number.Integer
                                        | js2n.number.Maximum 100
                                        | js2n.number.Minimum 0
                                        | optional,
                                      whitelist
                                        | js2n.array.MinItems 1
                                        | js2n.array.UniqueItems
                                        | Array (
                                          std.contract.Sequence
                                            [
                                              refs."definitions.simpleArrayStringRule",
                                              Array Dyn
                                            ]
                                        )
                                        | doc "An array of color pairs to ignore. Each pair is an array with two items"
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Disallow colors that are suspiciously close to being identical"
                  | optional,
                no-invalid-double-slash-comments
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow double-slash comments `(//...)` which are not supported by CSS and could lead to unexpected results"
                  | optional,
                no-missing-end-of-source-newline
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow missing end-of-source newlines"
                  | optional,
                no-unknown-animations
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow animation names that do not correspond to a `@keyframes` declaration"
                  | optional,
                no-unsupported-browser-features
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence [ js2n.Enum [ true, [  ] ], Bool ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ js2n.Enum [ true, {} ], Bool ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      browsers | String | optional,
                                      ignore
                                        | refs."definitions.simpleStringOrArrayStringRule"
                                        | std.contract.any_of
                                          [ Array Dyn, String ]
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Disallow features that are unsupported by the browsers that you are targeting"
                  | optional,
                unicode-bom
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require or disallow Unicode BOM"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.integerRule" =
        std.contract.Sequence
            [
              std.contract.any_of [ js2n.Null, std.number.Integer, Array Dyn ],
              js2n.OneOf
                [
                  js2n.Nullable std.number.Integer,
                  std.contract.Sequence
                    [
                      js2n.array.MaxItems 2,
                      js2n.array.MinItems 2,
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [ refs."definitions.coreRule", { _ | Dyn } ])
                    ]
                ]
            ],
      "definitions.keyframeDeclaration" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                keyframe-declaration-no-important
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow !important within keyframe declarations"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.length" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                length-zero-no-unit
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow units for zero lengths"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.lightness" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                lightness-notation
                  | js2n.OneOf
                    [
                      js2n.Nullable
                        (std.contract.Sequence
                          [ std.enum.TagOrString, [| 'number, 'percentage |] ]),
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 1,
                          js2n.array.Items
                            [
                              js2n.Nullable
                                (std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'number, 'percentage |]
                                  ]),
                              std.contract.Sequence
                                [ refs."definitions.coreRule", {} ]
                            ] js2n.Always
                        ]
                    ]
                  | doc "Specify number or percentage notation for lightness"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.lowerUpperRule" =
        std.contract.any_of
            [
              js2n.Null,
              std.contract.Sequence
                [ js2n.Enum [ "lower", "upper", [  ] ], String ],
              std.contract.Sequence
                [
                  js2n.array.MaxItems 2,
                  js2n.array.MinItems 2,
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ js2n.Enum [ "lower", "upper", {} ], String ],
                        std.contract.Sequence
                          [ refs."definitions.coreRule", { _ | Dyn } ]
                      ]
                  )
                ]
            ],
      "definitions.mediaFeature" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                media-feature-colon-space-after
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace after the colon in media features"
                  | optional,
                media-feature-colon-space-before
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace before the colon in media features"
                  | optional,
                media-feature-name-case
                  | refs."definitions.lowerUpperRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify lowercase or uppercase for media feature names"
                  | optional,
                media-feature-name-no-unknown
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence [ js2n.Enum [ true, [  ] ], Bool ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ js2n.Enum [ true, {} ], Bool ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      ignoreMediaFeatureNames
                                        | refs."definitions.simpleArrayStringRule"
                                        | Array Dyn
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Disallow unknown media feature names"
                  | optional,
                media-feature-name-no-vendor-prefix
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow vendor prefixes for media feature names"
                  | optional,
                media-feature-name-unit-allowed-list
                  | js2n.OneOf
                    [
                      js2n.Nullable
                        (js2n.record.Record
                          {
                            additional =
                              'Some
                                  (std.contract.any_of
                                    [ String, js2n.array.ArrayOf String ]),
                            patterns = {},
                            properties = {},
                            required = {},
                          }),
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 1,
                          js2n.array.Items
                            [
                              js2n.Nullable
                                (js2n.record.Record
                                  {
                                    additional =
                                      'Some
                                          (std.contract.any_of
                                            [
                                              String,
                                              js2n.array.ArrayOf String
                                            ]),
                                    patterns = {},
                                    properties = {},
                                    required = {},
                                  }),
                              std.contract.Sequence
                                [ refs."definitions.coreRule", {} ]
                            ] js2n.Always
                        ]
                    ]
                  | doc "Specify a list of allowed name and unit pairs within media features"
                  | optional,
                media-feature-name-value-no-unknown
                  | js2n.OneOf
                    [
                      js2n.Nullable (js2n.Const true),
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 1,
                          js2n.array.Items
                            [
                              js2n.Nullable (js2n.Const true),
                              std.contract.Sequence
                                [ refs."definitions.coreRule", {} ]
                            ] js2n.Always
                        ]
                    ]
                  | doc "Disallow unknown values for media features"
                  | optional,
                media-feature-no-missing-punctuation
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow missing punctuation for non-boolean media features"
                  | optional,
                media-feature-parentheses-space-inside
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace on the inside of the parentheses within media features"
                  | optional,
                media-feature-range-notation
                  | js2n.OneOf
                    [
                      js2n.Nullable
                        (std.contract.Sequence
                          [ std.enum.TagOrString, [| 'context, 'prefix |] ]),
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 1,
                          js2n.array.Items
                            [
                              js2n.Nullable
                                (std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'context, 'prefix |]
                                  ]),
                              std.contract.Sequence
                                [ refs."definitions.coreRule", {} ]
                            ] js2n.Always
                        ]
                    ]
                  | doc "Specify context or prefix notation for media feature ranges"
                  | optional,
                media-feature-range-operator-space-after
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace after the range operator in media features"
                  | optional,
                media-feature-range-operator-space-before
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace before the range operator in media features"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.mediaQuery" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                media-query-no-invalid
                  | js2n.OneOf
                    [
                      js2n.Nullable (js2n.Const true),
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 1,
                          js2n.array.Items
                            [
                              js2n.Nullable (js2n.Const true),
                              std.contract.Sequence
                                [ refs."definitions.coreRule", {} ]
                            ] js2n.Always
                        ]
                    ]
                  | doc "Disallow invalid media queries"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.mediaQueryList" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                media-query-list-comma-newline-after
                  | refs."definitions.newlineRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a newline or disallow whitespace after the commas of media query lists"
                  | optional,
                media-query-list-comma-newline-before
                  | refs."definitions.newlineRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a newline or disallow whitespace before the commas of media query lists"
                  | optional,
                media-query-list-comma-space-after
                  | refs."definitions.spaceRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace after the commas of media query lists"
                  | optional,
                media-query-list-comma-space-before
                  | refs."definitions.spaceRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace before the commas of media query lists"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.newlineRule" =
        std.contract.any_of
            [
              js2n.Null,
              std.contract.Sequence
                [
                  js2n.Enum
                    [ "always", "always-multi-line", "never-multi-line", [  ] ],
                  String
                ],
              std.contract.Sequence
                [
                  js2n.array.MaxItems 2,
                  js2n.array.MinItems 2,
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            js2n.Enum
                              [
                                "always",
                                "always-multi-line",
                                "never-multi-line",
                                {}
                              ],
                            String
                          ],
                        std.contract.Sequence
                          [ refs."definitions.coreRule", { _ | Dyn } ]
                      ]
                  )
                ]
            ],
      "definitions.newlineSpaceRule" =
        std.contract.any_of
            [
              js2n.Null,
              std.contract.Sequence
                [
                  js2n.Enum
                    [
                      "always",
                      "never",
                      "always-single-line",
                      "never-single-line",
                      "always-multi-line",
                      "never-multi-line",
                      [  ]
                    ],
                  String
                ],
              std.contract.Sequence
                [
                  js2n.array.MaxItems 2,
                  js2n.array.MinItems 2,
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            js2n.Enum
                              [
                                "always",
                                "never",
                                "always-single-line",
                                "never-single-line",
                                "always-multi-line",
                                "never-multi-line",
                                {}
                              ],
                            String
                          ],
                        std.contract.Sequence
                          [ refs."definitions.coreRule", { _ | Dyn } ]
                      ]
                  )
                ]
            ],
      "definitions.newlineSpaceWithIgnoreRule" =
        std.contract.any_of
            [
              js2n.Null,
              std.contract.Sequence
                [
                  js2n.Enum
                    [
                      "always",
                      "never",
                      "always-single-line",
                      "never-single-line",
                      "always-multi-line",
                      "never-multi-line",
                      [  ]
                    ],
                  String
                ],
              std.contract.Sequence
                [
                  js2n.array.MaxItems 2,
                  js2n.array.MinItems 2,
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            js2n.Enum
                              [
                                "always",
                                "always-single-line",
                                "never-single-line",
                                "always-multi-line",
                                "never-multi-line",
                                {}
                              ],
                            String
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.coreRule",
                            {
                              ignoreAtRules
                                | refs."definitions.simpleStringOrArrayStringRule"
                                | std.contract.any_of [ Array Dyn, String ]
                                | optional,
                              ..
                            }
                          ]
                      ]
                  )
                ]
            ],
      "definitions.number" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                number-leading-zero
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require or disallow a leading zero for fractional numbers less than 1"
                  | optional,
                number-max-precision
                  | refs."definitions.integerRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, Number ]
                  | doc "Limit the number of decimal places allowed in numbers"
                  | optional,
                number-no-trailing-zeros
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow trailing zeros in numbers"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.objectRule" =
        std.contract.any_of
            [
              js2n.Null,
              {
                _ | std.contract.Sequence
                  [
                    refs."definitions.simpleStringOrArrayStringRule",
                    std.contract.any_of [ Array Dyn, String ]
                  ]
              },
              std.contract.Sequence
                [
                  js2n.array.MaxItems 2,
                  js2n.array.MinItems 2,
                  js2n.array.Items
                    [
                      {
                        _ | std.contract.Sequence
                          [
                            refs."definitions.simpleStringOrArrayStringRule",
                            std.contract.any_of [ Array Dyn, String ]
                          ]
                      },
                      std.contract.Sequence
                        [ refs."definitions.coreRule", { _ | Dyn } ]
                    ] js2n.Always
                ]
            ],
      "definitions.property" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                property-blacklist
                  | refs."definitions.arrayStringRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify a blacklist of disallowed properties"
                  | optional,
                property-case
                  | refs."definitions.lowerUpperRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify lowercase or uppercase for properties"
                  | optional,
                property-no-unknown
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence [ js2n.Enum [ true, [  ] ], Bool ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ js2n.Enum [ true, {} ], Bool ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      checkPrefixed
                                        | Bool
                                        | doc "If `true`, this rule will check vendor-prefixed properties"
                                        | optional,
                                      ignoreProperties
                                        | refs."definitions.simpleArrayStringRule"
                                        | Array Dyn
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Disallow unknown properties"
                  | optional,
                property-no-vendor-prefix
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow vendor prefixes for properties"
                  | optional,
                property-whitelist
                  | refs."definitions.arrayStringRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify a whitelist of allowed properties"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.rootRule" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                root-no-standard-properties
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow standard properties inside `:root` rules"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.rule" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                rule-nested-empty-line-before
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [
                          js2n.Enum
                            [
                              "always",
                              "never",
                              "always-multi-line",
                              "never-multi-line",
                              [  ]
                            ],
                          String
                        ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    js2n.Enum
                                      [
                                        "always",
                                        "never",
                                        "always-multi-line",
                                        "never-multi-line",
                                        {}
                                      ],
                                    String
                                  ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      except
                                        | js2n.array.MinItems 1
                                        | js2n.array.UniqueItems
                                        | Array (
                                          std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'first-nested |]
                                            ]
                                        )
                                        | doc "Reverse the primary option if the rule is the first in a block"
                                        | optional,
                                      ignore
                                        | js2n.array.MinItems 1
                                        | js2n.array.UniqueItems
                                        | Array (
                                          std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'after-comment |]
                                            ]
                                        )
                                        | doc "Ignore rules that come after a comment"
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Require or disallow an empty line before nested rules"
                  | optional,
                rule-non-nested-empty-line-before
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [
                          js2n.Enum
                            [
                              "always",
                              "never",
                              "always-multi-line",
                              "never-multi-line",
                              [  ]
                            ],
                          String
                        ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    js2n.Enum
                                      [
                                        "always",
                                        "never",
                                        "always-multi-line",
                                        "never-multi-line",
                                        {}
                                      ],
                                    String
                                  ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      except
                                        | js2n.array.MinItems 1
                                        | js2n.array.UniqueItems
                                        | Array (
                                          std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'after-single-line-comment |]
                                            ]
                                        )
                                        | doc "Reverse the primary option if the rule is the first in a block"
                                        | optional,
                                      ignore
                                        | js2n.array.MinItems 1
                                        | js2n.array.UniqueItems
                                        | Array (
                                          std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'after-comment |]
                                            ]
                                        )
                                        | doc "Ignore rules that come after a comment"
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Require or disallow an empty line before non-nested rules"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.selector" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                selector-anb-no-unmatchable
                  | js2n.OneOf
                    [
                      js2n.Nullable (js2n.Const true),
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 1,
                          js2n.array.Items
                            [
                              js2n.Nullable (js2n.Const true),
                              std.contract.Sequence
                                [ refs."definitions.coreRule", {} ]
                            ] js2n.Always
                        ]
                    ]
                  | doc "Disallow unmatchable An+B selectors"
                  | optional,
                selector-attribute-brackets-space-inside
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace on the inside of the brackets within attribute selector"
                  | optional,
                selector-attribute-operator-blacklist
                  | refs."definitions.arrayStringRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify a blacklist of disallowed attribute operators"
                  | optional,
                selector-attribute-operator-space-after
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace after operators within attribute selectors"
                  | optional,
                selector-attribute-operator-space-before
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace before operators within attribute selectors"
                  | optional,
                selector-attribute-operator-whitelist
                  | refs."definitions.arrayStringRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify a whitelist of allowed attribute operators"
                  | optional,
                selector-attribute-quotes
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require or disallow quotes for attribute values"
                  | optional,
                selector-class-pattern
                  | js2n.OneOf
                    [
                      js2n.Nullable String,
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          js2n.array.ArrayOf
                            (std.contract.any_of
                              [
                                String,
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties =
                                          { resolveNestedSelectors = Bool, },
                                        required = {},
                                      }
                                  ]
                              ])
                        ]
                    ]
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify a pattern for class selectors"
                  | optional,
                selector-combinator-space-after
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace after the combinators of selectors"
                  | optional,
                selector-combinator-space-before
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace before the combinators of selectors"
                  | optional,
                selector-descendant-combinator-no-non-space
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow non-space characters for descendant combinators of selectors"
                  | optional,
                selector-id-pattern
                  | refs."definitions.stringRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify a pattern for id selectors"
                  | optional,
                selector-max-compound-selectors
                  | refs."definitions.integerRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, Number ]
                  | doc "Limit the number of compound selectors in a selector"
                  | optional,
                selector-max-empty-lines
                  | refs."definitions.integerRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, Number ]
                  | doc "Limit the number of adjacent empty lines within selectors"
                  | optional,
                selector-max-specificity
                  | refs."definitions.stringRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Limit the specificity of selectors"
                  | optional,
                selector-nested-pattern
                  | refs."definitions.stringRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify a pattern for the selectors of rules nested within rules"
                  | optional,
                selector-no-attribute
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow attribute selectors"
                  | optional,
                selector-no-combinator
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow combinators in selectors"
                  | optional,
                selector-no-id
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow id selectors"
                  | optional,
                selector-no-qualifying-type
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence [ js2n.Enum [ true, [  ] ], Bool ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ js2n.Enum [ true, {} ], Bool ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      ignore
                                        | js2n.array.MinItems 1
                                        | js2n.array.UniqueItems
                                        | Array (
                                          std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'id, 'class, 'attribute |]
                                            ]
                                        )
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Disallow qualifying a selector by type"
                  | optional,
                selector-no-type
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence [ js2n.Enum [ true, [  ] ], Bool ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ js2n.Enum [ true, {} ], Bool ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      ignore
                                        | js2n.array.MinItems 1
                                        | js2n.array.UniqueItems
                                        | Array (
                                          std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'descendant, 'compounded |]
                                            ]
                                        )
                                        | optional,
                                      ignoreTypes
                                        | refs."definitions.simpleArrayStringRule"
                                        | Array Dyn
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Disallow type selectors"
                  | optional,
                selector-no-universal
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow the universal selector"
                  | optional,
                selector-no-vendor-prefix
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow vendor prefixes for selectors"
                  | optional,
                selector-pseudo-class-case
                  | refs."definitions.lowerUpperRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify lowercase or uppercase for pseudo-class selectors"
                  | optional,
                selector-pseudo-class-no-unknown
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence [ js2n.Enum [ true, [  ] ], Bool ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ js2n.Enum [ true, {} ], Bool ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      ignorePseudoClasses
                                        | refs."definitions.simpleArrayStringRule"
                                        | Array Dyn
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Disallow unknown pseudo-class selectors"
                  | optional,
                selector-pseudo-class-parentheses-space-inside
                  | refs."definitions.alwaysNeverRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace on the inside of the parentheses within pseudo-class selectors"
                  | optional,
                selector-pseudo-class-whitelist
                  | refs."definitions.arrayStringRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify a whitelist of allowed pseudo-class selectors"
                  | optional,
                selector-pseudo-element-case
                  | refs."definitions.lowerUpperRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify lowercase or uppercase for pseudo-element selectors"
                  | optional,
                selector-pseudo-element-colon-notation
                  | refs."definitions.singleDoubleRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify single or double colon notation for applicable pseudo-elements"
                  | optional,
                selector-pseudo-element-no-unknown
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence [ js2n.Enum [ true, [  ] ], Bool ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ js2n.Enum [ true, {} ], Bool ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      ignorePseudoElements
                                        | refs."definitions.simpleArrayStringRule"
                                        | Array Dyn
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Disallow unknown pseudo-element selectors"
                  | optional,
                selector-root-no-composition
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow the composition of :root in selectors"
                  | optional,
                selector-type-case
                  | refs."definitions.lowerUpperRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify lowercase or uppercase for type selectors"
                  | optional,
                selector-type-no-unknown
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence [ js2n.Enum [ true, [  ] ], Bool ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ js2n.Enum [ true, {} ], Bool ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      ignoreTypes
                                        | refs."definitions.simpleArrayStringRule"
                                        | Array Dyn
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Disallow unknown type selectors"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.selectorList" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                selector-list-comma-newline-after
                  | refs."definitions.newlineRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a newline or disallow whitespace after the commas of selector lists"
                  | optional,
                selector-list-comma-newline-before
                  | refs."definitions.newlineRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a newline or disallow whitespace before the commas of selector lists"
                  | optional,
                selector-list-comma-space-after
                  | refs."definitions.spaceRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace after the commas of selector lists"
                  | optional,
                selector-list-comma-space-before
                  | refs."definitions.spaceRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace before the commas of selector lists"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.shorthandProperty" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                shorthand-property-no-redundant-values
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow redundant values in shorthand properties"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.simpleArrayStringRule" =
        std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
      "definitions.simpleStringOrArrayStringRule" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ refs."definitions.simpleArrayStringRule", Array Dyn ]
            ],
      "definitions.singleDoubleRule" =
        std.contract.any_of
            [
              js2n.Null,
              std.contract.Sequence
                [ js2n.Enum [ "single", "double", [  ] ], String ],
              std.contract.Sequence
                [
                  js2n.array.MaxItems 2,
                  js2n.array.MinItems 2,
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ js2n.Enum [ "single", "double", {} ], String ],
                        std.contract.Sequence
                          [ refs."definitions.coreRule", { _ | Dyn } ]
                      ]
                  )
                ]
            ],
      "definitions.spaceRule" =
        std.contract.any_of
            [
              js2n.Null,
              std.contract.Sequence
                [
                  js2n.Enum
                    [
                      "always",
                      "never",
                      "always-single-line",
                      "never-single-line",
                      [  ]
                    ],
                  String
                ],
              std.contract.Sequence
                [
                  js2n.array.MaxItems 2,
                  js2n.array.MinItems 2,
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            js2n.Enum
                              [
                                "always",
                                "never",
                                "always-single-line",
                                "never-single-line",
                                {}
                              ],
                            String
                          ],
                        std.contract.Sequence
                          [ refs."definitions.coreRule", { _ | Dyn } ]
                      ]
                  )
                ]
            ],
      "definitions.string" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                string-no-newline
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow (unescaped) newlines in strings"
                  | optional,
                string-quotes
                  | refs."definitions.singleDoubleRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify single or double quotes around strings"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.stringRule" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.Nullable String,
                  std.contract.Sequence
                    [
                      js2n.array.MaxItems 2,
                      js2n.array.MinItems 2,
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.any_of
                          [
                            String,
                            std.contract.Sequence
                              [ refs."definitions.coreRule", { _ | Dyn } ]
                          ])
                    ]
                ],
              std.contract.any_of [ js2n.Null, Array Dyn, String ]
            ],
      "definitions.stylelintDisableComment" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                stylelint-disable-reason
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [
                          js2n.Enum [ "always-before", "always-after", [  ] ],
                          String
                        ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    js2n.Enum
                                      [ "always-before", "always-after", {} ],
                                    String
                                  ],
                                std.contract.Sequence
                                  [ refs."definitions.coreRule", { _ | Dyn } ]
                              ]
                          )
                        ]
                    ]
                  | doc "Require a reason comment before or after `stylelint-disable` comments"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.time" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                time-no-imperceptible
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow `animation` and `transition` less than or equal to 100ms"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.unit" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                unit-blacklist
                  | refs."definitions.unitRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify a blacklist of disallowed units"
                  | optional,
                unit-case
                  | refs."definitions.lowerUpperRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify lowercase or uppercase for units"
                  | optional,
                unit-no-unknown
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence [ js2n.Enum [ true, [  ] ], Bool ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ js2n.Enum [ true, {} ], Bool ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      ignoreUnits
                                        | refs."definitions.simpleArrayStringRule"
                                        | Array Dyn
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Disallow unknown units"
                  | optional,
                unit-whitelist
                  | refs."definitions.unitRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Specify a whitelist of allowed units"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.unitRule" =
        std.contract.any_of
            [
              js2n.Null,
              std.contract.Sequence
                [
                  js2n.Enum
                    [
                      "em",
                      "ex",
                      "px",
                      "%",
                      "rem",
                      "vw",
                      "vh",
                      "vm",
                      "vmin",
                      "vmax",
                      "ch",
                      "in",
                      "cm",
                      "mm",
                      "q",
                      "pt",
                      "pc",
                      "deg",
                      "grad",
                      "rad",
                      "turn",
                      "ms",
                      "s",
                      "Hz",
                      "kHz",
                      "dpi",
                      "dpcm",
                      "dppx",
                      "fr",
                      [  ]
                    ],
                  String
                ],
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            js2n.Enum
                              [
                                "em",
                                "ex",
                                "px",
                                "%",
                                "rem",
                                "vw",
                                "vh",
                                "vm",
                                "vmin",
                                "vmax",
                                "ch",
                                "in",
                                "cm",
                                "mm",
                                "q",
                                "pt",
                                "pc",
                                "deg",
                                "grad",
                                "rad",
                                "turn",
                                "ms",
                                "s",
                                "Hz",
                                "kHz",
                                "dpi",
                                "dpcm",
                                "dppx",
                                "fr",
                                [  ],
                                {}
                              ],
                            String
                          ],
                        std.contract.Sequence
                          [
                            js2n.array.MinItems 1,
                            js2n.array.UniqueItems,
                            Array (
                              std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [|
                                    'fr,
                                    'dppx,
                                    'dpcm,
                                    'dpi,
                                    'kHz,
                                    'Hz,
                                    's,
                                    'ms,
                                    'turn,
                                    'rad,
                                    'grad,
                                    'deg,
                                    'pc,
                                    'pt,
                                    'q,
                                    'mm,
                                    'cm,
                                    '"in",
                                    'ch,
                                    'vmax,
                                    'vmin,
                                    'vm,
                                    'vh,
                                    'vw,
                                    'rem,
                                    '"%",
                                    'px,
                                    'ex,
                                    'em
                                  |]
                                ]
                            )
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.coreRule",
                            {
                              ignoreProperties
                                | js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns =
                                      {
                                          "(em|ex|ch|vw|vh|cm|mm|in|pt|pc|px|rem|vmin|vmax|%)" =
                                            std.contract.Sequence
                                                [
                                                  refs."definitions.simpleArrayStringRule",
                                                  Array Dyn
                                                ],
                                        },
                                    properties = {},
                                    required = {},
                                  }
                                | doc "Ignore units in the values of declarations with the specified properties"
                                | optional,
                              ..
                            }
                          ]
                      ]
                  )
                ]
            ],
      "definitions.value" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                value-keyword-case
                  | std.contract.any_of
                    [
                      js2n.Null,
                      std.contract.Sequence
                        [ js2n.Enum [ "lower", "upper", [  ] ], String ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    js2n.Enum [ "lower", "upper", {} ],
                                    String
                                  ],
                                std.contract.Sequence
                                  [
                                    refs."definitions.coreRule",
                                    {
                                      ignoreKeywords
                                        | refs."definitions.simpleArrayStringRule"
                                        | Array Dyn
                                        | doc "Ignore case of keywords values"
                                        | optional,
                                      ..
                                    }
                                  ]
                              ]
                          )
                        ]
                    ]
                  | doc "Specify lowercase or uppercase for keywords values"
                  | optional,
                value-no-vendor-prefix
                  | refs."definitions.booleanRule"
                  | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
                  | doc "Disallow vendor prefixes for values"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.valueList" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                value-list-comma-newline-after
                  | refs."definitions.newlineRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a newline or disallow whitespace after the commas of value lists"
                  | optional,
                value-list-comma-newline-before
                  | refs."definitions.newlineRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a newline or disallow whitespace before the commas of value lists"
                  | optional,
                value-list-comma-space-after
                  | refs."definitions.spaceRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace after the commas of value lists"
                  | optional,
                value-list-comma-space-before
                  | refs."definitions.spaceRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, String ]
                  | doc "Require a single space or disallow whitespace before the commas of value lists"
                  | optional,
                value-list-max-empty-lines
                  | refs."definitions.integerRule"
                  | std.contract.any_of [ js2n.Null, Array Dyn, Number ]
                  | doc "Limit the number of adjacent empty lines within value lists"
                  | optional,
                ..
              },
              Array Dyn
            ],
    }
    in
  {
      customSyntax
        | String
        | doc "Specify a custom syntax to use on your code."
        | optional,
      defaultSeverity
        | std.enum.TagOrString
        | [| 'error, 'warning |]
        | doc "The default severity level for all rules that do not have a severity specified in their secondary options"
        | optional,
      extends
        | refs."definitions.simpleStringOrArrayStringRule"
        | doc "Your configuration can extend an existing configuration(s) (whether your own or a third-party config)"
        | optional,
      ignoreDisables
        | Bool
        | doc "Ignore stylelint-disable (e.g. /* stylelint-disable block-no-empty */) comments."
        | optional,
      ignoreFiles
        | refs."definitions.simpleStringOrArrayStringRule"
        | doc "Provide a glob or array of globs to ignore specific files"
        | optional,
      overrides
        | Array
          {
            customSyntax | String | optional,
            files | Array String | optional,
            rules | refs."definitions.allRules" | { _ | Dyn } | optional,
            ..
          }
        | doc "Provide rule and behavior overrides for files that match particular glob patterns."
        | optional,
      plugins
        | refs."definitions.simpleArrayStringRule"
        | Array Dyn
        | doc "Plugins are rules or sets of rules built by the community that support methodologies, toolsets, non-standard CSS features, or very specific use cases"
        | optional,
      processors
        | Array (
          std.contract.any_of
            [ String, js2n.array.Items [ String ] ({ _ | Dyn }) ]
        )
        | doc "Processors are functions that hook into stylelint's pipeline, modifying code on its way into stylelint and modifying results on their way out"
        | optional,
      reportDescriptionlessDisables
        | refs."definitions.booleanRule"
        | doc "Report stylelint-disable comments without a description."
        | optional,
      reportInvalidScopeDisables
        | refs."definitions.booleanRule"
        | doc "Report stylelint-disable comments that don't match rules that are specified in the configuration object."
        | optional,
      reportNeedlessDisables
        | refs."definitions.booleanRule"
        | doc "Report stylelint-disable comments that don't actually match any lints that need to be disabled"
        | optional,
      rules | refs."definitions.allRules" | { _ | Dyn } | optional,
      ..
    }