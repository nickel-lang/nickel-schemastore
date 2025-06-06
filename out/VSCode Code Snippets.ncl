# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      _ | {
        body
          | std.contract.any_of [ Array String, String ]
          | doc "The snippet content. Use $1, ${1:defaultText} to define cursor positions, use $0 for the final cursor position. Insert variable values with ${varName} and ${varName:defaultText}, e.g. This is file: $TM_FILENAME.",
        description | String | doc "The snippet description." | optional,
        prefix
          | std.contract.any_of [ Array String, String ]
          | doc "The prefix to use when selecting the snippet in intellisense"
          | optional,
        scope
          | String
          | doc "A list of language names to which this snippet applies, seperated by a comma. E.g. \"javascript,typescript\"."
          | optional,
      }
    }