# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      defaults
        | Array
          {
            default_name | String,
            description | String | optional,
            policy_assignments
              | Array
                {
                  parameter_names | Array String,
                  policy_assignment_name | String,
                  ..
                },
            ..
          },
      ..
    }