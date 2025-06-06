# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      all
        | Bool
        | doc "Whether or not to instrument all files (not just the ones touched by your test suite)."
        | optional,
      check-coverage
        | Bool
        | doc "Check whether coverage is within thresholds, fail if not"
        | optional,
      exclude
        | Array String
        | doc "List of files to exclude for coverage."
        | optional,
      extends | String | doc "Name of configuration to extend from." | optional,
      extension
        | Array String
        | doc "List of extensions that nyc should attempt to handle in addition to .js"
        | optional,
      include
        | Array String
        | doc "List of files to include for coverage."
        | optional,
      report-dir
        | String
        | doc "Where to put the coverage report files."
        | optional,
      reporter
        | Array String
        | doc "The names of custom reporter to show coverage results."
        | optional,
      skip-full
        | Bool
        | doc "Don't show files with 100% statement, branch, and function coverage"
        | optional,
      temp-dir
        | String
        | doc "Directory to output raw coverage information to."
        | optional,
      ..
    }