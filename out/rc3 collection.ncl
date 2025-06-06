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
      auth
        | {
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
        | doc "RC auth that can be stored at Collection, Folder, or Request levels"
        | optional,
      current_environment
        | String
        | doc "The current environment in the collection"
        | optional,
      current_request
        | String
        | doc "The current request in the collection"
        | optional,
      name | String | doc "The name of the collection" | optional,
    }