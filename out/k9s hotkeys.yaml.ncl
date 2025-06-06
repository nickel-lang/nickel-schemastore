# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      hotKeys
        | {
          _ | {
            command | String | optional,
            description | String | optional,
            keepHistory | Bool | optional,
            override | Bool | optional,
            shortCut | String | optional,
            ..
          }
        },
    }