# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      _ | {
        category | String | optional,
        class | String | optional,
        default_region | String | optional,
        description | String | optional,
        icon | String | optional,
        icon_map | Array (Array String) | optional,
        label | String | optional,
        library | String | optional,
        path | String | optional,
        regions | { _ | { label | String | optional, .. } } | optional,
        template | String | optional,
        theme_hook | String | optional,
      }
    }