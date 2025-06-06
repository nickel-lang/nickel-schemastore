# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      services
        | js2n.record.PropertyNames
          (js2n.string.Matches "^[a-zA-Z0-9_-]{1,128}$")
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | optional,
      tasks
        | js2n.record.PropertyNames
          (js2n.string.Matches "^[a-zA-Z0-9_-]{1,128}$")
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | optional,
    }