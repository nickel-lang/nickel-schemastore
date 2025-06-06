# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      bearer_token
        | String
        | doc "The bearer token (for bearer auth type)"
        | optional,
      password | String | doc "The basic auth password" | optional,
      token_header
        | String
        | doc "The HTTP Header name (for token auth type)"
        | optional,
      token_value
        | String
        | doc "The HTTP Header value (for token auth type)"
        | optional,
      type
        | std.enum.TagOrString
        | [| 'inherit, 'basic, 'bearer, 'token, 'none |]
        | doc "The type of authentication"
        | optional,
      username | String | doc "The basic auth username" | optional,
    }