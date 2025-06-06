# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.IParameterReplacement" =
        {
            key
              | refs."definitions.NonEmptyString"
              | String
              | doc "Key of the replacement placeholder",
            path
              | refs."definitions.NonEmptyString"
              | String
              | doc "Path of the SSM Parameter containing the value to replace",
          },
      "definitions.IParameterReplacementV2" =
        {
            key
              | refs."definitions.NonEmptyString"
              | String
              | doc "Key of the replacement placeholder",
            path
              | refs."definitions.NonEmptyString"
              | String
              | doc "Path of the SSM Parameter containing the value to replace"
              | optional,
            type
              | refs."definitions.ParameterReplacementType"
              | String
              | doc "Type of the global parameters",
            value
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.NonEmptyString", String ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.NonEmptyString", String ]
                  )
                ]
              | doc "Value of the parameter if type is string or array"
              | optional,
          },
      "definitions.IReplacementsConfig" =
        {
            globalReplacements
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.IParameterReplacement", { _ | Dyn } ],
                    std.contract.Sequence
                      [
                        refs."definitions.IParameterReplacementV2",
                        { _ | Dyn }
                      ]
                  ]
              )
              | doc "The set of placeholder parameters (key/path pairs) that will be merged with yaml configuration files."
              | optional,
          },
      "definitions.NonEmptyString" = js2n.string.MinLength 1,
      "definitions.ParameterReplacementType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'StringList, '"String", 'SSM |] ],
    }
    in
  refs."definitions.IReplacementsConfig"