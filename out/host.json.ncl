# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.aggregator" =
        {
            batchSize
              | std.number.Integer
              | doc "The maximum batch size for aggregations. If this value is reached before the 'flushTimeout', all values will be flushed."
              | optional,
            flushTimeout
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  js2n.string.Matches "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                  { _ | Dyn },
                  Array Dyn
                ]
              | doc "The aggregation duration. The aggregator will flush periodically based on this value."
              | optional,
          },
      "definitions.cosmosDB-extension" =
        {
            connectionMode
              | std.enum.TagOrString
              | [| 'Direct, 'Gateway |]
              | doc "ConnectionMode to be used on the DocumentClients."
              | optional,
            protocol
              | std.enum.TagOrString
              | [| 'Tcp, 'Https |]
              | doc "Protocol to be used on the DocumentClients."
              | optional,
          },
      "definitions.cosmosDB-extension-v2" =
        {
            connectionMode
              | std.enum.TagOrString
              | [| 'Direct, 'Gateway |]
              | doc "ConnectionMode to be used on the DocumentClients."
              | optional,
            leaseOptions
              | {
                leasePrefix
                  | String
                  | doc "Lease prefix to use across all functions in an app."
                  | optional,
              }
              | optional,
            protocol
              | std.enum.TagOrString
              | [| 'Tcp, 'Https |]
              | doc "Protocol to be used on the DocumentClients."
              | optional,
          },
      "definitions.durableTask-extension" =
        {
            extendedSessionIdleTimeoutInSeconds | std.number.Integer | optional,
            extendedSessionsEnabled | Bool | optional,
            hubName
              | String
              | doc "Alternate task hub names can be used to isolate multiple Durable Functions applications from each other, even if they're using the same storage backend."
              | optional,
            maxConcurrentActivityFunctions
              | std.number.Integer
              | doc "The maximum number of activity functions that can be processed concurrently on a single host instance."
              | optional,
            maxConcurrentOrchestratorFunctions
              | std.number.Integer
              | doc "The maximum number of orchestrator functions that can be processed concurrently on a single host instance."
              | optional,
            maxEntityOperationBatchSize
              | std.number.Integer
              | doc "The maximum number of entity operations that are processed as a batch. If set to 1, batching is disabled, and each operation message is processed by a separate function invocation."
              | optional,
            notifications
              | {
                eventGrid
                  | {
                    keySettingName
                      | String
                      | doc "The name of the app setting containing the key used for authenticating with the Azure Event Grid custom topic at EventGridTopicEndpoint."
                      | optional,
                    publishEventTypes
                      | js2n.array.UniqueItems
                      | Array (
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'Terminated,
                              'Failed,
                              'Completed,
                              'Pending,
                              'Started
                            |]
                          ]
                      )
                      | doc "A list of event types to publish to Event Grid. If not specified, all event types will be published."
                      | optional,
                    publishRetryCount
                      | std.number.Integer
                      | doc "The number of times to retry if publishing to the Event Grid Topic fails."
                      | optional,
                    publishRetryInterval
                      | String
                      | doc "The Event Grid publishes retry interval in the hh:mm:ss format."
                      | optional,
                    topicEndpoint
                      | String
                      | doc "The URL of an Azure Event Grid custom topic endpoint. When this property is set, orchestration life-cycle notification events are published to this endpoint. This property supports App Settings resolution."
                      | optional,
                  }
                  | optional,
              }
              | optional,
            storageProvider
              | {
                connectionStringName | String | optional,
                controlQueueBatchSize
                  | std.number.Integer
                  | doc "The number of messages to pull from the control queue at a time."
                  | optional,
                controlQueueBufferThreshold
                  | std.number.Integer
                  | doc "The number of control queue messages that can be buffered in memory at a time, at which point the dispatcher will wait before dequeuing any additional messages."
                  | optional,
                controlQueueVisibilityTimeout
                  | String
                  | doc "The visibility timeout of dequeued control queue messages."
                  | optional,
                maxQueuePollingInterval
                  | String
                  | doc "The maximum control and work-item queue polling interval in the hh:mm:ss format. Higher values can result in higher message processing latencies. Lower values can result in higher storage costs because of increased storage transactions."
                  | optional,
                partitionCount
                  | std.number.Integer
                  | doc "The partition count for the control queue. May be a positive integer between 1 and 16."
                  | optional,
                trackingStoreConnectionStringName
                  | String
                  | doc "The name of a connection string to use for the History and Instances tables. If not specified, the azureStorageConnectionStringName connection is used."
                  | optional,
                trackingStoreNamePrefix
                  | String
                  | doc "The prefix to use for the History and Instances tables when trackingStoreConnectionStringName is specified. If not set, the default prefix value will be DurableTask. If trackingStoreConnectionStringName is not specified, then the History and Instances tables will use the hubName value as their prefix, and any setting for trackingStoreNamePrefix will be ignored."
                  | optional,
                useLegacyPartitionManagement
                  | Bool
                  | doc "When set to false, uses a partition management algorithm that reduces the possibility of duplicate function execution when scaling out."
                  | optional,
                workItemQueueVisibilityTimeout
                  | String
                  | doc "The visibility timeout of dequeued work item queue messages."
                  | optional,
              }
              | optional,
            tracing
              | {
                traceInputsAndOutputs
                  | Bool
                  | doc "A value indicating whether to trace the inputs and outputs of function calls. The default behavior when tracing function execution events is to include the number of bytes in the serialized inputs and outputs for function calls. This behavior provides minimal information about what the inputs and outputs look like without bloating the logs or inadvertently exposing sensitive information. Setting this property to true causes the default function logging to log the entire contents of function inputs and outputs."
                  | optional,
                traceReplayEvents
                  | Bool
                  | doc "A value indicating whether to write orchestration replay events to Application Insights."
                  | optional,
              }
              | optional,
            useAppLease
              | Bool
              | doc "When set to true, apps will require acquiring an app-level blob lease before processing task hub messages."
              | optional,
            useGracefulShutdown
              | Bool
              | doc "Enable gracefully shutting down to reduce the chance of host shutdowns failing in-process function executions."
              | optional,
            useTablePartitionManagement | Bool | optional,
          },
      "definitions.functionTimeout" =
        std.contract.any_of
            [
              js2n.string.Matches "^(-1|(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d)$",
              js2n.Enum [ null ]
            ],
      "definitions.functions" =
        std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
      "definitions.healthMonitor" =
        {
            counterThreshold
              | Number
              | doc "The threshold at which a performance counter will be considered unhealthy."
              | optional,
            enabled
              | Bool
              | doc "Specifies whether the feature is enabled."
              | optional,
            healthCheckInterval
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  js2n.string.Matches "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                  { _ | Dyn },
                  Array Dyn
                ]
              | doc "The time interval between the periodic background health checks"
              | optional,
            healthCheckThreshold
              | std.number.Integer
              | doc "Maximum number of times the health check can fail before a host recycle is initiated."
              | optional,
            healthCheckWindow
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  js2n.string.Matches "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                  { _ | Dyn },
                  Array Dyn
                ]
              | doc "A sliding time window used in conjunction with the healthCheckThreshold setting."
              | optional,
          },
      "definitions.http-extension" =
        {
            customHeaders
              | { _ | Dyn }
              | doc "Allows you to set custom headers in the HTTP response, ex. X-Content-Type-Options."
              | optional,
            dynamicThrottlesEnabled
              | Bool
              | doc "Indicates whether dynamic host counter checks should be enabled."
              | optional,
            hsts
              | {
                excludedHosts
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "Defines the list of host names that will not add the HSTS header."
                  | optional,
                includeSubDomains
                  | Bool
                  | doc "Indicates whether the includeSubDomain parameter of the Strict-Transport-Security header should be enabled."
                  | optional,
                isEnabled
                  | Bool
                  | doc "Indicates whether the hsts configuration should be applied"
                  | optional,
                maxAge
                  | String
                  | doc "Defines the max-age parameter of the Strict-Transport-Security header."
                  | optional,
                preload
                  | Bool
                  | doc "Indicates whether the preload parameter of the Strict-Transport-Security header should be enabled."
                  | optional,
              }
              | doc "Configuration settings for Strict-Transport-Security"
              | optional,
            maxConcurrentRequests
              | std.number.Integer
              | doc "Defines the the maximum number of http functions that will execute in parallel."
              | optional,
            maxOutstandingRequests
              | std.number.Integer
              | doc "Defines the maximum number of outstanding requests that will be held at any given time."
              | optional,
            routePrefix
              | String
              | doc "Defines the default route prefix that applies to all routes. Use an empty string to remove the prefix.",
          },
      "definitions.queues-extension" =
        {
            batchSize
              | std.number.Integer
              | js2n.number.Maximum 32
              | js2n.number.Minimum 1
              | doc "The number of queue messages to retrieve and process in parallel (per job function)."
              | optional,
            maxDequeueCount
              | std.number.Integer
              | doc "The number of times to try processing a message before moving it to the poison queue"
              | optional,
            maxPollingInterval
              | std.number.Integer
              | doc "The maximum interval in milliseconds between queue polls."
              | optional,
            newBatchThreshold
              | std.number.Integer
              | doc "The threshold at which a new batch of messages will be fetched. The default is batchSize/2."
              | optional,
            visibilityTimeout
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  js2n.string.Matches "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                  { _ | Dyn },
                  Array Dyn
                ]
              | doc "The visibility timeout that will be applied to messages that fail processing."
              | optional,
          },
      "definitions.queues-extension-v2" =
        {
            batchSize
              | std.number.Integer
              | js2n.number.Maximum 32
              | js2n.number.Minimum 1
              | doc "The number of queue messages that the Functions runtime retrieves simultaneously and processes in parallel. When the number being processed gets down to the `newBatchThreshold`, the runtime gets another batch and starts processing those messages. So the maximum number of concurrent messages being processed per function is `batchSize` plus `newBatchThreshold`. This limit applies separately to each queue-triggered function. "
              | optional,
            maxDequeueCount
              | std.number.Integer
              | doc "The number of times to try processing a message before moving it to the poison queue"
              | optional,
            maxPollingInterval
              | js2n.string.Matches
                "^[0-9][0-9]:[0-9][0-9]:[0-9][0-9](?:\\.[0-9]+)?$"
              | doc "The maximum interval between queue polls. Minimum is 00:00:00.100 (100 ms)."
              | optional,
            messageEncoding
              | std.enum.TagOrString
              | [| 'none, 'base64 |]
              | doc "This setting is only available in extension version 5.0.0 and higher. It represents the encoding format for messages."
              | optional,
            newBatchThreshold
              | std.number.Integer
              | doc "The threshold at which a new batch of messages will be fetched. The default is batchSize/2."
              | optional,
            visibilityTimeout
              | js2n.string.Matches
                "^[0-9][0-9]:[0-9][0-9]:[0-9][0-9](?:\\.[0-9]+)?$"
              | doc "The time interval between retries when processing of a message fails."
              | optional,
          },
      "definitions.singleton" =
        {
            listenerLockPeriod
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  js2n.string.Matches "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                  { _ | Dyn },
                  Array Dyn
                ]
              | doc "The period that listener locks are taken for."
              | optional,
            listenerLockRecoveryPollingInterval
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  js2n.string.Matches "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                  { _ | Dyn },
                  Array Dyn
                ]
              | doc "The time interval used for listener lock recovery if a listener lock couldn't be acquired on startup."
              | optional,
            lockAcquisitionPollingInterval
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  js2n.string.Matches "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                  { _ | Dyn },
                  Array Dyn
                ]
              | doc "The interval between lock acquisition attempts."
              | optional,
            lockAcquisitionTimeout
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  js2n.string.Matches "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                  { _ | Dyn },
                  Array Dyn
                ]
              | doc "The maximum amount of time the runtime will try to acquire a lock."
              | optional,
            lockPeriod
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  js2n.string.Matches "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                  { _ | Dyn },
                  Array Dyn
                ]
              | doc "The period that function level locks are taken for (they will auto renew)."
              | optional,
          },
      "definitions.version-1" =
        {
            aggregator | refs."definitions.aggregator" | { _ | Dyn } | optional,
            applicationInsights
              | {
                sampling
                  | {
                    isEnabled
                      | Bool
                      | doc "If true, client-side adaptive sampling is enabled."
                      | optional,
                    maxTelemetryItemsPerSecond
                      | std.number.Integer
                      | doc "The target rate that the adaptive algorithm aims for on each instance"
                      | optional,
                    ..
                  }
                  | doc "Configuration settings for Application Insights client-side adaptive sampling."
                  | optional,
              }
              | doc "Configuration settings for Application Insights logging."
              | optional,
            documentDB
              | refs."definitions.cosmosDB-extension"
              | { _ | Dyn }
              | optional,
            durableTask
              | refs."definitions.durableTask-extension"
              | { _ | Dyn }
              | optional,
            eventHub
              | {
                batchCheckpointFrequency
                  | std.number.Integer
                  | doc "The number of batches to process before creating an EventHub cursor checkpoint"
                  | optional,
                maxBatchSize
                  | std.number.Integer
                  | doc "The maximum event count received per receive loop."
                  | optional,
                prefetchCount
                  | std.number.Integer
                  | doc "The default PrefetchCount that will be used by the underlying EventProcessorHost."
                  | optional,
              }
              | doc "Configuration settings for 'eventHub' triggers."
              | optional,
            functionTimeout | refs."definitions.functionTimeout" | optional,
            functions | refs."definitions.functions" | Array Dyn | optional,
            healthMonitor
              | refs."definitions.healthMonitor"
              | { _ | Dyn }
              | optional,
            http | refs."definitions.http-extension" | { _ | Dyn } | optional,
            id
              | js2n.string.MinLength 1
              | doc "The unique ID for this job host. Can be a lower case GUID with dashes removed"
              | optional,
            logger
              | {
                categoryLevels
                  | {
                    _ | std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'Warning,
                          'Trace,
                          'None,
                          'Information,
                          'Error,
                          'Debug,
                          'Critical
                        |]
                      ]
                  }
                  | doc "Log levels for specific categories."
                  | optional,
                defaultLevel
                  | std.enum.TagOrString
                  | [|
                    'Warning,
                    'Trace,
                    'None,
                    'Information,
                    'Error,
                    'Debug,
                    'Critical
                  |]
                  | doc "The default level for logging. If a category level is not specified, this value is used."
                  | optional,
                ..
              }
              | doc "Configuration settings for logging."
              | optional,
            queues
              | refs."definitions.queues-extension"
              | { _ | Dyn }
              | optional,
            serviceBus
              | {
                autoComplete
                  | Bool
                  | doc "Specifies whether messages should be automatically completed after successful processing."
                  | optional,
                autoRenewTimeout
                  | js2n.string.Matches "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$"
                  | doc "The maximum duration within which the Service Bus message lock will be renewed automatically."
                  | optional,
                maxConcurrentCalls
                  | std.number.Integer
                  | doc "The maximum number of concurrent calls to the callback the message pump should initiate."
                  | optional,
                prefetchCount
                  | std.number.Integer
                  | doc "The default PrefetchCount that will be used by the underlying MessageReceiver."
                  | optional,
              }
              | doc "Configuration settings for 'serviceBus' triggers."
              | optional,
            singleton | refs."definitions.singleton" | { _ | Dyn } | optional,
            tracing
              | {
                consoleLevel
                  | std.enum.TagOrString
                  | [| 'verbose, 'info, 'warning, 'error, 'off |]
                  | doc "The tracing level used for console logging."
                  | optional,
                fileLoggingMode
                  | std.enum.TagOrString
                  | [| 'debugOnly, 'always, 'never |]
                  | doc "Value determining what level of file logging is enabled."
                  | optional,
              }
              | doc "Configuration settings for logging/tracing behavior."
              | optional,
            watchDirectories
              | refs."definitions.watchDirectories"
              | Array Dyn
              | optional,
          },
      "definitions.version-2" =
        {
            aggregator | refs."definitions.aggregator" | { _ | Dyn } | optional,
            concurrency
              | {
                dynamicConcurrencyEnabled
                  | Bool
                  | doc "Enables or disables dynamic concurrency for function apps."
                  | optional,
                snapshotPersistenceEnabled
                  | Bool
                  | doc "Enables or disables the learned concurrency values persisting in storage."
                  | optional,
              }
              | doc "Configuration settings for dynamic concurrency"
              | optional,
            customHandler
              | {
                description
                  | {
                    arguments
                      | Array String
                      | doc "Arguments to be passed to the Custom Handler process. Can use environment variables following pattern %envVarName%"
                      | optional,
                    defaultExecutablePath
                      | String
                      | doc "Name or path to the Custom Handler process"
                      | optional,
                    workingDirectory
                      | String
                      | doc "WorkingDirectory to be used by the Custom Handler process. If not set, defaults to function app root folder."
                      | optional,
                    ..
                  }
                  | doc "Configuration settings for Custom Handler process"
                  | optional,
                enableForwardingHttpRequest
                  | Bool
                  | doc "Forward HttpTrigger request to the custom handler"
                  | optional,
              }
              | doc "Configuration settings for Custom Handler."
              | optional,
            extensionBundle
              | {
                id | String | doc "The id of the extension bundle" | optional,
                version
                  | String
                  | doc "The version of the extension bundle."
                  | optional,
              }
              | doc "Configuration settings for extension bundle"
              | optional,
            extensions
              | {
                blobs
                  | {
                    maxDegreeOfParallelism
                      | std.number.Integer
                      | js2n.number.Minimum 1
                      | doc "The number of concurrent invocations allowed for each blob-triggered function."
                      | optional,
                    poisonBlobThreshold
                      | std.number.Integer
                      | js2n.number.Minimum 1
                      | doc "The number of times to try processing a message before moving it to the poison queue."
                      | optional,
                  }
                  | optional,
                cosmosDB
                  | refs."definitions.cosmosDB-extension-v2"
                  | { _ | Dyn }
                  | optional,
                durableTask
                  | refs."definitions.durableTask-extension"
                  | { _ | Dyn }
                  | optional,
                eventHubs
                  | js2n.OneOf
                    [
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                batchCheckpointFrequency = std.number.Integer,
                                clientRetryOptions =
                                  js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns = {},
                                        properties =
                                          {
                                              delay =
                                                js2n.string.Matches
                                                    "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d\\.\\d\\d$",
                                              maxDelay =
                                                js2n.string.Matches
                                                    "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                                              maxRetries = std.number.Integer,
                                              mode =
                                                std.contract.Sequence
                                                    [
                                                      std.enum.TagOrString,
                                                      [| 'fixed, 'exponential |]
                                                    ],
                                              tryTimeout =
                                                js2n.string.Matches
                                                    "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                                            },
                                        required = {},
                                      },
                                customEndpointAddress = String,
                                initialOffsetOptions =
                                  js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns = {},
                                        properties =
                                          {
                                              enqueuedTimeUtc = String,
                                              type =
                                                std.contract.Sequence
                                                    [
                                                      std.enum.TagOrString,
                                                      [|
                                                        'fromEnqueuedTime,
                                                        'fromEnd,
                                                        'fromStart
                                                      |]
                                                    ],
                                            },
                                        required = {},
                                      },
                                maxEventBatchSize =
                                  std.contract.Sequence
                                      [
                                        std.number.Integer,
                                        js2n.number.Minimum 1
                                      ],
                                prefetchCount = std.number.Integer,
                                targetUnprocessedEventThreshold =
                                  std.contract.Sequence
                                      [
                                        std.number.Integer,
                                        js2n.number.Minimum 1
                                      ],
                                transportType =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'amqpWebSockets, 'amqpTcp |]
                                      ],
                                webProxy = String,
                              },
                          required = {},
                        },
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                batchCheckpointFrequency = std.number.Integer,
                                eventProcessorOptions =
                                  js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns = {},
                                        properties =
                                          {
                                              maxBatchSize = std.number.Integer,
                                              prefetchCount =
                                                std.number.Integer,
                                            },
                                        required = {},
                                      },
                                initialOffsetOptions =
                                  js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns = {},
                                        properties =
                                          {
                                              type =
                                                std.contract.Sequence
                                                    [
                                                      std.enum.TagOrString,
                                                      [|
                                                        'fromEnqueuedTime,
                                                        'fromEnd,
                                                        'fromStart
                                                      |]
                                                    ],
                                            },
                                        required = {},
                                      },
                              },
                          required = {},
                        },
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                batchCheckpointFrequency = std.number.Integer,
                                maxBatchSize = std.number.Integer,
                                prefetchCount = std.number.Integer,
                              },
                          required = {},
                        }
                    ]
                  | doc "Configuration settings for 'eventHub' triggers."
                  | optional,
                http
                  | refs."definitions.http-extension"
                  | { _ | Dyn }
                  | optional,
                queues
                  | refs."definitions.queues-extension-v2"
                  | { _ | Dyn }
                  | optional,
                sendGrid
                  | {
                    from
                      | String
                      | doc "The sender's email address across all functions."
                      | optional,
                  }
                  | optional,
                serviceBus
                  | js2n.OneOf
                    [
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                batchOptions =
                                  js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns = {},
                                        properties =
                                          {
                                              autoComplete = Bool,
                                              maxMessageCount =
                                                std.number.Integer,
                                              operationTimeout =
                                                std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      js2n.string.Matches
                                                        "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                                                      { _ | Dyn },
                                                      Array Dyn
                                                    ],
                                            },
                                        required = {},
                                      },
                                messageHandlerOptions =
                                  js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns = {},
                                        properties =
                                          {
                                              autoComplete = Bool,
                                              maxAutoRenewDuration =
                                                js2n.string.Matches
                                                    "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                                              maxConcurrentCalls =
                                                std.number.Integer,
                                            },
                                        required = {},
                                      },
                                prefetchCount = std.number.Integer,
                                sessionHandlerOptions =
                                  js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns = {},
                                        properties =
                                          {
                                              autoComplete = Bool,
                                              maxAutoRenewDuration =
                                                js2n.string.Matches
                                                    "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                                              maxConcurrentSessions =
                                                std.number.Integer,
                                              messageWaitTimeout = String,
                                            },
                                        required = {},
                                      },
                              },
                          required = {},
                        },
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                autoCompleteMessages = Bool,
                                clientRetryOptions =
                                  js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties =
                                          {
                                              delay =
                                                js2n.string.Matches
                                                    "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d\\.\\d\\d$",
                                              maxDelay =
                                                js2n.string.Matches
                                                    "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                                              maxRetries = std.number.Integer,
                                              mode =
                                                std.contract.Sequence
                                                    [
                                                      std.enum.TagOrString,
                                                      [| 'fixed, 'exponential |]
                                                    ],
                                              tryTimeout =
                                                js2n.string.Matches
                                                    "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                                            },
                                        required = {},
                                      },
                                enableCrossEntityTransactions = Bool,
                                maxAutoLockRenewalDuration =
                                  js2n.string.Matches
                                      "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                                maxBatchWaitTime =
                                  js2n.string.Matches
                                      "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                                maxConcurrentCalls = std.number.Integer,
                                maxConcurrentSessions = std.number.Integer,
                                maxMessageBatchSize = std.number.Integer,
                                prefetchCount = std.number.Integer,
                                sessionIdleTimeout =
                                  js2n.string.Matches
                                      "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                                transportType =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'amqpWebSockets, 'amqpTcp |]
                                      ],
                                webProxy = String,
                              },
                          required = {},
                        }
                    ]
                  | doc "Configuration settings for 'serviceBus' triggers."
                  | optional,
              }
              | optional,
            functionTimeout | refs."definitions.functionTimeout" | optional,
            functions | refs."definitions.functions" | Array Dyn | optional,
            healthMonitor
              | refs."definitions.healthMonitor"
              | { _ | Dyn }
              | optional,
            languageWorker
              | {
                workersDirectory
                  | String
                  | doc "Specifies full path of the directory for language workers"
                  | optional,
              }
              | doc "Configuration settings for Language Workers."
              | optional,
            logging
              | {
                applicationInsights
                  | {
                    enableDependencyTracking
                      | Bool
                      | doc "Enables dependency tracking"
                      | optional,
                    enableLiveMetrics
                      | Bool
                      | doc "Enables live metrics collection."
                      | optional,
                    enableLiveMetricsFilters
                      | Bool
                      | doc "Enables live metrics filters."
                      | optional,
                    enableMetricsCustomDimensionOptimization
                      | Bool
                      | doc "Enables optimization that bypasses custom dimensions in Metrics telemetry."
                      | optional,
                    enablePerformanceCountersCollection
                      | Bool
                      | doc "Enables Kudu performance counters collection."
                      | optional,
                    httpAutoCollectionOptions
                      | {
                        enableHttpTriggerExtendedInfoCollection
                          | Bool
                          | doc "Enables or disables extended HTTP request information for HTTP triggers."
                          | optional,
                        enableResponseHeaderInjection
                          | Bool
                          | doc "Enables or disables injection of multi-component correlation headers into responses. Enabling injection allows Application Insights to construct an Application Map to when several instrumentation keys are used."
                          | optional,
                        enableW3CDistributedTracing
                          | Bool
                          | doc "Enables or disables support of W3C distributed tracing protocol (and turns on legacy correlation schema). Enabled by default if enableHttpTriggerExtendedInfoCollection is true. If enableHttpTriggerExtendedInfoCollection is false, this flag applies to outgoing requests only, not incoming requests"
                          | optional,
                      }
                      | optional,
                    samplingSettings
                      | {
                        evaluationInterval
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              js2n.string.Matches
                                "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                              { _ | Dyn },
                              Array Dyn
                            ]
                          | doc "The interval at which the current rate of telemetry is reevaluated."
                          | optional,
                        excludedTypes
                          | String
                          | doc "A semi-colon delimited list of types excluded from sampling. Recognized: Dependency, Event, Exception, PageView, Request, Trace."
                          | optional,
                        includedTypes
                          | String
                          | doc "A semi-colon delimited list of types that you want to be sampled. Recognized: Dependency, Event, Exception, PageView, Request, and Trace."
                          | optional,
                        initialSamplingPercentage
                          | Number
                          | doc "The initial sampling percentage applied at the start of the sampling process to dynamically vary the percentage."
                          | optional,
                        isEnabled
                          | Bool
                          | doc "If true, client-side adaptive sampling is enabled."
                          | optional,
                        maxSamplingPercentage
                          | Number
                          | doc "As sampling percentage varies, this property determines the maximum allowed sampling percentage."
                          | optional,
                        maxTelemetryItemsPerSecond
                          | std.number.Integer
                          | doc "The target rate that the adaptive algorithm aims for on each instance"
                          | optional,
                        minSamplingPercentage
                          | Number
                          | doc "As sampling percentage varies, this property determines the minimum allowed sampling percentage."
                          | optional,
                        movingAverageRatio
                          | Number
                          | doc "In the calculation of the moving average, the weight assigned to the most recent value. Use a value equal to or less than 1. Smaller values make the algorithm less reactive to sudden changes."
                          | optional,
                        samplingPercentageDecreaseTimeout
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              js2n.string.Matches
                                "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                              { _ | Dyn },
                              Array Dyn
                            ]
                          | doc "When the sampling percentage value changes, this property determines how soon afterwards Application Insights is allowed to lower sampling percentage again to capture less data."
                          | optional,
                        samplingPercentageIncreaseTimeout
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              js2n.string.Matches
                                "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                              { _ | Dyn },
                              Array Dyn
                            ]
                          | doc "When the sampling percentage value changes, this property determines how soon afterwards Application Insights is allowed to raise sampling percentage again to capture more data."
                          | optional,
                        ..
                      }
                      | doc "Configuration settings for Application Insights client-side adaptive sampling."
                      | optional,
                    snapshotConfiguration
                      | {
                        agentEndpoint
                          | std.contract.any_of [ String, js2n.Enum [ null ] ]
                          | doc "The endpoint used to connect to the Application Insights Snapshot Debugger service."
                          | optional,
                        captureSnapshotMemoryWeight
                          | Number
                          | doc "The weight given to the current process memory size when checking if there's enough memory to take a snapshot."
                          | optional,
                        failedRequestLimit
                          | std.number.Integer
                          | doc "The limit on the number of failed requests to request snapshots before the telemetry processor is disabled."
                          | optional,
                        handleUntrackedExceptions
                          | Bool
                          | doc "Enables or disables tracking of exceptions that aren't tracked by Application Insights telemetry."
                          | optional,
                        isEnabled
                          | Bool
                          | doc "Enables or disables snapshot collection."
                          | optional,
                        isEnabledInDeveloperMode
                          | Bool
                          | doc "Enables or disables snapshot collection is enabled in developer mode."
                          | optional,
                        isEnabledWhenProfiling
                          | Bool
                          | doc "Enables or disables snapshot creation even if the Application Insights Profiler is collecting a detailed profiling session."
                          | optional,
                        isExceptionSnappointsEnabled
                          | Bool
                          | doc "Enables or disables filtering of exceptions."
                          | optional,
                        isLowPrioritySnapshotUploader
                          | Bool
                          | doc "Determines whether to run the SnapshotUploader process at below normal priority."
                          | optional,
                        maximumCollectionPlanSize
                          | std.number.Integer
                          | js2n.number.Maximum 9999
                          | js2n.number.Minimum 1
                          | doc "The maximum number of problems that we can track at any time."
                          | optional,
                        maximumSnapshotsRequired
                          | std.number.Integer
                          | js2n.number.Maximum 999
                          | js2n.number.Minimum 1
                          | doc "The maximum number of snapshots collected for a single problem."
                          | optional,
                        problemCounterResetInterval
                          | js2n.string.Matches
                            "^(?:[01]\\d|2[0-4]):[0-5]\\d:[0-5]\\d$"
                          | doc "How often to reset the problem counters in a range from one minute to seven days."
                          | optional,
                        provideAnonymousTelemetry
                          | Bool
                          | doc "Determines whether to send anonymous usage and error telemetry to Microsoft. This telemetry may be used if you contact Microsoft to help troubleshoot problems with the Snapshot Debugger"
                          | optional,
                        reconnectInterval
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              js2n.string.Matches
                                "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                              { _ | Dyn },
                              Array Dyn
                            ]
                          | doc "How often we reconnect to the Snapshot Debugger endpoint. Allowable range is one minute to one day."
                          | optional,
                        shadowCopyFolder
                          | std.contract.any_of [ String, js2n.Enum [ null ] ]
                          | doc "Specifies the folder to use for shadow copying binaries. If not set, the folders specified by the following environment variables are tried in order: Fabric_Folder_App_Temp, LOCALAPPDATA, APPDATA, TEMP."
                          | optional,
                        shareUploaderProcess
                          | Bool
                          | doc "If true, only one instance of SnapshotUploader will collect and upload snapshots for multiple apps that share the InstrumentationKey. If set to false, the SnapshotUploader will be unique for each (ProcessName, InstrumentationKey) tuple."
                          | optional,
                        snapshotInLowPriorityThread
                          | Bool
                          | doc "Determines whether or not to process snapshots in a low IO priority thread."
                          | optional,
                        snapshotsPerDayLimit
                          | std.number.Integer
                          | doc "The maximum number of snapshots allowed in one day (24 hours). This limit is also enforced on the Application Insights service side."
                          | optional,
                        snapshotsPerTenMinutesLimit
                          | std.number.Integer
                          | doc "The maximum number of snapshots allowed in 10 minutes. Although there is no upper bound on this value, exercise caution increasing it on production workloads because it could impact the performance of your application."
                          | optional,
                        tempFolder
                          | std.contract.any_of [ String, js2n.Enum [ null ] ]
                          | doc "Specifies the folder to write minidumps and uploader log files. If not set, then %TEMP%\\Dumps is used."
                          | optional,
                        thresholdForSnapshotting
                          | std.number.Integer
                          | doc "How many times Application Insights needs to see an exception before it asks for snapshots."
                          | optional,
                        uploaderProxy
                          | std.contract.any_of [ String, js2n.Enum [ null ] ]
                          | doc "Overrides the proxy server used in the Snapshot Uploader process. You may need to use this setting if your application connects to the internet via a proxy server. The Snapshot Collector runs within your application's process and will use the same proxy settings."
                          | optional,
                      }
                      | optional,
                  }
                  | doc "Configuration settings for Application Insights logging."
                  | optional,
                fileLoggingMode
                  | std.enum.TagOrString
                  | [| 'debugOnly, 'always, 'never |]
                  | doc "Value determining what level of file logging is enabled."
                  | optional,
                logLevel
                  | js2n.record.Record
                    {
                      additional =
                        'Some
                            (std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'Warning,
                                  'Trace,
                                  'None,
                                  'Information,
                                  'Error,
                                  'Debug,
                                  'Critical
                                |]
                              ]),
                      patterns = {},
                      properties =
                        {
                            "default" =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [|
                                      'Warning,
                                      'Trace,
                                      'None,
                                      'Information,
                                      'Error,
                                      'Debug,
                                      'Critical
                                    |]
                                  ],
                          },
                      required = {},
                    }
                  | doc "Log levels for specific categories."
                  | optional,
                ..
              }
              | doc "Configuration settings for logging."
              | optional,
            managedDependency
              | {
                enabled
                  | Bool
                  | doc "If true, the requirements.psd1 file is processed"
                  | optional,
              }
              | doc "Managed dependency is a feature that is currently only supported with PowerShell based functions. It enables dependencies to be automatically managed by the service."
              | optional,
            retry
              | {
                delayInterval
                  | std.contract.any_of
                    [
                      js2n.string.Matches
                        "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                      js2n.Enum [ null ]
                    ]
                  | doc "Value indicating the delayInterval for function execution retries when using FixedDelay strategy."
                  | optional,
                maxRetryCount
                  | std.number.Integer
                  | doc "The maximum number of retries allowed per function execution. -1 means to retry indefinitely."
                  | optional,
                maximumInterval
                  | std.contract.any_of
                    [
                      js2n.string.Matches
                        "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                      js2n.Enum [ null ]
                    ]
                  | doc "Value indicating the maximumInterval for function execution retries when using ExponentialBackoff strategy."
                  | optional,
                minimumInterval
                  | std.contract.any_of
                    [
                      js2n.string.Matches
                        "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                      js2n.Enum [ null ]
                    ]
                  | doc "Value indicating the minimumInterval for function execution retries when using ExponentialBackoff strategy."
                  | optional,
                strategy
                  | std.enum.TagOrString
                  | [| 'fixedDelay, 'exponentialBackoff |]
                  | doc "Retry strategy to use for retrying function executions"
                  | optional,
                ..
              }
              | doc "Retry policy of function execution failures at the app level. Retry policy applies to all the functions in the function app."
              | optional,
            sendCanceledInvocationsToWorker
              | Bool
              | doc "Where the language worker supports 'Cancellation', send canceled invocations to the worker. If not set, defaults to true."
              | optional,
            singleton | refs."definitions.singleton" | { _ | Dyn } | optional,
            telemetryMode
              | std.enum.TagOrString
              | [| 'OpenTelemetry |]
              | doc "Used to enable output of logs and traces in an OpenTelemetry output format to one or more endpoints that support OpenTelemetry."
              | optional,
            version
              | std.enum.TagOrString
              | [| '"2.0" |]
              | doc "The version of the Azure Functions host.json schema. This is NOT the version of the Azure Functions host.",
            watchDirectories
              | refs."definitions.watchDirectories"
              | Array Dyn
              | optional,
            watchFiles
              | js2n.array.UniqueItems
              | Array (js2n.string.MinLength 1)
              | doc "An array of one or more names of files that are monitored for changes that require your app to restart. This guarantees that when code in these files are changed, the updates are picked up by your functions"
              | optional,
          },
      "definitions.watchDirectories" =
        std.contract.Sequence
            [ js2n.array.UniqueItems, Array (js2n.string.MinLength 1) ],
    }
    in
  std.contract.Sequence
      [
        js2n.OneOf
          [ refs."definitions.version-1", refs."definitions.version-2" ],
        { _ | Dyn }
      ]