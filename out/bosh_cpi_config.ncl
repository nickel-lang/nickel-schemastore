# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.CPIConfig" =
        {
            cpis
              | Array (
                std.contract.Sequence [ refs."definitions.CPIs", { _ | Dyn } ]
              )
              | optional,
            ..
          },
      "definitions.CPIs" =
        {
            exec_path | String | optional,
            migrated_from
              | refs."definitions.MigratedFrom"
              | Array Dyn
              | optional,
            name | String,
            properties | { _ | Dyn } | optional,
            type | String,
            ..
          },
      "definitions.MigratedFrom" = Array { name | String, .. },
    }
    in
  refs."definitions.CPIConfig"