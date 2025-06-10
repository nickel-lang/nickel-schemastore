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
      allowFailures
        | Bool
        | doc "Allow failures during URL crawling and exit with zero."
        | optional,
      crawler
        | String
        | doc "FQCN of the crawler to use for cache warmup."
        | optional,
      crawlerOptions
        | { _ | Dyn }
        | doc "Additional options for configurable crawlers."
        | optional,
      excludePatterns
        | Array String
        | doc "Patterns of URLs to be excluded from cache warmup."
        | optional,
      format
        | std.enum.TagOrString
        | [| 'text, 'json |]
        | doc "The formatter used to print the cache warmup result."
        | optional,
      limit
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc "Limit the number of URLs to be processed."
        | optional,
      logFile | String | doc "A file where to log crawling results." | optional,
      logLevel
        | std.enum.TagOrString
        | [|
          'debug,
          'info,
          'notice,
          'warning,
          'error,
          'critical,
          'alert,
          'emergency
        |]
        | doc "The log level used to determine which crawling results to log."
        | optional,
      progress
        | Bool
        | doc "Show a progress bar during cache warmup."
        | optional,
      repeatAfter
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc "Run cache warmup in endless loop and repeat x seconds after each run."
        | optional,
      sitemaps
        | Array String
        | doc "URLs or local filenames of XML sitemaps to be warmed up."
        | optional,
      stopOnFailure
        | Bool
        | doc "Cancel further cache warmup requests on failure."
        | optional,
      strategy
        | std.enum.TagOrString
        | [| 'sort-by-priority, 'sort-by-lastmod, 'sort-by-changefreq |]
        | doc "Optional crawling strategy to prepare URLs before crawling them."
        | optional,
      urls | Array String | doc "Additional URLs to be warmed up." | optional,
    }