# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.addPrefixMiddleware" =
        {
            prefix
              | String
              | doc "prefix is the string to add before the current path in the requested URL. It should include the leading slash (/)."
              | optional,
          },
      "definitions.basicAuthMiddleware" =
        {
            headerField
              | String
              | doc "You can define a header field to store the authenticated user using the headerField option."
              | optional,
            realm
              | String
              | doc "You can customize the realm for the authentication with the realm option. The default value is traefik."
              | optional,
            removeHeader
              | Bool
              | doc "Set the removeHeader option to true to remove the authorization header before forwarding the request to your service. (Default value is false.)"
              | optional,
            users
              | Array String
              | doc "The users option is an array of authorized users. Each user will be declared using the `name:hashed-password` format."
              | optional,
            usersFile
              | String
              | doc m%"
                The usersFile option is the path to an external file that contains the authorized users for the middleware.
                
                The file content is a list of `name:hashed-password`.
              "%
              | optional,
            ..
          },
      "definitions.bufferingMiddleware" =
        {
            maxRequestBodyBytes
              | std.number.Integer
              | doc m%"
                With the maxRequestBodyBytes option, you can configure the maximum allowed body size for the request (in Bytes).
                
                If the request exceeds the allowed size, it is not forwarded to the service and the client gets a 413 (Request Entity Too Large) response.
              "%
              | optional,
            maxResponseBodyBytes
              | std.number.Integer
              | doc m%"
                With the maxResponseBodyBytes option, you can configure the maximum allowed response size from the service (in Bytes).
                
                If the response exceeds the allowed size, it is not forwarded to the client. The client gets a 413 (Request Entity Too Large) response instead.
              "%
              | optional,
            memRequestBodyBytes
              | std.number.Integer
              | doc "You can configure a threshold (in Bytes) from which the request will be buffered on disk instead of in memory with the memRequestBodyBytes option."
              | optional,
            memResponseBodyBytes
              | std.number.Integer
              | doc "You can configure a threshold (in Bytes) from which the response will be buffered on disk instead of in memory with the memResponseBodyBytes option."
              | optional,
            retryExpression
              | String
              | doc "You can have the Buffering middleware replay the request with the help of the retryExpression option."
              | optional,
          },
      "definitions.chainMiddleware" =
        { middlewares | js2n.array.MinItems 1 | Array String | optional, },
      "definitions.circuitBreakerMiddleware" =
        {
            checkPeriod
              | String
              | doc "The interval between successive checks of the circuit breaker condition (when in standby state)"
              | optional,
            expression
              | String
              | doc "You can specify an expression that, once matched, will trigger the circuit breaker (and apply the fallback mechanism instead of calling your services)."
              | optional,
            fallbackDuration
              | String
              | doc "The duration for which the circuit breaker will wait before trying to recover (from a tripped state)."
              | optional,
            recoveryDuration
              | String
              | doc "The duration for which the circuit breaker will try to recover (as soon as it is in recovering state)."
              | optional,
            responseCode
              | std.number.Integer
              | doc "The status code that the circuit breaker will return while it is in the open state."
              | optional,
          },
      "definitions.compressMiddleware" =
        {
            defaultEncoding
              | String
              | doc "defaultEncoding specifies the default encoding if the Accept-Encoding header is not in the request or contains a wildcard (*)."
              | optional,
            encodings
              | Array String
              | doc "encodings specifies the list of supported compression encodings. At least one encoding value must be specified, and valid entries are zstd (Zstandard), br (Brotli), and gzip (Gzip). The order of the list also sets the priority, the top entry has the highest priority."
              | optional,
            excludedContentTypes
              | Array String
              | doc m%"
                excludedContentTypes specifies a list of content types to compare the Content-Type header of the incoming requests to before compressing.
                
                The requests with content types defined in excludedContentTypes are not compressed.
                
                Content types are compared in a case-insensitive, whitespace-ignored manner.
              "%
              | optional,
            includedContentTypes
              | Array String
              | doc m%"
                includedContentTypes specifies a list of content types to compare the Content-Type header of the responses before compressing.
                
                The responses with content types defined in includedContentTypes are compressed.
                
                Content types are compared in a case-insensitive, whitespace-ignored manner.
              "%
              | optional,
            minResponseBodyBytes
              | std.number.Integer
              | doc "specifies the minimum amount of bytes a response body must have to be compressed."
              | optional,
          },
      "definitions.contentTypeMiddleware" =
        {
            autoDetect
              | Bool
              | doc "autoDetect specifies whether to let the Content-Type header, if it has not been set by the backend, be automatically set to a value derived from the contents of the response."
              | optional,
          },
      "definitions.digestAuthMiddleware" =
        {
            headerField
              | String
              | doc "You can customize the header field for the authenticated user using the headerField option."
              | optional,
            realm
              | String
              | doc "You can customize the realm for the authentication with the realm option. The default value is traefik."
              | optional,
            removeHeader
              | Bool
              | doc "Set the removeHeader option to true to remove the authorization header before forwarding the request to your service. (Default value is false.)"
              | optional,
            users
              | Array String
              | doc "The users option is an array of authorized users. Each user will be declared using the `name:realm:encoded-password` format."
              | optional,
            usersFile
              | String
              | doc m%"
                The usersFile option is the path to an external file that contains the authorized users for the middleware.
                
                The file content is a list of `name:realm:encoded-password`.
              "%
              | optional,
          },
      "definitions.errorsMiddleware" =
        {
            query
              | String
              | doc "The URL for the error page (hosted by service). You can use {status} in the query, that will be replaced by the received status code."
              | optional,
            service
              | String
              | doc "The service that will serve the new requested error page."
              | optional,
            status
              | Array String
              | doc m%"
                The status that will trigger the error page.
                
                The status code ranges are inclusive (500-599 will trigger with every code between 500 and 599, 500 and 599 included). You can define either a status code like 500 or ranges with a syntax like 500-599.
              "%
              | optional,
          },
      "definitions.forwardAuthMiddleware" =
        {
            addAuthCookiesToResponse
              | Array String
              | doc "The addAuthCookiesToResponse option is the list of cookies to copy from the authentication server to the response, replacing any existing conflicting cookie from the forwarded response."
              | optional,
            address
              | String
              | doc "The address option defines the authentication server address."
              | optional,
            authRequestHeaders
              | Array String
              | doc "The authRequestHeaders option is the list of the headers to copy from the request to the authentication server."
              | optional,
            authResponseHeaders
              | Array String
              | doc "The authResponseHeaders option is the list of the headers to copy from the authentication server to the request."
              | optional,
            authResponseHeadersRegex
              | String
              | doc "The authResponseHeadersRegex option is the regex to match headers to copy from the authentication server response and set on forwarded request, after stripping all headers that match the regex."
              | optional,
            tls
              | {
                ca
                  | String
                  | doc "Certificate Authority used for the secured connection to the authentication server."
                  | optional,
                cert
                  | String
                  | doc "Public certificate used for the secured connection to the authentication server."
                  | optional,
                insecureSkipVerify
                  | Bool
                  | doc "If insecureSkipVerify is true, TLS for the connection to authentication server accepts any certificate presented by the server and any host name in that certificate."
                  | optional,
                key
                  | String
                  | doc "Private certificate used for the secure connection to the authentication server."
                  | optional,
                ..
              }
              | doc "The tls option is the TLS configuration from Traefik to the authentication server."
              | optional,
            trustForwardHeader
              | Bool
              | doc "Set the trustForwardHeader option to true to trust all the existing X-Forwarded-* headers."
              | optional,
          },
      "definitions.grpcWebMiddleware" =
        {
            allowOrigins
              | Array String
              | doc "The allowOrigins contains the list of allowed origins. A wildcard origin * can also be configured to match all requests."
              | optional,
          },
      "definitions.headersMiddleware" =
        {
            accessControlAllowCredentials
              | Bool
              | doc "The accessControlAllowCredentials indicates whether the request can include user credentials."
              | optional,
            accessControlAllowHeaders
              | Array String
              | doc "The accessControlAllowHeaders indicates which header field names can be used as part of the request."
              | optional,
            accessControlAllowMethods
              | Array String
              | doc "The accessControlAllowMethods indicates which methods can be used during requests."
              | optional,
            accessControlAllowOriginList
              | Array String
              | doc m%"
                The accessControlAllowOriginList indicates whether a resource can be shared by returning different values.
                
                A wildcard origin * can also be configured, and will match all requests. If this value is set by a backend server, it will be overwritten by Traefik
                
                This value can contain a list of allowed origins.
              "%
              | optional,
            accessControlAllowOriginListRegex
              | Array String
              | doc "The accessControlAllowOriginListRegex option is the counterpart of the accessControlAllowOriginList option with regular expressions instead of origin values."
              | optional,
            accessControlExposeHeaders
              | Array String
              | doc "The accessControlExposeHeaders indicates which headers are safe to expose to the api of a CORS API specification."
              | optional,
            accessControlMaxAge
              | std.number.Integer
              | doc "The accessControlMaxAge indicates how long (in seconds) a preflight request can be cached."
              | optional,
            addVaryHeader
              | Bool
              | doc "The addVaryHeader is used in conjunction with accessControlAllowOriginList to determine whether the vary header should be added or modified to demonstrate that server responses can differ based on the value of the origin header."
              | optional,
            allowedHosts
              | Array String
              | doc "The allowedHosts option lists fully qualified domain names that are allowed."
              | optional,
            browserXssFilter
              | Bool
              | doc "Set browserXssFilter to true to add the X-XSS-Protection header with the value 1; mode=block."
              | optional,
            contentSecurityPolicy
              | String
              | doc "The contentSecurityPolicy option allows the Content-Security-Policy header value to be set with a custom value."
              | optional,
            contentSecurityPolicyReportOnly
              | String
              | doc "The contentSecurityPolicyReportOnly option allows the Content-Security-Policy-Report-Only header value to be set with a custom value."
              | optional,
            contentTypeNosniff
              | Bool
              | doc "Set contentTypeNosniff to true to add the X-Content-Type-Options header with the value nosniff."
              | optional,
            customBrowserXSSValue
              | String
              | doc "The customBrowserXssValue option allows the X-XSS-Protection header value to be set with a custom value. This overrides the BrowserXssFilter option."
              | optional,
            customFrameOptionsValue
              | String
              | doc "The customFrameOptionsValue allows the X-Frame-Options header value to be set with a custom value. This overrides the FrameDeny option."
              | optional,
            customRequestHeaders
              | { _ | String }
              | doc "The customRequestHeaders option lists the Header names and values to apply to the request."
              | optional,
            customResponseHeaders
              | { _ | String }
              | doc "The customResponseHeaders option lists the Header names and values to apply to the response."
              | optional,
            featurePolicy
              | String
              | doc "The featurePolicy allows sites to control browser features."
              | optional,
            forceSTSHeader
              | Bool
              | doc "Set forceSTSHeader to true, to add the STS header even when the connection is HTTP."
              | optional,
            frameDeny
              | Bool
              | doc "Set frameDeny to true to add the X-Frame-Options header with the value of DENY."
              | optional,
            hostsProxyHeaders
              | Array String
              | doc "The hostsProxyHeaders option is a set of header keys that may hold a proxied hostname value for the request."
              | optional,
            isDevelopment
              | Bool
              | doc m%"
                Set isDevelopment to true when developing. The AllowedHosts, SSL, and STS options can cause some unwanted effects. Usually testing happens on http, not https, and on localhost, not your production domain.
                If you would like your development environment to mimic production with complete Host blocking, SSL redirects, and STS headers, leave this as false.
              "%
              | optional,
            permissionsPolicy
              | String
              | doc "The permissionsPolicy allows sites to control browser features."
              | optional,
            publicKey
              | String
              | doc "The publicKey implements HPKP to prevent MITM attacks with forged certificates."
              | optional,
            referrerPolicy
              | String
              | doc "The referrerPolicy allows sites to control when browsers will pass the Referer header to other sites."
              | optional,
            sslForceHost
              | Bool
              | doc "Set sslForceHost to true and set SSLHost to forced requests to use SSLHost even the ones that are already using SSL."
              | optional,
            sslHost
              | String
              | doc "The sslHost option is the host name that is used to redirect http requests to https."
              | optional,
            sslProxyHeaders
              | { _ | String }
              | doc "The sslProxyHeaders option is set of header keys with associated values that would indicate a valid https request. Useful when using other proxies with header like: \"X-Forwarded-Proto\": \"https\"."
              | optional,
            sslRedirect
              | Bool
              | doc "The sslRedirect is set to true, then only allow https requests."
              | optional,
            sslTemporaryRedirect
              | Bool
              | doc "Set the sslTemporaryRedirect to true to force an SSL redirection using a 302 (instead of a 301)."
              | optional,
            stsIncludeSubdomains
              | Bool
              | doc "The stsIncludeSubdomains is set to true, the includeSubDomains directive will be appended to the Strict-Transport-Security header."
              | optional,
            stsPreload
              | Bool
              | doc "Set stsPreload to true to have the preload flag appended to the Strict-Transport-Security header."
              | optional,
            stsSeconds
              | std.number.Integer
              | doc "The stsSeconds is the max-age of the Strict-Transport-Security header. If set to 0, would NOT include the header."
              | optional,
          },
      "definitions.httpFailoverService" =
        {
            fallback | String | optional,
            healthCheck | { _ | Dyn } | optional,
            service | String | optional,
          },
      "definitions.httpLoadBalancerService" =
        {
            healthCheck
              | {
                followRedirects
                  | Bool
                  | doc "Defines whether redirects should be followed during the health check calls (default: true)."
                  | optional,
                headers
                  | { _ | String }
                  | doc "Defines custom headers to be sent to the health check endpoint."
                  | optional,
                hostname
                  | String
                  | doc "If defined, will apply Host header hostname to the health check request."
                  | optional,
                interval
                  | String
                  | doc "Defines the frequency of the health check calls. Interval is to be given in a format understood by `time.ParseDuration`. The interval must be greater than the timeout. If configuration doesn't reflect this, the interval will be set to timeout + 1 second."
                  | optional,
                method
                  | String
                  | doc "If defined, will apply this Method for the health check request."
                  | optional,
                path
                  | String
                  | doc "path is appended to the server URL to set the health check endpoint."
                  | optional,
                port
                  | std.number.Integer
                  | doc "If defined, will replace the server URL port for the health check endpoint."
                  | optional,
                scheme
                  | String
                  | doc "If defined, will replace the server URL scheme for the health check endpoint"
                  | optional,
                timeout
                  | String
                  | doc "Defines the maximum duration Traefik will wait for a health check request before considering the server failed (unhealthy). Timeout is to be given in a format understood by `time.ParseDuration`."
                  | optional,
                ..
              }
              | doc "Configure health check to remove unhealthy servers from the load balancing rotation. Traefik will consider your servers healthy as long as they return status codes between 2XX and 3XX to the health check requests (carried out every interval). Traefik keeps monitoring the health of unhealthy servers. If a server has recovered (returning 2xx -> 3xx responses again), it will be added back to the load balancer rotation pool."
              | optional,
            passHostHeader
              | Bool
              | doc "The passHostHeader allows to forward client Host header to server. By default, passHostHeader is true."
              | optional,
            responseForwarding
              | {
                flushInterval
                  | String
                  | doc "Specifies the interval in between flushes to the client while copying the response body. It is a duration in milliseconds, defaulting to 100. A negative value means to flush immediately after each write to the client. The flushInterval is ignored when ReverseProxy recognizes a response as a streaming response; for such responses, writes are flushed to the client immediately."
                  | optional,
                ..
              }
              | doc "Defines how Traefik forwards the response from the backend server to the client."
              | optional,
            servers
              | js2n.array.MinItems 1
              | Array
                {
                  url
                    | String
                    | doc "The url option point to a specific instance. Paths in the servers' url have no effect. If you want the requests to be sent to a specific path on your servers, configure your routers to use a corresponding middleware (e.g. the AddPrefix or ReplacePath) middlewares.",
                  ..
                }
              | doc "Servers declare a single instance of your program.",
            serversTransport | String | optional,
            sticky
              | {
                cookie
                  | {
                    httpOnly | Bool | optional,
                    name
                      | String
                      | doc "The default cookie name is an abbreviation of a sha1 (ex: _1d52e)."
                      | optional,
                    sameSite
                      | String
                      | doc "Can be none, lax, strict or empty."
                      | optional,
                    secure | Bool | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | doc "When sticky sessions are enabled, a cookie is set on the initial request and response to let the client know which server handles the first response. On subsequent requests, to keep the session alive with the same server, the client should resend the same cookie."
              | optional,
          },
      "definitions.httpMiddleware" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                addPrefix =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.addPrefixMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                basicAuth =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.basicAuthMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                buffering =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.bufferingMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                chain =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.chainMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                circuitBreaker =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.circuitBreakerMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                compress =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.compressMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                contentType =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.contentTypeMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                digestAuth =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.digestAuthMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                errors =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.errorsMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                forwardAuth =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.forwardAuthMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                grpcWeb =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.grpcWebMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                headers =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.headersMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                ipWhiteList =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.ipWhiteListMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                ipAllowList =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.ipAllowListMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                inFlightReq =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.inFlightReqMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                passTLSClientCert =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.passTLSClientCertMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                plugin =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.pluginMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                rateLimit =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.rateLimitMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                redirectRegex =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.redirectRegexMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                redirectScheme =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.redirectSchemeMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                replacePath =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.replacePathMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                replacePathRegex =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.replacePathRegexMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                retry =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.retryMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                stripPrefix =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.stripPrefixMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                stripPrefixRegex =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.stripPrefixRegexMiddleware",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ],
              { _ | Dyn }
            ],
      "definitions.httpMirroringService" =
        {
            healthCheck | { _ | Dyn } | optional,
            maxBodySize
              | std.number.Integer
              | doc "maxBodySize is the maximum size allowed for the body of the request. If the body is larger, the request is not mirrored. Default value is -1, which means unlimited size."
              | optional,
            mirrors
              | Array
                {
                  name | String | optional,
                  percent
                    | js2n.number.Maximum 100
                    | js2n.number.Minimum 0
                    | optional,
                  ..
                }
              | optional,
            service | String | optional,
          },
      "definitions.httpRouter" =
        {
            entryPoints
              | Array String
              | doc "If not specified, HTTP routers will accept requests from all defined entry points. If you want to limit the router scope to a set of entry points, set the entryPoints option."
              | optional,
            middlewares
              | Array String
              | doc "You can attach a list of middlewares to each HTTP router. The middlewares will take effect only if the rule matches, and before forwarding the request to the service. Middlewares are applied in the same order as their declaration in router."
              | optional,
            "priority"
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "To avoid path overlap, routes are sorted, by default, in descending order using rules length. The priority is directly equal to the length of the rule, and so the longest length has the highest priority. A value of 0 for the priority is ignored: priority = 0 means that the default rules length sorting is used."
              | optional,
            rule
              | String
              | doc "Rules are a set of matchers configured with values, that determine if a particular request matches specific criteria. If the rule is verified, the router becomes active, calls middlewares, and then forwards the request to the service.",
            ruleSyntax
              | String
              | doc "In Traefik v3 a new rule syntax has been introduced (migration guide). ruleSyntax option allows to configure the rule syntax to be used for parsing the rule on a per-router basis. This allows to have heterogeneous router configurations and ease migration."
              | optional,
            service
              | String
              | doc "Each request must eventually be handled by a service, which is why each router definition should include a service target, which is basically where the request will be passed along to. HTTP routers can only target HTTP services (not TCP services).",
            tls
              | {
                certResolver
                  | String
                  | doc "If certResolver is defined, Traefik will try to generate certificates based on routers Host & HostSNI rules."
                  | optional,
                domains
                  | Array
                    {
                      main
                        | String
                        | doc "Main defines the main domain name."
                        | optional,
                      sans
                        | Array String
                        | doc "SANs defines the subject alternative domain names."
                        | optional,
                      ..
                    }
                  | doc "You can set SANs (alternative domains) for each main domain. Every domain must have A/AAAA records pointing to Traefik. Each domain & SAN will lead to a certificate request."
                  | optional,
                options
                  | String
                  | doc "The options field enables fine-grained control of the TLS parameters. It refers to a TLS Options and will be applied only if a Host rule is defined."
                  | optional,
                ..
              }
              | doc "When a TLS section is specified, it instructs Traefik that the current router is dedicated to HTTPS requests only (and that the router should ignore HTTP (non TLS) requests). Traefik will terminate the SSL connections (meaning that it will send decrypted data to the services). If you need to define the same route for both HTTP and HTTPS requests, you will need to define two different routers: one with the tls section, one without."
              | optional,
          },
      "definitions.httpService" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                loadBalancer =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.httpLoadBalancerService",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                weighted =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.httpWeightedService",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                mirroring =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.httpMirroringService",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                failover =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.httpFailoverService",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ],
              { _ | Dyn }
            ],
      "definitions.httpWeightedService" =
        {
            healthCheck | { _ | Dyn } | optional,
            services
              | Array
                { name | String | optional, weight | Number | optional, .. }
              | optional,
            sticky
              | {
                cookie
                  | {
                    httpOnly | Bool | optional,
                    name
                      | String
                      | doc "The default cookie name is an abbreviation of a sha1 (ex: _1d52e)."
                      | optional,
                    sameSite
                      | String
                      | doc "Can be none, lax, strict or empty."
                      | optional,
                    secure | Bool | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | doc "When sticky sessions are enabled, a cookie is set on the initial request and response to let the client know which server handles the first response. On subsequent requests, to keep the session alive with the same server, the client should resend the same cookie."
              | optional,
          },
      "definitions.inFlightReqMiddleware" =
        {
            amount
              | std.number.Integer
              | doc "The amount option defines the maximum amount of allowed simultaneous in-flight request. The middleware will return an HTTP 429 Too Many Requests if there are already amount requests in progress (based on the same sourceCriterion strategy)."
              | optional,
            sourceCriterion
              | refs."definitions.sourceCriterion"
              | { _ | Dyn }
              | optional,
          },
      "definitions.ipAllowListMiddleware" =
        {
            ipStrategy | refs."definitions.ipStrategy" | { _ | Dyn } | optional,
            rejectStatusCode
              | std.number.Integer
              | doc "RejectStatusCode defines the HTTP status code used for refused requests. If not set, the default is 403 (Forbidden)."
              | optional,
            sourceRange
              | Array String
              | doc "The sourceRange option sets the allowed IPs (or ranges of allowed IPs by using CIDR notation)."
              | optional,
          },
      "definitions.ipStrategy" =
        {
            depth
              | std.number.Integer
              | doc "The depth option tells Traefik to use the X-Forwarded-For header and take the IP located at the depth position (starting from the right). If depth is greater than the total number of IPs in X-Forwarded-For, then the client IP will be empty. depth is ignored if its value is lesser than or equal to 0."
              | optional,
            excludedIPs
              | Array String
              | doc "excludedIPs tells Traefik to scan the X-Forwarded-For header and pick the first IP not in the list. If depth is specified, excludedIPs is ignored."
              | optional,
          },
      "definitions.ipWhiteListMiddleware" =
        {
            ipStrategy | refs."definitions.ipStrategy" | { _ | Dyn } | optional,
            sourceRange
              | Array String
              | doc "The sourceRange option sets the allowed IPs (or ranges of allowed IPs by using CIDR notation)."
              | optional,
          },
      "definitions.passTLSClientCertMiddleware" =
        {
            info
              | {
                issuer
                  | {
                    commonName
                      | Bool
                      | doc "Set the commonName option to true to add the commonName information into the issuer."
                      | optional,
                    country
                      | Bool
                      | doc "Set the country option to true to add the country information into the issuer."
                      | optional,
                    domainComponent
                      | Bool
                      | doc "Set the domainComponent option to true to add the domainComponent information into the issuer."
                      | optional,
                    locality
                      | Bool
                      | doc "Set the locality option to true to add the locality information into the issuer."
                      | optional,
                    organization
                      | Bool
                      | doc "Set the organization option to true to add the organization information into the issuer."
                      | optional,
                    province
                      | Bool
                      | doc "Set the province option to true to add the province information into the issuer."
                      | optional,
                    serialNumber
                      | Bool
                      | doc "Set the serialNumber option to true to add the serialNumber information into the issuer."
                      | optional,
                    ..
                  }
                  | doc "The issuer select the specific client certificate issuer details you want to add to the X-Forwarded-Tls-Client-Cert-Info header."
                  | optional,
                notAfter
                  | Bool
                  | doc "Set the notAfter option to true to add the Not After information from the Validity part."
                  | optional,
                notBefore
                  | Bool
                  | doc "Set the notBefore option to true to add the Not Before information from the Validity part."
                  | optional,
                sans
                  | Bool
                  | doc "Set the sans option to true to add the Subject Alternative Name information from the Subject Alternative Name part."
                  | optional,
                subject
                  | {
                    commonName
                      | Bool
                      | doc "Set the commonName option to true to add the commonName information into the subject."
                      | optional,
                    country
                      | Bool
                      | doc "Set the country option to true to add the country information into the subject."
                      | optional,
                    domainComponent
                      | Bool
                      | doc "Set the domainComponent option to true to add the domainComponent information into the subject."
                      | optional,
                    locality
                      | Bool
                      | doc "Set the locality option to true to add the locality information into the subject."
                      | optional,
                    organization
                      | Bool
                      | doc "Set the organization option to true to add the organization information into the subject."
                      | optional,
                    province
                      | Bool
                      | doc "Set the province option to true to add the province information into the subject."
                      | optional,
                    serialNumber
                      | Bool
                      | doc "Set the serialNumber option to true to add the serialNumber information into the subject."
                      | optional,
                    ..
                  }
                  | doc "The subject select the specific client certificate subject details you want to add to the X-Forwarded-Tls-Client-Cert-Info header."
                  | optional,
                ..
              }
              | doc "The info option select the specific client certificate details you want to add to the X-Forwarded-Tls-Client-Cert-Info header. The value of the header will be an escaped concatenation of all the selected certificate details."
              | optional,
            pem
              | Bool
              | doc "The pem option sets the X-Forwarded-Tls-Client-Cert header with the escape certificate."
              | optional,
          },
      "definitions.pluginMiddleware" = { _ | { _ | Dyn } },
      "definitions.rateLimitMiddleware" =
        {
            average
              | std.contract.any_of [ Number, String ]
              | doc m%"
                average is the maximum rate, by default in requests by second, allowed for the given source.
                
                It defaults to 0, which means no rate limiting.
                
                The rate is actually defined by dividing average by period. So for a rate below 1 req/s, one needs to define a period larger than a second.
              "%
              | optional,
            burst
              | Number
              | doc m%"
                burst is the maximum number of requests allowed to go through in the same arbitrarily small period of time.
                
                It defaults to 1.
              "%
              | optional,
            period
              | std.contract.any_of [ Number, String ]
              | doc m%"
                period, in combination with average, defines the actual maximum rate.
                
                It defaults to 1 second.
              "%
              | optional,
            sourceCriterion
              | refs."definitions.sourceCriterion"
              | { _ | Dyn }
              | optional,
          },
      "definitions.redirectRegexMiddleware" =
        {
            permanent
              | Bool
              | doc "Set the permanent option to true to apply a permanent redirection."
              | optional,
            regex
              | String
              | doc "The regex option is the regular expression to match and capture elements from the request URL."
              | optional,
            replacement
              | String
              | doc "The replacement option defines how to modify the URL to have the new target URL. Care should be taken when defining replacement expand variables: $1x is equivalent to ${1x}, not ${1}x (see Regexp.Expand), so use ${1} syntax."
              | optional,
          },
      "definitions.redirectSchemeMiddleware" =
        {
            permanent
              | Bool
              | doc "Set the permanent option to true to apply a permanent redirection."
              | optional,
            port
              | String
              | doc "The port option defines the port of the new url. Port in this configuration is a string, not a numeric value."
              | optional,
            scheme
              | String
              | doc "The scheme option defines the scheme of the new url."
              | optional,
          },
      "definitions.replacePathMiddleware" =
        {
            path
              | String
              | doc "The path option defines the path to use as replacement in the request url."
              | optional,
          },
      "definitions.replacePathRegexMiddleware" =
        {
            regex
              | String
              | doc "The regex option is the regular expression to match and capture the path from the request URL."
              | optional,
            replacement
              | String
              | doc "The replacement option defines how to modify the path to have the new target path. Care should be taken when defining replacement expand variables: $1x is equivalent to ${1x}, not ${1}x (see Regexp.Expand), so use ${1} syntax."
              | optional,
          },
      "definitions.retryMiddleware" =
        {
            attempts
              | std.number.Integer
              | doc "The attempts option defines how many times the request should be retried.",
            initialInterval
              | String
              | doc "The initialInterval option defines the first wait time in the exponential backoff series."
              | optional,
          },
      "definitions.sourceCriterion" =
        {
            ipStrategy | refs."definitions.ipStrategy" | { _ | Dyn } | optional,
            requestHeaderName
              | String
              | doc "Requests having the same value for the given header are grouped as coming from the same source."
              | optional,
            requestHost
              | Bool
              | doc "Whether to consider the request host as the source."
              | optional,
          },
      "definitions.stripPrefixMiddleware" =
        {
            forceSlash
              | Bool
              | doc m%"
                The forceSlash option makes sure that the resulting stripped path is not the empty string, by replacing it with / when necessary.
                
                This option was added to keep the initial (non-intuitive) behavior of this middleware, in order to avoid introducing a breaking change.
                
                It's recommended to explicitly set forceSlash to false.
              "%
              | optional,
            prefixes
              | Array String
              | doc "The prefixes option defines the prefixes to strip from the request URL"
              | optional,
          },
      "definitions.stripPrefixRegexMiddleware" =
        {
            regex
              | Array String
              | doc "The regex option is the regular expression to match the path prefix from the request URL."
              | optional,
          },
      "definitions.tcpLoadBalancerService" =
        {
            proxyProtocol
              | { version | std.number.Integer | optional, .. }
              | optional,
            servers
              | js2n.array.MinItems 1
              | Array
                {
                  address
                    | String
                    | doc "The address option (IP:Port) point to a specific instance.",
                  ..
                }
              | doc "Servers declare a single instance of your program.",
            serversTransport | String | optional,
            terminationDelay
              | Number
              | doc m%"
                As a proxy between a client and a server, it can happen that either side (e.g. client side) decides to terminate its writing capability on the connection (i.e. issuance of a FIN packet). The proxy needs to propagate that intent to the other side, and so when that happens, it also does the same on its connection with the other side (e.g. backend side).
                
                However, if for some reason (bad implementation, or malicious intent) the other side does not eventually do the same as well, the connection would stay half-open, which would lock resources for however long.
                
                To that end, as soon as the proxy enters this termination sequence, it sets a deadline on fully terminating the connections on both sides.
                
                The termination delay controls that deadline. It is a duration in milliseconds, defaulting to 100. A negative value means an infinite deadline (i.e. the connection is never fully terminated by the proxy itself).
              "%
              | optional,
          },
      "definitions.tcpRouter" =
        {
            entryPoints
              | Array String
              | doc "If not specified, TCP routers will accept requests from all defined entry points. If you want to limit the router scope to a set of entry points, set the entry points option."
              | optional,
            middlewares | Array String | optional,
            "priority"
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "To avoid path overlap, routes are sorted, by default, in descending order using rules length. The priority is directly equal to the length of the rule, and so the longest length has the highest priority. A value of 0 for the priority is ignored: priority = 0 means that the default rules length sorting is used."
              | optional,
            rule
              | String
              | doc "It is important to note that the Server Name Indication is an extension of the TLS protocol. Hence, only TLS routers will be able to specify a domain name with that rule. However, non-TLS routers will have to explicitly use that rule with * (every domain) to state that every non-TLS request will be handled by the router.",
            ruleSyntax
              | String
              | doc "In Traefik v3 a new rule syntax has been introduced (migration guide). ruleSyntax option allows to configure the rule syntax to be used for parsing the rule on a per-router basis. This allows to have heterogeneous router configurations and ease migration."
              | optional,
            service
              | String
              | doc "You must attach a TCP service per TCP router. Services are the target for the router. TCP routers can only target TCP services (not HTTP services).",
            tls
              | {
                certResolver
                  | String
                  | doc "If certResolver is defined, Traefik will try to generate certificates based on routers Host & HostSNI rules."
                  | optional,
                domains
                  | Array
                    {
                      main
                        | String
                        | doc "Main defines the main domain name."
                        | optional,
                      sans
                        | Array String
                        | doc "SANs defines the subject alternative domain names."
                        | optional,
                      ..
                    }
                  | doc "You can set SANs (alternative domains) for each main domain. Every domain must have A/AAAA records pointing to Traefik. Each domain & SAN will lead to a certificate request."
                  | optional,
                options
                  | String
                  | doc "The options field enables fine-grained control of the TLS parameters. It refers to a TLS Options and will be applied only if a Host rule is defined."
                  | optional,
                passthrough
                  | Bool
                  | doc "A TLS router will terminate the TLS connection by default. However, the passthrough option can be specified to set whether the requests should be forwarded \"as is\", keeping all data encrypted."
                  | optional,
                ..
              }
              | doc m%"
                When a TLS section is specified, it instructs Traefik that the current router is dedicated to TLS requests only (and that the router should ignore non-TLS requests).
                
                By default, a router with a TLS section will terminate the TLS connections, meaning that it will send decrypted data to the services.
              "%
              | optional,
          },
      "definitions.tcpService" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                loadBalancer =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.tcpLoadBalancerService",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                weighted =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.tcpWeightedService",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ],
              { _ | Dyn }
            ],
      "definitions.tcpWeightedService" =
        {
            services
              | js2n.array.MinItems 1
              | Array { name | String, weight | Number, },
          },
      "definitions.udpLoadBalancerService" =
        {
            servers
              | js2n.array.MinItems 1
              | Array { address | String, .. }
              | doc "The servers field defines all the servers that are part of this load-balancing group, i.e. each address (IP:Port) on which an instance of the service's program is deployed.",
          },
      "definitions.udpRouter" =
        {
            entryPoints
              | Array String
              | doc "If not specified, UDP routers will accept packets from all defined (UDP) entry points. If one wants to limit the router scope to a set of entry points, one should set the entry points option."
              | optional,
            service
              | String
              | doc "There must be one (and only one) UDP service referenced per UDP router. Services are the target for the router.",
          },
      "definitions.udpService" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                loadBalancer =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.udpLoadBalancerService",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                weighted =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.udpWeightedService",
                                        { _ | Dyn }
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ],
              { _ | Dyn }
            ],
      "definitions.udpWeightedService" =
        {
            services
              | js2n.array.MinItems 1
              | Array { name | String, weight | Number, },
          },
    }
    in
  {
      http
        | {
          middlewares
            | {
              _ | std.contract.Sequence
                [ refs."definitions.httpMiddleware", { _ | Dyn } ]
            }
            | doc m%"
              Attached to the routers, pieces of middleware are a means of tweaking the requests before they are sent to your service (or before the answer from the services are sent to the clients).
              
              There are several available middleware in Traefik, some can modify the request, the headers, some are in charge of redirections, some add authentication, and so on.
              
              Pieces of middleware can be combined in chains to fit every scenario.
            "%
            | optional,
          routers | { _ | refs."definitions.httpRouter" } | optional,
          services
            | {
              _ | std.contract.Sequence
                [ refs."definitions.httpService", { _ | Dyn } ]
            }
            | optional,
          ..
        }
        | optional,
      tcp
        | {
          routers | { _ | refs."definitions.tcpRouter" } | optional,
          services
            | {
              _ | std.contract.Sequence
                [ refs."definitions.tcpService", { _ | Dyn } ]
            }
            | doc "Each of the fields of the service section represents a kind of service. Which means, that for each specified service, one of the fields, and only one, has to be enabled to define what kind of service is created. Currently, the two available kinds are LoadBalancer, and Weighted."
            | optional,
          ..
        }
        | optional,
      tls
        | {
          certificates
            | Array
              {
                certFile | String | optional,
                keyFile | String | optional,
                stores
                  | Array String
                  | doc "A list of stores can be specified here to indicate where the certificates should be stored. Although the stores list will actually be ignored and automatically set to [\"default\"]."
                  | optional,
                ..
              }
            | optional,
          options
            | {
              _ | {
                cipherSuites
                  | Array String
                  | doc "Cipher suites defined for TLS 1.2 and below cannot be used in TLS 1.3, and vice versa. With TLS 1.3, the cipher suites are not configurable (all supported cipher suites are safe in this case)."
                  | optional,
                clientAuth
                  | {
                    caFiles
                      | Array String
                      | doc "For authentication policies that require verification of the client certificate, the certificate authority for the certificate should be set here."
                      | optional,
                    clientAuthType | String | optional,
                    ..
                  }
                  | doc "Traefik supports mutual authentication, through the clientAuth section."
                  | optional,
                curvePreferences
                  | Array String
                  | doc m%"
                    This option allows to set the preferred elliptic curves in a specific order.
                    
                    The names of the curves defined by crypto (e.g. CurveP521) and the RFC defined names (e.g. secp521r1) can be used.
                  "%
                  | optional,
                maxVersion
                  | String
                  | doc "Maximum TLS Version. It is discouraged to use of this setting to disable TLS1.3. The recommended approach is to update the clients to support TLS1.3."
                  | optional,
                minVersion | String | doc "Minimum TLS Version" | optional,
                preferServerCipherSuites
                  | Bool
                  | doc "This option allows the server to choose its most preferred cipher suite instead of the client's. Please note that this is enabled automatically when minVersion or maxVersion are set."
                  | optional,
                sniStrict
                  | Bool
                  | doc "With strict SNI checking enabled, Traefik won't allow connections from clients that do not specify a server_name extension or don't match any certificate configured on the tlsOption."
                  | optional,
                ..
              }
            }
            | js2n.record.FieldsMatch "[a-zA-Z0-9-_]+"
            | doc "The TLS options allow one to configure some parameters of the TLS connection."
            | optional,
          stores
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "[a-zA-Z0-9-_]+" =
                        {
                            defaultCertificate
                              | {
                                certFile | String | optional,
                                keyFile | String | optional,
                              }
                              | doc "Traefik can use a default certificate for connections without a SNI, or without a matching domain. If no default certificate is provided, Traefik generates and uses a self-signed certificate."
                              | optional,
                            defaultGeneratedCert
                              | {
                                domain
                                  | {
                                    main
                                      | String
                                      | doc "Main defines the main domain name."
                                      | optional,
                                    sans
                                      | Array String
                                      | doc "SANs defines the subject alternative domain names."
                                      | optional,
                                    ..
                                  }
                                  | doc "Domain is the domain definition for the DefaultCertificate."
                                  | optional,
                                resolver
                                  | String
                                  | doc "Resolver is the name of the resolver that will be used to issue the DefaultCertificate."
                                  | optional,
                              }
                              | doc "GeneratedCert defines the default generated certificate configuration."
                              | optional,
                          },
                    },
                properties = {},
                required = {},
              }
            | doc "Any store definition other than the default one (named default) will be ignored, and there is therefore only one globally available TLS store."
            | optional,
        }
        | doc "Configures the TLS connection, TLS options, and certificate stores."
        | optional,
      udp
        | {
          routers
            | { _ | refs."definitions.udpRouter" }
            | doc "Similarly to TCP, as UDP is the transport layer, there is no concept of a request, so there is no notion of an URL path prefix to match an incoming UDP packet with. Furthermore, as there is no good TLS support at the moment for multiple hosts, there is no Host SNI notion to match against either. Therefore, there is no criterion that could be used as a rule to match incoming packets in order to route them. So UDP \"routers\" at this time are pretty much only load-balancers in one form or another."
            | optional,
          services
            | {
              _ | std.contract.Sequence
                [ refs."definitions.udpService", { _ | Dyn } ]
            }
            | doc "Each of the fields of the service section represents a kind of service. Which means, that for each specified service, one of the fields, and only one, has to be enabled to define what kind of service is created. Currently, the two available kinds are LoadBalancer, and Weighted."
            | optional,
        }
        | optional,
    }