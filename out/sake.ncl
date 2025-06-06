# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      case_converting_strategy
        | std.enum.TagOrString
        | [| 'toKebabCase, 'toSnakeCase, 'keepOriginal |]
        | doc "Strategy for converting command names"
        | optional,
      sake_app_path | String | doc "Path to the SakeApp package" | optional,
      sake_app_prebuilt_binary_path
        | String
        | doc "Path to the prebuilt SakeApp executable"
        | optional,
    }