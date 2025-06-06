# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      concurrency
        | Number
        | doc "The number of connections to make simultaneously."
        | optional,
      config | String | doc "The config file path." | optional,
      directoryListing
        | Bool
        | doc "Automatically serve a static file listing page when serving a directory. Defaults to false."
        | optional,
      format
        | std.enum.TagOrString
        | [| 'csv, 'text, 'json |]
        | doc "Return the data in CSV or JSON format."
        | optional,
      markdown
        | Bool
        | doc "Automatically parse and scan markdown if scanning from a location on disk."
        | optional,
      recurse
        | Bool
        | doc "By default, all scans are shallow. Only the top level links on the requested page will be scanned. By setting recurse to true, the crawler will follow all links on the page, and continue scanning links on the same domain for as long as it can go. Results are cached, so no worries about loops."
        | optional,
      retry
        | std.contract.any_of [ Bool, { _ | Dyn } ]
        | doc "Automatically retry requests that respond with an HTTP 429, and include a retry-after header. The RetryConfig option is a placeholder for fine-grained controls to be implemented at a later time, and is only included here to signal forward-compatibility."
        | optional,
      retryErrors
        | Bool
        | doc "Automatically retry requests that return 5xx or unknown response."
        | optional,
      retryErrorsCount
        | Number
        | doc "How many times should an error be retried?"
        | optional,
      retryErrorsJitter
        | Number
        | doc "Random jitter applied to error retry."
        | optional,
      serverRoot
        | String
        | doc "When scanning a locally directory, customize the location on disk where the server is started. Defaults to the path passed in path."
        | optional,
      silent | Bool | doc "If true, does not show links" | optional,
      skip
        | std.contract.any_of [ String, Array String ]
        | doc "List of urls in regexy form to not include in the check."
        | optional,
      timeout
        | Number
        | doc "By default, requests made by linkinator do not time out (or follow the settings of the OS). This option (in milliseconds) will fail requests after the configured amount of time."
        | optional,
      urlRewriteExpressions
        | Array Dyn
        | doc "Collection of objects that contain a search pattern, and replacement."
        | optional,
      verbosity | String | doc "The output verbosity" | optional,
      ..
    }