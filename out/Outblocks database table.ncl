# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Fields" =
        js2n.record.Record
            {
              additional = 'Some js2n.Always,
              patterns =
                {
                    "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                      {
                          "default"
                            | std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                { _ | Dyn },
                                Array Dyn
                              ]
                            | doc "Default value of the field."
                            | optional,
                          type | String | doc "The type of the field.",
                          ..
                        },
                  },
              properties = {},
              required = {},
            },
      "definitions.OutblocksTable" =
        { fields | refs."definitions.Fields" | { _ | Dyn } | optional, },
    }
    in
  refs."definitions.OutblocksTable"