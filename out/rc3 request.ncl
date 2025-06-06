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
      body
        | { json | { _ | Dyn } | optional, text | String | optional, }
        | doc "The body of the request"
        | optional,
      comment
        | String
        | doc "A comment to provide documentation for this request"
        | optional,
      extract
        | {
          env
            | std.enum.TagOrString
            | [| 'current, 'global |]
            | doc "Choose to store the extracted field in either the global env (default), or currently selected env from your collection"
            | optional,
          json_path
            | String
            | doc "A JSON Path expression to extract a single field from JSON"
            | optional,
          text_pattern
            | String
            | doc "A Python regex pattern with a single REGEX GROUP to be extracted from the response"
            | optional,
          var
            | String
            | doc "The var name (default is token) in the environment to store the extracted value in"
            | optional,
        }
        | doc "JSON node, or Text pattern (with regex group) to extract from response"
        | optional,
      form_data
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Form x-www-form-urlencoded data to pass in the request body"
        | optional,
      headers
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "The HTTP headers to send with this request"
        | optional,
      method
        | std.enum.TagOrString
        | [| 'OPTIONS, 'HEAD, 'DELETE, 'PATCH, 'PUT, 'POST, 'GET |]
        | doc "The HTTP method to use for this request"
        | optional,
      params
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "The query parameters to send with this request"
        | optional,
      save_responses
        | Bool
        | doc "Whether to save .response files in the same dir as the .request file"
        | optional,
      url | String | doc "The URL to use for this request" | optional,
    }