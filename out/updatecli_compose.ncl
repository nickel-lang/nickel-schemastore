# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      env_files
        | Array String
        | doc "Env_files contains a list of environment files"
        | optional,
      environments
        | { _ | String }
        | doc "Environment contains a list of environment variables"
        | optional,
      policies
        | Array
          {
            config
              | Array String
              | doc "Config contains a list of Updatecli config file path"
              | optional,
            name | String | doc "Name contains the policy name" | optional,
            policy
              | String
              | doc "Policy contains the policy OCI name"
              | optional,
            secrets
              | Array String
              | doc "Secrets contains a list of Updatecli secret file path"
              | optional,
            values
              | Array String
              | doc "Values contains a list of Updatecli config file path"
              | optional,
          }
        | doc "Policies contains a list of policies"
        | optional,
    }