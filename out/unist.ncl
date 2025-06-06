# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Point" =
        {
            column
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The column field (1-indexed integer) represents a column in a source file.",
            line
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The line field (1-indexed integer) represents a line in a source file.",
            offset
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "The offset field (0-indexed integer) represents a character in a source file."
              | optional,
          },
      "definitions.Position" =
        {
            end
              | refs."definitions.Point"
              | { _ | Dyn }
              | doc "The end field of Position represents the place of the first character after the parsed source region, whether it exists or not.",
            start
              | refs."definitions.Point"
              | { _ | Dyn }
              | doc "The start field of Position represents the place of the first character of the parsed source region.",
          },
    }
    in
  {
      children
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "The children field is a list representing the children of a node."
        | optional,
      data
        | {  .. }
        | doc "The data field represents information from the ecosystem. The value of the data field implements the Data interface."
        | optional,
      position | refs."definitions.Position" | optional,
      type
        | String
        | doc "The type field is a non-empty string representing the variant of a node. This field can be used to determine the type a node implements.",
      value
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "The value field can contain any value."
        | optional,
      ..
    }