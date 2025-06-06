# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AdditionalBodyParamsEntry" = { _ | String },
      "definitions.AdditionalCredsEntry" = { _ | String },
      "definitions.AdditionalQueryParamsEntry" = { _ | String },
      "definitions.AppConf" =
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
                      js2n.record.Required [ "authentication" ],
                      Array Dyn
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "authentication" ],
                        Array Dyn
                      ])
                ],
              {
                antiCsrfParam
                  | String
                  | doc "The name of your CSRF security parameter used in any application form inputs. Globally set, HawkScan will parse this parameter value from form responses to use in subsequent requests."
                  | optional,
                applicationId
                  | js2n.string.Matches
                    "\\b[0-9a-f]{8}\\b-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-\\b[0-9a-f]{12}\\b"
                  | doc "**Required**. The `applicationId` of an application from the StackHawk platform.",
                authentication
                  | refs."definitions.Authentication"
                  | { _ | Dyn }
                  | doc m%"
                    Define how HawkScan should authenticate as a user to your application. This section includes options for various authentication methods like username/password, OAuth, external tokens, or custom scripts:
                    
                    * Logged In/Out Indicators (`loggedInIndicator`, `loggedOutIndicator`): Regex patterns to check session status (required if auth token is not JWT).
                    * Auth(N) (`usernamePassword`): Form-based login with properties like loginPath, usernameField, passwordField, and optional otherParams.
                    * Auth(Z) (`tokenAuthorization`): Session management using type, value, and tokenType.
                    * Token Extraction (`tokenExtraction`): Defines how to retrieve the token from responses.
                    * Test Path (`testPath`): Verifies login by checking an authenticated endpoint.
                    
                    Many other options for a wide variety of authentication methods are available. For a full breakdown of available configurations, see [Authenticated Scanning Documentation](https://docs.stackhawk.com/hawkscan/authenticated-scanning/).
                  "%
                  | optional,
                autoInputVectors
                  | Bool
                  | doc "Set to `true` to automatically enabled the correct input data types when scanning APIs like GraphQL and OpenAPI. This can increase scan accuracy and reduce false positives. Defaults to True."
                  | optional,
                autoPolicy
                  | Bool
                  | doc "Set to `true` to enable an optimized policy when scanning specific APIs like GraphQL and OpenAPI. Defaults to True."
                  | optional,
                badAuthentication
                  | refs."definitions.Authentication"
                  | { _ | Dyn }
                  | doc "User to first perform spider that should not collide with next user for tenancy."
                  | optional,
                env
                  | String
                  | doc "**Required**. The `env` environment name to organize Scan Results.",
                excludePaths
                  | Array String
                  | doc m%"
                    An array of strings, used as regexes to match against routes that should be ignored entirely by HawkScan.
                    If populated, paths that match any supplied regex will be excluded from the scan.
                    This field is useful for prohibiting asset directories or other resources that don't require vulnerability scanning.
                  "%
                  | optional,
                graphqlConf
                  | refs."definitions.GraphQLConf"
                  | { _ | Dyn }
                  | doc m%"
                    Configure how HawkScan interacts with GraphQL APIs:
                    
                    **Required** (one of the following): 
                    * `schemaPath`: Relative path to the introspection endpoint (based on the host address).
                    * `filePath`: Relative path to a JSON formatted GraphQL schema.
                    
                    **Optional**:
                    * `operation`: Adjust the operation requests generated by the spider (`QUERY` or `MUTATION`, defaults to both)
                    * `excludeOperations`: To exclude particular GraphQL operations from being scanned, pass an array of objects with `name` and `type` as keys.
                    
                    For full details, such as exclude operations and custom variable injection, see [GraphQL Configuration Documentation](https://docs.stackhawk.com/hawkscan/configuration/graphql-configuration.html).
                    
                  "%
                  | optional,
                grpcConf
                  | refs."definitions.GrpcConf"
                  | { _ | Dyn }
                  | doc m%"
                    Configure HawkScan for gRPC API scanning:
                    
                    **Required** (one of the following): 
                    * `path`: Reflection endpoint for reading gRPC schema.
                    * `filePath`: Relative path to a file descriptor set for the gRPC schema.
                    
                    For full details such as custom variable injection, see [gRPC Configuration Documentation](https://docs.stackhawk.com/hawkscan/configuration/gRPC-configuration.html).
                    
                    
                  "%
                  | optional,
                host
                  | js2n.string.Matches
                    "(?:(?:https?|ftp|file):\\/\\/|www\\.|ftp\\.)(?:\\([-\\w\\d+&@#\\/%=~_|$?!:,.]*\\)|[-\\w\\d+&@#\\/%=~_|$?!:,.])*(?:\\([-\\w\\d+&@#\\/%=~_|$?!:,.]*\\)|[\\w\\d+&@#\\/%=~_|$])"
                  | doc "**Required**. The base url of the application to scan ex: `http://localhost:8000`. If the url cannot be reached, the scan will not proceed.",
                includePaths
                  | Array String
                  | doc "An array of strings, used as regexes to limit which application routes HawkScan will specifically visit. If populated, paths must match at least one supplied regex to be included as part of the scan. This field is useful for constraining the reach of the HawkScan scanner and spider."
                  | optional,
                inputVectors
                  | refs."definitions.InputVectorParams"
                  | { _ | Dyn }
                  | doc m%"
                    Configure advanced control over how HawkScan applies testable inputs in HTTP requests. This section is protocol-specific (e.g., REST, GraphQL, gRPC, SOAP) and should only be modified for advanced scenarios:
                    
                    * `injectableParam`: Specify which parts of an HTTP request (e.g., headers, query parameters, or body) can be modified. These settings are dynamically configured based on the scan protocol and should not be changed unless directed by StackHawk Support.
                      
                    * `enabledRpcParam`: Define input shapes for request bodies in RPC-style APIs (e.g., gRPC). Adjusting this configuration may impact scan duration and should only be modified under guidance from StackHawk Support.
                    
                    **Note**: Adjusting these parameters can significantly affect scan performance and should only be used for advanced configurations.
                  "%
                  | optional,
                openApiConf
                  | refs."definitions.OpenApiConf"
                  | { _ | Dyn }
                  | doc m%"
                    Define how HawkScan scans OpenAPI endpoints. This section includes options to optimize scanning for OpenAPI specifications:
                    
                    **Required** (one of the following): 
                    * `filePath`: Path to the OpenAPI specification file.
                    * `path`: URL to fetch the OpenAPI spec if a file is not used.
                    * `inline`: Include your OpenAPI spec inline within the configuration file.
                    
                    For full details such as custom variable injection, see [OpenAPI Configuration Documentation](https://docs.stackhawk.com/hawkscan/configuration/openapi-configuration.html).
                    
                  "%
                  | optional,
                redact
                  | refs."definitions.AppRedactions"
                  | { _ | Dyn }
                  | doc m%"
                    Configure the redaction policy for scan logs and stdout to protect sensitive information during scanning:
                    
                    * `headers`: List of HTTP header names whose values will be redacted from alerts and logs.
                    * `values`: List of static values to add to the redacted token list. This is useful for redacting sensitive strings or environment variable interpolations (e.g., `${ENV_VAR:default}`).
                    
                    **Default Behavior**: HawkScan automatically redacts credentials from `app.authentication` and any script/discovery-related tokens. Use this section to extend the default redaction policy as needed.
                    
                    For best practices, configure these fields to prevent exposure of sensitive information in scan outputs.
                  "%
                  | optional,
                scanPolicy
                  | refs."definitions.OrganizationPolicy"
                  | { _ | Dyn }
                  | doc m%"
                    Configure the policy to be applied for the scan, optionally specifying which plugins to include or exclude. **Note**: Works for scan policies created with [Organization Policy Management](https://docs.stackhawk.com/web-app/policy-management/#organization-policy-management).
                    
                    * `name`: Required. The unique name of the scan policy to use (e.g., `CUSTOM_POLICY`).
                    * `excludePluginIds`: List of plugin IDs to exclude from the named scan policy.
                    * `includePluginIds`: List of plugin IDs to include that are not already part of the named scan policy.
                    
                    **Note**: To specify a [StackHawk default policy](https://docs.stackhawk.com/web-app/policy-management/policy-management-defaults.html), use `hawk.scan.policyName`.
                    
                    **Example:**
                    ```yaml
                    app:
                      scanPolicy:
                        name: CUSTOM_POLICY
                        includePluginIds:
                          - 90036
                        excludePluginIds:
                          - 90035
                    ```
                    
                    For more details, see our documentation for [Organization Policy Management](https://docs.stackhawk.com/web-app/policy-management/#organization-policy-management).
                  "%
                  | optional,
                sessionTokens
                  | Array String
                  | doc "The names of any session tokens used by your application, provided as an array of strings (Hint: these are the names of session cookies used by your application)."
                  | optional,
                soapConf
                  | refs."definitions.SoapConf"
                  | { _ | Dyn }
                  | doc m%"
                    Set parameters for scanning SOAP APIs:
                    
                    **Required** (one of the following): 
                    * `path`: Relative URL to fetch the SOAP API WSDL.
                    * `filePath`: Path to the SOAP API WSDL specification file.
                    
                    For full details, see [SOAP Configuration Documentation](https://docs.stackhawk.com/hawkscan/configuration/soap-configuration.html).
                  "%
                  | optional,
                waitForAppTarget
                  | refs."definitions.WaitForAppTarget"
                  | { _ | Dyn }
                  | doc m%"
                    Configure how HawkScan determines if your application is up and ready for scanning:
                    
                    * `path`: The endpoint to check for availability (e.g., `/index`). A GET request is made to this path to confirm the app is ready.
                    * `requestMethod`: The HTTP method to use (e.g., `GET`, `POST`). For GraphQL, queries can be sent as POST payloads or GET URI strings.
                    * `requestBody`: Content to include with POST or PUT requests during readiness checks.
                    * `waitTimeoutMillis`: Maximum time (in milliseconds) to wait for the app to become available before starting the scan.
                    * `pollDelay`: Time (in milliseconds) between readiness check requests.
                    
                  "%
                  | optional,
              }
            ],
      "definitions.AppRedactions" =
        {
            headers
              | Array String
              | doc "List of string header names: the values of HTTP headers matching these names will be redacted from alerts and logs."
              | optional,
            values
              | Array String
              | doc "List of string static values: the values here will be added to the redacted token list. This is best used with ${ENV_VAR:default} interpolation."
              | optional,
          },
      "definitions.AuthTestPath" =
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
                      js2n.record.Required [ "success" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "fail" ],
                      Array Dyn
                    ]
                ],
              {
                fail
                  | String
                  | doc m%"
                    A regex that will match against the response header or body, specified by `type`, of the GET request to the `path`.
                    A match of the regex supplied will indicate that scanning should halt and enter an error state.
                    
                    HawkScan requires that either `success` OR `fail` be configured (do not configure both).
                  "%
                  | optional,
                path
                  | js2n.string.Matches
                    "^\\/(([A-z0-9\\-\\%]+\\/)*[A-z0-9\\-\\%]+$)?"
                  | doc "**Required**. The path to a protected route in your application that requires authorization. For example `/mysettings`. A `GET` request will be made to this path using the configured authentication.",
                requestBody
                  | String
                  | doc "The request content to send along with POST or PUT requests for authentication verification."
                  | optional,
                requestHeaders
                  | refs."definitions.RequestHeadersEntry"
                  | { _ | Dyn }
                  | doc m%"
                    List of key/value pairs to be included as headers in the request to the `path`.
                    Headers that match the following pattern are unable to be added or modified `'^(Host|Origin|Proxy-.*|Sec-.*|Content-Length)'`.
                  "%
                  | optional,
                requestMethod
                  | std.enum.TagOrString
                  | [| 'PATCH, 'PUT, 'POST, 'GET |]
                  | doc "Request method to use for queries. Will generate GraphQL queries as either POST payloads or GET uri strings."
                  | optional,
                success
                  | String
                  | doc m%"
                    A regex that will match against the response header or body, specified by `type`, of the GET request to the `path`.
                    A match of the regex supplied will indicate that scanning should proceed with the specified authentication.
                    
                    HawkScan requires that either `success` OR `fail` be configured (do not configure both).
                  "%
                  | optional,
                type
                  | std.enum.TagOrString
                  | [| 'BODY, 'HEADER |]
                  | doc "An enum value representing what to match against in the response from issuing a request to the `testPath.path`. The supported values are `HEADER` and `BODY`."
                  | optional,
                ..
              }
            ],
      "definitions.AuthTokens" =
        {
            tokenType
              | String
              | doc "If specified tokenType will be prepended the header value e.g. tokenType: Bearer -> \"Bearer xxxxxxxxx\""
              | optional,
            type
              | std.enum.TagOrString
              | [| 'COOKIE, 'TOKEN |]
              | doc "Specifies the type of token being supplied, either `TOKEN` or `COOKIE`. Defaults to `TOKEN`."
              | optional,
            value
              | refs."definitions.NameValParam"
              | { _ | Dyn }
              | doc "Name and value of token. If token is specified it will be appended `Name: Val`."
              | optional,
            ..
          },
      "definitions.Authentication" =
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
                      js2n.record.Required [ "usernamePassword" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "external" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "script" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "externalCommand" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "oauth" ],
                      Array Dyn
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "usernamePassword" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "external" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "script" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "externalCommand" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "oauth" ],
                        Array Dyn
                      ])
                ],
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "cookieAuthorization" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "tokenAuthorization" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "sessionScript" ],
                      Array Dyn
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "cookieAuthorization" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenAuthorization" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "sessionScript" ],
                        Array Dyn
                      ])
                ],
              {
                cookieAuthorization
                  | refs."definitions.CookieAuthorization"
                  | { _ | Dyn }
                  | doc "Optional configuration specifying if authorization is maintained via a cookie session. Do not configure if using `tokenAuthorization`."
                  | optional,
                external
                  | refs."definitions.ExternalCredentials"
                  | { _ | Dyn }
                  | doc "Optional configuration block for specifying an externally supplied authorization token. Do not configure if using `usernamePassword`."
                  | optional,
                externalCommand
                  | refs."definitions.ExternalCommandCredentials"
                  | { _ | Dyn }
                  | doc "Optional configuration block for running an external command process."
                  | optional,
                loggedInIndicator
                  | String
                  | doc "A regex to match against http responses from pages in the web application to determine if the scanned pages user session is still logged in to the app, provided as a string (ex. `\".*signed in as.*\"`). Required if authorization token is not a JWT."
                  | optional,
                loggedOutIndicator
                  | String
                  | doc "A regex to match against http responses from pages in the web application to determine if the scanned pages user session is logged out of the app, provided as a string. Required if authorization token is not a JWT."
                  | optional,
                oauth
                  | refs."definitions.OAuth"
                  | { _ | Dyn }
                  | doc "Optional configuration block for 3rd Party/OAuth."
                  | optional,
                overrideJWTAutoRenew
                  | Bool
                  | doc "If set to true HawkScan will not try to autorenew a JWT."
                  | optional,
                script
                  | refs."definitions.AuthenticationScript"
                  | { _ | Dyn }
                  | doc "Optional configuration block for using an authentication script."
                  | optional,
                sessionScript
                  | refs."definitions.SessionScript"
                  | { _ | Dyn }
                  | doc "Optional configuration for using a session management script."
                  | optional,
                testPath
                  | refs."definitions.AuthTestPath"
                  | { _ | Dyn }
                  | doc "A configuration block specifying how to verify authentication/authorization is working.",
                tokenAuthorization
                  | refs."definitions.TokenAuthorization"
                  | { _ | Dyn }
                  | doc "Optional configuration telling HawkScan how to pass the authorization token to your application on each request to maintain authorized access. Do not configure if using `cookieAuthorization`."
                  | optional,
                tokenExtraction
                  | refs."definitions.TokenExtraction"
                  | { _ | Dyn }
                  | doc "Optional configuration block for extracting the authorization token from the authentication response."
                  | optional,
                usernamePassword
                  | refs."definitions.UsernamePasswordCredentials"
                  | { _ | Dyn }
                  | doc "Optional configuration specifying a username and password based authentication configuration. Do not configure if using `external`."
                  | optional,
                ..
              }
            ],
      "definitions.AuthenticationScript" =
        {
            credentials
              | refs."definitions.CredentialsEntry"
              | { _ | Dyn }
              | doc "The credentials required for the authentication script. These values will be redacted."
              | optional,
            name
              | String
              | doc "The name of the authentication script, as specified in the `hawkAddOn.scripts.name`.",
            parameters
              | refs."definitions.ParametersEntry"
              | { _ | Dyn }
              | doc "The parameters required for the authentication script."
              | optional,
            ..
          },
      "definitions.CookieAuthorization" =
        {
            cookieNames
              | Array String
              | doc "A list of strings that are the names of cookies used for maintaining a session. Typically this is one value like `jsessionid` or `PHPSESS`. When used in combination with authentication HawkScan will use this value to persist authenticated session state with your application."
              | optional,
            ..
          },
      "definitions.CredentialsEntry" = { _ | String },
      "definitions.CustomDiscovery" =
        {
            arguments
              | Array String
              | doc "Command arguments provided as an array of strings. These arguments can be used in addition to or instead of the command. This should be used if the command is sufficiently complex or is exceptionally whitespace sensitive."
              | optional,
            command
              | String
              | doc "Provide a command to run as part of the scan discovery phase. This command will be split from its arguments and execute on its own thread in a context with additional environment variables set with the proxy configuration for HawkScan to intercept http traffic."
              | optional,
            credentials
              | refs."definitions.CredentialsEntry"
              | { _ | Dyn }
              | doc "Additional environment variables or secrets to pass along into the execution of the command. These values will be redacted from the logs."
              | optional,
            environment
              | refs."definitions.EnvironmentEntry"
              | { _ | Dyn }
              | doc "Environment variables to pass along into the execution of the command."
              | optional,
            excludeParentEnvironment
              | Bool
              | doc "Only provide the environment variables and credentials as configured. By default also includes the environment from the parent process environment for convenience."
              | optional,
            logOutputToForeground
              | Bool
              | doc "This command prints the stdout and stderr of the command to the foreground."
              | optional,
            workingDir
              | String
              | doc "The absolute path working directory these commands are run from."
              | optional,
            ..
          },
      "definitions.CustomVariable" =
        {
            field
              | String
              | doc "The field name of the param to inject values into."
              | optional,
            values
              | Array String
              | doc "A list of possible values to be randomly selected for the given field."
              | optional,
            ..
          },
      "definitions.EnabledRPCParam" =
        {
            directWebRemoting
              | Bool
              | doc "Support for direct web remoting request bodies. Deprecated."
              | optional,
            googleWebToolkit
              | Bool
              | doc "Support for GWT request bodies. Deprecated."
              | optional,
            json | Bool | doc "Support for json request bodies." | optional,
            multipartFormData
              | Bool
              | doc "Support for `multipart/form-data` request bodies."
              | optional,
            odataId
              | Bool
              | doc "Support for Odata request bodies. Deprecated."
              | optional,
            xmlTag | Bool | doc "Support for xml request bodies." | optional,
            ..
          },
      "definitions.EnvironmentEntry" = { _ | String },
      "definitions.ExternalCommandCredentials" =
        {
            command
              | String
              | doc "The command to start the process e.g. `bash`, `python`",
            parameters
              | Array String
              | doc "Parameters required to run the script e.g. `-c`, `--verbose`"
              | optional,
            timeoutSeconds
              | std.contract.any_of
                [
                  js2n.number.Minimum 0,
                  js2n.string.Matches "^([0-9][0-9]+|[1-9]|0)$"
                ]
              | doc "Maximum time in seconds to wait for the process to complete. Defaults to 60 seconds."
              | optional,
            ..
          },
      "definitions.ExternalCredentials" =
        {
            type
              | std.enum.TagOrString
              | [| 'COOKIE, 'TOKEN |]
              | doc "Specifies the type of token being supplied. If `COOKIE` is specified the .external.value should be in the form of a cookie value <cookie-name>=<cookie-value> . Defaults to `TOKEN`."
              | optional,
            values
              | Array (
                std.contract.Sequence
                  [ refs."definitions.AuthTokens", { _ | Dyn } ]
              )
              | doc "The value pairs containing the token that will authorize requests. How the token is passed to your application is determined by the assigned `type`."
              | optional,
            ..
          },
      "definitions.GraphQLConf" =
        {
            customVariables
              | Array (
                std.contract.Sequence
                  [ refs."definitions.GraphQLCustomVariable", { _ | Dyn } ]
              )
              | doc m%"
                Define custom variables to be used during scanning. This section allows you to parameterize scan behavior or inject dynamic values into requests:
                
                * **Key-Value Pairs**: Specify custom variables as key-value pairs to replace placeholders in requests or configurations.
                * **Scopes**: Apply variables globally or limit them to specific APIs, endpoints, or operations.
                * **Environment Overrides**: Use environment variables to dynamically set or override custom values during scans.
                
                **Example:**
                ```yaml
                customVariables:
                  - field: firstName
                    values:
                      - customFirstName1
                      - customFirstName2
                  - field: lastName
                    values:
                      - customLastName1
                      - customLastName2
                ```
                
                For details on how to configure custom variables, see our documentation for the corresponding API type (e.g., OpenAPI, GraphQL, or gRPC).
              "%
              | optional,
            enabled
              | Bool
              | doc "Enable GraphQL scan support. HawkScan will enumerate all possible field types and input values for GraphQL Queries and Mutations. Provide relative path to the API endpoint."
              | optional,
            excludeOperations
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.GraphQLExcludeOperationParam",
                    { _ | Dyn }
                  ]
              )
              | doc "GraphQL operations to exclude from the spider."
              | optional,
            fakerEnabled
              | Bool
              | doc "Enables faker for a GraphQL scan to generate more realistic values when format is provided on the API spec or custom variables."
              | optional,
            filePath
              | String
              | doc "Relative path to a JSON formatted GraphQL schema (default: None)."
              | optional,
            maxDepth
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ js2n.number.Maximum 50, js2n.number.ExclusiveMinimum 0 ],
                  js2n.string.Matches "^([0-9][0-9]+|[1-9]|0)$"
                ]
              | doc "Maximum depth for generated query graphs."
              | optional,
            operation
              | std.enum.TagOrString
              | [| 'MUTATION, 'QUERY, 'ALL |]
              | doc "GraphQL operation to enumerate and scan. Defaults to find all Query and Mutation operations. Options are `All`, `QUERY` and `MUTATION`."
              | optional,
            requestMethod
              | std.enum.TagOrString
              | [| 'GET, 'POST |]
              | doc "Request method to use for queries. Will generate GraphQL queries as either `POST` payloads or `GET` uri strings."
              | optional,
            schemaPath
              | js2n.string.Matches
                "^\\/(([A-z0-9\\-\\%]+\\/)*[A-z0-9\\-\\%]+$)?"
              | doc "Path to the GraphQL introspection endpoint, relative to the target URI."
              | optional,
            uriMaxLength
              | std.contract.any_of
                [
                  js2n.number.Minimum 0,
                  js2n.string.Matches "^([0-9][0-9]+|[1-9]|0)$"
                ]
              | doc "Max length of URIs when generation queries for GET requests."
              | optional,
            ..
          },
      "definitions.GraphQLCustomVariable" =
        {
            field
              | String
              | doc "The field name of the param to inject values into."
              | optional,
            operationName
              | String
              | doc "An optional operationName that will only inject custom values if the name of the operation on the request matches."
              | optional,
            operationType
              | std.enum.TagOrString
              | [| 'MUTATION, 'QUERY, 'ALL |]
              | doc "An optional GraphQL operation type (MUTATION or QUERY) that will inject custom values only when the request matches the operation type."
              | optional,
            values
              | Array String
              | doc "A list of possible values to be randomly selected for the given field."
              | optional,
            ..
          },
      "definitions.GraphQLExcludeOperationParam" =
        {
            name | String | doc "GraphQL operation name." | optional,
            type
              | std.enum.TagOrString
              | [| 'MUTATION, 'QUERY, 'ALL |]
              | doc "Graphql operation type. Options are `All`, `QUERY` and `MUTATION`."
              | optional,
            ..
          },
      "definitions.GrpcConf" =
        {
            customVariables
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CustomVariable", { _ | Dyn } ]
              )
              | doc m%"
                Define custom variables to be used during scanning. This section allows you to parameterize scan behavior or inject dynamic values into requests:
                
                * **Key-Value Pairs**: Specify custom variables as key-value pairs to replace placeholders in requests or configurations.
                * **Scopes**: Apply variables globally or limit them to specific APIs, endpoints, or operations.
                * **Environment Overrides**: Use environment variables to dynamically set or override custom values during scans.
                
                **Example:**
                ```yaml
                customVariables:
                  - field: firstName
                    values:
                      - customFirstName1
                      - customFirstName2
                  - field: lastName
                    values:
                      - customLastName1
                      - customLastName2
                ```
                
                For details on how to configure custom variables, see our documentation for the corresponding API type (e.g., OpenAPI, GraphQL, or gRPC).
              "%
              | optional,
            filePath
              | String
              | doc "Relative path to the grpc [protobuf descriptor_set](https://protobuf.com/docs/descriptors) file."
              | optional,
            filePaths
              | Array String
              | doc "A list of paths to the grpc [protobuf descriptor_set](https://protobuf.com/docs/descriptors) file."
              | optional,
            maxDepth
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ js2n.number.Maximum 50, js2n.number.ExclusiveMinimum 0 ],
                  js2n.string.Matches "^([0-9][0-9]+|[1-9]|0)$"
                ]
              | doc "Maximum depth for resolving nested protobuf."
              | optional,
            path
              | String
              | doc "Host path for the grpc reflection endpoint."
              | optional,
            ..
          },
      "definitions.HARImportConfig" =
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
                      js2n.record.Required [ "file" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "dir" ],
                      Array Dyn
                    ]
                ],
              {
                dir
                  | refs."definitions.HARImportDirectory"
                  | { _ | Dyn }
                  | doc "Use a directory of HAR files."
                  | optional,
                file
                  | refs."definitions.HARImportFiles"
                  | { _ | Dyn }
                  | doc "Use individual HAR files."
                  | optional,
                replaceHost
                  | String
                  | doc "The hostname of URLs in the HAR file that will be replaced with the host defined in `app.host`. Leave blank if the `app.host` is then same hostname in the HAR file."
                  | optional,
                ..
              }
            ],
      "definitions.HARImportDirectory" =
        {
            path
              | String
              | doc "Path to directory containing .har files. Only files with the .har extension will be loaded in alphanumeric order."
              | optional,
            ..
          },
      "definitions.HARImportFiles" =
        {
            paths
              | Array String
              | doc "Paths to HAR files to import. Files will be loaded in order provided."
              | optional,
            ..
          },
      "definitions.HawkAddOnConf" =
        {
            replacer
              | refs."definitions.Replacer"
              | { _ | Dyn }
              | doc "Configuration for the replacer addOn."
              | optional,
            scripts
              | Array (
                std.contract.Sequence [ refs."definitions.Script", { _ | Dyn } ]
              )
              | doc "List of configurations for custom scripts."
              | optional,
          },
      "definitions.HawkConf" =
        {
            config
              | Array (
                js2n.string.Matches "^([a-zA-Z0-9]*\\.)*([a-zA-Z_$0-9])+=.*$"
              )
              | doc m%"
                Scanner configuration overrides, provided as a list of key=value strings.
                A list of strings in the form of key=value pairs passed to the scanner as scanner configuration overrides.
                
                This is an advanced feature to configure HawkScan plugins and override their default behavior.
              "%
              | optional,
            failureThreshold
              | js2n.string.Matches "\\b(?:high|medium|low|HIGH|MEDIUM|LOW)\\b"
              | doc "The lowest alert level that returns a failed scan status. Accepted values: high, medium, or low."
              | optional,
            outboundProxy
              | refs."definitions.Proxy"
              | { _ | Dyn }
              | doc "Configuration for an outbound proxy."
              | optional,
            scan
              | refs."definitions.ScanConf"
              | { _ | Dyn }
              | doc "Configuration for the HawkScan runtime."
              | optional,
            spider
              | refs."definitions.Spider"
              | { _ | Dyn }
              | doc "Configuration for the application web crawler & scan discovery."
              | optional,
            startupTimeoutMinutes
              | js2n.number.ExclusiveMinimum 0
              | doc "Maximum time in minutes to wait for the scanner process to start."
              | optional,
          },
      "definitions.InjectableParam" =
        {
            cookieData
              | Bool
              | doc "Allow injection of testable inputs for cookie data."
              | optional,
            httpHeaders
              | Bool
              | doc "Allow injection of testable inputs for http headers."
              | optional,
            postData
              | Bool
              | doc "Allow injection of testable inputs request body inputs on POST requests."
              | optional,
            urlPath
              | Bool
              | doc "Allow injection of testable inputs url paths."
              | optional,
            urlQuery
              | Bool
              | doc "Allow injections of testable inputs url query parameter names."
              | optional,
            urlQueryParam
              | Bool
              | doc "Allow injection of testable inputs url query parameter values."
              | optional,
            ..
          },
      "definitions.InputVectorParams" =
        {
            enabledRpcParam
              | refs."definitions.EnabledRPCParam"
              | { _ | Dyn }
              | doc "Configuration of what RPC parts are injectable by configuration."
              | optional,
            injectableParam
              | refs."definitions.InjectableParam"
              | { _ | Dyn }
              | doc "Configuration of where params are injectable in the request."
              | optional,
            ..
          },
      "definitions.NameValParam" =
        {
            name | String | doc "Param name." | optional,
            val | String | doc "Param value." | optional,
            ..
          },
      "definitions.OAuth" =
        {
            credentials
              | refs."definitions.OAuthCredentials"
              | { _ | Dyn }
              | doc "Credentials needed to authenticate with an OAuth/3rd party provider e.g. password, clientSecret, etc."
              | optional,
            parameters
              | refs."definitions.OAuthParameters"
              | { _ | Dyn }
              | doc "Non sensitive parameters to use with an OAuth/3rd party provider e.g. tokenEndpoint, scope, etc."
              | optional,
            ..
          },
      "definitions.OAuthCredentials" =
        {
            additionalCreds
              | refs."definitions.AdditionalCredsEntry"
              | { _ | Dyn }
              | doc "A list of name/value pairs of any additional fields or credentials that need to be posted to the OAuth provider token endpoint."
              | optional,
            clientId
              | String
              | doc "The client id of your application registered with your OAuth provider which will be posted n the request body to the token endpoint with the field name of `client_id`."
              | optional,
            clientSecret
              | String
              | doc "The client secret of your application registered with your OAuth provider which will be posted n the request body to the token endpoint with the field name of `client_secret`."
              | optional,
            password
              | String
              | doc "Password which will be posted in the request body to the token endpoint with the field name of `password`."
              | optional,
            username
              | String
              | doc "Username which will be posted in the request body to the token endpoint with the field name of `username`."
              | optional,
            ..
          },
      "definitions.OAuthParameters" =
        {
            additionalBodyParams
              | refs."definitions.AdditionalBodyParamsEntry"
              | { _ | Dyn }
              | doc m%"
                A list of optional additional name/value pairs to be included in the request body of the post.
                 **NOTE:** These values are not redacted, if you need additional sensitive values please use `outhCredentials.additionalCreds`
              "%
              | optional,
            additionalQueryParams
              | refs."definitions.AdditionalQueryParamsEntry"
              | { _ | Dyn }
              | doc "A list of optional additional name/value pairs to be passed to the query string."
              | optional,
            grantType
              | String
              | doc "Grant type of token request, this will be passed to the request body of the token endpoint as `grant_type`."
              | optional,
            requestHeaders
              | refs."definitions.RequestHeadersEntry"
              | { _ | Dyn }
              | doc "Additional headers to be sent along with the request to the token endpoint"
              | optional,
            requestMethod
              | std.enum.TagOrString
              | [| 'HEAD, 'PATCH, 'OPTIONS, 'GET, 'DELETE, 'PUT, 'POST |]
              | doc "Http method for accessing the token endpoint. The default is POST."
              | optional,
            scope
              | String
              | doc "Scope type of token request, this will be passed to the request body of the token endpoint as `scope`."
              | optional,
            tokenEndpoint
              | String
              | doc "URL of the endpoint to get a token"
              | optional,
            ..
          },
      "definitions.OpenApiConf" =
        {
            customVariables
              | Array (
                std.contract.Sequence
                  [ refs."definitions.OpenApiCustomVariable", { _ | Dyn } ]
              )
              | doc m%"
                Define custom variables to be used during scanning. This section allows you to parameterize scan behavior or inject dynamic values into requests:
                
                * **Key-Value Pairs**: Specify custom variables as key-value pairs to replace placeholders in requests or configurations.
                * **Scopes**: Apply variables globally or limit them to specific APIs, endpoints, or operations.
                * **Environment Overrides**: Use environment variables to dynamically set or override custom values during scans.
                
                **Example:**
                ```yaml
                customVariables:
                  - field: firstName
                    values:
                      - customFirstName1
                      - customFirstName2
                  - field: lastName
                    values:
                      - customLastName1
                      - customLastName2
                ```
                
                For details on how to configure custom variables, see our documentation for the corresponding API type (e.g., OpenAPI, GraphQL, or gRPC).
              "%
              | optional,
            fakerEnabled
              | Bool
              | doc "Enables faker for a REST API scan to generate more realistic values when format is provided on the API spec or custom variables."
              | optional,
            filePath
              | String
              | doc m%"
                Relative path to specification file(s) (JSON or YAML).
                The path is relative to the `/hawk` mount point specified by the `-v` docker run argument. ie: `docker run -v $(pwd):/hawk`.
              "%
              | optional,
            filePaths
              | Array String
              | doc "A list of relative path to specification file(s) (JSON or YAML) for the open api generation for specs with multiple open api files."
              | optional,
            forbiddenVariables
              | Array (
                std.contract.Sequence
                  [ refs."definitions.OpenApiCustomVariable", { _ | Dyn } ]
              )
              | doc "Custom variables that the user should not see for tenancy checks."
              | optional,
            includeAllMethods
              | Bool
              | doc "When custom variables are provided, DELETE's are skipped for injection. Set this to true to override this default and include all methods in variable injection."
              | optional,
            includedMethods
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'HEAD, 'PATCH, 'OPTIONS, 'GET, 'DELETE, 'PUT, 'POST |]
                  ]
              )
              | doc "List of methods to include in custom variable injection. Note: if 'includeAllMethods' is set to true, this list is ignored and all methods will be used for custom variable injection."
              | optional,
            inline
              | String
              | doc "Define your openapi specification yaml inlined as a string."
              | optional,
            maxAliasesForCollections
              | std.contract.any_of
                [
                  js2n.number.Minimum 0,
                  js2n.string.Matches "^([0-9][0-9]+|[1-9]|0)$"
                ]
              | doc m%"
                Maximum number of aliases for a collection when parsing YAML.
                 Increase this value if you see the  "Number of aliases for non-scalar nodes exceeds the specified max=100" error.
              "%
              | optional,
            path
              | js2n.string.Matches
                "^\\/(([A-z0-9\\-\\%]+\\/)*[A-z0-9\\-\\%]+$)?"
              | doc "A string relative path to an OpenAPI specification file (JSON or YAML) from the scanned host."
              | optional,
            strict
              | Bool
              | doc "Whether to enable strict parsing of the OpenAPI."
              | optional,
            ..
          },
      "definitions.OpenApiCustomVariable" =
        {
            field
              | String
              | doc "The field name of the param to inject values into."
              | optional,
            path
              | String
              | doc "An optional path regex that will only inject custom values if the path of the request matches."
              | optional,
            requestMethods
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'HEAD, 'PATCH, 'OPTIONS, 'GET, 'DELETE, 'PUT, 'POST |]
                  ]
              )
              | doc "A list of optional HTTP request methods that will inject custom values only when the request matches one of those methods."
              | optional,
            values
              | Array String
              | doc "A list of possible values to be randomly selected for the given field."
              | optional,
            ..
          },
      "definitions.OrganizationPolicy" =
        {
            excludePluginIds
              | Array String
              | doc "Plugin ids to exclude from the named scan policy."
              | optional,
            includePluginIds
              | Array String
              | doc "Plugin ids to include in the scan that are not in the named scan policy."
              | optional,
            name
              | String
              | doc "**Required**. The unique name of the organization scan policy.",
            ..
          },
      "definitions.ParametersEntry" = { _ | String },
      "definitions.PostmanConfig" =
        {
            apikey
              | String
              | doc "API key to authenticated the user with Postman."
              | optional,
            collectionUID
              | String
              | doc "Id of the collection to be pulled from Postman."
              | optional,
            filePath
              | String
              | doc "File path of the Postman collection."
              | optional,
            ..
          },
      "definitions.Proxy" =
        {
            credentials
              | refs."definitions.ProxyCredentials"
              | { _ | Dyn }
              | doc "Credentials for logging into the outbound explicit proxy."
              | optional,
            host
              | String
              | doc "The host of the outbound explicit proxy, including port (e.g. https://localhost:8888)."
              | optional,
            rootCACertPath
              | String
              | doc "Path to root CA Certificate for transparent outbound proxies.  This can be used without specifying host or credentials."
              | optional,
            ..
          },
      "definitions.ProxyCredentials" =
        {
            password
              | String
              | doc "**Required**. The password for proxy credentials."
              | optional,
            realm | String | doc "Realm for proxy credentials." | optional,
            scheme
              | String
              | doc "Scheme of proxy authentication. Currently `BASIC`, `NTLM` are supported."
              | optional,
            username
              | String
              | doc "**Required**. The username for proxy credentials."
              | optional,
            ..
          },
      "definitions.Replacer" =
        {
            rules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ReplacerRules", { _ | Dyn } ]
              )
              | doc "List of regex match and replace rules for request headers."
              | optional,
            ..
          },
      "definitions.ReplacerRules" =
        {
            initiators
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'AUTHENTICATION_HELPER,
                      'WEB_SOCKET,
                      'TOKEN_GENERATOR,
                      'FORCED_BROWSE,
                      'AJAX_SPIDER,
                      'ACCESS_CONTROL_SCANNER,
                      'BEAN_SHELL,
                      'CHECK_FOR_UPDATES,
                      'MANUAL_REQUEST,
                      'AUTHENTICATION,
                      'FUZZER,
                      'SPIDER,
                      'ACTIVE_SCANNER,
                      'PROXY
                    |]
                  ]
              )
              | doc "Replacer rule initiators."
              | optional,
            isRegex
              | Bool
              | doc "Enable regex search for `matchString`. Useful when `replaceOnly` is true (e.g. `Referer:.*` will replace the entire `Referer:` header line)."
              | optional,
            matchString
              | String
              | doc "If `replaceOnly` is false, only match the header name. If `replaceOnly` is true, matches the exact string on the header line.",
            replaceOnly
              | Bool
              | doc "If false, replace existing header value or add the missing header using replacement as the value. If true, only replace the matchString of an existing header line."
              | optional,
            replacement
              | String
              | doc "If false, replace existing header value or add the missing header using replacement as the value. If true, only replace the matchString of an existing header line.",
            ..
          },
      "definitions.RequestHeadersEntry" = { _ | String },
      "definitions.ScanConf" =
        {
            concurrentRequests
              | std.contract.any_of
                [
                  js2n.number.ExclusiveMinimum 0,
                  js2n.string.Matches "^([0-9][0-9]+|[1-9])$"
                ]
              | doc "Number of request threads. _If you need that little extra push._ defaults to 20."
              | optional,
            includedPlugins
              | Array String
              | doc "Specify to only scan with these listed plugins."
              | optional,
            maxDurationMinutes
              | std.contract.any_of
                [
                  js2n.number.Minimum 0,
                  js2n.string.Matches "^([0-9][0-9]+|[1-9]|0)$"
                ]
              | doc "Maximum duration that a scan will run."
              | optional,
            maxRuleDurationMinutes
              | std.contract.any_of
                [
                  js2n.number.Minimum 0,
                  js2n.string.Matches "^([0-9][0-9]+|[1-9]|0)$"
                ]
              | doc "Maximum duration that a scan will spend on a rule."
              | optional,
            policyName
              | String
              | doc "Name of a specific named scan policy to use. This field is optional, and an applicable scan policy will be selected if omitted."
              | optional,
            requestDelayMillis
              | std.contract.any_of
                [
                  js2n.number.Minimum 0,
                  js2n.string.Matches "^([0-9][0-9]+|[1-9]|0)$"
                ]
              | doc "Delay time between sending requests."
              | optional,
            throttleIntervalSeconds
              | std.contract.any_of
                [
                  js2n.number.ExclusiveMinimum 0,
                  js2n.string.Matches "^([0-9][0-9]+|[1-9])$"
                ]
              | doc "How often the throttle check is run, in seconds."
              | optional,
            throttlePassiveBacklog
              | std.contract.any_of
                [
                  js2n.number.ExclusiveMinimum 0,
                  js2n.string.Matches "^([0-9][0-9]+|[1-9])$"
                ]
              | doc "Pause active scan when passive backlog is greater than this value, resumes once backlog is empty. defaults to 50."
              | optional,
            throttleTempRecordDeleteQuota
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ js2n.number.Maximum 100, js2n.number.Minimum 1 ],
                  js2n.string.Matches "^([0-9][0-9]+|[1-9])$"
                ]
              | doc "The percentage of throttleTempRecordMax records to delete on each throttleIntervalSeconds."
              | optional,
            throttleTempRecordMax
              | std.contract.any_of
                [
                  js2n.number.ExclusiveMinimum 0,
                  js2n.string.Matches "^([0-9][0-9]+|[1-9])$"
                ]
              | doc "The max number of temp records allowed before pruning of temp records begins."
              | optional,
            ..
          },
      "definitions.Script" =
        {
            id
              | std.contract.any_of [ Number, String ]
              | doc "Plugin Id for script."
              | optional,
            language
              | std.enum.TagOrString
              | [| 'JAVASCRIPT, 'KOTLIN |]
              | doc "**Required**. The language of this script. Either `KOTLIN` or `JAVASCRIPT`.",
            name | String | doc "The name of this custom script." | optional,
            path
              | String
              | doc "Path to the file location for the custom script."
              | optional,
            type
              | std.enum.TagOrString
              | [|
                'session,
                'proxy,
                'passive,
                'httpsender,
                'authentication,
                'active
              |]
              | doc "The type of this script. One of `active`, `authentication`, `httpsender`, `passive`, `proxy`, `standalone`, `targeted`, `session`."
              | optional,
            vars
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NameValParam", { _ | Dyn } ]
              )
              | doc m%"
                Define general name/value parameters to be used in various configurations:
                
                * `name`: The parameter name (e.g., `authToken` or `username`).
                * `val`: The parameter value, which can be static or interpolated from environment variables.
                
                **Usage**: Commonly used for external credentials, authentication tokens, HawkAddOn scripts, and username/password configurations.
              "%
              | optional,
            ..
          },
      "definitions.SessionScript" =
        {
            name
              | String
              | doc "*Required* The name of the session script defined in `hawkAddons.scripts`. The script `type` must be `session`, and match the `hawkAddOn.scripts.name` field.",
            parameters
              | refs."definitions.ParametersEntry"
              | { _ | Dyn }
              | doc "A map of key/value pairs that will be passed to your session script, which can be accessed via `sessionWrapper.getParam()` function."
              | optional,
            ..
          },
      "definitions.SoapConf" =
        {
            filePath
              | String
              | doc "Relative path to the SOAP WSDL schema definition file."
              | optional,
            path
              | js2n.string.Matches
                "^\\/(([A-z0-9\\-\\%]+\\/)*[A-z0-9\\-\\%]+$)?"
              | doc "Host path to the SOAP WSDL, prefixed with a `/` ."
              | optional,
            ..
          },
      "definitions.Spider" =
        {
            ajax
              | Bool
              | doc "Enable the ajax web crawler for discovering your application’s routes. This spider is appropriate for single-page web applications."
              | optional,
            ajaxBrowser
              | std.enum.TagOrString
              | [| 'CHROME, 'FIREFOX, 'CHROME_HEADLESS, 'FIREFOX_HEADLESS |]
              | doc "The browser type and style to use when running the AjaxSpider. When running the `stackhawk/hawkscan` docker container, this setting is ignored and will uses the default FIREFOX_HEADLESS. The options are FIREFOX_HEADLESS, FIREFOX, CHROME_HEADLESS, and CHROME."
              | optional,
            base
              | Bool
              | doc "Enable the basic web crawler for discovering your application's routes. This spider is appropriate for most traditional web applications."
              | optional,
            custom
              | refs."definitions.CustomDiscovery"
              | { _ | Dyn }
              | doc "Discover paths in your application with the assistance of a complimentary developer tool or software command. This is appropriate if your team already implements other application testing tools in their CI/CD pipeline, for a more thorough and repeatable scan."
              | optional,
            har
              | refs."definitions.HARImportConfig"
              | { _ | Dyn }
              | doc "Import a HAR file as the API discovery method for the scan."
              | optional,
            maxDurationMinutes
              | js2n.number.ExclusiveMinimum 0
              | doc "Maximum allowed time for enabled spiders to crawl your web application."
              | optional,
            postmanConfig
              | refs."definitions.PostmanConfig"
              | { _ | Dyn }
              | doc "Configuration for postman."
              | optional,
            seedPaths
              | Array String
              | doc "List of paths to supplement the spider. These paths will be used as additional starting points for crawling your application. Useful for paths that are not crawlable from the root of your application. For example, `/admin`. **Note**: this configuration is NOT a replacement for an API spec and provides no benefit to pure REST API's."
              | optional,
            ..
          },
      "definitions.Tag" =
        {
            name
              | js2n.string.MaxLength 128
              | js2n.string.MinLength 1
              | js2n.string.Matches "^[a-zA-Z0-9_-]+$"
              | doc "The keyword name."
              | optional,
            value
              | js2n.string.MaxLength 512
              | js2n.string.MinLength 1
              | doc "An arbitrary value to associate with the keyword."
              | optional,
          },
      "definitions.TokenAuthorization" =
        {
            isJWT
              | Bool
              | doc "If the token is a JWT, mark this field as true"
              | optional,
            renewMillis
              | std.contract.any_of
                [
                  js2n.number.ExclusiveMinimum 0,
                  js2n.string.Matches "^([0-9][0-9]+|[1-9])$"
                ]
              | doc "If isJWT is set to true, this field will determine the time in milliseconds before expiration to auto renew the JWT."
              | optional,
            tokenType
              | String
              | doc "TokenType will be prepended the header value e.g. tokenType: TOKEN -> \"TOKEN xxxxxxxxx\""
              | optional,
            type
              | std.enum.TagOrString
              | [| 'QUERY_PARAM, 'HEADER |]
              | doc m%"
                An enum value representing how to pass the authorization token to your application.
                `HEADER` indicates that each request should have the authorization token header added to the requests.
                `QUERY_PARAM` indicates that the token should be passed as a query parameter.
              "%
              | optional,
            value
              | String
              | doc "**Required**. The name of the `HEADER` or `QUERY_PARAM` the token should be passed as.",
            ..
          },
      "definitions.TokenExtraction" =
        {
            type
              | std.enum.TagOrString
              | [| 'HEADER_NAME, 'TOKEN_PATH |]
              | doc "Specifying `TOKEN_PATH` tells HawkScan to extract the token from the JSON payload of the response from authentication. `HEADER` tells HawkScan to extract the token from a header in the response from authentication. defaults to `TOKEN_PATH`."
              | optional,
            value
              | String
              | doc m%"
                *Required**. String containing the path to the token in the JSON payload authentication response or the name of the response header containing the token.
                Example: if the authentication response JSON payload looks like `{"auth" : {"token": "<my-auth-token>"}}` the value would be `auth.token`. If the authentication response has a header named `AuthToken: <my-token>`, then the value should be `AuthToken`.
              "%,
            ..
          },
      "definitions.UsernamePasswordCredentials" =
        {
            loginPagePath
              | js2n.string.Matches
                "^\\/(([A-z0-9\\-\\%]+\\/)*[A-z0-9\\-\\%]+$)?"
              | doc "The path to your login form, if applicable. This is an optional path but is often required if the `POST` to the loginPath requires an anti csrf token to be passed as part of the `POST`. The `app.antiCsrfParam` will be extracted from the response body of a GET request to this page."
              | optional,
            loginPath
              | js2n.string.Matches
                "^\\/(([A-z0-9\\-\\%]+\\/)*[A-z0-9\\-\\%]+$)?"
              | doc "**Required**. login route to `POST` credentials for a user in the application (ex. `/login`). An http `POST` request using the type specified will be made to this path.",
            otherParams
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NameValParam", { _ | Dyn } ]
              )
              | doc "Other request parameters required by your login payload, provided as an array of objects with `name` and `value` string keys. This setting is helpful if your authentication process requires other parameters included in the form POST besides the username and password parameters. If in doubt, this setting can be safely left unconfigured."
              | optional,
            passwordField
              | String
              | doc "**Required**. The password html field used in your application form or json, provided as a string.",
            realm | String | doc "Realm for NTLM authentication" | optional,
            scanPassword
              | String
              | doc m%"
                *Required**. The password credentials provided to authentication when attempting to login to the web application, provided as a string.
                HawkScan best practices recommend using [environment variable runtime overrides](https://docs.stackhawk.com/hawkscan/configuration/#environment-variable-runtime-overrides) for this value (ex. "${SCAN_PASSWORD}" will use the $SCAN_PASSWORD environment variable as the scanPassword).
              "%,
            scanUsername
              | String
              | doc m%"
                *Required**. The username credentials provided to authentication when attempting to login to the web application, provided as a string.
                HawkScan best practices recommend using [environment variable runtime overrides](https://docs.stackhawk.com/hawkscan/configuration/#environment-variable-runtime-overrides) for this value (ex. "${SCAN_USERNAME:admin}" will use the $SCAN_USERNAME environment variable as the scanUsername, or fallback to admin).
              "%,
            type
              | std.enum.TagOrString
              | [| 'HTTP, 'JSON, 'FORM |]
              | doc "An enum value describing the type of `POST` data expected by the `loginPath`"
              | optional,
            usernameField
              | String
              | doc "**Required**. the username html field used in your application form or json, provided as a string.",
            ..
          },
      "definitions.WaitForAppTarget" =
        {
            path
              | String
              | doc "The path to a public reachable route in your application. For example `/index`. A `GET` request will be made to this path to confirm the host is up and ready to receive traffic."
              | optional,
            pollDelay
              | std.contract.any_of
                [
                  js2n.number.Minimum 50,
                  js2n.string.Matches "^([0-9][0-9]+|[1-9]|0)$"
                ]
              | doc "The maximum amount of time in milliseconds in between requests to your application to see if it's running",
            requestBody
              | String
              | doc "The request content to send along with POST or PUT requests for target verification."
              | optional,
            requestMethod
              | std.enum.TagOrString
              | [| 'PATCH, 'PUT, 'POST, 'GET |]
              | doc "Request method to use for queries. Will generate GraphQL queries as either POST payloads or GET uri strings."
              | optional,
            waitTimeoutMillis
              | std.contract.any_of
                [
                  js2n.number.Minimum 0,
                  js2n.string.Matches "^([0-9][0-9]+|[1-9]|0)$"
                ]
              | doc "The maximum amount of time in milliseconds that HawkScan will wait for your app to be available before it starts scanning",
            ..
          },
    }
    in
  {
      app
        | refs."definitions.AppConf"
        | { _ | Dyn }
        | doc m%"
          Define key settings for the application to be scanned, including properties like the application’s host URL, authentication methods, API type, and custom paths. This section includes essential parameters, such as:
          
          * `applicationId`: Required. The unique identifier for the application in the StackHawk platform. 
          * `env`: Required. The environment name used to organize scan results (e.g., “Production” or “Staging”).
          * `host`: Required. The base URL of the application to scan, e.g., `http://localhost:8000`. The scan will not proceed if the URL is unreachable.
          
          Additionally, specify other optional details such as session tokens, CSRF parameters, API-specific configurations (e.g., GraphQL, OpenAPI, SOAP, gRPC), and any paths to exclude or include in the scan. [Read More](https://docs.stackhawk.com/hawkscan/configuration/#app)
          
        "%
        | optional,
      hawk
        | refs."definitions.HawkConf"
        | doc m%"
          Define global HawkScan settings, independent of the scanned application:
          
          * `spider`: Configure application crawling and scan discovery:
            - `base` and `ajax`: Enable crawlers for traditional or single-page applications (`true`/`false`).
            - `maxDurationMinutes`: Maximum crawl duration.
            - `seedPaths`: Additional starting points for crawling.
            - `custom`: Use custom commands for discovery.
            - `har`: Import HAR files for discovery.
          
          * `startupTimeoutMinutes`: Maximum time to wait for the scanner to start (default: 5).
          * `failureThreshold`: Alert severity level to fail a scan (`high`, `medium`, or `low`).
          * `scan`: Set runtime behavior like max duration, request throttling, and concurrency.
          * `config`: Advanced scanner configuration overrides.
          * `outboundProxy`: Configure an outbound proxy, including host, credentials, and CA certificate.
          
          Use this configuration to fine-tune scan behavior and environment. For more details, see [HawkScan Configuration Documentation](https://docs.stackhawk.com/hawkscan/configuration/).
        "%
        | optional,
      hawkAddOn
        | refs."definitions.HawkAddOnConf"
        | doc m%"
          Extend HawkScan functionality with add-ons and custom scripts:
          
          * `replacer`: Modify or replace HTTP request headers:
            - `rules`: Define match-and-replace logic using properties like `matchString`, `replacement`, `isRegex`, and `replaceOnly`.
          
          * `scripts`: Configure custom scripts to customize scan behavior:
            - `name`: Script name.
            - `type`: Script type (e.g., active, authentication).
            - `path`: File location of the script.
            - `language`: Script language (e.g., KOTLIN, JAVASCRIPT).
            - `vars`: Key-value pairs to pass as script parameters.
          
          Use this configuration to tailor scans for specific needs, such as header manipulation or advanced script execution. For more detail, see [HawkScan Configuration Documentation](https://docs.stackhawk.com/hawkscan/configuration/#hawkaddon).
        "%
        | optional,
      tags
        | Array refs."definitions.Tag"
        | doc m%"
          Add metadata to scans using name-value pairs to capture additional context, such as commit SHAs, branch names, or issue titles:
          
          * `name`: The tag name, which can include characters `a-z`, `A-Z`, `-`, and `_`. Names beginning with `_STACKHAWK` are reserved.
          * `value`: A string value associated with the tag. Values can include static strings or interpolations from environment variables.
          
          **Example Tags:**
          - `category: hawksome`
          - `Another-Value: ${SOMETHING_FROM_ENV:default}`
          - `_GIT_COMMIT_SHA: ${MY_COMMIT_SHA_ENV:HEAD}`
          
          Use tags to enable PR checks and comments as well as to enhance scan visibility and organization, embedding contextual details into the scan results.
        "%
        | optional,
      ..
    }