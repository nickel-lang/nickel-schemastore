# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      plugins
        | {
          _ | std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                args
                  | Array (std.contract.any_of [ Number, String ])
                  | optional,
                background | Bool | optional,
                command | String,
                confirm | Bool | optional,
                dangerous | Bool | optional,
                description | String,
                override | Bool | optional,
                overwriteOutput | Bool | optional,
                scopes | Array String,
                shortCut | String,
                ..
              },
              Array Dyn
            ]
        },
    }