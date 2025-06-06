# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.$schemaProperty" = String,
      "definitions.advancedConfig" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                "$schema"
                  | refs."definitions.$schemaProperty"
                  | String
                  | optional,
                chunkSize
                  | js2n.number.Minimum 1
                  | doc "Max allowed chunk size based on number of files for glob pattern. This option is only applicable on Windows based systems to avoid command length limitations"
                  | optional,
                concurrent
                  | Bool
                  | doc "Controls if linters are run simultaneously for each glob pattern."
                  | optional,
                globOptions
                  | refs."definitions.globOptions"
                  | { _ | Dyn }
                  | doc "micromatch options to customize how glob patterns match files."
                  | optional,
                ignore
                  | Array String
                  | doc "array of glob patterns to entirely ignore from any task."
                  | optional,
                linters
                  | refs."definitions.lintersMap"
                  | { _ | Dyn }
                  | doc "keys (String) are glob patterns, values (Array<String> | String) are commands to execute."
                  | optional,
                relative
                  | Bool
                  | doc "If true it will give the relative path from your package.json directory to your linter arguments."
                  | optional,
                renderer
                  | std.enum.TagOrString
                  | [| 'verbose, 'update |]
                  | optional,
                subTaskConcurrency
                  | std.number.Integer
                  | js2n.number.Minimum 1
                  | doc "Controls concurrency for processing chunks generated for each linter. This option is only applicable on Windows. Execution is not concurrent by default."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.basicConfig" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              std.contract.Sequence
                [
                  js2n.record.PropertyNames
                    (std.contract.not
                      (std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [|
                            'relative,
                            'renderer,
                            'subTaskConcurrency,
                            'ignore,
                            'linters,
                            'globOptions,
                            'chunkSize,
                            'concurrent
                          |]
                        ])),
                  js2n.record.Record
                    {
                      additional =
                        'Some
                            (std.contract.Sequence
                              [
                                refs."definitions.linter",
                                std.contract.any_of [ Array Dyn, String ]
                              ]),
                      patterns = {},
                      properties =
                        {
                            "$schema" =
                              std.contract.Sequence
                                  [
                                    refs."definitions.$schemaProperty",
                                    String
                                  ],
                          },
                      required = {},
                    }
                ],
              Array Dyn
            ],
      "definitions.globOptions" =
        { dot | Bool | optional, matchBase | Bool | optional, },
      "definitions.linter" = std.contract.any_of [ String, Array Dyn ],
      "definitions.lintersMap" =
        {
            _ | std.contract.Sequence
              [
                refs."definitions.linter",
                std.contract.any_of [ Array Dyn, String ]
              ]
          },
    }
    in
  std.contract.any_of
      [ refs."definitions.advancedConfig", refs."definitions.basicConfig" ]