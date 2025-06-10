# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      default_entity_handler
        | std.enum.TagOrString
        | [| 'error, 'generate |]
        | optional,
      modules | Array (js2n.string.Matches "^.*\\.yml$"),
    }