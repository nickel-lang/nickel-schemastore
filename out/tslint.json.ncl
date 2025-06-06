# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.rule" =
        std.contract.any_of
            [
              Bool,
              {
                severity
                  | std.enum.TagOrString
                  | [| 'none, 'off, 'warn, 'warning, 'error, '"default" |]
                  | doc "Severity level. Level \"error\" will cause exit code 2."
                  | optional,
                ..
              },
              js2n.array.MinItems 1
            ],
      "definitions.rules" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                align
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.align.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.align.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 6,
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.align.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Enforces vertical alignment."
                  | optional,
                arrow-parens
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.arrow-parens.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.arrow-parens.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.arrow-parens.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Requires parentheses around the parameters of arrow function definitions."
                  | optional,
                arrow-return-shorthand
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.arrow-return-shorthand.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.arrow-return-shorthand.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.arrow-return-shorthand.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Suggests to convert `() => { return x; }` to `() => x`."
                  | optional,
                ban
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | js2n.OneOf
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.ban.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.ban.definitions.options.items",
                                  std.contract.any_of
                                    [ { _ | Dyn }, Array Dyn, String ]
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.ban.definitions.options.items",
                                std.contract.any_of
                                  [ { _ | Dyn }, Array Dyn, String ]
                              ])
                        ]
                    ]
                  | doc "Bans the use of specific functions or global methods."
                  | optional,
                ban-comma-operator
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Bans the comma operator."
                  | optional,
                binary-expression-operand-order
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc m%"
                    In a binary expression, a literal should always be on the right-hand side if possible.
                    For example, prefer 'x + 1' over '1 + x'.
                  "%
                  | optional,
                class-name
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Enforces PascalCased class and interface names."
                  | optional,
                comment-format
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | js2n.OneOf
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.comment-format.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.comment-format.definitions.options.items",
                                  std.contract.any_of [ { _ | Dyn }, String ]
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 5,
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.comment-format.definitions.options.items",
                                std.contract.any_of [ { _ | Dyn }, String ]
                              ])
                        ]
                    ]
                  | doc "Enforces formatting rules for single-line comments."
                  | optional,
                completed-docs
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | js2n.OneOf
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.completed-docs.definitions.options",
                                  Array Dyn
                                ],
                              refs."definitions.rules.properties.completed-docs.definitions.options.items"
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 11,
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            refs."definitions.rules.properties.completed-docs.definitions.options.items"
                        ]
                    ]
                  | doc "Enforces documentation for important items be filled out."
                  | optional,
                curly
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.curly.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.curly.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      js2n.array.Items [ Bool ]
                        (std.contract.Sequence
                          [
                            refs."definitions.rules.properties.curly.definitions.options.items",
                            String
                          ])
                    ]
                  | doc "Enforces braces for `if`/`for`/`do`/`while` statements."
                  | optional,
                cyclomatic-complexity
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.cyclomatic-complexity.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.cyclomatic-complexity.definitions.options.items",
                                  Number
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.cyclomatic-complexity.definitions.options.items",
                                Number
                              ])
                        ]
                    ]
                  | doc "Enforces a threshold of cyclomatic complexity."
                  | optional,
                deprecation
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Warns when deprecated APIs are used."
                  | optional,
                encoding
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Enforces UTF-8 file encoding."
                  | optional,
                eofline
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Ensures the file ends with a newline."
                  | optional,
                file-header
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.file-header.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.file-header.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 3,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.file-header.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Enforces a certain header comment for all files, matched by a regular expression."
                  | optional,
                file-name-casing
                  | js2n.array.MinItems 2
                  | js2n.array.Items
                    [
                      Bool,
                      std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.rules.properties.file-name-casing.definitions.file-name-cases",
                              String
                            ],
                          std.contract.Sequence
                            [
                              js2n.record.MinProperties 1,
                              {
                                _ | std.contract.Sequence
                                  [
                                    refs."definitions.rules.properties.file-name-casing.definitions.file-name-cases",
                                    String
                                  ]
                              }
                            ]
                        ]
                    ] js2n.Always
                  | doc "Enforces a consistent file naming convention."
                  | optional,
                forin
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Requires a `for ... in` statement to be filtered with an `if` statement."
                  | optional,
                import-blacklist
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | js2n.OneOf
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.import-blacklist.definitions.options",
                                  Array Dyn
                                ],
                              refs."definitions.rules.properties.import-blacklist.definitions.options.items"
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            refs."definitions.rules.properties.import-blacklist.definitions.options.items"
                        ]
                    ]
                  | doc m%"
                    Disallows importing the specified modules directly via `import` and `require`.
                    Instead only sub modules may be imported from that module.
                  "%
                  | optional,
                import-spacing
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Ensures proper spacing between import statement keywords"
                  | optional,
                indent
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.indent.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.indent.definitions.options.items.0",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 3,
                          js2n.array.Items
                            [
                              Bool,
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.indent.definitions.options.items.0",
                                  String
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.indent.definitions.options.items.1",
                                  Number
                                ]
                            ] js2n.Always
                        ]
                    ]
                  | doc "Enforces indentation with tabs or spaces."
                  | optional,
                jsdoc-format
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.jsdoc-format.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.jsdoc-format.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      js2n.array.Items [ Bool ]
                        (std.contract.Sequence
                          [
                            refs."definitions.rules.properties.jsdoc-format.definitions.options.items",
                            String
                          ])
                    ]
                  | doc "Enforces basic format rules for JSDoc comments."
                  | optional,
                label-position
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Only allows labels in sensible locations."
                  | optional,
                linebreak-style
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.linebreak-style.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.linebreak-style.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.linebreak-style.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Enforces a consistent linebreak style."
                  | optional,
                max-classes-per-file
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.max-classes-per-file.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.max-classes-per-file.definitions.options.items.0",
                                  Number
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 3,
                          js2n.array.MinItems 2,
                          js2n.array.Items
                            [
                              Bool,
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.max-classes-per-file.definitions.options.items.0",
                                  Number
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.max-classes-per-file.definitions.options.items.1",
                                  String
                                ]
                            ] js2n.Never
                        ]
                    ]
                  | doc "A file may not contain more than the specified number of classes"
                  | optional,
                max-file-line-count
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.max-file-line-count.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.max-file-line-count.definitions.options.items",
                                  Number
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.max-file-line-count.definitions.options.items",
                                Number
                              ])
                        ]
                    ]
                  | doc "Requires files to remain under a certain number of lines"
                  | optional,
                max-line-length
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | js2n.OneOf
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.max-line-length.definitions.options",
                                  Array Dyn
                                ],
                              refs."definitions.rules.properties.max-line-length.definitions.options.items"
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            refs."definitions.rules.properties.max-line-length.definitions.options.items"
                        ]
                    ]
                  | doc "Requires lines to be under a certain max length."
                  | optional,
                member-ordering
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.member-ordering.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.member-ordering.definitions.options.items",
                                  { _ | Dyn }
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.member-ordering.definitions.options.items",
                                { _ | Dyn }
                              ])
                        ]
                    ]
                  | doc "Enforces member ordering."
                  | optional,
                new-parens
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Requires parentheses when invoking a constructor via the `new` keyword."
                  | optional,
                newline-before-return
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Enforces blank line before return when not the only line in the block."
                  | optional,
                newline-per-chained-call
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Requires that chained method calls be broken apart onto separate lines."
                  | optional,
                no-arg
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows use of `arguments.callee`."
                  | optional,
                no-async-without-await
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [ Bool, {}, js2n.array.Items [ Bool ] js2n.Never ]
                  | doc m%"
                    Force functions marked async contain an await or return statement
                    https://palantir.github.io/tslint/rules/no-async-without-await/
                  "%
                  | optional,
                no-bitwise
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows bitwise operators."
                  | optional,
                no-conditional-assignment
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows any type of assignment in conditionals."
                  | optional,
                no-consecutive-blank-lines
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-consecutive-blank-lines.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-consecutive-blank-lines.definitions.options.items",
                                  Number
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.no-consecutive-blank-lines.definitions.options.items",
                                Number
                              ])
                        ]
                    ]
                  | doc "Disallows one or more blank lines in a row."
                  | optional,
                no-console
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-console.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-console.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.no-console.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Bans the use of specified `console` methods."
                  | optional,
                no-construct
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows access to the constructors of `String`, `Number`, and `Boolean`."
                  | optional,
                no-debugger
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows `debugger` statements."
                  | optional,
                no-default-export
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows default exports in ES6-style modules."
                  | optional,
                no-duplicate-imports
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | refs."definitions.rules.properties.no-duplicate-imports.definitions.options"
                          | { _ | Dyn }
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items
                            [
                              Bool,
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-duplicate-imports.definitions.options",
                                  { _ | Dyn }
                                ]
                            ] js2n.Always
                        ]
                    ]
                  | doc "Disallows multiple import statements from the same module."
                  | optional,
                no-duplicate-super
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Warns if 'super()' appears twice in a constructor."
                  | optional,
                no-duplicate-switch-case
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Prevents duplicate cases in switch statements."
                  | optional,
                no-duplicate-variable
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-duplicate-variable.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-duplicate-variable.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.no-duplicate-variable.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Disallows duplicate variable declarations in the same block scope."
                  | optional,
                no-dynamic-delete
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Bans usage of the delete operator with computed key expressions."
                  | optional,
                no-empty
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-empty.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-empty.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 3,
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.no-empty.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Disallows empty blocks."
                  | optional,
                no-eval
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows `eval` function invocations."
                  | optional,
                no-for-in
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [ Bool, {}, js2n.array.Items [ Bool ] js2n.Never ]
                  | doc m%"
                    Forbid for…in statements
                    https://palantir.github.io/tslint/rules/no-for-in/
                  "%
                  | optional,
                no-for-in-array
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows iterating over an array with a for-in loop."
                  | optional,
                no-implicit-dependencies
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | js2n.OneOf
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-implicit-dependencies.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-implicit-dependencies.definitions.options.items.0",
                                  String
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-implicit-dependencies.definitions.options.items.1",
                                  Array Dyn
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 3,
                          js2n.array.Items [ Bool ] js2n.Never
                        ]
                    ]
                  | doc "Disallows importing modules that are not listed as dependency in the project's package.json."
                  | optional,
                no-import-side-effect
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-import-side-effect.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-import-side-effect.definitions.options.items",
                                  { _ | Dyn }
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.no-import-side-effect.definitions.options.items",
                                { _ | Dyn }
                              ])
                        ]
                    ]
                  | doc "Avoid import statements with side-effect."
                  | optional,
                no-invalid-template-strings
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Warns on use of `${` in non-template strings."
                  | optional,
                no-invalid-this
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-invalid-this.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-invalid-this.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.no-invalid-this.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Disallows using the `this` keyword outside of classes."
                  | optional,
                no-irregular-whitespace
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallow irregular whitespace outside of strings and comments"
                  | optional,
                no-magic-numbers
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-magic-numbers.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-magic-numbers.definitions.options.items",
                                  Number
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.no-magic-numbers.definitions.options.items",
                                Number
                              ])
                        ]
                    ]
                  | doc m%"
                    Disallows the use constant number values outside of variable assignments.
                    When no list of allowed values is specified, -1, 0 and 1 are allowed by default.
                  "%
                  | optional,
                no-null-keyword
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows use of the `null` keyword literal."
                  | optional,
                no-null-undefined-union
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [ Bool, {}, js2n.array.Items [ Bool ] js2n.Never ]
                  | doc m%"
                    Forbid explicitly declared or implicitly returned union types with both null and undefined as members
                    https://palantir.github.io/tslint/rules/no-null-undefined-union/
                  "%
                  | optional,
                no-parameter-reassignment
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows reassigning parameters."
                  | optional,
                no-reference
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows `/// <reference path=>` imports (use ES6-style imports instead)."
                  | optional,
                no-require-imports
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows invocation of `require()`."
                  | optional,
                no-return-await
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows unnecessary `return await`."
                  | optional,
                no-shadowed-variable
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-shadowed-variable.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-shadowed-variable.definitions.options.items",
                                  { _ | Dyn }
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.no-shadowed-variable.definitions.options.items",
                                { _ | Dyn }
                              ])
                        ]
                    ]
                  | doc "Disallows shadowing variable declarations."
                  | optional,
                no-sparse-arrays
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Forbids array literals to contain missing elements."
                  | optional,
                no-string-literal
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc m%"
                    Forbids unnecessary string literal property access.
                    Allows `obj["prop-erty"]` (can't be a regular property access).
                    Disallows `obj["property"]` (should be `obj.property`).
                  "%
                  | optional,
                no-string-throw
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Flags throwing plain strings or concatenations of strings because only Errors produce proper stack traces."
                  | optional,
                no-submodule-imports
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-submodule-imports.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-submodule-imports.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.no-submodule-imports.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Disallows importing any submodule."
                  | optional,
                no-switch-case-fall-through
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows falling through case statements."
                  | optional,
                no-this-assignment
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-this-assignment.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-this-assignment.definitions.options.items",
                                  { _ | Dyn }
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.no-this-assignment.definitions.options.items",
                                { _ | Dyn }
                              ])
                        ]
                    ]
                  | doc "Disallows unnecessary references to `this`."
                  | optional,
                no-trailing-whitespace
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-trailing-whitespace.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-trailing-whitespace.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 5,
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.no-trailing-whitespace.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Disallows trailing whitespace at the end of a line."
                  | optional,
                no-unnecessary-callback-wrapper
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc m%"
                    Replaces `x => f(x)` with just `f`.
                    To catch more cases, enable `only-arrow-functions` and `arrow-return-shorthand` too.
                  "%
                  | optional,
                no-unnecessary-class
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-unnecessary-class.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-unnecessary-class.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 4,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.no-unnecessary-class.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Disallows classes that are not strictly necessary."
                  | optional,
                no-unnecessary-initializer
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Forbids a 'var'/'let' statement or destructuring initializer to be initialized to 'undefined'."
                  | optional,
                no-unsafe-finally
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows control flow statements, such as `return`, `continue` `break` and `throws` in finally blocks."
                  | optional,
                no-unused-expression
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-unused-expression.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-unused-expression.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 4,
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.no-unused-expression.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Disallows unused expression statements."
                  | optional,
                no-use-before-declare
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows usage of variables before their declaration."
                  | optional,
                no-var-keyword
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows usage of the `var` keyword."
                  | optional,
                no-void-expression
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-void-expression.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.no-void-expression.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.no-void-expression.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Requires expressions of type `void` to appear in statement position."
                  | optional,
                number-literal-format
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Checks that decimal literals should begin with '0.' instead of just '.', and should not end with a trailing '0'."
                  | optional,
                object-literal-key-quotes
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.object-literal-key-quotes.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.object-literal-key-quotes.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.object-literal-key-quotes.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Enforces consistent object literal property quote style."
                  | optional,
                object-literal-shorthand
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.object-literal-shorthand.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.object-literal-shorthand.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      js2n.array.Items [ Bool ]
                        (std.contract.Sequence
                          [
                            refs."definitions.rules.properties.object-literal-shorthand.definitions.options.items",
                            String
                          ])
                    ]
                  | doc "Enforces use of ES6 object literal shorthand when possible."
                  | optional,
                object-literal-sort-keys
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.object-literal-sort-keys.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.object-literal-sort-keys.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 5,
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.object-literal-sort-keys.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Checks ordering of keys in object literals."
                  | optional,
                one-line
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.one-line.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.one-line.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 6,
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.one-line.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Requires the specified tokens to be on the same line as the expression preceding them."
                  | optional,
                one-variable-per-declaration
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.one-variable-per-declaration.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.one-variable-per-declaration.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.one-variable-per-declaration.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Disallows multiple variable definitions in the same declaration statement."
                  | optional,
                only-arrow-functions
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.only-arrow-functions.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.only-arrow-functions.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 3,
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.only-arrow-functions.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Disallows traditional (non-arrow) function expressions."
                  | optional,
                ordered-imports
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.ordered-imports.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.ordered-imports.definitions.options.items",
                                  { _ | Dyn }
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.ordered-imports.definitions.options.items",
                                { _ | Dyn }
                              ])
                        ]
                    ]
                  | doc "Requires that import statements be alphabetized."
                  | optional,
                prefer-conditional-expression
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.prefer-conditional-expression.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.prefer-conditional-expression.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.prefer-conditional-expression.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Recommends to use a conditional expression instead of assigning to the same thing in each branch of an if statement."
                  | optional,
                prefer-const
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.prefer-const.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.prefer-const.definitions.options.items",
                                  { _ | Dyn }
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.prefer-const.definitions.options.items",
                                { _ | Dyn }
                              ])
                        ]
                    ]
                  | doc "Requires that variable declarations use `const` instead of `let` and `var` if possible."
                  | optional,
                prefer-for-of
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Recommends a 'for-of' loop over a standard 'for' loop if the index is only used to access the array being iterated."
                  | optional,
                prefer-function-over-method
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.prefer-function-over-method.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.prefer-function-over-method.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 3,
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.prefer-function-over-method.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Warns for class methods that do not use 'this'."
                  | optional,
                prefer-method-signature
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Prefer `foo(): void` over `foo: () => void` in interfaces and types."
                  | optional,
                prefer-object-spread
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Enforces the use of the ES2015 object spread operator over `Object.assign()` where appropriate."
                  | optional,
                prefer-switch
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.prefer-switch.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.prefer-switch.definitions.options.items",
                                  { _ | Dyn }
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.prefer-switch.definitions.options.items",
                                { _ | Dyn }
                              ])
                        ]
                    ]
                  | doc "Prefer a `switch` statement to an `if` statement with simple `===` comparisons."
                  | optional,
                prefer-template
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.prefer-template.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.prefer-template.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.prefer-template.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Prefer a template expression over string literal concatenation."
                  | optional,
                prefer-while
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [ Bool, {}, js2n.array.Items [ Bool ] js2n.Never ]
                  | doc "Prefer while loops instead of for loops without an initializer and incrementor."
                  | optional,
                promise-function-async
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Requires any function or method that returns a promise to be marked async."
                  | optional,
                quotemark
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.quotemark.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.quotemark.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 5,
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.quotemark.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Requires single or double quotes for string literals."
                  | optional,
                radix
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Requires the radix parameter to be specified when calling `parseInt`."
                  | optional,
                restrict-plus-operands
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "When adding two variables, operands must both be of type number or of type string."
                  | optional,
                return-undefined
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Prefer `return;` in void functions and `return undefined;` in value-returning functions."
                  | optional,
                semicolon
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.semicolon.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.semicolon.definitions.options.items.0",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 3,
                          js2n.array.Items
                            [
                              Bool,
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.semicolon.definitions.options.items.0",
                                  String
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.semicolon.definitions.options.items.1",
                                  String
                                ]
                            ] js2n.Always
                        ]
                    ]
                  | doc "Enforces consistent semicolon usage at the end of every statement."
                  | optional,
                space-before-function-paren
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.space-before-function-paren.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.space-before-function-paren.definitions.options.items",
                                  { _ | Dyn }
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.space-before-function-paren.definitions.options.items",
                                { _ | Dyn }
                              ])
                        ]
                    ]
                  | doc "Require or disallow a space before function parenthesis"
                  | optional,
                space-within-parens
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.space-within-parens.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.space-within-parens.definitions.options.items",
                                  Number
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.space-within-parens.definitions.options.items",
                                Number
                              ])
                        ]
                    ]
                  | doc "Enforces spaces within parentheses or disallow them."
                  | optional,
                switch-default
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Require a `default` case in all `switch` statements."
                  | optional,
                switch-final-break
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.switch-final-break.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.switch-final-break.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.switch-final-break.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Checks whether the final clause of a switch statement ends in `break;`."
                  | optional,
                trailing-comma
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.trailing-comma.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.trailing-comma.definitions.options.items",
                                  { _ | Dyn }
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.trailing-comma.definitions.options.items",
                                { _ | Dyn }
                              ])
                        ]
                    ]
                  | doc "Requires or disallows trailing commas in array and object literals, destructuring assignments, function typings, named imports and exports and function parameters."
                  | optional,
                triple-equals
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.triple-equals.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.triple-equals.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 3,
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.triple-equals.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Requires `===` and `!==` in place of `==` and `!=`."
                  | optional,
                typeof-compare
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Makes sure result of `typeof` is compared to correct string values"
                  | optional,
                use-isnan
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Enforces use of the `isNaN()` function to check for NaN references instead of a comparison to the `NaN` constant."
                  | optional,
                variable-name
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.variable-name.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.variable-name.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 7,
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.rules.properties.variable-name.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Checks variable names for various errors."
                  | optional,
                whitespace
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.whitespace.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.rules.properties.whitespace.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      js2n.array.Items [ Bool ]
                        (std.contract.Sequence
                          [
                            refs."definitions.rules.properties.whitespace.definitions.options.items",
                            String
                          ])
                    ]
                  | doc "Enforces whitespace style conventions."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.rules.properties.align.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 5,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'statements,
                      'parameters,
                      'members,
                      'elements,
                      'arguments
                    |]
                  ]
              )
            ],
      "definitions.rules.properties.align.definitions.options.items" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'statements, 'parameters, 'members, 'elements, 'arguments |]
            ],
      "definitions.rules.properties.arrow-parens.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'ban-single-arg-parens |] ]
              )
            ],
      "definitions.rules.properties.arrow-parens.definitions.options.items" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'ban-single-arg-parens |] ],
      "definitions.rules.properties.arrow-return-shorthand.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence [ std.enum.TagOrString, [| 'multiline |] ]
              )
            ],
      "definitions.rules.properties.arrow-return-shorthand.definitions.options.items" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'multiline |] ],
      "definitions.rules.properties.ban.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [
                        js2n.array.MaxItems 3,
                        js2n.array.MinItems 1,
                        Array String
                      ],
                    {
                      message | String | optional,
                      name
                        | std.contract.any_of
                          [
                            String,
                            std.contract.Sequence
                              [
                                js2n.array.MaxItems 3,
                                js2n.array.MinItems 1,
                                Array String
                              ]
                          ],
                    }
                  ]
              )
            ],
      "definitions.rules.properties.ban.definitions.options.items" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ js2n.array.MaxItems 3, js2n.array.MinItems 1, Array String ],
              {
                message | String | optional,
                name
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 3,
                          js2n.array.MinItems 1,
                          Array String
                        ]
                    ],
              }
            ],
      "definitions.rules.properties.comment-format.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 4,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [| 'check-uppercase, 'check-lowercase, 'check-space |]
                      ],
                    std.contract.Sequence
                      [
                        js2n.record.MaxProperties 1,
                        js2n.record.MinProperties 1,
                        {
                          ignore-pattern | String | optional,
                          ignore-words
                            | js2n.array.UniqueItems
                            | Array String
                            | optional,
                          ..
                        }
                      ]
                  ]
              )
            ],
      "definitions.rules.properties.comment-format.definitions.options.items" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| 'check-uppercase, 'check-lowercase, 'check-space |]
                ],
              std.contract.Sequence
                [
                  js2n.record.MaxProperties 1,
                  js2n.record.MinProperties 1,
                  {
                    ignore-pattern | String | optional,
                    ignore-words
                      | js2n.array.UniqueItems
                      | Array String
                      | optional,
                    ..
                  }
                ]
            ],
      "definitions.rules.properties.completed-docs.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 10,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'variables,
                          'types,
                          'properties,
                          'namespaces,
                          'methods,
                          'interfaces,
                          'functions,
                          'enum-members,
                          'enums,
                          'classes
                        |]
                      ],
                    {
                      classes
                        | {
                          visibilities
                            | std.enum.TagOrString
                            | [| 'internal, 'exported, 'all |]
                            | optional,
                        }
                        | optional,
                      enum-members
                        | {
                          visibilities
                            | std.enum.TagOrString
                            | [| 'internal, 'exported, 'all |]
                            | optional,
                        }
                        | optional,
                      enums
                        | {
                          visibilities
                            | std.enum.TagOrString
                            | [| 'internal, 'exported, 'all |]
                            | optional,
                        }
                        | optional,
                      functions
                        | {
                          visibilities
                            | std.enum.TagOrString
                            | [| 'internal, 'exported, 'all |]
                            | optional,
                        }
                        | optional,
                      interfaces
                        | {
                          visibilities
                            | std.enum.TagOrString
                            | [| 'internal, 'exported, 'all |]
                            | optional,
                        }
                        | optional,
                      methods
                        | {
                          locations
                            | std.enum.TagOrString
                            | [| 'static, 'instance, 'all |]
                            | optional,
                          privacies
                            | std.enum.TagOrString
                            | [| 'public, 'protected, 'private, 'all |]
                            | optional,
                        }
                        | optional,
                      namespaces
                        | {
                          visibilities
                            | std.enum.TagOrString
                            | [| 'internal, 'exported, 'all |]
                            | optional,
                        }
                        | optional,
                      properties
                        | {
                          locations
                            | std.enum.TagOrString
                            | [| 'static, 'instance, 'all |]
                            | optional,
                          privacies
                            | std.enum.TagOrString
                            | [| 'public, 'protected, 'private, 'all |]
                            | optional,
                        }
                        | optional,
                      types
                        | {
                          visibilities
                            | std.enum.TagOrString
                            | [| 'internal, 'exported, 'all |]
                            | optional,
                        }
                        | optional,
                      variables
                        | {
                          visibilities
                            | std.enum.TagOrString
                            | [| 'internal, 'exported, 'all |]
                            | optional,
                        }
                        | optional,
                      ..
                    }
                  ]
              )
            ],
      "definitions.rules.properties.completed-docs.definitions.options.items" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'variables,
                    'types,
                    'properties,
                    'namespaces,
                    'methods,
                    'interfaces,
                    'functions,
                    'enum-members,
                    'enums,
                    'classes
                  |]
                ],
              {
                classes
                  | {
                    visibilities
                      | std.enum.TagOrString
                      | [| 'internal, 'exported, 'all |]
                      | optional,
                  }
                  | optional,
                enum-members
                  | {
                    visibilities
                      | std.enum.TagOrString
                      | [| 'internal, 'exported, 'all |]
                      | optional,
                  }
                  | optional,
                enums
                  | {
                    visibilities
                      | std.enum.TagOrString
                      | [| 'internal, 'exported, 'all |]
                      | optional,
                  }
                  | optional,
                functions
                  | {
                    visibilities
                      | std.enum.TagOrString
                      | [| 'internal, 'exported, 'all |]
                      | optional,
                  }
                  | optional,
                interfaces
                  | {
                    visibilities
                      | std.enum.TagOrString
                      | [| 'internal, 'exported, 'all |]
                      | optional,
                  }
                  | optional,
                methods
                  | {
                    locations
                      | std.enum.TagOrString
                      | [| 'static, 'instance, 'all |]
                      | optional,
                    privacies
                      | std.enum.TagOrString
                      | [| 'public, 'protected, 'private, 'all |]
                      | optional,
                  }
                  | optional,
                namespaces
                  | {
                    visibilities
                      | std.enum.TagOrString
                      | [| 'internal, 'exported, 'all |]
                      | optional,
                  }
                  | optional,
                properties
                  | {
                    locations
                      | std.enum.TagOrString
                      | [| 'static, 'instance, 'all |]
                      | optional,
                    privacies
                      | std.enum.TagOrString
                      | [| 'public, 'protected, 'private, 'all |]
                      | optional,
                  }
                  | optional,
                types
                  | {
                    visibilities
                      | std.enum.TagOrString
                      | [| 'internal, 'exported, 'all |]
                      | optional,
                  }
                  | optional,
                variables
                  | {
                    visibilities
                      | std.enum.TagOrString
                      | [| 'internal, 'exported, 'all |]
                      | optional,
                  }
                  | optional,
                ..
              }
            ],
      "definitions.rules.properties.curly.definitions.options" =
        Array (
            std.contract.Sequence
              [ std.enum.TagOrString, [| 'ignore-same-line, 'as-needed |] ]
          ),
      "definitions.rules.properties.curly.definitions.options.items" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'ignore-same-line, 'as-needed |] ],
      "definitions.rules.properties.cyclomatic-complexity.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (js2n.number.Minimum 2)
            ],
      "definitions.rules.properties.cyclomatic-complexity.definitions.options.items" =
        js2n.number.Minimum 2,
      "definitions.rules.properties.file-header.definitions.options" =
        std.contract.Sequence
            [ js2n.array.MaxItems 2, js2n.array.MinItems 1, Array String ],
      "definitions.rules.properties.file-header.definitions.options.items" =
        String,
      "definitions.rules.properties.file-name-casing.definitions.file-name-cases" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'snake-case, 'kebab-case, 'pascal-case, 'camel-case |]
            ],
      "definitions.rules.properties.import-blacklist.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.any_of
                  [
                    js2n.string.MinLength 1,
                    {
                      _ | std.contract.Sequence
                        [
                          js2n.array.MinItems 1,
                          Array (js2n.string.MinLength 1)
                        ]
                    },
                    Array String
                  ]
              )
            ],
      "definitions.rules.properties.import-blacklist.definitions.options.items" =
        std.contract.any_of
            [
              js2n.string.MinLength 1,
              {
                _ | std.contract.Sequence
                  [ js2n.array.MinItems 1, Array (js2n.string.MinLength 1) ]
              },
              Array String
            ],
      "definitions.rules.properties.indent.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 2,
              js2n.array.MinItems 1,
              js2n.array.Items
                [
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'spaces, 'tabs |] ],
                  js2n.Enum [ 2, 4 ]
                ] js2n.Always
            ],
      "definitions.rules.properties.indent.definitions.options.items.0" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'spaces, 'tabs |] ],
      "definitions.rules.properties.indent.definitions.options.items.1" =
        js2n.Enum [ 2, 4 ],
      "definitions.rules.properties.jsdoc-format.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 0,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'check-multiline-start |] ]
              )
            ],
      "definitions.rules.properties.jsdoc-format.definitions.options.items" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'check-multiline-start |] ],
      "definitions.rules.properties.linebreak-style.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence [ std.enum.TagOrString, [| 'CRLF, 'LF |] ]
              )
            ],
      "definitions.rules.properties.linebreak-style.definitions.options.items" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'CRLF, 'LF |] ],
      "definitions.rules.properties.max-classes-per-file.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 2,
              js2n.array.MinItems 1,
              js2n.array.Items
                [
                  js2n.number.Minimum 1,
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'exclude-class-expressions |] ]
                ] js2n.Always
            ],
      "definitions.rules.properties.max-classes-per-file.definitions.options.items.0" =
        js2n.number.Minimum 1,
      "definitions.rules.properties.max-classes-per-file.definitions.options.items.1" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'exclude-class-expressions |] ],
      "definitions.rules.properties.max-file-line-count.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (js2n.number.Minimum 1)
            ],
      "definitions.rules.properties.max-file-line-count.definitions.options.items" =
        js2n.number.Minimum 1,
      "definitions.rules.properties.max-line-length.definitions.options" =
        Array (
            std.contract.any_of
              [
                Number,
                {
                  check-regex | Bool | optional,
                  check-strings | Bool | optional,
                  ignore-pattern | String | optional,
                  limit | Number | optional,
                }
              ]
          ),
      "definitions.rules.properties.max-line-length.definitions.options.items" =
        std.contract.any_of
            [
              Number,
              {
                check-regex | Bool | optional,
                check-strings | Bool | optional,
                ignore-pattern | String | optional,
                limit | Number | optional,
              }
            ],
      "definitions.rules.properties.member-ordering.definitions.kinds" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 15,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'private-instance-accessor,
                      'protected-instance-accessor,
                      'public-instance-accessor,
                      'private-static-accessor,
                      'protected-static-accessor,
                      'public-static-accessor,
                      'private-instance-method,
                      'protected-instance-method,
                      'public-instance-method,
                      'private-constructor,
                      'protected-constructor,
                      'public-constructor,
                      'private-instance-field,
                      'protected-instance-field,
                      'public-instance-field,
                      'private-static-method,
                      'private-static-field,
                      'protected-static-method,
                      'protected-static-field,
                      'public-static-method,
                      'public-static-field,
                      'constructor,
                      'instance-method,
                      'static-method,
                      'instance-field,
                      'static-field
                    |]
                  ]
              )
            ],
      "definitions.rules.properties.member-ordering.definitions.kinds.items" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'private-instance-accessor,
                'protected-instance-accessor,
                'public-instance-accessor,
                'private-static-accessor,
                'protected-static-accessor,
                'public-static-accessor,
                'private-instance-method,
                'protected-instance-method,
                'public-instance-method,
                'private-constructor,
                'protected-constructor,
                'public-constructor,
                'private-instance-field,
                'protected-instance-field,
                'public-instance-field,
                'private-static-method,
                'private-static-field,
                'protected-static-method,
                'protected-static-field,
                'public-static-method,
                'public-static-field,
                'constructor,
                'instance-method,
                'static-method,
                'instance-field,
                'static-field
              |]
            ],
      "definitions.rules.properties.member-ordering.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array
                {
                  alphabetize | Bool | optional,
                  order
                    | std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'statics-first,
                              'instance-sandwich,
                              'fields-first
                            |]
                          ],
                        std.contract.Sequence
                          [
                            js2n.array.MaxItems 15,
                            js2n.array.MinItems 1,
                            js2n.array.UniqueItems,
                            Array (
                              std.contract.any_of
                                [
                                  std.contract.Sequence
                                    [
                                      refs."definitions.rules.properties.member-ordering.definitions.kinds.items",
                                      String
                                    ],
                                  {
                                    kinds
                                      | refs."definitions.rules.properties.member-ordering.definitions.kinds"
                                      | Array Dyn
                                      | optional,
                                    name | String | optional,
                                  }
                                ]
                            )
                          ]
                      ]
                    | optional,
                }
            ],
      "definitions.rules.properties.member-ordering.definitions.options.items" =
        {
            alphabetize | Bool | optional,
            order
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'statics-first, 'instance-sandwich, 'fields-first |]
                    ],
                  std.contract.Sequence
                    [
                      js2n.array.MaxItems 15,
                      js2n.array.MinItems 1,
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                refs."definitions.rules.properties.member-ordering.definitions.kinds.items",
                                String
                              ],
                            {
                              kinds
                                | refs."definitions.rules.properties.member-ordering.definitions.kinds"
                                | Array Dyn
                                | optional,
                              name | String | optional,
                            }
                          ]
                      )
                    ]
                ]
              | optional,
          },
      "definitions.rules.properties.no-consecutive-blank-lines.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (js2n.number.Minimum 1)
            ],
      "definitions.rules.properties.no-consecutive-blank-lines.definitions.options.items" =
        js2n.number.Minimum 1,
      "definitions.rules.properties.no-console.definitions.options" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, js2n.array.UniqueItems, Array String ],
      "definitions.rules.properties.no-console.definitions.options.items" =
        String,
      "definitions.rules.properties.no-duplicate-imports.definitions.options" =
        { allow-namespace-imports | Bool | optional, },
      "definitions.rules.properties.no-duplicate-variable.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'check-parameters |] ]
              )
            ],
      "definitions.rules.properties.no-duplicate-variable.definitions.options.items" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'check-parameters |] ],
      "definitions.rules.properties.no-empty.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 2,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'allow-empty-functions, 'allow-empty-catch |]
                  ]
              )
            ],
      "definitions.rules.properties.no-empty.definitions.options.items" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'allow-empty-functions, 'allow-empty-catch |]
            ],
      "definitions.rules.properties.no-implicit-dependencies.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 3,
              js2n.array.MinItems 0,
              js2n.array.Items
                [
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| '"optional", 'dev |] ],
                  Array Dyn
                ] js2n.Always
            ],
      "definitions.rules.properties.no-implicit-dependencies.definitions.options.items.0" =
        std.contract.Sequence [ std.enum.TagOrString, [| '"optional", 'dev |] ],
      "definitions.rules.properties.no-implicit-dependencies.definitions.options.items.1" =
        Array Dyn,
      "definitions.rules.properties.no-import-side-effect.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array { ignore-module | String | optional, }
            ],
      "definitions.rules.properties.no-import-side-effect.definitions.options.items" =
        { ignore-module | String | optional, },
      "definitions.rules.properties.no-invalid-this.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'check-function-in-method |] ]
              )
            ],
      "definitions.rules.properties.no-invalid-this.definitions.options.items" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'check-function-in-method |] ],
      "definitions.rules.properties.no-magic-numbers.definitions.options" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, js2n.array.UniqueItems, Array Number ],
      "definitions.rules.properties.no-magic-numbers.definitions.options.items" =
        Number,
      "definitions.rules.properties.no-shadowed-variable.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array
                {
                  class | Bool | optional,
                  enum | Bool | optional,
                  function | Bool | optional,
                  "import" | Bool | optional,
                  interface | Bool | optional,
                  namespace | Bool | optional,
                  typeAlias | Bool | optional,
                  typeParameter | Bool | optional,
                }
            ],
      "definitions.rules.properties.no-shadowed-variable.definitions.options.items" =
        {
            class | Bool | optional,
            enum | Bool | optional,
            function | Bool | optional,
            "import" | Bool | optional,
            interface | Bool | optional,
            namespace | Bool | optional,
            typeAlias | Bool | optional,
            typeParameter | Bool | optional,
          },
      "definitions.rules.properties.no-submodule-imports.definitions.options" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, js2n.array.UniqueItems, Array String ],
      "definitions.rules.properties.no-submodule-imports.definitions.options.items" =
        String,
      "definitions.rules.properties.no-this-assignment.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array
                {
                  allow-destructuring | Bool | optional,
                  allowed-names
                    | js2n.array.MinItems 1
                    | js2n.array.UniqueItems
                    | Array String
                    | optional,
                }
            ],
      "definitions.rules.properties.no-this-assignment.definitions.options.items" =
        {
            allow-destructuring | Bool | optional,
            allowed-names
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array String
              | optional,
          },
      "definitions.rules.properties.no-trailing-whitespace.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 4,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'ignore-blank-lines,
                      'ignore-template-strings,
                      'ignore-jsdoc,
                      'ignore-comments
                    |]
                  ]
              )
            ],
      "definitions.rules.properties.no-trailing-whitespace.definitions.options.items" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'ignore-blank-lines,
                'ignore-template-strings,
                'ignore-jsdoc,
                'ignore-comments
              |]
            ],
      "definitions.rules.properties.no-unnecessary-class.definitions.options" =
        Array (
            std.contract.Sequence
              [
                std.enum.TagOrString,
                [|
                  'allow-static-only,
                  'allow-empty-class,
                  'allow-constructor-only
                |]
              ]
          ),
      "definitions.rules.properties.no-unnecessary-class.definitions.options.items" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'allow-static-only,
                'allow-empty-class,
                'allow-constructor-only
              |]
            ],
      "definitions.rules.properties.no-unused-expression.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 3,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'allow-tagged-template,
                      'allow-new,
                      'allow-fast-null-checks
                    |]
                  ]
              )
            ],
      "definitions.rules.properties.no-unused-expression.definitions.options.items" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'allow-tagged-template, 'allow-new, 'allow-fast-null-checks |]
            ],
      "definitions.rules.properties.no-void-expression.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'ignore-arrow-function-shorthand |]
                  ]
              )
            ],
      "definitions.rules.properties.no-void-expression.definitions.options.items" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'ignore-arrow-function-shorthand |] ],
      "definitions.rules.properties.object-literal-key-quotes.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'consistent-as-needed,
                      'consistent,
                      'as-needed,
                      'always
                    |]
                  ]
              )
            ],
      "definitions.rules.properties.object-literal-key-quotes.definitions.options.items" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'consistent-as-needed, 'consistent, 'as-needed, 'always |]
            ],
      "definitions.rules.properties.object-literal-shorthand.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 2,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'never, 'always |] ]
              )
            ],
      "definitions.rules.properties.object-literal-shorthand.definitions.options.items" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'never, 'always |] ],
      "definitions.rules.properties.object-literal-sort-keys.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 4,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'shorthand-first,
                      'match-declaration-order,
                      'locale-compare,
                      'ignore-case
                    |]
                  ]
              )
            ],
      "definitions.rules.properties.object-literal-sort-keys.definitions.options.items" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'shorthand-first,
                'match-declaration-order,
                'locale-compare,
                'ignore-case
              |]
            ],
      "definitions.rules.properties.one-line.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 5,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'check-whitespace,
                      'check-open-brace,
                      'check-else,
                      'check-finally,
                      'check-catch
                    |]
                  ]
              )
            ],
      "definitions.rules.properties.one-line.definitions.options.items" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'check-whitespace,
                'check-open-brace,
                'check-else,
                'check-finally,
                'check-catch
              |]
            ],
      "definitions.rules.properties.one-variable-per-declaration.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'ignore-for-loop |] ]
              )
            ],
      "definitions.rules.properties.one-variable-per-declaration.definitions.options.items" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'ignore-for-loop |] ],
      "definitions.rules.properties.only-arrow-functions.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 2,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'allow-named-functions, 'allow-declarations |]
                  ]
              )
            ],
      "definitions.rules.properties.only-arrow-functions.definitions.options.items" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'allow-named-functions, 'allow-declarations |]
            ],
      "definitions.rules.properties.ordered-imports.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array
                {
                  grouped-imports | Bool | optional,
                  groups
                    | Array (
                      std.contract.any_of
                        [
                          String,
                          {
                            "match" | String,
                            name | String | optional,
                            order | Number,
                            ..
                          }
                        ]
                    )
                    | optional,
                  import-sources-order
                    | std.enum.TagOrString
                    | [|
                      'any,
                      'lowercase-last,
                      'lowercase-first,
                      'case-insensitive-legacy,
                      'case-insensitive
                    |]
                    | optional,
                  module-source-path
                    | std.enum.TagOrString
                    | [| 'basename, 'full |]
                    | optional,
                  named-imports-order
                    | std.enum.TagOrString
                    | [|
                      'any,
                      'lowercase-last,
                      'lowercase-first,
                      'case-insensitive-legacy,
                      'case-insensitive
                    |]
                    | optional,
                }
            ],
      "definitions.rules.properties.ordered-imports.definitions.options.items" =
        {
            grouped-imports | Bool | optional,
            groups
              | Array (
                std.contract.any_of
                  [
                    String,
                    {
                      "match" | String,
                      name | String | optional,
                      order | Number,
                      ..
                    }
                  ]
              )
              | optional,
            import-sources-order
              | std.enum.TagOrString
              | [|
                'any,
                'lowercase-last,
                'lowercase-first,
                'case-insensitive-legacy,
                'case-insensitive
              |]
              | optional,
            module-source-path
              | std.enum.TagOrString
              | [| 'basename, 'full |]
              | optional,
            named-imports-order
              | std.enum.TagOrString
              | [|
                'any,
                'lowercase-last,
                'lowercase-first,
                'case-insensitive-legacy,
                'case-insensitive
              |]
              | optional,
          },
      "definitions.rules.properties.prefer-conditional-expression.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'check-else-if |] ]
              )
            ],
      "definitions.rules.properties.prefer-conditional-expression.definitions.options.items" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'check-else-if |] ],
      "definitions.rules.properties.prefer-const.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array
                {
                  destructuring
                    | std.enum.TagOrString
                    | [| 'any, 'all |]
                    | optional,
                }
            ],
      "definitions.rules.properties.prefer-const.definitions.options.items" =
        { destructuring | std.enum.TagOrString | [| 'any, 'all |] | optional, },
      "definitions.rules.properties.prefer-function-over-method.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 2,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'allow-protected, 'allow-public |]
                  ]
              )
            ],
      "definitions.rules.properties.prefer-function-over-method.definitions.options.items" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'allow-protected, 'allow-public |] ],
      "definitions.rules.properties.prefer-switch.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array { min-cases | js2n.number.Minimum 0 | optional, }
            ],
      "definitions.rules.properties.prefer-switch.definitions.options.items" =
        { min-cases | js2n.number.Minimum 0 | optional, },
      "definitions.rules.properties.prefer-template.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'allow-single-concat |] ]
              )
            ],
      "definitions.rules.properties.prefer-template.definitions.options.items" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'allow-single-concat |] ],
      "definitions.rules.properties.quotemark.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 4,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'avoid-template,
                      'avoid-escape,
                      'jsx-double,
                      'jsx-single,
                      'double,
                      'single
                    |]
                  ]
              )
            ],
      "definitions.rules.properties.quotemark.definitions.options.items" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'avoid-template,
                'avoid-escape,
                'jsx-double,
                'jsx-single,
                'double,
                'single
              |]
            ],
      "definitions.rules.properties.semicolon.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 3,
              js2n.array.MinItems 1,
              js2n.array.Items
                [
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'never, 'always |] ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'strict-bound-class-methods,
                        'ignore-bound-class-methods,
                        'ignore-interfaces
                      |]
                    ]
                ] js2n.Always
            ],
      "definitions.rules.properties.semicolon.definitions.options.items.0" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'never, 'always |] ],
      "definitions.rules.properties.semicolon.definitions.options.items.1" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'strict-bound-class-methods,
                'ignore-bound-class-methods,
                'ignore-interfaces
              |]
            ],
      "definitions.rules.properties.space-before-function-paren.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array
                {
                  anonymous
                    | std.enum.TagOrString
                    | [| 'never, 'always |]
                    | optional,
                  asyncArrow
                    | std.enum.TagOrString
                    | [| 'never, 'always |]
                    | optional,
                  constructor
                    | std.enum.TagOrString
                    | [| 'never, 'always |]
                    | optional,
                  method
                    | std.enum.TagOrString
                    | [| 'never, 'always |]
                    | optional,
                  named
                    | std.enum.TagOrString
                    | [| 'never, 'always |]
                    | optional,
                }
            ],
      "definitions.rules.properties.space-before-function-paren.definitions.options.items" =
        {
            anonymous | std.enum.TagOrString | [| 'never, 'always |] | optional,
            asyncArrow
              | std.enum.TagOrString
              | [| 'never, 'always |]
              | optional,
            constructor
              | std.enum.TagOrString
              | [| 'never, 'always |]
              | optional,
            method | std.enum.TagOrString | [| 'never, 'always |] | optional,
            named | std.enum.TagOrString | [| 'never, 'always |] | optional,
          },
      "definitions.rules.properties.space-within-parens.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (js2n.number.Minimum 0)
            ],
      "definitions.rules.properties.space-within-parens.definitions.options.items" =
        js2n.number.Minimum 0,
      "definitions.rules.properties.switch-final-break.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence [ std.enum.TagOrString, [| 'always |] ]
              )
            ],
      "definitions.rules.properties.switch-final-break.definitions.options.items" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'always |] ],
      "definitions.rules.properties.trailing-comma.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array
                {
                  esSpecCompliant
                    | Bool
                    | doc "Option to forbid trailing comma after rest"
                    | optional,
                  multiline
                    | std.contract.any_of
                      [
                        std.contract.Sequence
                          [ std.enum.TagOrString, [| 'never, 'always |] ],
                        {
                          arrays
                            | std.enum.TagOrString
                            | [| 'ignore, 'never, 'always |]
                            | optional,
                          exports
                            | std.enum.TagOrString
                            | [| 'ignore, 'never, 'always |]
                            | optional,
                          functions
                            | std.enum.TagOrString
                            | [| 'ignore, 'never, 'always |]
                            | optional,
                          imports
                            | std.enum.TagOrString
                            | [| 'ignore, 'never, 'always |]
                            | optional,
                          objects
                            | std.enum.TagOrString
                            | [| 'ignore, 'never, 'always |]
                            | optional,
                          typeLiterals
                            | std.enum.TagOrString
                            | [| 'ignore, 'never, 'always |]
                            | optional,
                        }
                      ]
                    | optional,
                  singleline
                    | std.contract.any_of
                      [
                        std.contract.Sequence
                          [ std.enum.TagOrString, [| 'never, 'always |] ],
                        {
                          arrays
                            | std.enum.TagOrString
                            | [| 'ignore, 'never, 'always |]
                            | optional,
                          exports
                            | std.enum.TagOrString
                            | [| 'ignore, 'never, 'always |]
                            | optional,
                          functions
                            | std.enum.TagOrString
                            | [| 'ignore, 'never, 'always |]
                            | optional,
                          imports
                            | std.enum.TagOrString
                            | [| 'ignore, 'never, 'always |]
                            | optional,
                          objects
                            | std.enum.TagOrString
                            | [| 'ignore, 'never, 'always |]
                            | optional,
                          typeLiterals
                            | std.enum.TagOrString
                            | [| 'ignore, 'never, 'always |]
                            | optional,
                        }
                      ]
                    | optional,
                }
            ],
      "definitions.rules.properties.trailing-comma.definitions.options.items" =
        {
            esSpecCompliant
              | Bool
              | doc "Option to forbid trailing comma after rest"
              | optional,
            multiline
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'never, 'always |] ],
                  {
                    arrays
                      | std.enum.TagOrString
                      | [| 'ignore, 'never, 'always |]
                      | optional,
                    exports
                      | std.enum.TagOrString
                      | [| 'ignore, 'never, 'always |]
                      | optional,
                    functions
                      | std.enum.TagOrString
                      | [| 'ignore, 'never, 'always |]
                      | optional,
                    imports
                      | std.enum.TagOrString
                      | [| 'ignore, 'never, 'always |]
                      | optional,
                    objects
                      | std.enum.TagOrString
                      | [| 'ignore, 'never, 'always |]
                      | optional,
                    typeLiterals
                      | std.enum.TagOrString
                      | [| 'ignore, 'never, 'always |]
                      | optional,
                  }
                ]
              | optional,
            singleline
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'never, 'always |] ],
                  {
                    arrays
                      | std.enum.TagOrString
                      | [| 'ignore, 'never, 'always |]
                      | optional,
                    exports
                      | std.enum.TagOrString
                      | [| 'ignore, 'never, 'always |]
                      | optional,
                    functions
                      | std.enum.TagOrString
                      | [| 'ignore, 'never, 'always |]
                      | optional,
                    imports
                      | std.enum.TagOrString
                      | [| 'ignore, 'never, 'always |]
                      | optional,
                    objects
                      | std.enum.TagOrString
                      | [| 'ignore, 'never, 'always |]
                      | optional,
                    typeLiterals
                      | std.enum.TagOrString
                      | [| 'ignore, 'never, 'always |]
                      | optional,
                  }
                ]
              | optional,
          },
      "definitions.rules.properties.triple-equals.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 3,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'allow-undefined-check, 'allow-null-check |]
                  ]
              )
            ],
      "definitions.rules.properties.triple-equals.definitions.options.items" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'allow-undefined-check, 'allow-null-check |]
            ],
      "definitions.rules.properties.variable-name.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 7,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'ban-keywords,
                      'allow-snake-case,
                      'allow-pascal-case,
                      'allow-trailing-underscore,
                      'allow-leading-underscore,
                      'require-const-for-all-caps,
                      'check-format
                    |]
                  ]
              )
            ],
      "definitions.rules.properties.variable-name.definitions.options.items" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'ban-keywords,
                'allow-snake-case,
                'allow-pascal-case,
                'allow-trailing-underscore,
                'allow-leading-underscore,
                'require-const-for-all-caps,
                'check-format
              |]
            ],
      "definitions.rules.properties.whitespace.definitions.options" =
        Array (
            std.contract.Sequence
              [
                std.enum.TagOrString,
                [|
                  'check-postbrace,
                  'check-preblock,
                  'check-type-operator,
                  'check-typecast,
                  'check-type,
                  'check-rest-spread,
                  'check-separator,
                  'check-module,
                  'check-operator,
                  'check-decl,
                  'check-branch
                |]
              ]
          ),
      "definitions.rules.properties.whitespace.definitions.options.items" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'check-postbrace,
                'check-preblock,
                'check-type-operator,
                'check-typecast,
                'check-type,
                'check-rest-spread,
                'check-separator,
                'check-module,
                'check-operator,
                'check-decl,
                'check-branch
              |]
            ],
      "definitions.tsRules" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                adjacent-overload-signatures
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Enforces function overloads to be consecutive."
                  | optional,
                array-type
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.array-type.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.array-type.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.tsRules.properties.array-type.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Requires using either 'T[]' or 'Array<T>' for arrays."
                  | optional,
                await-promise
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.await-promise.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.await-promise.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.tsRules.properties.await-promise.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Warns for an awaited value that is not a Promise."
                  | optional,
                ban-ts-ignore
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [ Bool, {}, js2n.array.Items [ Bool ] js2n.Never ]
                  | doc "Bans \"// @ts-ignore\" comments from being used."
                  | optional,
                ban-types
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | js2n.OneOf
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.ban-types.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.ban-types.definitions.options.items",
                                  Array Dyn
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.tsRules.properties.ban-types.definitions.options.items",
                                Array Dyn
                              ])
                        ]
                    ]
                  | doc "Bans specific types from being used. Does not ban the corresponding runtime objects from being used."
                  | optional,
                callable-types
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "An interface or literal type with just a call signature can be written as a function type."
                  | optional,
                function-constructor
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [ Bool, {}, js2n.array.Items [ Bool ] js2n.Never ]
                  | doc "Prevents using the built-in Function constructor."
                  | optional,
                interface-name
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.interface-name.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.interface-name.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.tsRules.properties.interface-name.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Requires interface names to begin with a capital 'I'"
                  | optional,
                interface-over-type-literal
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Prefer an interface declaration over a type literal (`type T = { ... }`)"
                  | optional,
                match-default-export-name
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc m%"
                    Requires that a default import have the same name as the declaration it imports.
                    Does nothing for anonymous default exports.
                  "%
                  | optional,
                member-access
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.member-access.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.member-access.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 4,
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.tsRules.properties.member-access.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Requires explicit visibility declarations for class members."
                  | optional,
                no-angle-bracket-type-assertion
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Requires the use of `as Type` for type assertions instead of `<Type>`."
                  | optional,
                no-any
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items
                        [ Bool, { ignore-rest-args | Bool | optional, .. } ]
                        js2n.Never
                    ]
                  | doc "Disallows usages of `any` as a type declaration."
                  | optional,
                no-boolean-literal-compare
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Warns on comparison to a boolean literal, as in `x === true`."
                  | optional,
                no-empty-interface
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Forbids empty interfaces."
                  | optional,
                no-floating-promises
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.no-floating-promises.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.no-floating-promises.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.tsRules.properties.no-floating-promises.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Promises returned by functions must be handled appropriately."
                  | optional,
                no-inferrable-types
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.no-inferrable-types.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.no-inferrable-types.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 3,
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.tsRules.properties.no-inferrable-types.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Disallows explicit type declarations for variables or parameters initialized to a number, string, or boolean."
                  | optional,
                no-inferred-empty-object-type
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallow type inference of {} (empty object type) at function and constructor call sites"
                  | optional,
                no-internal-module
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows internal `module`"
                  | optional,
                no-mergeable-namespace
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows mergeable namespaces in the same file."
                  | optional,
                no-misused-new
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Warns on apparent attempts to define constructors for interfaces or `new` for classes."
                  | optional,
                no-namespace
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.no-namespace.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.no-namespace.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.tsRules.properties.no-namespace.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Disallows use of internal `module`s and `namespace`s."
                  | optional,
                no-non-null-assertion
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows non-null assertions."
                  | optional,
                no-object-literal-type-assertion
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc m%"
                    Forbids an object literal to appear in a type assertion expression.
                    Casting to `any` is still allowed.
                  "%
                  | optional,
                no-parameter-properties
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows parameter properties in class constructors."
                  | optional,
                no-redundant-jsdoc
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Forbids JSDoc which duplicates TypeScript functionality."
                  | optional,
                no-reference-import
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Don't `<reference types=\"foo\" />` if you import `foo` anyway."
                  | optional,
                no-unbound-method
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.no-unbound-method.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.no-unbound-method.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.tsRules.properties.no-unbound-method.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Warns when a method is used as outside of a method call."
                  | optional,
                no-unnecessary-qualifier
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Warns when a namespace qualifier (`A.x`) is unnecessary."
                  | optional,
                no-unnecessary-type-assertion
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.no-unnecessary-type-assertion.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.no-unnecessary-type-assertion.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.tsRules.properties.no-unnecessary-type-assertion.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Warns if a type assertion does not change the type of an expression."
                  | optional,
                no-unsafe-any
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc m%"
                    Warns when using an expression of type 'any' in a dynamic way.
                    Uses are only allowed if they would work for `{} | null | undefined`.
                    Type casts and tests are allowed.
                    Expressions that work on all values (such as `"" + x`) are allowed.
                  "%
                  | optional,
                no-unused-variable
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | js2n.OneOf
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.no-unused-variable.definitions.options",
                                  Array Dyn
                                ],
                              refs."definitions.tsRules.properties.no-unused-variable.definitions.options.items"
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 3,
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            refs."definitions.tsRules.properties.no-unused-variable.definitions.options.items"
                        ]
                    ]
                  | doc "Disallows unused imports, variables, functions and private class members. Similar to tsc's --noUnusedParameters and --noUnusedLocals options, but does not interrupt code compilation."
                  | optional,
                no-var-requires
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Disallows the use of require statements except in import statements."
                  | optional,
                prefer-readonly
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.prefer-readonly.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.prefer-readonly.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.tsRules.properties.prefer-readonly.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Requires that private variables are marked as `readonly` if they're never modified outside of the constructor."
                  | optional,
                strict-boolean-expressions
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.strict-boolean-expressions.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.strict-boolean-expressions.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 6,
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.tsRules.properties.strict-boolean-expressions.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc m%"
                    Restricts the types allowed in boolean expressions. By default only booleans are allowed.
                    
                    The following nodes are checked:
                    * Arguments to the `!`, `&&`, and `||` operators
                    * The condition in a conditional expression (`cond ? x : y`)
                    * Conditions for `if`, `for`, `while`, and `do-while` statements.
                  "%
                  | optional,
                strict-type-predicates
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc m%"
                    Warns for type predicates that are always true or always false.
                    Works for 'typeof' comparisons to constants (e.g. 'typeof foo === "string"'), and equality comparison to 'null'/'undefined'.
                    (TypeScript won't let you compare '1 === 2', but it has an exception for '1 === undefined'.)
                    Does not yet work for 'instanceof'.
                    Does *not* warn for 'if (x.y)' where 'x.y' is always truthy. For that, see strict-boolean-expressions.
                    
                    This rule requires `strictNullChecks` to work properly.
                  "%
                  | optional,
                type-literal-delimiter
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items
                        [
                          Bool,
                          {
                            singleLine
                              | std.enum.TagOrString
                              | [| 'never, 'always |]
                              | optional,
                            ..
                          }
                        ] js2n.Never
                    ]
                  | doc m%"
                    Checks that type literal members are separated by semicolons.
                    Enforces a trailing semicolon for multiline type literals.
                  "%
                  | optional,
                typedef
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.typedef.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.typedef.definitions.options.items",
                                  String
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 10,
                          js2n.array.UniqueItems,
                          js2n.array.Items [ Bool ]
                            (std.contract.Sequence
                              [
                                refs."definitions.tsRules.properties.typedef.definitions.options.items",
                                String
                              ])
                        ]
                    ]
                  | doc "Requires type definitions to exist."
                  | optional,
                typedef-whitespace
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      {
                        options
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.typedef-whitespace.definitions.options",
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.typedef-whitespace.definitions.options.items.0",
                                  { _ | Dyn }
                                ]
                            ]
                          | doc "An option value or an array of multiple option values."
                          | optional,
                        severity | js2n.Always | optional,
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 3,
                          js2n.array.Items
                            [
                              Bool,
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.typedef-whitespace.definitions.options.items.0",
                                  { _ | Dyn }
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.tsRules.properties.typedef-whitespace.definitions.options.items.1",
                                  { _ | Dyn }
                                ]
                            ] js2n.Always
                        ]
                    ]
                  | doc "Requires or disallows whitespace for type definitions."
                  | optional,
                unified-signatures
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Warns for any two overloads that could be unified into one by using a union or an optional/rest parameter."
                  | optional,
                use-default-type-parameter
                  | refs."definitions.rule"
                  | std.contract.any_of
                    [
                      Bool,
                      { severity | js2n.Always | optional, },
                      js2n.array.Items [ Bool ] js2n.Never
                    ]
                  | doc "Warns if an explicitly specified type argument is the default for that type parameter."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.tsRules.properties.array-type.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'array-simple, 'generic, 'array |]
                  ]
              )
            ],
      "definitions.tsRules.properties.array-type.definitions.options.items" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'array-simple, 'generic, 'array |] ],
      "definitions.tsRules.properties.await-promise.definitions.options" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, js2n.array.UniqueItems, Array String ],
      "definitions.tsRules.properties.await-promise.definitions.options.items" =
        String,
      "definitions.tsRules.properties.ban-types.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ js2n.array.MaxItems 2, js2n.array.MinItems 1, Array String ]
              )
            ],
      "definitions.tsRules.properties.ban-types.definitions.options.items" =
        std.contract.Sequence
            [ js2n.array.MaxItems 2, js2n.array.MinItems 1, Array String ],
      "definitions.tsRules.properties.interface-name.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'never-prefix, 'always-prefix |] ]
              )
            ],
      "definitions.tsRules.properties.interface-name.definitions.options.items" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'never-prefix, 'always-prefix |] ],
      "definitions.tsRules.properties.member-access.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 4,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'check-parameter-property,
                      'check-constructor,
                      'check-accessor,
                      'no-public
                    |]
                  ]
              )
            ],
      "definitions.tsRules.properties.member-access.definitions.options.items" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'check-parameter-property,
                'check-constructor,
                'check-accessor,
                'no-public
              |]
            ],
      "definitions.tsRules.properties.no-floating-promises.definitions.options" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, js2n.array.UniqueItems, Array String ],
      "definitions.tsRules.properties.no-floating-promises.definitions.options.items" =
        String,
      "definitions.tsRules.properties.no-inferrable-types.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 2,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'ignore-properties, 'ignore-params |]
                  ]
              )
            ],
      "definitions.tsRules.properties.no-inferrable-types.definitions.options.items" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'ignore-properties, 'ignore-params |] ],
      "definitions.tsRules.properties.no-namespace.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'allow-declarations |] ]
              )
            ],
      "definitions.tsRules.properties.no-namespace.definitions.options.items" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'allow-declarations |] ],
      "definitions.tsRules.properties.no-unbound-method.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'ignore-static |] ]
              )
            ],
      "definitions.tsRules.properties.no-unbound-method.definitions.options.items" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'ignore-static |] ],
      "definitions.tsRules.properties.no-unnecessary-type-assertion.definitions.options" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, js2n.array.UniqueItems, Array String ],
      "definitions.tsRules.properties.no-unnecessary-type-assertion.definitions.options.items" =
        String,
      "definitions.tsRules.properties.no-unused-variable.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 2,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'check-parameters |] ],
                    { ignore-pattern | String | optional, }
                  ]
              )
            ],
      "definitions.tsRules.properties.no-unused-variable.definitions.options.items" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'check-parameters |] ],
              { ignore-pattern | String | optional, }
            ],
      "definitions.tsRules.properties.prefer-readonly.definitions.options" =
        Array (
            std.contract.Sequence
              [ std.enum.TagOrString, [| 'only-inline-lambdas |] ]
          ),
      "definitions.tsRules.properties.prefer-readonly.definitions.options.items" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'only-inline-lambdas |] ],
      "definitions.tsRules.properties.strict-boolean-expressions.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 8,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'ignore-rhs,
                      'allow-boolean-or-undefined,
                      'allow-mix,
                      'allow-number,
                      'allow-enum,
                      'allow-string,
                      'allow-undefined-union,
                      'allow-null-union
                    |]
                  ]
              )
            ],
      "definitions.tsRules.properties.strict-boolean-expressions.definitions.options.items" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'ignore-rhs,
                'allow-boolean-or-undefined,
                'allow-mix,
                'allow-number,
                'allow-enum,
                'allow-string,
                'allow-undefined-union,
                'allow-null-union
              |]
            ],
      "definitions.tsRules.properties.typedef-whitespace.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 2,
              js2n.array.MinItems 1,
              js2n.array.Items
                [
                  {
                    call-signature
                      | std.enum.TagOrString
                      | [| 'space, 'onespace, 'nospace |]
                      | optional,
                    index-signature
                      | std.enum.TagOrString
                      | [| 'space, 'onespace, 'nospace |]
                      | optional,
                    parameter
                      | std.enum.TagOrString
                      | [| 'space, 'onespace, 'nospace |]
                      | optional,
                    property-declaration
                      | std.enum.TagOrString
                      | [| 'space, 'onespace, 'nospace |]
                      | optional,
                    variable-declaration
                      | std.enum.TagOrString
                      | [| 'space, 'onespace, 'nospace |]
                      | optional,
                  },
                  {
                    call-signature
                      | std.enum.TagOrString
                      | [| 'space, 'onespace, 'nospace |]
                      | optional,
                    index-signature
                      | std.enum.TagOrString
                      | [| 'space, 'onespace, 'nospace |]
                      | optional,
                    parameter
                      | std.enum.TagOrString
                      | [| 'space, 'onespace, 'nospace |]
                      | optional,
                    property-declaration
                      | std.enum.TagOrString
                      | [| 'space, 'onespace, 'nospace |]
                      | optional,
                    variable-declaration
                      | std.enum.TagOrString
                      | [| 'space, 'onespace, 'nospace |]
                      | optional,
                  }
                ] js2n.Always
            ],
      "definitions.tsRules.properties.typedef-whitespace.definitions.options.items.0" =
        {
            call-signature
              | std.enum.TagOrString
              | [| 'space, 'onespace, 'nospace |]
              | optional,
            index-signature
              | std.enum.TagOrString
              | [| 'space, 'onespace, 'nospace |]
              | optional,
            parameter
              | std.enum.TagOrString
              | [| 'space, 'onespace, 'nospace |]
              | optional,
            property-declaration
              | std.enum.TagOrString
              | [| 'space, 'onespace, 'nospace |]
              | optional,
            variable-declaration
              | std.enum.TagOrString
              | [| 'space, 'onespace, 'nospace |]
              | optional,
          },
      "definitions.tsRules.properties.typedef-whitespace.definitions.options.items.1" =
        {
            call-signature
              | std.enum.TagOrString
              | [| 'space, 'onespace, 'nospace |]
              | optional,
            index-signature
              | std.enum.TagOrString
              | [| 'space, 'onespace, 'nospace |]
              | optional,
            parameter
              | std.enum.TagOrString
              | [| 'space, 'onespace, 'nospace |]
              | optional,
            property-declaration
              | std.enum.TagOrString
              | [| 'space, 'onespace, 'nospace |]
              | optional,
            variable-declaration
              | std.enum.TagOrString
              | [| 'space, 'onespace, 'nospace |]
              | optional,
          },
      "definitions.tsRules.properties.typedef.definitions.options" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 9,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'array-destructuring,
                      'object-destructuring,
                      'member-variable-declaration,
                      'variable-declaration,
                      'property-declaration,
                      'arrow-parameter,
                      'parameter,
                      'arrow-call-signature,
                      'call-signature
                    |]
                  ]
              )
            ],
      "definitions.tsRules.properties.typedef.definitions.options.items" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'array-destructuring,
                'object-destructuring,
                'member-variable-declaration,
                'variable-declaration,
                'property-declaration,
                'arrow-parameter,
                'parameter,
                'arrow-call-signature,
                'call-signature
              |]
            ],
    }
    in
  {
      defaultSeverity
        | std.enum.TagOrString
        | [| 'none, 'off, 'warn, 'warning, 'error |]
        | doc "The severity level used when a rule specifies \"default\" as its severity level. If undefined, \"error\" is used."
        | optional,
      extends
        | std.contract.any_of [ String, Array String ]
        | doc "The name of a built-in configuration preset, or a path or array of paths to other configuration files which are extended by this configuration. These values are handled using node module resolution semantics."
        | optional,
      jsRules
        | refs."definitions.rules"
        | doc "A map of rules that will be used to lint JavaScript files. These rules apply to `.js` and `.jsx` files."
        | optional,
      linterOptions
        | {
          exclude
            | Array String
            | doc "An array of globs. Any file matching these globs will not be linted. All exclude patterns are relative to the configuration file they were specified in."
            | optional,
          ..
        }
        | doc "Additional linter options."
        | optional,
      rules
        | refs."definitions.tsRules"
        | refs."definitions.rules"
        | doc "A map of rules that will be used to lint TypeScript files. These rules apply to `.ts` and `.tsx` files."
        | optional,
      rulesDirectory
        | std.contract.any_of [ String, Array String ]
        | doc "A path to a directory or an array of paths to directories of custom rules. These values are handled using node module resolution semantics, if an `index.js` is placed in your rules directory."
        | optional,
      ..
    }