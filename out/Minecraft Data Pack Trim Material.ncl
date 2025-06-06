# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      asset_name | String,
      description | { color | String, translate | String, .. },
      ingredient | String,
      item_model_index | Number,
      ..
    }