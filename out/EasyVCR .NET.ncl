# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  Array
      {
        Duration
          | std.number.Integer
          | doc "How long, in milliseconds, the recorded request took to complete"
          | optional,
        RecordedAt | String | doc "When the request was recorded" | optional,
        Request
          | {
            Body | String | doc "The request body" | optional,
            BodyContentType
              | String
              | doc "The type of content in the request body"
              | optional,
            ContentHeaders
              | { _ | Dyn }
              | doc "The request content headers"
              | optional,
            Method | String | doc "The HTTP method" | optional,
            RequestHeaders | { _ | Dyn } | doc "The request headers" | optional,
            Uri | String | doc "The request URI" | optional,
            ..
          }
          | doc "The request that was recorded"
          | optional,
        Response
          | {
            Body | String | doc "The response body" | optional,
            BodyContentType
              | String
              | doc "The type of content in the response body"
              | optional,
            ContentHeaders
              | { _ | Dyn }
              | doc "The response content headers"
              | optional,
            HttpVersion | String | doc "The HTTP version" | optional,
            ResponseHeaders
              | { _ | Dyn }
              | doc "The response headers"
              | optional,
            Status
              | {
                Code
                  | std.number.Integer
                  | doc "The HTTP status code"
                  | optional,
                Message
                  | String
                  | doc "The HTTP status code description"
                  | optional,
                ..
              }
              | doc "The HTTP status"
              | optional,
            ..
          }
          | doc "The response that was recorded"
          | optional,
        ..
      }