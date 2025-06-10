# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.DeployConfig" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        exclude =
                          std.contract.Sequence
                              [ refs."definitions.Deployments", Array Dyn ],
                        flags =
                          std.contract.Sequence
                              [ refs."definitions.Flags", Array Dyn ],
                      },
                  required = { flags = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        flags =
                          std.contract.Sequence
                              [ refs."definitions.Flags", Array Dyn ],
                        include =
                          std.contract.Sequence
                              [ refs."definitions.Deployments", Array Dyn ],
                      },
                  required = { flags = true, },
                }
            ],
      "definitions.Deployments" = Array String,
      "definitions.Flags" =
        Array (
            js2n.string.Matches
              "^(fix|fix-releases|recreate|recreate-persistent-disks)$"
          ),
    }
    in
  refs."definitions.DeployConfig"