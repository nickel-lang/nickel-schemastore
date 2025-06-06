# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.resource" =
        {
            _ | std.contract.Sequence
              [
                std.contract.any_of [ String, js2n.record.MinProperties 1 ],
                std.contract.any_of
                  [ String, std.contract.Sequence [ js2n.Always, { _ | Dyn } ] ]
              ]
          },
    }
    in
  {
      _ | std.contract.Sequence
        [
          std.contract.any_of [ String, js2n.record.MinProperties 1 ],
          std.contract.any_of [ String, refs."definitions.resource" ]
        ]
    }