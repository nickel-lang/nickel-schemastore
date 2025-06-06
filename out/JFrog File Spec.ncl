# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.any_of
      [
        js2n.Null,
        Bool,
        Number,
        String,
        {
          "$schema"
            | String
            | doc "The schema to verify this document against."
            | optional,
          files
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | doc "Details of files to be uploaded or downloaded from Artifactory."
            | optional,
        },
        Array Dyn
      ]