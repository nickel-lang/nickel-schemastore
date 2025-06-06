# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.configItem" =
        {
            class | String | optional,
            constraints | { _ | Dyn } | optional,
            definition_class | String | optional,
            label | String | optional,
            mapping
              | { _ | std.contract.Sequence [ js2n.Always, { _ | Dyn } ] }
              | optional,
            nullable | Bool | optional,
            orderby | String | optional,
            sequence | js2n.Always | { _ | Dyn } | optional,
            translatable | Bool | optional,
            "translation context" | String | optional,
            type | String | optional,
          },
    }
    in
  { _ | refs."definitions.configItem" }