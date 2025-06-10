# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      circuit
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      conductors
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | optional,
      general
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      magnet
        | js2n.OneOf
          [
            std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
            std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
            std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
            std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
          ]
        | optional,
      power_supply
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      quench_detection
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      quench_protection
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      run
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      ..
    }