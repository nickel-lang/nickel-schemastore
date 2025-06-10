# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      asset_id | String,
      description | { color | String | optional, translate | String, .. },
      template_item | String,
      ..
    }