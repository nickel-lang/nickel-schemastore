# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      checkSourceFiles
        | Bool
        | doc "Enable type error reporting for source files."
        | optional,
      failFast
        | Bool
        | doc "Stop running tests after the first failed assertion."
        | optional,
      plugins
        | js2n.array.UniqueItems
        | Array String
        | doc "The list of plugins to use."
        | optional,
      rejectAnyType
        | Bool
        | doc "Reject the 'any' type passed as an argument to the 'expect()' function or a matcher."
        | optional,
      rejectNeverType
        | Bool
        | doc "Reject the 'never' type passed as an argument to the 'expect()' function or a matcher."
        | optional,
      reporters
        | js2n.array.UniqueItems
        | Array String
        | doc "The list of reporters to use."
        | optional,
      rootPath
        | String
        | doc "The path to a directory containing files of a test project."
        | optional,
      target
        | js2n.array.UniqueItems
        | Array String
        | doc "The list of TypeScript versions to be tested on."
        | optional,
      testFileMatch
        | js2n.array.UniqueItems
        | Array String
        | doc "The list of glob patterns matching the test files."
        | optional,
      tsconfig
        | String
        | doc "The look up strategy to be used to find the TSConfig file."
        | optional,
      ..
    }