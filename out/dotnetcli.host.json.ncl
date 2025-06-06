# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.symbolInfo" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                isHidden
                  | std.contract.any_of
                    [
                      Bool,
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "^(true|false)$",
                      { _ | Dyn },
                      Array Dyn
                    ]
                  | optional,
                longName | String | optional,
                shortName | String | optional,
                ..
              },
              Array Dyn
            ],
    }
    in
  {
      symbolInfo | { _ | refs."definitions.symbolInfo" } | optional,
      usageExamples | Array String | optional,
      ..
    }