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
        cache_tags | Array String | optional,
        class | String | optional,
        deriver | String | optional,
        description | String | optional,
        description_context | String | optional,
        enabled | std.contract.any_of [ Bool, std.number.Integer ] | optional,
        expanded | std.contract.any_of [ Bool, std.number.Integer ] | optional,
        form_class | String | optional,
        menu_name | String | optional,
        metadata | Array Dyn | optional,
        options | { _ | Dyn } | optional,
        parent | String | optional,
        position | String | optional,
        provider | String | optional,
        route_name | String | optional,
        route_parameters | { _ | Dyn } | optional,
        title | String | optional,
        title_context | String | optional,
        url | String | optional,
        weight | std.number.Integer | optional,
      }
    }