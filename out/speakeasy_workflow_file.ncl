# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      sources
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | doc "A map of source names to source configurations, where the output is an OpenAPI document"
        | optional,
      speakeasyVersion
        | js2n.OneOf
          [ js2n.Const "latest", js2n.string.Matches "^\\d+\\.\\d+\\.\\d+$" ]
        | String
        | optional,
      targets
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | doc "A map of target names to target configurations, where the output is a speakeasy generation target"
        | optional,
      workflowVersion
        | std.contract.Equal "1.0.0"
        | doc "The version of the workflow schema",
    }