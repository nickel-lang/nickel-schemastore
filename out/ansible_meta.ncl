# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  js2n.Nullable
      {
        additionalProperties | js2n.Never | optional,
        allow_duplicates | Bool | optional,
        collections
          | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
          | optional,
        dependencies
          | Array (
            std.contract.any_of
              [
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
        galaxy_info
          | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
          | optional,
        ..
      }