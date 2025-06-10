# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      allowed_patterns
        | Array String
        | doc "Keywords to ignore to reduce the number of false positives"
        | optional,
      custom_patterns
        | Array String
        | doc "You can specify custom regex patterns to look for in the current repository"
        | optional,
      custom_severities
        | Array
          {
            detector | String,
            severity | std.enum.TagOrString | [| 'high, 'medium, 'low |],
            ..
          }
        | doc "Custom detectors severities"
        | optional,
      fileignoreconfig
        | Array
          {
            allowed_patterns
              | Array String
              | doc "Keywords to ignore to reduce the number of false positives"
              | optional,
            checksum
              | String
              | doc "This field should always have the value specified by Talisman message"
              | optional,
            filename | String | doc "Fully qualified filename",
            ignore_detectors
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'filesize, 'filename, 'filecontent |]
                  ]
              )
              | doc "Disable specific detectors for a particular file"
              | optional,
            ..
          }
        | optional,
      scopeconfig
        | Array { scope | String, .. }
        | doc "Talisman is configured to ignore certain files based on the specified scopes"
        | optional,
      threshold
        | std.enum.TagOrString
        | [| 'high, 'medium, 'low |]
        | doc "Default minimal threshold"
        | optional,
      version | String | doc ".talismanrc version" | optional,
    }