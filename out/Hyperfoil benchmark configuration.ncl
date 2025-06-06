# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.agent" =
        js2n.OneOf
            [
              std.contract.any_of [ Bool, Number, String ],
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    { ".*" = std.contract.any_of [ Bool, Number, String ], },
                  properties = {},
                  required = {},
                }
            ],
      "definitions.ergonomics" =
        {
            autoRangeCheck
              | Bool
              | doc "Inject status handler that marks the request as invalid on status 4xx or 5xx. Default is true."
              | optional,
            followRedirect
              | std.enum.TagOrString
              | [| 'ALWAYS, 'HTML_ONLY, 'LOCATION_ONLY, 'NEVER |]
              | doc "Automatically fire requests when the server responds with redirection. Default is NEVER."
              | optional,
            repeatCookies
              | Bool
              | doc "Store cookies in session and resend them on future requests. Default is true."
              | optional,
            stopOnInvalid
              | Bool
              | doc "Inject completion handler that will stop the session if the request has been marked as invalid. Default is true."
              | optional,
            userAgentFromSession
              | Bool
              | doc "Append session ID and client hostname as user agent"
              | optional,
          },
      "definitions.fork" =
        {
            scenario | refs."definitions.scenario" | optional,
            weight | Number | optional,
          },
      "definitions.http" =
        {
            addresses
              | Array String
              | doc "List of IP addresses that should be used. The connections will be randomly created to addresses in this list, or using `host` if it's empty."
              | optional,
            allowHttp1x
              | Bool
              | doc "Allow using HTTP 1.0 and HTTP 1.1 connections. Default is true."
              | optional,
            allowHttp2
              | Bool
              | doc "Allow using HTTP 2.0 connections. Default is true."
              | optional,
            connectionStrategy
              | std.enum.TagOrString
              | [|
                'ALWAYS_NEW,
                'OPEN_ON_REQUEST,
                'SESSION_POOLS,
                'SHARED_POOL
              |]
              | doc "Connection pooling model. Default is SHARED_POOL."
              | optional,
            directHttp2
              | Bool
              | doc "Start HTTP 2.0 connections without HTTP 1.x -> 2.0 upgrade. Default is false."
              | optional,
            host
              | String
              | doc "Target hostname. For simplicity this can include scheme and port, too.",
            keyManager
              | {
                alias | String | optional,
                certFile | String | optional,
                keyFile | String | optional,
                password | String | optional,
                storeFile | String | optional,
                storeType | String | optional,
              }
              | doc "TLS key manager for setting up client certificates."
              | optional,
            maxHttp2Streams
              | refs."definitions.positiveInteger"
              | Number
              | doc "Maximum number of concurrent HTTP 2.0 streams on single TCP connection. Default is 100."
              | optional,
            pipeliningLimit
              | refs."definitions.positiveInteger"
              | Number
              | doc "Maximum number of HTTP 1.1 requests pipelined on a connection. Default is 1."
              | optional,
            port
              | std.number.Integer
              | js2n.number.Maximum 65535
              | js2n.number.Minimum 1
              | doc "Target TCP port"
              | optional,
            protocol | std.enum.TagOrString | [| 'https, 'http |] | optional,
            rawBytesHandlers
              | Bool
              | doc "Add handlers to support parsing raw HTTP responses. Default is true."
              | optional,
            requestTimeout
              | refs."definitions.timeMillis"
              | doc "Default timeout for all HTTP requests. Default is 30 seconds."
              | optional,
            sharedConnections
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.positiveInteger", Number ],
                  {
                    buffer | refs."definitions.positiveInteger" | Number,
                    core | refs."definitions.positiveInteger" | Number,
                    keepAliveTime | std.number.Integer | optional,
                    max | refs."definitions.positiveInteger" | Number,
                  }
                ]
              | doc "Maximum number of connections to the server, shared between all phases and sessions. Default is 1."
              | optional,
            trustManager
              | {
                certFile | String | optional,
                password | String | optional,
                storeFile | String | optional,
                storeType | String | optional,
              }
              | doc "TLS trust manager for setting up server certificates."
              | optional,
            useHttpCache
              | Bool
              | doc m%"
                Make use of HTTP cache on client-side. If multiple authorities are involved, disable the HTTP cache for all of them to achieve the desired outcomes. The default is true except for wrk/wrk2 wrappers where it is set to false.
                
              "%
              | optional,
          },
      "definitions.incrementableInteger" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.positiveInteger", Number ],
              {
                base | refs."definitions.positiveInteger" | Number,
                increment | std.number.Integer,
              }
            ],
      "definitions.incrementableNumber" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.positiveNumber", Number ],
              {
                base | refs."definitions.positiveNumber" | Number,
                increment | Number,
              }
            ],
      "definitions.io.hyperfoil.api.config.ListBuilder" = {},
      "definitions.io.hyperfoil.api.config.SLABuilder" =
        {
            blockedRatio | Number | optional,
            errorRatio | Number | optional,
            invalidRatio | Number | optional,
            limits
              | js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = { ".*" = String, },
                      properties = {},
                      required = {},
                    },
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        js2n.record.MaxProperties 1,
                        js2n.record.MinProperties 1,
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = { ".*" = String, },
                            properties = {},
                            required = {},
                          }
                      ]),
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.config.SLABuilder$LimitsBuilder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.config.SLABuilder$LimitsBuilder",
                        { _ | Dyn }
                      ])
                ]
              | optional,
            meanResponseTime | String | optional,
            window | String | optional,
          },
      "definitions.io.hyperfoil.api.config.SLABuilder$LimitsBuilder" = {},
      "definitions.io.hyperfoil.api.config.SLABuilder$ListBuilder" = {},
      "definitions.io.hyperfoil.api.processor.Processor$Builder" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                addItem
                  | refs."definitions.io.hyperfoil.core.steps.collections.AddItemAction$Builder"
                  | { _ | Dyn }
                  | optional,
                addToInt
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.AddToIntAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                addToSharedCounter
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.data.AddToSharedCounterAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                array
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.handlers.ArrayRecorder$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                clearHttpCache
                  | refs."definitions.io.hyperfoil.http.steps.ClearHttpCacheAction$Builder"
                  | { _ | Dyn }
                  | optional,
                closeConnection
                  | refs."definitions.io.hyperfoil.core.handlers.CloseConnectionHandler$Builder"
                  | { _ | Dyn }
                  | optional,
                collection
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.handlers.CollectionRecorder$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                conditional
                  | refs."definitions.io.hyperfoil.core.handlers.ConditionalProcessor$Builder"
                  | { _ | Dyn }
                  | optional,
                count
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.handlers.CountRecorder$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                fail
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.FailAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                getIndex
                  | refs."definitions.io.hyperfoil.core.steps.collections.GetIndexAction$Builder"
                  | { _ | Dyn }
                  | optional,
                getItem
                  | refs."definitions.io.hyperfoil.core.steps.collections.GetItemAction$Builder"
                  | { _ | Dyn }
                  | optional,
                getSharedCounter
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.data.GetSharedCounterAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                getSize
                  | refs."definitions.io.hyperfoil.core.steps.collections.GetSizeAction$Builder"
                  | { _ | Dyn }
                  | optional,
                gzipInflator
                  | refs."definitions.io.hyperfoil.core.handlers.GzipInflatorProcessor$Builder"
                  | { _ | Dyn }
                  | optional,
                json
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.handlers.json.JsonHandler$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                log
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.LogAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                logInvalid
                  | refs."definitions.io.hyperfoil.http.handlers.LogInvalidHandler$BodyHandlerBuilder"
                  | { _ | Dyn }
                  | optional,
                markRequestInvalid
                  | refs."definitions.io.hyperfoil.core.handlers.MarkRequestInvalidAction$Builder"
                  | { _ | Dyn }
                  | optional,
                newSequence
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.handlers.NewSequenceAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                parseHtml
                  | refs."definitions.io.hyperfoil.http.html.HtmlHandler$Builder"
                  | { _ | Dyn }
                  | optional,
                publishAgentData
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.data.PublishAgentDataAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                publishGlobalCounters
                  | refs."definitions.io.hyperfoil.core.steps.data.PublishGlobalCountersAction$Builder"
                  | { _ | Dyn }
                  | optional,
                queue
                  | refs."definitions.io.hyperfoil.core.handlers.QueueProcessor$Builder"
                  | { _ | Dyn }
                  | optional,
                readAgentData
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.data.ReadAgentDataAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                removeItem
                  | refs."definitions.io.hyperfoil.core.steps.collections.RemoveItemAction$Builder"
                  | { _ | Dyn }
                  | optional,
                restartSequence
                  | refs."definitions.io.hyperfoil.core.steps.RestartSequenceAction$Builder"
                  | { _ | Dyn }
                  | optional,
                set
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.SetAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                setInt
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.SetIntAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                setItem
                  | refs."definitions.io.hyperfoil.core.steps.collections.SetItemAction$Builder"
                  | { _ | Dyn }
                  | optional,
                setSharedCounter
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.data.SetSharedCounterAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                simple
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.handlers.StoreProcessor$LegacyBuilder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                store
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.handlers.StoreProcessor$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                storeInt
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.handlers.StoreIntProcessor$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                stringToInt
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.StringToIntAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                unset
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.UnsetAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
              }
            ],
      "definitions.io.hyperfoil.api.processor.RawBytesHandler$Builder" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                transferSizeRecorder
                  | refs."definitions.io.hyperfoil.core.handlers.TransferSizeRecorder$Builder"
                  | { _ | Dyn }
                  | optional,
              }
            ],
      "definitions.io.hyperfoil.api.processor.Transformer$Builder" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                actions
                  | refs."definitions.io.hyperfoil.core.generators.ActionsTransformer$Builder"
                  | { _ | Dyn }
                  | optional,
                pattern
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.generators.Pattern$TransformerBuilder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
              }
            ],
      "definitions.io.hyperfoil.api.session.Action$Builder" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                addItem
                  | refs."definitions.io.hyperfoil.core.steps.collections.AddItemAction$Builder"
                  | { _ | Dyn }
                  | optional,
                addToInt
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.AddToIntAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                addToSharedCounter
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.data.AddToSharedCounterAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                clearHttpCache
                  | refs."definitions.io.hyperfoil.http.steps.ClearHttpCacheAction$Builder"
                  | { _ | Dyn }
                  | optional,
                conditional
                  | refs."definitions.io.hyperfoil.core.handlers.ConditionalAction$Builder"
                  | { _ | Dyn }
                  | optional,
                fail
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.FailAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                getIndex
                  | refs."definitions.io.hyperfoil.core.steps.collections.GetIndexAction$Builder"
                  | { _ | Dyn }
                  | optional,
                getItem
                  | refs."definitions.io.hyperfoil.core.steps.collections.GetItemAction$Builder"
                  | { _ | Dyn }
                  | optional,
                getSharedCounter
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.data.GetSharedCounterAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                getSize
                  | refs."definitions.io.hyperfoil.core.steps.collections.GetSizeAction$Builder"
                  | { _ | Dyn }
                  | optional,
                log
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.LogAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                markRequestInvalid
                  | refs."definitions.io.hyperfoil.core.handlers.MarkRequestInvalidAction$Builder"
                  | { _ | Dyn }
                  | optional,
                newSequence
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.handlers.NewSequenceAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                publishAgentData
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.data.PublishAgentDataAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                publishGlobalCounters
                  | refs."definitions.io.hyperfoil.core.steps.data.PublishGlobalCountersAction$Builder"
                  | { _ | Dyn }
                  | optional,
                readAgentData
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.data.ReadAgentDataAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                removeItem
                  | refs."definitions.io.hyperfoil.core.steps.collections.RemoveItemAction$Builder"
                  | { _ | Dyn }
                  | optional,
                restartSequence
                  | refs."definitions.io.hyperfoil.core.steps.RestartSequenceAction$Builder"
                  | { _ | Dyn }
                  | optional,
                set
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.SetAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                setInt
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.SetIntAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                setItem
                  | refs."definitions.io.hyperfoil.core.steps.collections.SetItemAction$Builder"
                  | { _ | Dyn }
                  | optional,
                setSharedCounter
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.data.SetSharedCounterAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                stringToInt
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.StringToIntAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                unset
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.UnsetAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
              }
            ],
      "definitions.io.hyperfoil.core.builders.AllConditions$Builder" = {},
      "definitions.io.hyperfoil.core.builders.BoolCondition$Builder" =
        { fromVar | String | optional, value | Bool | optional, },
      "definitions.io.hyperfoil.core.builders.Condition$TypesBuilder" =
        {
            allConditions
              | js2n.OneOf
                [
                  std.contract.Sequence [ js2n.Always, { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence [ js2n.Always, { _ | Dyn } ]),
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.AllConditions$Builder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.AllConditions$Builder",
                        { _ | Dyn }
                      ])
                ]
              | optional,
            boolCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.BoolCondition$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.BoolCondition$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            intCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntCondition$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntCondition$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            stringCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.StringCondition$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.StringCondition$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
          },
      "definitions.io.hyperfoil.core.builders.IntCondition$Builder" =
        {
            equalTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            fromVar | String | optional,
            greaterOrEqualTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            greaterThan
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            isSet | Bool | optional,
            lessOrEqualTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            lessThan
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            notEqualTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
          },
      "definitions.io.hyperfoil.core.builders.IntCondition$ProvidedVarBuilder" =
        {
            equalTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            greaterOrEqualTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            greaterThan
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            lessOrEqualTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            lessThan
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            notEqualTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
          },
      "definitions.io.hyperfoil.core.builders.IntSourceBuilder" =
        { fromVar | String | optional, value | std.number.Integer | optional, },
      "definitions.io.hyperfoil.core.builders.IntSourceBuilder$ListBuilder" =
        {},
      "definitions.io.hyperfoil.core.builders.ObjectSourceBuilder" =
        { fromVar | String | optional, value | String | optional, },
      "definitions.io.hyperfoil.core.builders.StringCondition$Builder" =
        {
            caseSensitive | Bool | optional,
            endsWith | String | optional,
            equalTo | String | optional,
            fromVar | String | optional,
            isSet | Bool | optional,
            length
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.StringConditionBuilder$LengthBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.StringConditionBuilder$LengthBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  std.number.Integer
                ]
              | optional,
            matchVar | String | optional,
            negate | Bool | optional,
            notEqualTo | String | optional,
            startsWith | String | optional,
            value | String | optional,
          },
      "definitions.io.hyperfoil.core.builders.StringConditionBuilder" =
        {
            caseSensitive | Bool | optional,
            endsWith | String | optional,
            equalTo | String | optional,
            length
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.StringConditionBuilder$LengthBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.StringConditionBuilder$LengthBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  std.number.Integer
                ]
              | optional,
            matchVar | String | optional,
            negate | Bool | optional,
            notEqualTo | String | optional,
            startsWith | String | optional,
            value | String | optional,
          },
      "definitions.io.hyperfoil.core.builders.StringConditionBuilder$LengthBuilder" =
        {
            equalTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            greaterOrEqualTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            greaterThan
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            lessOrEqualTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            lessThan
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            notEqualTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
          },
      "definitions.io.hyperfoil.core.generators.ActionsTransformer$Builder" =
        {
            actions
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.session.Action$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.session.Action$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            format
              | std.enum.TagOrString
              | [| 'STRING, 'BYTES, 'BYTEBUF |]
              | optional,
            pattern | String | optional,
            var | String | optional,
          },
      "definitions.io.hyperfoil.core.generators.IntValueProviderBuilder" =
        { fromVar | String | optional, value | std.number.Integer | optional, },
      "definitions.io.hyperfoil.core.generators.Pattern$TransformerBuilder" =
        { pattern | String | optional, },
      "definitions.io.hyperfoil.core.generators.RandomCsvRowStep$Builder" =
        {
            columns
              | js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = { ".*" = String, },
                      properties = {},
                      required = {},
                    },
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        js2n.record.MaxProperties 1,
                        js2n.record.MinProperties 1,
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = { ".*" = String, },
                            properties = {},
                            required = {},
                          }
                      ]),
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.RandomCsvRowStep$Builder$ColumnsBuilder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.RandomCsvRowStep$Builder$ColumnsBuilder",
                        { _ | Dyn }
                      ])
                ]
              | optional,
            file | String | optional,
            separator | String | optional,
            skipComments | Bool | optional,
          },
      "definitions.io.hyperfoil.core.generators.RandomCsvRowStep$Builder$ColumnsBuilder" =
        {},
      "definitions.io.hyperfoil.core.generators.RandomFileStep$Builder" =
        {
            filenameVar | String | optional,
            files
              | js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = { ".*" = String, },
                      properties = {},
                      required = {},
                    },
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        js2n.record.MaxProperties 1,
                        js2n.record.MinProperties 1,
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = { ".*" = String, },
                            properties = {},
                            required = {},
                          }
                      ]),
                  js2n.array.ArrayOf String,
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.WeightedGenerator$Builder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.WeightedGenerator$Builder",
                        { _ | Dyn }
                      ])
                ]
              | optional,
            toVar | String | optional,
          },
      "definitions.io.hyperfoil.core.generators.RandomIntStep$Builder" =
        {
            max
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.IntValueProviderBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.IntValueProviderBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            min
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.IntValueProviderBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.IntValueProviderBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            toVar | String | optional,
          },
      "definitions.io.hyperfoil.core.generators.RandomItemStep$Builder" =
        {
            file | String | optional,
            fromVar | String | optional,
            list
              | js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = { ".*" = String, },
                      properties = {},
                      required = {},
                    },
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        js2n.record.MaxProperties 1,
                        js2n.record.MinProperties 1,
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = { ".*" = String, },
                            properties = {},
                            required = {},
                          }
                      ]),
                  js2n.array.ArrayOf String,
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.WeightedGenerator$Builder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.WeightedGenerator$Builder",
                        { _ | Dyn }
                      ])
                ]
              | optional,
            toVar | String | optional,
          },
      "definitions.io.hyperfoil.core.generators.RandomUUIDStep$Builder" =
        { toVar | String | optional, },
      "definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder" =
        {
            fromVar | String | optional,
            pattern | String | optional,
            value | String | optional,
          },
      "definitions.io.hyperfoil.core.generators.TemplateStep$Builder" =
        { pattern | String | optional, toVar | String | optional, },
      "definitions.io.hyperfoil.core.generators.WeightedGenerator$Builder" = {},
      "definitions.io.hyperfoil.core.handlers.ArrayRecorder$Builder" =
        {
            format
              | std.enum.TagOrString
              | [| 'STRING, 'BYTES, 'BYTEBUF |]
              | optional,
            maxSize | std.number.Integer | optional,
            silent | Bool | optional,
            toVar | String | optional,
          },
      "definitions.io.hyperfoil.core.handlers.CloseConnectionHandler$Builder" =
        {},
      "definitions.io.hyperfoil.core.handlers.CollectionRecorder$Builder" =
        {
            format
              | std.enum.TagOrString
              | [| 'STRING, 'BYTES, 'BYTEBUF |]
              | optional,
            toVar | String | optional,
          },
      "definitions.io.hyperfoil.core.handlers.ConditionalAction$Builder" =
        {
            actions
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.session.Action$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.session.Action$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            allConditions
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.Condition$TypesBuilder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.Condition$TypesBuilder",
                        { _ | Dyn }
                      ]),
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.AllConditions$Builder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.AllConditions$Builder",
                        { _ | Dyn }
                      ])
                ]
              | optional,
            boolCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.BoolCondition$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.BoolCondition$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            intCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntCondition$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntCondition$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            stringCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.StringCondition$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.StringCondition$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
          },
      "definitions.io.hyperfoil.core.handlers.ConditionalProcessor$Builder" =
        {
            allConditions
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.Condition$TypesBuilder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.Condition$TypesBuilder",
                        { _ | Dyn }
                      ]),
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.AllConditions$Builder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.AllConditions$Builder",
                        { _ | Dyn }
                      ])
                ]
              | optional,
            boolCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.BoolCondition$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.BoolCondition$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            intCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntCondition$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntCondition$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            processor
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.processor.Processor$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.processor.Processor$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            stringCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.StringCondition$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.StringCondition$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
          },
      "definitions.io.hyperfoil.core.handlers.CountRecorder$Builder" =
        { toVar | String | optional, },
      "definitions.io.hyperfoil.core.handlers.GzipInflatorProcessor$Builder" =
        {
            encodingVar | String | optional,
            processor
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.processor.Processor$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.processor.Processor$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
          },
      "definitions.io.hyperfoil.core.handlers.MarkRequestInvalidAction$Builder" =
        {},
      "definitions.io.hyperfoil.core.handlers.NewSequenceAction$Builder" =
        {
            concurrencyPolicy
              | std.enum.TagOrString
              | [| 'WARN, 'FAIL |]
              | optional,
            forceSameIndex | Bool | optional,
            sequence | String | optional,
          },
      "definitions.io.hyperfoil.core.handlers.QueueProcessor$Builder" =
        {
            concurrency | std.number.Integer | optional,
            format
              | std.enum.TagOrString
              | [| 'STRING, 'BYTES, 'BYTEBUF |]
              | optional,
            maxSize | std.number.Integer | optional,
            onCompletion
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.session.Action$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.session.Action$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            sequence | String | optional,
            var | String | optional,
          },
      "definitions.io.hyperfoil.core.handlers.StoreIntProcessor$Builder" =
        { override | Bool | optional, toVar | String | optional, },
      "definitions.io.hyperfoil.core.handlers.StoreProcessor$Builder" =
        {
            format
              | std.enum.TagOrString
              | [| 'STRING, 'BYTES, 'BYTEBUF |]
              | optional,
            toVar | String | optional,
          },
      "definitions.io.hyperfoil.core.handlers.StoreProcessor$LegacyBuilder" =
        {
            format
              | std.enum.TagOrString
              | [| 'STRING, 'BYTES, 'BYTEBUF |]
              | optional,
            toVar | String | optional,
          },
      "definitions.io.hyperfoil.core.handlers.TransferSizeRecorder$Builder" =
        { key | String | optional, },
      "definitions.io.hyperfoil.core.handlers.json.JsonHandler$Builder" =
        {
            delete | Bool | optional,
            format
              | std.enum.TagOrString
              | [| 'STRING, 'BYTES, 'BYTEBUF |]
              | optional,
            processor
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.processor.Processor$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.processor.Processor$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            query | String | optional,
            replace
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.processor.Transformer$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.processor.Transformer$Builder",
                        { _ | Dyn }
                      ]
                  ),
                  String
                ]
              | optional,
            toArray | String | optional,
            toVar | String | optional,
            unquote | Bool | optional,
          },
      "definitions.io.hyperfoil.core.steps.AddToIntAction$Builder" =
        {
            orElseSetTo | std.number.Integer | optional,
            value | std.number.Integer | optional,
            var | String | optional,
          },
      "definitions.io.hyperfoil.core.steps.AwaitDelayStep$Builder" =
        { key | String | optional, },
      "definitions.io.hyperfoil.core.steps.AwaitIntStep$Builder" =
        {
            equalTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            greaterOrEqualTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            greaterThan
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            lessOrEqualTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            lessThan
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            notEqualTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            var | String | optional,
          },
      "definitions.io.hyperfoil.core.steps.AwaitVarStep$Builder" =
        { var | String | optional, },
      "definitions.io.hyperfoil.core.steps.BreakIfFinishedStep$Builder" = {},
      "definitions.io.hyperfoil.core.steps.BreakSequenceStep$Builder" =
        {
            allConditions
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.Condition$TypesBuilder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.Condition$TypesBuilder",
                        { _ | Dyn }
                      ]),
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.AllConditions$Builder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.AllConditions$Builder",
                        { _ | Dyn }
                      ])
                ]
              | optional,
            boolCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.BoolCondition$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.BoolCondition$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            dependency | String | optional,
            intCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntCondition$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntCondition$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            onBreak
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.session.Action$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.session.Action$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            stringCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.StringCondition$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.StringCondition$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
          },
      "definitions.io.hyperfoil.core.steps.FailAction$Builder" =
        {
            allConditions
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.Condition$TypesBuilder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.Condition$TypesBuilder",
                        { _ | Dyn }
                      ]),
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.AllConditions$Builder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.AllConditions$Builder",
                        { _ | Dyn }
                      ])
                ]
              | optional,
            boolCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.BoolCondition$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.BoolCondition$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            intCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntCondition$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntCondition$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            message | String | optional,
            stringCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.StringCondition$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.StringCondition$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
          },
      "definitions.io.hyperfoil.core.steps.ForeachStep$Builder" =
        {
            counterVar | String | optional,
            dependency | String | optional,
            fromVar | String | optional,
            sequence | String | optional,
          },
      "definitions.io.hyperfoil.core.steps.JsonStep$Builder" =
        {
            delete | Bool | optional,
            format
              | std.enum.TagOrString
              | [| 'STRING, 'BYTES, 'BYTEBUF |]
              | optional,
            fromVar | String | optional,
            processor
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.processor.Processor$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.processor.Processor$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            query | String | optional,
            replace
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.processor.Transformer$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.processor.Transformer$Builder",
                        { _ | Dyn }
                      ]
                  ),
                  String
                ]
              | optional,
            toArray | String | optional,
            toVar | String | optional,
            unquote | Bool | optional,
          },
      "definitions.io.hyperfoil.core.steps.LogAction$Builder" =
        { message | String | optional, },
      "definitions.io.hyperfoil.core.steps.LoopStep$Builder" =
        {
            counterVar | String | optional,
            repeats | std.number.Integer | optional,
            steps | Array refs."definitions.step" | optional,
          },
      "definitions.io.hyperfoil.core.steps.NextSequenceStep$Builder" =
        { name | String | optional, },
      "definitions.io.hyperfoil.core.steps.NoopStep$Builder" = {},
      "definitions.io.hyperfoil.core.steps.RestartSequenceAction$Builder" = {},
      "definitions.io.hyperfoil.core.steps.RestartSequenceStep$Builder" = {},
      "definitions.io.hyperfoil.core.steps.ScheduleDelayStep$Builder" =
        {
            duration | String | optional,
            fromLast | js2n.Null | optional,
            fromNow | js2n.Null | optional,
            key | String | optional,
            max | String | optional,
            min | String | optional,
            random
              | std.enum.TagOrString
              | [| 'NEGATIVE_EXPONENTIAL, 'LINEAR, 'CONSTANT |]
              | optional,
            type
              | std.enum.TagOrString
              | [| 'FROM_NOW, 'FROM_LAST |]
              | optional,
          },
      "definitions.io.hyperfoil.core.steps.ScheduleDelayStep$ThinkTimeBuilder" =
        {
            duration | String | optional,
            fromLast | js2n.Null | optional,
            fromNow | js2n.Null | optional,
            key | String | optional,
            max | String | optional,
            min | String | optional,
            random
              | std.enum.TagOrString
              | [| 'NEGATIVE_EXPONENTIAL, 'LINEAR, 'CONSTANT |]
              | optional,
            type
              | std.enum.TagOrString
              | [| 'FROM_NOW, 'FROM_LAST |]
              | optional,
          },
      "definitions.io.hyperfoil.core.steps.SetAction$Builder" =
        {
            intArray
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.steps.SetAction$IntArrayBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.steps.SetAction$IntArrayBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            objectArray
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.steps.SetAction$ObjectArrayBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.steps.SetAction$ObjectArrayBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            value | String | optional,
            var | String | optional,
          },
      "definitions.io.hyperfoil.core.steps.SetAction$IntArrayBuilder" =
        { fromVar | String | optional, size | std.number.Integer | optional, },
      "definitions.io.hyperfoil.core.steps.SetAction$ObjectArrayBuilder" =
        { fromVar | String | optional, size | std.number.Integer | optional, },
      "definitions.io.hyperfoil.core.steps.SetIntAction$Builder" =
        {
            fromVar | String | optional,
            intCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntCondition$ProvidedVarBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntCondition$ProvidedVarBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            max
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]),
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder$ListBuilder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder$ListBuilder",
                        { _ | Dyn }
                      ])
                ]
              | optional,
            min
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]),
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder$ListBuilder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder$ListBuilder",
                        { _ | Dyn }
                      ])
                ]
              | optional,
            onlyIfNotSet | Bool | optional,
            value | std.number.Integer | optional,
            var | String | optional,
          },
      "definitions.io.hyperfoil.core.steps.StopStep$Builder" = {},
      "definitions.io.hyperfoil.core.steps.StopwatchBeginStep$Builder" = {},
      "definitions.io.hyperfoil.core.steps.StringToIntAction$Builder" =
        { fromVar | String | optional, toVar | String | optional, },
      "definitions.io.hyperfoil.core.steps.TimestampStep$Builder" =
        {
            localeCountry | String | optional,
            pattern | String | optional,
            toVar | String | optional,
          },
      "definitions.io.hyperfoil.core.steps.UnsetAction$Builder" =
        { var | String | optional, },
      "definitions.io.hyperfoil.core.steps.collections.AddItemAction$Builder" =
        {
            fromVar | String | optional,
            toVar | String | optional,
            value | String | optional,
          },
      "definitions.io.hyperfoil.core.steps.collections.BoolFilter$Builder" =
        { value | Bool | optional, },
      "definitions.io.hyperfoil.core.steps.collections.GetIndexAction$Builder" =
        {
            collection | String | optional,
            item
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.ObjectSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.ObjectSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            toVar | String | optional,
          },
      "definitions.io.hyperfoil.core.steps.collections.GetItemAction$Builder" =
        {
            fromVar | String | optional,
            index
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            toVar | String | optional,
          },
      "definitions.io.hyperfoil.core.steps.collections.GetSizeAction$Builder" =
        {
            boolFilter
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.steps.collections.BoolFilter$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.steps.collections.BoolFilter$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            fromVar | String | optional,
            intFilter
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.steps.collections.IntFilter$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.steps.collections.IntFilter$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            stringFilter
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.steps.collections.StringFilter$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.steps.collections.StringFilter$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            toVar | String | optional,
            undefinedValue | std.number.Integer | optional,
          },
      "definitions.io.hyperfoil.core.steps.collections.IntFilter$Builder" =
        {
            equalTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            greaterOrEqualTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            greaterThan
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            lessOrEqualTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            lessThan
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            notEqualTo
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
          },
      "definitions.io.hyperfoil.core.steps.collections.RemoveItemAction$Builder" =
        {
            fromVar | String | optional,
            index
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
          },
      "definitions.io.hyperfoil.core.steps.collections.SetItemAction$Builder" =
        {
            fromVar | String | optional,
            index
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntSourceBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            toVar | String | optional,
            value | String | optional,
          },
      "definitions.io.hyperfoil.core.steps.collections.StringFilter$Builder" =
        {
            caseSensitive | Bool | optional,
            endsWith | String | optional,
            equalTo | String | optional,
            length
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.StringConditionBuilder$LengthBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.StringConditionBuilder$LengthBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  std.number.Integer
                ]
              | optional,
            matchVar | String | optional,
            negate | Bool | optional,
            notEqualTo | String | optional,
            startsWith | String | optional,
            value | String | optional,
          },
      "definitions.io.hyperfoil.core.steps.data.AddToSharedCounterAction$Builder" =
        {
            fromVar | String | optional,
            key | String | optional,
            operator | std.enum.TagOrString | [| 'SUBTRACT, 'ADD |] | optional,
            value | std.number.Integer | optional,
          },
      "definitions.io.hyperfoil.core.steps.data.GetSharedCounterAction$Builder" =
        { key | String | optional, toVar | String | optional, },
      "definitions.io.hyperfoil.core.steps.data.PublishAgentDataAction$Builder" =
        { fromVar | String | optional, name | String | optional, },
      "definitions.io.hyperfoil.core.steps.data.PublishGlobalCountersAction$Builder" =
        {
            key | String | optional,
            vars
              | js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = { ".*" = String, },
                      properties = {},
                      required = {},
                    },
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        js2n.record.MaxProperties 1,
                        js2n.record.MinProperties 1,
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = { ".*" = String, },
                            properties = {},
                            required = {},
                          }
                      ]),
                  js2n.array.ArrayOf String,
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.steps.data.PublishGlobalCountersAction$Builder$VarsBuilder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.steps.data.PublishGlobalCountersAction$Builder$VarsBuilder",
                        { _ | Dyn }
                      ])
                ]
              | optional,
          },
      "definitions.io.hyperfoil.core.steps.data.PublishGlobalCountersAction$Builder$VarsBuilder" =
        {},
      "definitions.io.hyperfoil.core.steps.data.PullSharedMapStep$Builder" =
        {
            key | String | optional,
            "match" | String | optional,
            vars
              | js2n.OneOf
                [
                  js2n.array.ArrayOf String,
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.config.ListBuilder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.config.ListBuilder",
                        { _ | Dyn }
                      ])
                ]
              | optional,
          },
      "definitions.io.hyperfoil.core.steps.data.PushSharedMapStep$Builder" =
        {
            key | String | optional,
            vars
              | js2n.OneOf
                [
                  js2n.array.ArrayOf String,
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.config.ListBuilder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.config.ListBuilder",
                        { _ | Dyn }
                      ])
                ]
              | optional,
          },
      "definitions.io.hyperfoil.core.steps.data.ReadAgentDataAction$Builder" =
        { name | String | optional, toVar | String | optional, },
      "definitions.io.hyperfoil.core.steps.data.SetSharedCounterAction$Builder" =
        {
            fromVar | String | optional,
            key | String | optional,
            value | std.number.Integer | optional,
          },
      "definitions.io.hyperfoil.core.util.DoubleIncrementBuilder" =
        { base | Number | optional, increment | Number | optional, },
      "definitions.io.hyperfoil.example.DivideStep$Builder" =
        {
            divisor | std.number.Integer | optional,
            fromVar | String | optional,
            toVar | String | optional,
          },
      "definitions.io.hyperfoil.hotrod.steps.HotRodRequestBuilder" =
        {
            cacheName
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  String
                ]
              | optional,
            get | String | optional,
            key
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  String
                ]
              | optional,
            metric | std.contract.any_of [ Array String, String ] | optional,
            operation | std.enum.TagOrString | [| 'GET, 'PUT |] | optional,
            put | String | optional,
            value
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  String
                ]
              | optional,
          },
      "definitions.io.hyperfoil.http.api.HeaderHandler$Builder" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                conditional
                  | refs."definitions.io.hyperfoil.http.handlers.ConditionalHeaderHandler$Builder"
                  | { _ | Dyn }
                  | optional,
                countHeaders
                  | refs."definitions.io.hyperfoil.http.handlers.CountHeadersHandler$Builder"
                  | { _ | Dyn }
                  | optional,
                filter
                  | refs."definitions.io.hyperfoil.http.handlers.FilterHeaderHandler$Builder"
                  | { _ | Dyn }
                  | optional,
                logInvalid
                  | refs."definitions.io.hyperfoil.http.handlers.LogInvalidHandler$HeaderHandlerBuilder"
                  | { _ | Dyn }
                  | optional,
                recordHeaderTime
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.http.handlers.RecordHeaderTimeHandler$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
              }
            ],
      "definitions.io.hyperfoil.http.api.StatusHandler$Builder" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                action
                  | refs."definitions.io.hyperfoil.http.handlers.ActionStatusHandler$Builder"
                  | { _ | Dyn }
                  | optional,
                counter
                  | refs."definitions.io.hyperfoil.http.handlers.StatusToCounterHandler$Builder"
                  | { _ | Dyn }
                  | optional,
                multiplex
                  | refs."definitions.io.hyperfoil.http.handlers.MultiplexStatusHandler$Builder"
                  | { _ | Dyn }
                  | optional,
                range
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.http.handlers.RangeStatusValidator$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                stats
                  | refs."definitions.io.hyperfoil.http.handlers.StatusToStatsHandler$Builder"
                  | { _ | Dyn }
                  | optional,
                store
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.http.handlers.StoreStatusHandler$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
              }
            ],
      "definitions.io.hyperfoil.http.handlers.ActionStatusHandler$Builder" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.hyperfoil.api.session.Action$Builder",
                    { _ | Dyn }
                  ]
              },
              js2n.record.FieldsMatch ".*"
            ],
      "definitions.io.hyperfoil.http.handlers.ConditionalHeaderHandler$Builder" =
        {
            allConditions
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.Condition$TypesBuilder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.Condition$TypesBuilder",
                        { _ | Dyn }
                      ]),
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.AllConditions$Builder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.AllConditions$Builder",
                        { _ | Dyn }
                      ])
                ]
              | optional,
            boolCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.BoolCondition$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.BoolCondition$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            handler
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.http.api.HeaderHandler$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.http.api.HeaderHandler$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            intCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.IntCondition$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.IntCondition$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            stringCondition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.StringCondition$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.StringCondition$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
          },
      "definitions.io.hyperfoil.http.handlers.CountHeadersHandler$Builder" = {},
      "definitions.io.hyperfoil.http.handlers.FilterHeaderHandler$Builder" =
        {
            header
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.builders.StringConditionBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.builders.StringConditionBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            processor
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.processor.Processor$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.processor.Processor$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
          },
      "definitions.io.hyperfoil.http.handlers.LogInvalidHandler$BodyHandlerBuilder" =
        {},
      "definitions.io.hyperfoil.http.handlers.LogInvalidHandler$HeaderHandlerBuilder" =
        {},
      "definitions.io.hyperfoil.http.handlers.MultiplexStatusHandler$Builder" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.hyperfoil.http.api.StatusHandler$Builder",
                    { _ | Dyn }
                  ]
              },
              js2n.record.FieldsMatch ".*"
            ],
      "definitions.io.hyperfoil.http.handlers.RangeStatusValidator$Builder" =
        {
            max | std.number.Integer | optional,
            min | std.number.Integer | optional,
          },
      "definitions.io.hyperfoil.http.handlers.RecordHeaderTimeHandler$Builder" =
        {
            header | String | optional,
            metric | String | optional,
            unit | String | optional,
          },
      "definitions.io.hyperfoil.http.handlers.StatusToCounterHandler$Builder" =
        {
            add | std.number.Integer | optional,
            expectStatus | std.number.Integer | optional,
            init | std.number.Integer | optional,
            set | std.number.Integer | optional,
            var | String | optional,
          },
      "definitions.io.hyperfoil.http.handlers.StatusToStatsHandler$Builder" =
        {},
      "definitions.io.hyperfoil.http.handlers.StoreStatusHandler$Builder" =
        { toVar | String | optional, },
      "definitions.io.hyperfoil.http.html.EmbeddedResourceHandlerBuilder" =
        {
            fetchResource
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.http.html.FetchResourceHandler$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.http.html.FetchResourceHandler$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            ignoreExternal | Bool | optional,
            processor
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.processor.Processor$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.processor.Processor$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
          },
      "definitions.io.hyperfoil.http.html.FetchResourceHandler$Builder" =
        {
            concurrency | std.number.Integer | optional,
            maxResources | std.number.Integer | optional,
            metric | Array String | optional,
            onCompletion
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.session.Action$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.session.Action$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
          },
      "definitions.io.hyperfoil.http.html.HtmlHandler$Builder" =
        {
            onEmbeddedResource
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.http.html.EmbeddedResourceHandlerBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.http.html.EmbeddedResourceHandlerBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            onTagAttribute
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.http.html.TagAttributeHandlerBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.http.html.TagAttributeHandlerBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
          },
      "definitions.io.hyperfoil.http.html.TagAttributeHandlerBuilder" =
        {
            attribute | String | optional,
            format
              | std.enum.TagOrString
              | [| 'STRING, 'BYTES, 'BYTEBUF |]
              | optional,
            processor
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.processor.Processor$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.processor.Processor$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            tag | String | optional,
            toArray | String | optional,
            toVar | String | optional,
          },
      "definitions.io.hyperfoil.http.steps.AwaitAllResponsesStep$Builder" = {},
      "definitions.io.hyperfoil.http.steps.BodyBuilder" =
        {
            form
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.http.steps.FormGenerator$InputBuilder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.http.steps.FormGenerator$InputBuilder",
                        { _ | Dyn }
                      ]),
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.http.steps.FormGenerator$Builder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.http.steps.FormGenerator$Builder",
                        { _ | Dyn }
                      ])
                ]
              | optional,
            fromFile | String | optional,
            fromVar | String | optional,
            pattern | String | optional,
            text | String | optional,
          },
      "definitions.io.hyperfoil.http.steps.ClearHttpCacheAction$Builder" = {},
      "definitions.io.hyperfoil.http.steps.FormGenerator$Builder" = {},
      "definitions.io.hyperfoil.http.steps.FormGenerator$InputBuilder" =
        {
            fromVar | String | optional,
            name | String | optional,
            pattern | String | optional,
            value | String | optional,
          },
      "definitions.io.hyperfoil.http.steps.HttpRequestStepBuilder" =
        {
            CONNECT
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  String
                ]
              | optional,
            DELETE
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  String
                ]
              | optional,
            GET
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  String
                ]
              | optional,
            HEAD
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  String
                ]
              | optional,
            OPTIONS
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  String
                ]
              | optional,
            PATCH
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  String
                ]
              | optional,
            POST
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  String
                ]
              | optional,
            PUT
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  String
                ]
              | optional,
            TRACE
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  String
                ]
              | optional,
            authority
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  String
                ]
              | optional,
            body
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.http.steps.BodyBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.http.steps.BodyBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  String
                ]
              | optional,
            compensation
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.http.steps.HttpRequestStepBuilder$CompensationBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.http.steps.HttpRequestStepBuilder$CompensationBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            compression
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.http.steps.HttpRequestStepBuilder$CompressionBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.http.steps.HttpRequestStepBuilder$CompressionBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  String
                ]
              | optional,
            endpoint
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            handler
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.http.steps.HttpResponseHandlersImpl$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.http.steps.HttpResponseHandlersImpl$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            headers
              | js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            ".*" =
                              std.contract.any_of
                                  [
                                    String,
                                    std.contract.Sequence
                                      [
                                        refs."definitions.io.hyperfoil.http.steps.HttpRequestStepBuilder$PartialHeadersBuilder",
                                        { _ | Dyn }
                                      ]
                                  ],
                          },
                      properties = {},
                      required = {},
                    },
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        js2n.record.MaxProperties 1,
                        js2n.record.MinProperties 1,
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns =
                              {
                                  ".*" =
                                    std.contract.any_of
                                        [
                                          String,
                                          std.contract.Sequence
                                            [
                                              refs."definitions.io.hyperfoil.http.steps.HttpRequestStepBuilder$PartialHeadersBuilder",
                                              { _ | Dyn }
                                            ]
                                        ],
                                },
                            properties = {},
                            required = {},
                          }
                      ]),
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.http.steps.HttpRequestStepBuilder$HeadersBuilder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.http.steps.HttpRequestStepBuilder$HeadersBuilder",
                        { _ | Dyn }
                      ])
                ]
              | optional,
            method
              | std.enum.TagOrString
              | [|
                'CONNECT,
                'TRACE,
                'PATCH,
                'OPTIONS,
                'DELETE,
                'PUT,
                'POST,
                'HEAD,
                'GET
              |]
              | optional,
            metric | std.contract.any_of [ Array String, String ] | optional,
            path
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.generators.StringGeneratorImplBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  String
                ]
              | optional,
            sla
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.config.SLABuilder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.config.SLABuilder",
                        { _ | Dyn }
                      ]),
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.config.SLABuilder$ListBuilder",
                      { _ | Dyn }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.config.SLABuilder$ListBuilder",
                        { _ | Dyn }
                      ])
                ]
              | optional,
            sync | Bool | optional,
            timeout | String | optional,
          },
      "definitions.io.hyperfoil.http.steps.HttpRequestStepBuilder$CompensationBuilder" =
        {
            metric | std.contract.any_of [ Array String, String ] | optional,
            targetRate
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.core.util.DoubleIncrementBuilder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.core.util.DoubleIncrementBuilder",
                        { _ | Dyn }
                      ]
                  ),
                  Number
                ]
              | optional,
          },
      "definitions.io.hyperfoil.http.steps.HttpRequestStepBuilder$CompressionBuilder" =
        {
            encoding | String | optional,
            type
              | std.enum.TagOrString
              | [| 'TRANSFER_ENCODING, 'CONTENT_ENCODING |]
              | optional,
          },
      "definitions.io.hyperfoil.http.steps.HttpRequestStepBuilder$HeadersBuilder" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.hyperfoil.http.steps.HttpRequestStepBuilder$PartialHeadersBuilder",
                    { _ | Dyn }
                  ]
              },
              js2n.record.FieldsMatch ".*"
            ],
      "definitions.io.hyperfoil.http.steps.HttpRequestStepBuilder$PartialHeadersBuilder" =
        { fromVar | String | optional, pattern | String | optional, },
      "definitions.io.hyperfoil.http.steps.HttpResponseHandlersImpl$Builder" =
        {
            autoRangeCheck | Bool | optional,
            body
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.processor.Processor$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.processor.Processor$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            followRedirect
              | std.enum.TagOrString
              | [| 'ALWAYS, 'HTML_ONLY, 'LOCATION_ONLY, 'NEVER |]
              | optional,
            header
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.http.api.HeaderHandler$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.http.api.HeaderHandler$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            onCompletion
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.session.Action$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.session.Action$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            rawBytes
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.api.processor.RawBytesHandler$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.api.processor.RawBytesHandler$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            status
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.io.hyperfoil.http.api.StatusHandler$Builder",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.io.hyperfoil.http.api.StatusHandler$Builder",
                        { _ | Dyn }
                      ]
                  )
                ]
              | optional,
            stopOnInvalid | Bool | optional,
          },
      "definitions.phase" =
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
                      js2n.record.Required [ "scenario" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "forks" ],
                      Array Dyn
                    ]
                ],
              {
                duration
                  | refs."definitions.timeMillis"
                  | doc "Time relative to phase start for the phase to be finished."
                  | optional,
                forks
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          js2n.array.MinItems 1,
                          Array (
                            std.contract.Sequence
                              [
                                js2n.record.MaxProperties 1,
                                js2n.record.MinProperties 1,
                                {
                                  _ | std.contract.Sequence
                                    [ refs."definitions.fork", { _ | Dyn } ]
                                }
                              ]
                          )
                        ],
                      {
                        _ | std.contract.Sequence
                          [ refs."definitions.fork", { _ | Dyn } ]
                      }
                    ]
                  | doc "Concurrent sub-phases sharing the limits and users arrivals."
                  | optional,
                maxDuration
                  | refs."definitions.timeMillis"
                  | doc "Hard limit, relative to phase start, after which the phase will be terminated."
                  | optional,
                maxIterations
                  | refs."definitions.positiveInteger"
                  | Number
                  | doc "Maximum number of phase iterations. Default is 1."
                  | optional,
                scenario | refs."definitions.scenario" | optional,
                startAfter
                  | refs."definitions.phaseReferenceList"
                  | doc "Phases that must be finished for this phase to start."
                  | optional,
                startAfterStrict
                  | refs."definitions.phaseReferenceList"
                  | doc "Phases that must be terminated for this phase to start."
                  | optional,
                startTime
                  | refs."definitions.timeMillis"
                  | doc "Scheduled time (relative to benchmark start) for the phase to start. Default is immediatelly."
                  | optional,
                ..
              }
            ],
      "definitions.phaseReference" =
        std.contract.any_of
            [
              String,
              {
                fork | String | optional,
                iteration
                  | std.enum.TagOrString
                  | [| 'same, 'previous, 'none |]
                  | optional,
                phase | String,
              }
            ],
      "definitions.phaseReferenceList" =
        js2n.OneOf
            [
              refs."definitions.phaseReference",
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf refs."definitions.phaseReference"
                ]
            ],
      "definitions.positiveInteger" =
        std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 1 ],
      "definitions.positiveNumber" = js2n.number.ExclusiveMinimum 0,
      "definitions.rampRatePhase" =
        std.contract.Sequence
            [
              refs."definitions.phase",
              {
                initialUsersPerSec
                  | refs."definitions.incrementableNumber"
                  | doc "Rate for new users at the beginning of phase",
                maxSessions
                  | refs."definitions.positiveInteger"
                  | Number
                  | doc "Maximum number of users (active sessions) executing this phase concurrently."
                  | optional,
                targetUsersPerSec
                  | refs."definitions.incrementableNumber"
                  | doc "Rate for new users at the end of phase",
                variance
                  | Bool
                  | doc "Add new users randomly following Poisson process (true, default) or evenly (false)."
                  | optional,
                ..
              }
            ],
      "definitions.scenario" =
        std.contract.any_of
            [
              {
                initialSequences
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.sequence", { _ | Dyn } ]
                  )
                  | doc "Sequences scheduled for execution with a new session"
                  | optional,
                orderedSequences
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.sequence", { _ | Dyn } ]
                  )
                  | doc "Automatically chained sequences."
                  | optional,
                sequences
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.sequence", { _ | Dyn } ]
                  )
                  | doc "Sequences that need to be explicitly triggered."
                  | optional,
              },
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.sequence", { _ | Dyn } ]
                  )
                ]
            ],
      "definitions.sequence" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns = { ".*" = Array refs."definitions.step", },
              properties = {},
              required = {},
            },
      "definitions.step" =
        std.contract.any_of
            [
              {
                addItem
                  | refs."definitions.io.hyperfoil.core.steps.collections.AddItemAction$Builder"
                  | { _ | Dyn }
                  | optional,
                addToInt
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.AddToIntAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                addToSharedCounter
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.data.AddToSharedCounterAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                awaitAllResponses
                  | refs."definitions.io.hyperfoil.http.steps.AwaitAllResponsesStep$Builder"
                  | { _ | Dyn }
                  | optional,
                awaitDelay
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.AwaitDelayStep$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                awaitInt
                  | refs."definitions.io.hyperfoil.core.steps.AwaitIntStep$Builder"
                  | { _ | Dyn }
                  | optional,
                awaitVar
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.AwaitVarStep$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                breakIfFinished
                  | refs."definitions.io.hyperfoil.core.steps.BreakIfFinishedStep$Builder"
                  | { _ | Dyn }
                  | optional,
                breakSequence
                  | refs."definitions.io.hyperfoil.core.steps.BreakSequenceStep$Builder"
                  | { _ | Dyn }
                  | optional,
                clearHttpCache
                  | refs."definitions.io.hyperfoil.http.steps.ClearHttpCacheAction$Builder"
                  | { _ | Dyn }
                  | optional,
                conditional
                  | refs."definitions.io.hyperfoil.core.handlers.ConditionalAction$Builder"
                  | { _ | Dyn }
                  | optional,
                divide
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.example.DivideStep$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                fail
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.FailAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                foreach
                  | refs."definitions.io.hyperfoil.core.steps.ForeachStep$Builder"
                  | { _ | Dyn }
                  | optional,
                getIndex
                  | refs."definitions.io.hyperfoil.core.steps.collections.GetIndexAction$Builder"
                  | { _ | Dyn }
                  | optional,
                getItem
                  | refs."definitions.io.hyperfoil.core.steps.collections.GetItemAction$Builder"
                  | { _ | Dyn }
                  | optional,
                getSharedCounter
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.data.GetSharedCounterAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                getSize
                  | refs."definitions.io.hyperfoil.core.steps.collections.GetSizeAction$Builder"
                  | { _ | Dyn }
                  | optional,
                hotrodRequest
                  | refs."definitions.io.hyperfoil.hotrod.steps.HotRodRequestBuilder"
                  | { _ | Dyn }
                  | optional,
                httpRequest
                  | refs."definitions.io.hyperfoil.http.steps.HttpRequestStepBuilder"
                  | { _ | Dyn }
                  | optional,
                json
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.JsonStep$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                log
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.LogAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                loop
                  | refs."definitions.io.hyperfoil.core.steps.LoopStep$Builder"
                  | { _ | Dyn }
                  | optional,
                markRequestInvalid
                  | refs."definitions.io.hyperfoil.core.handlers.MarkRequestInvalidAction$Builder"
                  | { _ | Dyn }
                  | optional,
                newSequence
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.handlers.NewSequenceAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                nextSequence
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.NextSequenceStep$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                noop
                  | refs."definitions.io.hyperfoil.core.steps.NoopStep$Builder"
                  | { _ | Dyn }
                  | optional,
                publishAgentData
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.data.PublishAgentDataAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                publishGlobalCounters
                  | refs."definitions.io.hyperfoil.core.steps.data.PublishGlobalCountersAction$Builder"
                  | { _ | Dyn }
                  | optional,
                pullSharedMap
                  | refs."definitions.io.hyperfoil.core.steps.data.PullSharedMapStep$Builder"
                  | { _ | Dyn }
                  | optional,
                pushSharedMap
                  | refs."definitions.io.hyperfoil.core.steps.data.PushSharedMapStep$Builder"
                  | { _ | Dyn }
                  | optional,
                randomCsvRow
                  | refs."definitions.io.hyperfoil.core.generators.RandomCsvRowStep$Builder"
                  | { _ | Dyn }
                  | optional,
                randomFile
                  | refs."definitions.io.hyperfoil.core.generators.RandomFileStep$Builder"
                  | { _ | Dyn }
                  | optional,
                randomInt
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.generators.RandomIntStep$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                randomItem
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.generators.RandomItemStep$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                randomUUID
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.generators.RandomUUIDStep$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                readAgentData
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.data.ReadAgentDataAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                removeItem
                  | refs."definitions.io.hyperfoil.core.steps.collections.RemoveItemAction$Builder"
                  | { _ | Dyn }
                  | optional,
                restartSequence
                  | refs."definitions.io.hyperfoil.core.steps.RestartSequenceStep$Builder"
                  | { _ | Dyn }
                  | optional,
                scheduleDelay
                  | refs."definitions.io.hyperfoil.core.steps.ScheduleDelayStep$Builder"
                  | { _ | Dyn }
                  | optional,
                set
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.SetAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                setInt
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.SetIntAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                setItem
                  | refs."definitions.io.hyperfoil.core.steps.collections.SetItemAction$Builder"
                  | { _ | Dyn }
                  | optional,
                setSharedCounter
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.data.SetSharedCounterAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                stop
                  | refs."definitions.io.hyperfoil.core.steps.StopStep$Builder"
                  | { _ | Dyn }
                  | optional,
                stopwatch
                  | refs."definitions.io.hyperfoil.core.steps.StopwatchBeginStep$Builder"
                  | { _ | Dyn }
                  | optional,
                stringToInt
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.StringToIntAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                template
                  | refs."definitions.io.hyperfoil.core.generators.TemplateStep$Builder"
                  | { _ | Dyn }
                  | optional,
                thinkTime
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.ScheduleDelayStep$ThinkTimeBuilder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                timestamp
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.TimestampStep$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
                unset
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.io.hyperfoil.core.steps.UnsetAction$Builder",
                          { _ | Dyn }
                        ],
                      String
                    ]
                  | optional,
              },
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'stopwatch,
                    'awaitAllResponses,
                    'noop,
                    'breakIfFinished,
                    'restartSequence,
                    'stop
                  |]
                ]
            ],
      "definitions.timeMillis" =
        std.contract.any_of
            [ std.number.Integer, js2n.string.Matches "[0-9]* *[smh]?" ],
    }
    in
  {
      "$schema"
        | String
        | doc "This should point to either http://hyperfoil.io/schema.json or local file"
        | optional,
      agents
        | std.contract.any_of
          [
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = { ".*" = refs."definitions.agent", },
                properties = {},
                required = {},
              },
            Array (
              std.contract.Sequence
                [
                  js2n.record.MaxProperties 1,
                  js2n.record.MinProperties 1,
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = { ".*" = refs."definitions.agent", },
                      properties = {},
                      required = {},
                    }
                ]
            )
          ]
        | doc "Agent nodes that should drive the load."
        | optional,
      duration
        | refs."definitions.timeMillis"
        | doc "Single-phase shortcut: Time relative to phase start for the phase to be finished."
        | optional,
      ergonomics | refs."definitions.ergonomics" | optional,
      http
        | std.contract.any_of
          [ Array refs."definitions.http", refs."definitions.http" ],
      maxDuration
        | refs."definitions.timeMillis"
        | doc "Single-phase shortcut: Hard limit, relative to phase start, after which the phase will be terminated."
        | optional,
      maxSessions
        | refs."definitions.positiveInteger"
        | Number
        | doc "Single-phase shortcut: Maximum number of users (active sessions) executing this phase concurrently."
        | optional,
      name | String | doc "Name of the benchmark.",
      phases
        | js2n.array.MinItems 1
        | Array (
          std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                _ | {
                  always
                    | refs."definitions.phase"
                    | {
                      users
                        | refs."definitions.incrementableInteger"
                        | doc "Number of started users",
                      ..
                    }
                    | doc "Run fixed number of concurrent users."
                    | optional,
                  atOnce
                    | refs."definitions.phase"
                    | {
                      users
                        | refs."definitions.incrementableInteger"
                        | doc "Number of started users",
                      ..
                    }
                    | doc "Start fixed number of concurrent users."
                    | optional,
                  constantRate
                    | refs."definitions.phase"
                    | {
                      maxSessions
                        | refs."definitions.positiveInteger"
                        | Number
                        | doc "Maximum number of users (active sessions) executing this phase concurrently."
                        | optional,
                      usersPerSec
                        | refs."definitions.incrementableNumber"
                        | doc "Rate for new users",
                      variance
                        | Bool
                        | doc "Add new users randomly following Poisson process (true, default) or evenly (false)."
                        | optional,
                      ..
                    }
                    | doc "Add new users to the system at constant rate."
                    | optional,
                  decreasingRate
                    | refs."definitions.rampRatePhase"
                    | { _ | Dyn }
                    | doc "Decreases new users arrival rate over its duration."
                    | optional,
                  increasingRate
                    | refs."definitions.rampRatePhase"
                    | { _ | Dyn }
                    | doc "Increases new users arrival rate over its duration."
                    | optional,
                  noop
                    | refs."definitions.phase"
                    | { _ | Dyn }
                    | doc "Does not execute anything. Useful for orchestrating phases or adding pauses."
                    | optional,
                }
              }
            ]
        )
        | doc "Benchmark execution phases."
        | optional,
      scenario
        | refs."definitions.scenario"
        | doc "Single-phase shortcut: the scenario"
        | optional,
      staircase
        | {
          incrementUsersPerSec
            | refs."definitions.positiveNumber"
            | doc "Number of users added in each iteration."
            | optional,
          initialRampUpDuration
            | refs."definitions.timeMillis"
            | doc "Duration of the first ramp-up."
            | optional,
          initialUsersPerSec
            | refs."definitions.positiveNumber"
            | doc "Number of users per second after initial ramp-up."
            | optional,
          maxIterations
            | refs."definitions.positiveInteger"
            | Number
            | doc "Maximum number of steady-state phases."
            | optional,
          maxSessions
            | refs."definitions.positiveInteger"
            | Number
            | doc "Maximum number of users (active sessions) executing concurrently."
            | optional,
          rampUpDuration
            | refs."definitions.timeMillis"
            | doc "Duration of each ramp-up iteration between steady-states."
            | optional,
          steadyStateDuration
            | refs."definitions.timeMillis"
            | doc "Duration of each steady-state iteration."
            | optional,
        }
        | optional,
      threads | std.number.Integer | js2n.number.Minimum 1 | optional,
      usersPerSec
        | refs."definitions.incrementableNumber"
        | doc "Single-phase shortcut: Rate for new users"
        | optional,
    }