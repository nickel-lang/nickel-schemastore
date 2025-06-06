# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      identifiers
        | Bool
        | doc "A flag indicating whether to limit the search to nodes with matching identifiers"
        | optional,
      ignore
        | String
        | doc "A regular expression used for matching paths to ignore"
        | optional,
      jsx
        | Bool
        | doc "A flag indicating whether to process JSX files"
        | optional,
      reporter
        | std.enum.TagOrString
        | [| 'pmd, 'json, '"default" |]
        | doc "The name of the reporter to be used"
        | optional,
      suppress
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc "The number of lines at which diffs should be suppressed. A value of 0 is off."
        | optional,
      threshold
        | std.number.Integer
        | doc "A threshold determining the smallest subset of nodes to analyze"
        | optional,
      ..
    }