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
        { _ | js2n.string.Matches "^[a-zA-Z0-9-_.]+/[a-zA-Z0-9-_.]+$" },
        js2n.record.FieldsMatch "^\\..+$"
      ]