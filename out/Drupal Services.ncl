# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      parameters | { _ | Dyn } | optional,
      services
        | {
          _ | {
            abstract | Bool | optional,
            alias | String | optional,
            arguments | js2n.array.UniqueItems | optional,
            calls | js2n.array.UniqueItems | optional,
            class | String | optional,
            configurator | Array String | optional,
            decorates | String | optional,
            deprecated | String | optional,
            factory | std.contract.any_of [ Array Dyn, String ] | optional,
            lazy | Bool | optional,
            parent | String | optional,
            public | Bool | optional,
            shared | Bool | optional,
            tags
              | Array
                {
                  alias | String | optional,
                  applies_to | String | optional,
                  call | String | optional,
                  default_backend | String | optional,
                  format | String | optional,
                  name | String | optional,
                  needs_incoming_request | Bool | optional,
                  "priority" | std.number.Integer | optional,
                  provider_id | String | optional,
                  required | Bool | optional,
                  responder | Bool | optional,
                  scheme | String | optional,
                  tag | String | optional,
                  ..
                }
              | optional,
            ..
          }
        }
        | optional,
    }