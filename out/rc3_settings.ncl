# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema"
        | String
        | doc "The JSON schema to use for validation"
        | optional,
      ca_bundle
        | String
        | doc "Path to Python-like CA truststore file"
        | optional,
      ca_cert_verification
        | Bool
        | doc "Whether to verify SSL certificates"
        | optional,
      collections
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "The list of collections (each collection should be an absolute path to the collection root directory)"
        | optional,
      current_collection | String | doc "The current collection" | optional,
      follow_redirects | Bool | doc "Whether to follow redirects" | optional,
      headers_send_nocache
        | Bool
        | doc "Whether to send no-cache headers"
        | optional,
      indent
        | std.number.Integer
        | doc "Indentation width for JSON output"
        | optional,
      indent_type
        | std.enum.TagOrString
        | [| 'tab, 'space |]
        | doc "Indentation type for JSON output"
        | optional,
      request_timeout_seconds
        | std.number.Integer
        | doc "Timeout for requests in seconds"
        | optional,
      save_responses
        | Bool
        | doc "Whether to save .response files in the same dir as the .request file"
        | optional,
    }