# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.level_type" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'off, 'info, 'warn, 'error |] ],
      "definitions.naming_type" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'SCREAMING_SNAKE_CASE,
                'snake_case,
                'kebab-case,
                'camelCase,
                'PascalCase
              |]
            ],
    }
    in
  {
      extends
        | std.contract.any_of
          [
            String,
            std.contract.Sequence
              [ std.enum.TagOrString, [| 'strict, 'recommended |] ]
          ]
        | doc "The name of the configuration file to extend from, used to determine the default rules to apply",
      rules
        | Array (
          js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        level = refs."definitions.level_type",
                        type = js2n.Const "split-model-and-providers",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        enum = refs."definitions.naming_type",
                        enumValue = refs."definitions.naming_type",
                        fileName = refs."definitions.naming_type",
                        level = refs."definitions.level_type",
                        package = refs."definitions.naming_type",
                        provider = refs."definitions.naming_type",
                        record = refs."definitions.naming_type",
                        recordField = refs."definitions.naming_type",
                        service = refs."definitions.naming_type",
                        serviceOperation = refs."definitions.naming_type",
                        serviceOperationParameter =
                          refs."definitions.naming_type",
                        type = js2n.Const "naming-conventions",
                        typeAlias = refs."definitions.naming_type",
                      },
                  required = { type = true, },
                }
            ]
        )
        | doc "Configuration for linter rules for the current project"
        | optional,
    }