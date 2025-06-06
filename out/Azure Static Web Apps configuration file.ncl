# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.auth" =
        {
            identityProviders
              | {
                apple
                  | {
                    enabled
                      | Bool
                      | doc "<false> if the apple provider is not enabled, <true> otherwise"
                      | optional,
                    login
                      | { scopes | Array String | optional, }
                      | doc ""
                      | optional,
                    registration
                      | {
                        clientIdSettingName
                          | String
                          | doc "The name of the application setting containing the Client ID"
                          | optional,
                        clientSecretSettingName
                          | String
                          | doc "The name of the application setting containing the Client Secret",
                      },
                    userDetailsClaim
                      | String
                      | doc "The name of the claim from which we should read user details"
                      | optional,
                  }
                  | optional,
                azureActiveDirectory
                  | {
                    enabled
                      | Bool
                      | doc "<false> if the azureActiveDirectory provider is not enabled, <true> otherwise"
                      | optional,
                    login
                      | { loginParameters | Array String | optional, }
                      | doc ""
                      | optional,
                    registration
                      | {
                        clientIdSettingName
                          | String
                          | doc "The name of the application setting containing the Application (client) ID for the Azure AD app registration"
                          | optional,
                        clientSecretSettingName
                          | String
                          | doc "The name of the application setting containing the client secret for the Azure AD app registration",
                        openIdIssuer
                          | String
                          | doc "The endpoint for the OpenID configuration of the AAD tenant",
                      },
                    userDetailsClaim
                      | String
                      | doc "The name of the claim from which we should read user details"
                      | optional,
                  }
                  | optional,
                customOpenIdConnectProviders
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            ".*" =
                              std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    {
                                      enabled
                                        | Bool
                                        | doc "<false> if the custom OpenID Connect provider is not enabled, <true> otherwise"
                                        | optional,
                                      login
                                        | {
                                          loginParameterNames
                                            | Array String
                                            | optional,
                                          nameClaimType | String | optional,
                                          scopes | Array String | optional,
                                        }
                                        | doc "",
                                      registration
                                        | {
                                          clientCredential
                                            | {
                                              clientSecretSettingName
                                                | String
                                                | doc "The name of the application setting containing the Client Secret",
                                              ..
                                            },
                                          clientIdSettingName
                                            | String
                                            | doc "The name of the application setting containing the Client ID"
                                            | optional,
                                          openIdConnectConfiguration
                                            | {
                                              authorizationEndpoint
                                                | String
                                                | doc "The path to the authorization endpoint"
                                                | optional,
                                              certificationUri
                                                | String
                                                | doc "The path to the jwks uri"
                                                | optional,
                                              issuer
                                                | String
                                                | doc "The path to the issuer endpoint"
                                                | optional,
                                              tokenEndpoint
                                                | String
                                                | doc "The path to the token endpoint"
                                                | optional,
                                              wellKnownOpenIdConfiguration
                                                | String
                                                | doc "The path to the well known configuration endpoint"
                                                | optional,
                                              ..
                                            },
                                        },
                                    },
                                    Array Dyn
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                  | optional,
                facebook
                  | {
                    enabled
                      | Bool
                      | doc "<false> if the facebook provider is not enabled, <true> otherwise"
                      | optional,
                    login
                      | { scopes | Array String | optional, }
                      | doc ""
                      | optional,
                    registration
                      | {
                        appIdSettingName
                          | String
                          | doc "The name of the application setting containing the App ID"
                          | optional,
                        appSecretSettingName
                          | String
                          | doc "The name of the application setting containing the App Secret",
                      },
                    userDetailsClaim
                      | String
                      | doc "The name of the claim from which we should read user details"
                      | optional,
                  }
                  | optional,
                github
                  | {
                    enabled
                      | Bool
                      | doc "<false> if the gitHub provider is not enabled, <true> otherwise"
                      | optional,
                    login
                      | { scopes | Array String | optional, }
                      | doc ""
                      | optional,
                    registration
                      | {
                        clientIdSettingName
                          | String
                          | doc "The name of the application setting containing the Client ID"
                          | optional,
                        clientSecretSettingName
                          | String
                          | doc "The name of the application setting containing the Client Secret",
                      },
                    userDetailsClaim
                      | String
                      | doc "The name of the claim from which we should read user details"
                      | optional,
                  }
                  | optional,
                google
                  | {
                    enabled
                      | Bool
                      | doc "<false> if the google provider is not enabled, <true> otherwise"
                      | optional,
                    login
                      | { scopes | Array String | optional, }
                      | doc ""
                      | optional,
                    registration
                      | {
                        clientIdSettingName
                          | String
                          | doc "The name of the application setting containing the Client ID"
                          | optional,
                        clientSecretSettingName
                          | String
                          | doc "The name of the application setting containing the Client Secret",
                      },
                    userDetailsClaim
                      | String
                      | doc "The name of the claim from which we should read user details"
                      | optional,
                  }
                  | optional,
                twitter
                  | {
                    enabled
                      | Bool
                      | doc "<false> if the twitter provider is not enabled, <true> otherwise"
                      | optional,
                    registration
                      | {
                        consumerKeySettingName
                          | String
                          | doc "The name of the application setting containing the Consumer Key"
                          | optional,
                        consumerSecretSettingName
                          | String
                          | doc "The name of the application setting containing the Consumer Secret",
                      },
                    userDetailsClaim
                      | String
                      | doc "The name of the claim from which we should read user details"
                      | optional,
                  }
                  | optional,
              },
            rolesSource
              | String
              | doc "Route to API function for assigning roles. For example, \"/api/GetRoles\". See https://aka.ms/swa-roles-function"
              | optional,
          },
      "definitions.route" =
        {
            allowedRoles
              | Array String
              | doc "Roles that are allowed to access this route. If not empty, only role(s) listed are authorized to access the route. Roles are only used for authorization; they are not used to evaluate whether the route matches the request."
              | optional,
            headers
              | {  .. }
              | doc "Override any matching global headers"
              | optional,
            methods
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'TRACE,
                      'OPTIONS,
                      'CONNECT,
                      'PATCH,
                      'DELETE,
                      'PUT,
                      'POST,
                      'HEAD,
                      'GET
                    |]
                  ]
              )
              | doc "Request method(s) to match"
              | optional,
            redirect
              | String
              | doc "Redirect to a relative or absolute path, or an external URI. Default status code is 302, override with 301."
              | optional,
            rewrite
              | String
              | doc "A path to rewrite the request route to"
              | optional,
            route
              | String
              | doc "Request route pattern to match. May contain valid wildcards. See documentation: https://aka.ms/swa/config-schema",
            statusCode
              | std.number.Integer
              | doc "Status code override"
              | optional,
          },
    }
    in
  {
      "$schema" | String | doc "JSON schema" | optional,
      auth | refs."definitions.auth" | optional,
      forwardingGateway
        | {
          allowedForwardedHosts
            | Array String
            | doc "The value of `X-Forwarded-Host` to allow to be used when generating redirect URLs"
            | optional,
          requiredHeaders
            | {  .. }
            | doc "HTTP header name/value pairs that are required for access"
            | optional,
        }
        | doc "Forwarding gateway configuration"
        | optional,
      globalHeaders
        | {  .. }
        | doc "Default headers to set on all responses"
        | optional,
      mimeTypes
        | { _ | String }
        | js2n.record.FieldsMatch "^\\..+$"
        | doc "Custom mime types configuration"
        | optional,
      navigationFallback
        | {
          exclude
            | Array Dyn
            | doc "Paths to exclude from the fallback route. May use valid wildcards. https://aka.ms/swa/config-schema"
            | optional,
          rewrite
            | String
            | doc "The default file to return if the request does not match a resource",
        }
        | doc "A default file to return if the request does not match a resource"
        | optional,
      networking
        | {
          allowedIpRanges
            | Array String
            | doc "Restrict access to one or more IPv4 ranges. Supports CIDR notation (e.g., \"192.168.100.14/24\")"
            | optional,
        }
        | doc "Networking configuration"
        | optional,
      platform
        | {
          apiRuntime
            | std.enum.TagOrString
            | [|
              '"python:3.10",
              '"python:3.9",
              '"python:3.8",
              '"node:20",
              '"node:18",
              '"node:16",
              '"node:14",
              '"node:12",
              '"dotnet-isolated:8.0",
              '"dotnet-isolated:7.0",
              '"dotnet-isolated:6.0",
              '"dotnet:6.0",
              '"dotnet:3.1"
            |]
            | doc "Language runtime for the managed functions API"
            | optional,
        }
        | doc "Platform configuration"
        | optional,
      responseOverrides
        | js2n.record.PropertyNames
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              js2n.string.Matches "^\\d+$",
              { _ | Dyn },
              Array Dyn
            ])
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".*" =
                    {
                        redirect
                          | String
                          | doc "Redirect to a relative or absolute path, or an external URI. Default status code is 302, override with 301."
                          | optional,
                        rewrite
                          | String
                          | doc "A path to rewrite the request route to"
                          | optional,
                        statusCode
                          | std.number.Integer
                          | doc "Status code"
                          | optional,
                        ..
                      },
                },
            properties = {},
            required = {},
          }
        | doc "Custom error pages or redirects"
        | optional,
      routes
        | Array refs."definitions.route"
        | doc "Route definitions to modify routing behavior"
        | optional,
      trailingSlash
        | std.enum.TagOrString
        | [| 'auto, 'never, 'always |]
        | doc "Trailing slash configuration"
        | optional,
    }