# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema" | String | optional,
      cacheTtl
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc "Remove cached HTTP responses older than cacheTtl seconds old. Specifying 0 clears and disables cache completely"
        | optional,
      customCatalog
        | {
          schemas
            | Array
              {
                description
                  | String
                  | doc "A description of the schema"
                  | optional,
                fileMatch
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "A Minimatch glob expression for matching up file names with a schema.",
                location
                  | String
                  | doc "A URL or local file path for the schema location",
                name | String | doc "The name of the schema",
                parser
                  | String
                  | doc "A custom parser to use for files matching fileMatch instead of trying to infer the correct parser from the filename. 'json', 'json5', 'toml' and 'yaml' are always valid. Plugins may define additional values which are valid here."
                  | optional,
              }
            | doc "A list of JSON schema references.",
          ..
        }
        | doc "A custom schema catalog. This catalog will be searched ahead of any custom catalogs passed using --catalogs or SchemaStore.org"
        | optional,
      ignoreErrors
        | Bool
        | doc "Exit with code 0 even if an error was encountered. True means a non-zero exit code is only issued if validation could be completed successfully and one or more files were invalid"
        | optional,
      ignorePatternFiles
        | js2n.array.UniqueItems
        | Array String
        | doc "A list of files containing glob patterns to ignore"
        | optional,
      outputFormat
        | String
        | doc "Output format for validation results. 'text' and 'json' are always valid. Plugins may define additional values which are valid here."
        | optional,
      patterns
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array String
        | doc "One or more filenames or glob patterns describing local file or files to validate"
        | optional,
      plugins
        | js2n.array.UniqueItems
        | Array (js2n.string.Matches "^(package:|file:)")
        | doc "An array of strings describing v8r plugins to load"
        | optional,
      verbose
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc "Level of verbose logging. 0 is standard, higher numbers are more verbose"
        | optional,
    }