# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      build
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc "Build version number",
      major
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc "Major version number",
      minor
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc "Minor version number",
      patch
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc "Patch version number",
      strategy
        | std.enum.TagOrString
        | [| 'semver, 'date |]
        | doc "The strategy to use for versioning. Accepted values are 'date' or 'semver'."
        | optional,
    }