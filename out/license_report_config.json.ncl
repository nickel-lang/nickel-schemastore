# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      comment
        | { label | String | optional, value | String | optional, .. }
        | doc "export deps. or deps/dev-/opt-/peer- deps. falsey -> output everything"
        | optional,
      delimiter | String | doc "CSV output format" | optional,
      escapeCsvFields
        | Bool
        | doc "CSV output format: escape fields containing delimiter character"
        | optional,
      exclude
        | Array String
        | doc "package names that will be excluded from the report"
        | optional,
      fields
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'author,
                'installedVersion,
                'remoteVersion,
                'link,
                'licenseType,
                'material,
                'licensePeriod,
                'name,
                'relatedTo,
                'department
              |]
            ]
        )
        | doc "fields participating in the report and their order"
        | optional,
      html
        | {
          cssFile | String | optional,
          tableify
            | { _ | Dyn }
            | doc "passed directly to tableify (see: https://github.com/kessler/node-tableify)"
            | optional,
          ..
        }
        | doc "HTML output format"
        | optional,
      httpRetryOptions
        | { delay | Number | optional, maxAttempts | Number | optional, .. }
        | optional,
      only
        | { _ | Dyn }
        | doc "export deps. or deps/dev-/opt-/peer- deps. falsey -> output everything"
        | optional,
      output
        | std.enum.TagOrString
        | [| 'html, 'csv, 'table, 'json |]
        | doc "license report output format"
        | optional,
      package | String | doc "path to the package.json" | optional,
      registry | String | doc "NPM registry URL" | optional,
      ..
    }