# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      gpc
        | Bool
        | doc "Indicates that the server intends to abide by GPC requests.",
      lastUpdate
        | String
        | doc "This indicates the time at which the statement of support was made, such that later changes to the meaning of the GPC standard should not affect the interpretation of the resource for legal purposes. If the member is not in a valid ISO 8601 format, the last update date and time is unknown."
        | optional,
      version | std.number.Integer | optional,
      ..
    }