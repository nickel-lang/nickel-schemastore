# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      directories
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array (
          std.contract.Sequence
            [ js2n.string.MinLength 1, js2n.string.Matches "[^ ]" ]
        )
        | doc "The directories of tabs",
    }