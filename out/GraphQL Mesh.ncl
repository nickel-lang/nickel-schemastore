# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AdditionalStitchingBatchResolverObject" =
        {
            additionalArgs | { _ | Dyn } | optional,
            keyField | String,
            keysArg | String,
            requiredSelectionSet | String | optional,
            result
              | String
              | doc "Extract specific property from the result"
              | optional,
            resultType
              | String
              | doc m%"
                If return types don't match,
                you can specify a result type to apply inline fragment
              "%
              | optional,
            sourceFieldName | String,
            sourceName | String,
            sourceSelectionSet | String | optional,
            sourceTypeName | String,
            targetFieldName | String,
            targetTypeName | String,
          },
      "definitions.AdditionalStitchingResolverObject" =
        {
            requiredSelectionSet | String | optional,
            result
              | String
              | doc "Extract specific property from the result"
              | optional,
            resultType
              | String
              | doc m%"
                If return types don't match,
                you can specify a result type to apply inline fragment
              "%
              | optional,
            sourceArgs | { _ | Dyn } | optional,
            sourceFieldName | String,
            sourceName | String,
            sourceSelectionSet | String | optional,
            sourceTypeName | String,
            targetFieldName | String,
            targetTypeName | String,
          },
      "definitions.AdditionalSubscriptionObject" =
        {
            filterBy | String | optional,
            pubsubTopic | String,
            result | String | optional,
            targetFieldName | String,
            targetTypeName | String,
          },
      "definitions.CFWorkersKVCacheConfig" =
        {
            namespace
              | String
              | doc m%"
                The name of the Workers KV namespace to use for caching.
                
                Make sure you have configured the following namespace described in [here](https://developers.cloudflare.com/workers/wrangler/cli-wrangler/commands/#kv).
              "%,
          },
      "definitions.Cache" =
        {
            cfwKv
              | refs."definitions.CFWorkersKVCacheConfig"
              | { _ | Dyn }
              | optional,
            file | refs."definitions.FileCacheConfig" | { _ | Dyn } | optional,
            localforage
              | refs."definitions.LocalforageConfig"
              | { _ | Dyn }
              | optional,
            redis
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.RedisConfigSentinel", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.RedisConfigSingle", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.RedisConfigCluster", { _ | Dyn } ]
                ]
              | doc "Any of: RedisConfigSentinel, RedisConfigSingle, RedisConfigCluster"
              | optional,
            ..
          },
      "definitions.CacheEffectingOperationConfig" =
        {
            matchKey
              | String
              | doc "Cache key to invalidate on successful resolver (no error), see `cacheKey` for list of available options in this field."
              | optional,
            operation
              | String
              | doc "Path to the operation that could effect it. In a form: Mutation.something. Note that wildcard is not supported in this field.",
          },
      "definitions.CacheInvalidateConfig" =
        {
            effectingOperations
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.CacheEffectingOperationConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "Invalidate the cache when a specific operation is done without an error"
              | optional,
            ttl
              | std.number.Integer
              | doc "Specified in seconds, the time-to-live (TTL) value limits the lifespan"
              | optional,
          },
      "definitions.CacheTransformConfig" =
        {
            cacheKey
              | String
              | doc m%"
                Cache key to use to store your resolvers responses.
                The default is: `{typeName}-{fieldName}-{argsHash}-{fieldNamesHash}`
                
                Available variables:
                  - `{args.argName}` - use resolver argument
                  - `{typeName}` - use name of the type
                  - `{fieldName}` - use name of the field
                  - `{argsHash}` - a hash based on the 'args' object
                  - `{fieldNamesHash}` - a hash based on the field names selected by the client
                  - `{info}` - the GraphQLResolveInfo of the resolver
                
                Available interpolations:
                  - `{format|date}` - returns the current date with a specific format
              "%
              | optional,
            field
              | String
              | doc "The type and field to apply cache to, you can use wild cards as well, for example: `Query.*`",
            invalidate
              | refs."definitions.CacheInvalidateConfig"
              | { _ | Dyn }
              | doc "Invalidation rules"
              | optional,
          },
      "definitions.ComposeMongooseInputType" =
        {
            description | String | optional,
            fields
              | refs."definitions.ComposeWithMongooseFieldsOpts"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            resolvers
              | refs."definitions.TypeConverterResolversOpts"
              | { _ | Dyn }
              | optional,
          },
      "definitions.ComposeWithMongooseFieldsOpts" =
        {
            only | Array String | optional,
            remove | Array String | optional,
            required | Array String | optional,
          },
      "definitions.ComposeWithMongooseOpts" =
        {
            description | String | optional,
            fields
              | refs."definitions.ComposeWithMongooseFieldsOpts"
              | { _ | Dyn }
              | optional,
            inputType
              | refs."definitions.ComposeMongooseInputType"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            resolvers
              | refs."definitions.TypeConverterResolversOpts"
              | { _ | Dyn }
              | optional,
          },
      "definitions.ComposeWithMongooseResolverOpts" =
        {
            filter
              | refs."definitions.FilterHelperArgsOpts"
              | { _ | Dyn }
              | optional,
            limit
              | refs."definitions.LimitHelperArgsOpts"
              | { _ | Dyn }
              | optional,
            record
              | refs."definitions.RecordHelperArgsOpts"
              | { _ | Dyn }
              | optional,
            skip | Bool | optional,
            sort
              | refs."definitions.SortHelperArgsOpts"
              | { _ | Dyn }
              | optional,
          },
      "definitions.ComputedAnnotation" = { selectionSet | String, },
      "definitions.CorsConfig" =
        {
            allowedHeaders | Array String | optional,
            credentials | Bool | optional,
            exposedHeaders | Array String | optional,
            maxAge | std.number.Integer | optional,
            optionsSuccessStatus | std.number.Integer | optional,
            origin
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | optional,
            preflightContinue | Bool | optional,
          },
      "definitions.CustomPersistedQueryErrors" =
        {
            keyNotFound
              | String
              | doc "Error to be thrown when the extraction of the persisted operation id failed"
              | optional,
            notFound
              | String
              | doc "Error to be thrown when the persisted operation is not found"
              | optional,
            persistedQueryOnly
              | String
              | doc "Error to be thrown when rejecting non-persisted operations"
              | optional,
          },
      "definitions.EncapsulateTransformApplyTo" =
        {
            mutation | Bool | optional,
            query | Bool | optional,
            subscription | Bool | optional,
          },
      "definitions.EncapsulateTransformObject" =
        {
            applyTo
              | refs."definitions.EncapsulateTransformApplyTo"
              | { _ | Dyn }
              | doc "Allow you to choose which root operations you would like to apply. By default, it's applied to all root types."
              | optional,
            name
              | String
              | doc "Optional, name to use for grouping under the root types. If not specific, the API name is used."
              | optional,
          },
      "definitions.ExtendTransform" =
        {
            resolvers
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | optional,
            typeDefs
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | optional,
          },
      "definitions.FederationField" =
        {
            config | refs."definitions.FederationFieldConfig" | { _ | Dyn },
            name | String,
          },
      "definitions.FederationFieldConfig" =
        {
            external | Bool | optional,
            inaccessible | Bool | optional,
            override
              | refs."definitions.FederationFieldOverrideConfig"
              | { _ | Dyn }
              | optional,
            provides
              | refs."definitions.FederationFieldProvidesConfig"
              | { _ | Dyn }
              | optional,
            requires
              | refs."definitions.FederationFieldRequiresConfig"
              | { _ | Dyn }
              | optional,
            tag
              | refs."definitions.FederationFieldTagConfig"
              | { _ | Dyn }
              | optional,
          },
      "definitions.FederationFieldOverrideConfig" =
        { from | String | optional, },
      "definitions.FederationFieldProvidesConfig" =
        { fields | String | optional, },
      "definitions.FederationFieldRequiresConfig" =
        { fields | String | optional, },
      "definitions.FederationFieldTagConfig" = { name | String | optional, },
      "definitions.FederationObjectConfig" =
        {
            extends | Bool | optional,
            fields
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FederationField", { _ | Dyn } ]
              )
              | optional,
            key
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FederationObjectKeyConfig", { _ | Dyn } ]
              )
              | optional,
            resolveReference
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.ResolveReferenceObject", { _ | Dyn } ]
                ]
              | doc "Any of: String, ResolveReferenceObject"
              | optional,
            shareable | Bool | optional,
          },
      "definitions.FederationObjectKeyConfig" = { fields | String | optional, },
      "definitions.FederationTransform" =
        {
            types
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FederationTransformType", { _ | Dyn } ]
              )
              | optional,
            version
              | String
              | doc m%"
                Version of the federation spec
                Default: v2.0
              "%
              | optional,
          },
      "definitions.FederationTransformType" =
        {
            config
              | refs."definitions.FederationObjectConfig"
              | { _ | Dyn }
              | optional,
            name | String,
          },
      "definitions.FileCacheConfig" = { path | String | optional, },
      "definitions.FilterHelperArgsOpts" =
        {
            filterTypeName | String | optional,
            isRequired | Bool | optional,
            onlyIndexed | Bool | optional,
            operators
              | std.contract.any_of [ Bool, { _ | Dyn } ]
              | doc "Any of: Boolean, JSON"
              | optional,
            removeFields | Array String | optional,
            requiredFields | Array String | optional,
          },
      "definitions.FilterSchemaTransform" =
        {
            filterDeprecatedFields
              | Bool
              | doc "Filter deprecated fields"
              | optional,
            filterDeprecatedTypes
              | Bool
              | doc "Filter deprecated types"
              | optional,
            filters | Array String | doc "Array of filter rules",
            mode
              | std.enum.TagOrString
              | [| 'wrap, 'bare |]
              | doc "Specify to apply filter-schema transforms to bare schema or by wrapping original schema (Allowed values: bare, wrap)"
              | optional,
          },
      "definitions.GenerateOperationsConfig" =
        { selectionSetDepth | std.number.Integer | optional, },
      "definitions.GetFromMockStoreConfig" =
        {
            fieldName | String | optional,
            key | String | optional,
            type | String | optional,
          },
      "definitions.GraphQLHandlerCodeFirstConfiguration" =
        {
            source
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | doc m%"
                A file path to your GraphQL Schema
                If you provide a path to a code file(js or ts),
                other options will be ignored and the schema exported from the file will be used directly.
              "%,
          },
      "definitions.GraphQLHandlerHTTPConfiguration" =
        {
            batch
              | Bool
              | doc "Enable/Disable automatic query batching"
              | optional,
            connectionParams
              | { _ | Dyn }
              | doc m%"
                JSON object representing the `connectionParams` from a WebSocket connection to add to the runtime of the API calls only for operation during runtime.
                More information about the WebSocket `connectionParams`:
                  - When using `subscriptionsProtocol=WS` (graphql-ws): https://github.com/enisdenjo/graphql-ws/blob/master/docs/interfaces/client.ClientOptions.md#connectionparams
                  - When using `subscriptionsProtocol=LEGACY_WS` (subscriptions-transport-ws): https://github.com/apollographql/subscriptions-transport-ws/blob/51270cc7dbaf09c7b9aa67368f1de58148c7d334/README.md#subscriptionclient
              "%
              | optional,
            credentials
              | std.enum.TagOrString
              | [| 'include, 'omit |]
              | doc m%"
                Request Credentials if your environment supports it.
                [See more](https://developer.mozilla.org/en-US/docs/Web/API/Request/credentials)
                
                @default "same-origin" (Allowed values: omit, include)
              "%
              | optional,
            endpoint
              | String
              | doc m%"
                A url or file path to your remote GraphQL endpoint.
                If you provide a path to a code file(js or ts),
                other options will be ignored and the schema exported from the file will be used directly.
              "%,
            method
              | std.enum.TagOrString
              | [| 'POST, 'GET |]
              | doc "HTTP method used for GraphQL operations (Allowed values: GET, POST)"
              | optional,
            operationHeaders
              | { _ | Dyn }
              | doc "JSON object representing the Headers to add to the runtime of the API calls only for operation during runtime"
              | optional,
            retry
              | std.number.Integer
              | doc "Retry attempts if fails"
              | optional,
            schemaHeaders
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | doc "JSON object representing the Headers to add to the runtime of the API calls only for schema introspection"
              | optional,
            source
              | String
              | doc m%"
                Path to the introspection
                You can separately give schema introspection or SDL
              "%
              | optional,
            subscriptionsEndpoint
              | String
              | doc "URL to your endpoint serving all subscription queries for this source"
              | optional,
            subscriptionsProtocol
              | std.enum.TagOrString
              | [| 'LEGACY_WS, 'WS, 'SSE |]
              | doc m%"
                SSE - Server Sent Events
                WS - New graphql-ws
                LEGACY_WS - Legacy subscriptions-transport-ws (Allowed values: SSE, WS, LEGACY_WS)
              "%
              | optional,
            timeout
              | std.number.Integer
              | doc "Timeout in milliseconds"
              | optional,
            useGETForQueries
              | Bool
              | doc "Use HTTP GET for Query operations"
              | optional,
            webSocketImpl
              | String
              | doc "Path to a custom W3 Compatible WebSocket Implementation"
              | optional,
          },
      "definitions.GraphQLHandlerMultipleHTTPConfiguration" =
        {
            sources
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.GraphQLHandlerHTTPConfiguration",
                    { _ | Dyn }
                  ]
              )
              | doc "HTTP Source Configurations",
            strategy
              | std.enum.TagOrString
              | [| 'highestValue, 'race, 'fallback |]
              | doc "Handling strategy (default: fallback) (Allowed values: fallback, race, highestValue)"
              | optional,
            strategyConfig
              | refs."definitions.GraphQLHandlerhighestValueStrategyConfig"
              | { _ | Dyn }
              | doc "Handling strategy configuration"
              | optional,
          },
      "definitions.GraphQLHandlerhighestValueStrategyConfig" =
        { selectionSet | String, value | String, },
      "definitions.GrpcCredentialsSsl" =
        {
            certChain | String | optional,
            privateKey | String | optional,
            rootCA | String | optional,
          },
      "definitions.GrpcHandler" =
        {
            credentialsSsl
              | refs."definitions.GrpcCredentialsSsl"
              | { _ | Dyn }
              | doc "SSL Credentials"
              | optional,
            endpoint | String | doc "gRPC Endpoint",
            metaData | { _ | Dyn } | doc "MetaData" | optional,
            prefixQueryMethod
              | Array String
              | doc "prefix to collect Query method default: list, get"
              | optional,
            requestTimeout
              | std.number.Integer
              | doc m%"
                Request timeout in milliseconds
                Default: 200000
              "%
              | optional,
            schemaHeaders | { _ | Dyn } | optional,
            selectQueryOrMutationField
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.SelectQueryOrMutationFieldConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "Allows to explicitly override the default operation (Query or Mutation) for any gRPC operation"
              | optional,
            source
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.ProtoFilePath", { _ | Dyn } ],
                  String
                ]
              | doc m%"
                gRPC Proto file that contains your protobuf schema
                OR
                Use a binary-encoded or JSON file descriptor set file (Any of: ProtoFilePath, String)
              "%
              | optional,
            useHTTPS
              | Bool
              | doc "Use https instead of http for gRPC connection"
              | optional,
          },
      "definitions.HTTPCachePlugin" =
        {
            ignores
              | Array (
                std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [ refs."definitions.URLPatternObj", { _ | Dyn } ]
                  ]
              )
              | doc "If the following patterns match the request URL, the response will not be cached. (Any of: String, URLPatternObj)"
              | optional,
            matches
              | Array (
                std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [ refs."definitions.URLPatternObj", { _ | Dyn } ]
                  ]
              )
              | doc "If the following patterns match the request URL, the response will be cached. (Any of: String, URLPatternObj)"
              | optional,
          },
      "definitions.HTTPDetailsExtensionsConfig" =
        {
            "if"
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | optional,
          },
      "definitions.HTTPSConfig" = { cert | String, key | String, },
      "definitions.Handler" =
        {
            graphql
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.GraphQLHandlerHTTPConfiguration",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.GraphQLHandlerCodeFirstConfiguration",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.GraphQLHandlerMultipleHTTPConfiguration",
                      { _ | Dyn }
                    ]
                ]
              | doc "Handler for remote/local/third-party GraphQL schema (Any of: GraphQLHandlerHTTPConfiguration, GraphQLHandlerCodeFirstConfiguration, GraphQLHandlerMultipleHTTPConfiguration)"
              | optional,
            grpc
              | refs."definitions.GrpcHandler"
              | { _ | Dyn }
              | doc "Handler for gRPC and Protobuf schemas"
              | optional,
            jsonSchema
              | refs."definitions.JsonSchemaHandler"
              | { _ | Dyn }
              | doc m%"
                Handler for JSON Schema specification.
                Source could be a local json file, or a url to it.
              "%
              | optional,
            mongoose
              | refs."definitions.MongooseHandler"
              | { _ | Dyn }
              | optional,
            mysql | refs."definitions.MySQLHandler" | { _ | Dyn } | optional,
            neo4j
              | refs."definitions.Neo4jHandler"
              | { _ | Dyn }
              | doc "Handler for Neo4j"
              | optional,
            odata
              | refs."definitions.ODataHandler"
              | { _ | Dyn }
              | doc "Handler for OData"
              | optional,
            openapi
              | refs."definitions.OpenapiHandler"
              | { _ | Dyn }
              | doc "Handler for Swagger / OpenAPI 2/3 specification. Source could be a local json/swagger file, or a url to it."
              | optional,
            postgraphile
              | refs."definitions.PostGraphileHandler"
              | { _ | Dyn }
              | doc "Handler for Postgres database, based on `postgraphile`"
              | optional,
            raml | refs."definitions.RAMLHandler" | { _ | Dyn } | optional,
            soap
              | refs."definitions.SoapHandler"
              | { _ | Dyn }
              | doc "Handler for SOAP"
              | optional,
            supergraph
              | refs."definitions.SupergraphHandler"
              | { _ | Dyn }
              | optional,
            thrift
              | refs."definitions.ThriftHandler"
              | { _ | Dyn }
              | doc "Handler for OData"
              | optional,
            tuql
              | refs."definitions.TuqlHandler"
              | { _ | Dyn }
              | doc "Handler for SQLite database, based on `tuql`"
              | optional,
            ..
          },
      "definitions.HiveAgentOptions" =
        {
            logger
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | optional,
            maxRetries | std.number.Integer | doc "5 by default" | optional,
            maxSize
              | std.number.Integer
              | doc "Max number of traces to send at once (defaults to 25)"
              | optional,
            minTimeout | std.number.Integer | doc "200 by default" | optional,
            name | String | optional,
            sendInterval
              | std.number.Integer
              | doc "Send reports in interval (defaults to 10_000ms)"
              | optional,
            timeout | std.number.Integer | doc "30s by default" | optional,
          },
      "definitions.HiveClientInfo" =
        {
            name
              | String
              | doc m%"
                Extract client name
                Example: `{context.headers['x-client-name']}`
              "%
              | optional,
            version
              | String
              | doc m%"
                Extract client version
                Example: `{context.headers['x-client-version']}`
              "%
              | optional,
          },
      "definitions.HivePersistedDocumentsConfiguration" =
        {
            allowArbitraryDocuments
              | Bool
              | doc "Whether arbitrary documents should be allowed along-side persisted documents. false by default"
              | optional,
            cache
              | std.number.Integer
              | doc "Maximum amount of operations that shall be kept in memory after being loaded from the CDN. 10 seconds by default"
              | optional,
            cdn
              | refs."definitions.HivePersistedDocumentsConfigurationCDN"
              | { _ | Dyn }
              | doc m%"
                Point to your own instance of GraphQL Hive API
                
                Used by schema reporting and token info.
              "%,
          },
      "definitions.HivePersistedDocumentsConfigurationCDN" =
        {
            accessToken
              | String
              | doc "Access Token for Persisted Documents CDN",
            endpoint | String | doc "CDN endpoint",
          },
      "definitions.HivePlugin" =
        {
            agent
              | refs."definitions.HiveAgentOptions"
              | { _ | Dyn }
              | doc "Agent Options"
              | optional,
            enabled
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                If this expression is truthy, mocking would be enabled
                You can use environment variables expression, for example: `process.env.MOCKING_ENABLED != null` (Any of: Boolean, String)
              "%
              | optional,
            experimental__persistedDocuments
              | refs."definitions.HivePersistedDocumentsConfiguration"
              | { _ | Dyn }
              | doc m%"
                Experimental persisted documents configuration
                [See more](https://the-guild.dev/graphql/hive/docs/features/app-deployments#persisted-documents-on-graphql-server-and-gateway)
              "%
              | optional,
            reporting
              | refs."definitions.HiveReportingOptions"
              | { _ | Dyn }
              | doc "Schema reporting"
              | optional,
            selfHosting
              | refs."definitions.HiveSelfHostingOptions"
              | { _ | Dyn }
              | doc m%"
                Options for self-hosting
                [See more](https://github.com/kamilkisiela/graphql-hive/tree/main/packages/libraries/client#self-hosting)
              "%
              | optional,
            token | String | doc "Access Token for Usage Reporting" | optional,
            usage
              | refs."definitions.HiveUsageOptions"
              | { _ | Dyn }
              | doc "Collects schema usage based on operations"
              | optional,
          },
      "definitions.HiveReportingOptions" =
        {
            author | String | doc "Author of current version of the schema",
            commit
              | String
              | doc "Commit SHA hash (or any identifier) related to the schema version",
            serviceName | String | optional,
            serviceUrl | String | optional,
          },
      "definitions.HiveSelfHostingOptions" =
        {
            applicationUrl
              | String
              | doc m%"
                Address of your own GraphQL Hive application
                
                Used by token info to generate a link to the organization, project and target.
              "%,
            graphqlEndpoint
              | String
              | doc m%"
                Point to your own instance of GraphQL Hive API
                
                Used by schema reporting and token info.
              "%,
            usageEndpoint
              | String
              | doc m%"
                Point to your own instance of GraphQL Hive Usage API
                
                Used by usage reporting.
              "%
              | optional,
          },
      "definitions.HiveUsageOptions" =
        {
            clientInfo
              | refs."definitions.HiveClientInfo"
              | { _ | Dyn }
              | doc "Extract client info from GraphQL Context"
              | optional,
            exclude
              | Array String
              | doc "A list of operations (by name) to be ignored by Hive."
              | optional,
            max
              | std.number.Integer
              | doc m%"
                Hive uses LRU cache to store info about operations.
                This option represents the maximum size of the cache.
                Default: 1000
              "%
              | optional,
            processVariables
              | Bool
              | doc m%"
                (Experimental) Enables collecting Input fields usage based on the variables passed to the operation.
                Default: false
              "%
              | optional,
            sampleRate
              | Number
              | doc m%"
                Sample rate to determine sampling.
                0.0 = 0% chance of being sent
                1.0 = 100% chance of being sent
                Default: 1.0
              "%
              | optional,
            sampler
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | optional,
            ttl
              | std.number.Integer
              | doc m%"
                Hive uses LRU cache to store info about operations.
                This option represents the maximum age of an unused operation in the cache.
                Default: no ttl
              "%
              | optional,
          },
      "definitions.HoistFieldTransformConfig" =
        {
            alias | String | optional,
            filterArgsInPath
              | Bool
              | doc "Defines if args in path are filtered (default = false)"
              | optional,
            newFieldName
              | String
              | doc "Name the hoisted field should have when hoisted to the type specified in typeName",
            pathConfig
              | Array (
                std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [
                        refs."definitions.HoistFieldTransformFieldPathConfigObject",
                        { _ | Dyn }
                      ]
                  ]
              )
              | doc "Array of fieldsNames to reach the field to be hoisted (Any of: String, HoistFieldTransformFieldPathConfigObject)",
            typeName
              | String
              | doc "Type name that defines where field should be hoisted to",
          },
      "definitions.HoistFieldTransformFieldPathConfigObject" =
        {
            fieldName | String | doc "Field name",
            filterArgs
              | Array String
              | doc "Match fields based on argument, needs to implement `(arg: GraphQLArgument) => boolean`;",
          },
      "definitions.JsonSchemaHTTPOperation" =
        {
            argTypeMap
              | { _ | Dyn }
              | doc m%"
                Mapping the JSON Schema and define the arguments of the operation.
                
                # Example:
                argTypeMap:
                  user_id:
                    type: string
              "%
              | optional,
            binary
              | Bool
              | doc m%"
                If true, this operation cannot have requestSchema or requestSample
                And the request body will be passed as binary with its mime type
                unless you define an explicit Content-Type header
              "%
              | optional,
            deprecated
              | Bool
              | doc "If true, `@deprecated` will be added to the field definition"
              | optional,
            description
              | String
              | doc m%"
                Your chance to describe the operation!
                Make sure the description is clear and concise.
              "%
              | optional,
            exposeResponseMetadata
              | Bool
              | doc m%"
                Expose response details done to the upstream API
                When you enable this, you will see a new field in the response type;
                ```graphql
                type MyResponseType {
                  myFooField: String
                  _response: ResponseMetadata
                }
                
                # And a new type for the response metadata object
                type ResponseMetadata {
                  url: URL
                  status: Int
                  method: String
                  headers: JSON
                  body: String
                }
                ```
              "%
              | optional,
            field
              | String
              | doc m%"
                This Field based on the field name of the URL path.
                Example: "https://MyAPIURL.com/FieldNameHere/",
                so we will set the "field: FieldNameHere".
              "%,
            headers | { _ | Dyn } | optional,
            method
              | std.enum.TagOrString
              | [|
                'PATCH,
                'TRACE,
                'OPTIONS,
                'CONNECT,
                'DELETE,
                'PUT,
                'POST,
                'HEAD,
                'GET
              |]
              | doc "Allowed values: GET, HEAD, POST, PUT, DELETE, CONNECT, OPTIONS, TRACE, PATCH"
              | optional,
            path | String,
            queryParamArgMap
              | { _ | Dyn }
              | doc m%"
                JSON object representing the mapping of query search parameters (added to the route path) and the matching argument.
                
                # Example:
                queryParamArgMap:
                  id: user_id
              "%
              | optional,
            requestBaseBody
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | doc m%"
                This body will be merged with the request body sent with
                the underlying HTTP request
              "%
              | optional,
            requestSample
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | doc m%"
                The path definition of the JSON Schema sample.
                Example: "./jsons/questions.response.json".
              "%
              | optional,
            requestSchema
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | doc "Your chance to provide request schema name."
              | optional,
            requestTypeName
              | String
              | doc "Inset any name for the type of the request body."
              | optional,
            responseByStatusCode
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | doc m%"
                You can define your response schemas by status codes;
                ```yaml filename=".meshrc.yaml"
                responseByStatusCode:
                  200:
                    responseSchema: ./someschema.json#/somepath
                  404:
                    responseSample: ./error-sample.json
                    responseTypeName: MyError
                ```
              "%
              | optional,
            responseSample
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | doc "Did you use Sample? Provide the response sample path."
              | optional,
            responseSchema
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | doc "Yay! Now you can provide the response schema name."
              | optional,
            responseTypeName
              | String
              | doc "Inset any name for the type of the response body."
              | optional,
            type
              | std.enum.TagOrString
              | [| 'Subscription, 'Mutation, 'Query |]
              | doc "Type field is set the opertion type: Query, Mutation or Subscription. (Allowed values: Query, Mutation, Subscription)",
          },
      "definitions.JsonSchemaHandler" =
        {
            endpoint | String | optional,
            ignoreErrorResponses | Bool | optional,
            operationHeaders | { _ | Dyn } | optional,
            operations
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        refs."definitions.JsonSchemaHTTPOperation",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.JsonSchemaPubSubOperation",
                        { _ | Dyn }
                      ]
                  ]
              )
              | doc "Any of: JsonSchemaHTTPOperation, JsonSchemaPubSubOperation"
              | optional,
            queryParams
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | optional,
            queryStringOptions
              | refs."definitions.QueryStringOptions"
              | { _ | Dyn }
              | optional,
            schemaHeaders | { _ | Dyn } | optional,
            source | String | optional,
            timeout
              | std.number.Integer
              | doc "Timeout for the HTTP request in milliseconds"
              | optional,
          },
      "definitions.JsonSchemaPubSubOperation" =
        {
            argTypeMap | { _ | Dyn } | optional,
            deprecated
              | Bool
              | doc "If true, `@deprecated` will be added to the field definition"
              | optional,
            description | String | optional,
            field | String,
            pubsubTopic | String,
            requestBaseBody
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | doc m%"
                This body will be merged with the request body sent with
                the underlying HTTP request
              "%
              | optional,
            requestSample
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | optional,
            requestSchema
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | optional,
            requestTypeName | String | optional,
            responseSample
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | optional,
            responseSchema
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | optional,
            responseTypeName | String | optional,
            type
              | std.enum.TagOrString
              | [| 'Subscription, 'Mutation, 'Query |]
              | doc "Allowed values: Query, Mutation, Subscription",
          },
      "definitions.KeyAnnotation" = { selectionSet | String, },
      "definitions.LimitHelperArgsOpts" =
        { defaultValue | std.number.Integer | optional, },
      "definitions.LiveQueryConfig" =
        {
            idFieldName
              | String
              | doc m%"
                Identifier unique field
                
                Default: "id"
              "%
              | optional,
            includeIdentifierExtension
              | Bool
              | doc m%"
                Whether the extensions should include a list of all resource identifiers for the latest operation result.
                Any of those can be used for invalidating and re-scheduling the operation execution.
                
                This is mainly useful for discovering and learning what kind of topics a given query will subscribe to.
                The default value is `true` if `DEBUG` environment variable is set
              "%
              | optional,
            indexBy
              | Array (
                std.contract.Sequence
                  [ refs."definitions.LiveQueryIndexBy", { _ | Dyn } ]
              )
              | doc "Specify which fields should be indexed for specific invalidations."
              | optional,
            invalidations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.LiveQueryInvalidation", { _ | Dyn } ]
              )
              | doc "Invalidate a query or queries when a specific operation is done without an error"
              | optional,
            resourceIdentifier
              | String
              | doc m%"
                Custom strategy for building resources identifiers
                By default resource identifiers are built by concatenating the Typename with the id separated by a color (`User:1`).
                
                This may be useful if you are using a relay compliant schema and the Typename information is not required for building a unique topic.
                
                Default: "{typename}:{id}"
              "%
              | optional,
          },
      "definitions.LiveQueryIndexBy" = { args | Array String, field | String, },
      "definitions.LiveQueryInvalidation" =
        {
            field
              | String
              | doc "Path to the operation that could effect it. In a form: Mutation.something. Note that wildcard is not supported in this field.",
            invalidate | Array String,
          },
      "definitions.LoadOptions" =
        { defaults | Bool | optional, includeDirs | Array String | optional, },
      "definitions.LocalforageConfig" =
        {
            description | String | optional,
            driver
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'LOCALSTORAGE, 'INDEXEDDB, 'WEBSQL |]
                  ]
              )
              | doc "Allowed values: WEBSQL, INDEXEDDB, LOCALSTORAGE"
              | optional,
            name | String | optional,
            size | std.number.Integer | optional,
            storeName | String | optional,
            version | Number | optional,
          },
      "definitions.MaskedErrorsPluginConfig" =
        { errorMessage | String | optional, },
      "definitions.MergedRootFieldConfig" =
        {
            additionalArgs
              | String
              | doc m%"
                Specifies a string of additional keys and values to apply to other arguments,
                formatted as `\"\"\" arg1: "value", arg2: "value" \"\"\"`.
              "%
              | optional,
            argsExpr
              | String
              | doc m%"
                Advanced use only; This argument specifies a string expression that allows more customization of the input arguments. Rules for evaluation of this argument are as follows:
                  - basic object parsing of the input key: `"arg1: $key.arg1, arg2: $key.arg2"`
                  - any expression enclosed by double brackets will be evaluated once for each of the requested keys, and then sent as a list: `"input: { keys: [[$key]] }"`
                  - selections from the key can be referenced by using the $ sign and dot notation: `"upcs: [[$key.upc]]"`, so that `$key.upc` refers to the `upc` field of the key.
              "%
              | optional,
            key
              | Array String
              | doc "Advanced use only; Allows building a custom key just for the argument from the selectionSet included by the `@key` directive."
              | optional,
            keyArg
              | String
              | doc "Specifies which field argument receives the merge key. This may be omitted for fields with only one argument where the recipient can be inferred."
              | optional,
            keyField
              | String
              | doc m%"
                Specifies the name of a field to pick off origin objects as the key value. When omitted, a `@key` directive must be included on the return type's definition to be built into an object key.
                https://www.graphql-tools.com/docs/stitch-directives-sdl#object-keys
              "%
              | optional,
            queryFieldName | String,
          },
      "definitions.MergedTypeConfig" =
        {
            canonical
              | Bool
              | doc m%"
                Specifies types and fields
                that provide a [canonical definition](https://www.graphql-tools.com/docs/stitch-type-merging#canonical-definitions) to be built into the gateway schema. Useful for selecting preferred characteristics among types and fields that overlap across subschemas. Root fields marked as canonical specify which subschema the field proxies for new queries entering the graph.
              "%
              | optional,
            fields
              | Array (
                std.contract.Sequence
                  [ refs."definitions.MergedTypeField", { _ | Dyn } ]
              )
              | optional,
            key
              | refs."definitions.KeyAnnotation"
              | { _ | Dyn }
              | doc m%"
                Specifies a base selection set needed to merge the annotated type across subschemas.
                Analogous to the `selectionSet` setting specified in [merged type configuration](https://www.graphql-tools.com/docs/stitch-type-merging#basic-example).
              "%
              | optional,
            typeName
              | String
              | doc "Name of the type (Query by default)"
              | optional,
          },
      "definitions.MergedTypeField" =
        {
            computed
              | refs."definitions.ComputedAnnotation"
              | { _ | Dyn }
              | doc m%"
                specifies a selection of fields required from other services to compute the value of this field.
                These additional fields are only selected when the computed field is requested.
                Analogous to [computed field](https://www.graphql-tools.com/docs/stitch-type-merging#computed-fields) in merged type configuration.
                Computed field dependencies must be sent into the subservice using an [object key](https://www.graphql-tools.com/docs/stitch-directives-sdl#object-keys).
              "%
              | optional,
            fieldName | String,
          },
      "definitions.MockingConfig" =
        {
            "if"
              | Bool
              | doc m%"
                If this expression is truthy, mocking would be enabled
                You can use environment variables expression, for example: `process.env.MOCKING_ENABLED != null`
              "%
              | optional,
            initializeStore
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | doc "The path to the code runs before the store is attached to the schema"
              | optional,
            mocks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.MockingFieldConfig", { _ | Dyn } ]
              )
              | doc "Mock configurations"
              | optional,
            preserveResolvers
              | Bool
              | doc m%"
                Do not mock any other resolvers other than defined in `mocks`.
                For example, you can enable this if you don't want to mock entire schema but partially.
              "%
              | optional,
          },
      "definitions.MockingFieldConfig" =
        {
            apply
              | String
              | doc m%"
                Resolver path
                Example: User.firstName
              "%,
            custom
              | String
              | doc m%"
                Custom mocking
                It can be a module or json file.
                Both "moduleName#exportName" or only "moduleName" would work
              "%
              | optional,
            faker
              | String
              | doc m%"
                Faker.js expression or function
                Read more (https://github.com/marak/Faker.js/#fakerfake)
                Example:
                faker: `name.firstName`
                faker: `{{ name.firstName }} {{ name.lastName }}`
              "%
              | optional,
            "if"
              | Bool
              | doc m%"
                If this expression is truthy, mocking would be enabled
                You can use environment variables expression, for example: `${MOCKING_ENABLED}`
              "%
              | optional,
            length
              | std.number.Integer
              | doc m%"
                Length of the mock list
                For the list types `[ObjectType]`, how many `ObjectType` you want to return?
                default: 2
              "%
              | optional,
            store
              | refs."definitions.GetFromMockStoreConfig"
              | { _ | Dyn }
              | doc "Get the data from the mock store"
              | optional,
            updateStore
              | Array (
                std.contract.Sequence
                  [ refs."definitions.UpdateMockStoreConfig", { _ | Dyn } ]
              )
              | doc "Update the data on the mock store"
              | optional,
          },
      "definitions.MongooseHandler" =
        {
            connectionString | String | optional,
            discriminators
              | Array (
                std.contract.Sequence
                  [ refs."definitions.MongooseModel", { _ | Dyn } ]
              )
              | optional,
            models
              | Array (
                std.contract.Sequence
                  [ refs."definitions.MongooseModel", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.MongooseModel" =
        {
            name | String,
            options
              | refs."definitions.ComposeWithMongooseOpts"
              | { _ | Dyn }
              | optional,
            path | String,
          },
      "definitions.MySQLHandler" =
        {
            database
              | String
              | doc "Name of the database to use for this connection"
              | optional,
            host
              | String
              | doc "The hostname of the database you are connecting to. (Default: localhost)"
              | optional,
            localAddress
              | String
              | doc "The source IP address to use for TCP connection"
              | optional,
            password
              | String
              | doc "The password of that MySQL user"
              | optional,
            pool
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | doc m%"
                Use existing `Pool` instance
                Format: modulePath#exportName
              "%
              | optional,
            port
              | std.number.Integer
              | doc "The port number to connect to. (Default: 3306)"
              | optional,
            ssl
              | refs."definitions.MySQLSSLOptions"
              | { _ | Dyn }
              | doc "SSL Options for your MySQL connection"
              | optional,
            tableFields
              | Array (
                std.contract.Sequence
                  [ refs."definitions.TableField", { _ | Dyn } ]
              )
              | doc "Use specific fields of specific tables"
              | optional,
            tables
              | Array String
              | doc "Use specific tables for your schema"
              | optional,
            user | String | doc "The MySQL user to authenticate as" | optional,
          },
      "definitions.MySQLSSLOptions" =
        {
            ca | String | doc "Path to your CA" | optional,
            rejectUnauthorized | Bool | doc "Default: true" | optional,
          },
      "definitions.NamingConventionTransformConfig" =
        {
            enumValues
              | std.enum.TagOrString
              | [|
                'lowerCase,
                'upperCase,
                'snakeCase,
                'sentenceCase,
                'pathCase,
                'pascalCase,
                'paramCase,
                'noCase,
                'headerCase,
                'dotCase,
                'constantCase,
                'capitalCase,
                'camelCase
              |]
              | doc "Allowed values: camelCase, capitalCase, constantCase, dotCase, headerCase, noCase, paramCase, pascalCase, pathCase, sentenceCase, snakeCase, upperCase, lowerCase"
              | optional,
            fieldArgumentNames
              | std.enum.TagOrString
              | [|
                'lowerCase,
                'upperCase,
                'snakeCase,
                'sentenceCase,
                'pathCase,
                'pascalCase,
                'paramCase,
                'noCase,
                'headerCase,
                'dotCase,
                'constantCase,
                'capitalCase,
                'camelCase
              |]
              | doc "Allowed values: camelCase, capitalCase, constantCase, dotCase, headerCase, noCase, paramCase, pascalCase, pathCase, sentenceCase, snakeCase, upperCase, lowerCase"
              | optional,
            fieldNames
              | std.enum.TagOrString
              | [|
                'lowerCase,
                'upperCase,
                'snakeCase,
                'sentenceCase,
                'pathCase,
                'pascalCase,
                'paramCase,
                'noCase,
                'headerCase,
                'dotCase,
                'constantCase,
                'capitalCase,
                'camelCase
              |]
              | doc "Allowed values: camelCase, capitalCase, constantCase, dotCase, headerCase, noCase, paramCase, pascalCase, pathCase, sentenceCase, snakeCase, upperCase, lowerCase"
              | optional,
            mode
              | std.enum.TagOrString
              | [| 'wrap, 'bare |]
              | doc "Specify to apply naming-convention transforms to bare schema or by wrapping original schema (Allowed values: bare, wrap)"
              | optional,
            typeNames
              | std.enum.TagOrString
              | [|
                'lowerCase,
                'upperCase,
                'snakeCase,
                'sentenceCase,
                'pathCase,
                'pascalCase,
                'paramCase,
                'noCase,
                'headerCase,
                'dotCase,
                'constantCase,
                'capitalCase,
                'camelCase
              |]
              | doc "Allowed values: camelCase, capitalCase, constantCase, dotCase, headerCase, noCase, paramCase, pascalCase, pathCase, sentenceCase, snakeCase, upperCase, lowerCase"
              | optional,
          },
      "definitions.Neo4jHandler" =
        {
            alwaysIncludeRelationships
              | Bool
              | doc "Specifies whether relationships should always be included in the type definitions as [relationship](https://grandstack.io/docs/neo4j-graphql-js.html#relationship-types) types, even if the relationships do not have properties."
              | optional,
            database | String | doc "Specifies database name" | optional,
            endpoint
              | String
              | doc "URL for the Neo4j Instance e.g. neo4j://localhost",
            password | String | doc "Password for basic authentication",
            source
              | String
              | doc "Provide GraphQL Type Definitions instead of inferring"
              | optional,
            username | String | doc "Username for basic authentication",
          },
      "definitions.NewrelicConfig" =
        {
            extractOperationName
              | String
              | doc m%"
                Allows to set a custom operation name to be used as transaction name and attribute
                `extractOperationName: {context.headers['x-operation-name']}`
              "%
              | optional,
            includeExecuteVariables
              | Bool
              | doc "default `false`. When set to `true`, includes all the operation variables with their values"
              | optional,
            includeOperationDocument
              | Bool
              | doc "default `false`. When set to `true`, includes the GraphQL document defining the operations and fragments"
              | optional,
            includeRawResult
              | Bool
              | doc "default: `false`. When set to `true`, includes the execution result of both delegation and execution"
              | optional,
            includeResolverArgs
              | Bool
              | doc "default `false`. When set to `true`, includes all the arguments passed to resolvers and delegation with their values"
              | optional,
            rootFieldsNaming
              | Bool
              | doc "default `false`. When set to `true` append the names of operation root fields to the transaction name"
              | optional,
            trackResolvers
              | Bool
              | doc "default `false`. When set to `true`, track resolvers as segments to monitor their performance"
              | optional,
          },
      "definitions.ODataHandler" =
        {
            batch
              | std.enum.TagOrString
              | [| 'json, 'multipart |]
              | doc "Enable batching (Allowed values: multipart, json)"
              | optional,
            endpoint | String | doc "Base URL for OData API",
            expandNavProps
              | Bool
              | doc "Use $expand for navigation props instead of seperate HTTP requests (Default: false)"
              | optional,
            operationHeaders
              | { _ | Dyn }
              | doc "Headers to be used with the operation requests"
              | optional,
            schemaHeaders
              | { _ | Dyn }
              | doc "Headers to be used with the $metadata requests"
              | optional,
            source | String | doc "Custom $metadata File or URL" | optional,
          },
      "definitions.OpenapiHandler" =
        {
            endpoint
              | String
              | doc m%"
                Specifies the URL on which all paths will be based on.
                Overrides the server object in the OAS.
              "%
              | optional,
            fallbackFormat
              | std.enum.TagOrString
              | [| 'ts, 'js, 'yaml, 'json |]
              | doc "Format of the files referenced from the source file, for cases content type isn't detected automatically (Allowed values: json, yaml, js, ts)"
              | optional,
            ignoreErrorResponses
              | Bool
              | doc m%"
                Responses are converted to a Union type grouping all possible responses.
                Applying this will ignore all responses with status code other than 2xx, resulting in simpler response types, usualy regular object type instead of union.
                Default: false
              "%
              | optional,
            operationHeaders
              | { _ | Dyn }
              | doc "JSON object representing the Headers to add to the runtime of the API calls"
              | optional,
            queryParams
              | { _ | Dyn }
              | doc "JSON object representing the query search parameters to add to the API calls"
              | optional,
            schemaHeaders
              | { _ | Dyn }
              | doc "If you are using a remote URL endpoint to fetch your schema, you can set headers for the HTTP request to fetch your schema."
              | optional,
            selectQueryOrMutationField
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.SelectQueryOrMutationFieldConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "Allows to explicitly override the default operation (Query or Mutation) for any OAS operation"
              | optional,
            source
              | String
              | doc "A pointer to your API source (Support both JSON and YAML) - could be a local file, remote file or url endpoint",
            timeout
              | std.number.Integer
              | doc "Timeout for the HTTP request in milliseconds"
              | optional,
          },
      "definitions.OperationFieldPermission" =
        { allow | Array String | optional, "if" | String | optional, },
      "definitions.OperationFieldPermissionsConfig" =
        {
            permissions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.OperationFieldPermission", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.PaginationResolverOpts" =
        { perPage | std.number.Integer | optional, },
      "definitions.PersistedOperationsConfig" =
        {
            allowArbitraryOperations
              | Bool
              | doc "Whether to allow execution of arbitrary GraphQL operations aside from persisted operations."
              | optional,
            customErrors
              | refs."definitions.CustomPersistedQueryErrors"
              | { _ | Dyn }
              | doc "Custom errors to be thrown"
              | optional,
            skipDocumentValidation
              | Bool
              | doc "Whether to skip validation of the persisted operation"
              | optional,
          },
      "definitions.Plugin" =
        {
            deduplicateRequest
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | optional,
            hive | refs."definitions.HivePlugin" | { _ | Dyn } | optional,
            httpCache
              | refs."definitions.HTTPCachePlugin"
              | { _ | Dyn }
              | optional,
            httpDetailsExtensions
              | refs."definitions.HTTPDetailsExtensionsConfig"
              | { _ | Dyn }
              | optional,
            immediateIntrospection
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | optional,
            liveQuery
              | refs."definitions.LiveQueryConfig"
              | { _ | Dyn }
              | optional,
            maskedErrors
              | refs."definitions.MaskedErrorsPluginConfig"
              | { _ | Dyn }
              | optional,
            mock
              | refs."definitions.MockingConfig"
              | { _ | Dyn }
              | doc "Mock configuration for your source"
              | optional,
            newrelic
              | refs."definitions.NewrelicConfig"
              | { _ | Dyn }
              | optional,
            operationFieldPermissions
              | refs."definitions.OperationFieldPermissionsConfig"
              | { _ | Dyn }
              | optional,
            prometheus
              | refs."definitions.PrometheusConfig"
              | { _ | Dyn }
              | optional,
            rateLimit
              | refs."definitions.RateLimitPluginConfig"
              | { _ | Dyn }
              | doc "RateLimit plugin"
              | optional,
            responseCache
              | refs."definitions.ResponseCacheConfig"
              | { _ | Dyn }
              | optional,
            snapshot
              | refs."definitions.SnapshotPluginConfig"
              | { _ | Dyn }
              | doc "Configuration for Snapshot extension"
              | optional,
            statsd | refs."definitions.StatsdPlugin" | { _ | Dyn } | optional,
            ..
          },
      "definitions.PostGraphileHandler" =
        {
            appendPlugins
              | Array String
              | doc "Extra Postgraphile Plugins to append"
              | optional,
            connectionString
              | String
              | doc "A connection string to your Postgres database"
              | optional,
            contextOptions
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | doc "A file that exports a function which takes context as a paramter and returns postgraphile context options (e.g. \"./my-function#pgSettings\"). See the [postgraphile docs](https://www.graphile.org/postgraphile/usage-schema/) for more information."
              | optional,
            live
              | Bool
              | doc "Enables live-query support via GraphQL subscriptions (sends updated payload any time nested collections/records change) (default: true)"
              | optional,
            options
              | std.contract.any_of [ { _ | Dyn }, String ]
              | doc "Extra Postgraphile options that will be added to the postgraphile constructor. It can either be an object or a string pointing to the object's path (e.g. \"./my-config#options\"). See the [postgraphile docs](https://www.graphile.org/postgraphile/usage-library/) for more information. (Any of: JSON, String)"
              | optional,
            pool
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | doc "Connection Pool instance or settings or you can provide the path of a code file that exports any of those"
              | optional,
            schemaName
              | Array String
              | doc "An array of strings which specifies the PostgreSQL schemas that PostGraphile will use to create a GraphQL schema. The default schema is the public schema."
              | optional,
            skipPlugins
              | Array String
              | doc "Postgraphile Plugins to skip (e.g. \"graphile-build#NodePlugin\")"
              | optional,
            subscriptions
              | Bool
              | doc "Enable GraphQL websocket transport support for subscriptions (default: true)"
              | optional,
          },
      "definitions.PrefixTransformConfig" =
        {
            ignore | Array String | doc "List of ignored types" | optional,
            includeRootOperations
              | Bool
              | doc "Changes root types and changes the field names (default: false)"
              | optional,
            includeTypes
              | Bool
              | doc "Changes types (default: true)"
              | optional,
            mode
              | std.enum.TagOrString
              | [| 'wrap, 'bare |]
              | doc "Specify to apply prefix transform to bare schema or by wrapping original schema (Allowed values: bare, wrap)"
              | optional,
            value
              | String
              | doc "The prefix to apply to the schema types. By default it's the API name."
              | optional,
          },
      "definitions.PrometheusConfig" =
        {
            contextBuilding
              | std.contract.any_of [ Bool, String ]
              | doc "Any of: Boolean, String"
              | optional,
            delegation
              | std.contract.any_of [ Bool, String ]
              | doc "Any of: Boolean, String"
              | optional,
            delegationArgs | Bool | optional,
            delegationKey | Bool | optional,
            deprecatedFields
              | std.contract.any_of [ Bool, String ]
              | doc "Any of: Boolean, String"
              | optional,
            endpoint
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                The path to the metrics endpoint
                default: `/metrics` (Any of: Boolean, String)
              "%
              | optional,
            errors
              | std.contract.any_of [ Bool, String ]
              | doc "Any of: Boolean, String"
              | optional,
            execute
              | std.contract.any_of [ Bool, String ]
              | doc "Any of: Boolean, String"
              | optional,
            fetchMetrics
              | std.contract.any_of [ Bool, String ]
              | doc "Any of: Boolean, String"
              | optional,
            fetchRequestHeaders | Bool | optional,
            fetchResponseHeaders | Bool | optional,
            http
              | std.contract.any_of [ Bool, String ]
              | doc "Any of: Boolean, String"
              | optional,
            httpRequestHeaders | Bool | optional,
            httpResponseHeaders | Bool | optional,
            parse
              | std.contract.any_of [ Bool, String ]
              | doc "Any of: Boolean, String"
              | optional,
            registry | String | optional,
            requestCount
              | std.contract.any_of [ Bool, String ]
              | doc "Any of: Boolean, String"
              | optional,
            requestSummary
              | std.contract.any_of [ Bool, String ]
              | doc "Any of: Boolean, String"
              | optional,
            requestTotalDuration
              | std.contract.any_of [ Bool, String ]
              | doc "Any of: Boolean, String"
              | optional,
            skipIntrospection | Bool | optional,
            subgraphExecute
              | std.contract.any_of [ Bool, String ]
              | doc "Any of: Boolean, String"
              | optional,
            validate
              | std.contract.any_of [ Bool, String ]
              | doc "Any of: Boolean, String"
              | optional,
          },
      "definitions.ProtoFilePath" =
        {
            file | String,
            load | refs."definitions.LoadOptions" | { _ | Dyn } | optional,
          },
      "definitions.PruneTransformConfig" =
        {
            skipEmptyCompositeTypePruning
              | Bool
              | doc "Set to `true` to skip pruning object types or interfaces with no fields"
              | optional,
            skipEmptyUnionPruning
              | Bool
              | doc "Set to `true` to skip pruning empty unions"
              | optional,
            skipPruning | Array String | doc "Types to skip pruning" | optional,
            skipUnimplementedInterfacesPruning
              | Bool
              | doc "Set to `true` to skip pruning interfaces that are not implemented by any other types"
              | optional,
            skipUnusedTypesPruning
              | Bool
              | doc "Set to `true` to skip pruning unused types"
              | optional,
          },
      "definitions.PubSubConfig" =
        {
            config
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | optional,
            name | String,
          },
      "definitions.QueryStringOptions" =
        {
            arrayFormat
              | std.enum.TagOrString
              | [| 'comma, 'repeat, 'brackets, 'indices |]
              | doc m%"
                You can configure how to format arrays in the query strings.
                
                Note: when using arrayFormat set to 'comma', you can also pass the commaRoundTrip option set to true or false, to append [] on single-item arrays, so that they can round trip through a parse. (Allowed values: indices, brackets, repeat, comma)
              "%
              | optional,
            commaRoundTrip
              | Bool
              | doc m%"
                Even if there is a single item in an array, this option treats them as arrays
                (default: false)
              "%
              | optional,
            indices
              | Bool
              | doc m%"
                When arrays are stringified, by default they are not given explicit indices:
                `a=b&a=c&a=d`
                You may override this by setting the indices option to true:
                `a[0]=b&a[1]=c&a[2]=d`
              "%
              | optional,
            jsonStringify
              | Bool
              | doc m%"
                Stringify the nested objects as JSON
                (default: false)
              "%
              | optional,
          },
      "definitions.RAMLHandler" =
        {
            endpoint | String | optional,
            ignoreErrorResponses | Bool | optional,
            operationHeaders | { _ | Dyn } | optional,
            queryParams
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | optional,
            schemaHeaders | { _ | Dyn } | optional,
            selectQueryOrMutationField
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.SelectQueryOrMutationFieldConfig",
                    { _ | Dyn }
                  ]
              )
              | optional,
            source | String,
            timeout
              | std.number.Integer
              | doc "Timeout for the HTTP request in milliseconds"
              | optional,
          },
      "definitions.RateLimitPluginConfig" =
        {
            config
              | Array (
                std.contract.Sequence
                  [ refs."definitions.RateLimitTransformConfig", { _ | Dyn } ]
              ),
          },
      "definitions.RateLimitTransformConfig" =
        {
            field
              | String
              | doc "The field of the type that the rate limit is applied to",
            identifier
              | String
              | doc "The identifier expression that determines the identity of the request (e.g. `{context.req.socket.remoteAddress}`)",
            max
              | std.number.Integer
              | doc "The maximum number of requests that can be made in a given time period",
            ttl
              | std.number.Integer
              | doc "The time period in which the rate limit is applied",
            type
              | String
              | doc "The type name that the following field belongs to",
          },
      "definitions.RecordHelperArgsOpts" =
        {
            isRequired | Bool | optional,
            recordTypeName | String | optional,
            removeFields | Array String | optional,
            requiredFields | Array String | optional,
          },
      "definitions.RedisConfigCluster" =
        {
            db | std.number.Integer | optional,
            dnsLookupAsIs
              | Bool
              | doc m%"
                Needed for TLS connections to Redis Cluster (especially when using AWS Elasticache Clusters with TLS).
                
                @see https://github.com/redis/ioredis?tab=readme-ov-file#special-note-aws-elasticache-clusters-with-tls
              "%
              | optional,
            lazyConnect
              | Bool
              | doc m%"
                Flag to indicate lazyConnect value for Redis client.
                
                @default: true
              "%
              | optional,
            password | String | optional,
            startupNodes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.RedisSentinelConfig", { _ | Dyn } ]
              ),
            tls
              | Bool
              | doc m%"
                Enable TLS for Redis Cluster connections. Required for AWS Elasticache Clusters with TLS.
                
                @see https://github.com/redis/ioredis?tab=readme-ov-file#special-note-aws-elasticache-clusters-with-tls
              "%
              | optional,
            username | String | optional,
          },
      "definitions.RedisConfigSentinel" =
        {
            enableTLSForSentinelMode
              | Bool
              | doc "(optional) set to true if connecting to sentinel instances that are encrypted"
              | optional,
            lazyConnect
              | Bool
              | doc m%"
                Flag to indicate lazyConnect value for Redis client.
                
                @default: true
              "%
              | optional,
            name
              | String
              | doc "identifies a group of Redis instances composed of a master and one or more slaves",
            role
              | std.enum.TagOrString
              | [| 'slave, 'master |]
              | doc "(optional) with a value of slave will return a random slave from the Sentinel group. (Allowed values: master, slave)"
              | optional,
            sentinelPassword
              | String
              | doc "(optional) password for Sentinel instances."
              | optional,
            sentinels
              | Array (
                std.contract.Sequence
                  [ refs."definitions.RedisSentinelConfig", { _ | Dyn } ]
              )
              | doc "A list of sentinels to connect to. The list does not need to enumerate all your sentinel instances, but a few so that if one is down the client will try the next one.",
          },
      "definitions.RedisConfigSingle" =
        {
            db | std.number.Integer | optional,
            family | String | optional,
            host | String | optional,
            lazyConnect
              | Bool
              | doc m%"
                Flag to indicate lazyConnect value for Redis client.
                
                @default: true
              "%
              | optional,
            password | String | optional,
            port | String | optional,
            url | String | optional,
            username | String | optional,
          },
      "definitions.RedisSentinelConfig" =
        { family | String | optional, host | String, port | String, },
      "definitions.RenameConfig" =
        {
            argument | String | optional,
            field | String | optional,
            type | String | optional,
          },
      "definitions.RenameTransform" =
        {
            mode
              | std.enum.TagOrString
              | [| 'wrap, 'bare |]
              | doc "Specify to apply rename transforms to bare schema or by wrapping original schema (Allowed values: bare, wrap)"
              | optional,
            renames
              | Array (
                std.contract.Sequence
                  [ refs."definitions.RenameTransformObject", { _ | Dyn } ]
              )
              | doc "Array of rename rules",
          },
      "definitions.RenameTransformObject" =
        {
            from | refs."definitions.RenameConfig" | { _ | Dyn },
            includeDefaults
              | Bool
              | doc m%"
                Flag to indicate whether certain default types (built-ins, scalars and other types specified an exclusion list) should be renamed or not.
                
                @default: false
              "%
              | optional,
            regExpFlags
              | String
              | doc "Flags to use in the Regular Expression"
              | optional,
            to | refs."definitions.RenameConfig" | { _ | Dyn },
            useRegExpForArguments
              | Bool
              | doc "Use Regular Expression for field names"
              | optional,
            useRegExpForFields
              | Bool
              | doc "Use Regular Expression for field names"
              | optional,
            useRegExpForTypes
              | Bool
              | doc "Use Regular Expression for type names"
              | optional,
          },
      "definitions.ReplaceFieldConfig" = { field | String, type | String, },
      "definitions.ReplaceFieldTransformConfig" =
        {
            replacements
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.ReplaceFieldTransformObject",
                    { _ | Dyn }
                  ]
              )
              | doc "Array of rules to replace fields",
            typeDefs
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | doc "Additional type definition to used to replace field types"
              | optional,
          },
      "definitions.ReplaceFieldTransformObject" =
        {
            composer
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | optional,
            from | refs."definitions.ReplaceFieldConfig" | { _ | Dyn },
            name | String | optional,
            scope
              | std.enum.TagOrString
              | [| 'hoistValue, 'config |]
              | doc "Allowed values: config, hoistValue"
              | optional,
            to | refs."definitions.ReplaceFieldConfig" | { _ | Dyn },
          },
      "definitions.ResolveReferenceObject" =
        {
            args
              | { _ | Dyn }
              | doc m%"
                You need configure the arguments for that field;
                ```yaml
                args:
                  someArg: "{root.someKeyValue}"
                ```
              "%
              | optional,
            queryFieldName
              | String
              | doc "Name of root field name that resolves the reference",
          },
      "definitions.ResolversCompositionTransform" =
        {
            compositions
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.ResolversCompositionTransformObject",
                    { _ | Dyn }
                  ]
              )
              | doc "Array of resolver/composer to apply",
            mode
              | std.enum.TagOrString
              | [| 'wrap, 'bare |]
              | doc "Specify to apply resolvers-composition transforms to bare schema or by wrapping original schema (Allowed values: bare, wrap)"
              | optional,
          },
      "definitions.ResolversCompositionTransformObject" =
        {
            composer
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | doc m%"
                Path to the composer function
                Example: ./src/auth.js#authComposer
              "%,
            resolver
              | String
              | doc m%"
                The GraphQL Resolver path
                Example: Query.users
              "%,
          },
      "definitions.ResponseCacheConfig" =
        {
            cacheKey
              | String
              | doc m%"
                Customize the behavior how the response cache key is computed from the documentString, variableValues, contextValue and sessionId.
                If the given string is interpolated as empty, default behavior is used.
                Example;
                ```yaml
                # Cache by specific value
                cacheKey: "{variableValues.userId}"
                
                # Cache by documentString
                cacheKey: "{documentString}"
                
                # Cache by operationName
                cacheKey: "{operationName}"
                
                # Cache by some header value
                cacheKey: "{contextValue.headers.authorization}"
                
                # Or combine two of each
                cacheKey: "{contextValue.headers.authorization}-{operationName}"
                ```
              "%
              | optional,
            idFields
              | Array String
              | doc "List of fields that are used to identify the entity."
              | optional,
            "if"
              | String
              | doc m%"
                Specify whether the cache should be used based on the context.
                ```yaml
                if: "context.headers.userId != null"
                ```
              "%
              | optional,
            ignoredTypes
              | Array String
              | doc "Skip caching of following the types."
              | optional,
            includeExtensionMetadata
              | Bool
              | doc "Include extension values that provide useful information, such as whether the cache was hit or which resources a mutation invalidated."
              | optional,
            invalidateViaMutation
              | Bool
              | doc m%"
                Whether the mutation execution result should be used for invalidating resources.
                Defaults to `true`
              "%
              | optional,
            sessionId
              | String
              | doc m%"
                Allows to cache responses based on the resolved session id.
                Return a unique value for each session.
                Creates a global session by default.
                Example;
                ```yaml
                sessionId: "{context.headers.userId}"
                ```
              "%
              | optional,
            shouldCacheResult
              | String
              | doc m%"
                Checks if the result should be cached.
                ```yaml
                shouldCacheResult: "result.errors.length > 0"
                ```
              "%
              | optional,
            ttl
              | Number
              | doc "Maximum age in ms. Defaults to `Infinity`. Set it to 0 for disabling the global TTL."
              | optional,
            ttlPerCoordinate
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ResponseCacheTTLConfig", { _ | Dyn } ]
              )
              | doc m%"
                Overwrite the ttl for query operations whose selection contains a specific schema coordinate (e.g. Query.users).
                Useful if the selection of a specific field should reduce the TTL of the query operation.
              "%
              | optional,
          },
      "definitions.ResponseCacheTTLConfig" =
        { coordinate | String, ttl | Number, },
      "definitions.SDKConfig" =
        {
            generateOperations
              | refs."definitions.GenerateOperationsConfig"
              | { _ | Dyn }
              | doc m%"
                Use this only if you don't want to use `documents` for SDK,
                and let Mesh generate them for you
              "%
              | optional,
          },
      "definitions.SOAPHeaders" =
        {
            alias
              | String
              | doc m%"
                The name of the alias to be used in the envelope
                
                default: `header`
              "%
              | optional,
            headers
              | { _ | Dyn }
              | doc m%"
                The content of the SOAP Header
                For example: { "key": "value" } then the content will be `<key>value</key>`
              "%,
            namespace
              | String
              | doc m%"
                The namespace of the SOAP Header
                For example: `http://www.example.com/namespace`
              "%,
          },
      "definitions.SelectQueryOrMutationFieldConfig" =
        {
            fieldName | String,
            type
              | std.enum.TagOrString
              | [| 'Mutation, 'Query, 'mutation, 'query |]
              | doc "Allowed values: query, mutation, Query, Mutation",
          },
      "definitions.ServeConfig" =
        {
            batchingLimit
              | std.number.Integer
              | doc "Enable and define a limit for [Request Batching](https://github.com/graphql/graphql-over-http/blob/main/rfcs/Batching.md)"
              | optional,
            browser
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Path to the browser that will be used by `mesh serve` to open a playground window in development mode
                This feature can be disabled by passing `false` (Any of: String, Boolean)
              "%
              | optional,
            cors
              | refs."definitions.CorsConfig"
              | { _ | Dyn }
              | doc "Configuration for CORS"
              | optional,
            endpoint
              | String
              | doc "Path to GraphQL Endpoint (default: /graphql)"
              | optional,
            extraParamNames
              | Array String
              | doc m%"
                By default, GraphQL Mesh does not allow parameters in the request body except `query`, `variables`, `extensions`, and `operationName`.
                
                This option allows you to specify additional parameters that are allowed in the request body.
                
                @default []
                
                @example ['doc_id', 'id']
              "%
              | optional,
            fork
              | std.contract.any_of [ std.number.Integer, Bool ]
              | doc "Spawn multiple server instances as node clusters (default: `1`) (Any of: Int, Boolean)"
              | optional,
            healthCheckEndpoint
              | String
              | doc "Endpoint for [Health Check](https://the-guild.dev/graphql/yoga-server/docs/features/health-check)"
              | optional,
            hostname
              | String
              | doc "The binding hostname (default: `localhost`)"
              | optional,
            playground | Bool | doc "Show GraphiQL Playground" | optional,
            playgroundTitle
              | String
              | doc "Title of GraphiQL Playground"
              | optional,
            port
              | std.contract.any_of [ std.number.Integer, String ]
              | doc "TCP Port to listen (default: `4000`) (Any of: Int, String)"
              | optional,
            sslCredentials
              | refs."definitions.HTTPSConfig"
              | { _ | Dyn }
              | doc m%"
                SSL Credentials for HTTPS Server
                If this is provided, Mesh will be served via HTTPS
              "%
              | optional,
            staticFiles
              | String
              | doc "Path to your static files you want to be served with GraphQL Mesh HTTP Server"
              | optional,
          },
      "definitions.SnapshotPluginConfig" =
        {
            apply
              | Array String
              | doc m%"
                HTTP URL pattern to be applied
                For example;
                  apply:
                      - http://my-remote-api.com/* \<- * will apply this extension to all paths of remote API
              "%,
            "if"
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Expression for when to activate this extension.
                Value can be a valid JS expression string or a boolean (Any of: String, Boolean)
              "%
              | optional,
            outputDir
              | String
              | doc "Path to the directory of the generated snapshot files",
          },
      "definitions.SoapHandler" =
        {
            bodyAlias
              | String
              | doc m%"
                The name of the alias to be used in the envelope for body components
                
                default: `body`
              "%
              | optional,
            operationHeaders
              | { _ | Dyn }
              | doc "JSON object representing the Headers to add to the runtime of the API calls only for operation during runtime"
              | optional,
            schemaHeaders
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | doc m%"
                JSON object representing the Headers to add to the runtime of the API calls only for schema introspection
                You can also provide `.js` or `.ts` file path that exports schemaHeaders as an object
              "%
              | optional,
            soapHeaders
              | refs."definitions.SOAPHeaders"
              | { _ | Dyn }
              | doc "SOAP Headers to be added to the request"
              | optional,
            soapNamespace
              | String
              | doc m%"
                The namespace of the SOAP envelope
                By default, SOAP handler detects the SOAP version and if SOAP version is 1.1,
                it uses `http://schemas.xmlsoap.org/soap/envelope/` namespace
                If SOAP version is 1.2, it uses `http://www.w3.org/2003/05/soap-envelope` namespace
              "%
              | optional,
            source
              | String
              | doc "A url to your WSDL or generated SDL with annotations",
          },
      "definitions.SortHelperArgsOpts" = { sortTypeName | String | optional, },
      "definitions.Source" =
        {
            handler
              | refs."definitions.Handler"
              | { _ | Dyn }
              | doc "Point to the handler you wish to use, it can either be a predefined handler, or a custom",
            name
              | String
              | doc "The name you wish to set to your remote API, this will be used for building the GraphQL context",
            transforms
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Transform", { _ | Dyn } ]
              )
              | doc "List of transforms to apply to the current API source, before unifying it with the rest of the sources"
              | optional,
          },
      "definitions.StatsdClientBufferHolder" = { buffer | String, },
      "definitions.StatsdClientConfiguration" =
        {
            bufferFlushInterval | std.number.Integer | optional,
            bufferHolder
              | refs."definitions.StatsdClientBufferHolder"
              | { _ | Dyn }
              | optional,
            cacheDns | Bool | optional,
            cacheDnsTtl | std.number.Integer | optional,
            closingFlushInterval | std.number.Integer | optional,
            globalTags | { _ | Dyn } | optional,
            globalize | Bool | optional,
            host | String | optional,
            isChild | Bool | optional,
            maxBufferSize | std.number.Integer | optional,
            mock | Bool | optional,
            path | String | optional,
            port | std.number.Integer | optional,
            protocol
              | std.enum.TagOrString
              | [| 'stream, 'uds, 'udp, 'tcp |]
              | doc "Allowed values: tcp, udp, uds, stream"
              | optional,
            sampleRate | Number | optional,
            suffix | String | optional,
            tagPrefix | String | optional,
            tagSeperator | String | optional,
            tcpGracefulErrorHandling | Bool | optional,
            tcpGracefulRestartRateLimit | std.number.Integer | optional,
            telegraf | Bool | optional,
            udsGracefulErrorHandling | Bool | optional,
            udsGracefulRestartRateLimit | std.number.Integer | optional,
            useDefaultRoute | Bool | optional,
          },
      "definitions.StatsdPlugin" =
        {
            client
              | refs."definitions.StatsdClientConfiguration"
              | { _ | Dyn }
              | doc "Client Configuration"
              | optional,
            prefix
              | String
              | doc "prefix.operations.count (default: graphql)"
              | optional,
            skipIntrospection
              | Bool
              | doc "If you wish to disable introspection for logging (default: false)"
              | optional,
          },
      "definitions.SubgraphConfiguration" =
        {
            connectionParams
              | { _ | Dyn }
              | doc m%"
                JSON object representing the `connectionParams` from a WebSocket connection to add to the runtime of the API calls only for operation during runtime.
                More information about the WebSocket `connectionParams`:
                  - When using `subscriptionsProtocol=WS` (graphql-ws): https://github.com/enisdenjo/graphql-ws/blob/master/docs/interfaces/client.ClientOptions.md#connectionparams
                  - When using `subscriptionsProtocol=LEGACY_WS` (subscriptions-transport-ws): https://github.com/apollographql/subscriptions-transport-ws/blob/51270cc7dbaf09c7b9aa67368f1de58148c7d334/README.md#subscriptionclient
              "%
              | optional,
            credentials
              | std.enum.TagOrString
              | [| 'include, 'omit |]
              | doc m%"
                Request Credentials if your environment supports it.
                [See more](https://developer.mozilla.org/en-US/docs/Web/API/Request/credentials)
                
                @default "same-origin" (Allowed values: omit, include)
              "%
              | optional,
            endpoint
              | String
              | doc m%"
                A url or file path to your remote GraphQL endpoint.
                If you provide a path to a code file(js or ts),
                other options will be ignored and the schema exported from the file will be used directly.
              "%
              | optional,
            method
              | std.enum.TagOrString
              | [| 'POST, 'GET |]
              | doc "HTTP method used for GraphQL operations (Allowed values: GET, POST)"
              | optional,
            name
              | String
              | doc "The name of the subgraph you want to configure",
            operationHeaders
              | { _ | Dyn }
              | doc "JSON object representing the Headers to add to the runtime of the API calls only for operation during runtime"
              | optional,
            retry
              | std.number.Integer
              | doc "Retry attempts if fails"
              | optional,
            source
              | String
              | doc m%"
                Path to the introspection
                You can separately give schema introspection or SDL
              "%
              | optional,
            subscriptionsEndpoint
              | String
              | doc "URL to your endpoint serving all subscription queries for this source"
              | optional,
            subscriptionsProtocol
              | std.enum.TagOrString
              | [| 'LEGACY_WS, 'WS, 'SSE |]
              | doc m%"
                SSE - Server Sent Events
                WS - New graphql-ws
                LEGACY_WS - Legacy subscriptions-transport-ws (Allowed values: SSE, WS, LEGACY_WS)
              "%
              | optional,
            timeout
              | std.number.Integer
              | doc "Timeout in milliseconds"
              | optional,
            useGETForQueries
              | Bool
              | doc "Use HTTP GET for Query operations"
              | optional,
            webSocketImpl
              | String
              | doc "Path to a custom W3 Compatible WebSocket Implementation"
              | optional,
          },
      "definitions.SupergraphHandler" =
        {
            batch | Bool | optional,
            operationHeaders
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | optional,
            schemaHeaders
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | optional,
            source
              | String
              | doc m%"
                A file path to your Supergraph Schema
                If you provide a path to a code file(js or ts),
                other options will be ignored and the schema exported from the file will be used directly.
              "%,
            subgraphs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SubgraphConfiguration", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.TableField" = { fields | Array String, table | String, },
      "definitions.ThriftHandler" =
        {
            hostName | String | doc "The name of the host to connect to.",
            https
              | Bool
              | doc "Boolean value indicating whether to use https. Defaults to false."
              | optional,
            idl | String | doc "Path to IDL file",
            operationHeaders
              | { _ | Dyn }
              | doc "JSON object representing the Headers to add to the runtime of the API calls"
              | optional,
            path
              | String
              | doc "The path on which the Thrift service is listening. Defaults to '/thrift'."
              | optional,
            port
              | std.number.Integer
              | doc "The port number to attach to on the host.",
            protocol
              | std.enum.TagOrString
              | [| 'json, 'compact, 'binary |]
              | doc "Name of the Thrift protocol type to use. Defaults to 'binary'. (Allowed values: binary, compact, json)"
              | optional,
            schemaHeaders
              | { _ | Dyn }
              | doc "If you are using a remote URL endpoint to fetch your schema, you can set headers for the HTTP request to fetch your schema."
              | optional,
            serviceName
              | String
              | doc "The name of your service. Used for logging.",
          },
      "definitions.TransferSchemaTransformConfig" =
        {
            transfers
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.TransferSchemaTransformObject",
                    { _ | Dyn }
                  ]
              )
              | doc "Array of rules to transfer fields or args",
          },
      "definitions.TransferSchemaTransformObject" =
        {
            action
              | std.enum.TagOrString
              | [| 'copy, 'move |]
              | doc "Allowed values: move, copy"
              | optional,
            from | String,
            to | String,
          },
      "definitions.Transform" =
        {
            cache
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CacheTransformConfig", { _ | Dyn } ]
              )
              | doc "Transformer to apply caching for your data sources"
              | optional,
            encapsulate
              | refs."definitions.EncapsulateTransformObject"
              | { _ | Dyn }
              | doc "Transformer to apply encapsulation to the API source, by creating a field for it under the root query"
              | optional,
            extend
              | refs."definitions.ExtendTransform"
              | { _ | Dyn }
              | optional,
            federation
              | refs."definitions.FederationTransform"
              | { _ | Dyn }
              | optional,
            filterSchema
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FilterSchemaTransform", { _ | Dyn } ],
                  { _ | js2n.Always },
                  String,
                  Array Dyn
                ]
              | doc "Transformer to filter (white/black list) GraphQL types, fields and arguments (Any of: FilterSchemaTransform, Any)"
              | optional,
            hoistField
              | Array (
                std.contract.Sequence
                  [ refs."definitions.HoistFieldTransformConfig", { _ | Dyn } ]
              )
              | doc "Transformer to hoist GraphQL fields"
              | optional,
            namingConvention
              | refs."definitions.NamingConventionTransformConfig"
              | { _ | Dyn }
              | doc "Transformer to apply naming convention to GraphQL Types"
              | optional,
            prefix
              | refs."definitions.PrefixTransformConfig"
              | { _ | Dyn }
              | doc "Prefix transform"
              | optional,
            prune
              | refs."definitions.PruneTransformConfig"
              | { _ | Dyn }
              | doc "Prune transform"
              | optional,
            rateLimit
              | Array (
                std.contract.Sequence
                  [ refs."definitions.RateLimitTransformConfig", { _ | Dyn } ]
              )
              | doc "RateLimit transform"
              | optional,
            rename
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.RenameTransform", { _ | Dyn } ],
                  { _ | js2n.Always },
                  String,
                  Array Dyn
                ]
              | doc "Transformer to rename GraphQL types and fields (Any of: RenameTransform, Any)"
              | optional,
            replaceField
              | refs."definitions.ReplaceFieldTransformConfig"
              | { _ | Dyn }
              | doc "Transformer to replace GraphQL field with partial of full config from a different field"
              | optional,
            resolversComposition
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.ResolversCompositionTransform",
                      { _ | Dyn }
                    ],
                  { _ | js2n.Always },
                  String,
                  Array Dyn
                ]
              | doc "Transformer to apply composition to resolvers (Any of: ResolversCompositionTransform, Any)"
              | optional,
            transferSchema
              | refs."definitions.TransferSchemaTransformConfig"
              | { _ | Dyn }
              | doc "Transformer to transfer (move or copy) GraphQL parts of GraphQL schema across Types and Fields"
              | optional,
            typeMerging
              | refs."definitions.TypeMergingConfig"
              | { _ | Dyn }
              | doc "[Type Merging](https://www.graphql-tools.com/docs/stitch-type-merging) Configuration"
              | optional,
            ..
          },
      "definitions.TuqlHandler" =
        {
            db | String | doc "Pointer to your SQLite database" | optional,
            infile
              | String
              | doc "Path to the SQL Dump file if you want to build a in-memory database"
              | optional,
          },
      "definitions.TypeConverterResolversOpts" =
        {
            connection
              | std.contract.any_of [ Bool, { _ | Dyn } ]
              | doc "Any of: Boolean, JSON"
              | optional,
            count
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      refs."definitions.ComposeWithMongooseResolverOpts",
                      { _ | Dyn }
                    ]
                ]
              | doc "Any of: Boolean, ComposeWithMongooseResolverOpts"
              | optional,
            createMany
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      refs."definitions.ComposeWithMongooseResolverOpts",
                      { _ | Dyn }
                    ]
                ]
              | doc "Any of: Boolean, ComposeWithMongooseResolverOpts"
              | optional,
            createOne
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      refs."definitions.ComposeWithMongooseResolverOpts",
                      { _ | Dyn }
                    ]
                ]
              | doc "Any of: Boolean, ComposeWithMongooseResolverOpts"
              | optional,
            findById
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      refs."definitions.ComposeWithMongooseResolverOpts",
                      { _ | Dyn }
                    ]
                ]
              | doc "Any of: Boolean, ComposeWithMongooseResolverOpts"
              | optional,
            findByIds
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      refs."definitions.ComposeWithMongooseResolverOpts",
                      { _ | Dyn }
                    ]
                ]
              | doc "Any of: Boolean, ComposeWithMongooseResolverOpts"
              | optional,
            findMany
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      refs."definitions.ComposeWithMongooseResolverOpts",
                      { _ | Dyn }
                    ]
                ]
              | doc "Any of: Boolean, ComposeWithMongooseResolverOpts"
              | optional,
            findOne
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      refs."definitions.ComposeWithMongooseResolverOpts",
                      { _ | Dyn }
                    ]
                ]
              | doc "Any of: Boolean, ComposeWithMongooseResolverOpts"
              | optional,
            pagination
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ refs."definitions.PaginationResolverOpts", { _ | Dyn } ]
                ]
              | doc "Any of: Boolean, PaginationResolverOpts"
              | optional,
            removeById
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      refs."definitions.ComposeWithMongooseResolverOpts",
                      { _ | Dyn }
                    ]
                ]
              | doc "Any of: Boolean, ComposeWithMongooseResolverOpts"
              | optional,
            removeMany
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      refs."definitions.ComposeWithMongooseResolverOpts",
                      { _ | Dyn }
                    ]
                ]
              | doc "Any of: Boolean, ComposeWithMongooseResolverOpts"
              | optional,
            removeOne
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      refs."definitions.ComposeWithMongooseResolverOpts",
                      { _ | Dyn }
                    ]
                ]
              | doc "Any of: Boolean, ComposeWithMongooseResolverOpts"
              | optional,
            updateById
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      refs."definitions.ComposeWithMongooseResolverOpts",
                      { _ | Dyn }
                    ]
                ]
              | doc "Any of: Boolean, ComposeWithMongooseResolverOpts"
              | optional,
            updateMany
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      refs."definitions.ComposeWithMongooseResolverOpts",
                      { _ | Dyn }
                    ]
                ]
              | doc "Any of: Boolean, ComposeWithMongooseResolverOpts"
              | optional,
            updateOne
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      refs."definitions.ComposeWithMongooseResolverOpts",
                      { _ | Dyn }
                    ]
                ]
              | doc "Any of: Boolean, ComposeWithMongooseResolverOpts"
              | optional,
          },
      "definitions.TypeMergingConfig" =
        {
            additionalConfiguration
              | std.contract.any_of [ {  .. }, String, Array Dyn ]
              | doc "The path to a code file that has additional type merging configuration"
              | optional,
            queryFields
              | Array (
                std.contract.Sequence
                  [ refs."definitions.MergedRootFieldConfig", { _ | Dyn } ]
              )
              | doc m%"
                Denotes a root field used to query a merged type across services.
                The marked field's name is analogous
                to the fieldName setting in
                [merged type configuration](https://www.graphql-tools.com/docs/stitch-type-merging#basic-example),
                while the field's arguments and return type are used to infer merge configuration.
                Directive arguments tune the merge behavior
              "%
              | optional,
            types
              | Array (
                std.contract.Sequence
                  [ refs."definitions.MergedTypeConfig", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.URLPatternObj" =
        {
            baseURL | String | optional,
            hash | String | optional,
            hostname | String | optional,
            password | String | optional,
            pathname | String | optional,
            port | String | optional,
            protocol | String | optional,
            search | String | optional,
            username | String | optional,
          },
      "definitions.UpdateMockStoreConfig" =
        {
            fieldName | String | optional,
            key | String | optional,
            type | String | optional,
            value | String | optional,
          },
    }
    in
  {
      additionalEnvelopPlugins
        | String
        | doc "Path to a JavaScript file with a default export of Envelop plugins"
        | optional,
      additionalResolvers
        | Array (
          std.contract.any_of
            [
              String,
              refs."definitions.AdditionalStitchingResolverObject",
              refs."definitions.AdditionalStitchingBatchResolverObject",
              refs."definitions.AdditionalSubscriptionObject"
            ]
        )
        | doc "Additional resolvers, or resolvers overrides you wish to add to the schema mesh (Any of: String, AdditionalStitchingResolverObject, AdditionalStitchingBatchResolverObject, AdditionalSubscriptionObject)"
        | optional,
      additionalTypeDefs
        | std.contract.any_of [ {  .. }, String, Array Dyn ]
        | doc "Additional type definitions, or type definitions overrides you wish to add to the schema mesh"
        | optional,
      cache | refs."definitions.Cache" | doc "Backend cache" | optional,
      codegen
        | std.contract.any_of [ {  .. }, String, Array Dyn ]
        | doc "Codegen Configuration"
        | optional,
      customFetch
        | std.contract.any_of [ {  .. }, String, Array Dyn ]
        | doc "Path to a custom W3 Compatible Fetch Implementation"
        | optional,
      documents
        | Array String
        | doc m%"
          Provide a query or queries for GraphQL Playground, validation and SDK Generation
          The value can be the file path, glob expression for the file paths or the SDL.
          (.js, .jsx, .graphql, .gql, .ts and .tsx files are supported.
        "%
        | optional,
      logger
        | String
        | doc "Path to a file exporting a logger instance compatible with the `Logger` type from `@graphql-mesh/types`"
        | optional,
      merger | String | doc "Merge method" | optional,
      persistedOperations
        | refs."definitions.PersistedOperationsConfig"
        | doc "Configure persisted operations options"
        | optional,
      plugins | Array refs."definitions.Plugin" | optional,
      pollingInterval
        | std.number.Integer
        | doc "If you are using a CDN for a source (e.g. Federation Supergraph), this will be the polling interval in milliseconds for the CDN without a downtime"
        | optional,
      pubsub
        | std.contract.any_of [ String, refs."definitions.PubSubConfig" ]
        | doc "PubSub Implementation (Any of: String, PubSubConfig)"
        | optional,
      require | Array String | optional,
      sdk | refs."definitions.SDKConfig" | doc "SDK Configuration" | optional,
      serve
        | refs."definitions.ServeConfig"
        | doc m%"
          Configuration for `mesh start` or `mesh dev` command.
          Those commands won't be available in programmatic usage.
        "%
        | optional,
      skipSSLValidation
        | Bool
        | doc "Allow connections to an SSL endpoint without certificates"
        | optional,
      sources
        | Array refs."definitions.Source"
        | doc "Defines the list of your external data sources for your API mesh",
      transforms
        | Array refs."definitions.Transform"
        | doc "Transform to apply to the unified mesh schema"
        | optional,
    }