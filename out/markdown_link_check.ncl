# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      aliveStatusCodes | Array Number | optional,
      fallbackRetryDelay | String | optional,
      httpHeaders
        | Array
          {
            headers | { _ | String } | optional,
            urls | Array String | optional,
          }
        | optional,
      ignorePatterns | Array { pattern | String, } | optional,
      projectBaseUrl | String | optional,
      replacementPatterns
        | Array { pattern | String, replacement | String, }
        | optional,
      retryCount | Number | optional,
      retryOn429 | Bool | optional,
      timeout | String | optional,
    }