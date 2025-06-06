# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.args-property" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.argument", { _ | Dyn } ]
              )
            ],
      "definitions.argument" =
        std.contract.Sequence
            [
              js2n.record.DependentContracts
                {
                  unique =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            repeatable | std.contract.Equal true | optional,
                            ..
                          },
                          Array Dyn
                        ],
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^x_." =
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
                  properties =
                    {
                        allowed =
                          std.contract.Sequence
                              [
                                js2n.array.MinItems 1,
                                js2n.array.UniqueItems,
                                Array (js2n.string.MinLength 1)
                              ],
                        "default" =
                          std.contract.any_of
                              [
                                String,
                                std.contract.Sequence
                                  [ js2n.array.MinItems 1, Array String ]
                              ],
                        help = js2n.string.MinLength 1,
                        name = js2n.string.MinLength 1,
                        repeatable = Bool,
                        required = Bool,
                        unique = Bool,
                        validate = String,
                      },
                  required = { name = true, },
                }
            ],
      "definitions.catch-all-property" =
        std.contract.any_of
            [
              Bool,
              js2n.string.MinLength 1,
              {
                help
                  | js2n.string.MinLength 1
                  | doc m%"
                    A description for the current argument or flag
                    https://bashly.dev/configuration/command/#catch_all
                  "%
                  | optional,
                label
                  | js2n.string.MinLength 1
                  | doc m%"
                    A label for the current argument or flag
                    https://bashly.dev/configuration/command/#catch_all
                  "%
                  | optional,
                required
                  | Bool
                  | doc m%"
                    Whether the current argument or flag is required
                    https://bashly.dev/configuration/command/#catch_all
                  "%
                  | optional,
              }
            ],
      "definitions.command-property" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^x_." =
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
              properties =
                {
                    alias = refs."definitions.sub-command-alias-property",
                    args =
                      std.contract.Sequence
                          [ refs."definitions.args-property", Array Dyn ],
                    catch_all = refs."definitions.catch-all-property",
                    commands =
                      std.contract.Sequence
                          [ refs."definitions.commands-property", Array Dyn ],
                    completions =
                      std.contract.Sequence
                          [
                            refs."definitions.completions-property",
                            Array Dyn
                          ],
                    "default" = refs."definitions.sub-command-default-property",
                    dependencies = refs."definitions.dependencies-property",
                    environment_variables =
                      std.contract.Sequence
                          [
                            refs."definitions.environment-variables-property",
                            Array Dyn
                          ],
                    examples = refs."definitions.examples-property",
                    expose = refs."definitions.sub-command-expose-property",
                    filename =
                      std.contract.Sequence
                          [ refs."definitions.filename-property", String ],
                    filters =
                      std.contract.Sequence
                          [ refs."definitions.filters-property", Array Dyn ],
                    flags =
                      std.contract.Sequence
                          [ refs."definitions.flags-property", Array Dyn ],
                    footer =
                      std.contract.Sequence
                          [ refs."definitions.footer-property", String ],
                    function =
                      std.contract.Sequence
                          [ refs."definitions.function-property", String ],
                    group =
                      std.contract.Sequence
                          [
                            refs."definitions.sub-command-group-property",
                            String
                          ],
                    help =
                      std.contract.Sequence
                          [ refs."definitions.help-property", String ],
                    help_header_override =
                      std.contract.Sequence
                          [
                            refs."definitions.help-header-override-property",
                            String
                          ],
                    "import" =
                      std.contract.Sequence
                          [
                            refs."definitions.sub-command-import-property",
                            String
                          ],
                    name =
                      std.contract.Sequence
                          [ refs."definitions.name-property", String ],
                    private =
                      std.contract.Sequence
                          [
                            refs."definitions.sub-command-private-property",
                            Bool
                          ],
                    variables =
                      std.contract.Sequence
                          [ refs."definitions.variables-property", Array Dyn ],
                  },
              required = {},
            },
      "definitions.commands-property" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.command-property", { _ | Dyn } ]
              )
            ],
      "definitions.completions-property" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (js2n.string.MinLength 1)
            ],
      "definitions.dependencies-command-property" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (js2n.string.MinLength 1)
            ],
      "definitions.dependencies-help-property" = js2n.string.MinLength 1,
      "definitions.dependencies-property" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  js2n.array.UniqueItems,
                  Array (js2n.Nullable (js2n.string.MinLength 1))
                ],
              std.contract.Sequence
                [
                  {
                    _ | std.contract.any_of
                      [
                        js2n.string.MinLength 1,
                        js2n.Null,
                        {
                          command
                            | refs."definitions.dependencies-command-property"
                            | Array Dyn,
                          help
                            | refs."definitions.dependencies-help-property"
                            | String
                            | optional,
                        }
                      ]
                  },
                  js2n.record.FieldsMatch "."
                ]
            ],
      "definitions.environment-variable" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^x_." =
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
              properties =
                {
                    allowed =
                      std.contract.Sequence
                          [
                            js2n.array.MinItems 1,
                            js2n.array.UniqueItems,
                            Array (js2n.string.MinLength 1)
                          ],
                    "default" = String,
                    help = js2n.string.MinLength 1,
                    name = js2n.string.MinLength 1,
                    private = Bool,
                    required = Bool,
                    validate = String,
                  },
              required = { name = true, },
            },
      "definitions.environment-variables-property" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.environment-variable", { _ | Dyn } ]
              )
            ],
      "definitions.examples-property" =
        std.contract.any_of
            [
              js2n.string.MinLength 1,
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  js2n.array.UniqueItems,
                  Array (js2n.string.MinLength 1)
                ]
            ],
      "definitions.filename-property" = js2n.string.MinLength 1,
      "definitions.filters-property" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array (js2n.string.MinLength 1) ],
      "definitions.flag" =
        std.contract.Sequence
            [
              js2n.record.DependentContracts
                {
                  unique =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            repeatable | std.contract.Equal true | optional,
                            ..
                          },
                          Array Dyn
                        ],
                },
              std.contract.any_of
                [
                  js2n.record.Required [ "long" ],
                  js2n.record.Required [ "short" ]
                ],
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^x_." =
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
                  properties =
                    {
                        allowed =
                          std.contract.Sequence
                              [
                                js2n.array.MinItems 1,
                                js2n.array.UniqueItems,
                                Array (js2n.string.MinLength 1)
                              ],
                        arg = js2n.string.MinLength 1,
                        completions =
                          std.contract.Sequence
                              [
                                js2n.array.MinItems 1,
                                js2n.array.UniqueItems,
                                Array (js2n.string.MinLength 1)
                              ],
                        conflicts =
                          std.contract.Sequence
                              [
                                js2n.array.MinItems 1,
                                js2n.array.UniqueItems,
                                Array (js2n.string.MinLength 1)
                              ],
                        "default" =
                          std.contract.any_of
                              [
                                String,
                                std.contract.Sequence
                                  [ js2n.array.MinItems 1, Array String ]
                              ],
                        help = js2n.string.MinLength 1,
                        long = js2n.string.Matches "^--",
                        needs =
                          std.contract.Sequence
                              [
                                js2n.array.MinItems 1,
                                js2n.array.UniqueItems,
                                Array (js2n.string.MinLength 1)
                              ],
                        private = Bool,
                        repeatable = Bool,
                        required = Bool,
                        short = js2n.string.Matches "^-[^-]",
                        unique = Bool,
                        validate = String,
                      },
                  required = {},
                }
            ],
      "definitions.flags-property" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence [ refs."definitions.flag", { _ | Dyn } ]
              )
            ],
      "definitions.footer-property" = js2n.string.MinLength 1,
      "definitions.function-property" = js2n.string.MinLength 1,
      "definitions.help-header-override-property" = js2n.string.MinLength 1,
      "definitions.help-property" = js2n.string.MinLength 1,
      "definitions.name-property" = js2n.string.MinLength 1,
      "definitions.root-version-property" = js2n.string.MinLength 1,
      "definitions.sub-command-alias-property" =
        std.contract.any_of
            [
              js2n.string.MinLength 1,
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  js2n.array.UniqueItems,
                  Array (js2n.string.MinLength 1)
                ]
            ],
      "definitions.sub-command-default-property" =
        std.contract.any_of
            [
              Bool,
              std.contract.Sequence [ std.enum.TagOrString, [| '"force" |] ]
            ],
      "definitions.sub-command-expose-property" =
        std.contract.any_of
            [
              Bool,
              std.contract.Sequence [ std.enum.TagOrString, [| 'always |] ]
            ],
      "definitions.sub-command-group-property" = js2n.string.MinLength 1,
      "definitions.sub-command-import-property" = js2n.string.MinLength 1,
      "definitions.sub-command-private-property" = Bool,
      "definitions.variable" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^x_." =
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
              properties =
                {
                    name = js2n.string.MinLength 1,
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
              required = { name = true, },
            },
      "definitions.variables-property" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.variable", { _ | Dyn } ]
              )
            ],
    }
    in
  js2n.record.Record
      {
        additional = 'None,
        patterns =
          {
              "^x_." =
                std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
            },
        properties =
          {
              args =
                std.contract.Sequence
                    [ refs."definitions.args-property", Array Dyn ],
              catch_all = refs."definitions.catch-all-property",
              commands =
                std.contract.Sequence
                    [ refs."definitions.commands-property", Array Dyn ],
              completions =
                std.contract.Sequence
                    [ refs."definitions.completions-property", Array Dyn ],
              dependencies = refs."definitions.dependencies-property",
              environment_variables =
                std.contract.Sequence
                    [
                      refs."definitions.environment-variables-property",
                      Array Dyn
                    ],
              examples = refs."definitions.examples-property",
              extensible = std.contract.any_of [ Bool, String ],
              filename = refs."definitions.filename-property",
              filters =
                std.contract.Sequence
                    [ refs."definitions.filters-property", Array Dyn ],
              flags =
                std.contract.Sequence
                    [ refs."definitions.flags-property", Array Dyn ],
              footer = refs."definitions.footer-property",
              function = refs."definitions.function-property",
              help = refs."definitions.help-property",
              help_header_override =
                refs."definitions.help-header-override-property",
              name = refs."definitions.name-property",
              variables =
                std.contract.Sequence
                    [ refs."definitions.variables-property", Array Dyn ],
              version = refs."definitions.root-version-property",
            },
        required = {},
      }