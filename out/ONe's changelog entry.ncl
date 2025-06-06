# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      apiChange | Bool | doc "Indicates changes in front (app) apis" | optional,
      description | String | doc "Detailed description of change" | optional,
      integrationApiChange
        | Bool
        | doc "Indicates changes in integration apis"
        | optional,
      jira
        | js2n.string.Matches "[A-Z][A-Z0-9]+-[0-9]+"
        | doc "Jira issue key"
        | optional,
      name | String | doc "Short description of change",
      tag | std.enum.TagOrString | [| 'MAJOR, 'MINOR, 'PATCH |],
      ..
    }