# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.scopeTemplate" =
        std.contract.any_of
            [
              js2n.string.MinLength 1,
              std.contract.Sequence
                [ js2n.array.MinItems 1, Array (js2n.string.MinLength 1) ]
            ],
      "definitions.scopesSchema" =
        std.contract.any_of
            [
              js2n.string.MinLength 1,
              std.contract.Sequence
                [
                  js2n.record.MinProperties 1,
                  {
                    CONNECT
                      | refs."definitions.scopeTemplate"
                      | std.contract.any_of [ Array Dyn, String ]
                      | optional,
                    DELETE
                      | refs."definitions.scopeTemplate"
                      | std.contract.any_of [ Array Dyn, String ]
                      | optional,
                    GET
                      | refs."definitions.scopeTemplate"
                      | std.contract.any_of [ Array Dyn, String ]
                      | optional,
                    HEAD
                      | refs."definitions.scopeTemplate"
                      | std.contract.any_of [ Array Dyn, String ]
                      | optional,
                    OPTIONS
                      | refs."definitions.scopeTemplate"
                      | std.contract.any_of [ Array Dyn, String ]
                      | optional,
                    PATCH
                      | refs."definitions.scopeTemplate"
                      | std.contract.any_of [ Array Dyn, String ]
                      | optional,
                    POST
                      | refs."definitions.scopeTemplate"
                      | std.contract.any_of [ Array Dyn, String ]
                      | optional,
                    PUT
                      | refs."definitions.scopeTemplate"
                      | std.contract.any_of [ Array Dyn, String ]
                      | optional,
                    TRACE
                      | refs."definitions.scopeTemplate"
                      | std.contract.any_of [ Array Dyn, String ]
                      | optional,
                    "default"
                      | refs."definitions.scopeTemplate"
                      | std.contract.any_of [ Array Dyn, String ]
                      | optional,
                  }
                ],
              std.contract.Sequence
                [ js2n.array.MinItems 1, Array (js2n.string.MinLength 1) ]
            ],
      "definitions.sourceSchema" =
        std.contract.any_of
            [
              js2n.string.MinLength 1,
              { matchCase | Bool | optional, path | js2n.string.MinLength 1, }
            ],
    }
    in
  {
      authenticationMethod
        | std.enum.TagOrString
        | [| 'route, 'none |]
        | optional,
      compression
        | {
          enabled | Bool | optional,
          minSize | std.number.Integer | js2n.number.Minimum 1 | optional,
        }
        | optional,
      destinations
        | {
          _ | {
            logoutMethod
              | std.enum.TagOrString
              | [| 'GET, 'POST, 'PUT |]
              | optional,
            logoutPath | js2n.string.MinLength 1 | optional,
          }
        }
        | optional,
      errorPage
        | Array
          {
            file | js2n.string.MinLength 1,
            status
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 1 ],
                  std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [ std.number.Integer, js2n.number.Minimum 1 ]
                      )
                    ]
                ],
            ..
          }
        | optional,
      login | { callbackEndpoint | js2n.string.MinLength 1, } | optional,
      logout
        | {
          logoutEndpoint | js2n.string.MinLength 1 | optional,
          logoutPage | js2n.string.MinLength 1 | optional,
        }
        | optional,
      pluginMetadataEndpoint | js2n.string.MinLength 1 | optional,
      routes
        | Array
          {
            authenticationType
              | std.enum.TagOrString
              | [| 'none, 'ias, 'basic, 'xsuaa |]
              | optional,
            cacheControl | js2n.string.MinLength 1 | optional,
            csrfProtection | Bool | optional,
            destination | js2n.string.MinLength 1 | optional,
            endpoint | String | optional,
            httpMethods
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'PATCH,
                      'TRACE,
                      'PUT,
                      'POST,
                      'OPTIONS,
                      'HEAD,
                      'GET,
                      'DELETE
                    |]
                  ]
              )
              | optional,
            identityProvider | js2n.string.MinLength 1 | optional,
            localDir | js2n.string.MinLength 1 | optional,
            replace
              | {
                pathSuffixes | Array (js2n.string.MinLength 1),
                services | { _ | Dyn } | optional,
                vars | Array (js2n.string.MinLength 1) | optional,
              }
              | optional,
            scope | refs."definitions.scopesSchema" | optional,
            service | String | optional,
            source | refs."definitions.sourceSchema",
            target | js2n.string.MinLength 1 | optional,
          }
        | optional,
      services
        | {
          _ | {
            endpoint | js2n.string.MinLength 1 | optional,
            logoutMethod
              | std.enum.TagOrString
              | [| 'GET, 'POST, 'PUT |]
              | optional,
            logoutPath | js2n.string.MinLength 1 | optional,
          }
        }
        | optional,
      sessionTimeout | std.number.Integer | js2n.number.Minimum 1 | optional,
      websockets | { enabled | Bool, } | optional,
      welcomeFile | js2n.string.MinLength 1 | optional,
      whitelistService | { endpoint | js2n.string.MinLength 1, } | optional,
      ..
    }