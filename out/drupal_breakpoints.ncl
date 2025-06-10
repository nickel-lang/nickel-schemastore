# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      _ | {
        group | String | optional,
        label | String | optional,
        mediaQuery | String | optional,
        multipliers
          | js2n.array.UniqueItems
          | Array (js2n.string.Matches "^\\d+(\\.\\d+)?x$")
          | optional,
        weight | std.number.Integer | optional,
      }
    }