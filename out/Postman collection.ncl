# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.auth" =
        {
            apikey
              | Array (
                std.contract.Sequence
                  [ refs."definitions.auth-attribute", { _ | Dyn } ]
              )
              | doc "The attributes for API Key Authentication."
              | optional,
            awsv4
              | Array (
                std.contract.Sequence
                  [ refs."definitions.auth-attribute", { _ | Dyn } ]
              )
              | doc "The attributes for [AWS Auth](http://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html)."
              | optional,
            basic
              | Array (
                std.contract.Sequence
                  [ refs."definitions.auth-attribute", { _ | Dyn } ]
              )
              | doc "The attributes for [Basic Authentication](https://en.wikipedia.org/wiki/Basic_access_authentication)."
              | optional,
            bearer
              | Array (
                std.contract.Sequence
                  [ refs."definitions.auth-attribute", { _ | Dyn } ]
              )
              | doc "The helper attributes for [Bearer Token Authentication](https://tools.ietf.org/html/rfc6750)"
              | optional,
            digest
              | Array (
                std.contract.Sequence
                  [ refs."definitions.auth-attribute", { _ | Dyn } ]
              )
              | doc "The attributes for [Digest Authentication](https://en.wikipedia.org/wiki/Digest_access_authentication)."
              | optional,
            edgegrid
              | Array (
                std.contract.Sequence
                  [ refs."definitions.auth-attribute", { _ | Dyn } ]
              )
              | doc "The attributes for [Akamai EdgeGrid Authentication](https://developer.akamai.com/legacy/introduction/Client_Auth.html)."
              | optional,
            hawk
              | Array (
                std.contract.Sequence
                  [ refs."definitions.auth-attribute", { _ | Dyn } ]
              )
              | doc "The attributes for [Hawk Authentication](https://github.com/hueniverse/hawk)"
              | optional,
            noauth | js2n.Always | optional,
            ntlm
              | Array (
                std.contract.Sequence
                  [ refs."definitions.auth-attribute", { _ | Dyn } ]
              )
              | doc "The attributes for [NTLM Authentication](https://msdn.microsoft.com/en-us/library/cc237488.aspx)"
              | optional,
            oauth1
              | Array (
                std.contract.Sequence
                  [ refs."definitions.auth-attribute", { _ | Dyn } ]
              )
              | doc "The attributes for [OAuth2](https://oauth.net/1/)"
              | optional,
            oauth2
              | Array (
                std.contract.Sequence
                  [ refs."definitions.auth-attribute", { _ | Dyn } ]
              )
              | doc "Helper attributes for [OAuth2](https://oauth.net/2/)"
              | optional,
            type
              | std.enum.TagOrString
              | [|
                'ntlm,
                'oauth2,
                'oauth1,
                'noauth,
                'hawk,
                'edgegrid,
                'digest,
                'bearer,
                'basic,
                'awsv4,
                'apikey
              |],
            ..
          },
      "definitions.auth-attribute" =
        {
            key | String,
            type | String | optional,
            value | js2n.Always | optional,
            ..
          },
      "definitions.certificate" =
        {
            cert
              | {
                src
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The path to file containing key for certificate, on the file system"
                  | optional,
                ..
              }
              | doc "An object containing path to file certificate, on the file system"
              | optional,
            key
              | {
                src
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The path to file containing key for certificate, on the file system"
                  | optional,
                ..
              }
              | doc "An object containing path to file containing private key, on the file system"
              | optional,
            matches
              | Array String
              | doc "A list of Url match pattern strings, to identify Urls this certificate can be used for."
              | optional,
            name
              | String
              | doc "A name for the certificate for user reference"
              | optional,
            passphrase
              | String
              | doc "The passphrase for the certificate"
              | optional,
            ..
          },
      "definitions.cookie" =
        {
            domain | String | doc "The domain for which this cookie is valid.",
            expires
              | js2n.Nullable String
              | doc "When the cookie expires."
              | optional,
            extensions
              | Array Dyn
              | doc "Custom attributes for a cookie go here, such as the [Priority Field](https://code.google.com/p/chromium/issues/detail?id=232693)"
              | optional,
            hostOnly
              | Bool
              | doc "True if the cookie is a host-only cookie. (i.e. a request's URL domain must exactly match the domain of the cookie)."
              | optional,
            httpOnly
              | Bool
              | doc "Indicates if this cookie is HTTP Only. (if True, the cookie is inaccessible to client-side scripts)"
              | optional,
            maxAge | String | optional,
            name | String | doc "This is the name of the Cookie." | optional,
            path | String | doc "The path associated with the Cookie.",
            secure
              | Bool
              | doc "Indicates if the 'secure' flag is set on the Cookie, meaning that it is transmitted over secure connections only. (typically HTTPS)"
              | optional,
            session
              | Bool
              | doc "True if the cookie is a session cookie."
              | optional,
            value | String | doc "The value of the Cookie." | optional,
            ..
          },
      "definitions.description" =
        std.contract.any_of
            [
              {
                content
                  | String
                  | doc "The content of the description goes here, as a raw string."
                  | optional,
                type
                  | String
                  | doc m%"
                    Holds the mime type of the raw description content. E.g: 'text/markdown' or 'text/html'.
                    The type is used to correctly render the description when generating documentation, or in the Postman app.
                  "%
                  | optional,
                version
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "Description can have versions associated with it, which should be put in this property."
                  | optional,
                ..
              },
              String,
              js2n.Null
            ],
      "definitions.event" =
        {
            disabled
              | Bool
              | doc "Indicates whether the event is disabled. If absent, the event is assumed to be enabled."
              | optional,
            id
              | String
              | doc "A unique identifier for the enclosing event."
              | optional,
            listen
              | String
              | doc "Can be set to `test` or `prerequest` for test scripts or pre-request scripts respectively.",
            script | refs."definitions.script" | { _ | Dyn } | optional,
            ..
          },
      "definitions.event-list" =
        Array (std.contract.Sequence [ refs."definitions.event", { _ | Dyn } ]),
      "definitions.header" =
        {
            description | refs."definitions.description" | optional,
            disabled
              | Bool
              | doc "If set to true, the current header will not be sent with requests."
              | optional,
            key
              | String
              | doc "This holds the LHS of the HTTP Header, e.g ``Content-Type`` or ``X-Custom-Header``",
            value
              | String
              | doc "The value (or the RHS) of the Header is stored in this field.",
            ..
          },
      "definitions.header-list" =
        Array (
            std.contract.Sequence [ refs."definitions.header", { _ | Dyn } ]
          ),
      "definitions.info" =
        {
            _postman_id
              | String
              | doc m%"
                Every collection is identified by the unique value of this field. The value of this field is usually easiest to generate using a UID generator function. If you already have a collection, it is recommended that you maintain the same id since changing the id usually implies that is a different collection than it was originally.
                 *Note: This field exists for compatibility reasons with Collection Format V1.*
              "%
              | optional,
            description | refs."definitions.description" | optional,
            name
              | String
              | doc "A collection's friendly name is defined by this field. You would want to set this field to a value that would allow you to easily identify this collection among a bunch of other collections, as such outlining its usage or content.",
            schema
              | String
              | doc "This should ideally hold a link to the Postman schema that is used to validate this collection. E.g: https://schema.getpostman.com/collection/v1",
            version | refs."definitions.version" | optional,
            ..
          },
      "definitions.item" =
        {
            description | refs."definitions.description" | optional,
            event | refs."definitions.event-list" | Array Dyn | optional,
            id
              | String
              | doc "A unique ID that is used to identify collections internally"
              | optional,
            name
              | String
              | doc "A human readable identifier for the current item."
              | optional,
            protocolProfileBehavior
              | refs."definitions.protocol-profile-behavior"
              | { _ | Dyn }
              | optional,
            request | refs."definitions.request",
            response
              | Array (
                std.contract.Sequence
                  [ refs."definitions.response", { _ | Dyn } ]
              )
              | optional,
            variable | refs."definitions.variable-list" | Array Dyn | optional,
            ..
          },
      "definitions.item-group" =
        {
            auth
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.auth", { _ | Dyn } ])
              | optional,
            description | refs."definitions.description" | optional,
            event | refs."definitions.event-list" | Array Dyn | optional,
            item
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.item", { _ | Dyn } ],
                    std.contract.Sequence [ js2n.Always, { _ | Dyn } ]
                  ]
              )
              | doc "Items are entities which contain an actual HTTP request, and sample responses attached to it. Folders may contain many items.",
            name
              | String
              | doc "A folder's friendly name is defined by this field. You would want to set this field to a value that would allow you to easily identify this folder."
              | optional,
            protocolProfileBehavior
              | refs."definitions.protocol-profile-behavior"
              | { _ | Dyn }
              | optional,
            variable | refs."definitions.variable-list" | Array Dyn | optional,
            ..
          },
      "definitions.protocol-profile-behavior" = { _ | Dyn },
      "definitions.proxy-config" =
        {
            disabled
              | Bool
              | doc "When set to true, ignores this proxy configuration entity"
              | optional,
            host | String | doc "The proxy server host" | optional,
            "match"
              | String
              | doc "The Url match for which the proxy config is defined"
              | optional,
            port
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "The proxy server port"
              | optional,
            tunnel
              | Bool
              | doc "The tunneling details for the proxy config"
              | optional,
            ..
          },
      "definitions.request" =
        std.contract.any_of
            [
              {
                auth
                  | js2n.Nullable
                    (std.contract.Sequence
                      [ refs."definitions.auth", { _ | Dyn } ])
                  | optional,
                body
                  | js2n.Nullable
                    {
                      disabled
                        | Bool
                        | doc "When set to true, prevents request body from being sent."
                        | optional,
                      file
                        | {
                          content | String | optional,
                          src | js2n.Nullable String | optional,
                          ..
                        }
                        | optional,
                      formdata
                        | Array (
                          std.contract.any_of
                            [
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        contentType = String,
                                        description =
                                          refs."definitions.description",
                                        disabled = Bool,
                                        key = String,
                                        type = js2n.Const "text",
                                        value = String,
                                      },
                                  required = { key = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        contentType = String,
                                        description =
                                          refs."definitions.description",
                                        disabled = Bool,
                                        key = String,
                                        src =
                                          std.contract.any_of
                                              [ js2n.Null, String, Array Dyn ],
                                        type = js2n.Const "file",
                                      },
                                  required = { key = true, },
                                }
                            ]
                        )
                        | optional,
                      graphql | { _ | Dyn } | optional,
                      mode
                        | std.enum.TagOrString
                        | [| 'graphql, 'file, 'formdata, 'urlencoded, 'raw |]
                        | doc "Postman stores the type of data associated with this request in this field."
                        | optional,
                      options
                        | { _ | Dyn }
                        | doc "Additional configurations and options set for various body modes."
                        | optional,
                      raw | String | optional,
                      urlencoded
                        | Array
                          {
                            description
                              | refs."definitions.description"
                              | optional,
                            disabled | Bool | optional,
                            key | String,
                            value | String | optional,
                            ..
                          }
                        | optional,
                      ..
                    }
                  | optional,
                certificate
                  | refs."definitions.certificate"
                  | { _ | Dyn }
                  | optional,
                description | refs."definitions.description" | optional,
                header
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [ refs."definitions.header-list", Array Dyn ],
                      String
                    ]
                  | optional,
                method
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [|
                            'VIEW,
                            'PROPFIND,
                            'UNLOCK,
                            'LOCK,
                            'PURGE,
                            'UNLINK,
                            'LINK,
                            'OPTIONS,
                            'HEAD,
                            'COPY,
                            'DELETE,
                            'PATCH,
                            'POST,
                            'PUT,
                            'GET
                          |]
                        ],
                      String
                    ]
                  | optional,
                proxy
                  | refs."definitions.proxy-config"
                  | { _ | Dyn }
                  | optional,
                url | refs."definitions.url" | optional,
                ..
              },
              String
            ],
      "definitions.response" =
        {
            body
              | js2n.Nullable String
              | doc "The raw text of the response."
              | optional,
            code
              | std.number.Integer
              | doc "The numerical response code, example: 200, 201, 404, etc."
              | optional,
            cookie
              | Array (
                std.contract.Sequence [ refs."definitions.cookie", { _ | Dyn } ]
              )
              | optional,
            header
              | js2n.OneOf
                [
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.header", { _ | Dyn } ],
                        String
                      ]),
                  js2n.Nullable String
                ]
              | optional,
            id
              | String
              | doc "A unique, user defined identifier that can  be used to refer to this response from requests."
              | optional,
            originalRequest | refs."definitions.request" | optional,
            responseTime
              | std.contract.any_of [ js2n.Null, Number, String ]
              | doc "The time taken by the request to complete. If a number, the unit is milliseconds. If the response is manually created, this can be set to `null`."
              | optional,
            status
              | String
              | doc "The response status, e.g: '200 OK'"
              | optional,
            timings
              | js2n.Nullable ({ _ | Dyn })
              | doc "Set of timing information related to request and response in milliseconds"
              | optional,
            ..
          },
      "definitions.script" =
        {
            exec | std.contract.any_of [ Array String, String ] | optional,
            id
              | String
              | doc "A unique, user defined identifier that can  be used to refer to this script from requests."
              | optional,
            name | String | doc "Script name" | optional,
            src | refs."definitions.url" | optional,
            type
              | String
              | doc "Type of the script. E.g: 'text/javascript'"
              | optional,
            ..
          },
      "definitions.url" =
        std.contract.any_of
            [
              {
                hash
                  | String
                  | doc "Contains the URL fragment (if any). Usually this is not transmitted over the network, but it could be useful to store this in some cases."
                  | optional,
                host
                  | std.contract.any_of [ String, Array String ]
                  | doc "The host for the URL, E.g: api.yourdomain.com. Can be stored as a string or as an array of strings."
                  | optional,
                path
                  | std.contract.any_of
                    [
                      String,
                      Array (
                        std.contract.any_of
                          [
                            String,
                            {
                              type | String | optional,
                              value | String | optional,
                              ..
                            }
                          ]
                      )
                    ]
                  | optional,
                port
                  | String
                  | doc "The port number present in this URL. An empty value implies 80/443 depending on whether the protocol field contains http/https."
                  | optional,
                protocol
                  | String
                  | doc "The protocol associated with the request, E.g: 'http'"
                  | optional,
                query
                  | Array
                    {
                      description | refs."definitions.description" | optional,
                      disabled
                        | Bool
                        | doc "If set to true, the current query parameter will not be sent with the request."
                        | optional,
                      key | js2n.Nullable String | optional,
                      value | js2n.Nullable String | optional,
                      ..
                    }
                  | doc "An array of QueryParams, which is basically the query string part of the URL, parsed into separate variables"
                  | optional,
                raw
                  | String
                  | doc "The string representation of the request URL, including the protocol, host, path, hash, query parameter(s) and path variable(s)."
                  | optional,
                variable
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.variable", { _ | Dyn } ]
                  )
                  | doc "Postman supports path variables with the syntax `/path/:variableName/to/somewhere`. These variables are stored in this field."
                  | optional,
                ..
              },
              String
            ],
      "definitions.variable" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "id" ],
                  js2n.record.Required [ "key" ],
                  js2n.record.Required [ "id", "key" ]
                ],
              {
                description | refs."definitions.description" | optional,
                disabled | Bool | optional,
                id
                  | String
                  | doc "A variable ID is a unique user-defined value that identifies the variable within a collection. In traditional terms, this would be a variable name."
                  | optional,
                key
                  | String
                  | doc "A variable key is a human friendly value that identifies the variable within a collection. In traditional terms, this would be a variable name."
                  | optional,
                name | String | doc "Variable name" | optional,
                system
                  | Bool
                  | doc "When set to true, indicates that this variable has been set by Postman"
                  | optional,
                type
                  | std.enum.TagOrString
                  | [| 'number, 'any, 'boolean, 'string |]
                  | doc "A variable may have multiple types. This field specifies the type of the variable."
                  | optional,
                value
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The value that a variable holds in this collection. Ultimately, the variables will be replaced by this value, when say running a set of requests from a collection"
                  | optional,
                ..
              }
            ],
      "definitions.variable-list" =
        Array (
            std.contract.Sequence [ refs."definitions.variable", { _ | Dyn } ]
          ),
      "definitions.version" =
        std.contract.any_of
            [
              {
                identifier
                  | js2n.string.MaxLength 10
                  | doc "A human friendly identifier to make sense of the version numbers. E.g: 'beta-3'"
                  | optional,
                major
                  | std.number.Integer
                  | js2n.number.Minimum 0
                  | doc "Increment this number if you make changes to the collection that changes its behaviour. E.g: Removing or adding new test scripts. (partly or completely).",
                meta | js2n.Always | optional,
                minor
                  | std.number.Integer
                  | js2n.number.Minimum 0
                  | doc "You should increment this number if you make changes that will not break anything that uses the collection. E.g: removing a folder.",
                patch
                  | std.number.Integer
                  | js2n.number.Minimum 0
                  | doc "Ideally, minor changes to a collection should result in the increment of this number.",
                ..
              },
              String
            ],
    }
    in
  {
      auth | js2n.Nullable refs."definitions.auth" | optional,
      event | refs."definitions.event-list" | optional,
      info | refs."definitions.info",
      item
        | Array (
          js2n.OneOf [ refs."definitions.item", refs."definitions.item-group" ]
        )
        | doc "Items are the basic unit for a Postman collection. You can think of them as corresponding to a single API endpoint. Each Item has one request and may have multiple API responses associated with it.",
      protocolProfileBehavior
        | refs."definitions.protocol-profile-behavior"
        | optional,
      variable | refs."definitions.variable-list" | optional,
      ..
    }