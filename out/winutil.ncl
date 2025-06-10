# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.Sequence
      [
        js2n.record.MinProperties 1,
        {
          _ | std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ js2n.string.MinLength 1, js2n.string.Matches "[^ ]" ]
              )
            ]
        },
        js2n.record.FieldsMatch "."
      ]