# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      selectors
        | js2n.array.MinItems 1
        | Array
          {
            "default"
              | std.contract.any_of
                [ js2n.string.Matches "\\{\\{.*\\}\\}", Bool ]
              | optional,
            definition
              | js2n.OneOf
                [
                  std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                  String,
                  std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                ]
              | optional,
            description | String | optional,
            name | String | optional,
          },
    }