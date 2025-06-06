# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.meshapi.gateway.AdditionalEndpointBinding" =
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { get = String, },
                          required = { get = true, },
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { put = String, },
                          required = { put = true, },
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { post = String, },
                          required = { post = true, },
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { delete = String, },
                          required = { delete = true, },
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { patch = String, },
                          required = { patch = true, },
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                custom =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.meshapi.gateway.CustomPattern",
                                        { _ | Dyn }
                                      ],
                              },
                          required = { custom = true, },
                        },
                      Array Dyn
                    ]
                ],
              {
                body
                  | String
                  | doc "body is a request message field selector that will be read via HTTP body. '*' indicates that the entire request message gets decoded from the body. An empty string indicates that no part of the request gets decoded from the body. NOTE: Not all methods support HTTP body."
                  | optional,
                custom
                  | refs."definitions.meshapi.gateway.CustomPattern"
                  | { _ | Dyn }
                  | optional,
                delete | String | optional,
                disable_query_param_discovery
                  | Bool
                  | doc "disable_query_param_discovery can be used to avoid auto binding query parameters."
                  | optional,
                get | String | optional,
                patch | String | optional,
                post | String | optional,
                put | String | optional,
                query_params
                  | Array (
                    std.contract.Sequence
                      [
                        refs."definitions.meshapi.gateway.QueryParameterBinding",
                        { _ | Dyn }
                      ]
                  )
                  | doc "query_params are explicit query parameter bindings that can be used to rename or ignore query parameters."
                  | optional,
                response_body
                  | String
                  | doc "response_body is a response message field selector that will be written to HTTP response. '*' or an empty string indicates that the entire response message gets encoded."
                  | optional,
                stream
                  | refs."definitions.meshapi.gateway.StreamConfig"
                  | { _ | Dyn }
                  | optional,
              }
            ],
      "definitions.meshapi.gateway.CustomPattern" =
        {
            method
              | String
              | doc "method is the custom HTTP method."
              | optional,
            path | String | doc "path is the HTTP path pattern." | optional,
          },
      "definitions.meshapi.gateway.EndpointBinding" =
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { get = String, },
                          required = { get = true, },
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { put = String, },
                          required = { put = true, },
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { post = String, },
                          required = { post = true, },
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { delete = String, },
                          required = { delete = true, },
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { patch = String, },
                          required = { patch = true, },
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                custom =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.meshapi.gateway.CustomPattern",
                                        { _ | Dyn }
                                      ],
                              },
                          required = { custom = true, },
                        },
                      Array Dyn
                    ]
                ],
              {
                additional_bindings
                  | Array (
                    std.contract.Sequence
                      [
                        refs."definitions.meshapi.gateway.AdditionalEndpointBinding",
                        { _ | Dyn }
                      ]
                  )
                  | doc "additional_bindings holds additional bindings for the same gRPC service method."
                  | optional,
                body
                  | String
                  | doc "body is a request message field selector that will be read via HTTP body. '*' indicates that the entire request message gets decoded from the body. An empty string indicates that no part of the request gets decoded from the body. NOTE: Not all methods support HTTP body."
                  | optional,
                custom
                  | refs."definitions.meshapi.gateway.CustomPattern"
                  | { _ | Dyn }
                  | optional,
                delete | String | optional,
                disable_query_param_discovery
                  | Bool
                  | doc "disable_query_param_discovery can be used to avoid auto binding query parameters."
                  | optional,
                get | String | optional,
                patch | String | optional,
                post | String | optional,
                put | String | optional,
                query_params
                  | Array (
                    std.contract.Sequence
                      [
                        refs."definitions.meshapi.gateway.QueryParameterBinding",
                        { _ | Dyn }
                      ]
                  )
                  | doc "query_params are explicit query parameter bindings that can be used to rename or ignore query parameters."
                  | optional,
                response_body
                  | String
                  | doc "response_body is a response message field selector that will be written to HTTP response. '*' or an empty string indicates that the entire response message gets encoded."
                  | optional,
                selector
                  | String
                  | doc "selector is a dot-separated gRPC service method selector. If the selector begins with '~.', the current proto package will be added to the beginning of the path. For instance: `~.MyService`. Since no proto package can be deduced in the global config file, this alias cannot be used in the global config file. If the selector does not begin with '~.', it will be treated as a fully qualified method name (FQMN)."
                  | optional,
                stream
                  | refs."definitions.meshapi.gateway.StreamConfig"
                  | { _ | Dyn }
                  | optional,
              }
            ],
      "definitions.meshapi.gateway.GatewaySpec" =
        {
            endpoints
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.EndpointBinding",
                    { _ | Dyn }
                  ]
              )
              | doc "endpoints hold a series of endpoint binding specs."
              | optional,
          },
      "definitions.meshapi.gateway.OpenAPIEnumSpec" =
        {
            schema
              | refs."definitions.meshapi.gateway.openapi.Schema"
              | { _ | Dyn }
              | optional,
            selector
              | String
              | doc "selector is a dot-separated protobuf enum selector. If the selector begins with a '.', it will be treated as an absolute path. If it begins with '~.', the current proto package will be added to the beginning of the path. For instance: `~.MyEnum`. Since no proto package can be deduced in the global config file, this alias cannot be used in the global config file. If the path does not begin with a '.' or '~.', it will be treated as a relative path and a search from the current proto package will be performed in order to find the enum."
              | optional,
          },
      "definitions.meshapi.gateway.OpenAPIMessageSpec" =
        {
            fields
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Schema",
                    { _ | Dyn }
                  ]
              }
              | doc "fields allows controlling the OpenAPI v3.1 generation for individual fields in this proto message."
              | optional,
            schema
              | refs."definitions.meshapi.gateway.openapi.Schema"
              | { _ | Dyn }
              | optional,
            selector
              | String
              | doc "selector is a dot-separated protobuf message selector. If the selector begins with a '.', it will be treated as an absolute path. If it begins with '~.', the current proto package will be added to the beginning of the path. For instance: `~.MyMessage`. Since no proto package can be deduced in the global config file, this alias cannot be used in the global config file. If the path does not begin with a '.' or '~.', it will be treated as a relative path and a search from the current proto package will be performed in order to find the message."
              | optional,
          },
      "definitions.meshapi.gateway.OpenAPIServiceSpec" =
        {
            document
              | refs."definitions.meshapi.gateway.openapi.Document"
              | { _ | Dyn }
              | optional,
            methods
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Operation",
                    { _ | Dyn }
                  ]
              }
              | doc "methods maps each method to an operation configuration."
              | optional,
            selector
              | String
              | doc "selector is a dot-separated gRPC service method selector. If the selector begins with '~.', the current proto package will be added to the beginning of the path. For instance: `~.MyService`. Since no proto package can be deduced in the global config file, this alias cannot be used in the global config file. If the selector does not begin with '~.', it will be treated as a fully qualified method name (FQMN)."
              | optional,
          },
      "definitions.meshapi.gateway.OpenAPISpec" =
        {
            document
              | refs."definitions.meshapi.gateway.openapi.Document"
              | { _ | Dyn }
              | optional,
            enums
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.OpenAPIEnumSpec",
                    { _ | Dyn }
                  ]
              )
              | doc "enums is used to configure OpenAPI v3.1 output for protobuf enums."
              | optional,
            messages
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.OpenAPIMessageSpec",
                    { _ | Dyn }
                  ]
              )
              | doc "messages is used to configure OpenAPI v3.1 output for protobuf messages."
              | optional,
            services
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.OpenAPIServiceSpec",
                    { _ | Dyn }
                  ]
              )
              | doc "services is used to configure OpenAPI v3.1 output for gRPC services."
              | optional,
          },
      "definitions.meshapi.gateway.QueryParameterBinding" =
        {
            ignore
              | Bool
              | doc "ignore avoids reading this query parameter altogether (default: false)."
              | optional,
            name
              | String
              | doc "name is the name of the HTTP query parameter that will be used."
              | optional,
            selector
              | String
              | doc "selector is a dot-separated path to the request message's field."
              | optional,
          },
      "definitions.meshapi.gateway.StreamConfig" =
        {
            disable_chunked_transfer
              | Bool
              | doc "disable_chunked indicates whether or not chunked transfer encoding is allowed. NOTE: Chunked transfer encoding is disabled in HTTP/2 so this option will only be available if the request is HTTP/1."
              | optional,
            disable_sse
              | Bool
              | doc "disable_sse indicates whether or not server-sent events are allowed. see: https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events SSE is only used when Accept-Type from the request includes MIME type text/event-stream."
              | optional,
            disable_websockets
              | Bool
              | doc "disable_websockets indicates whether or not websockets are allowed for this method. The client must still ask for a connection upgrade."
              | optional,
          },
      "definitions.meshapi.gateway.openapi.Components" =
        {
            examples
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Example",
                    { _ | Dyn }
                  ]
              }
              | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            headers
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Header",
                    { _ | Dyn }
                  ]
              }
              | optional,
            links
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Link",
                    { _ | Dyn }
                  ]
              }
              | optional,
            parameters
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Parameter",
                    { _ | Dyn }
                  ]
              }
              | optional,
            request_bodies
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.RequestBody",
                    { _ | Dyn }
                  ]
              }
              | optional,
            responses
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Response",
                    { _ | Dyn }
                  ]
              }
              | optional,
            schemas
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Schema",
                    { _ | Dyn }
                  ]
              }
              | optional,
            security_schemes
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.SecurityScheme",
                    { _ | Dyn }
                  ]
              }
              | optional,
          },
      "definitions.meshapi.gateway.openapi.Contact" =
        {
            email
              | String
              | doc "The email address of the contact person/organization. This MUST be in the form of an email address."
              | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "Extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            name
              | String
              | doc "The identifying name of the contact person/organization."
              | optional,
            url
              | String
              | doc "The URL pointing to the contact information. This MUST be in the form of a URL."
              | optional,
          },
      "definitions.meshapi.gateway.openapi.Discriminator" =
        {
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "Extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            mapping
              | { _ | String }
              | doc "An object to hold mappings between payload values and schema names or references."
              | optional,
            property_name
              | String
              | doc "REQUIRED. The name of the property in the payload that will hold the discriminator value."
              | optional,
          },
      "definitions.meshapi.gateway.openapi.Document" =
        {
            components
              | refs."definitions.meshapi.gateway.openapi.Components"
              | { _ | Dyn }
              | optional,
            config
              | refs."definitions.meshapi.gateway.openapi.DocumentConfiguration"
              | { _ | Dyn }
              | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            external_docs
              | refs."definitions.meshapi.gateway.openapi.ExternalDocumentation"
              | { _ | Dyn }
              | optional,
            info
              | refs."definitions.meshapi.gateway.openapi.Info"
              | { _ | Dyn }
              | optional,
            security
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.SecurityRequirement",
                    { _ | Dyn }
                  ]
              )
              | doc "A declaration of which security mechanisms can be used across the API. The list of values includes alternative security requirement objects that can be used. Only one of the security requirement objects need to be satisfied to authorize a request. Individual operations can override this definition. To make security optional, an empty security requirement ({}) can be included in the array. See: https://spec.openapis.org/oas/v3.1.0#security-requirement-object"
              | optional,
            servers
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Server",
                    { _ | Dyn }
                  ]
              )
              | doc "An array of Server Objects, which provide connectivity information to a target server. If the servers property is not provided, or is an empty array, the default value would be a Server Object with a url value of /. See: https://spec.openapis.org/oas/latest.html#server-object"
              | optional,
            tags
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Tag",
                    { _ | Dyn }
                  ]
              )
              | doc "A list of tags used by the document with additional metadata. The order of the tags can be used to reflect on their order by the parsing tools. Not all tags that are used by the Operation Object must be declared. The tags that are not declared MAY be organized randomly or based on the tools’ logic. Each tag name in the list MUST be unique. See: https://spec.openapis.org/oas/v3.1.0#tag-object"
              | optional,
          },
      "definitions.meshapi.gateway.openapi.DocumentConfiguration" =
        {
            default_responses
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Response",
                    { _ | Dyn }
                  ]
              }
              | doc "default_responses is used to control the default responses generated in this OpenAPI document."
              | optional,
          },
      "definitions.meshapi.gateway.openapi.Encoding" =
        {
            allow_reserved
              | Bool
              | doc "Determines whether the parameter value SHOULD allow reserved characters, as defined by [RFC3986] :/?#[]@!$&'()*+,;= to be included without percent-encoding. The default value is false. This property SHALL be ignored if the request body media type is not application/x-www-form-urlencoded or multipart/form-data. If a value is explicitly defined, then the value of contentType (implicit or explicit) SHALL be ignored."
              | optional,
            content_type
              | String
              | doc "The Content-Type for encoding a specific property. Default value depends on the property type: for object - application/json; for array – the default is defined based on the inner type; for all other cases the default is application/octet-stream. The value can be a specific media type (e.g. application/json), a wildcard media type (e.g. image/*), or a comma-separated list of the two types."
              | optional,
            explode
              | Bool
              | doc "When this is true, property values of type array or object generate separate parameters for each value of the array, or key-value-pair of the map. For other types of properties this property has no effect. When style is form, the default value is true. For all other styles, the default value is false. This property SHALL be ignored if the request body media type is not application/x-www-form-urlencoded or multipart/form-data. If a value is explicitly defined, then the value of contentType (implicit or explicit) SHALL be ignored."
              | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            headers
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Header",
                    { _ | Dyn }
                  ]
              }
              | doc "A map allowing additional information to be provided as headers, for example Content-Disposition. Content-Type is described separately and SHALL be ignored in this section. This property SHALL be ignored if the request body media type is not a multipart."
              | optional,
            style
              | String
              | doc "Describes how a specific property value will be serialized depending on its type. See Parameter Object for details on the style property. The behavior follows the same values as query parameters, including default values. This property SHALL be ignored if the request body media type is not application/x-www-form-urlencoded or multipart/form-data. If a value is explicitly defined, then the value of contentType (implicit or explicit) SHALL be ignored."
              | optional,
          },
      "definitions.meshapi.gateway.openapi.Example" =
        {
            description
              | String
              | doc "Long description for the example. CommonMark syntax MAY be used for rich text representation."
              | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            external_value
              | String
              | doc "A URI that points to the literal example. This provides the capability to reference examples that cannot easily be included in JSON or YAML documents. The value field and externalValue field are mutually exclusive. See the rules for resolving Relative References."
              | optional,
            ref
              | refs."definitions.meshapi.gateway.openapi.Reference"
              | { _ | Dyn }
              | optional,
            summary
              | String
              | doc "Short description for the example."
              | optional,
            value
              | std.contract.any_of
                [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "`Value` represents a dynamically typed value which can be either null, a number, a string, a boolean, a recursive struct value, or a list of values. A producer of value is expected to set one of these variants. Absence of any variant indicates an error. The JSON representation for `Value` is JSON value."
              | optional,
          },
      "definitions.meshapi.gateway.openapi.ExternalDocumentation" =
        {
            description
              | String
              | doc "A description of the target documentation. CommonMark syntax MAY be used for rich text representation."
              | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "Extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            url
              | String
              | doc "REQUIRED. The URL for the target documentation. This MUST be in the form of a URL."
              | optional,
          },
      "definitions.meshapi.gateway.openapi.FieldConfiguration" =
        {
            path_param_name
              | String
              | doc "Alternative parameter name when used as path parameter. If set, this will be used as the complete parameter name when this field is used as a path parameter. Use this to avoid having auto-generated path parameter names for overlapping paths."
              | optional,
            required | Bool | doc "Marks this field as required." | optional,
          },
      "definitions.meshapi.gateway.openapi.Header" =
        {
            allow_empty_value
              | Bool
              | doc "Sets the ability to pass empty-valued parameters. This is valid only for query parameters and allows sending a parameter with an empty value. Default value is false. If style is used, and if behavior is n/a (cannot be serialized), the value of allowEmptyValue SHALL be ignored. Use of this property is NOT RECOMMENDED, as it is likely to be removed in a later revision."
              | optional,
            content
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.MediaType",
                    { _ | Dyn }
                  ]
              }
              | doc "A map containing the representations for the parameter. The key is the media type and the value describes it. The map MUST only contain one entry."
              | optional,
            deprecated
              | Bool
              | doc "Specifies that a parameter is deprecated and SHOULD be transitioned out of usage. Default value is false."
              | optional,
            description
              | String
              | doc "A description of the link. CommonMark syntax MAY be used for rich text representation."
              | optional,
            example
              | std.contract.any_of
                [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "`Value` represents a dynamically typed value which can be either null, a number, a string, a boolean, a recursive struct value, or a list of values. A producer of value is expected to set one of these variants. Absence of any variant indicates an error. The JSON representation for `Value` is JSON value."
              | optional,
            examples
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Example",
                    { _ | Dyn }
                  ]
              }
              | doc "Examples of the parameter’s potential value. Each example SHOULD contain a value in the correct format as specified in the parameter encoding. The examples field is mutually exclusive of the example field. Furthermore, if referencing a schema that contains an example, the examples value SHALL override the example provided by the schema."
              | optional,
            explode
              | Bool
              | doc "When this is true, parameter values of type array or object generate separate parameters for each value of the array or key-value pair of the map. For other types of parameters this property has no effect. When style is form, the default value is true. For all other styles, the default value is false."
              | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            ref
              | refs."definitions.meshapi.gateway.openapi.Reference"
              | { _ | Dyn }
              | optional,
            required
              | Bool
              | doc "Determines whether this parameter is mandatory. If the parameter location is \"path\", this property is REQUIRED and its value MUST be true. Otherwise, the property MAY be included and its default value is false."
              | optional,
            schema
              | refs."definitions.meshapi.gateway.openapi.Schema"
              | { _ | Dyn }
              | optional,
            style
              | String
              | doc "Describes how the parameter value will be serialized depending on the type of the parameter value. Default value for header parameters is \"simple\"."
              | optional,
          },
      "definitions.meshapi.gateway.openapi.Info" =
        {
            contact
              | refs."definitions.meshapi.gateway.openapi.Contact"
              | { _ | Dyn }
              | optional,
            description
              | String
              | doc "A description of the API. CommonMark syntax MAY be used for rich text representation."
              | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "Extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            license
              | refs."definitions.meshapi.gateway.openapi.License"
              | { _ | Dyn }
              | optional,
            summary | String | doc "A short summary of the API." | optional,
            terms_of_service
              | String
              | doc "A URL to the Terms of Service for the API. This MUST be in the form of a URL."
              | optional,
            title | String | doc "REQUIRED. The title of the API." | optional,
            version
              | String
              | doc "REQUIRED. The version of the OpenAPI document."
              | optional,
          },
      "definitions.meshapi.gateway.openapi.License" =
        {
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "Extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            identifier
              | String
              | doc "An SPDX license expression for the API. The identifier field is mutually exclusive of the url field."
              | optional,
            name
              | String
              | doc "REQUIRED. The license name used for the API."
              | optional,
            url
              | String
              | doc "A URL to the license used for the API. This MUST be in the form of a URL. The url field is mutually exclusive of the identifier field."
              | optional,
          },
      "definitions.meshapi.gateway.openapi.Link" =
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { operation_ref = String, },
                          required = { operation_ref = true, },
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { operation_id = String, },
                          required = { operation_id = true, },
                        },
                      Array Dyn
                    ]
                ],
              {
                description
                  | String
                  | doc "A description of the link. CommonMark syntax MAY be used for rich text representation."
                  | optional,
                extensions
                  | {
                    _ | std.contract.any_of
                      [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  }
                  | doc "extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
                  | optional,
                operation_id
                  | String
                  | doc "The name of an existing, resolvable OAS operation, as defined with a unique operationId. This field is mutually exclusive of the operationRef field. NOTE: If a path (relative or absolute) to another service method is used, that operation ID will be substituted. 	Example: \".google.protobuf.Timestamp\""
                  | optional,
                operation_ref
                  | String
                  | doc "A relative or absolute URI reference to an OAS operation. This field is mutually exclusive of the operationId field, and MUST point to an Operation Object. Relative operationRef values MAY be used to locate an existing Operation Object in the OpenAPI definition."
                  | optional,
                parameters
                  | {
                    _ | std.contract.any_of
                      [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  }
                  | doc "A map representing parameters to pass to an operation as specified with operationId or identified via operationRef. The key is the parameter name to be used, whereas the value can be a constant or an expression to be evaluated and passed to the linked operation. The parameter name can be qualified using the parameter location [{in}.]{name} for operations that use the same parameter name in different locations (e.g. path.id)."
                  | optional,
                ref
                  | refs."definitions.meshapi.gateway.openapi.Reference"
                  | { _ | Dyn }
                  | optional,
                request_body
                  | std.contract.any_of
                    [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | doc "`Value` represents a dynamically typed value which can be either null, a number, a string, a boolean, a recursive struct value, or a list of values. A producer of value is expected to set one of these variants. Absence of any variant indicates an error. The JSON representation for `Value` is JSON value."
                  | optional,
                server
                  | refs."definitions.meshapi.gateway.openapi.Server"
                  | { _ | Dyn }
                  | optional,
              }
            ],
      "definitions.meshapi.gateway.openapi.MediaType" =
        {
            encoding
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Encoding",
                    { _ | Dyn }
                  ]
              }
              | doc "A map between a property name and its encoding information. The key, being the property name, MUST exist in the schema as a property. The encoding object SHALL only apply to requestBody objects when the media type is multipart or application/x-www-form-urlencoded."
              | optional,
            example
              | std.contract.any_of
                [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "`Value` represents a dynamically typed value which can be either null, a number, a string, a boolean, a recursive struct value, or a list of values. A producer of value is expected to set one of these variants. Absence of any variant indicates an error. The JSON representation for `Value` is JSON value."
              | optional,
            examples
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Example",
                    { _ | Dyn }
                  ]
              }
              | doc "Examples of the parameter’s potential value. Each example SHOULD contain a value in the correct format as specified in the parameter encoding. The examples field is mutually exclusive of the example field. Furthermore, if referencing a schema that contains an example, the examples value SHALL override the example provided by the schema."
              | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            schema
              | refs."definitions.meshapi.gateway.openapi.Schema"
              | { _ | Dyn }
              | optional,
          },
      "definitions.meshapi.gateway.openapi.Operation" =
        {
            deprecated
              | Bool
              | doc "Declares this operation to be deprecated. Consumers SHOULD refrain from usage of the declared operation. Default value is false."
              | optional,
            description
              | String
              | doc "A verbose explanation of the operation behavior. CommonMark syntax MAY be used for rich text representation."
              | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            external_docs
              | refs."definitions.meshapi.gateway.openapi.ExternalDocumentation"
              | { _ | Dyn }
              | optional,
            operation_id
              | String
              | doc "Override the operation ID, if left unset, a default value will be provided."
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Parameter",
                    { _ | Dyn }
                  ]
              )
              | doc "A list of parameters that are applicable for this operation. Note that path and query parameters get populated by the generator and will override any overlapping keys. You might use this to define headers and values that are not defined on the request payload."
              | optional,
            responses
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Response",
                    { _ | Dyn }
                  ]
              }
              | doc "The list of possible responses returned from executing this operation. NOTE: This list is additive meaning that it will override any generated response from the proto files."
              | optional,
            security
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.SecurityRequirement",
                    { _ | Dyn }
                  ]
              )
              | doc "A declaration of which security mechanisms can be used for this operation. The list of values includes alternative security requirement objects that can be used. Only one of the security requirement objects need to be satisfied to authorize a request. To make security optional, an empty security requirement ({}) can be included in the array. This definition overrides any declared top-level security. To remove a top-level security declaration, an empty array can be used."
              | optional,
            servers
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Server",
                    { _ | Dyn }
                  ]
              )
              | doc "An alternative server array to service this operation. If an alternative server object is specified at the Path Item Object or Root level, it will be overridden by this value."
              | optional,
            summary
              | String
              | doc "A short summary of what the operation does. Default is the proto docstring for this method."
              | optional,
            tags
              | Array String
              | doc "A list of tags for API documentation control. Tags can be used for logical grouping of operations by resources or any other qualifier."
              | optional,
          },
      "definitions.meshapi.gateway.openapi.Parameter" =
        {
            allow_empty_value
              | Bool
              | doc "Sets the ability to pass empty-valued parameters. This is valid only for query parameters and allows sending a parameter with an empty value. Default value is false. If style is used, and if behavior is n/a (cannot be serialized), the value of allowEmptyValue SHALL be ignored. Use of this property is NOT RECOMMENDED, as it is likely to be removed in a later revision."
              | optional,
            allow_reserved
              | Bool
              | doc "Determines whether the parameter value SHOULD allow reserved characters, as defined by [RFC3986] :/?#[]@!$&'()*+,;= to be included without percent-encoding. This property only applies to parameters with an in value of query. The default value is false."
              | optional,
            content
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.MediaType",
                    { _ | Dyn }
                  ]
              }
              | doc "A map containing the representations for the parameter. The key is the media type and the value describes it. The map MUST only contain one entry."
              | optional,
            deprecated
              | Bool
              | doc "Specifies that a parameter is deprecated and SHOULD be transitioned out of usage. Default value is false."
              | optional,
            description
              | String
              | doc "A description of the link. CommonMark syntax MAY be used for rich text representation."
              | optional,
            example
              | std.contract.any_of
                [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "`Value` represents a dynamically typed value which can be either null, a number, a string, a boolean, a recursive struct value, or a list of values. A producer of value is expected to set one of these variants. Absence of any variant indicates an error. The JSON representation for `Value` is JSON value."
              | optional,
            examples
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Example",
                    { _ | Dyn }
                  ]
              }
              | doc "Examples of the parameter’s potential value. Each example SHOULD contain a value in the correct format as specified in the parameter encoding. The examples field is mutually exclusive of the example field. Furthermore, if referencing a schema that contains an example, the examples value SHALL override the example provided by the schema."
              | optional,
            explode
              | Bool
              | doc "When this is true, parameter values of type array or object generate separate parameters for each value of the array or key-value pair of the map. For other types of parameters this property has no effect. When style is form, the default value is true. For all other styles, the default value is false."
              | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            "in"
              | String
              | doc "REQUIRED. The location of the parameter. Possible values are \"query\", \"header\", \"path\" or \"cookie\"."
              | optional,
            name
              | String
              | doc "REQUIRED. The name of the parameter. Parameter names are case sensitive. If in is \"path\", the name field MUST correspond to a template expression occurring within the path field in the Paths Object. See Path Templating for further information. If in is \"header\" and the name field is \"Accept\", \"Content-Type\" or \"Authorization\", the parameter definition SHALL be ignored. For all other cases, the name corresponds to the parameter name used by the in property."
              | optional,
            ref
              | refs."definitions.meshapi.gateway.openapi.Reference"
              | { _ | Dyn }
              | optional,
            required
              | Bool
              | doc "Determines whether this parameter is mandatory. If the parameter location is \"path\", this property is REQUIRED and its value MUST be true. Otherwise, the property MAY be included and its default value is false."
              | optional,
            schema
              | refs."definitions.meshapi.gateway.openapi.Schema"
              | { _ | Dyn }
              | optional,
            style
              | String
              | doc "Describes how the parameter value will be serialized depending on the type of the parameter value. Default value for header parameters is \"simple\"."
              | optional,
          },
      "definitions.meshapi.gateway.openapi.Reference" =
        {
            description
              | String
              | doc "A description that, by default, SHOULD override that of the referenced component. CommonMark syntax MAY be used for rich text representation. If the referenced object-type does not allow a description field, then this field has no effect."
              | optional,
            summary
              | String
              | doc "A short summary that, by default, SHOULD override that of the referenced component. If the referenced object-type does not allow a summary field, then this field has no effect."
              | optional,
            uri
              | String
              | doc "REQUIRED. The reference identifier. This MUST be in the form of a URI. For proto messages, a fully qualified message name can be used (relative links are allowed where proto file is deduced). Example: \".google.protobuf.Timestamp\""
              | optional,
          },
      "definitions.meshapi.gateway.openapi.RequestBody" =
        {
            content
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.MediaType",
                    { _ | Dyn }
                  ]
              }
              | doc "REQUIRED. The content of the request body. The key is a media type or media type range and the value describes it. For requests that match multiple keys, only the most specific key is applicable. e.g. text/plain overrides text/*"
              | optional,
            description
              | String
              | doc "A brief description of the request body. This could contain examples of use. CommonMark syntax MAY be used for rich text representation."
              | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            ref
              | refs."definitions.meshapi.gateway.openapi.Reference"
              | { _ | Dyn }
              | optional,
            required
              | Bool
              | doc "Determines if the request body is required in the request. Defaults to false."
              | optional,
          },
      "definitions.meshapi.gateway.openapi.Response" =
        {
            content
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.MediaType",
                    { _ | Dyn }
                  ]
              }
              | doc "A map containing descriptions of potential response payloads. The key is a media type or media type range and the value describes it. For responses that match multiple keys, only the most specific key is applicable. e.g. text/plain overrides text/*"
              | optional,
            description
              | String
              | doc "A description which by default SHOULD override that of the referenced component. CommonMark syntax MAY be used for rich text representation. If the referenced object-type does not allow a description field, then this field has no effect."
              | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            headers
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Header",
                    { _ | Dyn }
                  ]
              }
              | doc "Maps a header name to its definition. [RFC7230] states header names are case insensitive. If a response header is defined with the name \"Content-Type\", it SHALL be ignored."
              | optional,
            links
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Link",
                    { _ | Dyn }
                  ]
              }
              | doc "A map of operations links that can be followed from the response. The key of the map is a short name for the link, following the naming constraints of the names for Component Objects."
              | optional,
            ref
              | refs."definitions.meshapi.gateway.openapi.Reference"
              | { _ | Dyn }
              | optional,
          },
      "definitions.meshapi.gateway.openapi.Schema" =
        {
            additional_properties | js2n.Always | { _ | Dyn } | optional,
            all_of
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | doc "The allOf keyword specifies that an instance must validate against all the schemas defined in the array. See: https://json-schema.org/draft/2020-12/json-schema-core#name-allof"
              | optional,
            any_of
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | doc "The anyOf keyword specifies that an instance must validate against at least one of the schemas defined in the array. See: https://json-schema.org/draft/2020-12/json-schema-core#name-anyof"
              | optional,
            config
              | refs."definitions.meshapi.gateway.openapi.FieldConfiguration"
              | { _ | Dyn }
              | optional,
            "default"
              | std.contract.any_of
                [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "`Value` represents a dynamically typed value which can be either null, a number, a string, a boolean, a recursive struct value, or a list of values. A producer of value is expected to set one of these variants. Absence of any variant indicates an error. The JSON representation for `Value` is JSON value."
              | optional,
            deprecated
              | Bool
              | doc "The deprecated keyword specifies that the schema is deprecated. See: https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-validation-00#section-9.3"
              | optional,
            description
              | String
              | doc "A description of the schema using CommonMark syntax."
              | optional,
            discriminator
              | refs."definitions.meshapi.gateway.openapi.Discriminator"
              | { _ | Dyn }
              | optional,
            enum
              | Array String
              | doc "An array of unique values for enum validation. See: https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-validation-00#section-6.1.2"
              | optional,
            examples
              | Array (
                std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | doc "Examples of valid instances for the schema. See: https://json-schema.org/draft/2020-12/json-schema-validation#section-9.5"
              | optional,
            exclusive_maximum
              | Number
              | doc "See: https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-validation-00#section-6.2.3"
              | optional,
            exclusive_minimum
              | Number
              | doc "See: https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-validation-00#section-6.2.5"
              | optional,
            external_docs
              | refs."definitions.meshapi.gateway.openapi.ExternalDocumentation"
              | { _ | Dyn }
              | optional,
            extra
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "Extra can be used to add any other field in the schema. Since OpenAPI v3.1 arbitrary fields can be used in the schema objects. This field can be utilized to add those extra fields. Some of the JSON schema validation properties or core properties that are not captured as part of the gRPC REST Gateway OpenAPI objects."
              | optional,
            format
              | String
              | doc "The format keyword specifies a predefined format for the schema value. See: https://json-schema.org/draft-06/json-schema-validation#rfc.section.8"
              | optional,
            items
              | refs."definitions.meshapi.gateway.openapi.Schema.Item"
              | { _ | Dyn }
              | optional,
            max_items
              | String
              | doc "An array instance is valid against \"maxItems\" if its size is less than, or equal to, the value of this keyword. See: https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-validation-00#section-6.4.1"
              | optional,
            max_length
              | String
              | doc "A string instance is valid against this keyword if its length is less than, or equal to, the value of this keyword. See: https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-validation-00#section-6.3.1"
              | optional,
            max_properties | String | optional,
            maximum
              | Number
              | doc "Maximum represents an inclusive upper limit for a numeric instance. The value of MUST be a number, representing an inclusive upper limit for a numeric instance. See: https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-validation-00#section-6.2.2"
              | optional,
            min_items
              | String
              | doc "An array instance is valid against \"minItems\" if its size is greater than, or equal to, the value of this keyword. See: https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-validation-00#section-6.4.2"
              | optional,
            min_length
              | String
              | doc "A string instance is valid against this keyword if its length is greater than, or equal to, the value of this keyword. See: https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-validation-00#section-6.3.2"
              | optional,
            min_properties | String | optional,
            minimum
              | Number
              | doc "minimum represents an inclusive lower limit for a numeric instance. The value of MUST be a number, representing an inclusive lower limit for a numeric instance. See: https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-validation-00#section-6.2.4"
              | optional,
            multiple_of
              | Number
              | doc "The value of \"multipleOf\" MUST be a number, strictly greater than 0. A numeric instance is valid only if division by this keyword's value results in an integer.  See: https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-validation-00#section-6.2.1"
              | optional,
            not | js2n.Always | { _ | Dyn } | optional,
            one_of
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | doc "The oneOf keyword specifies that an instance must validate against exactly one of the schemas defined in the array. See: https://json-schema.org/draft/2020-12/json-schema-core#name-oneof"
              | optional,
            pattern
              | String
              | doc "A regular expression pattern that the schema value should match. See: https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-validation-00#section-6.3.3"
              | optional,
            properties
              | { _ | std.contract.Sequence [ js2n.Always, { _ | Dyn } ] }
              | doc "The properties keyword specifies the schema for properties in an object. Defining any property here for proto messages merges them with the automatically generated ones."
              | optional,
            read_only
              | Bool
              | doc "The readOnly keyword specifies that a property is read-only. See: https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-validation-00#section-9.4"
              | optional,
            ref
              | String
              | doc "Ref is used to define an external reference to include in the message. This could be a fully qualified proto message reference and start with a '.', and that type must be available in the proto files or their dependencies. If no message is identified, the Ref will be used verbatim in the output. For example:  `ref: \".google.protobuf.Timestamp\"`. NOTE: This reference will only be honored when used in top-level schemas in responses only."
              | optional,
            required
              | Array String
              | doc "A list of property names that are required in this schema."
              | optional,
            schema
              | String
              | doc "The \"$schema\" keyword is used to identify the schema dialect and its associated URI for validation.  See: https://json-schema.org/draft/2020-12/json-schema-core#name-the-schema-keyword"
              | optional,
            title | String | doc "The title of the schema." | optional,
            types
              | Array (
                js2n.Enum
                  [
                    "UNKNOWN",
                    0,
                    "ARRAY",
                    1,
                    "BOOLEAN",
                    2,
                    "INTEGER",
                    3,
                    "NULL",
                    4,
                    "NUMBER",
                    5,
                    "OBJECT",
                    6,
                    "STRING",
                    7
                  ]
              )
              | doc "Enum for the data type of a schema."
              | optional,
            unique_items
              | Bool
              | doc "If set to true, all items must be unique."
              | optional,
            write_only
              | Bool
              | doc "The writeOnly keyword specifies that a property is write-only. See: https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-validation-00#section-9.4"
              | optional,
          },
      "definitions.meshapi.gateway.openapi.Schema.Item" =
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                schema =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.meshapi.gateway.openapi.Schema",
                                        { _ | Dyn }
                                      ],
                              },
                          required = { schema = true, },
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                list =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.meshapi.gateway.openapi.Schema.SchemaList",
                                        { _ | Dyn }
                                      ],
                              },
                          required = { list = true, },
                        },
                      Array Dyn
                    ]
                ],
              {
                list
                  | refs."definitions.meshapi.gateway.openapi.Schema.SchemaList"
                  | { _ | Dyn }
                  | optional,
                schema
                  | refs."definitions.meshapi.gateway.openapi.Schema"
                  | { _ | Dyn }
                  | optional,
              }
            ],
      "definitions.meshapi.gateway.openapi.Schema.SchemaList" =
        {
            items
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.Schema",
                    { _ | Dyn }
                  ]
              )
              | optional,
          },
      "definitions.meshapi.gateway.openapi.SecurityRequirement" =
        {
            name
              | String
              | doc "Each name MUST correspond to a security scheme which is declared in the Security Schemes under the Components Object. If the security scheme is of type \"oauth2\" or \"openIdConnect\", then the value is a list of scope names required for the execution, and the list MAY be empty if authorization does not require a specified scope. For other security scheme types, the array MAY contain a list of role names which are required for the execution, but are not otherwise defined or exchanged in-band."
              | optional,
            scopes | Array String | optional,
          },
      "definitions.meshapi.gateway.openapi.SecurityScheme" =
        {
            bearer_format
              | String
              | doc "A hint to the client to identify how the bearer token is formatted. Bearer tokens are usually generated by an authorization server, so this information is primarily for documentation purposes."
              | optional,
            description
              | String
              | doc "A brief description of the request body. This could contain examples of use. CommonMark syntax MAY be used for rich text representation."
              | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            flows
              | refs."definitions.meshapi.gateway.openapi.SecurityScheme.OAuthFlows"
              | { _ | Dyn }
              | optional,
            "in"
              | String
              | doc "REQUIRED. The location of the API key. Valid values are \"query\", \"header\" or \"cookie\"."
              | optional,
            name
              | String
              | doc "REQUIRED. The name of the header, query or cookie parameter to be used."
              | optional,
            open_id_connect_url
              | String
              | doc "REQUIRED. OpenId Connect URL to discover OAuth2 configuration values. This MUST be in the form of a URL. The OpenID Connect standard requires the use of TLS."
              | optional,
            ref
              | refs."definitions.meshapi.gateway.openapi.Reference"
              | { _ | Dyn }
              | optional,
            scheme
              | String
              | doc "REQUIRED. The name of the HTTP Authorization scheme to be used in the Authorization header as defined in [RFC7235]. The values used SHOULD be registered in the IANA Authentication Scheme registry."
              | optional,
            type
              | String
              | doc "REQUIRED. The type of the security scheme. Valid values are \"apiKey\", \"http\", \"mutualTLS\", \"oauth2\", \"openIdConnect\"."
              | optional,
          },
      "definitions.meshapi.gateway.openapi.SecurityScheme.OAuthFlow" =
        {
            authorization_url | String | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            refresh_url | String | optional,
            scopes | { _ | String } | optional,
            token_url | String | optional,
          },
      "definitions.meshapi.gateway.openapi.SecurityScheme.OAuthFlows" =
        {
            authorization_code
              | refs."definitions.meshapi.gateway.openapi.SecurityScheme.OAuthFlow"
              | { _ | Dyn }
              | optional,
            client_credentials
              | refs."definitions.meshapi.gateway.openapi.SecurityScheme.OAuthFlow"
              | { _ | Dyn }
              | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            implicit
              | refs."definitions.meshapi.gateway.openapi.SecurityScheme.OAuthFlow"
              | { _ | Dyn }
              | optional,
            password
              | refs."definitions.meshapi.gateway.openapi.SecurityScheme.OAuthFlow"
              | { _ | Dyn }
              | optional,
          },
      "definitions.meshapi.gateway.openapi.Server" =
        {
            description
              | String
              | doc "An optional string describing the host designated by the URL. CommonMark syntax MAY be used for rich text representation."
              | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "Extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            url
              | String
              | doc "REQUIRED. A URL to the target host. This URL supports Server Variables and MAY be relative, to indicate that the host location is relative to the location where the OpenAPI document is being served. Variable substitutions will be made when a variable is named in {brackets}."
              | optional,
            variables
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.meshapi.gateway.openapi.ServerVariable",
                    { _ | Dyn }
                  ]
              }
              | doc "A map between a variable name and its value. The value is used for substitution in the server’s URL template."
              | optional,
          },
      "definitions.meshapi.gateway.openapi.ServerVariable" =
        {
            default_value
              | String
              | doc "REQUIRED. The default value to use for substitution, which SHALL be sent if an alternate value is not supplied. Note this behavior is different than the Schema Object’s treatment of default values, because in those cases parameter values are optional. If the enum is defined, the value MUST exist in the enum’s values."
              | optional,
            description
              | String
              | doc "An optional description for the server variable. CommonMark syntax MAY be used for rich text representation."
              | optional,
            enum_values
              | Array String
              | doc "An enumeration of string values to be used if the substitution options are from a limited set. The array MUST NOT be empty."
              | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "Extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
          },
      "definitions.meshapi.gateway.openapi.Tag" =
        {
            description
              | String
              | doc "A description for the tag. CommonMark syntax MAY be used for rich text representation."
              | optional,
            extensions
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "Extensions that start with \"x-\" such as \"x-foo\" used to describe extra functionality that is not covered by standard OpenAPI specification. See: https://spec.openapis.org/oas/latest.html#specification-extensions"
              | optional,
            external_docs
              | refs."definitions.meshapi.gateway.openapi.ExternalDocumentation"
              | { _ | Dyn }
              | optional,
            name | String | doc "REQUIRED. The name of the tag." | optional,
          },
    }
    in
  {
      gateway | refs."definitions.meshapi.gateway.GatewaySpec" | optional,
      openapi | refs."definitions.meshapi.gateway.OpenAPISpec" | optional,
    }