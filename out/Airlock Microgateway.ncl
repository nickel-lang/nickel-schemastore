# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.DefaultActionDto" =
        {
            enabled
              | js2n.Nullable Bool
              | doc "Enable this default header action"
              | optional,
            name
              | js2n.Nullable String
              | doc "Name of the default header action"
              | optional,
          },
      "definitions.ExpertSettingsDto-nullable" =
        js2n.Nullable
            {
              apache
                | js2n.Nullable String
                | doc "Expert settings for the Apache httpd."
                | optional,
              security_gate
                | js2n.Nullable String
                | doc "Expert settings for the Security Gate."
                | optional,
            },
      "definitions.PatternDto-nullable" =
        js2n.Nullable
            {
              ignore_case | Bool | doc "Whether to ignore case." | optional,
              inverted | Bool | doc "Whether to invert the match." | optional,
              pattern
                | String
                | doc "A regex pattern used to match, cannot be empty. If you need a pattern that matches every string use \".*\"",
            },
      "definitions.PatternWithRewriteDto-nullable" =
        js2n.Nullable
            {
              regex
                | refs."definitions.PatternDto-nullable"
                | js2n.Nullable ({ _ | Dyn })
                | optional,
              substitution
                | js2n.Nullable String
                | doc "The rewrite expression."
                | optional,
            },
      "definitions.PatternWithoutInvertDto" =
        {
            ignore_case | Bool | doc "Whether to ignore case." | optional,
            pattern
              | String
              | doc "A regex pattern used to match, cannot be empty. If you need a pattern that matches every string use \".*\"",
          },
      "definitions.PatternWithoutInvertDto-nullable" =
        js2n.Nullable
            (std.contract.Sequence
              [ refs."definitions.PatternWithoutInvertDto", { _ | Dyn } ]),
      "definitions.RemoveHeaderActionDto-nullable" =
        js2n.Nullable
            {
              name
                | refs."definitions.PatternDto-nullable"
                | js2n.Nullable ({ _ | Dyn })
                | optional,
              value
                | refs."definitions.PatternDto-nullable"
                | js2n.Nullable ({ _ | Dyn })
                | optional,
            },
      "definitions.RewriteHeaderValueDto-nullable" =
        js2n.Nullable
            {
              name
                | refs."definitions.PatternDto-nullable"
                | js2n.Nullable ({ _ | Dyn })
                | optional,
              replace
                | js2n.Nullable String
                | doc "A string to rewrite the header value with. Can make back-references to the header value pattern."
                | optional,
              value
                | refs."definitions.PatternDto-nullable"
                | js2n.Nullable ({ _ | Dyn })
                | optional,
            },
      "definitions.SimpleHeaderActionDto-nullable" =
        js2n.Nullable
            {
              name
                | js2n.Nullable String
                | doc "The name of the header to add."
                | optional,
              value
                | js2n.Nullable String
                | doc "The value of the header to add."
                | optional,
            },
      "definitions.SimplePatternDto-nullable" =
        js2n.Nullable
            {
              pattern
                | js2n.Nullable String
                | doc "The actual pattern."
                | optional,
            },
    }
    in
  {
      apps
        | Array
          {
            mappings
              | Array
                {
                  access_token
                    | js2n.Nullable
                      {
                        audittoken
                          | js2n.Nullable Bool
                          | doc "If the 'sub' claim should be extracted from the JWT and be used as audit token of the current session"
                          | optional,
                        claims
                          | Array
                            {
                              claim
                                | js2n.Nullable String
                                | doc "The name of the claim you want to restrict."
                                | optional,
                              regex
                                | refs."definitions.PatternDto-nullable"
                                | optional,
                            }
                          | doc "All specified claims are checked and must match the claim's value of the decoded token. If a claim is an array, at least one entry must match the specified regex."
                          | optional,
                        expiry_checked
                          | js2n.Nullable Bool
                          | doc "If the JWT standard claims expiry (exp) and not before (nbf) will be checked and must be valid."
                          | optional,
                        extraction
                          | js2n.Nullable
                            {
                              cookie
                                | js2n.Nullable String
                                | doc "From which cookie the token should be extracted."
                                | optional,
                              header
                                | refs."definitions.PatternWithRewriteDto-nullable"
                                | optional,
                              mode
                                | js2n.Nullable
                                  (std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'cookie, 'parameter, 'header |]
                                    ])
                                | doc "From which part of the request the token should be extracted. Possible values are 'header', 'parameter', 'cookie'."
                                | optional,
                              parameter
                                | js2n.Nullable String
                                | doc "From which query parameter the token should be extracted."
                                | optional,
                            }
                          | doc "How the token should be extracted."
                          | optional,
                        jwks_providers
                          | Array String
                          | doc "List of JWKS service providers referenced by their name. Can be local or remote providers."
                          | optional,
                        mandatory
                          | js2n.Nullable Bool
                          | doc "If disabled, requests without a token are accepted. However, if a token is present,it is extracted and validated and the configured restrictions and role extractions are applied. "
                          | optional,
                        roles
                          | Array
                            {
                              claim
                                | js2n.Nullable String
                                | doc "Name of the claim you want to extract a role from."
                                | optional,
                              extraction
                                | refs."definitions.PatternWithRewriteDto-nullable"
                                | optional,
                              token_lifetime
                                | js2n.Nullable Bool
                                | doc "If enabled, the expiry claim (exp) of the JWT will be used as the role lifetime."
                                | optional,
                            }
                          | doc "Specifies which roles should be extracted from the claims."
                          | optional,
                        signature_mandatory
                          | js2n.Nullable Bool
                          | doc "Enforce a signed JWT"
                          | optional,
                        skew
                          | js2n.Nullable std.number.Integer
                          | doc "The allowed skew when checking expiry / not before in seconds."
                          | optional,
                        tech_client_id_claim
                          | js2n.Nullable String
                          | doc "The claim to extract the technical client id from."
                          | optional,
                      }
                    | optional,
                  allow_rules
                    | Array
                      {
                        content_type
                          | refs."definitions.PatternDto-nullable"
                          | optional,
                        enabled
                          | Bool
                          | doc "Enable the allow rule."
                          | optional,
                        log_only
                          | Bool
                          | doc "Whether to log requests not matching this allow rule instead of blocking them."
                          | optional,
                        method
                          | refs."definitions.PatternDto-nullable"
                          | optional,
                        name
                          | String
                          | doc "Unique name for the allow rule. If omitted, a unique name will be generated. To enable/disable the default allow rule or one from a mapping_template_file, use the same name."
                          | optional,
                        path
                          | refs."definitions.PatternDto-nullable"
                          | optional,
                      }
                    | optional,
                  api_security
                    | js2n.Nullable
                      {
                        json_content_type
                          | refs."definitions.PatternDto-nullable"
                          | optional,
                        openapi
                          | js2n.Nullable
                            {
                              log_only
                                | js2n.Nullable Bool
                                | doc "If enabled, potential attack requests are only logged but not blocked."
                                | optional,
                              path_matching
                                | js2n.Nullable
                                  (std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'backend_view, 'client_view |]
                                    ])
                                | doc "The Microgateway mapping can be configured to rewrite the incoming URL to a different back-end URL (asymmetric mappings). Due to this rewriting, the incoming URL path (client_view) will be different from the back-end URL path (backend_view)."
                                | optional,
                              response_validation
                                | js2n.Nullable Bool
                                | doc "Check responses against API specification."
                                | optional,
                              spec
                                | js2n.Nullable String
                                | doc "The OpenAPI specification."
                                | optional,
                              spec_file
                                | js2n.Nullable String
                                | doc "The OpenAPI file path."
                                | optional,
                            }
                          | doc "The specification to validate against."
                          | optional,
                        treat_json_objects_as_parameters
                          | js2n.Nullable Bool
                          | doc "If enabled, Microgateway parses JSON objects in requests and filters JSON attributes with allow rules and deny rules."
                          | optional,
                        treat_path_segments_as_parameters
                          | js2n.Nullable Bool
                          | doc "If enabled, each path segment is interpreted as a separate parameter value and the deny rules for parameter values are applied to it."
                          | optional,
                      }
                    | optional,
                  auth
                    | js2n.Nullable
                      {
                        access
                          | Array
                            {
                              method
                                | refs."definitions.PatternDto-nullable"
                                | optional,
                              path
                                | refs."definitions.PatternDto-nullable"
                                | optional,
                              roles
                                | Array String
                                | doc "Can contain a list of roles for this service. Only sessions that have at least one of these roles will be able to access the service."
                                | optional,
                            }
                          | doc "A list of access restrictions can be created. Each request matching the combination of HTTP method and path of a access restriction must have at least one of the specified roles to access the service. All matching restrictions must be satisfied to gain access."
                          | optional,
                        client_certificate
                          | js2n.Nullable
                            {
                              verification
                                | std.enum.TagOrString
                                | [| 'required, '"optional", 'inherit |]
                                | doc "The client certificate verification mode to use on this mapping. This can be used to override the setting from the virtual host with a stronger verification level (e.g. off -> optional or optional -> required). Possible values are 'inherit', 'optional' or 'required'."
                                | optional,
                            }
                          | optional,
                        denied_access_url
                          | js2n.Nullable String
                          | doc "Defines the location of the authentication service. In case the required role for the mapping is missing on the current session, Airlock Gateway will redirect the client to this location. If this value is missing (default), the Global Denied Access URL will be used."
                          | optional,
                        flow
                          | js2n.Nullable
                            (std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'ntlm,
                                  'one_shot_with_body,
                                  'one_shot,
                                  'deny_access,
                                  'redirect
                                |]
                              ])
                          | doc "The authentication flow, allowed values are: redirect, deny_access, one_shot, one_shot_with_body, ntlm"
                          | optional,
                        logout_propagation_path
                          | js2n.Nullable String
                          | doc "In order to allow clean session termination on back-end systems when an Airlock Gateway session terminates, the administrator can configure one logout path per mapping."
                          | optional,
                      }
                    | optional,
                  backend
                    | js2n.Nullable
                      {
                        expert_settings
                          | js2n.Nullable
                            {
                              security_gate
                                | js2n.Nullable String
                                | doc "Expert settings for the Security Gate."
                                | optional,
                            }
                          | optional,
                        hosts
                          | Array
                            {
                              name
                                | js2n.string.Matches "^[A-Za-z0-9.\\-_:]+$"
                                | doc "The hostname of the back-end host. Only characters a-Z, numbers, and the special characters '.', ':',  '-' and '_' are allowed."
                                | optional,
                              port
                                | std.number.Integer
                                | js2n.number.Maximum 65535
                                | js2n.number.Minimum 1
                                | doc "Configuring a back-end port."
                                | optional,
                              protocol
                                | std.enum.TagOrString
                                | [| 'http, 'https |]
                                | doc "Allowed values are: http, https"
                                | optional,
                            }
                          | optional,
                        name
                          | js2n.string.Matches "^[A-Za-z0-9.\\-_:]+$"
                          | doc "The unique name of the back-end. Only characters a-Z, numbers, and the special characters '.', ':',  '-' and '_' are allowed."
                          | optional,
                      }
                    | optional,
                  backend_path
                    | js2n.Nullable String
                    | doc "The back-end path specifies the internal back-end path, i.e. the path of the request sent to the application server."
                    | optional,
                  compress_response_traffic
                    | js2n.Nullable Bool
                    | doc "Specifies whether Airlock Microgateway should compress the output on-the-fly for the client browser if supported and requested by the browser."
                    | optional,
                  control_api
                    | js2n.Nullable Bool
                    | doc "Specifies whether the connected back-end service is allowed to use the Airlock Microgateway Control API via the control cookie mechanism. The Control API is normally used by authentication applications to communicate with the Microgateway."
                    | optional,
                  cookies
                    | js2n.Nullable
                      {
                        encrypted
                          | refs."definitions.SimplePatternDto-nullable"
                          | optional,
                        passthrough
                          | refs."definitions.SimplePatternDto-nullable"
                          | optional,
                      }
                    | optional,
                  csrf_token
                    | js2n.Nullable
                      {
                        enabled
                          | js2n.Nullable Bool
                          | doc "Whether to enable automatic CSRF token injection and validation on this mapping."
                          | optional,
                        exceptions
                          | js2n.Nullable
                            (Array
                              {
                                path
                                  | refs."definitions.PatternWithoutInvertDto-nullable"
                                  | optional,
                              })
                          | doc "All incoming URLs that match one of these patterns are accepted by Airlock Microgateway without a valid CSRF token."
                          | optional,
                        invalid_token_redirect_location
                          | js2n.Nullable String
                          | doc "Specifies the location (e.g. /index.html) to which the client is redirected if a missing or invalid CSRF token is detected."
                          | optional,
                      }
                    | optional,
                  deny_rule_groups
                    | Array
                      {
                        enabled
                          | js2n.Nullable Bool
                          | doc "Enable deny rule group"
                          | optional,
                        exceptions
                          | Array
                            {
                              content_type
                                | refs."definitions.PatternDto-nullable"
                                | optional,
                              header_name
                                | refs."definitions.PatternDto-nullable"
                                | optional,
                              header_value
                                | refs."definitions.PatternDto-nullable"
                                | optional,
                              method
                                | refs."definitions.PatternDto-nullable"
                                | optional,
                              parameter_name
                                | refs."definitions.PatternDto-nullable"
                                | optional,
                              parameter_value
                                | refs."definitions.PatternDto-nullable"
                                | optional,
                              path
                                | refs."definitions.PatternDto-nullable"
                                | optional,
                            }
                          | optional,
                        level
                          | js2n.Nullable
                            (std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| 'strict, 'standard, 'basic |]
                              ])
                          | doc "Allowed values are: basic, standard, strict."
                          | optional,
                        log_only
                          | js2n.Nullable Bool
                          | doc "If enabled, offending requests are not blocked but only logged"
                          | optional,
                        rule_group_keys
                          | Array String
                          | doc "If deny rule group key is defined, the settings will only affect the specific deny rule group."
                          | optional,
                      }
                    | optional,
                  entry_path
                    | js2n.Nullable
                      {
                        enforce_trailing_slashes
                          | js2n.Nullable Bool
                          | doc "Whether a trailing slash is mandatory at the end of the entry path or not."
                          | optional,
                        ignore_case
                          | js2n.Nullable Bool
                          | doc "Whether to ignore case."
                          | optional,
                        type
                          | js2n.Nullable
                            (std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| 'regex, 'directory |]
                              ])
                          | doc "Allowed values are: directory, regex."
                          | optional,
                        value
                          | js2n.Nullable String
                          | doc "This specifies the external URL path."
                          | optional,
                      }
                    | doc "The entry path specifies the external URL path the mapping should be available under."
                    | optional,
                  env_cookies
                    | js2n.Nullable Bool
                    | doc "Specifies whether Airlock environment cookies containing useful request information are sent to the connected back-end."
                    | optional,
                  expert_settings
                    | refs."definitions.ExpertSettingsDto-nullable"
                    | optional,
                  limits
                    | js2n.Nullable
                      {
                        http_limits
                          | js2n.Nullable
                            {
                              max_parameter_name_length
                                | js2n.Nullable std.number.Integer
                                | doc "Defines the maximum length of a parameter name in bytes."
                                | optional,
                              max_parameter_value_length
                                | js2n.Nullable std.number.Integer
                                | doc "Defines the maximum length for a parameter value in bytes."
                                | optional,
                              max_parameters
                                | js2n.Nullable std.number.Integer
                                | doc "Defines the maximum number of parameters inside the request."
                                | optional,
                              parameter_length_exception
                                | refs."definitions.PatternDto-nullable"
                                | optional,
                            }
                          | doc "The limits for HTTP parameters."
                          | optional,
                        json_limits
                          | js2n.Nullable
                            {
                              max_array_items
                                | js2n.Nullable std.number.Integer
                                | doc "Defines the maximum number of items in a single JSON array (non-recursive)."
                                | optional,
                              max_key_length
                                | js2n.Nullable std.number.Integer
                                | doc "Defines the maximum length for a JSON key, also known as 'JSON property' or 'JSON object member' in bytes."
                                | optional,
                              max_keys
                                | js2n.Nullable std.number.Integer
                                | doc "Defines the maximum number of keys of a single JSON object (non-recursive)."
                                | optional,
                              max_length_exception
                                | refs."definitions.PatternDto-nullable"
                                | optional,
                              max_nesting_depth
                                | js2n.Nullable std.number.Integer
                                | doc "Defines the maximum depth of nesting for JSON objects and JSON arrays."
                                | optional,
                              max_total_entries
                                | js2n.Nullable std.number.Integer
                                | doc "Defines the maximum number of keys and array items in the whole JSON document (recursive)."
                                | optional,
                              max_value_length
                                | js2n.Nullable std.number.Integer
                                | doc "Defines the maximum length for a JSON value (string or numbers) in bytes."
                                | optional,
                            }
                          | doc "The limits for JSON structures."
                          | optional,
                        max_path_length
                          | js2n.Nullable std.number.Integer
                          | doc "Defines the maximum path length for requests to the current mapping in bytes."
                          | optional,
                        max_request_body_size
                          | js2n.Nullable std.number.Integer
                          | doc "The maximum allowed total size of the request body in bytes. It specifies the number of bytes from 0 (meaning unlimited) to 2147483647 (2GB) that are allowed in the request body. To restrict the size of file uploads, set this limit to the maximum combined size of all files uploaded at once."
                          | optional,
                      }
                    | optional,
                  mapping_template_file
                    | js2n.Nullable String
                    | doc "The Airlock Gateway mapping template file path."
                    | optional,
                  name
                    | js2n.Nullable String
                    | doc "The unique name of the mapping."
                    | optional,
                  operational_mode
                    | js2n.Nullable
                      (std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'integration, 'production |]
                        ])
                    | doc "Allowed values are: production, integration."
                    | optional,
                  parameter_pollution
                    | js2n.Nullable
                      {
                        mixed_type
                          | js2n.Nullable
                            {
                              block_duplicates
                                | js2n.Nullable Bool
                                | doc "If enabled, requests are blocked if they contain the same parameter names with different parameter types (e.g. \"id\" is present as a POST parameter and as a query parameter simultaneously)."
                                | optional,
                              log_only
                                | js2n.Nullable Bool
                                | doc "If enabled, offending requests are not blocked but only logged."
                                | optional,
                              parameter_name_exception
                                | refs."definitions.PatternDto-nullable"
                                | optional,
                            }
                          | optional,
                        same_type
                          | js2n.Nullable
                            {
                              join_duplicates
                                | js2n.Nullable Bool
                                | doc "If enabled, all the different values of a repeated parameter are joined by comma (in order of appearance). The aggregate value is then checked against deny rules (instead of the individual values)."
                                | optional,
                            }
                          | optional,
                      }
                    | optional,
                  "priority"
                    | js2n.Nullable
                      (std.contract.Sequence
                        [
                          std.number.Integer,
                          js2n.number.Maximum 999,
                          js2n.number.Minimum (-999)
                        ])
                    | doc m%"
                      Specifies the priority of this mapping (highest: -999, lowest: 999) when a request matches the entry path of multiple mappings.
                      All mappings with entry_path.type regex must have a unique priority.
                    "%
                    | optional,
                  request
                    | js2n.Nullable
                      {
                        custom_actions
                          | js2n.Nullable
                            (Array
                              {
                                add_header
                                  | refs."definitions.SimpleHeaderActionDto-nullable"
                                  | optional,
                                add_missing_header
                                  | refs."definitions.SimpleHeaderActionDto-nullable"
                                  | optional,
                                add_or_replace_header
                                  | refs."definitions.SimpleHeaderActionDto-nullable"
                                  | optional,
                                geolocation_redirect
                                  | js2n.Nullable
                                    {
                                      continent_codes
                                        | js2n.Nullable (Array String)
                                        | doc "A list of alpha-2 continent codes to redirect clients from. See here: https://en.wikipedia.org/wiki/List_of_sovereign_states_and_dependent_territories_by_continent_(data_file)"
                                        | optional,
                                      country_codes
                                        | js2n.Nullable (Array String)
                                        | doc "A list of country codes to redirect clients from. See here for alpha-2 codes to use: https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2"
                                        | optional,
                                      status_code
                                        | js2n.Nullable std.number.Integer
                                        | doc "The http status code to use on redirect"
                                        | optional,
                                      target_url
                                        | js2n.Nullable String
                                        | doc "The url to redirect to."
                                        | optional,
                                    }
                                  | doc "An action to redirect to a URL based on the geographic location of the request source IP."
                                  | optional,
                                header_redirect
                                  | js2n.Nullable
                                    {
                                      name
                                        | refs."definitions.PatternDto-nullable"
                                        | optional,
                                      status_code
                                        | js2n.Nullable std.number.Integer
                                        | doc "The http status code to use on redirect"
                                        | optional,
                                      target_url
                                        | js2n.Nullable String
                                        | doc "The url to redirect to."
                                        | optional,
                                      value
                                        | refs."definitions.PatternDto-nullable"
                                        | optional,
                                    }
                                  | doc "An action to redirect to a URL based on a header name or value either matching the given name or value pattern on requests."
                                  | optional,
                                name
                                  | String
                                  | doc "A unique name for this action; if not specified, a unique name will be generated."
                                  | optional,
                                remove_header
                                  | refs."definitions.RemoveHeaderActionDto-nullable"
                                  | optional,
                                rewrite_header_value
                                  | refs."definitions.RewriteHeaderValueDto-nullable"
                                  | optional,
                              })
                          | doc "A list of request custom actions executed in order of appearance. Only one action type (e.g. add_header or header_redirect) can be specified in each entry. Create multiple list positions if needed."
                          | optional,
                        default_actions
                          | js2n.Nullable
                            (Array refs."definitions.DefaultActionDto")
                          | optional,
                      }
                    | optional,
                  response
                    | js2n.Nullable
                      {
                        custom_actions
                          | js2n.Nullable
                            (Array
                              {
                                add_header
                                  | refs."definitions.SimpleHeaderActionDto-nullable"
                                  | optional,
                                add_missing_header
                                  | refs."definitions.SimpleHeaderActionDto-nullable"
                                  | optional,
                                add_or_replace_header
                                  | refs."definitions.SimpleHeaderActionDto-nullable"
                                  | optional,
                                name
                                  | String
                                  | doc "A unique name for this action; if not specified, a unique name will be generated."
                                  | optional,
                                remove_header
                                  | refs."definitions.RemoveHeaderActionDto-nullable"
                                  | optional,
                                rewrite_cookie
                                  | js2n.Nullable
                                    {
                                      cookie
                                        | refs."definitions.PatternDto-nullable"
                                        | optional,
                                      domain
                                        | refs."definitions.PatternWithoutInvertDto-nullable"
                                        | optional,
                                      domain_replace
                                        | js2n.Nullable String
                                        | doc "What to replace the domain with; Can make back references to the pattern used to match."
                                        | optional,
                                      http_only_mode
                                        | std.enum.TagOrString
                                        | [| 'add, 'remove, 'keep, 'auto |]
                                        | doc "Whether to `add`, `keep` or `remove` the `HttpOnly` (see: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Set-Cookie#HttpOnly) flag on cookies. AUTO will set the flag for encrypted cookies and KEEP it for others."
                                        | optional,
                                      path
                                        | refs."definitions.PatternWithoutInvertDto-nullable"
                                        | optional,
                                      path_replace
                                        | js2n.Nullable String
                                        | doc "What to replace the path with; Can make back references to the pattern used to match."
                                        | optional,
                                      secure_mode
                                        | std.enum.TagOrString
                                        | [| 'add, 'remove, 'keep, 'auto |]
                                        | doc "Whether to `add`, `keep` or `remove` the `Secure` (see: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Set-Cookie#Secure) flag on cookies. AUTO will set the flag on all connections that use HTTPS and remove it on others."
                                        | optional,
                                    }
                                  | doc "An action to rewrite a cookie based on patterns for cookie name, domain etc."
                                  | optional,
                                rewrite_header_value
                                  | refs."definitions.RewriteHeaderValueDto-nullable"
                                  | optional,
                                rewrite_raw_cookie
                                  | js2n.Nullable
                                    {
                                      replace
                                        | js2n.Nullable String
                                        | doc "A string to rewrite value pattern matches in the cookie value. Can make back references to the pattern used for matching."
                                        | optional,
                                      value
                                        | refs."definitions.PatternWithoutInvertDto-nullable"
                                        | optional,
                                    }
                                  | doc "An action to rewrite the raw value of a cookie matching the given pattern."
                                  | optional,
                              })
                          | doc "A list of request custom actions executed in order of appearance. Only one action type (e.g. add_header or header_redirect) can be specified in each entry. Create multiple list positions if needed."
                          | optional,
                        default_actions
                          | js2n.Nullable
                            (Array refs."definitions.DefaultActionDto")
                          | optional,
                        error_page_replacements
                          | js2n.Nullable
                            (Array
                              {
                                page
                                  | js2n.Nullable String
                                  | doc "Error page file name that will be delivered to the client. (eg. 400.html)"
                                  | optional,
                                status_code
                                  | refs."definitions.SimplePatternDto-nullable"
                                  | optional,
                              })
                          | doc "Replacement rules for error responses returned by backend systems."
                          | optional,
                        rewrites
                          | js2n.Nullable
                            {
                              any
                                | Array
                                  {
                                    content
                                      | refs."definitions.PatternWithoutInvertDto-nullable"
                                      | optional,
                                    content_type
                                      | String
                                      | doc "A response from the back-end server is rewritten only if the response header «Content-Type» matches this regular expression."
                                      | optional,
                                    to
                                      | js2n.Nullable String
                                      | doc "This is the target string which will replace the string matched by Content Pattern"
                                      | optional,
                                  }
                                | doc "Rewrite the body of HTTP response."
                                | optional,
                              html
                                | Array
                                  {
                                    options
                                      | Array (
                                        std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'embedded, 'event, 'url |]
                                          ]
                                      )
                                      | doc "This list defines the content to rewrite. Possible values are 'url', event', 'embedded'."
                                      | optional,
                                    to
                                      | js2n.Nullable String
                                      | doc "This is the target string which will replace the string matched by URL Pattern"
                                      | optional,
                                    url
                                      | refs."definitions.PatternWithoutInvertDto-nullable"
                                      | optional,
                                  }
                                | doc "Rewriting HTML content may be necessary to modify URLs in the HTML content if the application creates absolute or incorrect links because it is not reverse proxy compatible"
                                | optional,
                              json
                                | Array
                                  {
                                    content
                                      | refs."definitions.PatternWithoutInvertDto-nullable"
                                      | optional,
                                    path
                                      | String
                                      | doc "The json path of the the property to rewrite."
                                      | optional,
                                    replace
                                      | String
                                      | doc "This is the target content to replace the matched part with."
                                      | optional,
                                  }
                                | doc "Rewrite the json body of http responses."
                                | optional,
                              location_header
                                | Array
                                  {
                                    to
                                      | js2n.Nullable String
                                      | doc "This is the target string which will replace the string matched by URL Pattern"
                                      | optional,
                                    url
                                      | refs."definitions.PatternWithoutInvertDto-nullable"
                                      | optional,
                                  }
                                | doc "Rewrite option to modify the HTTP redirect location header sent from the back-end server before it is sent to the client."
                                | optional,
                            }
                          | optional,
                      }
                    | optional,
                  session_handling
                    | js2n.Nullable
                      (std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [|
                            'ignore_session,
                            'optional_session_no_refresh,
                            'optional_session,
                            'enforce_session
                          |]
                        ])
                    | doc "Allowed values are: enforce_session, optional_session, optional_session_no_refresh, ignore_session"
                    | optional,
                  threat_handling
                    | js2n.Nullable
                      (std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'notify, 'block, 'terminate_session |]
                        ])
                    | doc "Allowed values are: block, terminate_session, notify."
                    | optional,
                  timeouts
                    | js2n.Nullable
                      {
                        backend_http_response
                          | js2n.Nullable std.number.Integer
                          | doc "Defines the time in seconds Airlock Microgateway will wait for the back-end HTTP response. In case the request runs into the timeout, Airlock Microgateway will deliver an error page with the corresponding HTTP 503 status code."
                          | optional,
                        idle_session
                          | js2n.Nullable std.number.Integer
                          | doc "Defines the minimum session idle time in seconds for this mapping. The value will be ignored if minimum session idle timeout is smaller or equal to the global session idle timeout setting."
                          | optional,
                      }
                    | optional,
                }
              | optional,
            virtual_host
              | js2n.Nullable
                {
                  aliases
                    | Array String
                    | doc "Additional hostnames which refer to this virtual host."
                    | optional,
                  auth
                    | js2n.Nullable
                      {
                        client_certificate
                          | js2n.Nullable
                            {
                              ca_selection
                                | js2n.Nullable String
                                | doc "The concatenated certificates of the CAs which are sent to the client during the SSL handshake, in PEM format."
                                | optional,
                              ca_selection_file
                                | js2n.Nullable String
                                | doc "The file containing the selection CA certificates."
                                | optional,
                              ca_validation
                                | js2n.Nullable String
                                | doc "The concatenated certificates of the CAs which are used as trust anchor during chain validation, in PEM format."
                                | optional,
                              ca_validation_file
                                | js2n.Nullable String
                                | doc "The file containing the validation CA certificates."
                                | optional,
                              crl
                                | js2n.Nullable String
                                | doc "PEM representation of certificate revocation lists. If a client certificate is on such a list it will not be accepted. Although Airlock provides this functionality, it is recommended to check certificates against CRLs and other types of blacklists within the authentication service and not in Airlock."
                                | optional,
                              crl_file
                                | js2n.Nullable String
                                | doc "The file containing the crl."
                                | optional,
                              verification
                                | std.enum.TagOrString
                                | [| 'required, '"optional", 'off |]
                                | doc "Defines the default verification mode for client certificates on this virtual host. Possible values are 'off', 'optional' or 'required'."
                                | optional,
                              verification_depth
                                | std.number.Integer
                                | doc "Maximum number of intermediate certificate issuers."
                                | optional,
                            }
                          | optional,
                      }
                    | optional,
                  certificate
                    | js2n.Nullable
                      {
                        ca_chain
                          | js2n.Nullable String
                          | doc "List of certificates of the CA chain for the certificate."
                          | optional,
                        ca_chain_file
                          | js2n.Nullable String
                          | doc "The CA chain file path."
                          | optional,
                        certificate
                          | js2n.Nullable String
                          | doc "The certificate in PEM format."
                          | optional,
                        certificate_file
                          | js2n.Nullable String
                          | doc "The certificate file path."
                          | optional,
                        privatekey
                          | js2n.Nullable String
                          | doc "The private key for the certificate in PEM format."
                          | optional,
                        privatekey_file
                          | js2n.Nullable String
                          | doc "The private key file path"
                          | optional,
                      }
                    | optional,
                  encoded_slashes
                    | Bool
                    | doc "Specifies whether encoded slashes (%2F) are allowed in URL path. Attention: combinations of client certificates per mapping and enabled encoded slashes in the same virtual host might result in configurations where client certificate evaluation might be evaded."
                    | optional,
                  expert_settings
                    | refs."definitions.ExpertSettingsDto-nullable"
                    | optional,
                  hostname
                    | String
                    | doc "The hostname of the virtual host."
                    | optional,
                  http2_enabled
                    | Bool
                    | doc "Specifies whether HTTP/2 connections are enabled for this host."
                    | optional,
                  http_enabled
                    | Bool
                    | doc "Specifies whether HTTP connections are enabled for this host."
                    | optional,
                  http_port
                    | std.number.Integer
                    | js2n.number.Maximum 65535
                    | js2n.number.Minimum 1
                    | doc "Specifies the port on which this host listens for HTTP connections."
                    | optional,
                  https_enabled
                    | Bool
                    | doc "Specifies whether HTTPS connections are enabled for this host."
                    | optional,
                  https_port
                    | std.number.Integer
                    | js2n.number.Maximum 65535
                    | js2n.number.Minimum 1
                    | doc "Specifies the port on which this host listens for HTTPS connections."
                    | optional,
                  name
                    | String
                    | doc "The logical name of the virtual host."
                    | optional,
                  redirects
                    | js2n.Nullable
                      (Array
                        {
                          dest
                            | js2n.string.MinLength 1
                            | js2n.string.Matches
                              "^(http://|https://|ftp://|/)\\S*?$"
                            | doc "The destination can be relative to the current virtual host or an absolute URL including protocol and host. Relative redirect paths are extended with the incoming scheme and host header.",
                          path | refs."definitions.PatternWithoutInvertDto",
                          status_code
                            | std.number.Integer
                            | js2n.number.Maximum 308
                            | js2n.number.Minimum 301
                            | doc "The returned status code. Must be one of: [301, 302, 303, 307, 308]"
                            | optional,
                        })
                    | optional,
                  session_cookie_domain
                    | js2n.Nullable String
                    | doc "Specifies the domain for Airlock's session cookie if the cookie is created inside this virtual host."
                    | optional,
                  session_cookie_path
                    | String
                    | doc "Specifies the cookie path for Airlock's session cookie if the cookie is created inside this virtual host."
                    | optional,
                  strict_fqdn
                    | Bool
                    | doc "Specifies whether a virtual host should reply only to requests that match the hostname or any of its server alias names."
                    | optional,
                }
              | optional,
          }
        | optional,
      deny_rule_groups
        | Array
          {
            deny_rules
              | Array
                {
                  content_type
                    | refs."definitions.PatternDto-nullable"
                    | optional,
                  header_name
                    | refs."definitions.PatternDto-nullable"
                    | optional,
                  header_value
                    | refs."definitions.PatternDto-nullable"
                    | optional,
                  method | refs."definitions.PatternDto-nullable" | optional,
                  name
                    | js2n.string.Matches
                      "^(?![ \\t\\n]*\\(default(.*)\\))[\\s\\S]*"
                    | doc "Unique name. In order to prevent overriding built-in deny rules, the name may not start with '(default)'."
                    | optional,
                  parameter_name
                    | refs."definitions.PatternDto-nullable"
                    | optional,
                  parameter_value
                    | refs."definitions.PatternDto-nullable"
                    | optional,
                  path | refs."definitions.PatternDto-nullable" | optional,
                  rule_key
                    | js2n.string.Matches
                      "^(?![ \\t\\n]*\\(default(.*)\\))[\\s\\S]*"
                    | doc "Unique short name. In order to prevent overriding built-in deny rules, the name may not start with '(default)'."
                    | optional,
                }
              | doc "Filter rule that blocks requests based on the evaluation of different request attributes."
              | optional,
            name
              | js2n.string.Matches "^(?![ \\t\\n]*\\(default(.*)\\))[\\s\\S]*"
              | doc "Unique name. In order to prevent overriding built-in deny rule group, the name may not start with '(default)'."
              | optional,
            rule_group_key
              | js2n.string.Matches "^(?![ \\t\\n]*\\(default(.*)\\))[\\s\\S]*"
              | doc "Unique short name. In order to prevent overriding built-in deny rule group, the name may not start with '(default)'."
              | optional,
          }
        | doc "Custom deny rule groups that can be referenced in mappings on top of the built in Airlock deny rules."
        | optional,
      expert_settings
        | refs."definitions.ExpertSettingsDto-nullable"
        | optional,
      jwks_providers
        | js2n.Nullable
          {
            local
              | Array
                {
                  issuer
                    | js2n.Nullable String
                    | doc "Name of JWKS issuer. Corresponds to the 'Issuer' field in JWT."
                    | optional,
                  jwks
                    | js2n.Nullable String
                    | doc "JSON Object that represents the set of JWKS."
                    | optional,
                  jwks_file
                    | js2n.Nullable String
                    | doc "JSON file with the definitions of JWKS."
                    | optional,
                  name
                    | String
                    | doc "Name by which provider is referenced. Must be unique.",
                }
              | doc "JWKS providers that are configured statically."
              | optional,
            refresh_interval
              | std.number.Integer
              | doc "Refresh interval for fetching from remote JWKS providers in seconds."
              | optional,
            remote
              | Array
                {
                  issuer
                    | js2n.Nullable String
                    | doc "Name of JWKS issuer. This value is used to restrict the usage of the JWKS to JWTs with a matching issuer (claim 'iss')."
                    | optional,
                  name
                    | String
                    | doc "Name by which provider is referenced. Must be unique.",
                  service_url | String | doc "URL of JWKS service provider.",
                  tls
                    | {
                      cipher_suite
                        | String
                        | doc "The TLS cipher suite to use. For documentation visit www.openssl.org and search for 'ciphers'."
                        | optional,
                      client
                        | js2n.Nullable
                          {
                            ca_chain
                              | js2n.Nullable String
                              | doc "List of certificates of the CA chain for the certificate."
                              | optional,
                            ca_chain_file
                              | js2n.Nullable String
                              | doc "The CA chain file path."
                              | optional,
                            certificate
                              | js2n.Nullable String
                              | doc "The certificate in PEM format."
                              | optional,
                            certificate_file
                              | js2n.Nullable String
                              | doc "The certificate file path."
                              | optional,
                            privatekey
                              | js2n.Nullable String
                              | doc "The private key for the certificate in PEM format."
                              | optional,
                            privatekey_file
                              | js2n.Nullable String
                              | doc "The private key file path"
                              | optional,
                          }
                        | optional,
                      force_new_session
                        | Bool
                        | doc "Force new session for each request."
                        | optional,
                      protocol
                        | std.enum.TagOrString
                        | [| 'TLSv1_3, 'TLSv1_2, 'TLSv1_1, 'TLSv1_0, 'DEFAULT |]
                        | doc "The TLS protocol to use. For the description of the default values see the Gateway documentation for 'Supported SSL/TLS versions'."
                        | optional,
                      server
                        | js2n.Nullable
                          {
                            ca_validation
                              | js2n.Nullable String
                              | doc "The concatenated certificates of the CAs which are used as trust anchor during chain validation, in PEM format."
                              | optional,
                            ca_validation_file
                              | js2n.Nullable String
                              | doc "The file containing the validation CA certificates."
                              | optional,
                            host_name_verification
                              | Bool
                              | doc "Verification which involves a server identity check to mitigate man in the middle attacks."
                              | optional,
                          }
                        | optional,
                    }
                    | optional,
                }
              | doc "Remote JWKS providers which are fetched according to the jwks_providers.refresh_interval."
              | optional,
          }
        | doc "JWKS Providers which can be referenced in apps[].mappings[].access_token."
        | optional,
      license | js2n.Nullable String | doc "The encoded license." | optional,
      license_file
        | js2n.Nullable String
        | doc "The license file path."
        | optional,
      log
        | js2n.Nullable
          {
            level
              | std.enum.TagOrString
              | [| 'trace, 'info |]
              | doc "Allowed values are: info, trace"
              | optional,
          }
        | optional,
      metrics
        | {
          statsd
            | {
              enabled
                | Bool
                | doc "Enable sending of statsd metrics. Default is 'true'"
                | optional,
            }
            | doc "Use this to enable sending metrics using the statsd protocol."
            | optional,
        }
        | doc "Configuration for metrics sending."
        | optional,
      remote_ip
        | js2n.Nullable
          {
            header
              | String
              | doc "If set, Airlock Microgateway will treat the value of this header field as the useragent IP address.<br />Common values are 'X-Forwarded-For' or 'X-Client-IP'.<br /><strong>Warning</strong>: Make sure that internal_proxies is correctly configured for your setup.",
            internal_proxies
              | Array String
              | doc "List of hostnames, IP addresses or IP address ranges (e.g. 10.0.0.0/8) to trust as presenting a valid Remote-IP header.",
          }
        | optional,
      session
        | js2n.Nullable
          {
            encryption_passphrase
              | js2n.Nullable String
              | doc "Specifies the passphrase for the passphrase based encryption mechanism (PBE)."
              | optional,
            encryption_passphrase_file
              | js2n.Nullable String
              | doc "The path of the passphrase file."
              | optional,
            idle_timeout
              | std.number.Integer
              | doc "Specifies the amount of idle time in seconds, after which an Airlock Microgateway session is terminated. This timeout should be smaller than all other session timeouts of your back-end applications. Even if the timeout can be configured in seconds, per default the resolution of the idle session timeout check is 5 seconds only."
              | optional,
            lifetime
              | std.number.Integer
              | doc "Specifies the absolute lifetime of an Airlock Microgateway session in seconds. After this time a session will be terminated."
              | optional,
            redis_hosts
              | Array String
              | doc "Name of the hosts running the Redis Server."
              | optional,
            store_mode
              | std.enum.TagOrString
              | [| 'disabled, 'cluster, 'server |]
              | doc "Defines the redis session store connection mode. By default, the Microgateway tries to determine the connection mode depending on the number of redis hosts configured:<br />- server mode if only one host is configured<br />- cluster mode if several hosts are configured<br /><br />Allowed values are: server, cluster and disabled."
              | optional,
          }
        | optional,
    }