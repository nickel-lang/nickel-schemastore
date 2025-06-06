# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.scenario" =
        {
            description | js2n.Always | optional,
            name | js2n.Always | optional,
            populations
              | js2n.array.MinItems 1
              | Array
                {
                  constant_load | js2n.Always | optional,
                  name | js2n.Always,
                  peaks_load | js2n.Always | optional,
                  rampup_load | js2n.Always | optional,
                  ..
                }
              | optional,
            ..
          },
      "definitions.server" =
        {
            basic_authentication | js2n.Always | optional,
            host | js2n.Always | optional,
            name | js2n.Always | optional,
            negotiate_authentication | js2n.Always | optional,
            ntlm_authentication | js2n.Always | optional,
            port | std.number.Integer | optional,
            scheme | std.enum.TagOrString | [| 'https, 'http |] | optional,
          },
      "definitions.sla" =
        {
            description | js2n.Always | optional,
            name | js2n.Always | optional,
            thresholds | js2n.array.MinItems 1 | Array js2n.Always | optional,
            ..
          },
    }
    in
  std.contract.Sequence
      [
        js2n.record.MinProperties 1,
        {
          "$schema"
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          includes
            | js2n.array.MinItems 1
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | optional,
          name
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          populations
            | js2n.array.MinItems 1
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | optional,
          scenarios
            | js2n.array.MinItems 1
            | Array refs."definitions.scenario"
            | optional,
          servers
            | js2n.array.MinItems 1
            | Array refs."definitions.server"
            | optional,
          sla_profiles
            | js2n.array.MinItems 1
            | Array refs."definitions.sla"
            | optional,
          user_paths
            | js2n.array.MinItems 1
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | optional,
          variables
            | js2n.array.MinItems 1
            | Array (
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String,
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String,
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String,
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String,
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String
                ]
            )
            | optional,
        }
      ]