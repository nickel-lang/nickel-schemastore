# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      plans
        | js2n.record.PropertyNames
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              js2n.string.Matches "^plan:[a-zA-Z0-9:]+@[a-zA-Z0-9]+$",
              { _ | Dyn },
              Array Dyn
            ])
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "" =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ],
                },
            properties = {},
            required = {},
          }
        | doc "The collection of all defined plans"
        | optional,
    }