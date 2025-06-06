# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      repo
        | {
          checkout
            | String
            | doc "Branch, tag, or commit to checkout from project to be plagiarized"
            | optional,
          url | String | doc "Git url of project to plagiarize",
          ..
        }
        | doc "Configuration for strings, files, and file paths to replace in target file",
      strings
        | js2n.record.Record
          {
            additional =
              'Some (std.contract.any_of [ Bool, std.number.Integer, String ]),
            patterns = {},
            properties = { project = String, },
            required = { project = true, },
          }
        | doc "Strings to find in target project and be replaced with plagiarized project's values",
      vars
        | { _ | std.contract.any_of [ Bool, std.number.Integer, String ] }
        | doc "Variables available to be used for finding and replacing by variable name. For example `$var_name: hello` would replace string '$var_name' with 'hello' in target project"
        | optional,
      ..
    }