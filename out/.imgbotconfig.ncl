# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      aggressiveCompression
        | std.contract.any_of
          [
            Bool,
            std.contract.Sequence
              [ std.enum.TagOrString, [| '"false", '"true" |] ]
          ]
        | optional,
      compressWiki
        | std.contract.any_of
          [
            Bool,
            std.contract.Sequence
              [ std.enum.TagOrString, [| '"false", '"true" |] ]
          ]
        | optional,
      ignoredFiles
        | Array (js2n.string.Matches "^/?([^/]+/)*[^/]+/?$")
        | optional,
      minKBReduced | Number | optional,
      schedule
        | std.enum.TagOrString
        | [| 'monthly, 'weekly, 'daily |]
        | optional,
      ..
    }