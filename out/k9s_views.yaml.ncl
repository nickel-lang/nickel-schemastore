# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      views
        | { _ | { columns | Array String, sortColumn | String | optional, } },
    }