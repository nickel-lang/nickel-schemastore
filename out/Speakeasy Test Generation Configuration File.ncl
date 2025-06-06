# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      components | {  .. } | optional,
      tests
        | {
          _ | Array (
            std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
          )
        },
      testsVersion | std.contract.Equal "0.0.1",
    }