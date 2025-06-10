# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  Array
      {
        relation
          | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
          | optional,
        target
          | js2n.OneOf
            [
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            ]
          | { _ | Dyn }
          | doc "The target asset to whom this statement applies"
          | optional,
      }