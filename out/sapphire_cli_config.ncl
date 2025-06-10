# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      customFileTemplates
        | {
          enabled | Bool | doc "Enable custom file templates",
          location | String | doc "Location of your custom file templates",
          ..
        }
        | doc "Settings about custom component (piece) templates",
      locations
        | {
          arguments | String,
          base | String,
          commands | String,
          interaction-handlers | String,
          listeners | String,
          preconditions | String,
          routes | String | optional,
          ..
        }
        | doc "Categories and their locations",
      projectLanguage
        | std.enum.TagOrString
        | [| 'js, 'ts |]
        | doc "Project language (ts | js)",
      ..
    }