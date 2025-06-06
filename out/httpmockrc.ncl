# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      mockFileName | String | doc "Root of mock files",
      parseBody | Bool | doc "Parse post body by express.json()" | optional,
      requestHeaders | { _ | Dyn } | doc "Custom request header" | optional,
      responseHeaders | { _ | Dyn } | doc "Custom response header" | optional,
      routes
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "^.*$" =
                    {
                        delay
                          | Number
                          | doc "How many milliseconds are delayed to return a request, general used for control the request sequence"
                          | optional,
                        ignore
                          | Bool
                          | doc "Whether to ignore this rule, generally used for remote interfaces instead of mock in the local"
                          | optional,
                        path | String | doc "Where Mock result file located",
                        validate
                          | { _ | Dyn }
                          | doc "Validate params in body by key and typeof value"
                          | optional,
                        ..
                      },
                },
            properties = {},
            required = {},
          }
        | doc "Rules for proxy and mock",
      ..
    }