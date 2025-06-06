# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.http-method-schema" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'CONNECT,
                'PATCH,
                'DELETE,
                'TRACE,
                'PUT,
                'OPTIONS,
                'HEAD,
                'POST,
                'GET
              |]
            ],
      "definitions.match-condition-schema" =
        {
            methods
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.http-method-schema", String ]
              )
              | doc "This is an array of the HTTP methods to which the proxy will respond. If not specified, the proxy will respond to all HTTP methods on the route."
              | optional,
            route
              | String
              | doc "Required - This defines the route template, controlling to which request URLs your proxy will respond. Unlike in HTTP triggers, there is no default value",
          },
      "definitions.proxy-schema" =
        {
            backendUri
              | String
              | doc "The URL of the backend resource to which the request should be proxied. This value may be templated. If this property is not included, Azure Functions will respond with an HTTP 200 OK"
              | optional,
            debug | Bool | optional,
            desc | Array String | optional,
            disabled | Bool | optional,
            matchCondition
              | refs."definitions.match-condition-schema"
              | { _ | Dyn }
              | doc "Required - an object defining the requests that will trigger the execution of this proxy. It contains two properties shared with HTTP triggers - methods and route",
            requestOverrides
              | refs."definitions.requestOverrides-schema"
              | { _ | Dyn }
              | doc "The requestOverrides object defines changes made to the request when the backend resource is called. You can make changes to the HTTP method, headers, and query string parameters."
              | optional,
            responseOverrides
              | refs."definitions.responseOverrides-schema"
              | { _ | Dyn }
              | doc "The responseOverrides object defines changes made to the response passed back to the client. You can make changes to the response's status code, reason phrase, headers, and body."
              | optional,
          },
      "definitions.request-overrides-value-expression-schema" = String,
      "definitions.requestOverrides-schema" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^backend\\.request\\.headers\\..+$" =
                      std.contract.Sequence
                          [
                            refs."definitions.request-overrides-value-expression-schema",
                            String
                          ],
                    "^backend\\.request\\.querystring\\..+$" =
                      std.contract.Sequence
                          [
                            refs."definitions.request-overrides-value-expression-schema",
                            String
                          ],
                  },
              properties =
                {
                    "backend.request.headers.<HeaderName>" =
                      std.contract.Sequence
                          [
                            refs."definitions.request-overrides-value-expression-schema",
                            String
                          ],
                    "backend.request.method" =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [ refs."definitions.http-method-schema", String ],
                            std.contract.Sequence
                              [
                                refs."definitions.request-overrides-value-expression-schema",
                                String
                              ]
                          ],
                    "backend.request.querystring.<ParameterName>" =
                      std.contract.Sequence
                          [
                            refs."definitions.request-overrides-value-expression-schema",
                            String
                          ],
                  },
              required = {},
            },
      "definitions.response-overrides-value-expression-schema" = String,
      "definitions.responseOverrides-schema" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^response\\.headers\\..+$" =
                      std.contract.Sequence
                          [
                            refs."definitions.response-overrides-value-expression-schema",
                            String
                          ],
                  },
              properties =
                {
                    "response.body" =
                      std.contract.any_of
                          [
                            String,
                            { _ | Dyn },
                            std.contract.Sequence
                              [ js2n.array.MinItems 1, Array ({ _ | Dyn }) ]
                          ],
                    "response.headers.<HeaderName>" =
                      std.contract.Sequence
                          [
                            refs."definitions.response-overrides-value-expression-schema",
                            String
                          ],
                    "response.statusCode" =
                      std.contract.Sequence
                          [
                            refs."definitions.response-overrides-value-expression-schema",
                            String
                          ],
                    "response.statusReason" =
                      std.contract.Sequence
                          [
                            refs."definitions.response-overrides-value-expression-schema",
                            String
                          ],
                  },
              required = {},
            },
    }
    in
  {
      "$schema" | String | optional,
      proxies
        | js2n.record.Record
          {
            additional = 'Some refs."definitions.proxy-schema",
            patterns = {},
            properties = { "<ProxyName>" = refs."definitions.proxy-schema", },
            required = {},
          }
        | doc "The proxies object defines the proxies that will be used by the function app",
    }