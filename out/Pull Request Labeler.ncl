# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      _ | std.contract.any_of
        [
          String,
          Array (
            std.contract.any_of
              [
                String,
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          all = js2n.array.ArrayOf String,
                          any = js2n.array.ArrayOf String,
                        },
                    required = {},
                  },
                Array Dyn
              ]
          )
        ]
    }