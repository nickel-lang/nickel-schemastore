# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Environment" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'development, 'staging, 'production |] ],
      "definitions.MondayId" =
        std.contract.Sequence
            [ std.number.Integer, js2n.number.ExclusiveMinimum 0 ],
      "definitions.Result" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'error, 'success |] ],
      "definitions.TrueScriptVersion" =
        js2n.string.Matches "^\\d+\\.\\d+\\.\\d+$",
      "definitions.UUID4" =
        js2n.string.Matches
            "^[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$",
    }
    in
  {
      description
        | String
        | doc "A more detailed description of the TrueScript"
        | optional,
      environment
        | refs."definitions.Environment"
        | doc "Intended environment to run the TrueScript",
      id | refs."definitions.UUID4" | doc "Unique ID of the TrueScript (UUID4)",
      item_id
        | refs."definitions.MondayId"
        | Number
        | doc "The item's ID to execute the TrueScript upon",
      name | String | doc "Short description of the TrueScript",
      params
        | {  .. }
        | doc "Parameters that will be passed to the TrueScript"
        | optional,
      result
        | {
          error
            | { additionalProperties | js2n.Always | optional, .. }
            | doc "The error info (when 'result=error')"
            | optional,
          result
            | refs."definitions.Result"
            | doc "The result of the execution of the TrueScript",
          ..
        }
        | doc "The expected result when running this TrueScript"
        | optional,
      script
        | std.contract.any_of [ String, Array String ]
        | doc "The TrueScript itself",
      tags | Array String | doc "Free tags for any classification" | optional,
      truescript_version
        | refs."definitions.TrueScriptVersion"
        | doc "The minimal version to run this TrueScript. Format: \"major.minor.patch\"",
    }