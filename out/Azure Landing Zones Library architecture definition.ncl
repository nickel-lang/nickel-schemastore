# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      management_groups
        | Array
          {
            archetypes | Array String,
            display_name | String,
            exists | Bool,
            id | String,
            parent_id | js2n.Nullable String,
            ..
          },
      name | String,
      ..
    }