# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.UserConfig" =
        {
            _ | std.contract.any_of
              [
                std.contract.Sequence
                  [
                    js2n.array.MaxItems 2,
                    js2n.array.MinItems 2,
                    js2n.array.Items [ String, String ] js2n.Always
                  ],
                js2n.Always,
                String
              ]
          },
    }
    in
  refs."definitions.UserConfig"