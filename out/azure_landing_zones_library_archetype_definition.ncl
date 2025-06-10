# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      name | String,
      policy_assignments | Array String | optional,
      policy_definitions | Array String | optional,
      policy_set_definitions | Array String | optional,
      role_definitions | Array String | optional,
      ..
    }