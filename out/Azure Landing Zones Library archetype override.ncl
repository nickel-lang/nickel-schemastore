# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      base_archetype | String,
      name | String,
      policy_assignments_to_add
        | js2n.array.Items [ String ] js2n.Always
        | optional,
      policy_assignments_to_remove
        | js2n.array.Items [ String ] js2n.Always
        | optional,
      policy_definitions_to_add
        | js2n.array.Items [ String ] js2n.Always
        | optional,
      policy_definitions_to_remove
        | js2n.array.Items [ String ] js2n.Always
        | optional,
      policy_set_definitions_to_add
        | js2n.array.Items [ String ] js2n.Always
        | optional,
      policy_set_definitions_to_remove
        | js2n.array.Items [ String ] js2n.Always
        | optional,
      role_definitions_to_add
        | js2n.array.Items [ String ] js2n.Always
        | optional,
      role_definitions_to_remove
        | js2n.array.Items [ String ] js2n.Always
        | optional,
      ..
    }