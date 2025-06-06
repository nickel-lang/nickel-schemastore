# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.DataConnectSingle" =
        {
            postdeploy
              | std.contract.any_of [ Array String, String ]
              | optional,
            predeploy | std.contract.any_of [ Array String, String ] | optional,
            source | String,
          },
      "definitions.DatabaseSingle" =
        {
            postdeploy
              | std.contract.any_of [ Array String, String ]
              | optional,
            predeploy | std.contract.any_of [ Array String, String ] | optional,
            rules | String,
          },
      "definitions.ExtensionsConfig" = {},
      "definitions.FirestoreSingle" =
        {
            database | String | optional,
            indexes | String | optional,
            location | String | optional,
            postdeploy
              | std.contract.any_of [ Array String, String ]
              | optional,
            predeploy | std.contract.any_of [ Array String, String ] | optional,
            rules | String | optional,
          },
      "definitions.FrameworksBackendOptions" =
        {
            concurrency
              | Number
              | doc "Number of requests a function can serve at once."
              | optional,
            cors
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                If true, allows CORS on requests to this function.
                If this is a `string` or `RegExp`, allows requests from domains that match the provided value.
                If this is an `Array`, allows requests from domains matching at least one entry of the array.
                Defaults to true for {@link https.CallableFunction} and false otherwise.
              "%
              | optional,
            cpu
              | std.contract.any_of [ std.contract.Equal "gcf_gen1", Number ]
              | doc "Fractional number of CPUs to allocate to a function."
              | optional,
            enforceAppCheck
              | Bool
              | doc "Determines whether Firebase AppCheck is enforced. Defaults to false."
              | optional,
            ingressSettings
              | std.enum.TagOrString
              | [| 'ALLOW_INTERNAL_ONLY, 'ALLOW_INTERNAL_AND_GCLB, 'ALLOW_ALL |]
              | doc "Ingress settings which control where this function can be called from."
              | optional,
            invoker
              | std.contract.Equal "public"
              | doc "Invoker to set access control on https functions."
              | optional,
            labels
              | refs."definitions.Record%3Cstring,string%3E"
              | { _ | Dyn }
              | doc "User labels to set on the function."
              | optional,
            maxInstances
              | Number
              | doc "Max number of instances to be running in parallel."
              | optional,
            memory
              | std.enum.TagOrString
              | [|
                '"8GiB",
                '"512MiB",
                '"4GiB",
                '"32GiB",
                '"2GiB",
                '"256MiB",
                '"1GiB",
                '"16GiB",
                '"128MiB"
              |]
              | doc "Amount of memory to allocate to a function."
              | optional,
            minInstances
              | Number
              | doc "Min number of actual instances to be running at a given time."
              | optional,
            omit
              | Bool
              | doc "If true, do not deploy or emulate this function."
              | optional,
            preserveExternalChanges
              | Bool
              | doc "Controls whether function configuration modified outside of function source is preserved. Defaults to false."
              | optional,
            region
              | String
              | doc "HTTP functions can override global options and can specify multiple regions to deploy to."
              | optional,
            secrets | Array String | optional,
            serviceAccount
              | String
              | doc "Specific service account for the function to run as."
              | optional,
            timeoutSeconds
              | Number
              | doc m%"
                Timeout for the function in seconds, possible values are 0 to 540.
                HTTPS functions can specify a higher timeout.
              "%
              | optional,
            vpcConnector
              | String
              | doc "Connect cloud function to specified VPC connector."
              | optional,
            vpcConnectorEgressSettings
              | std.enum.TagOrString
              | [| 'PRIVATE_RANGES_ONLY, 'ALL_TRAFFIC |]
              | doc "Egress settings for VPC connector."
              | optional,
          },
      "definitions.FunctionConfig" =
        {
            codebase | String | optional,
            ignore | Array String | optional,
            postdeploy
              | std.contract.any_of [ Array String, String ]
              | optional,
            predeploy | std.contract.any_of [ Array String, String ] | optional,
            runtime
              | std.enum.TagOrString
              | [|
                'python313,
                'python312,
                'python311,
                'python310,
                'nodejs22,
                'nodejs20
              |]
              | optional,
            source | String | optional,
          },
      "definitions.HostingHeaders" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        glob = String,
                        headers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    { key = String, value = String, },
                                  required = { key = true, value = true, },
                                }),
                      },
                  required = { glob = true, headers = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        headers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    { key = String, value = String, },
                                  required = { key = true, value = true, },
                                }),
                        source = String,
                      },
                  required = { headers = true, source = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        headers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    { key = String, value = String, },
                                  required = { key = true, value = true, },
                                }),
                        regex = String,
                      },
                  required = { headers = true, regex = true, },
                }
            ],
      "definitions.HostingRedirects" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { destination = String, glob = String, type = Number, },
                  required = { destination = true, glob = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { destination = String, source = String, type = Number, },
                  required = { destination = true, source = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { destination = String, regex = String, type = Number, },
                  required = { destination = true, regex = true, },
                }
            ],
      "definitions.HostingRewrites" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { destination = String, glob = String, },
                  required = { destination = true, glob = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { function = String, glob = String, region = String, },
                  required = { function = true, glob = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        function =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      functionId = String,
                                      pinTag = Bool,
                                      region = String,
                                    },
                                required = { functionId = true, },
                              },
                        glob = String,
                      },
                  required = { function = true, glob = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        glob = String,
                        run =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      pinTag = Bool,
                                      region = String,
                                      serviceId = String,
                                    },
                                required = { serviceId = true, },
                              },
                      },
                  required = { glob = true, run = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { dynamicLinks = Bool, glob = String, },
                  required = { dynamicLinks = true, glob = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { destination = String, source = String, },
                  required = { destination = true, source = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { function = String, region = String, source = String, },
                  required = { function = true, source = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        function =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      functionId = String,
                                      pinTag = Bool,
                                      region = String,
                                    },
                                required = { functionId = true, },
                              },
                        source = String,
                      },
                  required = { function = true, source = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        run =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      pinTag = Bool,
                                      region = String,
                                      serviceId = String,
                                    },
                                required = { serviceId = true, },
                              },
                        source = String,
                      },
                  required = { run = true, source = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { dynamicLinks = Bool, source = String, },
                  required = { dynamicLinks = true, source = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { destination = String, regex = String, },
                  required = { destination = true, regex = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { function = String, regex = String, region = String, },
                  required = { function = true, regex = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        function =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      functionId = String,
                                      pinTag = Bool,
                                      region = String,
                                    },
                                required = { functionId = true, },
                              },
                        regex = String,
                      },
                  required = { function = true, regex = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        regex = String,
                        run =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      pinTag = Bool,
                                      region = String,
                                      serviceId = String,
                                    },
                                required = { serviceId = true, },
                              },
                      },
                  required = { regex = true, run = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { dynamicLinks = Bool, regex = String, },
                  required = { dynamicLinks = true, regex = true, },
                }
            ],
      "definitions.HostingSingle" =
        {
            appAssociation
              | std.enum.TagOrString
              | [| 'NONE, 'AUTO |]
              | optional,
            cleanUrls | Bool | optional,
            frameworksBackend
              | refs."definitions.FrameworksBackendOptions"
              | { _ | Dyn }
              | optional,
            headers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.HostingHeaders", { _ | Dyn } ]
              )
              | optional,
            i18n | { root | String, } | optional,
            ignore | Array String | optional,
            postdeploy
              | std.contract.any_of [ Array String, String ]
              | optional,
            predeploy | std.contract.any_of [ Array String, String ] | optional,
            public | String | optional,
            redirects
              | Array (
                std.contract.Sequence
                  [ refs."definitions.HostingRedirects", { _ | Dyn } ]
              )
              | optional,
            rewrites
              | Array (
                std.contract.Sequence
                  [ refs."definitions.HostingRewrites", { _ | Dyn } ]
              )
              | optional,
            site | String | optional,
            source | String | optional,
            target | String | optional,
            trailingSlash | Bool | optional,
          },
      "definitions.Record%3Cstring,string%3E" = {},
      "definitions.RemoteConfigConfig" =
        {
            postdeploy
              | std.contract.any_of [ Array String, String ]
              | optional,
            predeploy | std.contract.any_of [ Array String, String ] | optional,
            template | String,
          },
      "definitions.StorageSingle" =
        {
            postdeploy
              | std.contract.any_of [ Array String, String ]
              | optional,
            predeploy | std.contract.any_of [ Array String, String ] | optional,
            rules | String,
            target | String | optional,
          },
    }
    in
  {
      "$schema" | String | optional,
      apphosting
        | std.contract.any_of
          [
            {
              alwaysDeployFromSource | Bool | optional,
              backendId | String,
              ignore | Array String,
              rootDir | String,
            },
            Array
              {
                alwaysDeployFromSource | Bool | optional,
                backendId | String,
                ignore | Array String,
                rootDir | String,
              }
          ]
        | optional,
      database
        | std.contract.any_of
          [
            refs."definitions.DatabaseSingle",
            Array (
              std.contract.any_of
                [
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            instance = String,
                            postdeploy =
                              std.contract.any_of
                                  [ js2n.array.ArrayOf String, String ],
                            predeploy =
                              std.contract.any_of
                                  [ js2n.array.ArrayOf String, String ],
                            rules = String,
                            target = String,
                          },
                      required = { instance = true, rules = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            instance = String,
                            postdeploy =
                              std.contract.any_of
                                  [ js2n.array.ArrayOf String, String ],
                            predeploy =
                              std.contract.any_of
                                  [ js2n.array.ArrayOf String, String ],
                            rules = String,
                            target = String,
                          },
                      required = { rules = true, target = true, },
                    }
                ]
            )
          ]
        | optional,
      dataconnect
        | std.contract.any_of
          [
            refs."definitions.DataConnectSingle",
            Array refs."definitions.DataConnectSingle"
          ]
        | optional,
      emulators
        | {
          apphosting
            | {
              host | String | optional,
              port | Number | optional,
              rootDirectory | String | optional,
              startCommand | String | optional,
              startCommandOverride | String | optional,
            }
            | optional,
          auth
            | { host | String | optional, port | Number | optional, }
            | optional,
          database
            | { host | String | optional, port | Number | optional, }
            | optional,
          dataconnect
            | {
              dataDir | String | optional,
              host | String | optional,
              port | Number | optional,
              postgresHost | String | optional,
              postgresPort | Number | optional,
            }
            | optional,
          eventarc
            | { host | String | optional, port | Number | optional, }
            | optional,
          extensions | { _ | Dyn } | optional,
          firestore
            | {
              host | String | optional,
              port | Number | optional,
              websocketPort | Number | optional,
            }
            | optional,
          functions
            | { host | String | optional, port | Number | optional, }
            | optional,
          hosting
            | { host | String | optional, port | Number | optional, }
            | optional,
          hub
            | { host | String | optional, port | Number | optional, }
            | optional,
          logging
            | { host | String | optional, port | Number | optional, }
            | optional,
          pubsub
            | { host | String | optional, port | Number | optional, }
            | optional,
          singleProjectMode | Bool | optional,
          storage
            | { host | String | optional, port | Number | optional, }
            | optional,
          tasks
            | { host | String | optional, port | Number | optional, }
            | optional,
          ui
            | {
              enabled | Bool | optional,
              host | String | optional,
              port | Number | optional,
            }
            | optional,
        }
        | optional,
      extensions | refs."definitions.ExtensionsConfig" | optional,
      firestore
        | std.contract.any_of
          [
            refs."definitions.FirestoreSingle",
            Array (
              std.contract.any_of
                [
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            database = String,
                            indexes = String,
                            postdeploy =
                              std.contract.any_of
                                  [ js2n.array.ArrayOf String, String ],
                            predeploy =
                              std.contract.any_of
                                  [ js2n.array.ArrayOf String, String ],
                            rules = String,
                            target = String,
                          },
                      required = { target = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            database = String,
                            indexes = String,
                            postdeploy =
                              std.contract.any_of
                                  [ js2n.array.ArrayOf String, String ],
                            predeploy =
                              std.contract.any_of
                                  [ js2n.array.ArrayOf String, String ],
                            rules = String,
                            target = String,
                          },
                      required = { database = true, },
                    }
                ]
            )
          ]
        | optional,
      functions
        | std.contract.any_of
          [
            refs."definitions.FunctionConfig",
            Array refs."definitions.FunctionConfig"
          ]
        | optional,
      hosting
        | std.contract.any_of
          [
            refs."definitions.HostingSingle",
            Array (
              std.contract.any_of
                [
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            appAssociation =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'NONE, 'AUTO |] ],
                            cleanUrls = Bool,
                            frameworksBackend =
                              refs."definitions.FrameworksBackendOptions",
                            headers =
                              js2n.array.ArrayOf
                                  refs."definitions.HostingHeaders",
                            i18n =
                              js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties = { root = String, },
                                    required = { root = true, },
                                  },
                            ignore = js2n.array.ArrayOf String,
                            postdeploy =
                              std.contract.any_of
                                  [ js2n.array.ArrayOf String, String ],
                            predeploy =
                              std.contract.any_of
                                  [ js2n.array.ArrayOf String, String ],
                            public = String,
                            redirects =
                              js2n.array.ArrayOf
                                  refs."definitions.HostingRedirects",
                            rewrites =
                              js2n.array.ArrayOf
                                  refs."definitions.HostingRewrites",
                            site = String,
                            source = String,
                            target = String,
                            trailingSlash = Bool,
                          },
                      required = { target = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            appAssociation =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'NONE, 'AUTO |] ],
                            cleanUrls = Bool,
                            frameworksBackend =
                              refs."definitions.FrameworksBackendOptions",
                            headers =
                              js2n.array.ArrayOf
                                  refs."definitions.HostingHeaders",
                            i18n =
                              js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties = { root = String, },
                                    required = { root = true, },
                                  },
                            ignore = js2n.array.ArrayOf String,
                            postdeploy =
                              std.contract.any_of
                                  [ js2n.array.ArrayOf String, String ],
                            predeploy =
                              std.contract.any_of
                                  [ js2n.array.ArrayOf String, String ],
                            public = String,
                            redirects =
                              js2n.array.ArrayOf
                                  refs."definitions.HostingRedirects",
                            rewrites =
                              js2n.array.ArrayOf
                                  refs."definitions.HostingRewrites",
                            site = String,
                            source = String,
                            target = String,
                            trailingSlash = Bool,
                          },
                      required = { site = true, },
                    }
                ]
            )
          ]
        | optional,
      remoteconfig | refs."definitions.RemoteConfigConfig" | optional,
      storage
        | std.contract.any_of
          [
            refs."definitions.StorageSingle",
            Array
              {
                bucket | String,
                postdeploy
                  | std.contract.any_of [ Array String, String ]
                  | optional,
                predeploy
                  | std.contract.any_of [ Array String, String ]
                  | optional,
                rules | String,
                target | String | optional,
              }
          ]
        | optional,
    }