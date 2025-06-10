# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      category
        | String
        | doc "Rudder category to put the technique in"
        | optional,
      description
        | String
        | doc "Single line description of what the technique does"
        | optional,
      documentation
        | String
        | doc "Technique documentation in Markdown format"
        | optional,
      format | Number | optional,
      id
        | js2n.string.Matches "^[a-zA-Z0-9_]+$"
        | doc "Technique, must match the '^[a-zA-Z0-9_]+$' pattern",
      items
        | js2n.array.MinItems 1
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "List of block or method calls, can not be empty",
      name | String | doc "Human readable technique name",
      params
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "List of the technique parameters"
        | optional,
      tags
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Optional key-value metadata"
        | optional,
      version
        | js2n.string.Matches "^[0-9]+\\.[0-9]+$"
        | doc "Technique version in the 'X.Y' format",
    }