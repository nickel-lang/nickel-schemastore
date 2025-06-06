# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.blockKeywords" =
        js2n.Nullable
            (std.contract.Sequence
              [
                js2n.array.UniqueItems,
                Array (
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'while,
                        'try,
                        '"if",
                        'function,
                        'for,
                        'finally,
                        '"else",
                        'do,
                        'catch
                      |]
                    ]
                )
              ]),
      "definitions.braceRules" =
        js2n.Nullable
            {
              beforeOpeningCurlyBrace | js2n.Nullable Bool | optional,
              beforeOpeningRoundBrace | js2n.Nullable Bool | optional,
              ..
            },
      "definitions.equalityOperators" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              std.contract.Sequence
                [
                  js2n.array.UniqueItems,
                  Array (js2n.Enum [ "==", "===", "!=", "!==", null ])
                ]
            ],
      "definitions.esprimaNodeTypes" =
        js2n.Nullable
            (std.contract.Sequence
              [
                js2n.array.UniqueItems,
                Array (
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'WithStatement,
                        'WhileStatement,
                        'VariableDeclarator,
                        'VariableDeclaration,
                        'UpdateExpression,
                        'UnaryExpression,
                        'TryStatement,
                        'ThrowStatement,
                        'ThisExpression,
                        'TemplateLiteral,
                        'TemplateElement,
                        'TaggedTemplateExpression,
                        'SwitchStatement,
                        'SwitchCase,
                        'Super,
                        'SpreadElement,
                        'SequenceExpression,
                        'ReturnStatement,
                        'RestElement,
                        'Property,
                        'Program,
                        'ObjectPattern,
                        'ObjectExpression,
                        'NewExpression,
                        'MethodDefinition,
                        'MemberExpression,
                        'LogicalExpression,
                        'Literal,
                        'LabeledStatement,
                        'ImportSpecifier,
                        'ImportNamespaceSpecifier,
                        'ImportDefaultSpecifier,
                        'ImportDeclaration,
                        'IfStatement,
                        'Identifier,
                        'FunctionExpression,
                        'FunctionDeclaration,
                        'ForStatement,
                        'ForInStatement,
                        'ExpressionStatement,
                        'ExportSpecifier,
                        'ExportNamedDeclaration,
                        'ExportDefaultDeclaration,
                        'ExportAllDeclaration,
                        'EmptyStatement,
                        'DoWhileStatement,
                        'DebuggerStatement,
                        'ContinueStatement,
                        'ConditionalExpression,
                        'ClassExpression,
                        'ClassDeclaration,
                        'ClassBody,
                        'CatchClause,
                        'CallExpression,
                        'BreakStatement,
                        'BlockStatement,
                        'BinaryExpression,
                        'AssignmentPattern,
                        'AssignmentExpression,
                        'ArrowFunctionExpression,
                        'ArrayPattern,
                        'ArrayExpression
                      |]
                    ]
                )
              ]),
      "definitions.jsDoc" =
        {
            checkAnnotations
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ refs."definitions.nullRule", js2n.Null ],
                  {
                    extra
                      | { _ | js2n.Enum [ true, false, "some" ] }
                      | doc "Add custom tags with the extra field.  The extra field should contain tags in keys with true, false, or \"some\" for the values."
                      | optional,
                    preset
                      | js2n.OneOf
                        [
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'closurecompiler |] ],
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'jsdoc3 |] ],
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'jsduck5 |] ]
                        ]
                      | String
                      | optional,
                    ..
                  },
                  std.contract.Sequence
                    [
                      js2n.OneOf
                        [
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'closurecompiler |] ],
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'jsdoc3 |] ],
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'jsduck5 |] ]
                        ],
                      String
                    ]
                ]
              | doc "Checks whether tag names are valid."
              | optional,
            checkParamExistence
              | js2n.Nullable Bool
              | doc "Checks whether all parameters are documented."
              | optional,
            checkParamNames
              | js2n.Nullable Bool
              | doc "Checks whether param names in jsdoc and in function declaration are equal."
              | optional,
            checkRedundantAccess
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ refs."definitions.nullRule", js2n.Null ],
                  std.contract.Sequence
                    [
                      js2n.OneOf
                        [
                          std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [| 'enforceLeadingUnderscore |]
                            ],
                          std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [| 'enforceTrailingUnderscore |]
                            ]
                        ],
                      String
                    ]
                ]
              | doc "Reports redundant access declarations."
              | optional,
            checkRedundantParams
              | js2n.Nullable Bool
              | doc "Reports redundant params in jsdoc."
              | optional,
            checkRedundantReturns
              | js2n.Nullable Bool
              | doc "Report statements for functions without a return, which are described with an @return tag."
              | optional,
            checkReturnTypes
              | js2n.Nullable Bool
              | doc "Checks for differences between the jsdoc and actual return types if both exist."
              | optional,
            checkTypes
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ refs."definitions.nullRule", js2n.Null ],
                  std.contract.Sequence
                    [
                      js2n.OneOf
                        [
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'strictNativeCase |] ],
                          std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [| 'capitalizedNativeCase |]
                            ]
                        ],
                      String
                    ]
                ]
              | doc "Reports invalid types for bunch of tags."
              | optional,
            disallowNewlineAfterDescription
              | js2n.Nullable Bool
              | doc "Checks whether a jsdoc comment description has no padding (trailing) newline separator between it and additional @tags."
              | optional,
            enforceExistence
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ refs."definitions.nullRule", js2n.Null ],
                  {
                    allExcept
                      | js2n.array.MinItems 0
                      | js2n.array.UniqueItems
                      | Array (
                        std.contract.Sequence
                          [
                            js2n.OneOf
                              [
                                std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'expressions |] ],
                                std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'exports |] ],
                                std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'paramless-procedures |]
                                  ]
                              ],
                            String
                          ]
                      )
                      | doc "Array of quoted keywords to exempt."
                      | optional,
                    ..
                  },
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'exceptExports |] ]
                ]
              | doc "Checks whether jsdoc block exists."
              | optional,
            leadingUnderscoreAccess
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ refs."definitions.nullRule", js2n.Null ],
                  std.contract.Sequence
                    [
                      js2n.OneOf
                        [
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'private |] ],
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'protected |] ]
                        ],
                      String
                    ]
                ]
              | doc "Checks whether access declaration is set for _underscored function names.  Ignores a bunch of popular identifiers: __filename, __dirname, __proto__, __defineGetter__, super_, __constructor, etc."
              | optional,
            requireDescriptionCompleteSentence
              | js2n.Nullable Bool
              | doc "Checks whether a jsdoc comment description is a complete sentence.  A complete sentence is defined as starting with an upper case letter and ending with a period."
              | optional,
            requireHyphenBeforeDescription
              | js2n.Nullable Bool
              | doc "Checks whether a jsdoc param description has a hyphen before it (checks for -)."
              | optional,
            requireNewlineAfterDescription
              | js2n.Nullable Bool
              | doc "Checks whether a jsdoc comment description has a padding (trailing) newline separator between it and additional @tags."
              | optional,
            requireParamDescription
              | js2n.Nullable Bool
              | doc "Checks whether a jsdoc param description exists."
              | optional,
            requireParamTypes
              | js2n.Nullable Bool
              | doc "Checks whether params in jsdoc contains type."
              | optional,
            requireReturnDescription
              | js2n.Nullable Bool
              | doc "Checks whether a jsdoc return description exists."
              | optional,
            requireReturnTypes
              | js2n.Nullable Bool
              | doc "Checks whether @returns in jsdoc contains type."
              | optional,
            ..
          },
      "definitions.keywords" =
        js2n.Nullable
            (std.contract.Sequence
              [
                js2n.array.UniqueItems,
                Array (
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'with,
                        'while,
                        'void,
                        'var,
                        'typeof,
                        'try,
                        'throw,
                        'this,
                        'switch,
                        'return,
                        'new,
                        'instanceof,
                        '"in",
                        '"if",
                        'function,
                        'for,
                        'finally,
                        '"else",
                        'do,
                        'delete,
                        '"default",
                        'debugger,
                        'continue,
                        'catch,
                        'case,
                        'break
                      |]
                    ]
                )
              ]),
      "definitions.keywords2" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.keywords", js2n.Nullable (Array Dyn) ],
                  Bool
                ],
              std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
            ],
      "definitions.nullRule" = js2n.Null,
      "definitions.operators" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              std.contract.Sequence
                [
                  js2n.array.UniqueItems,
                  Array (
                    js2n.Enum
                      [
                        ",",
                        ":",
                        "?",
                        "^",
                        "^=",
                        "|",
                        "||",
                        "|=",
                        "&",
                        "&&",
                        "&=",
                        "+",
                        "+=",
                        "-",
                        "-=",
                        "%",
                        "%=",
                        "/",
                        "/=",
                        "*",
                        "*=",
                        "=",
                        "==",
                        "===",
                        "!=",
                        "!==",
                        ">",
                        ">>",
                        ">>>",
                        ">=",
                        ">>=",
                        ">>>=",
                        "<",
                        "<<",
                        "<=",
                        "<<=",
                        null
                      ]
                  )
                ]
            ],
      "definitions.unaryOperators" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              std.contract.Sequence
                [
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [| '"!", '"~", '"-", '"+", '"--", '"++" |]
                      ]
                  )
                ]
            ],
    }
    in
  {
      additionalRules
        | js2n.array.UniqueItems
        | Array String
        | doc "Path to load additional rules"
        | optional,
      disallowAnonymousFunctions
        | js2n.Nullable Bool
        | doc "Requires that a function expression be named. Named functions provide more information in the error stack trace than anonymous functions.  This option does not help if you use Arrow functions (ES6) which are always anonymous."
        | optional,
      disallowArrowFunctions
        | js2n.Nullable Bool
        | doc "Disallows arrow functions."
        | optional,
      disallowCapitalizedComments
        | js2n.Nullable Bool
        | doc "Requires the first alphabetical character of a comment to be lowercase."
        | optional,
      disallowCommaBeforeLineBreak
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'function |] ]
                )
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            }
          ]
        | doc "Disallows commas as last token on a line in lists."
        | optional,
      disallowCurlyBraces
        | refs."definitions.keywords2"
        | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
        | doc "Disallows curly braces after statements."
        | optional,
      disallowDanglingUnderscores
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array String
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            }
          ]
        | doc "Disallows identifiers that start or end in _.  Some popular identifiers are automatically listed as exceptions:  __proto__ (javascript), _ (underscore.js), __filename (node.js global), __dirname (node.js global), super_ (node.js, used by util.inherits)."
        | optional,
      disallowEmptyBlocks
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'comments |] ]
                )
                | doc "Array of quoted keywords to exempt.  Blocks containing only comments would not be considered empty."
                | optional,
              ..
            }
          ]
        | doc "Disallows empty blocks (except for catch blocks)."
        | optional,
      disallowFunctionDeclarations
        | js2n.Nullable Bool
        | doc "Disallows function declarations."
        | optional,
      disallowIdenticalDestructuringNames
        | js2n.Nullable Bool
        | doc "Disallows identical destructuring names for the key and value in favor of using shorthand destructuring."
        | optional,
      disallowIdentifierNames
        | std.contract.any_of
          [
            std.contract.Sequence
              [ js2n.array.MinItems 0, js2n.array.UniqueItems, Array String ],
            refs."definitions.nullRule"
          ]
        | doc "Disallows a specified set of identifier names."
        | optional,
      disallowImplicitTypeConversion
        | js2n.Nullable
          (std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'string, 'binary, 'boolean, 'numeric |]
                  ]
              )
            ])
        | doc "Disallows implicit type conversion."
        | optional,
      disallowKeywords
        | refs."definitions.keywords"
        | doc "Disallows usage of the specified keywords."
        | optional,
      disallowKeywordsInComments
        | std.contract.any_of
          [
            std.contract.Sequence
              [ js2n.array.MinItems 0, js2n.array.UniqueItems, Array String ],
            Bool,
            refs."definitions.nullRule",
            String
          ]
        | doc "Disallows one or more keywords in comments."
        | optional,
      disallowKeywordsOnNewLine
        | refs."definitions.keywords"
        | doc "Disallows placing the specified keywords on a new line."
        | optional,
      disallowMixedSpacesAndTabs
        | js2n.Enum [ true, false, null, "smart" ]
        | doc "Requires lines to not contain both spaces and tabs consecutively, or spaces after tabs only for alignment if \"smart"
        | optional,
      disallowMultiLineTernary
        | js2n.Nullable Bool
        | doc "Disallows the test, consequent and alternate to be on separate lines when using the ternary operator."
        | optional,
      disallowMultipleLineBreaks
        | js2n.Nullable Bool
        | doc "Disallows multiple blank lines in a row."
        | optional,
      disallowMultipleLineStrings
        | js2n.Nullable Bool
        | doc "Disallows strings that span multiple lines without using concatenation."
        | optional,
      disallowMultipleSpaces
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            { allowEOLComments | js2n.Nullable Bool | optional, .. }
          ]
        | doc "Disallows multiple indentation characters (tabs or spaces) between identifiers, keywords, and any other token."
        | optional,
      disallowMultipleVarDecl
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [
                      js2n.OneOf
                        [
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'require |] ],
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'undefined |] ]
                        ],
                      String
                    ]
                )
                | doc "Array of quoted keywords to exempt."
                | optional,
              strict | js2n.Nullable Bool | optional,
              ..
            }
          ]
        | doc "Disallows multiple `var` declaration (except for-loop)."
        | optional,
      disallowNamedUnassignedFunctions
        | js2n.Nullable Bool
        | doc "Disallows unassigned functions to be named inline."
        | optional,
      disallowNestedTernaries
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              maxLevel
                | std.number.Integer
                | js2n.number.Minimum 1
                | doc "The maximum levels of ternary nesting to be allowed."
                | optional,
              ..
            }
          ]
        | doc "Disallows nested ternaries."
        | optional,
      disallowNewlineBeforeBlockStatements
        | js2n.OneOf
          [
            refs."definitions.blockKeywords",
            Bool,
            refs."definitions.nullRule",
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      allExcept =
                        std.contract.Sequence
                            [
                              js2n.array.MinItems 0,
                              js2n.array.UniqueItems,
                              js2n.array.ArrayOf
                                (std.contract.any_of
                                  [
                                    String,
                                    std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'multiline |] ]
                                  ])
                            ],
                      value = std.contract.any_of [ Bool, Array Dyn ],
                    },
                required = {},
              }
          ]
        | std.contract.any_of [ js2n.Null, Bool, { _ | Dyn }, Array Dyn ]
        | doc "Disallows newline before opening curly brace of all block statements."
        | optional,
      disallowNodeTypes
        | refs."definitions.esprimaNodeTypes"
        | doc "Disallow use of certain node types (from Esprima/ESTree).  Value equals an array of parser node types to be disallowed."
        | optional,
      disallowNotOperatorsInConditionals
        | js2n.Nullable Bool
        | doc "Disallows the not, not equals, and strict not equals operators in conditionals."
        | optional,
      disallowObjectKeysOnNewLine
        | js2n.Nullable Bool
        | doc "Disallows placing object keys on new line."
        | optional,
      disallowOperatorBeforeLineBreak
        | refs."definitions.operators"
        | doc "Requires putting certain operators on the next line rather than on the current line before a line break."
        | optional,
      disallowPaddingNewLinesAfterBlocks
        | js2n.Nullable Bool
        | doc "Disallow a newline after blocks."
        | optional,
      disallowPaddingNewLinesAfterUseStrict
        | js2n.Nullable Bool
        | doc "Disallow a blank line after 'use strict'; statements."
        | optional,
      disallowPaddingNewLinesBeforeExport
        | js2n.Nullable Bool
        | doc "Disallows newline before module.exports."
        | optional,
      disallowPaddingNewLinesBeforeLineComments
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Disallows newline before line comments."
        | optional,
      disallowPaddingNewLinesInObjects
        | js2n.Nullable Bool
        | doc "Disallows newlines adjacent to curly braces in all object literals."
        | optional,
      disallowPaddingNewlinesBeforeKeywords
        | refs."definitions.keywords2"
        | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
        | doc "Disallow an empty line above the specified keywords."
        | optional,
      disallowPaddingNewlinesInBlocks
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'functions, 'conditionals |] ]
                )
                | doc "Array of quoted keywords to exempt.  If `conditionals` is specified, conditionals (if, else if, else) blocks are ignored.  If `functions` is specified, function blocks are ignored."
                | optional,
              close
                | Bool
                | doc "A value of true validates that there is a newline before the closing brace in a block.  A value of false ignores the newline validation before the closing brace in a block."
                | optional,
              open
                | Bool
                | doc "A value of true validates that there is a newline after the opening brace in a block.  A value of false ignores the newline validation after the opening brace in a block."
                | optional,
              ..
            }
          ]
        | doc "Disallows blocks from beginning or ending with 2 newlines."
        | optional,
      disallowParenthesesAroundArrowParam
        | js2n.Nullable Bool
        | doc "Disallows parentheses around arrow function expressions that contain a single parameter."
        | optional,
      disallowQuotedKeysInObjects
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| 'reserved |] ]
                    ]
                )
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            },
            std.contract.Sequence
              [ std.enum.TagOrString, [| 'allButReserved |] ]
          ]
        | doc "Disallows quoted keys in object if possible."
        | optional,
      disallowSemicolons
        | js2n.Nullable Bool
        | doc "Disallows lines from ending in a semicolon."
        | optional,
      disallowShorthandArrowFunctions
        | js2n.Nullable Bool
        | doc "Require arrow functions to use a block statement (explicit return)."
        | optional,
      disallowSpaceAfterBinaryOperators
        | refs."definitions.operators"
        | doc "Requires sticking binary operators to the right."
        | optional,
      disallowSpaceAfterComma
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'sparseArrays |] ]
                )
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            }
          ]
        | doc "Disallows spaces after commas."
        | optional,
      disallowSpaceAfterKeywords
        | refs."definitions.keywords2"
        | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
        | doc "Disallows space after the specified keywords.  A value of true will require spaces after all possible keywords."
        | optional,
      disallowSpaceAfterLineComment
        | js2n.Nullable Bool
        | doc "Requires that a line comment (//) not be followed by a space."
        | optional,
      disallowSpaceAfterObjectKeys
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [
                      js2n.OneOf
                        [
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'singleline |] ],
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'multiline |] ],
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'aligned |] ],
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'method |] ]
                        ],
                      String
                    ]
                )
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            },
            std.contract.Sequence
              [
                js2n.OneOf
                  [
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'ignoreSingleLine |] ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'ignoreMultiLine |] ]
                  ],
                String
              ]
          ]
        | doc "Disallows space after object keys."
        | optional,
      disallowSpaceAfterPrefixUnaryOperators
        | refs."definitions.unaryOperators"
        | doc "Requires sticking unary operators to the right."
        | optional,
      disallowSpaceBeforeBinaryOperators
        | refs."definitions.operators"
        | doc "Requires sticking binary operators to the left."
        | optional,
      disallowSpaceBeforeBlockStatements
        | js2n.Nullable Bool
        | doc "Disallows space before block statements (for loops, control structures)."
        | optional,
      disallowSpaceBeforeComma
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'sparseArrays |] ]
                )
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            },
            std.contract.Sequence [ std.enum.TagOrString, [| 'exceptExports |] ]
          ]
        | doc "Disallows spaces before commas."
        | optional,
      disallowSpaceBeforeKeywords
        | refs."definitions.keywords2"
        | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
        | doc "Disallows space before keyword."
        | optional,
      disallowSpaceBeforeObjectValues
        | js2n.Nullable Bool
        | doc "Disallows space before object values."
        | optional,
      disallowSpaceBeforePostfixUnaryOperators
        | refs."definitions.unaryOperators"
        | doc "Requires sticking unary operators to the left."
        | optional,
      disallowSpaceBeforeSemicolon
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.any_of
                    [
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| '"(" |] ],
                      js2n.string.MaxLength 1
                    ]
                )
                | doc "Array of quoted tokens to exempt (allows whitespace before semicolon if preceded by the specified token)."
                | optional,
              ..
            }
          ]
        | doc "Disallows spaces before semicolons."
        | optional,
      disallowSpaceBetweenArguments
        | js2n.Nullable Bool
        | doc "Ensure there are no spaces after argument separators in call expressions."
        | optional,
      disallowSpacesInAnonymousFunctionExpression
        | refs."definitions.braceRules"
        | doc "Disallows space before () or {} in anonymous function expressions."
        | optional,
      disallowSpacesInCallExpression
        | js2n.Nullable Bool
        | doc "Disallows space before () in call expressions."
        | optional,
      disallowSpacesInConditionalExpression
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            js2n.Null,
            Bool,
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      afterConsequent = Bool,
                      afterTest = Bool,
                      beforeAlternate = Bool,
                      beforeConsequent = Bool,
                    },
                required = {},
              }
          ]
        | doc "Disallows space before and/or after ? or : in conditional expressions."
        | optional,
      disallowSpacesInForStatement
        | js2n.Nullable Bool
        | doc "Disallow spaces in between for statement."
        | optional,
      disallowSpacesInFunction
        | refs."definitions.braceRules"
        | doc "Disallows space before `()` or `{}` in function expressions (both named and anonymous) and function declarations."
        | optional,
      disallowSpacesInFunctionDeclaration
        | refs."definitions.braceRules"
        | doc "Disallows space before () or {} in function declarations."
        | optional,
      disallowSpacesInFunctionExpression
        | refs."definitions.braceRules"
        | doc "Disallows space before `()` or `{}` in function expressions (both named and anonymous)."
        | optional,
      disallowSpacesInGenerator
        | std.contract.any_of
          [
            refs."definitions.nullRule",
            {
              afterStar
                | Bool
                | doc "A value of true disallows space after *."
                | optional,
              beforeStar
                | Bool
                | doc "A value of true disallows space before *."
                | optional,
              ..
            }
          ]
        | doc "Disallow space before or after * in generator functions."
        | optional,
      disallowSpacesInNamedFunctionExpression
        | refs."definitions.braceRules"
        | doc "Disallows space before () or {} in named function expressions"
        | optional,
      disallowSpacesInsideArrayBrackets
        | js2n.OneOf
          [
            js2n.Enum [ true, false, "all" ],
            refs."definitions.nullRule",
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      allExcept =
                        std.contract.Sequence
                            [
                              js2n.array.MinItems 0,
                              js2n.array.UniqueItems,
                              js2n.array.ArrayOf
                                (std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| '"]", '"[", '"}", '"{", '")", '"(" |]
                                  ])
                            ],
                    },
                required = {},
              },
            std.contract.Sequence [ std.enum.TagOrString, [| 'nested |] ]
          ]
        | std.contract.any_of [ js2n.Null, Bool, { _ | Dyn }, String ]
        | doc "Disallows space after opening array square bracket and before closing.  Reports only on arrays, not on property accessors.  Use disallowSpacesInsideBrackets to report on all brackets."
        | optional,
      disallowSpacesInsideBrackets
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"]", '"[", '"}", '"{", '")", '"(" |]
                    ]
                )
                | doc "Array of quoted tokens to exempt.  Tokens should consist of an opener with a matching closer () {} [] etc."
                | optional,
              ..
            }
          ]
        | doc "Disallows space after opening square bracket and before closing.  Reports on all on brackets, even on property accessors.  Use disallowSpacesInsideArrayBrackets to exclude property accessors."
        | optional,
      disallowSpacesInsideObjectBrackets
        | js2n.OneOf
          [
            js2n.Enum [ true, false, "all" ],
            refs."definitions.nullRule",
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      allExcept =
                        std.contract.Sequence
                            [
                              js2n.array.MinItems 0,
                              js2n.array.UniqueItems,
                              js2n.array.ArrayOf
                                (std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| '"]", '"}", '")" |]
                                  ])
                            ],
                    },
                required = {},
              },
            std.contract.Sequence [ std.enum.TagOrString, [| 'nested |] ]
          ]
        | std.contract.any_of [ js2n.Null, Bool, { _ | Dyn }, String ]
        | doc "Disallows space after opening object curly brace and before closing."
        | optional,
      disallowSpacesInsideParentheses
        | js2n.OneOf
          [
            js2n.Enum [ true, false, "all" ],
            refs."definitions.nullRule",
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      only =
                        std.contract.Sequence
                            [
                              js2n.array.MinItems 0,
                              js2n.array.UniqueItems,
                              js2n.array.ArrayOf
                                (std.contract.any_of
                                  [
                                    std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          'function,
                                          '"]",
                                          '"[",
                                          '"}",
                                          '"{",
                                          '")",
                                          '"("
                                        |]
                                      ],
                                    js2n.string.MinLength 1
                                  ])
                            ],
                    },
                required = {},
              }
          ]
        | std.contract.any_of [ js2n.Null, Bool, { _ | Dyn }, String ]
        | doc "Disallows space after opening round bracket and before closing."
        | optional,
      disallowSpacesInsideParenthesizedExpression
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'function, '"]", '"[", '"}", '"{", '")", '"(" |]
                    ]
                )
                | doc "Array of quoted tokens or items to exempt.  Tokens should consist of an opener with a matching closer () {} [] or `function`."
                | optional,
              ..
            }
          ]
        | doc "Disallows space after opening and before closing grouping parentheses."
        | optional,
      disallowSpacesInsideTemplateStringPlaceholders
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Disallows spaces before and after curly brace inside template string placeholders."
        | optional,
      disallowTabs
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Disallows tabs everywhere."
        | optional,
      disallowTrailingComma
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Disallows an extra comma following the final element of an array or object literal."
        | optional,
      disallowTrailingWhitespace
        | js2n.OneOf
          [
            js2n.Enum [ true, false, "ignoreEmptyLines" ],
            refs."definitions.nullRule"
          ]
        | std.contract.any_of [ js2n.Null, Bool, String ]
        | doc "Requires all lines to end on a non-whitespace character."
        | optional,
      disallowUnusedParams
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Disallows unused params in function expression and function declaration."
        | optional,
      disallowVar
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Disallows declaring variables with var."
        | optional,
      disallowYodaConditions
        | refs."definitions.equalityOperators"
        | doc "Requires the variable to be the left hand operator when doing a boolean comparison.  Array of quoted operators or true to disallow yoda conditions for most possible comparison operators."
        | optional,
      excludeFiles
        | js2n.array.UniqueItems
        | Array String
        | doc "Disables style checking for specified paths."
        | optional,
      jsDoc | refs."definitions.jsDoc" | optional,
      maximumLineLength
        | std.contract.any_of [ js2n.Null, std.number.Integer, { _ | Dyn } ]
        | std.contract.any_of
          [
            std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 1 ],
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.any_of
                    [
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| 'comments |] ],
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| 'functionSignature |] ],
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| 'regex |] ],
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| 'require |] ],
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| 'urlComments |] ]
                    ]
                )
                | doc "Array of conditions that will exempt a line."
                | optional,
              tabSize
                | std.number.Integer
                | js2n.number.Minimum 1
                | doc "Considered the tab character as number of specified spaces."
                | optional,
              value
                | std.number.Integer
                | js2n.number.Minimum 1
                | doc "Lines should be at most the number of characters specified.",
              ..
            }
          ]
        | doc "Requires all lines to be at most the number of characters specified."
        | optional,
      maximumNumberOfLines
        | std.contract.any_of [ js2n.Null, std.number.Integer, { _ | Dyn } ]
        | std.contract.any_of
          [
            std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 1 ],
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'comments |] ]
                )
                | doc "Array of conditions that will exempt a line."
                | optional,
              value
                | std.number.Integer
                | js2n.number.Minimum 1
                | doc "Lines should be at most the number of characters specified.",
              ..
            }
          ]
        | doc "Requires the file to be at most the number of lines specified."
        | optional,
      preset
        | std.enum.TagOrString
        | [|
          'yandex,
          'wordpress,
          'wikimedia,
          'node-style-guide,
          'mdcs,
          'jquery,
          'idiomatic,
          'grunt,
          'google,
          'crockford,
          'airbnb
        |]
        | doc "Extends defined rules with preset rules."
        | optional,
      requireAlignedMultilineParams
        | std.contract.any_of [ js2n.Null, Bool, std.number.Integer, String ]
        | std.contract.any_of
          [
            Bool,
            std.number.Integer,
            refs."definitions.nullRule",
            std.contract.Sequence [ std.enum.TagOrString, [| 'firstParam |] ]
          ]
        | doc "Enforces indentation of parameters in multiline functions."
        | optional,
      requireAlignedObjectValues
        | std.contract.any_of
          [
            refs."definitions.nullRule",
            std.contract.Sequence
              [
                js2n.OneOf
                  [
                    std.contract.Sequence [ std.enum.TagOrString, [| 'all |] ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'ignoreFunction |] ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'ignoreLineBreak |] ]
                  ],
                String
              ]
          ]
        | doc "Requires proper alignment in object literals."
        | optional,
      requireAnonymousFunctions
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'declarations |] ]
                )
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            }
          ]
        | doc "Requires that a function expression be anonymous."
        | optional,
      requireArrayDestructuring
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires that variable assignment from array values are * destructured."
        | optional,
      requireArrowFunctions
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires that arrow functions are used instead of anonymous function expressions in callbacks."
        | optional,
      requireBlocksOnNewline
        | std.contract.any_of
          [ js2n.Null, Bool, std.number.Integer, { _ | Dyn } ]
        | std.contract.any_of
          [
            Bool,
            std.number.Integer,
            refs."definitions.nullRule",
            {
              includeComments
                | Bool
                | doc "If true, includes comments as part of the validation."
                | optional,
              minLines
                | std.number.Integer
                | doc "Specifies a minimum number of lines containing elements in the block before validating."
                | optional,
              ..
            }
          ]
        | doc "Requires blocks to begin and end with a newline."
        | optional,
      requireCamelCaseOrUpperCaseIdentifiers
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array String
                | doc "Array of String, RegExp, or ESTree RegExpLiteral values permitted as exceptions."
                | optional,
              allowedPrefixes
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array String
                | doc "Array of String, RegExp, or ESTree RegExpLiteral values permitted as prefixes."
                | optional,
              allowedSuffixes
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array String
                | doc "Array of String, RegExp, or ESTree RegExpLiteral values permitted as suffixes."
                | optional,
              ignoreProperties
                | Bool
                | doc "If true, allows an exception for object property names."
                | optional,
              strict
                | Bool
                | doc "If true, forces the first character to not be capitalized."
                | optional,
              ..
            },
            std.contract.Sequence
              [ std.enum.TagOrString, [| 'ignoreProperties |] ]
          ]
        | doc "Requires identifiers to be camelCased or UPPERCASE_WITH_UNDERSCORES."
        | optional,
      requireCapitalizedComments
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array String
                | doc "Array of quoted keywords to exempt."
                | optional,
              inlined
                | Bool
                | doc "If true, ignore comments in the middle of the code line."
                | optional,
              ..
            }
          ]
        | doc "Requires the first alphabetical character of a comment to be uppercase, unless it is part of a multi-line textblock.  This rule automatically ignores jscs, jshint, eslint, and istanbul specific comments."
        | optional,
      requireCapitalizedConstructors
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array String
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            }
          ]
        | doc "Requires constructors to be capitalized (except for \"this\")"
        | optional,
      requireCapitalizedConstructorsNew
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array String
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            }
          ]
        | doc "Requires capitalized constructors to to use the new keyword."
        | optional,
      requireCommaBeforeLineBreak
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires commas as last token on a line in lists."
        | optional,
      requireCurlyBraces
        | js2n.OneOf
          [
            std.contract.Sequence
              [
                refs."definitions.keywords2",
                std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
              ],
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      allExcept =
                        std.contract.Sequence
                            [
                              js2n.array.MinItems 0,
                              js2n.array.UniqueItems,
                              js2n.array.ArrayOf String
                            ],
                      keywords =
                        std.contract.Sequence
                            [
                              js2n.array.MinItems 0,
                              js2n.array.UniqueItems,
                              js2n.array.ArrayOf String
                            ],
                    },
                required = {},
              }
          ]
        | std.contract.any_of [ js2n.Null, Bool, { _ | Dyn }, Array Dyn ]
        | doc "Requires curly braces after statements.  A value of true will require curly braces for all the necessary keywords:  if, else, for, while do, try, catch, case, and default."
        | optional,
      requireDollarBeforejQueryAssignment
        | js2n.OneOf
          [
            js2n.Enum [ true, false, "ignoreProperties" ],
            refs."definitions.nullRule"
          ]
        | std.contract.any_of [ js2n.Null, Bool, String ]
        | doc "Require a $ before variable names that are jquery assignments."
        | optional,
      requireDotNotation
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [
                      js2n.OneOf
                        [
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'keywords |] ],
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'snake_case |] ]
                        ],
                      String
                    ]
                )
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            },
            std.contract.Sequence
              [ std.enum.TagOrString, [| 'except_snake_case |] ]
          ]
        | doc "Requires member expressions to use dot notation when possible."
        | optional,
      requireEarlyReturn
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires early return in a function."
        | optional,
      requireEnhancedObjectLiterals
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires declaring objects via ES6 enhanced object literals."
        | optional,
      requireFunctionDeclarations
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires function declarations by disallowing assignment of functions expressions to variables. Function expressions are allowed in all other contexts, including when passed as function arguments or immediately invoked.  Assignment of function expressions to object members is also permitted, since these can't be declared."
        | optional,
      requireImportAlphabetized
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires imports to be alphabetized (A-Z)."
        | optional,
      requireKeywordsOnNewLine
        | refs."definitions.keywords"
        | doc "Requires placing the specified keywords on a new line."
        | optional,
      requireLineBreakAfterVariableAssignment
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires placing line feed after assigning a variable."
        | optional,
      requireLineFeedAtFileEnd
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires placing line feed at file end."
        | optional,
      requireMatchingFunctionName
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            { includeModuleExports | Bool | optional, .. }
          ]
        | doc "Requires function names to match member and property names.  It doesn't affect anonymous functions nor functions assigned to members or properties named with a reserved word.  Assigning to module.exports is also ignored, unless includeModuleExports: true is configured."
        | optional,
      requireMultiLineTernary
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires the test, consequent and alternate to be on separate lines when using the ternary operator."
        | optional,
      requireMultipleVarDecl
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence [ std.enum.TagOrString, [| 'require |] ]
                )
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            },
            std.contract.Sequence [ std.enum.TagOrString, [| 'onevar |] ]
          ]
        | doc "Requires multiple `var` declaration."
        | optional,
      requireNamedUnassignedFunctions
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array String
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            }
          ]
        | doc "Require unassigned functions to be named inline."
        | optional,
      requireNewlineBeforeBlockStatements
        | refs."definitions.keywords2"
        | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
        | doc "Requires newline before opening curly brace of all block statements.  If true, always requires newline before curly brace of block statements.  Array specifies block-type keywords after which newlines are required before curly brace."
        | optional,
      requireNumericLiterals
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires use of binary, hexadecimal, and octal literals instead of parseInt."
        | optional,
      requireObjectDestructuring
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires variable declarations from objects via destructuring."
        | optional,
      requireObjectKeysOnNewLine
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'sameLine |] ]
                )
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            }
          ]
        | doc "Requires placing object keys on new line."
        | optional,
      requireOperatorBeforeLineBreak
        | refs."definitions.operators"
        | doc "Requires operators to appear before line breaks and not after."
        | optional,
      requirePaddingNewLineAfterVariableDeclaration
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires an extra blank newline after var declarations, as long as it is not the last expression in the current block."
        | optional,
      requirePaddingNewLinesAfterBlocks
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [
                      js2n.OneOf
                        [
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'inCallExpressions |] ],
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'inNewExpressions |] ],
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'inArrayExpressions |] ],
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'inProperties |] ]
                        ],
                      String
                    ]
                )
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            }
          ]
        | doc "Requires newline after blocks."
        | optional,
      requirePaddingNewLinesAfterUseStrict
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence [ std.enum.TagOrString, [| 'require |] ]
                )
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            }
          ]
        | doc "Requires a blank line after 'use strict'; statements."
        | optional,
      requirePaddingNewLinesBeforeExport
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires newline before module.exports."
        | optional,
      requirePaddingNewLinesBeforeLineComments
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'firstAfterCurly |] ]
                )
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            }
          ]
        | doc "Requires newline before line comments."
        | optional,
      requirePaddingNewLinesInObjects
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires newline inside curly braces of all objects."
        | optional,
      requirePaddingNewlinesBeforeKeywords
        | refs."definitions.keywords2"
        | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
        | doc "Requires an empty line above the specified keywords unless the keyword is the first expression in a block.  If true, specifies that the spacedKeywords found in the utils module require an empty line above it.  Array values indicate keywords that require an empty line above it."
        | optional,
      requirePaddingNewlinesInBlocks
        | std.contract.any_of
          [ js2n.Null, Bool, std.number.Integer, { _ | Dyn } ]
        | std.contract.any_of
          [
            Bool,
            std.number.Integer,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [
                      js2n.OneOf
                        [
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'conditionals |] ],
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'functions |] ]
                        ],
                      String
                    ]
                )
                | doc "Array of quoted keywords to exempt."
                | optional,
              close
                | Bool
                | doc "If true, validates that there is a newline before the closing brace in a block."
                | optional,
              open
                | Bool
                | doc "If true, validates that there is a newline after the opening brace in a block."
                | optional,
              ..
            }
          ]
        | doc "Requires blocks to begin and end with 2 newlines."
        | optional,
      requireParenthesesAroundArrowParam
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires parentheses around arrow function expressions with a single parameter."
        | optional,
      requireParenthesesAroundIIFE
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires parentheses around immediately invoked function expressions."
        | optional,
      requireQuotedKeysInObjects
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires quoted keys in objects."
        | optional,
      requireSemicolons
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires semicolon after:  var declaration, expression statement, return, throw, break, continue, do-while."
        | optional,
      requireShorthandArrowFunctions
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Require arrow functions to use an expression body when returning a single statement (no block statement, implicit return)."
        | optional,
      requireSpaceAfterBinaryOperators
        | refs."definitions.operators"
        | doc "Disallows sticking binary operators to the right."
        | optional,
      requireSpaceAfterComma
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'trailing |] ]
                )
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            }
          ]
        | doc "Requires space after comma."
        | optional,
      requireSpaceAfterKeywords
        | refs."definitions.keywords2"
        | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
        | doc "Requires space after the specified keywords.  A value of true will disallow spaces after all possible keywords."
        | optional,
      requireSpaceAfterLineComment
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array String
                | doc "Array of allowed strings before space."
                | optional,
              ..
            },
            std.contract.Sequence [ std.enum.TagOrString, [| 'allowSlash |] ]
          ]
        | doc "Requires that a line comment (`//`) be followed by a space."
        | optional,
      requireSpaceAfterObjectKeys
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires space after object keys."
        | optional,
      requireSpaceAfterPrefixUnaryOperators
        | refs."definitions.unaryOperators"
        | doc "Disallows sticking unary operators to the right."
        | optional,
      requireSpaceBeforeBinaryOperators
        | refs."definitions.operators"
        | doc "Disallows sticking binary operators to the left."
        | optional,
      requireSpaceBeforeBlockStatements
        | std.contract.any_of [ js2n.Null, Bool, std.number.Integer ]
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 1 ]
          ]
        | doc "Requires space before block statements (for loops, control structures)."
        | optional,
      requireSpaceBeforeComma
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires a space before a comma."
        | optional,
      requireSpaceBeforeKeywords
        | js2n.OneOf
          [
            refs."definitions.blockKeywords",
            Bool,
            refs."definitions.nullRule",
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      allExcept =
                        std.contract.Sequence
                            [
                              js2n.array.MinItems 0,
                              js2n.array.UniqueItems,
                              js2n.array.ArrayOf String
                            ],
                    },
                required = {},
              }
          ]
        | std.contract.any_of [ js2n.Null, Bool, { _ | Dyn }, Array Dyn ]
        | doc "Requires a space before a keyword."
        | optional,
      requireSpaceBeforeObjectValues
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires space after object keys."
        | optional,
      requireSpaceBeforePostfixUnaryOperators
        | refs."definitions.unaryOperators"
        | doc "Disallows sticking unary operators to the left."
        | optional,
      requireSpaceBetweenArguments
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Ensure there are spaces after argument separators in call expressions."
        | optional,
      requireSpacesInAnonymousFunctionExpression
        | {
          allExcept
            | std.contract.any_of
              [
                Bool,
                refs."definitions.nullRule",
                std.contract.Sequence
                  [
                    js2n.array.MinItems 0,
                    js2n.array.UniqueItems,
                    Array (
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| 'shorthand |] ]
                    )
                  ]
              ]
            | doc "A boolean or an array of quoted exceptions."
            | optional,
          beforeOpeningCurlyBrace | js2n.Nullable Bool | optional,
          beforeOpeningRoundBrace | js2n.Nullable Bool | optional,
          ..
        }
        | doc "Requires space before `()` or `{}` in function expressions (both named and anonymous)."
        | optional,
      requireSpacesInCallExpression
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires space before `()` in call expressions."
        | optional,
      requireSpacesInConditionalExpression
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              afterConsequent | Bool | optional,
              afterTest | Bool | optional,
              beforeAlternate | Bool | optional,
              beforeConsequent | Bool | optional,
              ..
            }
          ]
        | doc "Requires space before and/or after `?` or `:` in conditional expressions."
        | optional,
      requireSpacesInForStatement
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires spaces in between `for` statement."
        | optional,
      requireSpacesInFunction
        | refs."definitions.braceRules"
        | doc "Requires space before `()` or `{}` in function expressions (both named and anonymous) and function declarations."
        | optional,
      requireSpacesInFunctionDeclaration
        | refs."definitions.braceRules"
        | doc "Requires space before `()` or `{}` in function declarations."
        | optional,
      requireSpacesInFunctionExpression
        | refs."definitions.braceRules"
        | doc "Requires space before `()` or `{}` in function expressions (both named and anonymous)."
        | optional,
      requireSpacesInGenerator
        | std.contract.any_of
          [
            refs."definitions.nullRule",
            {
              afterStar
                | Bool
                | doc "If true, validates that there is a space after `*`."
                | optional,
              beforeStar
                | Bool
                | doc "If true, validates that there is a space before `*`."
                | optional,
              ..
            }
          ]
        | doc "Requires space before and after `*` in generator functions."
        | optional,
      requireSpacesInNamedFunctionExpression
        | refs."definitions.braceRules"
        | doc "Requires space before `()` or `{}` in named function expressions."
        | optional,
      requireSpacesInsideArrayBrackets
        | std.contract.any_of
          [
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| '"]", '"[", '"}", '"{" |] ]
                )
                | doc "Array of quoted tokens that can occur after an opening square bracket or before a closing square bracket without a space."
                | optional,
              ..
            },
            std.contract.Sequence
              [
                js2n.OneOf
                  [
                    std.contract.Sequence [ std.enum.TagOrString, [| 'all |] ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'allButNested |] ]
                  ],
                String
              ]
          ]
        | doc "Requires space after opening array square bracket and before closing.  Reports only on arrays, not on property accessors.  Use requireSpacesInsideBrackets to report on all brackets."
        | optional,
      requireSpacesInsideBrackets
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| '"]", '"[", '"}", '"{" |] ]
                )
                | doc "Array of quoted tokens that can occur after an opening square bracket or before a closing square bracket without a space."
                | optional,
              ..
            }
          ]
        | doc "Requires space after opening square bracket and before closing.  Reports on all on brackets, even on property accessors.  Use requireSpacesInsideArrayBrackets to exclude property accessors."
        | optional,
      requireSpacesInsideObjectBrackets
        | std.contract.any_of
          [
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"]", '"[", '"}", '"{", '")", '"(" |]
                    ]
                )
                | doc "Array of quoted tokens that can occur after an opening object brace or before a closing object brace without a space."
                | optional,
              ..
            },
            std.contract.Sequence
              [
                js2n.OneOf
                  [
                    std.contract.Sequence [ std.enum.TagOrString, [| 'all |] ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'allButNested |] ]
                  ],
                String
              ]
          ]
        | doc "Requires space after opening object curly brace and before closing."
        | optional,
      requireSpacesInsideParentheses
        | std.contract.any_of
          [
            refs."definitions.nullRule",
            {
              all | Bool | optional,
              except
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| '"]", '"[", '"}", '"{", '")", '"(" |]
                        ],
                      js2n.string.MaxLength 1
                    ]
                )
                | doc "Array of quoted tokens that can occur after an opening bracket or before a closing bracket without a space."
                | optional,
              ignoreParenthesizedExpression | Bool | optional,
              ..
            },
            std.contract.Sequence
              [
                js2n.OneOf
                  [
                    std.contract.Sequence [ std.enum.TagOrString, [| 'all |] ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'allButNested |] ]
                  ],
                String
              ]
          ]
        | doc "Requires space after opening round bracket and before closing."
        | optional,
      requireSpacesInsideParenthesizedExpression
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'function, '"}", '"{" |] ]
                )
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            }
          ]
        | doc "Requires space after opening and before closing grouping parentheses."
        | optional,
      requireSpread
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Disallows using `.apply` in favor of the spread operator."
        | optional,
      requireTemplateStrings
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'stringConcatenation |] ]
                )
                | doc "Array of quoted keywords to exempt."
                | optional,
              ..
            }
          ]
        | doc "Requires the use of template strings instead of string concatenation."
        | optional,
      requireTrailingComma
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              ignoreSingleLine
                | Bool
                | doc "If true, allows objects and arrays on a single line to not require a trailing comma."
                | optional,
              ignoreSingleValue
                | Bool
                | doc "If true, allows single property objects and single element arrays to not require a trailing comma."
                | optional,
              ..
            }
          ]
        | doc "Requires an extra comma following the final element of an array or object literal."
        | optional,
      requireVarDeclFirst
        | std.contract.any_of [ Bool, refs."definitions.nullRule" ]
        | doc "Requires `var` declaration to be on the top of an enclosing scope."
        | optional,
      requireYodaConditions
        | js2n.OneOf
          [
            refs."definitions.equalityOperators",
            Bool,
            refs."definitions.nullRule"
          ]
        | std.contract.any_of [ js2n.Null, Bool, Array Dyn ]
        | doc "Requires the variable to be the right hand operator when doing a boolean comparison.  An array of quoted operators can be supplied to indicate which operators requires yoda conditions."
        | optional,
      safeContextKeyword
        | std.contract.any_of
          [
            std.contract.Sequence
              [
                js2n.array.MinItems 0,
                js2n.array.UniqueItems,
                Array (js2n.string.MinLength 1)
              ],
            refs."definitions.nullRule",
            js2n.string.MinLength 1
          ]
        | doc "Option to check `var that = this` expressions."
        | optional,
      validateAlignedFunctionParameters
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            {
              lineBreakAfterOpeningBrace
                | Bool
                | doc "If true, specifies that the first function parameter must not be on the same line as the opening parenthesis `(` of the function parameters list."
                | optional,
              lineBreakBeforeClosingBrace
                | Bool
                | doc "If true, specifies that the last function parameter must not be on the same line as the closing parenthesis `)` of the function parameters list."
                | optional,
              ..
            }
          ]
        | doc "Validates proper alignment of function parameters."
        | optional,
      validateCommentPosition
        | std.contract.any_of
          [
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array String
                | doc "Array of quoted exceptions (comments that start with these values will be excepted)."
                | optional,
              position
                | std.enum.TagOrString
                | [| 'beside, 'above |]
                | optional,
              ..
            }
          ]
        | doc "This rule is for validating the positioning of line comments.  Block comments are ignored.  Comments that start with the following keywords are also ignored:  `eslint`, `jshint`, `jslint`, `istanbul`, `global`, `exported`, `jscs`, `falls through` eg. // jshint strict: true"
        | optional,
      validateIndentation
        | std.contract.any_of [ js2n.Null, std.number.Integer, { _ | Dyn } ]
        | std.contract.any_of
          [
            std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 0 ],
            refs."definitions.nullRule",
            {
              allExcept
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [
                      js2n.OneOf
                        [
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'comments |] ],
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'emptyLines |] ]
                        ],
                      String
                    ]
                )
                | doc "Array of quoted exceptions."
                | optional,
              includeEmptyLines
                | Bool
                | doc "Deprecated.  Require empty lines to be indented."
                | optional,
              value
                | std.contract.any_of [ std.number.Integer, String ]
                | std.contract.any_of
                  [
                    std.contract.Sequence
                      [ std.number.Integer, js2n.number.Minimum 0 ],
                    String
                  ],
              ..
            }
          ]
        | doc "Validates indentation for switch statements and block statements."
        | optional,
      validateLineBreaks
        | std.contract.any_of
          [
            refs."definitions.nullRule",
            {
              character
                | std.enum.TagOrString
                | [| 'CRLF, 'LF, 'CR |]
                | optional,
              reportOncePerFile
                | Bool
                | doc "If true, specifies that validation for the file should stop running upon encountering the first rule violation and return the details of that violation in the report."
                | optional,
              ..
            },
            std.contract.Sequence
              [ std.enum.TagOrString, [| 'CRLF, 'LF, 'CR |] ]
          ]
        | doc "Option to check line break characters."
        | optional,
      validateNewlineAfterArrayElements
        | std.contract.any_of
          [ js2n.Null, Bool, std.number.Integer, { _ | Dyn } ]
        | std.contract.any_of
          [
            Bool,
            std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 0 ],
            refs."definitions.nullRule",
            {
              ignoreBrackets
                | Bool
                | doc "If true, specifies that the `[` and `]` brackets can be placed on the same line as the array elements."
                | optional,
              maximum | std.number.Integer | js2n.number.Minimum 0 | optional,
              ..
            }
          ]
        | doc "Requires each element in array on a single line when array length is more than passed maximum number or array fills more than one line."
        | optional,
      validateOrderInObjectKeys
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            std.contract.Sequence
              [
                js2n.OneOf
                  [
                    std.contract.Sequence [ std.enum.TagOrString, [| 'asc |] ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'asc-insensitive |] ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'asc-natural |] ],
                    std.contract.Sequence [ std.enum.TagOrString, [| 'desc |] ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'desc-insensitive |] ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'desc-natural |] ]
                  ],
                String
              ]
          ]
        | doc "Validates the order in object keys."
        | optional,
      validateParameterSeparator
        | std.contract.any_of
          [
            refs."definitions.nullRule",
            std.contract.Sequence
              [
                js2n.OneOf
                  [
                    std.contract.Sequence [ std.enum.TagOrString, [| '"," |] ],
                    std.contract.Sequence [ std.enum.TagOrString, [| '", " |] ],
                    std.contract.Sequence [ std.enum.TagOrString, [| '" ," |] ],
                    std.contract.Sequence [ std.enum.TagOrString, [| '" , " |] ]
                  ],
                String
              ]
          ]
        | doc "Enable validation of separators between function parameters.  Will ignore newlines."
        | optional,
      validateQuoteMarks
        | std.contract.any_of
          [
            Bool,
            refs."definitions.nullRule",
            std.contract.Sequence
              [
                {
                  escape
                    | Bool
                    | doc "Allow the \"other\" quote mark to be used, but only to avoid having to escape."
                    | optional,
                  ignoreJSX | Bool | doc "Ignore JSX nodes." | optional,
                  mark
                    | js2n.OneOf
                      [
                        std.contract.Sequence
                          [ std.enum.TagOrString, [| '"" |] ],
                        std.contract.Sequence
                          [ std.enum.TagOrString, [| '"" |] ]
                      ]
                    | String
                    | doc "The same effect as the non-object values."
                    | optional,
                  ..
                },
                js2n.record.Required [ "value" ]
              ],
            std.contract.Sequence
              [
                js2n.OneOf
                  [
                    std.contract.Sequence [ std.enum.TagOrString, [| '"\"" |] ],
                    std.contract.Sequence [ std.enum.TagOrString, [| '"'" |] ]
                  ],
                String
              ]
          ]
        | doc "Requires all quote marks to be either the supplied value, or consistent if `true`."
        | optional,
      ..
    }