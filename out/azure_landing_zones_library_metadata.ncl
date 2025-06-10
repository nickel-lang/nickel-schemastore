# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      dependencies
        | Array
          {
            custom_url | String | optional,
            path | String | optional,
            ref | String | optional,
            ..
          }
        | optional,
      description | String,
      display_name | String,
      name | String,
      ..
    }