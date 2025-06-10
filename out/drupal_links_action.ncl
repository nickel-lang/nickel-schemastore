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
        appears_on | Array String | optional,
        cache_tags | Array String | optional,
        class | String | optional,
        deriver | String | optional,
        options | { _ | Dyn } | optional,
        route_name | String | optional,
        route_parameters | { _ | Dyn } | optional,
        title | String | optional,
        title_context | String | optional,
        weight | std.number.Integer | optional,
        ..
      }
    }