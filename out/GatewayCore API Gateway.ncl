# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      routes
        | {
          _ | {
            proxy
              | {
                downstreamResponse
                  | {
                    headers
                      | {
                        addServer
                          | Bool
                          | doc "Specifies if a `server` header should be added. The value of this header is set to `gwcore`."
                          | optional,
                        addVia
                          | Bool
                          | doc "Specifies if the `via` header should be added to the outbound response."
                          | optional,
                        appends
                          | { _ | Array String }
                          | doc "The headers to be appended to the outbound downstream response. If the header already exists, it is kept and the new value is appended. The value can be either text or an expression."
                          | optional,
                        cookies
                          | {
                            _ | {
                              domain
                                | String
                                | doc "It specifies the hosts to which the cookie will be sent and can be an expression. For example, if the value of the Domain attribute is 'example.com', the user agent will include the cookie in the Cookie header when making HTTP requests to example.com, www.example.com, and www.corp.example.com. Use this property to specify or override the domain attribute. Set this value to an empty string (\"\") to remove the domain attribute from the cookie."
                                | optional,
                              httpOnly
                                | Bool
                                | doc "It limits the scope of the cookie to HTTP requests, forbidding JavaScript from accessing the cookie."
                                | optional,
                              sameSite
                                | std.enum.TagOrString
                                | [| 'strict, 'lax, 'none |]
                                | doc "It asserts that a cookie must not be sent with cross-origin requests, providing some protection against cross-site request forgery attacks. The valid values are `strict`, `lax`, and `none`."
                                | optional,
                              secure
                                | Bool
                                | doc "It limits the scope of the cookie to 'secure' channels. A secure cookie is only sent to the server when a request is made using HTTPS."
                                | optional,
                              ..
                            }
                          }
                          | doc "The options that are applied to the `set-cookie` headers in the inbound upstream response. If the cookie name is symbol '*', then the settings are applied to all `set-cookie` headers."
                          | optional,
                        discardEmpty
                          | Bool
                          | doc "Specifies if inbound headers with empty value should be discarded."
                          | optional,
                        discardInboundHeaders
                          | Bool
                          | doc "Specifies if upstream inbound response, content, and trailing headers should be discarded and not forwarded to the downstream client."
                          | optional,
                        discardUnderscore
                          | Bool
                          | doc "Specifies if inbound headers with an underscore in their name should be discarded."
                          | optional,
                        discards
                          | Array String
                          | doc "The inbound upstream headers that should be discarded."
                          | optional,
                        overrides
                          | { _ | Array String }
                          | doc "The headers to be added to the outbound downstream response. If the header already exists, its value is replaced. The value can be either text or an expression."
                          | optional,
                      }
                      | doc "The options that control the downstream response headers sent to the clients."
                      | optional,
                  }
                  | doc "The options that control the downstream responses sent to the clients."
                  | optional,
                proxyName
                  | String
                  | doc "This is an expression that defines the name of this proxy. This value is used in the Via HTTP header send on the outbound upstream request, and the outbound downstream response. If a value is specified, an `x-gwcore-proxy-name` header with this value is also added to the outbound upstream request."
                  | optional,
                to
                  | String
                  | doc "This is an expression that defines the URL of the upstream server to which the downstream request is forwarded to.",
                upstreamRequest
                  | {
                    headers
                      | {
                        addExternalAddress
                          | Bool
                          | doc "Specifies if a `x-gwcore-external-address` header with the IP address of the immediate caller should be added to the outbound upstream request."
                          | optional,
                        appends
                          | { _ | Array String }
                          | doc "The headers to be appended to the outbound upstream requests. If the header already exists, it is kept and the new value is appended. The value can be either text or an expression."
                          | optional,
                        discardEmpty
                          | Bool
                          | doc "Specifies if inbound headers with empty value should be discarded."
                          | optional,
                        discardInboundHeaders
                          | Bool
                          | doc "Specifies if downstream inbound request and content headers should be discarded and not forwarded to the upstream."
                          | optional,
                        discardUnderscore
                          | Bool
                          | doc "Specifies if inbound headers with an underscore in their name should be discarded."
                          | optional,
                        discards | Array String | optional,
                        overrides
                          | { _ | Array String }
                          | doc "The headers to be added to the outbound upstream requests. If the header already exists, its value is replaced. The value can be either text or an expression."
                          | optional,
                        skipForwarded
                          | Bool
                          | doc "Specifies if `forwarded` header and `x-forwarded-*` headers should be skipped from the outbound requests."
                          | optional,
                        skipVia
                          | Bool
                          | doc "Specifies if the `via` header should be skipped from the outbound request."
                          | optional,
                      }
                      | doc "The options that control the upstream request headers."
                      | optional,
                    httpVersion
                      | String
                      | doc "An expression that defines the HTTP protocol version of outbound upstream requests."
                      | optional,
                    sender
                      | {
                        allowAutoRedirect
                          | Bool
                          | doc "Indicates whether the HTTP handler used by the outbound upstream request sender should follow redirection responses."
                          | optional,
                        connectTimeoutInMilliseconds
                          | std.number.Integer
                          | doc "The connect timeout in milliseconds. No timeout is set by default."
                          | optional,
                        expect100ContinueTimeoutInMilliseconds
                          | std.number.Integer
                          | doc "The expect 100 continue timeout in milliseconds."
                          | optional,
                        httpClientName
                          | String
                          | doc "The name of the .NET HttpClient that will be used to send the request. The default value is a system generated unique name."
                          | optional,
                        maxAutomaticRedirections
                          | std.number.Integer
                          | doc "The maximum number of allowed HTTP redirects."
                          | optional,
                        maxConnectionsPerServer
                          | std.number.Integer
                          | doc "The maximum number of simultaneous TCP connections allowed to a single server. No caps are set by default."
                          | optional,
                        maxResponseDrainSizeInBytes
                          | std.number.Integer
                          | doc "The maximum size of data that can be drained from responses in bytes."
                          | optional,
                        maxResponseHeadersLengthInKilobytes
                          | std.number.Integer
                          | doc "The maximum length, in kilobytes (1024 bytes), of the response headers."
                          | optional,
                        pooledConnectionIdleTimeoutInMilliseconds
                          | std.number.Integer
                          | doc "Specifies how long a connection can be idle in the pool to be considered reusable."
                          | optional,
                        pooledConnectionLifetimeInMilliseconds
                          | std.number.Integer
                          | doc "Specifies how long a connection can live in the connection pool. By default, no timeout is set and the connection can stay in the pool."
                          | optional,
                        responseDrainTimeoutInMilliseconds
                          | std.number.Integer
                          | doc "Specifies the response drain timeout."
                          | optional,
                        timeoutInMilliseconds
                          | std.contract.any_of [ std.number.Integer, String ]
                          | doc "The total timeout in milliseconds to wait for the outbound upstream request to complete. This can be a number or an expression."
                          | optional,
                        useCookies
                          | Bool
                          | doc "Indicates whether the HTTP handler used by the outbound upstream request sender should store server cookies and use these cookies when sending requests."
                          | optional,
                      }
                      | doc "The options that control connection to the upstream server."
                      | optional,
                  }
                  | doc "The options that control the upstream requests."
                  | optional,
              }
              | doc "The proxy configuration."
              | optional,
          }
        }
        | doc "This is the section in which proxy routes are defined."
        | optional,
      system
        | {
          routeCacheMaxCount
            | std.number.Integer
            | doc "The maximum number of mappings between \"inbound downstream request path\" and \"outbound upstream request URL\" that can be cached in memory."
            | optional,
        }
        | doc "This section that contains all system wide configurations."
        | optional,
    }