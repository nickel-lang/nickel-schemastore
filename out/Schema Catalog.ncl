# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema"
        | std.enum.TagOrString
        | [| '"https://json.schemastore.org/schema-catalog.json" |]
        | doc "Link to https://json.schemastore.org/schema-catalog.json",
      schemas
        | Array
          {
            description | String | doc "A description of the schema",
            fileMatch
              | js2n.array.UniqueItems
              | Array String
              | doc "A Minimatch glob expression for matching up file names with a schema."
              | optional,
            name | String | doc "The name of the schema",
            url
              | js2n.string.Matches "^https://"
              | doc "An absolute URL to the schema location",
            versions
              | { _ | js2n.string.Matches "^https://" }
              | doc "A set of specific version to schema mappings"
              | optional,
          }
        | doc "A list of JSON schema references.",
      version | Number | doc "The schema version of the catalog",
    }