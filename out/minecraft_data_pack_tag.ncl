# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      replace | Bool | optional,
      values
        | Array (
          std.contract.any_of
            [
              js2n.string.Matches "^[a-z0-9_.-]+:[a-z0-9_.-]+",
              js2n.string.Matches "^#[a-z0-9_.-]+:[a-z0-9_.-]+",
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        id =
                          std.contract.any_of
                              [
                                js2n.string.Matches
                                  "^[a-z0-9_.-]+:[a-z0-9_.-]+",
                                js2n.string.Matches
                                  "^#[a-z0-9_.-]+:[a-z0-9_.-]+"
                              ],
                        required = Bool,
                      },
                  required = {},
                }
            ]
        )
        | doc "Values",
      ..
    }