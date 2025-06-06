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
        {
          _ | std.contract.any_of
            [
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  js2n.array.UniqueItems,
                  Array (js2n.string.MinLength 1)
                ],
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { "." = js2n.Nullable String, },
                  properties = {},
                  required = {},
                }
            ]
        },
        js2n.record.FieldsMatch "."
      ]