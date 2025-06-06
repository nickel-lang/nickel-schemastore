# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "items.definitions.org.apache.camel.dsl.yaml.deserializers.BeansDeserializer" =
        Array (
            std.contract.Sequence
              [
                refs."items.definitions.org.apache.camel.model.BeanFactoryDefinition",
                { _ | Dyn }
              ]
          ),
      "items.definitions.org.apache.camel.dsl.yaml.deserializers.DataFormatsDefinitionDeserializer" =
        Array (
            std.contract.Sequence
              [
                refs."items.definitions.org.apache.camel.model.dataformat.DataFormatsDefinition",
                { _ | Dyn }
              ]
          ),
      "items.definitions.org.apache.camel.dsl.yaml.deserializers.ErrorHandlerDeserializer" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            deadLetterChannel =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.errorhandler.DeadLetterChannelDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { deadLetterChannel = true, },
                    },
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "deadLetterChannel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "defaultErrorHandler" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jtaTransactionErrorHandler" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "noErrorHandler" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "refErrorHandler" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required
                          [ "springTransactionErrorHandler" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            defaultErrorHandler =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.errorhandler.DefaultErrorHandlerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { defaultErrorHandler = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            jtaTransactionErrorHandler =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.errorhandler.JtaTransactionErrorHandlerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { jtaTransactionErrorHandler = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            noErrorHandler =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.errorhandler.NoErrorHandlerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { noErrorHandler = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            refErrorHandler =
                              refs."items.definitions.org.apache.camel.model.errorhandler.RefErrorHandlerDefinition",
                          },
                      required = { refErrorHandler = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            springTransactionErrorHandler =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.errorhandler.SpringTransactionErrorHandlerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { springTransactionErrorHandler = true, },
                    }
                ],
              {
                deadLetterChannel | js2n.Always | optional,
                defaultErrorHandler | js2n.Always | optional,
                id | String | doc "The id of this node" | optional,
                jtaTransactionErrorHandler | js2n.Always | optional,
                noErrorHandler | js2n.Always | optional,
                refErrorHandler | js2n.Always | optional,
                springTransactionErrorHandler | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.dsl.yaml.deserializers.OutputAwareFromDefinition" =
        {
            description | String | optional,
            id | String | optional,
            parameters | { _ | Dyn } | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                    { _ | Dyn }
                  ]
              ),
            uri | String,
            variableReceive | String | optional,
            ..
          },
      "items.definitions.org.apache.camel.dsl.yaml.deserializers.RouteFromDefinitionDeserializer" =
        std.contract.Sequence
            [
              refs."items.definitions.org.apache.camel.dsl.yaml.deserializers.OutputAwareFromDefinition",
              {
                description | String | optional,
                id | String | optional,
                parameters | { _ | Dyn } | optional,
                steps
                  | Array (
                    std.contract.Sequence
                      [
                        refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                        { _ | Dyn }
                      ]
                  ),
                uri | String,
                variableReceive | String | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.AggregateDefinition" =
        {
            aggregateController
              | String
              | doc "To use a org.apache.camel.processor.aggregate.AggregateController to allow external sources to control this aggregator."
              | optional,
            aggregationRepository
              | String
              | doc "The AggregationRepository to use. Sets the custom aggregate repository to use. Will by default use org.apache.camel.processor.aggregate.MemoryAggregationRepository"
              | optional,
            aggregationStrategy
              | String
              | doc "The AggregationStrategy to use. For example to lookup a bean with the name foo, the value is simply just #bean:foo. Configuring an AggregationStrategy is required, and is used to merge the incoming Exchange with the existing already merged exchanges. At first call the oldExchange parameter is null. On subsequent invocations the oldExchange contains the merged exchanges and newExchange is of course the new incoming Exchange.",
            aggregationStrategyMethodAllowNull
              | Bool
              | doc "If this option is false then the aggregate method is not used for the very first aggregation. If this option is true then null values is used as the oldExchange (at the very first aggregation), when using beans as the AggregationStrategy."
              | optional,
            aggregationStrategyMethodName
              | String
              | doc "This option can be used to explicit declare the method name to use, when using beans as the AggregationStrategy."
              | optional,
            closeCorrelationKeyOnCompletion
              | Number
              | doc "Closes a correlation key when its complete. Any late received exchanges which has a correlation key that has been closed, it will be defined and a ClosedCorrelationKeyException is thrown."
              | optional,
            completeAllOnStop
              | Bool
              | doc "Indicates to wait to complete all current and partial (pending) aggregated exchanges when the context is stopped. This also means that we will wait for all pending exchanges which are stored in the aggregation repository to complete so the repository is empty before we can stop. You may want to enable this when using the memory based aggregation repository that is memory based only, and do not store data on disk. When this option is enabled, then the aggregator is waiting to complete all those exchanges before its stopped, when stopping CamelContext or the route using it."
              | optional,
            completionFromBatchConsumer
              | Bool
              | doc "Enables the batch completion mode where we aggregate from a org.apache.camel.BatchConsumer and aggregate the total number of exchanges the org.apache.camel.BatchConsumer has reported as total by checking the exchange property org.apache.camel.Exchange#BATCH_COMPLETE when its complete. This option cannot be used together with discardOnAggregationFailure."
              | optional,
            completionInterval
              | String
              | doc "A repeating period in millis by which the aggregator will complete all current aggregated exchanges. Camel has a background task which is triggered every period. You cannot use this option together with completionTimeout, only one of them can be used."
              | optional,
            completionOnNewCorrelationGroup
              | Bool
              | doc "Enables completion on all previous groups when a new incoming correlation group. This can for example be used to complete groups with same correlation keys when they are in consecutive order. Notice when this is enabled then only 1 correlation group can be in progress as when a new correlation group starts, then the previous groups is forced completed."
              | optional,
            completionPredicate
              | refs."items.definitions.org.apache.camel.model.ExpressionSubElementDefinition"
              | { _ | Dyn }
              | doc "A Predicate to indicate when an aggregated exchange is complete. If this is not specified and the AggregationStrategy object implements Predicate, the aggregationStrategy object will be used as the completionPredicate."
              | optional,
            completionSize
              | Number
              | doc "Number of messages aggregated before the aggregation is complete. This option can be set as either a fixed value or using an Expression which allows you to evaluate a size dynamically - will use Integer as result. If both are set Camel will fallback to use the fixed value if the Expression result was null or 0."
              | optional,
            completionSizeExpression
              | refs."items.definitions.org.apache.camel.model.ExpressionSubElementDefinition"
              | { _ | Dyn }
              | doc "Number of messages aggregated before the aggregation is complete. This option can be set as either a fixed value or using an Expression which allows you to evaluate a size dynamically - will use Integer as result. If both are set Camel will fallback to use the fixed value if the Expression result was null or 0."
              | optional,
            completionTimeout
              | String
              | doc "Time in millis that an aggregated exchange should be inactive before its complete (timeout). This option can be set as either a fixed value or using an Expression which allows you to evaluate a timeout dynamically - will use Long as result. If both are set Camel will fallback to use the fixed value if the Expression result was null or 0. You cannot use this option together with completionInterval, only one of the two can be used. By default the timeout checker runs every second, you can use the completionTimeoutCheckerInterval option to configure how frequently to run the checker. The timeout is an approximation and there is no guarantee that the a timeout is triggered exactly after the timeout value. It is not recommended to use very low timeout values or checker intervals."
              | optional,
            completionTimeoutCheckerInterval
              | String
              | doc "Interval in millis that is used by the background task that checks for timeouts ( org.apache.camel.TimeoutMap ). By default the timeout checker runs every second. The timeout is an approximation and there is no guarantee that the a timeout is triggered exactly after the timeout value. It is not recommended to use very low timeout values or checker intervals."
              | optional,
            completionTimeoutExpression
              | refs."items.definitions.org.apache.camel.model.ExpressionSubElementDefinition"
              | { _ | Dyn }
              | doc "Time in millis that an aggregated exchange should be inactive before its complete (timeout). This option can be set as either a fixed value or using an Expression which allows you to evaluate a timeout dynamically - will use Long as result. If both are set Camel will fallback to use the fixed value if the Expression result was null or 0. You cannot use this option together with completionInterval, only one of the two can be used. By default the timeout checker runs every second, you can use the completionTimeoutCheckerInterval option to configure how frequently to run the checker. The timeout is an approximation and there is no guarantee that the a timeout is triggered exactly after the timeout value. It is not recommended to use very low timeout values or checker intervals."
              | optional,
            correlationExpression
              | refs."items.definitions.org.apache.camel.model.ExpressionSubElementDefinition"
              | { _ | Dyn }
              | doc "The expression used to calculate the correlation key to use for aggregation. The Exchange which has the same correlation key is aggregated together. If the correlation key could not be evaluated an Exception is thrown. You can disable this by using the ignoreBadCorrelationKeys option."
              | optional,
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            discardOnAggregationFailure
              | Bool
              | doc "Discards the aggregated message when aggregation failed (an exception was thrown from AggregationStrategy . This means the partly aggregated message is dropped and not sent out of the aggregator. This option cannot be used together with completionFromBatchConsumer."
              | optional,
            discardOnCompletionTimeout
              | Bool
              | doc "Discards the aggregated message on completion timeout. This means on timeout the aggregated message is dropped and not sent out of the aggregator."
              | optional,
            eagerCheckCompletion
              | Bool
              | doc "Use eager completion checking which means that the completionPredicate will use the incoming Exchange. As opposed to without eager completion checking the completionPredicate will use the aggregated Exchange."
              | optional,
            executorService
              | String
              | doc "If using parallelProcessing you can specify a custom thread pool to be used. In fact also if you are not using parallelProcessing this custom thread pool is used to send out aggregated exchanges as well."
              | optional,
            forceCompletionOnStop
              | Bool
              | doc "Indicates to complete all current aggregated exchanges when the context is stopped"
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            ignoreInvalidCorrelationKeys
              | Bool
              | doc "If a correlation key cannot be successfully evaluated it will be ignored by logging a DEBUG and then just ignore the incoming Exchange."
              | optional,
            optimisticLockRetryPolicy
              | refs."items.definitions.org.apache.camel.model.OptimisticLockRetryPolicyDefinition"
              | { _ | Dyn }
              | doc "Allows to configure retry settings when using optimistic locking."
              | optional,
            optimisticLocking
              | Bool
              | doc "Turns on using optimistic locking, which requires the aggregationRepository being used, is supporting this by implementing org.apache.camel.spi.OptimisticLockingAggregationRepository ."
              | optional,
            parallelProcessing
              | Bool
              | doc "When aggregated are completed they are being send out of the aggregator. This option indicates whether or not Camel should use a thread pool with multiple threads for concurrency. If no custom thread pool has been specified then Camel creates a default pool with 10 concurrent threads."
              | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
            timeoutCheckerExecutorService
              | String
              | doc "If using either of the completionTimeout, completionTimeoutExpression, or completionInterval options a background thread is created to check for the completion for every aggregator. Set this option to provide a custom thread pool to be used rather than creating a new thread for every aggregator."
              | optional,
          },
      "items.definitions.org.apache.camel.model.BeanDefinition" =
        std.contract.any_of
            [
              String,
              {
                beanType
                  | String
                  | doc "Sets the class name (fully qualified) of the bean to use"
                  | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                id | String | doc "Sets the id of this node" | optional,
                method
                  | String
                  | doc "Sets the method name on the bean to use"
                  | optional,
                ref
                  | String
                  | doc "Sets a reference to an existing bean to use, which is looked up from the registry"
                  | optional,
                scope
                  | std.enum.TagOrString
                  | [| 'Prototype, 'Request, 'Singleton |]
                  | doc "Scope of bean. When using singleton scope (default) the bean is created or looked up only once and reused for the lifetime of the endpoint. The bean should be thread-safe in case concurrent threads is calling the bean at the same time. When using request scope the bean is created or looked up once per request (exchange). This can be used if you want to store state on a bean while processing a request and you want to call the same bean instance multiple times while processing the request. The bean does not have to be thread-safe as the instance is only called from the same request. When using prototype scope, then the bean will be looked up or created per call. However in case of lookup then this is delegated to the bean registry such as Spring or CDI (if in use), which depends on their configuration can act as either singleton or prototype scope. So when using prototype scope then this depends on the bean registry implementation."
                  | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.BeanFactoryDefinition" =
        {
            builderClass
              | String
              | doc "Fully qualified class name of builder class to use for creating and configuring the bean. The builder will use the properties values to configure the bean."
              | optional,
            builderMethod
              | String
              | doc "Name of method when using builder class. This method is invoked after configuring to create the actual bean. This method is often named build (used by default)."
              | optional,
            constructors
              | { _ | Dyn }
              | doc "Optional constructor arguments for creating the bean. Arguments correspond to specific index of the constructor argument list, starting from zero."
              | optional,
            destroyMethod
              | String
              | doc "The name of the custom destroy method to invoke on bean shutdown, such as when Camel is shutting down. The method must have no arguments, but may throw any exception."
              | optional,
            factoryBean
              | String
              | doc "Name of factory bean (bean id) to use for creating the bean."
              | optional,
            factoryMethod
              | String
              | doc "Name of method to invoke when creating the bean via a factory bean."
              | optional,
            initMethod
              | String
              | doc "The name of the custom initialization method to invoke after setting bean properties. The method must have no arguments, but may throw any exception."
              | optional,
            name | String | doc "The name of the bean (bean id)",
            properties
              | { _ | Dyn }
              | doc "Optional properties to set on the created bean."
              | optional,
            script
              | String
              | doc "The script to execute that creates the bean when using scripting languages. If the script use the prefix resource: such as resource:classpath:com/foo/myscript.groovy, resource:file:/var/myscript.groovy, then its loaded from the external resource."
              | optional,
            scriptLanguage
              | String
              | doc "The script language to use when using inlined script for creating the bean, such as groovy, java, javascript etc."
              | optional,
            type | String | doc "The class name (fully qualified) of the bean",
          },
      "items.definitions.org.apache.camel.model.CatchDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            exception
              | Array String
              | doc "The exception(s) to catch."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            onWhen
              | refs."items.definitions.org.apache.camel.model.OnWhenDefinition"
              | { _ | Dyn }
              | doc "Used for triggering doCatch in specific situations"
              | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
          },
      "items.definitions.org.apache.camel.model.ChoiceDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            otherwise
              | refs."items.definitions.org.apache.camel.model.OtherwiseDefinition"
              | { _ | Dyn }
              | doc "Sets the otherwise node"
              | optional,
            precondition
              | Bool
              | doc "Indicates whether this Choice EIP is in precondition mode or not. If so its branches (when/otherwise) are evaluated during startup to keep at runtime only the branch that matched."
              | optional,
            when
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.WhenDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Sets the when nodes"
              | optional,
          },
      "items.definitions.org.apache.camel.model.CircuitBreakerDefinition" =
        {
            configuration
              | String
              | doc "Refers to a circuit breaker configuration (such as resillience4j, or microprofile-fault-tolerance) to use for configuring the circuit breaker EIP."
              | optional,
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            faultToleranceConfiguration
              | refs."items.definitions.org.apache.camel.model.FaultToleranceConfigurationDefinition"
              | { _ | Dyn }
              | doc "Configures the circuit breaker to use MicroProfile Fault Tolerance with the given configuration."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            onFallback
              | refs."items.definitions.org.apache.camel.model.OnFallbackDefinition"
              | { _ | Dyn }
              | doc "The fallback route path to execute that does not go over the network. This should be a static or cached result that can immediately be returned upon failure. If the fallback requires network connection then use onFallbackViaNetwork() ."
              | optional,
            resilience4jConfiguration
              | refs."items.definitions.org.apache.camel.model.Resilience4jConfigurationDefinition"
              | { _ | Dyn }
              | doc "Configures the circuit breaker to use Resilience4j with the given configuration."
              | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
          },
      "items.definitions.org.apache.camel.model.ClaimCheckDefinition" =
        {
            aggregationStrategy
              | String
              | doc "To use a custom AggregationStrategy instead of the default implementation. Notice you cannot use both custom aggregation strategy and configure data at the same time."
              | optional,
            aggregationStrategyMethodName
              | String
              | doc "This option can be used to explicit declare the method name to use, when using POJOs as the AggregationStrategy."
              | optional,
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            filter
              | String
              | doc "Specify a filter to control what data gets merged data back from the claim check repository. The following syntax is supported: body - to aggregate the message body attachments - to aggregate all the message attachments headers - to aggregate all the message headers header:pattern - to aggregate all the message headers that matches the pattern. The following pattern rules are applied in this order: exact match, returns true wildcard match (pattern ends with a and the name starts with the pattern), returns true regular expression match, returns true otherwise returns false You can specify multiple rules separated by comma. For example, the following includes the message body and all headers starting with foo: body,header:foo. The syntax supports the following prefixes which can be used to specify include,exclude, or remove - to include (which is the default mode) - - to exclude (exclude takes precedence over include) -- - to remove (remove takes precedence) For example to exclude a header name foo, and remove all headers starting with bar, -header:foo,--headers:bar Note you cannot have both include and exclude header:pattern at the same time."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            key
              | String
              | doc "To use a specific key for claim check id (for dynamic keys use simple language syntax as the key)."
              | optional,
            operation
              | std.enum.TagOrString
              | [| 'Pop, 'Push, 'Set, 'GetAndRemove, 'Get |]
              | doc "The claim check operation to use. The following operations are supported: Get - Gets (does not remove) the claim check by the given key. GetAndRemove - Gets and removes the claim check by the given key. Set - Sets a new (will override if key already exists) claim check with the given key. Push - Sets a new claim check on the stack (does not use key). Pop - Gets the latest claim check from the stack (does not use key)."
              | optional,
          },
      "items.definitions.org.apache.camel.model.ConvertBodyDefinition" =
        std.contract.Sequence
            [
              std.contract.any_of [ String, js2n.record.Required [ "type" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    charset
                      | String
                      | doc "To use a specific charset when converting"
                      | optional,
                    description
                      | String
                      | doc "Sets the description of this node"
                      | optional,
                    disabled
                      | Bool
                      | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    mandatory
                      | Bool
                      | doc "When mandatory then the conversion must return a value (cannot be null), if this is not possible then NoTypeConversionAvailableException is thrown. Setting this to false could mean conversion is not possible and the value is null."
                      | optional,
                    type
                      | String
                      | doc "The java type to convert to"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.ConvertHeaderDefinition" =
        {
            charset
              | String
              | doc "To use a specific charset when converting"
              | optional,
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            mandatory
              | Bool
              | doc "When mandatory then the conversion must return a value (cannot be null), if this is not possible then NoTypeConversionAvailableException is thrown. Setting this to false could mean conversion is not possible and the value is null."
              | optional,
            name
              | String
              | doc "Name of message header to convert its value The simple language can be used to define a dynamic evaluated header name to be used. Otherwise a constant name will be used.",
            toName
              | String
              | doc "To use another header to store the result. By default, the result is stored in the same header. This option allows to use another header. The simple language can be used to define a dynamic evaluated header name to be used. Otherwise a constant name will be used."
              | optional,
            type | String | doc "The java type to convert to",
          },
      "items.definitions.org.apache.camel.model.ConvertVariableDefinition" =
        {
            charset
              | String
              | doc "To use a specific charset when converting"
              | optional,
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            mandatory
              | Bool
              | doc "When mandatory then the conversion must return a value (cannot be null), if this is not possible then NoTypeConversionAvailableException is thrown. Setting this to false could mean conversion is not possible and the value is null."
              | optional,
            name
              | String
              | doc "Name of variable to convert its value The simple language can be used to define a dynamic evaluated header name to be used. Otherwise a constant name will be used.",
            toName
              | String
              | doc "To use another variable to store the result. By default, the result is stored in the same variable. This option allows to use another variable. The simple language can be used to define a dynamic evaluated variable name to be used. Otherwise a constant name will be used."
              | optional,
            type | String | doc "The java type to convert to",
          },
      "items.definitions.org.apache.camel.model.DelayDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                asyncDelayed
                  | Bool
                  | doc "Enables asynchronous delay which means the thread will not block while delaying."
                  | optional,
                callerRunsWhenRejected
                  | Bool
                  | doc "Whether or not the caller should run the task when it was rejected by the thread pool. Is by default true"
                  | optional,
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                executorService
                  | String
                  | doc "To use a custom Thread Pool if asyncDelay has been enabled."
                  | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.DynamicRouterDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                cacheSize
                  | Number
                  | doc "Sets the maximum size used by the org.apache.camel.spi.ProducerCache which is used to cache and reuse producers when using this dynamic router, when uris are reused. Beware that when using dynamic endpoints then it affects how well the cache can be utilized. If each dynamic endpoint is unique then its best to turn off caching by setting this to -1, which allows Camel to not cache both the producers and endpoints; they are regarded as prototype scoped and will be stopped and discarded after use. This reduces memory usage as otherwise producers/endpoints are stored in memory in the caches. However if there are a high degree of dynamic endpoints that have been used before, then it can benefit to use the cache to reuse both producers and endpoints and therefore the cache size can be set accordingly or rely on the default size (1000). If there is a mix of unique and used before dynamic endpoints, then setting a reasonable cache size can help reduce memory usage to avoid storing too many non frequent used producers."
                  | optional,
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                ignoreInvalidEndpoints
                  | Bool
                  | doc "Ignore the invalidate endpoint exception when try to create a producer with that endpoint"
                  | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                tokenize | js2n.Always | optional,
                uriDelimiter
                  | String
                  | doc "Sets the uri delimiter to use"
                  | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.EnrichDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                aggregateOnException
                  | Bool
                  | doc "If this option is false then the aggregate method is not used if there was an exception thrown while trying to retrieve the data to enrich from the resource. Setting this option to true allows end users to control what to do if there was an exception in the aggregate method. For example to suppress the exception or set a custom message body etc."
                  | optional,
                aggregationStrategy
                  | String
                  | doc "Sets the AggregationStrategy to be used to merge the reply from the external service, into a single outgoing message. By default Camel will use the reply from the external service as outgoing message."
                  | optional,
                aggregationStrategyMethodAllowNull
                  | String
                  | doc "If this option is false then the aggregate method is not used if there was no data to enrich. If this option is true then null values is used as the oldExchange (when no data to enrich), when using POJOs as the AggregationStrategy."
                  | optional,
                aggregationStrategyMethodName
                  | String
                  | doc "This option can be used to explicit declare the method name to use, when using POJOs as the AggregationStrategy."
                  | optional,
                allowOptimisedComponents
                  | Bool
                  | doc "Whether to allow components to optimise enricher if they are org.apache.camel.spi.SendDynamicAware"
                  | optional,
                autoStartComponents
                  | Bool
                  | doc "Whether to auto startup components when enricher is starting up."
                  | optional,
                cacheSize
                  | Number
                  | doc "Sets the maximum size used by the org.apache.camel.spi.ProducerCache which is used to cache and reuse producer when uris are reused. Beware that when using dynamic endpoints then it affects how well the cache can be utilized. If each dynamic endpoint is unique then its best to turn off caching by setting this to -1, which allows Camel to not cache both the producers and endpoints; they are regarded as prototype scoped and will be stopped and discarded after use. This reduces memory usage as otherwise producers/endpoints are stored in memory in the caches. However if there are a high degree of dynamic endpoints that have been used before, then it can benefit to use the cache to reuse both producers and endpoints and therefore the cache size can be set accordingly or rely on the default size (1000). If there is a mix of unique and used before dynamic endpoints, then setting a reasonable cache size can help reduce memory usage to avoid storing too many non frequent used producers."
                  | optional,
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                ignoreInvalidEndpoint
                  | Bool
                  | doc "Ignore the invalidate endpoint exception when try to create a producer with that endpoint"
                  | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                shareUnitOfWork
                  | Bool
                  | doc "Shares the org.apache.camel.spi.UnitOfWork with the parent and the resource exchange. Enrich will by default not share unit of work between the parent exchange and the resource exchange. This means the resource exchange has its own individual unit of work."
                  | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                variableReceive
                  | String
                  | doc "To use a variable as the source for the message body to send. This makes it handy to use variables for user data and to easily control what data to use for sending and receiving. Important: When using send variable then the message body is taken from this variable instead of the current message, however the headers from the message will still be used as well. In other words, the variable is used instead of the message body, but everything else is as usual."
                  | optional,
                variableSend
                  | String
                  | doc "To use a variable to store the received message body (only body, not headers). This makes it handy to use variables for user data and to easily control what data to use for sending and receiving. Important: When using receive variable then the received body is stored only in this variable and not on the current message."
                  | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.ErrorHandlerDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            deadLetterChannel =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.errorhandler.DeadLetterChannelDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { deadLetterChannel = true, },
                    },
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "deadLetterChannel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "defaultErrorHandler" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jtaTransactionErrorHandler" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "noErrorHandler" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "refErrorHandler" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required
                          [ "springTransactionErrorHandler" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            defaultErrorHandler =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.errorhandler.DefaultErrorHandlerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { defaultErrorHandler = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            jtaTransactionErrorHandler =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.errorhandler.JtaTransactionErrorHandlerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { jtaTransactionErrorHandler = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            noErrorHandler =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.errorhandler.NoErrorHandlerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { noErrorHandler = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            refErrorHandler =
                              refs."items.definitions.org.apache.camel.model.errorhandler.RefErrorHandlerDefinition",
                          },
                      required = { refErrorHandler = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            springTransactionErrorHandler =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.errorhandler.SpringTransactionErrorHandlerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { springTransactionErrorHandler = true, },
                    }
                ],
              {
                deadLetterChannel | js2n.Always | optional,
                defaultErrorHandler | js2n.Always | optional,
                id | String | doc "The id of this node" | optional,
                jtaTransactionErrorHandler | js2n.Always | optional,
                noErrorHandler | js2n.Always | optional,
                refErrorHandler | js2n.Always | optional,
                springTransactionErrorHandler | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.ExpressionSubElementDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            constant =
                              refs."items.definitions.org.apache.camel.model.language.ConstantExpression",
                          },
                      required = { constant = true, },
                    },
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            csimple =
                              refs."items.definitions.org.apache.camel.model.language.CSimpleExpression",
                          },
                      required = { csimple = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            datasonnet =
                              refs."items.definitions.org.apache.camel.model.language.DatasonnetExpression",
                          },
                      required = { datasonnet = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            exchangeProperty =
                              refs."items.definitions.org.apache.camel.model.language.ExchangePropertyExpression",
                          },
                      required = { exchangeProperty = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            groovy =
                              refs."items.definitions.org.apache.camel.model.language.GroovyExpression",
                          },
                      required = { groovy = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            header =
                              refs."items.definitions.org.apache.camel.model.language.HeaderExpression",
                          },
                      required = { header = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            hl7terser =
                              refs."items.definitions.org.apache.camel.model.language.Hl7TerserExpression",
                          },
                      required = { hl7terser = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            java =
                              refs."items.definitions.org.apache.camel.model.language.JavaExpression",
                          },
                      required = { java = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            joor =
                              refs."items.definitions.org.apache.camel.model.language.JoorExpression",
                          },
                      required = { joor = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            jq =
                              refs."items.definitions.org.apache.camel.model.language.JqExpression",
                          },
                      required = { jq = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            js =
                              refs."items.definitions.org.apache.camel.model.language.JavaScriptExpression",
                          },
                      required = { js = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            jsonpath =
                              refs."items.definitions.org.apache.camel.model.language.JsonPathExpression",
                          },
                      required = { jsonpath = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            language =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.LanguageExpression",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { language = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            method =
                              refs."items.definitions.org.apache.camel.model.language.MethodCallExpression",
                          },
                      required = { method = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            mvel =
                              refs."items.definitions.org.apache.camel.model.language.MvelExpression",
                          },
                      required = { mvel = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            ognl =
                              refs."items.definitions.org.apache.camel.model.language.OgnlExpression",
                          },
                      required = { ognl = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            python =
                              refs."items.definitions.org.apache.camel.model.language.PythonExpression",
                          },
                      required = { python = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            ref =
                              refs."items.definitions.org.apache.camel.model.language.RefExpression",
                          },
                      required = { ref = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            simple =
                              refs."items.definitions.org.apache.camel.model.language.SimpleExpression",
                          },
                      required = { simple = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            spel =
                              refs."items.definitions.org.apache.camel.model.language.SpELExpression",
                          },
                      required = { spel = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            tokenize =
                              refs."items.definitions.org.apache.camel.model.language.TokenizerExpression",
                          },
                      required = { tokenize = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            variable =
                              refs."items.definitions.org.apache.camel.model.language.VariableExpression",
                          },
                      required = { variable = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            wasm =
                              refs."items.definitions.org.apache.camel.model.language.WasmExpression",
                          },
                      required = { wasm = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            xpath =
                              refs."items.definitions.org.apache.camel.model.language.XPathExpression",
                          },
                      required = { xpath = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            xquery =
                              refs."items.definitions.org.apache.camel.model.language.XQueryExpression",
                          },
                      required = { xquery = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            xtokenize =
                              refs."items.definitions.org.apache.camel.model.language.XMLTokenizerExpression",
                          },
                      required = { xtokenize = true, },
                    }
                ],
              {
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                exchangeProperty | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.FaultToleranceConfigurationDefinition" =
        {
            bulkheadEnabled
              | Bool
              | doc "Whether bulkhead is enabled or not on the circuit breaker. Default is false."
              | optional,
            bulkheadMaxConcurrentCalls
              | Number
              | doc "Configures the max amount of concurrent calls the bulkhead will support."
              | optional,
            bulkheadWaitingTaskQueue
              | Number
              | doc "Configures the task queue size for holding waiting tasks to be processed by the bulkhead."
              | optional,
            delay
              | String
              | doc "Control how long the circuit breaker stays open. The default is 5 seconds."
              | optional,
            failureRatio
              | Number
              | doc "Configures the failure rate threshold in percentage. If the failure rate is equal or greater than the threshold the CircuitBreaker transitions to open and starts short-circuiting calls. The threshold must be greater than 0 and not greater than 100. Default value is 50 percentage."
              | optional,
            id | String | doc "The id of this node" | optional,
            requestVolumeThreshold
              | Number
              | doc "Controls the size of the rolling window used when the circuit breaker is closed"
              | optional,
            successThreshold
              | Number
              | doc "Controls the number of trial calls which are allowed when the circuit breaker is half-open"
              | optional,
            threadOffloadExecutorService
              | String
              | doc "References a custom thread pool to use when offloading a guarded action to another thread."
              | optional,
            timeoutDuration
              | String
              | doc "Configures the thread execution timeout. Default value is 1 second."
              | optional,
            timeoutEnabled
              | Bool
              | doc "Whether timeout is enabled or not on the circuit breaker. Default is false."
              | optional,
            timeoutPoolSize
              | Number
              | doc "Configures the pool size of the thread pool when timeout is enabled. Default value is 10."
              | optional,
            typedGuard
              | String
              | doc "Refers to an existing io.smallrye.faulttolerance.api.TypedGuard instance to lookup and use from the registry. When using this, then any other TypedGuard circuit breaker options are not in use."
              | optional,
          },
      "items.definitions.org.apache.camel.model.FilterDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                statusPropertyName
                  | String
                  | doc "Name of exchange property to use for storing the status of the filtering. Setting this allows to know if the filter predicate evaluated as true or false."
                  | optional,
                steps
                  | Array (
                    std.contract.Sequence
                      [
                        refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                        { _ | Dyn }
                      ]
                  )
                  | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.FinallyDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
          },
      "items.definitions.org.apache.camel.model.FromDefinition" =
        {
            description | String | optional,
            id | String | optional,
            parameters | { _ | Dyn } | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                    { _ | Dyn }
                  ]
              ),
            uri | String,
            variableReceive | String | optional,
          },
      "items.definitions.org.apache.camel.model.IdempotentConsumerDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                completionEager
                  | Bool
                  | doc "Sets whether to complete the idempotent consumer eager or when the exchange is done. If this option is true to complete eager, then the idempotent consumer will trigger its completion when the exchange reached the end of the block of the idempotent consumer pattern. So if the exchange is continued routed after the block ends, then whatever happens there does not affect the state. If this option is false (default) to not complete eager, then the idempotent consumer will complete when the exchange is done being routed. So if the exchange is continued routed after the block ends, then whatever happens there also affect the state. For example if the exchange failed due to an exception, then the state of the idempotent consumer will be a rollback."
                  | optional,
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                eager
                  | Bool
                  | doc "Sets whether to eagerly add the key to the idempotent repository or wait until the exchange is complete. Eager is default enabled."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                idempotentRepository
                  | String
                  | doc "Sets the reference name of the message id repository",
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                removeOnFailure
                  | Bool
                  | doc "Sets whether to remove or keep the key on failure. The default behavior is to remove the key on failure."
                  | optional,
                simple | js2n.Always | optional,
                skipDuplicate
                  | Bool
                  | doc "Sets whether to skip duplicates or not. The default behavior is to skip duplicates. A duplicate message would have the Exchange property org.apache.camel.Exchange#DUPLICATE_MESSAGE set to a Boolean#TRUE value. A none duplicate message will not have this property set."
                  | optional,
                spel | js2n.Always | optional,
                steps
                  | Array (
                    std.contract.Sequence
                      [
                        refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                        { _ | Dyn }
                      ]
                  )
                  | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.InputTypeDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            urn | String | doc "The input type URN.",
            validate
              | Bool
              | doc "Whether if validation is required for this input type."
              | optional,
          },
      "items.definitions.org.apache.camel.model.InterceptDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            onWhen
              | refs."items.definitions.org.apache.camel.model.OnWhenDefinition"
              | { _ | Dyn }
              | doc "To use an expression to only trigger intercepting in specific situations"
              | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
          },
      "items.definitions.org.apache.camel.model.InterceptFromDefinition" =
        std.contract.any_of
            [
              String,
              {
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                id | String | doc "Sets the id of this node" | optional,
                onWhen
                  | refs."items.definitions.org.apache.camel.model.OnWhenDefinition"
                  | { _ | Dyn }
                  | doc "To use an expression to only trigger intercepting in specific situations"
                  | optional,
                steps
                  | Array (
                    std.contract.Sequence
                      [
                        refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                        { _ | Dyn }
                      ]
                  )
                  | optional,
                uri
                  | String
                  | doc "Intercept incoming messages from the uri or uri pattern. If this option is not configured, then all incoming messages is intercepted."
                  | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.InterceptSendToEndpointDefinition" =
        std.contract.Sequence
            [
              std.contract.any_of [ String, js2n.record.Required [ "uri" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    afterUri
                      | String
                      | doc "After sending to the endpoint then send the message to this uri which allows to process its result."
                      | optional,
                    description
                      | String
                      | doc "Sets the description of this node"
                      | optional,
                    disabled
                      | Bool
                      | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    onWhen
                      | refs."items.definitions.org.apache.camel.model.OnWhenDefinition"
                      | { _ | Dyn }
                      | doc "To use an expression to only trigger intercepting sending to an endpoint in specific situations"
                      | optional,
                    skipSendToOriginalEndpoint
                      | String
                      | doc "If set to true then the message is not sent to the original endpoint. By default (false) the message is both intercepted and then sent to the original endpoint."
                      | optional,
                    steps
                      | Array (
                        std.contract.Sequence
                          [
                            refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                            { _ | Dyn }
                          ]
                      )
                      | optional,
                    uri
                      | String
                      | doc "Intercept sending to the uri or uri pattern."
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.KameletDefinition" =
        std.contract.Sequence
            [
              std.contract.any_of [ String, js2n.record.Required [ "name" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    name | String | optional,
                    parameters | { _ | Dyn } | optional,
                    steps
                      | Array (
                        std.contract.Sequence
                          [
                            refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                            { _ | Dyn }
                          ]
                      )
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.LoadBalanceDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            customLoadBalancer =
                              refs."items.definitions.org.apache.camel.model.loadbalancer.CustomLoadBalancerDefinition",
                          },
                      required = { customLoadBalancer = true, },
                    },
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "customLoadBalancer" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "failoverLoadBalancer" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "randomLoadBalancer" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "roundRobinLoadBalancer" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "stickyLoadBalancer" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "topicLoadBalancer" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "weightedLoadBalancer" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            failoverLoadBalancer =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.loadbalancer.FailoverLoadBalancerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { failoverLoadBalancer = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            randomLoadBalancer =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.loadbalancer.RandomLoadBalancerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { randomLoadBalancer = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            roundRobinLoadBalancer =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.loadbalancer.RoundRobinLoadBalancerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { roundRobinLoadBalancer = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            stickyLoadBalancer =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.loadbalancer.StickyLoadBalancerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { stickyLoadBalancer = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            topicLoadBalancer =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.loadbalancer.TopicLoadBalancerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { topicLoadBalancer = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            weightedLoadBalancer =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.loadbalancer.WeightedLoadBalancerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { weightedLoadBalancer = true, },
                    }
                ],
              {
                customLoadBalancer | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                failoverLoadBalancer | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                randomLoadBalancer | js2n.Always | optional,
                roundRobinLoadBalancer | js2n.Always | optional,
                steps
                  | Array (
                    std.contract.Sequence
                      [
                        refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                        { _ | Dyn }
                      ]
                  )
                  | optional,
                stickyLoadBalancer | js2n.Always | optional,
                topicLoadBalancer | js2n.Always | optional,
                weightedLoadBalancer | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.LogDefinition" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "message" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    description
                      | String
                      | doc "Sets the description of this node"
                      | optional,
                    disabled
                      | Bool
                      | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    logLanguage
                      | String
                      | doc "To configure the language to use. By default, the simple language is used. However, Camel also supports other languages such as groovy."
                      | optional,
                    logName
                      | String
                      | doc "Sets the name of the logger. The name is default the routeId or the source:line if source location is enabled. You can also specify the name using tokens: ${class} - the logger class name (org.apache.camel.processor.LogProcessor) ${contextId} - the camel context id ${routeId} - the route id ${groupId} - the route group id ${nodeId} - the node id ${nodePrefixId} - the node prefix id ${source} - the source:line (source location must be enabled) ${source.name} - the source filename (source location must be enabled) ${source.line} - the source line number (source location must be enabled) For example to use the route and node id you can specify the name as: ${routeId}/${nodeId}"
                      | optional,
                    logger
                      | String
                      | doc "To refer to a custom logger instance to lookup from the registry."
                      | optional,
                    loggingLevel
                      | std.enum.TagOrString
                      | [| 'OFF, 'ERROR, 'WARN, 'INFO, 'DEBUG, 'TRACE |]
                      | doc "Sets the logging level. The default value is INFO"
                      | optional,
                    marker | String | doc "To use slf4j marker" | optional,
                    message
                      | String
                      | doc "Sets the log message (uses simple language)"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.LoopDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                breakOnShutdown
                  | Bool
                  | doc "If the breakOnShutdown attribute is true, then the loop will not iterate until it reaches the end when Camel is shut down."
                  | optional,
                constant | js2n.Always | optional,
                copy
                  | Bool
                  | doc "If the copy attribute is true, a copy of the input Exchange is used for each iteration. That means each iteration will start from a copy of the same message. By default loop will loop the same exchange all over, so each iteration may have different message content."
                  | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                doWhile
                  | Bool
                  | doc "Enables the while loop that loops until the predicate evaluates to false or null."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                onPrepare
                  | String
                  | doc "Uses the Processor when preparing the org.apache.camel.Exchange for each loop iteration. This can be used to deep-clone messages, or any custom logic needed before the looping executes."
                  | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                steps
                  | Array (
                    std.contract.Sequence
                      [
                        refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                        { _ | Dyn }
                      ]
                  )
                  | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.MarshalDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            asn1 =
                              refs."items.definitions.org.apache.camel.model.dataformat.ASN1DataFormat",
                          },
                      required = { asn1 = true, },
                    },
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "asn1" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "avro" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "barcode" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "base64" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "beanio" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "bindy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "cbor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "crypto" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csv" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "custom" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "dfdl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "fhirJson" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "fhirXml" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "flatpack" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "fury" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "grok" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "gzipDeflater" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ical" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jacksonXml" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jaxb" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "json" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonApi" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "lzf" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mimeMultipart" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "parquetAvro" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "pgp" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "protobuf" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "rss" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "smooks" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "soap" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "swiftMt" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "swiftMx" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "syslog" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tarFile" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "thrift" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tidyMarkup" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "univocityCsv" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "univocityFixed" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "univocityTsv" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xmlSecurity" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "yaml" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "zipDeflater" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "zipFile" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            avro =
                              refs."items.definitions.org.apache.camel.model.dataformat.AvroDataFormat",
                          },
                      required = { avro = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            barcode =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.BarcodeDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { barcode = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            base64 =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.Base64DataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { base64 = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            beanio =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.BeanioDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { beanio = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            bindy =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.BindyDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { bindy = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            cbor =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.CBORDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { cbor = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            crypto =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.CryptoDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { crypto = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            csv =
                              refs."items.definitions.org.apache.camel.model.dataformat.CsvDataFormat",
                          },
                      required = { csv = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            custom =
                              refs."items.definitions.org.apache.camel.model.dataformat.CustomDataFormat",
                          },
                      required = { custom = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            dfdl =
                              refs."items.definitions.org.apache.camel.model.dataformat.DfdlDataFormat",
                          },
                      required = { dfdl = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            fhirJson =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.FhirJsonDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { fhirJson = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            fhirXml =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.FhirXmlDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { fhirXml = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            flatpack =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.FlatpackDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { flatpack = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            fury =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.FuryDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { fury = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            grok =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.GrokDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { grok = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            gzipDeflater =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.GzipDeflaterDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { gzipDeflater = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            hl7 =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.HL7DataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { hl7 = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            ical =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.IcalDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { ical = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            jacksonXml =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.JacksonXMLDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { jacksonXml = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            jaxb =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.JaxbDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { jaxb = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            json =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.JsonDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { json = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            jsonApi =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.JsonApiDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { jsonApi = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            lzf =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.LZFDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { lzf = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            mimeMultipart =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.MimeMultipartDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { mimeMultipart = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            parquetAvro =
                              refs."items.definitions.org.apache.camel.model.dataformat.ParquetAvroDataFormat",
                          },
                      required = { parquetAvro = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            pgp =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.PGPDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { pgp = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            protobuf =
                              refs."items.definitions.org.apache.camel.model.dataformat.ProtobufDataFormat",
                          },
                      required = { protobuf = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            rss =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.RssDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { rss = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            smooks =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.SmooksDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { smooks = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            soap =
                              refs."items.definitions.org.apache.camel.model.dataformat.SoapDataFormat",
                          },
                      required = { soap = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            swiftMt =
                              refs."items.definitions.org.apache.camel.model.dataformat.SwiftMtDataFormat",
                          },
                      required = { swiftMt = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            swiftMx =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.SwiftMxDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { swiftMx = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            syslog =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.SyslogDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { syslog = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            tarFile =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.TarFileDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { tarFile = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            thrift =
                              refs."items.definitions.org.apache.camel.model.dataformat.ThriftDataFormat",
                          },
                      required = { thrift = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            tidyMarkup =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.TidyMarkupDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { tidyMarkup = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            univocityCsv =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.UniVocityCsvDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { univocityCsv = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            univocityFixed =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.UniVocityFixedDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { univocityFixed = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            univocityTsv =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.UniVocityTsvDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { univocityTsv = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            xmlSecurity =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.XMLSecurityDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { xmlSecurity = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            yaml =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.YAMLDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { yaml = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            zipDeflater =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.ZipDeflaterDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { zipDeflater = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            zipFile =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.ZipFileDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { zipFile = true, },
                    }
                ],
              {
                asn1 | js2n.Always | optional,
                avro | js2n.Always | optional,
                barcode | js2n.Always | optional,
                base64 | js2n.Always | optional,
                beanio | js2n.Always | optional,
                bindy | js2n.Always | optional,
                cbor | js2n.Always | optional,
                crypto | js2n.Always | optional,
                csv | js2n.Always | optional,
                custom | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                dfdl | js2n.Always | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                fhirJson | js2n.Always | optional,
                fhirXml | js2n.Always | optional,
                flatpack | js2n.Always | optional,
                fury | js2n.Always | optional,
                grok | js2n.Always | optional,
                gzipDeflater | js2n.Always | optional,
                hl7 | js2n.Always | optional,
                ical | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                jacksonXml | js2n.Always | optional,
                jaxb | js2n.Always | optional,
                json | js2n.Always | optional,
                jsonApi | js2n.Always | optional,
                lzf | js2n.Always | optional,
                mimeMultipart | js2n.Always | optional,
                parquetAvro | js2n.Always | optional,
                pgp | js2n.Always | optional,
                protobuf | js2n.Always | optional,
                rss | js2n.Always | optional,
                smooks | js2n.Always | optional,
                soap | js2n.Always | optional,
                swiftMt | js2n.Always | optional,
                swiftMx | js2n.Always | optional,
                syslog | js2n.Always | optional,
                tarFile | js2n.Always | optional,
                thrift | js2n.Always | optional,
                tidyMarkup | js2n.Always | optional,
                univocityCsv | js2n.Always | optional,
                univocityFixed | js2n.Always | optional,
                univocityTsv | js2n.Always | optional,
                variableReceive
                  | String
                  | doc "To use a variable to store the received message body (only body, not headers). This makes it handy to use variables for user data and to easily control what data to use for sending and receiving. Important: When using receive variable then the received body is stored only in this variable and not on the current message."
                  | optional,
                variableSend
                  | String
                  | doc "To use a variable as the source for the message body to send. This makes it handy to use variables for user data and to easily control what data to use for sending and receiving. Important: When using send variable then the message body is taken from this variable instead of the current message, however the headers from the message will still be used as well. In other words, the variable is used instead of the message body, but everything else is as usual."
                  | optional,
                xmlSecurity | js2n.Always | optional,
                yaml | js2n.Always | optional,
                zipDeflater | js2n.Always | optional,
                zipFile | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.MulticastDefinition" =
        {
            aggregationStrategy
              | String
              | doc "Refers to an AggregationStrategy to be used to assemble the replies from the multicasts, into a single outgoing message from the Multicast. By default Camel will use the last reply as the outgoing message. You can also use a POJO as the AggregationStrategy"
              | optional,
            aggregationStrategyMethodAllowNull
              | Bool
              | doc "If this option is false then the aggregate method is not used if there was no data to enrich. If this option is true then null values is used as the oldExchange (when no data to enrich), when using POJOs as the AggregationStrategy"
              | optional,
            aggregationStrategyMethodName
              | String
              | doc "This option can be used to explicit declare the method name to use, when using POJOs as the AggregationStrategy."
              | optional,
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            executorService
              | String
              | doc "Refers to a custom Thread Pool to be used for parallel processing. Notice if you set this option, then parallel processing is automatic implied, and you do not have to enable that option as well."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            onPrepare
              | String
              | doc "Uses the Processor when preparing the org.apache.camel.Exchange to be send. This can be used to deep-clone messages that should be send, or any custom logic needed before the exchange is send."
              | optional,
            parallelAggregate
              | Bool
              | doc "If enabled then the aggregate method on AggregationStrategy can be called concurrently. Notice that this would require the implementation of AggregationStrategy to be implemented as thread-safe. By default this is false meaning that Camel synchronizes the call to the aggregate method. Though in some use-cases this can be used to archive higher performance when the AggregationStrategy is implemented as thread-safe."
              | optional,
            parallelProcessing
              | Bool
              | doc "If enabled then sending messages to the multicasts occurs concurrently. Note the caller thread will still wait until all messages has been fully processed, before it continues. Its only the sending and processing the replies from the multicasts which happens concurrently. When parallel processing is enabled, then the Camel routing engin will continue processing using last used thread from the parallel thread pool. However, if you want to use the original thread that called the multicast, then make sure to enable the synchronous option as well. In parallel processing mode, you may want to also synchronous = true to force this EIP to process the sub-tasks using the upper bounds of the thread-pool. If using synchronous = false then Camel will allow its reactive routing engine to use as many threads as possible, which may be available due to sub-tasks using other thread-pools such as CompletableFuture.runAsync or others."
              | optional,
            shareUnitOfWork
              | Bool
              | doc "Shares the org.apache.camel.spi.UnitOfWork with the parent and each of the sub messages. Multicast will by default not share unit of work between the parent exchange and each multicasted exchange. This means each sub exchange has its own individual unit of work."
              | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
            stopOnException
              | Bool
              | doc "Will now stop further processing if an exception or failure occurred during processing of an org.apache.camel.Exchange and the caused exception will be thrown. Will also stop if processing the exchange failed (has a fault message) or an exception was thrown and handled by the error handler (such as using onException). In all situations the multicast will stop further processing. This is the same behavior as in pipeline, which is used by the routing engine. The default behavior is to not stop but continue processing till the end"
              | optional,
            streaming
              | Bool
              | doc "If enabled then Camel will process replies out-of-order, eg in the order they come back. If disabled, Camel will process replies in the same order as defined by the multicast."
              | optional,
            synchronous
              | Bool
              | doc "Sets whether synchronous processing should be strictly used. When enabled then the same thread is used to continue routing after the multicast is complete, even if parallel processing is enabled."
              | optional,
            timeout
              | String
              | doc "Sets a total timeout specified in millis, when using parallel processing. If the Multicast hasn't been able to send and process all replies within the given timeframe, then the timeout triggers and the Multicast breaks out and continues. Notice if you provide a TimeoutAwareAggregationStrategy then the timeout method is invoked before breaking out. If the timeout is reached with running tasks still remaining, certain tasks for which it is difficult for Camel to shut down in a graceful manner may continue to run. So use this option with a bit of care."
              | optional,
          },
      "items.definitions.org.apache.camel.model.OnCompletionDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            executorService
              | String
              | doc "To use a custom Thread Pool to be used for parallel processing. Notice if you set this option, then parallel processing is automatic implied, and you do not have to enable that option as well."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            mode
              | std.enum.TagOrString
              | [| 'BeforeConsumer, 'AfterConsumer |]
              | doc "Sets the on completion mode. The default value is AfterConsumer"
              | optional,
            onCompleteOnly
              | Bool
              | doc "Will only synchronize when the org.apache.camel.Exchange completed successfully (no errors)."
              | optional,
            onFailureOnly
              | Bool
              | doc "Will only synchronize when the org.apache.camel.Exchange ended with failure (exception or FAULT message)."
              | optional,
            onWhen
              | refs."items.definitions.org.apache.camel.model.OnWhenDefinition"
              | { _ | Dyn }
              | doc "To use an expression to only trigger routing this completion steps in specific situations"
              | optional,
            parallelProcessing
              | Bool
              | doc "If enabled then the on completion process will run asynchronously by a separate thread from a thread pool. By default this is false, meaning the on completion process will run synchronously using the same caller thread as from the route."
              | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
            useOriginalMessage
              | Bool
              | doc "Will use the original input message body when an org.apache.camel.Exchange for this on completion. The original input message is defensively copied, and the copied message body is converted to org.apache.camel.StreamCache if possible (stream caching is enabled, can be disabled globally or on the original route), to ensure the body can be read when the original message is being used later. If the body is converted to org.apache.camel.StreamCache then the message body on the current org.apache.camel.Exchange is replaced with the org.apache.camel.StreamCache body. If the body is not converted to org.apache.camel.StreamCache then the body will not be able to re-read when accessed later. Important: The original input means the input message that are bounded by the current org.apache.camel.spi.UnitOfWork . An unit of work typically spans one route, or multiple routes if they are connected using internal endpoints such as direct or seda. When messages is passed via external endpoints such as JMS or HTTP then the consumer will create a new unit of work, with the message it received as input as the original input. Also some EIP patterns such as splitter, multicast, will create a new unit of work boundary for the messages in their sub-route (eg the split message); however these EIPs have an option named shareUnitOfWork which allows to combine with the parent unit of work in regard to error handling and therefore use the parent original message. By default this feature is off."
              | optional,
          },
      "items.definitions.org.apache.camel.model.OnExceptionDefinition" =
        {
            continued
              | refs."items.definitions.org.apache.camel.model.ExpressionSubElementDefinition"
              | { _ | Dyn }
              | doc "Sets whether the exchange should handle and continue routing from the point of failure. If this option is enabled then its considered handled as well."
              | optional,
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            exception
              | Array String
              | doc "A set of exceptions to react upon."
              | optional,
            handled
              | refs."items.definitions.org.apache.camel.model.ExpressionSubElementDefinition"
              | { _ | Dyn }
              | doc "Sets whether the exchange should be marked as handled or not."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            onExceptionOccurredRef
              | String
              | doc "Sets a reference to a processor that should be processed just after an exception occurred. Can be used to perform custom logging about the occurred exception at the exact time it happened. Important: Any exception thrown from this processor will be ignored."
              | optional,
            onRedeliveryRef
              | String
              | doc "Sets a reference to a processor that should be processed before a redelivery attempt. Can be used to change the org.apache.camel.Exchange before its being redelivered."
              | optional,
            onWhen
              | refs."items.definitions.org.apache.camel.model.OnWhenDefinition"
              | { _ | Dyn }
              | doc "To use an expression to only trigger this in specific situations"
              | optional,
            redeliveryPolicy
              | refs."items.definitions.org.apache.camel.model.RedeliveryPolicyDefinition"
              | { _ | Dyn }
              | doc "Used for configuring redelivery options"
              | optional,
            redeliveryPolicyRef
              | String
              | doc "Sets a reference to a redelivery policy to lookup in the org.apache.camel.spi.Registry to be used."
              | optional,
            retryWhile
              | refs."items.definitions.org.apache.camel.model.ExpressionSubElementDefinition"
              | { _ | Dyn }
              | doc "Sets the retry while predicate. Will continue retrying until predicate returns false."
              | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
            useOriginalBody
              | Bool
              | doc "Will use the original input org.apache.camel.Message body (original body only) when an org.apache.camel.Exchange is moved to the dead letter queue. Notice: this only applies when all redeliveries attempt have failed and the org.apache.camel.Exchange is doomed for failure. Instead of using the current inprogress org.apache.camel.Exchange IN message we use the original IN message instead. This allows you to store the original input in the dead letter queue instead of the inprogress snapshot of the IN message. For instance if you route transform the IN body during routing and then failed. With the original exchange store in the dead letter queue it might be easier to manually re submit the org.apache.camel.Exchange again as the IN message is the same as when Camel received it. So you should be able to send the org.apache.camel.Exchange to the same input. The difference between useOriginalMessage and useOriginalBody is that the former includes both the original body and headers, where as the latter only includes the original body. You can use the latter to enrich the message with custom headers and include the original message body. The former wont let you do this, as its using the original message body and headers as they are. You cannot enable both useOriginalMessage and useOriginalBody. The original input message is defensively copied, and the copied message body is converted to org.apache.camel.StreamCache if possible (stream caching is enabled, can be disabled globally or on the original route), to ensure the body can be read when the original message is being used later. If the body is converted to org.apache.camel.StreamCache then the message body on the current org.apache.camel.Exchange is replaced with the org.apache.camel.StreamCache body. If the body is not converted to org.apache.camel.StreamCache then the body will not be able to re-read when accessed later. Important: The original input means the input message that are bounded by the current org.apache.camel.spi.UnitOfWork . An unit of work typically spans one route, or multiple routes if they are connected using internal endpoints such as direct or seda. When messages is passed via external endpoints such as JMS or HTTP then the consumer will create a new unit of work, with the message it received as input as the original input. Also some EIP patterns such as splitter, multicast, will create a new unit of work boundary for the messages in their sub-route (eg the split message); however these EIPs have an option named shareUnitOfWork which allows to combine with the parent unit of work in regard to error handling and therefore use the parent original message. By default this feature is off."
              | optional,
            useOriginalMessage
              | Bool
              | doc "Will use the original input org.apache.camel.Message (original body and headers) when an org.apache.camel.Exchange is moved to the dead letter queue. Notice: this only applies when all redeliveries attempt have failed and the org.apache.camel.Exchange is doomed for failure. Instead of using the current inprogress org.apache.camel.Exchange IN message we use the original IN message instead. This allows you to store the original input in the dead letter queue instead of the inprogress snapshot of the IN message. For instance if you route transform the IN body during routing and then failed. With the original exchange store in the dead letter queue it might be easier to manually re submit the org.apache.camel.Exchange again as the IN message is the same as when Camel received it. So you should be able to send the org.apache.camel.Exchange to the same input. The difference between useOriginalMessage and useOriginalBody is that the former includes both the original body and headers, where as the latter only includes the original body. You can use the latter to enrich the message with custom headers and include the original message body. The former wont let you do this, as its using the original message body and headers as they are. You cannot enable both useOriginalMessage and useOriginalBody. The original input message is defensively copied, and the copied message body is converted to org.apache.camel.StreamCache if possible (stream caching is enabled, can be disabled globally or on the original route), to ensure the body can be read when the original message is being used later. If the body is converted to org.apache.camel.StreamCache then the message body on the current org.apache.camel.Exchange is replaced with the org.apache.camel.StreamCache body. If the body is not converted to org.apache.camel.StreamCache then the body will not be able to re-read when accessed later. Important: The original input means the input message that are bounded by the current org.apache.camel.spi.UnitOfWork . An unit of work typically spans one route, or multiple routes if they are connected using internal endpoints such as direct or seda. When messages is passed via external endpoints such as JMS or HTTP then the consumer will create a new unit of work, with the message it received as input as the original input. Also some EIP patterns such as splitter, multicast, will create a new unit of work boundary for the messages in their sub-route (eg the split message); however these EIPs have an option named shareUnitOfWork which allows to combine with the parent unit of work in regard to error handling and therefore use the parent original message. By default this feature is off."
              | optional,
          },
      "items.definitions.org.apache.camel.model.OnFallbackDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            fallbackViaNetwork
              | Bool
              | doc "Whether the fallback goes over the network. If the fallback will go over the network it is another possible point of failure. It is important to execute the fallback command on a separate thread-pool, otherwise if the main command were to become latent and fill the thread-pool this would prevent the fallback from running if the two commands share the same pool."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
          },
      "items.definitions.org.apache.camel.model.OnWhenDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                exchangeProperty | js2n.Always | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.OptimisticLockRetryPolicyDefinition" =
        {
            exponentialBackOff
              | Bool
              | doc "Enable exponential backoff"
              | optional,
            maximumRetries
              | Number
              | doc "Sets the maximum number of retries"
              | optional,
            maximumRetryDelay
              | String
              | doc "Sets the upper value of retry in millis between retries, when using exponential or random backoff"
              | optional,
            randomBackOff | Bool | doc "Enables random backoff" | optional,
            retryDelay
              | String
              | doc "Sets the delay in millis between retries"
              | optional,
          },
      "items.definitions.org.apache.camel.model.OtherwiseDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Disables this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled late at runtime."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
          },
      "items.definitions.org.apache.camel.model.OutputTypeDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            urn | String | doc "Set output type URN.",
            validate
              | Bool
              | doc "Whether if validation is required for this output type."
              | optional,
          },
      "items.definitions.org.apache.camel.model.PausableDefinition" =
        {
            consumerListener | String | doc "Sets the consumer listener to use",
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            untilCheck
              | String
              | doc "References to a java.util.function.Predicate to use for until checks. The predicate is responsible for evaluating whether the processing can resume or not. Such predicate should return true if the consumption can resume, or false otherwise. The exact point of when the predicate is called is dependent on the component, and it may be called on either one of the available events. Implementations should not assume the predicate to be called at any specific point.",
          },
      "items.definitions.org.apache.camel.model.PipelineDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
          },
      "items.definitions.org.apache.camel.model.PolicyDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            ref
              | String
              | doc "Sets a reference to use for lookup the policy in the registry.",
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
          },
      "items.definitions.org.apache.camel.model.PollDefinition" =
        std.contract.Sequence
            [
              std.contract.any_of [ String, js2n.record.Required [ "uri" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    description
                      | String
                      | doc "Sets the description of this node"
                      | optional,
                    disabled
                      | Bool
                      | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    parameters | { _ | Dyn } | optional,
                    timeout
                      | String
                      | doc "Timeout in millis when polling from the external service. The timeout has influence about the poll enrich behavior. It basically operations in three different modes: negative value - Waits until a message is available and then returns it. Warning that this method could block indefinitely if no messages are available. 0 - Attempts to receive a message exchange immediately without waiting and returning null if a message exchange is not available yet. positive value - Attempts to receive a message exchange, waiting up to the given timeout to expire if a message is not yet available. Returns null if timed out The default value is 20000 (20 seconds)."
                      | optional,
                    uri
                      | String
                      | doc "Sets the uri of the endpoint to poll from."
                      | optional,
                    variableReceive
                      | String
                      | doc "To use a variable to store the received message body (only body, not headers). This makes it handy to use variables for user data and to easily control what data to use for sending and receiving. Important: When using receive variable then the received body is stored only in this variable and not on the current message."
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.PollEnrichDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                aggregateOnException
                  | Bool
                  | doc "If this option is false then the aggregate method is not used if there was an exception thrown while trying to retrieve the data to enrich from the resource. Setting this option to true allows end users to control what to do if there was an exception in the aggregate method. For example to suppress the exception or set a custom message body etc."
                  | optional,
                aggregationStrategy
                  | String
                  | doc "Sets the AggregationStrategy to be used to merge the reply from the external service, into a single outgoing message. By default Camel will use the reply from the external service as outgoing message."
                  | optional,
                aggregationStrategyMethodAllowNull
                  | String
                  | doc "If this option is false then the aggregate method is not used if there was no data to enrich. If this option is true then null values is used as the oldExchange (when no data to enrich), when using POJOs as the AggregationStrategy."
                  | optional,
                aggregationStrategyMethodName
                  | String
                  | doc "This option can be used to explicit declare the method name to use, when using POJOs as the AggregationStrategy."
                  | optional,
                allowOptimisedComponents
                  | Bool
                  | doc "Whether to allow components to optimise if they are org.apache.camel.spi.PollDynamicAware"
                  | optional,
                autoStartComponents
                  | Bool
                  | doc "Whether to auto startup components when poll enricher is starting up."
                  | optional,
                cacheSize
                  | Number
                  | doc "Sets the maximum size used by the org.apache.camel.spi.ConsumerCache which is used to cache and reuse consumers when uris are reused. Beware that when using dynamic endpoints then it affects how well the cache can be utilized. If each dynamic endpoint is unique then its best to turn off caching by setting this to -1, which allows Camel to not cache both the producers and endpoints; they are regarded as prototype scoped and will be stopped and discarded after use. This reduces memory usage as otherwise producers/endpoints are stored in memory in the caches. However if there are a high degree of dynamic endpoints that have been used before, then it can benefit to use the cache to reuse both producers and endpoints and therefore the cache size can be set accordingly or rely on the default size (1000). If there is a mix of unique and used before dynamic endpoints, then setting a reasonable cache size can help reduce memory usage to avoid storing too many non frequent used producers."
                  | optional,
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                ignoreInvalidEndpoint
                  | Bool
                  | doc "Ignore the invalidate endpoint exception when try to create a producer with that endpoint"
                  | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                timeout
                  | String
                  | doc "Timeout in millis when polling from the external service. The timeout has influence about the poll enrich behavior. It basically operations in three different modes: negative value - Waits until a message is available and then returns it. Warning that this method could block indefinitely if no messages are available. 0 - Attempts to receive a message exchange immediately without waiting and returning null if a message exchange is not available yet. positive value - Attempts to receive a message exchange, waiting up to the given timeout to expire if a message is not yet available. Returns null if timed out The default value is -1 and therefore the method could block indefinitely, and therefore its recommended to use a timeout value"
                  | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                variableReceive
                  | String
                  | doc "To use a variable to store the received message body (only body, not headers). This makes it handy to use variables for user data and to easily control what data to use for sending and receiving. Important: When using receive variable then the received body is stored only in this variable and not on the current message."
                  | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.ProcessDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            ref
              | String
              | doc "Reference to the Processor to lookup in the registry to use. A Processor is a class of type org.apache.camel.Processor, which can are to be called by this EIP. In this processor you have custom Java code, that can work with the message, such as to do custom business logic, special message manipulations and so on. By default, the ref, will lookup the bean in the Camel registry. The ref can use prefix that controls how the processor is obtained. You can use #bean:myBean where myBean is the id of the Camel processor (lookup). Can also be used for creating new beans by their class name by prefixing with #class, eg #class:com.foo.MyClassType. And it is also possible to refer to singleton beans by their type in the registry by prefixing with #type: syntax, eg #type:com.foo.MyClassType",
          },
      "items.definitions.org.apache.camel.model.ProcessorDefinition" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              {
                aggregate
                  | refs."items.definitions.org.apache.camel.model.AggregateDefinition"
                  | { _ | Dyn }
                  | optional,
                bean
                  | refs."items.definitions.org.apache.camel.model.BeanDefinition"
                  | optional,
                choice
                  | refs."items.definitions.org.apache.camel.model.ChoiceDefinition"
                  | { _ | Dyn }
                  | optional,
                circuitBreaker
                  | refs."items.definitions.org.apache.camel.model.CircuitBreakerDefinition"
                  | { _ | Dyn }
                  | optional,
                claimCheck
                  | refs."items.definitions.org.apache.camel.model.ClaimCheckDefinition"
                  | { _ | Dyn }
                  | optional,
                convertBodyTo
                  | refs."items.definitions.org.apache.camel.model.ConvertBodyDefinition"
                  | optional,
                convertHeaderTo
                  | refs."items.definitions.org.apache.camel.model.ConvertHeaderDefinition"
                  | { _ | Dyn }
                  | optional,
                convertVariableTo
                  | refs."items.definitions.org.apache.camel.model.ConvertVariableDefinition"
                  | { _ | Dyn }
                  | optional,
                delay
                  | refs."items.definitions.org.apache.camel.model.DelayDefinition"
                  | { _ | Dyn }
                  | optional,
                doCatch
                  | refs."items.definitions.org.apache.camel.model.CatchDefinition"
                  | { _ | Dyn }
                  | optional,
                doFinally
                  | refs."items.definitions.org.apache.camel.model.FinallyDefinition"
                  | { _ | Dyn }
                  | optional,
                doTry
                  | refs."items.definitions.org.apache.camel.model.TryDefinition"
                  | { _ | Dyn }
                  | optional,
                dynamicRouter
                  | refs."items.definitions.org.apache.camel.model.DynamicRouterDefinition"
                  | { _ | Dyn }
                  | optional,
                enrich
                  | refs."items.definitions.org.apache.camel.model.EnrichDefinition"
                  | { _ | Dyn }
                  | optional,
                filter
                  | refs."items.definitions.org.apache.camel.model.FilterDefinition"
                  | { _ | Dyn }
                  | optional,
                idempotentConsumer
                  | refs."items.definitions.org.apache.camel.model.IdempotentConsumerDefinition"
                  | { _ | Dyn }
                  | optional,
                kamelet
                  | refs."items.definitions.org.apache.camel.model.KameletDefinition"
                  | optional,
                loadBalance
                  | refs."items.definitions.org.apache.camel.model.LoadBalanceDefinition"
                  | { _ | Dyn }
                  | optional,
                log
                  | refs."items.definitions.org.apache.camel.model.LogDefinition"
                  | optional,
                loop
                  | refs."items.definitions.org.apache.camel.model.LoopDefinition"
                  | { _ | Dyn }
                  | optional,
                marshal
                  | refs."items.definitions.org.apache.camel.model.MarshalDefinition"
                  | { _ | Dyn }
                  | optional,
                multicast
                  | refs."items.definitions.org.apache.camel.model.MulticastDefinition"
                  | { _ | Dyn }
                  | optional,
                pausable
                  | refs."items.definitions.org.apache.camel.model.PausableDefinition"
                  | { _ | Dyn }
                  | optional,
                pipeline
                  | refs."items.definitions.org.apache.camel.model.PipelineDefinition"
                  | { _ | Dyn }
                  | optional,
                policy
                  | refs."items.definitions.org.apache.camel.model.PolicyDefinition"
                  | { _ | Dyn }
                  | optional,
                poll
                  | refs."items.definitions.org.apache.camel.model.PollDefinition"
                  | optional,
                pollEnrich
                  | refs."items.definitions.org.apache.camel.model.PollEnrichDefinition"
                  | { _ | Dyn }
                  | optional,
                process
                  | refs."items.definitions.org.apache.camel.model.ProcessDefinition"
                  | { _ | Dyn }
                  | optional,
                recipientList
                  | refs."items.definitions.org.apache.camel.model.RecipientListDefinition"
                  | { _ | Dyn }
                  | optional,
                removeHeader
                  | refs."items.definitions.org.apache.camel.model.RemoveHeaderDefinition"
                  | optional,
                removeHeaders
                  | refs."items.definitions.org.apache.camel.model.RemoveHeadersDefinition"
                  | optional,
                removeProperties
                  | refs."items.definitions.org.apache.camel.model.RemovePropertiesDefinition"
                  | optional,
                removeProperty
                  | refs."items.definitions.org.apache.camel.model.RemovePropertyDefinition"
                  | optional,
                removeVariable
                  | refs."items.definitions.org.apache.camel.model.RemoveVariableDefinition"
                  | optional,
                resequence
                  | refs."items.definitions.org.apache.camel.model.ResequenceDefinition"
                  | { _ | Dyn }
                  | optional,
                resumable
                  | refs."items.definitions.org.apache.camel.model.ResumableDefinition"
                  | { _ | Dyn }
                  | optional,
                rollback
                  | refs."items.definitions.org.apache.camel.model.RollbackDefinition"
                  | optional,
                routingSlip
                  | refs."items.definitions.org.apache.camel.model.RoutingSlipDefinition"
                  | optional,
                saga
                  | refs."items.definitions.org.apache.camel.model.SagaDefinition"
                  | { _ | Dyn }
                  | optional,
                sample
                  | refs."items.definitions.org.apache.camel.model.SamplingDefinition"
                  | optional,
                script
                  | refs."items.definitions.org.apache.camel.model.ScriptDefinition"
                  | { _ | Dyn }
                  | optional,
                serviceCall
                  | refs."items.definitions.org.apache.camel.model.cloud.ServiceCallDefinition"
                  | optional,
                setBody
                  | refs."items.definitions.org.apache.camel.model.SetBodyDefinition"
                  | { _ | Dyn }
                  | optional,
                setExchangePattern
                  | refs."items.definitions.org.apache.camel.model.SetExchangePatternDefinition"
                  | optional,
                setHeader
                  | refs."items.definitions.org.apache.camel.model.SetHeaderDefinition"
                  | { _ | Dyn }
                  | optional,
                setHeaders
                  | refs."items.definitions.org.apache.camel.model.SetHeadersDefinition"
                  | { _ | Dyn }
                  | optional,
                setProperty
                  | refs."items.definitions.org.apache.camel.model.SetPropertyDefinition"
                  | { _ | Dyn }
                  | optional,
                setVariable
                  | refs."items.definitions.org.apache.camel.model.SetVariableDefinition"
                  | { _ | Dyn }
                  | optional,
                setVariables
                  | refs."items.definitions.org.apache.camel.model.SetVariablesDefinition"
                  | { _ | Dyn }
                  | optional,
                sort
                  | refs."items.definitions.org.apache.camel.model.SortDefinition"
                  | { _ | Dyn }
                  | optional,
                split
                  | refs."items.definitions.org.apache.camel.model.SplitDefinition"
                  | { _ | Dyn }
                  | optional,
                step
                  | refs."items.definitions.org.apache.camel.model.StepDefinition"
                  | { _ | Dyn }
                  | optional,
                stop
                  | refs."items.definitions.org.apache.camel.model.StopDefinition"
                  | { _ | Dyn }
                  | optional,
                threads
                  | refs."items.definitions.org.apache.camel.model.ThreadsDefinition"
                  | { _ | Dyn }
                  | optional,
                throttle
                  | refs."items.definitions.org.apache.camel.model.ThrottleDefinition"
                  | { _ | Dyn }
                  | optional,
                throwException
                  | refs."items.definitions.org.apache.camel.model.ThrowExceptionDefinition"
                  | { _ | Dyn }
                  | optional,
                to
                  | refs."items.definitions.org.apache.camel.model.ToDefinition"
                  | optional,
                toD
                  | refs."items.definitions.org.apache.camel.model.ToDynamicDefinition"
                  | optional,
                tokenizer
                  | refs."items.definitions.org.apache.camel.model.TokenizerDefinition"
                  | { _ | Dyn }
                  | optional,
                transacted
                  | refs."items.definitions.org.apache.camel.model.TransactedDefinition"
                  | { _ | Dyn }
                  | optional,
                transform
                  | refs."items.definitions.org.apache.camel.model.TransformDefinition"
                  | { _ | Dyn }
                  | optional,
                unmarshal
                  | refs."items.definitions.org.apache.camel.model.UnmarshalDefinition"
                  | { _ | Dyn }
                  | optional,
                validate
                  | refs."items.definitions.org.apache.camel.model.ValidateDefinition"
                  | { _ | Dyn }
                  | optional,
                wireTap
                  | refs."items.definitions.org.apache.camel.model.WireTapDefinition"
                  | { _ | Dyn }
                  | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.PropertyDefinition" =
        {
            key | String | doc "The name of the property",
            value | String | doc "The property value.",
          },
      "items.definitions.org.apache.camel.model.PropertyExpressionDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                exchangeProperty | js2n.Always | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                key | String | doc "Property key",
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.RecipientListDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                aggregationStrategy
                  | String
                  | doc "Sets the AggregationStrategy to be used to assemble the replies from the recipients, into a single outgoing message from the RecipientList. By default Camel will use the last reply as the outgoing message. You can also use a POJO as the AggregationStrategy"
                  | optional,
                aggregationStrategyMethodAllowNull
                  | Bool
                  | doc "If this option is false then the aggregate method is not used if there was no data to enrich. If this option is true then null values is used as the oldExchange (when no data to enrich), when using POJOs as the AggregationStrategy"
                  | optional,
                aggregationStrategyMethodName
                  | String
                  | doc "This option can be used to explicit declare the method name to use, when using POJOs as the AggregationStrategy."
                  | optional,
                cacheSize
                  | Number
                  | doc "Sets the maximum size used by the org.apache.camel.spi.ProducerCache which is used to cache and reuse producers when using this recipient list, when uris are reused. Beware that when using dynamic endpoints then it affects how well the cache can be utilized. If each dynamic endpoint is unique then its best to turn off caching by setting this to -1, which allows Camel to not cache both the producers and endpoints; they are regarded as prototype scoped and will be stopped and discarded after use. This reduces memory usage as otherwise producers/endpoints are stored in memory in the caches. However if there are a high degree of dynamic endpoints that have been used before, then it can benefit to use the cache to reuse both producers and endpoints and therefore the cache size can be set accordingly or rely on the default size (1000). If there is a mix of unique and used before dynamic endpoints, then setting a reasonable cache size can help reduce memory usage to avoid storing too many non frequent used producers."
                  | optional,
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                delimiter
                  | String
                  | doc "Delimiter used if the Expression returned multiple endpoints. Can be turned off using the value false. The default value is ,"
                  | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                executorService
                  | String
                  | doc "To use a custom Thread Pool to be used for parallel processing. Notice if you set this option, then parallel processing is automatic implied, and you do not have to enable that option as well."
                  | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                ignoreInvalidEndpoints
                  | Bool
                  | doc "Ignore the invalidate endpoint exception when try to create a producer with that endpoint"
                  | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                onPrepare
                  | String
                  | doc "Uses the Processor when preparing the org.apache.camel.Exchange to be used send. This can be used to deep-clone messages that should be send, or any custom logic needed before the exchange is send."
                  | optional,
                parallelAggregate
                  | Bool
                  | doc "If enabled then the aggregate method on AggregationStrategy can be called concurrently. Notice that this would require the implementation of AggregationStrategy to be implemented as thread-safe. By default this is false meaning that Camel synchronizes the call to the aggregate method. Though in some use-cases this can be used to archive higher performance when the AggregationStrategy is implemented as thread-safe."
                  | optional,
                parallelProcessing
                  | Bool
                  | doc "If enabled then sending messages to the recipients occurs concurrently. Note the caller thread will still wait until all messages has been fully processed, before it continues. Its only the sending and processing the replies from the recipients which happens concurrently. When parallel processing is enabled, then the Camel routing engin will continue processing using last used thread from the parallel thread pool. However, if you want to use the original thread that called the recipient list, then make sure to enable the synchronous option as well. In parallel processing mode, you may want to also synchronous = true to force this EIP to process the sub-tasks using the upper bounds of the thread-pool. If using synchronous = false then Camel will allow its reactive routing engine to use as many threads as possible, which may be available due to sub-tasks using other thread-pools such as CompletableFuture.runAsync or others."
                  | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                shareUnitOfWork
                  | Bool
                  | doc "Shares the org.apache.camel.spi.UnitOfWork with the parent and each of the sub messages. Recipient List will by default not share unit of work between the parent exchange and each recipient exchange. This means each sub exchange has its own individual unit of work."
                  | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                stopOnException
                  | Bool
                  | doc "Will now stop further processing if an exception or failure occurred during processing of an org.apache.camel.Exchange and the caused exception will be thrown. Will also stop if processing the exchange failed (has a fault message) or an exception was thrown and handled by the error handler (such as using onException). In all situations the recipient list will stop further processing. This is the same behavior as in pipeline, which is used by the routing engine. The default behavior is to not stop but continue processing till the end"
                  | optional,
                streaming
                  | Bool
                  | doc "If enabled then Camel will process replies out-of-order, eg in the order they come back. If disabled, Camel will process replies in the same order as defined by the recipient list."
                  | optional,
                synchronous
                  | Bool
                  | doc "Sets whether synchronous processing should be strictly used. When enabled then the same thread is used to continue routing after the recipient list is complete, even if parallel processing is enabled."
                  | optional,
                timeout
                  | String
                  | doc "Sets a total timeout specified in millis, when using parallel processing. If the Recipient List hasn't been able to send and process all replies within the given timeframe, then the timeout triggers and the Recipient List breaks out and continues. Notice if you provide a TimeoutAwareAggregationStrategy then the timeout method is invoked before breaking out. If the timeout is reached with running tasks still remaining, certain tasks for which it is difficult for Camel to shut down in a graceful manner may continue to run. So use this option with a bit of care."
                  | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.RedeliveryPolicyDefinition" =
        {
            allowRedeliveryWhileStopping
              | Bool
              | doc "Controls whether to allow redelivery while stopping/shutting down a route that uses error handling."
              | optional,
            asyncDelayedRedelivery
              | Bool
              | doc "Allow asynchronous delayed redelivery. The route, in particular the consumer's component, must support the Asynchronous Routing Engine (e.g. seda)."
              | optional,
            backOffMultiplier
              | Number
              | doc "Sets the back off multiplier"
              | optional,
            collisionAvoidanceFactor
              | Number
              | doc "Sets the collision avoidance factor"
              | optional,
            delayPattern
              | String
              | doc "Sets the delay pattern with delay intervals."
              | optional,
            disableRedelivery
              | Bool
              | doc "Disables redelivery (same as setting maximum redeliveries to 0)"
              | optional,
            exchangeFormatterRef
              | String
              | doc "Sets the reference of the instance of org.apache.camel.spi.ExchangeFormatter to generate the log message from exchange."
              | optional,
            id | String | doc "The id of this node" | optional,
            logContinued
              | Bool
              | doc "Sets whether continued exceptions should be logged or not. Can be used to include or reduce verbose."
              | optional,
            logExhausted
              | Bool
              | doc "Sets whether exhausted exceptions should be logged or not. Can be used to include or reduce verbose."
              | optional,
            logExhaustedMessageBody
              | Bool
              | doc "Sets whether exhausted message body should be logged including message history or not (supports property placeholders). Can be used to include or reduce verbose. Requires logExhaustedMessageHistory to be enabled."
              | optional,
            logExhaustedMessageHistory
              | Bool
              | doc "Sets whether exhausted exceptions should be logged including message history or not (supports property placeholders). Can be used to include or reduce verbose."
              | optional,
            logHandled
              | Bool
              | doc "Sets whether handled exceptions should be logged or not. Can be used to include or reduce verbose."
              | optional,
            logNewException
              | Bool
              | doc "Sets whether new exceptions should be logged or not. Can be used to include or reduce verbose. A new exception is an exception that was thrown while handling a previous exception."
              | optional,
            logRetryAttempted
              | Bool
              | doc "Sets whether retry attempts should be logged or not. Can be used to include or reduce verbose."
              | optional,
            logRetryStackTrace
              | Bool
              | doc "Sets whether stack traces should be logged when an retry attempt failed. Can be used to include or reduce verbose."
              | optional,
            logStackTrace
              | Bool
              | doc "Sets whether stack traces should be logged. Can be used to include or reduce verbose."
              | optional,
            maximumRedeliveries
              | Number
              | doc "Sets the maximum redeliveries x = redeliver at most x times 0 = no redeliveries -1 = redeliver forever"
              | optional,
            maximumRedeliveryDelay
              | String
              | doc "Sets the maximum delay between redelivery"
              | optional,
            redeliveryDelay
              | String
              | doc "Sets the initial redelivery delay"
              | optional,
            retriesExhaustedLogLevel
              | std.enum.TagOrString
              | [| 'OFF, 'ERROR, 'WARN, 'INFO, 'DEBUG, 'TRACE |]
              | doc "Sets the logging level to use when retries have been exhausted"
              | optional,
            retryAttemptedLogInterval
              | Number
              | doc "Sets the interval to use for logging retry attempts"
              | optional,
            retryAttemptedLogLevel
              | std.enum.TagOrString
              | [| 'OFF, 'ERROR, 'WARN, 'INFO, 'DEBUG, 'TRACE |]
              | doc "Sets the logging level to use for logging retry attempts"
              | optional,
            useCollisionAvoidance
              | Bool
              | doc "Turn on collision avoidance."
              | optional,
            useExponentialBackOff
              | Bool
              | doc "Turn on exponential back off"
              | optional,
          },
      "items.definitions.org.apache.camel.model.RemoveHeaderDefinition" =
        std.contract.Sequence
            [
              std.contract.any_of [ String, js2n.record.Required [ "name" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    description
                      | String
                      | doc "Sets the description of this node"
                      | optional,
                    disabled
                      | Bool
                      | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    name | String | doc "Name of header to remove" | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.RemoveHeadersDefinition" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "pattern" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    description
                      | String
                      | doc "Sets the description of this node"
                      | optional,
                    disabled
                      | Bool
                      | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                      | optional,
                    excludePattern
                      | String
                      | doc "Name or patter of headers to not remove. The pattern is matched in the following order: 1 = exact match 2 = wildcard (pattern ends with a and the name starts with the pattern) 3 = regular expression (all of above is case in-sensitive)."
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    pattern
                      | String
                      | doc "Name or pattern of headers to remove. The pattern is matched in the following order: 1 = exact match 2 = wildcard (pattern ends with a and the name starts with the pattern) 3 = regular expression (all of above is case in-sensitive)."
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.RemovePropertiesDefinition" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "pattern" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    description
                      | String
                      | doc "Sets the description of this node"
                      | optional,
                    disabled
                      | Bool
                      | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                      | optional,
                    excludePattern
                      | String
                      | doc "Name or pattern of properties to not remove. The pattern is matched in the following order: 1 = exact match 2 = wildcard (pattern ends with a and the name starts with the pattern) 3 = regular expression (all of above is case in-sensitive)."
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    pattern
                      | String
                      | doc "Name or pattern of properties to remove. The pattern is matched in the following order: 1 = exact match 2 = wildcard (pattern ends with a and the name starts with the pattern) 3 = regular expression (all of above is case in-sensitive)."
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.RemovePropertyDefinition" =
        std.contract.Sequence
            [
              std.contract.any_of [ String, js2n.record.Required [ "name" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    description
                      | String
                      | doc "Sets the description of this node"
                      | optional,
                    disabled
                      | Bool
                      | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    name
                      | String
                      | doc "Name of property to remove."
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.RemoveVariableDefinition" =
        std.contract.Sequence
            [
              std.contract.any_of [ String, js2n.record.Required [ "name" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    description
                      | String
                      | doc "Sets the description of this node"
                      | optional,
                    disabled
                      | Bool
                      | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    name
                      | String
                      | doc "Name of variable to remove."
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.ResequenceDefinition" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.OneOf
                    [
                      std.contract.Sequence
                        [
                          refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                          { _ | Dyn }
                        ],
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "expression" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "constant" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "csimple" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "datasonnet" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "exchangeProperty" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "groovy" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "header" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "hl7terser" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "java" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "joor" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "jq" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "js" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "jsonpath" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "language" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "method" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "mvel" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "ognl" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "python" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "ref" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "simple" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "spel" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "tokenize" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "variable" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "wasm" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "xpath" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "xquery" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "xtokenize" ],
                            Array Dyn
                          ]),
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                expression =
                                  std.contract.Sequence
                                      [
                                        refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                        { _ | Dyn }
                                      ],
                              },
                          required = { expression = true, },
                        }
                    ],
                  js2n.OneOf
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                batchConfig =
                                  std.contract.Sequence
                                      [
                                        refs."items.definitions.org.apache.camel.model.config.BatchResequencerConfig",
                                        { _ | Dyn }
                                      ],
                              },
                          required = { batchConfig = true, },
                        },
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "batchConfig" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "streamConfig" ],
                            Array Dyn
                          ]),
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                streamConfig =
                                  std.contract.Sequence
                                      [
                                        refs."items.definitions.org.apache.camel.model.config.StreamResequencerConfig",
                                        { _ | Dyn }
                                      ],
                              },
                          required = { streamConfig = true, },
                        }
                    ]
                ],
              {
                batchConfig | js2n.Always | optional,
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                steps
                  | Array (
                    std.contract.Sequence
                      [
                        refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                        { _ | Dyn }
                      ]
                  )
                  | optional,
                streamConfig | js2n.Always | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.Resilience4jConfigurationDefinition" =
        {
            automaticTransitionFromOpenToHalfOpenEnabled
              | Bool
              | doc "Enables automatic transition from OPEN to HALF_OPEN state once the waitDurationInOpenState has passed."
              | optional,
            bulkheadEnabled
              | Bool
              | doc "Whether bulkhead is enabled or not on the circuit breaker. Default is false."
              | optional,
            bulkheadMaxConcurrentCalls
              | Number
              | doc "Configures the max amount of concurrent calls the bulkhead will support."
              | optional,
            bulkheadMaxWaitDuration
              | Number
              | doc "Configures a maximum amount of time which the calling thread will wait to enter the bulkhead. If bulkhead has space available, entry is guaranteed and immediate. If bulkhead is full, calling threads will contest for space, if it becomes available. maxWaitDuration can be set to 0. Note: for threads running on an event-loop or equivalent (rx computation pool, etc), setting maxWaitDuration to 0 is highly recommended. Blocking an event-loop thread will most likely have a negative effect on application throughput."
              | optional,
            circuitBreaker
              | String
              | doc "Refers to an existing io.github.resilience4j.circuitbreaker.CircuitBreaker instance to lookup and use from the registry. When using this, then any other circuit breaker options are not in use."
              | optional,
            config
              | String
              | doc "Refers to an existing io.github.resilience4j.circuitbreaker.CircuitBreakerConfig instance to lookup and use from the registry."
              | optional,
            failureRateThreshold
              | Number
              | doc "Configures the failure rate threshold in percentage. If the failure rate is equal or greater than the threshold the CircuitBreaker transitions to open and starts short-circuiting calls. The threshold must be greater than 0 and not greater than 100. Default value is 50 percentage."
              | optional,
            id | String | doc "The id of this node" | optional,
            ignoreException
              | Array String
              | doc "Configure a list of exceptions that are ignored and neither count as a failure nor success. Any exception matching or inheriting from one of the list will not count as a failure nor success, even if the exceptions is part of recordExceptions."
              | optional,
            minimumNumberOfCalls
              | Number
              | doc "Configures the minimum number of calls which are required (per sliding window period) before the CircuitBreaker can calculate the error rate. For example, if minimumNumberOfCalls is 10, then at least 10 calls must be recorded, before the failure rate can be calculated. If only 9 calls have been recorded the CircuitBreaker will not transition to open even if all 9 calls have failed. Default minimumNumberOfCalls is 100"
              | optional,
            permittedNumberOfCallsInHalfOpenState
              | Number
              | doc "Configures the number of permitted calls when the CircuitBreaker is half open. The size must be greater than 0. Default size is 10."
              | optional,
            recordException
              | Array String
              | doc "Configure a list of exceptions that are recorded as a failure and thus increase the failure rate. Any exception matching or inheriting from one of the list counts as a failure, unless explicitly ignored via ignoreExceptions."
              | optional,
            slidingWindowSize
              | Number
              | doc "Configures the size of the sliding window which is used to record the outcome of calls when the CircuitBreaker is closed. slidingWindowSize configures the size of the sliding window. Sliding window can either be count-based or time-based. If slidingWindowType is COUNT_BASED, the last slidingWindowSize calls are recorded and aggregated. If slidingWindowType is TIME_BASED, the calls of the last slidingWindowSize seconds are recorded and aggregated. The slidingWindowSize must be greater than 0. The minimumNumberOfCalls must be greater than 0. If the slidingWindowType is COUNT_BASED, the minimumNumberOfCalls cannot be greater than slidingWindowSize . If the slidingWindowType is TIME_BASED, you can pick whatever you want. Default slidingWindowSize is 100."
              | optional,
            slidingWindowType
              | std.enum.TagOrString
              | [| 'COUNT_BASED, 'TIME_BASED |]
              | doc "Configures the type of the sliding window which is used to record the outcome of calls when the CircuitBreaker is closed. Sliding window can either be count-based or time-based. If slidingWindowType is COUNT_BASED, the last slidingWindowSize calls are recorded and aggregated. If slidingWindowType is TIME_BASED, the calls of the last slidingWindowSize seconds are recorded and aggregated. Default slidingWindowType is COUNT_BASED."
              | optional,
            slowCallDurationThreshold
              | Number
              | doc "Configures the duration threshold (seconds) above which calls are considered as slow and increase the slow calls percentage. Default value is 60 seconds."
              | optional,
            slowCallRateThreshold
              | Number
              | doc "Configures a threshold in percentage. The CircuitBreaker considers a call as slow when the call duration is greater than slowCallDurationThreshold Duration. When the percentage of slow calls is equal or greater the threshold, the CircuitBreaker transitions to open and starts short-circuiting calls. The threshold must be greater than 0 and not greater than 100. Default value is 100 percentage which means that all recorded calls must be slower than slowCallDurationThreshold."
              | optional,
            throwExceptionWhenHalfOpenOrOpenState
              | Bool
              | doc "Whether to throw io.github.resilience4j.circuitbreaker.CallNotPermittedException when the call is rejected due circuit breaker is half open or open."
              | optional,
            timeoutCancelRunningFuture
              | Bool
              | doc "Configures whether cancel is called on the running future. Defaults to true."
              | optional,
            timeoutDuration
              | Number
              | doc "Configures the thread execution timeout. Default value is 1 second."
              | optional,
            timeoutEnabled
              | Bool
              | doc "Whether timeout is enabled or not on the circuit breaker. Default is false."
              | optional,
            timeoutExecutorService
              | String
              | doc "References to a custom thread pool to use when timeout is enabled (uses ForkJoinPool#commonPool() by default)"
              | optional,
            waitDurationInOpenState
              | Number
              | doc "Configures the wait duration (in seconds) which specifies how long the CircuitBreaker should stay open, before it switches to half open. Default value is 60 seconds."
              | optional,
            writableStackTraceEnabled
              | Bool
              | doc "Enables writable stack traces. When set to false, Exception.getStackTrace returns a zero length array. This may be used to reduce log spam when the circuit breaker is open as the cause of the exceptions is already known (the circuit breaker is short-circuiting calls)."
              | optional,
          },
      "items.definitions.org.apache.camel.model.ResumableDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            intermittent
              | Bool
              | doc "Sets whether the offsets will be intermittently present or whether they must be present in every exchange"
              | optional,
            loggingLevel
              | std.enum.TagOrString
              | [| 'OFF, 'ERROR, 'WARN, 'INFO, 'DEBUG, 'TRACE |]
              | doc "The logging level to use in case of failures."
              | optional,
            resumeStrategy | String | doc "Sets the resume strategy to use",
          },
      "items.definitions.org.apache.camel.model.RollbackDefinition" =
        std.contract.any_of
            [
              String,
              {
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                id | String | doc "Sets the id of this node" | optional,
                markRollbackOnly
                  | Bool
                  | doc "Mark the transaction for rollback only (cannot be overruled to commit)"
                  | optional,
                markRollbackOnlyLast
                  | Bool
                  | doc "Mark only last sub transaction for rollback only. When using sub transactions (if the transaction manager support this)"
                  | optional,
                message
                  | String
                  | doc "Message to use in rollback exception"
                  | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.RouteConfigurationDefinition" =
        {
            description | String | optional,
            errorHandler
              | refs."items.definitions.org.apache.camel.model.ErrorHandlerDefinition"
              | { _ | Dyn }
              | optional,
            id | String | optional,
            intercept
              | Array
                {
                  intercept
                    | refs."items.definitions.org.apache.camel.model.InterceptDefinition"
                    | { _ | Dyn }
                    | optional,
                }
              | optional,
            interceptFrom
              | Array
                {
                  interceptFrom
                    | refs."items.definitions.org.apache.camel.model.InterceptFromDefinition"
                    | optional,
                }
              | optional,
            interceptSendToEndpoint
              | Array
                {
                  interceptSendToEndpoint
                    | refs."items.definitions.org.apache.camel.model.InterceptSendToEndpointDefinition"
                    | optional,
                }
              | optional,
            onCompletion
              | Array
                {
                  onCompletion
                    | refs."items.definitions.org.apache.camel.model.OnCompletionDefinition"
                    | { _ | Dyn }
                    | optional,
                }
              | optional,
            onException
              | Array
                {
                  onException
                    | refs."items.definitions.org.apache.camel.model.OnExceptionDefinition"
                    | { _ | Dyn }
                    | optional,
                }
              | optional,
            precondition | String | optional,
          },
      "items.definitions.org.apache.camel.model.RouteDefinition" =
        {
            autoStartup | Bool | optional,
            description | String | optional,
            errorHandler
              | refs."items.definitions.org.apache.camel.model.ErrorHandlerDefinition"
              | { _ | Dyn }
              | optional,
            errorHandlerRef | String | optional,
            from
              | refs."items.definitions.org.apache.camel.model.FromDefinition"
              | { _ | Dyn },
            group | String | optional,
            id | String | optional,
            inputType
              | refs."items.definitions.org.apache.camel.model.InputTypeDefinition"
              | { _ | Dyn }
              | optional,
            logMask | Bool | optional,
            messageHistory | Bool | optional,
            nodePrefixId | String | optional,
            outputType
              | refs."items.definitions.org.apache.camel.model.OutputTypeDefinition"
              | { _ | Dyn }
              | optional,
            precondition | String | optional,
            routeConfigurationId | String | optional,
            routePolicy | String | optional,
            shutdownRoute
              | std.enum.TagOrString
              | [| 'Defer, 'Default |]
              | doc "To control how to shut down the route."
              | optional,
            shutdownRunningTask
              | std.enum.TagOrString
              | [| 'CompleteAllTasks, 'CompleteCurrentTaskOnly |]
              | doc "To control how to shut down the route."
              | optional,
            startupOrder | Number | optional,
            streamCache | Bool | optional,
            trace | Bool | optional,
          },
      "items.definitions.org.apache.camel.model.RouteTemplateDefinition" =
        {
            beans
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.BeanFactoryDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
            description | String | optional,
            from
              | refs."items.definitions.org.apache.camel.model.FromDefinition"
              | { _ | Dyn }
              | optional,
            id | String,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.RouteTemplateParameterDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
            route
              | refs."items.definitions.org.apache.camel.model.RouteDefinition"
              | { _ | Dyn }
              | optional,
          },
      "items.definitions.org.apache.camel.model.RouteTemplateParameterDefinition" =
        {
            defaultValue
              | String
              | doc "Default value of the parameter. If a default value is provided then the parameter is implied not to be required."
              | optional,
            description
              | String
              | doc "Description of the parameter"
              | optional,
            name | String | doc "The name of the parameter",
            required
              | Bool
              | doc "Whether the parameter is required or not. A parameter is required unless this option is set to false or a default value has been configured."
              | optional,
          },
      "items.definitions.org.apache.camel.model.RoutingSlipDefinition" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [
                  js2n.OneOf
                    [
                      std.contract.Sequence
                        [
                          refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                          { _ | Dyn }
                        ],
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "expression" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "constant" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "csimple" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "datasonnet" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "exchangeProperty" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "groovy" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "header" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "hl7terser" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "java" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "joor" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "jq" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "js" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "jsonpath" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "language" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "method" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "mvel" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "ognl" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "python" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "ref" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "simple" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "spel" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "tokenize" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "variable" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "wasm" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "xpath" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "xquery" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "xtokenize" ],
                            Array Dyn
                          ]),
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                expression =
                                  std.contract.Sequence
                                      [
                                        refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                        { _ | Dyn }
                                      ],
                              },
                          required = { expression = true, },
                        }
                    ],
                  {
                    cacheSize
                      | Number
                      | doc "Sets the maximum size used by the org.apache.camel.spi.ProducerCache which is used to cache and reuse producers when using this routing slip, when uris are reused. Beware that when using dynamic endpoints then it affects how well the cache can be utilized. If each dynamic endpoint is unique then its best to turn off caching by setting this to -1, which allows Camel to not cache both the producers and endpoints; they are regarded as prototype scoped and will be stopped and discarded after use. This reduces memory usage as otherwise producers/endpoints are stored in memory in the caches. However if there are a high degree of dynamic endpoints that have been used before, then it can benefit to use the cache to reuse both producers and endpoints and therefore the cache size can be set accordingly or rely on the default size (1000). If there is a mix of unique and used before dynamic endpoints, then setting a reasonable cache size can help reduce memory usage to avoid storing too many non frequent used producers."
                      | optional,
                    constant | js2n.Always | optional,
                    csimple | js2n.Always | optional,
                    datasonnet | js2n.Always | optional,
                    description
                      | String
                      | doc "Sets the description of this node"
                      | optional,
                    disabled
                      | Bool
                      | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                      | optional,
                    exchangeProperty | js2n.Always | optional,
                    expression | js2n.Always | optional,
                    groovy | js2n.Always | optional,
                    header | js2n.Always | optional,
                    hl7terser | js2n.Always | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    ignoreInvalidEndpoints
                      | Bool
                      | doc "Ignore the invalidate endpoint exception when try to create a producer with that endpoint"
                      | optional,
                    java | js2n.Always | optional,
                    joor | js2n.Always | optional,
                    jq | js2n.Always | optional,
                    js | js2n.Always | optional,
                    jsonpath | js2n.Always | optional,
                    language | js2n.Always | optional,
                    method | js2n.Always | optional,
                    mvel | js2n.Always | optional,
                    ognl | js2n.Always | optional,
                    python | js2n.Always | optional,
                    ref | js2n.Always | optional,
                    simple | js2n.Always | optional,
                    spel | js2n.Always | optional,
                    tokenize | js2n.Always | optional,
                    uriDelimiter
                      | String
                      | doc "Sets the uri delimiter to use"
                      | optional,
                    variable | js2n.Always | optional,
                    wasm | js2n.Always | optional,
                    xpath | js2n.Always | optional,
                    xquery | js2n.Always | optional,
                    xtokenize | js2n.Always | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.SagaActionUriDefinition" =
        std.contract.Sequence
            [
              std.contract.any_of [ String, js2n.record.Required [ "uri" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    description | String | optional,
                    disabled | Bool | optional,
                    id | String | optional,
                    parameters | { _ | Dyn } | optional,
                    uri | String | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.SagaDefinition" =
        {
            compensation
              | refs."items.definitions.org.apache.camel.model.SagaActionUriDefinition"
              | doc "The compensation endpoint URI that must be called to compensate all changes done in the route. The route corresponding to the compensation URI must perform compensation and complete without error. If errors occur during compensation, the saga service may call again the compensation URI to retry."
              | optional,
            completion
              | refs."items.definitions.org.apache.camel.model.SagaActionUriDefinition"
              | doc "The completion endpoint URI that will be called when the Saga is completed successfully. The route corresponding to the completion URI must perform completion tasks and terminate without error. If errors occur during completion, the saga service may call again the completion URI to retry."
              | optional,
            completionMode
              | std.enum.TagOrString
              | [| 'MANUAL, 'AUTO |]
              | doc "Determine how the saga should be considered complete. When set to AUTO, the saga is completed when the exchange that initiates the saga is processed successfully, or compensated when it completes exceptionally. When set to MANUAL, the user must complete or compensate the saga using the saga:complete or saga:compensate endpoints."
              | optional,
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            option
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.PropertyExpressionDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Allows to save properties of the current exchange in order to re-use them in a compensation/completion callback route. Options are usually helpful e.g. to store and retrieve identifiers of objects that should be deleted in compensating actions. Option values will be transformed into input headers of the compensation/completion exchange."
              | optional,
            propagation
              | std.enum.TagOrString
              | [|
                'NEVER,
                'NOT_SUPPORTED,
                'SUPPORTS,
                'MANDATORY,
                'REQUIRES_NEW,
                'REQUIRED
              |]
              | doc "Set the Saga propagation mode (REQUIRED, REQUIRES_NEW, MANDATORY, SUPPORTS, NOT_SUPPORTED, NEVER)."
              | optional,
            sagaService
              | String
              | doc "Refers to the id to lookup in the registry for the specific CamelSagaService to use."
              | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
            timeout
              | String
              | doc "Set the maximum amount of time for the Saga. After the timeout is expired, the saga will be compensated automatically (unless a different decision has been taken in the meantime)."
              | optional,
          },
      "items.definitions.org.apache.camel.model.SamplingDefinition" =
        std.contract.any_of
            [
              String,
              {
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                id | String | doc "Sets the id of this node" | optional,
                messageFrequency
                  | Number
                  | doc "Sets the sample message count which only a single Exchange will pass through after this many received."
                  | optional,
                samplePeriod
                  | String
                  | doc "Sets the sample period during which only a single Exchange will pass through."
                  | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.ScriptDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.SetBodyDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.SetExchangePatternDefinition" =
        std.contract.any_of
            [
              String,
              {
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                id | String | doc "Sets the id of this node" | optional,
                pattern
                  | std.enum.TagOrString
                  | [| 'InOut, 'InOnly |]
                  | doc "Sets the new exchange pattern of the Exchange to be used from this point forward"
                  | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.SetHeaderDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                name
                  | String
                  | doc "Name of message header to set a new value The simple language can be used to define a dynamic evaluated header name to be used. Otherwise a constant name will be used.",
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.SetHeadersDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            headers
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.SetHeaderDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Contains the headers to be set"
              | optional,
            id | String | doc "Sets the id of this node" | optional,
          },
      "items.definitions.org.apache.camel.model.SetPropertyDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                name
                  | String
                  | doc "Name of exchange property to set a new value. The simple language can be used to define a dynamic evaluated exchange property name to be used. Otherwise a constant name will be used.",
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.SetVariableDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                name
                  | String
                  | doc "Name of variable to set a new value The simple language can be used to define a dynamic evaluated variable name to be used. Otherwise a constant name will be used.",
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.SetVariablesDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            variables
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.SetVariableDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Contains the variables to be set"
              | optional,
          },
      "items.definitions.org.apache.camel.model.SortDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                comparator
                  | String
                  | doc "Sets the comparator to use for sorting"
                  | optional,
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.SplitDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                aggregationStrategy
                  | String
                  | doc "Sets a reference to the AggregationStrategy to be used to assemble the replies from the split messages, into a single outgoing message from the Splitter. By default Camel will use the original incoming message to the splitter (leave it unchanged). You can also use a POJO as the AggregationStrategy"
                  | optional,
                aggregationStrategyMethodAllowNull
                  | Bool
                  | doc "If this option is false then the aggregate method is not used if there was no data to enrich. If this option is true then null values is used as the oldExchange (when no data to enrich), when using POJOs as the AggregationStrategy"
                  | optional,
                aggregationStrategyMethodName
                  | String
                  | doc "This option can be used to explicit declare the method name to use, when using POJOs as the AggregationStrategy."
                  | optional,
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                delimiter
                  | String
                  | doc "Delimiter used in splitting messages. Can be turned off using the value false. To force not splitting then the delimiter can be set to single to use the value as a single list, this can be needed in some special situations. The default value is comma."
                  | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                executorService
                  | String
                  | doc "To use a custom Thread Pool to be used for parallel processing. Notice if you set this option, then parallel processing is automatically implied, and you do not have to enable that option as well."
                  | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                onPrepare
                  | String
                  | doc "Uses the Processor when preparing the org.apache.camel.Exchange to be sent. This can be used to deep-clone messages that should be sent, or any custom logic needed before the exchange is sent."
                  | optional,
                parallelAggregate
                  | Bool
                  | doc "If enabled then the aggregate method on AggregationStrategy can be called concurrently. Notice that this would require the implementation of AggregationStrategy to be implemented as thread-safe. By default this is false meaning that Camel synchronizes the call to the aggregate method. Though in some use-cases this can be used to archive higher performance when the AggregationStrategy is implemented as thread-safe."
                  | optional,
                parallelProcessing
                  | Bool
                  | doc "If enabled then processing each split messages occurs concurrently. Note the caller thread will still wait until all messages has been fully processed, before it continues. It's only processing the sub messages from the splitter which happens concurrently. When parallel processing is enabled, then the Camel routing engin will continue processing using last used thread from the parallel thread pool. However, if you want to use the original thread that called the splitter, then make sure to enable the synchronous option as well. In parallel processing mode, you may want to also synchronous = true to force this EIP to process the sub-tasks using the upper bounds of the thread-pool. If using synchronous = false then Camel will allow its reactive routing engine to use as many threads as possible, which may be available due to sub-tasks using other thread-pools such as CompletableFuture.runAsync or others."
                  | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                shareUnitOfWork
                  | Bool
                  | doc "Shares the org.apache.camel.spi.UnitOfWork with the parent and each of the sub messages. Splitter will by default not share unit of work between the parent exchange and each split exchange. This means each split exchange has its own individual unit of work."
                  | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                steps
                  | Array (
                    std.contract.Sequence
                      [
                        refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                        { _ | Dyn }
                      ]
                  )
                  | optional,
                stopOnException
                  | Bool
                  | doc "Will now stop further processing if an exception or failure occurred during processing of an org.apache.camel.Exchange and the caused exception will be thrown. Will also stop if processing the exchange failed (has a fault message) or an exception was thrown and handled by the error handler (such as using onException). In all situations the splitter will stop further processing. This is the same behavior as in pipeline, which is used by the routing engine. The default behavior is to not stop but continue processing till the end"
                  | optional,
                streaming
                  | Bool
                  | doc "When in streaming mode, then the splitter splits the original message on-demand, and each split message is processed one by one. This reduces memory usage as the splitter do not split all the messages first, but then we do not know the total size, and therefore the org.apache.camel.Exchange#SPLIT_SIZE is empty. In non-streaming mode (default) the splitter will split each message first, to know the total size, and then process each message one by one. This requires to keep all the split messages in memory and therefore requires more memory. The total size is provided in the org.apache.camel.Exchange#SPLIT_SIZE header. The streaming mode also affects the aggregation behavior. If enabled then Camel will process replies out-of-order, e.g. in the order they come back. If disabled, Camel will process replies in the same order as the messages was split."
                  | optional,
                synchronous
                  | Bool
                  | doc "Sets whether synchronous processing should be strictly used. When enabled then the same thread is used to continue routing after the split is complete, even if parallel processing is enabled."
                  | optional,
                timeout
                  | String
                  | doc "Sets a total timeout specified in millis, when using parallel processing. If the Splitter hasn't been able to split and process all the sub messages within the given timeframe, then the timeout triggers and the Splitter breaks out and continues. Notice if you provide a TimeoutAwareAggregationStrategy then the timeout method is invoked before breaking out. If the timeout is reached with running tasks still remaining, certain tasks for which it is difficult for Camel to shut down in a graceful manner may continue to run. So use this option with a bit of care."
                  | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.StepDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
          },
      "items.definitions.org.apache.camel.model.StopDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
          },
      "items.definitions.org.apache.camel.model.TemplatedRouteDefinition" =
        {
            beans
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.BeanFactoryDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.TemplatedRouteParameterDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
            prefixId | String | optional,
            routeId | String | optional,
            routeTemplateRef | String,
          },
      "items.definitions.org.apache.camel.model.TemplatedRouteParameterDefinition" =
        {
            name | String | doc "The name of the parameter",
            value | String | doc "The value of the parameter.",
          },
      "items.definitions.org.apache.camel.model.ThreadsDefinition" =
        {
            allowCoreThreadTimeOut
              | Bool
              | doc "Whether idle core threads are allowed to timeout and therefore can shrink the pool size below the core pool size Is by default false"
              | optional,
            callerRunsWhenRejected
              | String
              | doc "Whether or not to use as caller runs as fallback when a task is rejected being added to the thread pool (when its full). This is only used as fallback if no rejectedPolicy has been configured, or the thread pool has no configured rejection handler. Is by default true"
              | optional,
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            executorService
              | String
              | doc "To use a custom thread pool"
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            keepAliveTime
              | Number
              | doc "Sets the keep alive time for idle threads"
              | optional,
            maxPoolSize | Number | doc "Sets the maximum pool size" | optional,
            maxQueueSize
              | Number
              | doc "Sets the maximum number of tasks in the work queue. Use -1 or Integer.MAX_VALUE for an unbounded queue"
              | optional,
            poolSize | Number | doc "Sets the core pool size" | optional,
            rejectedPolicy
              | std.enum.TagOrString
              | [| 'CallerRuns, 'Abort |]
              | doc "Sets the handler for tasks which cannot be executed by the thread pool."
              | optional,
            threadName | String | doc "Sets the thread name to use." | optional,
            timeUnit
              | std.enum.TagOrString
              | [|
                'DAYS,
                'HOURS,
                'MINUTES,
                'SECONDS,
                'MILLISECONDS,
                'MICROSECONDS,
                'NANOSECONDS
              |]
              | doc "Sets the keep alive time unit. By default SECONDS is used."
              | optional,
          },
      "items.definitions.org.apache.camel.model.ThrottleDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                asyncDelayed
                  | Bool
                  | doc "Enables asynchronous delay which means the thread will not block while delaying."
                  | optional,
                callerRunsWhenRejected
                  | Bool
                  | doc "Whether or not the caller should run the task when it was rejected by the thread pool. Is by default true"
                  | optional,
                constant | js2n.Always | optional,
                correlationExpression
                  | refs."items.definitions.org.apache.camel.model.ExpressionSubElementDefinition"
                  | { _ | Dyn }
                  | doc "The expression used to calculate the correlation key to use for throttle grouping. The Exchange which has the same correlation key is throttled together."
                  | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                executorService
                  | String
                  | doc "To use a custom thread pool (ScheduledExecutorService) by the throttler."
                  | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mode
                  | std.enum.TagOrString
                  | [| 'ConcurrentRequests, 'TotalRequests |]
                  | doc "Sets the throttling mode to one of the available modes enumerated in ThrottlingMode"
                  | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                rejectExecution
                  | Bool
                  | doc "Whether or not throttler throws the ThrottlerRejectedExecutionException when the exchange exceeds the request limit Is by default false"
                  | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                timePeriodMillis
                  | String
                  | doc "Sets the time period during which the maximum request count is valid for"
                  | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.ThrowExceptionDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            exceptionType
              | String
              | doc "The class of the exception to create using the message."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            message
              | String
              | doc "To create a new exception instance and use the given message as caused message (supports simple language)"
              | optional,
            ref
              | String
              | doc "Reference to the exception instance to lookup from the registry to throw"
              | optional,
          },
      "items.definitions.org.apache.camel.model.ToDefinition" =
        std.contract.Sequence
            [
              std.contract.any_of [ String, js2n.record.Required [ "uri" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    description
                      | String
                      | doc "Sets the description of this node"
                      | optional,
                    disabled
                      | Bool
                      | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    parameters | { _ | Dyn } | optional,
                    pattern
                      | std.enum.TagOrString
                      | [| 'InOut, 'InOnly |]
                      | doc "Sets the optional ExchangePattern used to invoke this endpoint"
                      | optional,
                    uri
                      | String
                      | doc "Sets the uri of the endpoint to send to."
                      | optional,
                    variableReceive
                      | String
                      | doc "To use a variable to store the received message body (only body, not headers). This makes it handy to use variables for user data and to easily control what data to use for sending and receiving. Important: When using receive variable then the received body is stored only in this variable and not on the current message."
                      | optional,
                    variableSend
                      | String
                      | doc "To use a variable as the source for the message body to send. This makes it handy to use variables for user data and to easily control what data to use for sending and receiving. Important: When using send variable then the message body is taken from this variable instead of the current message, however the headers from the message will still be used as well. In other words, the variable is used instead of the message body, but everything else is as usual."
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.ToDynamicDefinition" =
        std.contract.Sequence
            [
              std.contract.any_of [ String, js2n.record.Required [ "uri" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    allowOptimisedComponents
                      | Bool
                      | doc "Whether to allow components to optimise toD if they are org.apache.camel.spi.SendDynamicAware ."
                      | optional,
                    autoStartComponents
                      | Bool
                      | doc "Whether to auto startup components when toD is starting up."
                      | optional,
                    cacheSize
                      | Number
                      | doc "Sets the maximum size used by the org.apache.camel.spi.ProducerCache which is used to cache and reuse producers when using this recipient list, when uris are reused. Beware that when using dynamic endpoints then it affects how well the cache can be utilized. If each dynamic endpoint is unique then its best to turn off caching by setting this to -1, which allows Camel to not cache both the producers and endpoints; they are regarded as prototype scoped and will be stopped and discarded after use. This reduces memory usage as otherwise producers/endpoints are stored in memory in the caches. However if there are a high degree of dynamic endpoints that have been used before, then it can benefit to use the cache to reuse both producers and endpoints and therefore the cache size can be set accordingly or rely on the default size (1000). If there is a mix of unique and used before dynamic endpoints, then setting a reasonable cache size can help reduce memory usage to avoid storing too many non frequent used producers."
                      | optional,
                    description
                      | String
                      | doc "Sets the description of this node"
                      | optional,
                    disabled
                      | Bool
                      | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    ignoreInvalidEndpoint
                      | Bool
                      | doc "Whether to ignore invalid endpoint URIs and skip sending the message."
                      | optional,
                    parameters | { _ | Dyn } | optional,
                    pattern
                      | std.enum.TagOrString
                      | [| 'InOut, 'InOnly |]
                      | doc "Sets the optional ExchangePattern used to invoke this endpoint"
                      | optional,
                    uri
                      | String
                      | doc "The uri of the endpoint to send to. The uri can be dynamic computed using the org.apache.camel.language.simple.SimpleLanguage expression."
                      | optional,
                    variableReceive
                      | String
                      | doc "To use a variable as the source for the message body to send. This makes it handy to use variables for user data and to easily control what data to use for sending and receiving. Important: When using send variable then the message body is taken from this variable instead of the current Message , however the headers from the Message will still be used as well. In other words, the variable is used instead of the message body, but everything else is as usual."
                      | optional,
                    variableSend
                      | String
                      | doc "To use a variable as the source for the message body to send. This makes it handy to use variables for user data and to easily control what data to use for sending and receiving. Important: When using send variable then the message body is taken from this variable instead of the current message, however the headers from the message will still be used as well. In other words, the variable is used instead of the message body, but everything else is as usual."
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.TokenizerDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            langChain4jCharacterTokenizer =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.tokenizer.LangChain4jCharacterTokenizerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { langChain4jCharacterTokenizer = true, },
                    },
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required
                          [ "langChain4jCharacterTokenizer" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "langChain4jLineTokenizer" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required
                          [ "langChain4jParagraphTokenizer" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "langChain4jSentenceTokenizer" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "langChain4jWordTokenizer" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            langChain4jLineTokenizer =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.tokenizer.LangChain4jLineTokenizerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { langChain4jLineTokenizer = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            langChain4jParagraphTokenizer =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.tokenizer.LangChain4jParagraphTokenizerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { langChain4jParagraphTokenizer = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            langChain4jSentenceTokenizer =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.tokenizer.LangChain4jSentenceTokenizerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { langChain4jSentenceTokenizer = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            langChain4jWordTokenizer =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.tokenizer.LangChain4jWordTokenizerDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { langChain4jWordTokenizer = true, },
                    }
                ],
              {
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                id | String | doc "Sets the id of this node" | optional,
                langChain4jCharacterTokenizer | js2n.Always | optional,
                langChain4jLineTokenizer | js2n.Always | optional,
                langChain4jParagraphTokenizer | js2n.Always | optional,
                langChain4jSentenceTokenizer | js2n.Always | optional,
                langChain4jWordTokenizer | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.TransactedDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            ref
              | String
              | doc "Sets a reference to use for lookup the policy in the registry."
              | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
          },
      "items.definitions.org.apache.camel.model.TransformDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                expression | js2n.Always | optional,
                fromType
                  | String
                  | doc "From type used in data type transformation."
                  | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                toType
                  | String
                  | doc "To type used as a target data type in the transformation."
                  | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.TryDefinition" =
        {
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            doCatch
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.CatchDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Catches exceptions as part of a try, catch, finally block"
              | optional,
            doFinally
              | refs."items.definitions.org.apache.camel.model.FinallyDefinition"
              | { _ | Dyn }
              | doc "Path traversed when a try, catch, finally block exits"
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
          },
      "items.definitions.org.apache.camel.model.UnmarshalDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            asn1 =
                              refs."items.definitions.org.apache.camel.model.dataformat.ASN1DataFormat",
                          },
                      required = { asn1 = true, },
                    },
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "asn1" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "avro" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "barcode" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "base64" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "beanio" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "bindy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "cbor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "crypto" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csv" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "custom" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "dfdl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "fhirJson" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "fhirXml" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "flatpack" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "fury" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "grok" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "gzipDeflater" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ical" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jacksonXml" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jaxb" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "json" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonApi" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "lzf" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mimeMultipart" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "parquetAvro" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "pgp" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "protobuf" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "rss" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "smooks" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "soap" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "swiftMt" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "swiftMx" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "syslog" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tarFile" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "thrift" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tidyMarkup" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "univocityCsv" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "univocityFixed" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "univocityTsv" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xmlSecurity" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "yaml" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "zipDeflater" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "zipFile" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            avro =
                              refs."items.definitions.org.apache.camel.model.dataformat.AvroDataFormat",
                          },
                      required = { avro = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            barcode =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.BarcodeDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { barcode = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            base64 =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.Base64DataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { base64 = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            beanio =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.BeanioDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { beanio = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            bindy =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.BindyDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { bindy = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            cbor =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.CBORDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { cbor = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            crypto =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.CryptoDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { crypto = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            csv =
                              refs."items.definitions.org.apache.camel.model.dataformat.CsvDataFormat",
                          },
                      required = { csv = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            custom =
                              refs."items.definitions.org.apache.camel.model.dataformat.CustomDataFormat",
                          },
                      required = { custom = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            dfdl =
                              refs."items.definitions.org.apache.camel.model.dataformat.DfdlDataFormat",
                          },
                      required = { dfdl = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            fhirJson =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.FhirJsonDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { fhirJson = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            fhirXml =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.FhirXmlDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { fhirXml = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            flatpack =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.FlatpackDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { flatpack = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            fury =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.FuryDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { fury = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            grok =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.GrokDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { grok = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            gzipDeflater =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.GzipDeflaterDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { gzipDeflater = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            hl7 =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.HL7DataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { hl7 = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            ical =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.IcalDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { ical = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            jacksonXml =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.JacksonXMLDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { jacksonXml = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            jaxb =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.JaxbDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { jaxb = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            json =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.JsonDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { json = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            jsonApi =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.JsonApiDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { jsonApi = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            lzf =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.LZFDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { lzf = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            mimeMultipart =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.MimeMultipartDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { mimeMultipart = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            parquetAvro =
                              refs."items.definitions.org.apache.camel.model.dataformat.ParquetAvroDataFormat",
                          },
                      required = { parquetAvro = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            pgp =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.PGPDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { pgp = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            protobuf =
                              refs."items.definitions.org.apache.camel.model.dataformat.ProtobufDataFormat",
                          },
                      required = { protobuf = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            rss =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.RssDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { rss = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            smooks =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.SmooksDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { smooks = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            soap =
                              refs."items.definitions.org.apache.camel.model.dataformat.SoapDataFormat",
                          },
                      required = { soap = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            swiftMt =
                              refs."items.definitions.org.apache.camel.model.dataformat.SwiftMtDataFormat",
                          },
                      required = { swiftMt = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            swiftMx =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.SwiftMxDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { swiftMx = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            syslog =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.SyslogDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { syslog = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            tarFile =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.TarFileDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { tarFile = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            thrift =
                              refs."items.definitions.org.apache.camel.model.dataformat.ThriftDataFormat",
                          },
                      required = { thrift = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            tidyMarkup =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.TidyMarkupDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { tidyMarkup = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            univocityCsv =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.UniVocityCsvDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { univocityCsv = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            univocityFixed =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.UniVocityFixedDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { univocityFixed = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            univocityTsv =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.UniVocityTsvDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { univocityTsv = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            xmlSecurity =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.XMLSecurityDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { xmlSecurity = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            yaml =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.YAMLDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { yaml = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            zipDeflater =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.ZipDeflaterDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { zipDeflater = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            zipFile =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.dataformat.ZipFileDataFormat",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { zipFile = true, },
                    }
                ],
              {
                allowNullBody
                  | Bool
                  | doc "Indicates whether null is allowed as value of a body to unmarshall."
                  | optional,
                asn1 | js2n.Always | optional,
                avro | js2n.Always | optional,
                barcode | js2n.Always | optional,
                base64 | js2n.Always | optional,
                beanio | js2n.Always | optional,
                bindy | js2n.Always | optional,
                cbor | js2n.Always | optional,
                crypto | js2n.Always | optional,
                csv | js2n.Always | optional,
                custom | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                dfdl | js2n.Always | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                fhirJson | js2n.Always | optional,
                fhirXml | js2n.Always | optional,
                flatpack | js2n.Always | optional,
                fury | js2n.Always | optional,
                grok | js2n.Always | optional,
                gzipDeflater | js2n.Always | optional,
                hl7 | js2n.Always | optional,
                ical | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                jacksonXml | js2n.Always | optional,
                jaxb | js2n.Always | optional,
                json | js2n.Always | optional,
                jsonApi | js2n.Always | optional,
                lzf | js2n.Always | optional,
                mimeMultipart | js2n.Always | optional,
                parquetAvro | js2n.Always | optional,
                pgp | js2n.Always | optional,
                protobuf | js2n.Always | optional,
                rss | js2n.Always | optional,
                smooks | js2n.Always | optional,
                soap | js2n.Always | optional,
                swiftMt | js2n.Always | optional,
                swiftMx | js2n.Always | optional,
                syslog | js2n.Always | optional,
                tarFile | js2n.Always | optional,
                thrift | js2n.Always | optional,
                tidyMarkup | js2n.Always | optional,
                univocityCsv | js2n.Always | optional,
                univocityFixed | js2n.Always | optional,
                univocityTsv | js2n.Always | optional,
                variableReceive
                  | String
                  | doc "To use a variable to store the received message body (only body, not headers). This makes it handy to use variables for user data and to easily control what data to use for sending and receiving. Important: When using receive variable then the received body is stored only in this variable and not on the current message."
                  | optional,
                variableSend
                  | String
                  | doc "To use a variable as the source for the message body to send. This makes it handy to use variables for user data and to easily control what data to use for sending and receiving. Important: When using send variable then the message body is taken from this variable instead of the current message, however the headers from the message will still be used as well. In other words, the variable is used instead of the message body, but everything else is as usual."
                  | optional,
                xmlSecurity | js2n.Always | optional,
                yaml | js2n.Always | optional,
                zipDeflater | js2n.Always | optional,
                zipFile | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.ValidateDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                predicateExceptionFactory
                  | String
                  | doc "The bean id of custom PredicateExceptionFactory to use for creating the exception when the validation fails. By default, Camel will throw PredicateValidationException. By using a custom factory you can control which exception to throw instead."
                  | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.ValueDefinition" =
        std.contract.any_of
            [ String, { value | String | doc "Property value" | optional, } ],
      "items.definitions.org.apache.camel.model.WhenDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                      { _ | Dyn }
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "expression" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "constant" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "csimple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "datasonnet" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "exchangeProperty" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "groovy" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "header" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "hl7terser" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "java" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "joor" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jq" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "js" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jsonpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "language" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "method" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "mvel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ognl" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "python" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "ref" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "simple" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "spel" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "tokenize" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "variable" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "wasm" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xpath" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xquery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "xtokenize" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            expression =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { expression = true, },
                    }
                ],
              {
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                description
                  | String
                  | doc "Sets the description of this node"
                  | optional,
                disabled
                  | Bool
                  | doc "Disables this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled late at runtime."
                  | optional,
                exchangeProperty | js2n.Always | optional,
                expression | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                id | String | doc "Sets the id of this node" | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                steps
                  | Array (
                    std.contract.Sequence
                      [
                        refs."items.definitions.org.apache.camel.model.ProcessorDefinition",
                        { _ | Dyn }
                      ]
                  )
                  | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.WireTapDefinition" =
        {
            allowOptimisedComponents
              | Bool
              | doc "Whether to allow components to optimise toD if they are org.apache.camel.spi.SendDynamicAware ."
              | optional,
            autoStartComponents
              | Bool
              | doc "Whether to auto startup components when toD is starting up."
              | optional,
            cacheSize
              | Number
              | doc "Sets the maximum size used by the org.apache.camel.spi.ProducerCache which is used to cache and reuse producers when using this recipient list, when uris are reused. Beware that when using dynamic endpoints then it affects how well the cache can be utilized. If each dynamic endpoint is unique then its best to turn off caching by setting this to -1, which allows Camel to not cache both the producers and endpoints; they are regarded as prototype scoped and will be stopped and discarded after use. This reduces memory usage as otherwise producers/endpoints are stored in memory in the caches. However if there are a high degree of dynamic endpoints that have been used before, then it can benefit to use the cache to reuse both producers and endpoints and therefore the cache size can be set accordingly or rely on the default size (1000). If there is a mix of unique and used before dynamic endpoints, then setting a reasonable cache size can help reduce memory usage to avoid storing too many non frequent used producers."
              | optional,
            copy | Bool | doc "Uses a copy of the original exchange" | optional,
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
              | optional,
            dynamicUri
              | Bool
              | doc "Whether the uri is dynamic or static. If the uri is dynamic then the simple language is used to evaluate a dynamic uri to use as the wire-tap destination, for each incoming message. This works similar to how the toD EIP pattern works. If static then the uri is used as-is as the wire-tap destination."
              | optional,
            executorService
              | String
              | doc "Uses a custom thread pool"
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            ignoreInvalidEndpoint
              | Bool
              | doc "Whether to ignore invalid endpoint URIs and skip sending the message."
              | optional,
            onPrepare
              | String
              | doc "Uses the Processor when preparing the org.apache.camel.Exchange to be sent. This can be used to deep-clone messages that should be sent, or any custom logic needed before the exchange is sent."
              | optional,
            parameters | { _ | Dyn } | optional,
            pattern
              | std.enum.TagOrString
              | [| 'InOut, 'InOnly |]
              | doc "Sets the optional ExchangePattern used to invoke this endpoint"
              | optional,
            uri
              | String
              | doc "The uri of the endpoint to send to. The uri can be dynamic computed using the org.apache.camel.language.simple.SimpleLanguage expression.",
            variableReceive
              | String
              | doc "To use a variable as the source for the message body to send. This makes it handy to use variables for user data and to easily control what data to use for sending and receiving. Important: When using send variable then the message body is taken from this variable instead of the current Message , however the headers from the Message will still be used as well. In other words, the variable is used instead of the message body, but everything else is as usual."
              | optional,
            variableSend
              | String
              | doc "To use a variable as the source for the message body to send. This makes it handy to use variables for user data and to easily control what data to use for sending and receiving. Important: When using send variable then the message body is taken from this variable instead of the current message, however the headers from the message will still be used as well. In other words, the variable is used instead of the message body, but everything else is as usual."
              | optional,
          },
      "items.definitions.org.apache.camel.model.cloud.BlacklistServiceCallServiceFilterConfiguration" =
        {
            id | String | doc "The id of this node" | optional,
            properties
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.PropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Set client properties to use. These properties are specific to what service call implementation are in use. For example if using a different one, then the client properties are defined according to the specific service in use."
              | optional,
            servers
              | Array String
              | doc "Sets the server blacklist. Each entry can be a list of servers separated by comma in the format: servicehost:port,servicehost2:port,servicehost3:port"
              | optional,
          },
      "items.definitions.org.apache.camel.model.cloud.CachingServiceCallServiceDiscoveryConfiguration" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            combinedServiceDiscovery =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.cloud.CombinedServiceCallServiceDiscoveryConfiguration",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { combinedServiceDiscovery = true, },
                    },
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "combinedServiceDiscovery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "consulServiceDiscovery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "dnsServiceDiscovery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "kubernetesServiceDiscovery" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "staticServiceDiscovery" ],
                        Array Dyn
                      ]),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            consulServiceDiscovery =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.cloud.ConsulServiceCallServiceDiscoveryConfiguration",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { consulServiceDiscovery = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            dnsServiceDiscovery =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.cloud.DnsServiceCallServiceDiscoveryConfiguration",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { dnsServiceDiscovery = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            kubernetesServiceDiscovery =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.cloud.KubernetesServiceCallServiceDiscoveryConfiguration",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { kubernetesServiceDiscovery = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            staticServiceDiscovery =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.cloud.StaticServiceCallServiceDiscoveryConfiguration",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { staticServiceDiscovery = true, },
                    }
                ],
              {
                combinedServiceDiscovery | js2n.Always | optional,
                consulServiceDiscovery | js2n.Always | optional,
                dnsServiceDiscovery | js2n.Always | optional,
                id | String | doc "The id of this node" | optional,
                kubernetesServiceDiscovery | js2n.Always | optional,
                properties
                  | Array (
                    std.contract.Sequence
                      [
                        refs."items.definitions.org.apache.camel.model.PropertyDefinition",
                        { _ | Dyn }
                      ]
                  )
                  | doc "Set client properties to use. These properties are specific to what service call implementation are in use. For example if using a different one, then the client properties are defined according to the specific service in use."
                  | optional,
                staticServiceDiscovery | js2n.Always | optional,
                timeout
                  | Number
                  | doc "Set the time the services will be retained."
                  | optional,
                units
                  | std.enum.TagOrString
                  | [|
                    'DAYS,
                    'HOURS,
                    'MINUTES,
                    'SECONDS,
                    'MILLISECONDS,
                    'MICROSECONDS,
                    'NANOSECONDS
                  |]
                  | doc "Set the time unit for the timeout."
                  | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.cloud.CombinedServiceCallServiceDiscoveryConfiguration" =
        {
            cachingServiceDiscovery
              | refs."items.definitions.org.apache.camel.model.cloud.CachingServiceCallServiceDiscoveryConfiguration"
              | { _ | Dyn }
              | optional,
            consulServiceDiscovery
              | refs."items.definitions.org.apache.camel.model.cloud.ConsulServiceCallServiceDiscoveryConfiguration"
              | { _ | Dyn }
              | optional,
            dnsServiceDiscovery
              | refs."items.definitions.org.apache.camel.model.cloud.DnsServiceCallServiceDiscoveryConfiguration"
              | { _ | Dyn }
              | optional,
            id | String | doc "The id of this node" | optional,
            kubernetesServiceDiscovery
              | refs."items.definitions.org.apache.camel.model.cloud.KubernetesServiceCallServiceDiscoveryConfiguration"
              | { _ | Dyn }
              | optional,
            properties
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.PropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Set client properties to use. These properties are specific to what service call implementation are in use. For example if using a different one, then the client properties are defined according to the specific service in use."
              | optional,
            staticServiceDiscovery
              | refs."items.definitions.org.apache.camel.model.cloud.StaticServiceCallServiceDiscoveryConfiguration"
              | { _ | Dyn }
              | optional,
          },
      "items.definitions.org.apache.camel.model.cloud.CombinedServiceCallServiceFilterConfiguration" =
        {
            blacklistServiceFilter
              | refs."items.definitions.org.apache.camel.model.cloud.BlacklistServiceCallServiceFilterConfiguration"
              | { _ | Dyn }
              | optional,
            customServiceFilter
              | refs."items.definitions.org.apache.camel.model.cloud.CustomServiceCallServiceFilterConfiguration"
              | { _ | Dyn }
              | optional,
            healthyServiceFilter
              | refs."items.definitions.org.apache.camel.model.cloud.HealthyServiceCallServiceFilterConfiguration"
              | { _ | Dyn }
              | optional,
            id | String | doc "The id of this node" | optional,
            passThroughServiceFilter
              | refs."items.definitions.org.apache.camel.model.cloud.PassThroughServiceCallServiceFilterConfiguration"
              | { _ | Dyn }
              | optional,
            properties
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.PropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Set client properties to use. These properties are specific to what service call implementation are in use. For example if using a different one, then the client properties are defined according to the specific service in use."
              | optional,
          },
      "items.definitions.org.apache.camel.model.cloud.ConsulServiceCallServiceDiscoveryConfiguration" =
        {
            aclToken
              | String
              | doc "Sets the ACL token to be used with Consul"
              | optional,
            blockSeconds
              | Number
              | doc "The seconds to wait for a watch event, default 10 seconds"
              | optional,
            connectTimeoutMillis
              | Number
              | doc "Connect timeout for OkHttpClient"
              | optional,
            datacenter | String | doc "The data center" | optional,
            id | String | doc "The id of this node" | optional,
            password
              | String
              | doc "Sets the password to be used for basic authentication"
              | optional,
            properties
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.PropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Set client properties to use. These properties are specific to what service call implementation are in use. For example if using a different one, then the client properties are defined according to the specific service in use."
              | optional,
            readTimeoutMillis
              | Number
              | doc "Read timeout for OkHttpClient"
              | optional,
            url | String | doc "The Consul agent URL" | optional,
            userName
              | String
              | doc "Sets the username to be used for basic authentication"
              | optional,
            writeTimeoutMillis
              | Number
              | doc "Write timeout for OkHttpClient"
              | optional,
          },
      "items.definitions.org.apache.camel.model.cloud.CustomServiceCallServiceFilterConfiguration" =
        {
            id | String | doc "The id of this node" | optional,
            properties
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.PropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Set client properties to use. These properties are specific to what service call implementation are in use. For example if using a different one, then the client properties are defined according to the specific service in use."
              | optional,
            ref | String | doc "Reference of a ServiceFilter" | optional,
          },
      "items.definitions.org.apache.camel.model.cloud.DefaultServiceCallServiceLoadBalancerConfiguration" =
        {
            id | String | doc "The id of this node" | optional,
            properties
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.PropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Set client properties to use. These properties are specific to what service call implementation are in use. For example if using a different one, then the client properties are defined according to the specific service in use."
              | optional,
          },
      "items.definitions.org.apache.camel.model.cloud.DnsServiceCallServiceDiscoveryConfiguration" =
        {
            domain | String | doc "The domain name;" | optional,
            id | String | doc "The id of this node" | optional,
            properties
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.PropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Set client properties to use. These properties are specific to what service call implementation are in use. For example if using a different one, then the client properties are defined according to the specific service in use."
              | optional,
            proto
              | String
              | doc "The transport protocol of the desired service."
              | optional,
          },
      "items.definitions.org.apache.camel.model.cloud.HealthyServiceCallServiceFilterConfiguration" =
        {
            id | String | doc "The id of this node" | optional,
            properties
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.PropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Set client properties to use. These properties are specific to what service call implementation are in use. For example if using a different one, then the client properties are defined according to the specific service in use."
              | optional,
          },
      "items.definitions.org.apache.camel.model.cloud.KubernetesServiceCallServiceDiscoveryConfiguration" =
        {
            apiVersion
              | String
              | doc "Sets the API version when using client lookup"
              | optional,
            caCertData
              | String
              | doc "Sets the Certificate Authority data when using client lookup"
              | optional,
            caCertFile
              | String
              | doc "Sets the Certificate Authority data that are loaded from the file when using client lookup"
              | optional,
            clientCertData
              | String
              | doc "Sets the Client Certificate data when using client lookup"
              | optional,
            clientCertFile
              | String
              | doc "Sets the Client Certificate data that are loaded from the file when using client lookup"
              | optional,
            clientKeyAlgo
              | String
              | doc "Sets the Client Keystore algorithm, such as RSA when using client lookup"
              | optional,
            clientKeyData
              | String
              | doc "Sets the Client Keystore data when using client lookup"
              | optional,
            clientKeyFile
              | String
              | doc "Sets the Client Keystore data that are loaded from the file when using client lookup"
              | optional,
            clientKeyPassphrase
              | String
              | doc "Sets the Client Keystore passphrase when using client lookup"
              | optional,
            dnsDomain
              | String
              | doc "Sets the DNS domain to use for DNS lookup."
              | optional,
            id | String | doc "The id of this node" | optional,
            lookup
              | std.enum.TagOrString
              | [| 'client, 'dns, 'environment |]
              | doc "How to perform service lookup. Possible values: client, dns, environment. When using client, then the client queries the kubernetes master to obtain a list of active pods that provides the service, and then random (or round robin) select a pod. When using dns the service name is resolved as name.namespace.svc.dnsDomain. When using dnssrv the service name is resolved with SRV query for _._...svc... When using environment then environment variables are used to lookup the service. By default environment is used."
              | optional,
            masterUrl
              | String
              | doc "Sets the URL to the master when using client lookup"
              | optional,
            namespace
              | String
              | doc "Sets the namespace to use. Will by default use namespace from the ENV variable KUBERNETES_MASTER."
              | optional,
            oauthToken
              | String
              | doc "Sets the OAUTH token for authentication (instead of username/password) when using client lookup"
              | optional,
            password
              | String
              | doc "Sets the password for authentication when using client lookup"
              | optional,
            portName
              | String
              | doc "Sets the Port Name to use for DNS/DNSSRV lookup."
              | optional,
            portProtocol
              | String
              | doc "Sets the Port Protocol to use for DNS/DNSSRV lookup."
              | optional,
            properties
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.PropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Set client properties to use. These properties are specific to what service call implementation are in use. For example if using a different one, then the client properties are defined according to the specific service in use."
              | optional,
            trustCerts
              | Bool
              | doc "Sets whether to turn on trust certificate check when using client lookup"
              | optional,
            username
              | String
              | doc "Sets the username for authentication when using client lookup"
              | optional,
          },
      "items.definitions.org.apache.camel.model.cloud.PassThroughServiceCallServiceFilterConfiguration" =
        {
            id | String | doc "The id of this node" | optional,
            properties
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.PropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Set client properties to use. These properties are specific to what service call implementation are in use. For example if using a different one, then the client properties are defined according to the specific service in use."
              | optional,
          },
      "items.definitions.org.apache.camel.model.cloud.ServiceCallDefinition" =
        std.contract.Sequence
            [
              std.contract.any_of [ String, js2n.record.Required [ "name" ] ],
              std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [
                      std.contract.any_of
                        [
                          js2n.OneOf
                            [
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        blacklistServiceFilter =
                                          std.contract.Sequence
                                              [
                                                refs."items.definitions.org.apache.camel.model.cloud.BlacklistServiceCallServiceFilterConfiguration",
                                                { _ | Dyn }
                                              ],
                                      },
                                  required = { blacklistServiceFilter = true, },
                                },
                              std.contract.not
                                (std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required
                                      [ "blacklistServiceFilter" ],
                                    Array Dyn,
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required
                                      [ "combinedServiceFilter" ],
                                    Array Dyn,
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required
                                      [ "customServiceFilter" ],
                                    Array Dyn,
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required
                                      [ "healthyServiceFilter" ],
                                    Array Dyn,
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required
                                      [ "passThroughServiceFilter" ],
                                    Array Dyn
                                  ]),
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        combinedServiceFilter =
                                          std.contract.Sequence
                                              [
                                                refs."items.definitions.org.apache.camel.model.cloud.CombinedServiceCallServiceFilterConfiguration",
                                                { _ | Dyn }
                                              ],
                                      },
                                  required = { combinedServiceFilter = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        customServiceFilter =
                                          std.contract.Sequence
                                              [
                                                refs."items.definitions.org.apache.camel.model.cloud.CustomServiceCallServiceFilterConfiguration",
                                                { _ | Dyn }
                                              ],
                                      },
                                  required = { customServiceFilter = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        healthyServiceFilter =
                                          std.contract.Sequence
                                              [
                                                refs."items.definitions.org.apache.camel.model.cloud.HealthyServiceCallServiceFilterConfiguration",
                                                { _ | Dyn }
                                              ],
                                      },
                                  required = { healthyServiceFilter = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        passThroughServiceFilter =
                                          std.contract.Sequence
                                              [
                                                refs."items.definitions.org.apache.camel.model.cloud.PassThroughServiceCallServiceFilterConfiguration",
                                                { _ | Dyn }
                                              ],
                                      },
                                  required =
                                    { passThroughServiceFilter = true, },
                                }
                            ],
                          js2n.OneOf
                            [
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        cachingServiceDiscovery =
                                          std.contract.Sequence
                                              [
                                                refs."items.definitions.org.apache.camel.model.cloud.CachingServiceCallServiceDiscoveryConfiguration",
                                                { _ | Dyn }
                                              ],
                                      },
                                  required =
                                    { cachingServiceDiscovery = true, },
                                },
                              std.contract.not
                                (std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required
                                      [ "cachingServiceDiscovery" ],
                                    Array Dyn,
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required
                                      [ "combinedServiceDiscovery" ],
                                    Array Dyn,
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required
                                      [ "consulServiceDiscovery" ],
                                    Array Dyn,
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required
                                      [ "dnsServiceDiscovery" ],
                                    Array Dyn,
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required
                                      [ "kubernetesServiceDiscovery" ],
                                    Array Dyn,
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required
                                      [ "staticServiceDiscovery" ],
                                    Array Dyn,
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required
                                      [ "zookeeperServiceDiscovery" ],
                                    Array Dyn
                                  ]),
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        combinedServiceDiscovery =
                                          std.contract.Sequence
                                              [
                                                refs."items.definitions.org.apache.camel.model.cloud.CombinedServiceCallServiceDiscoveryConfiguration",
                                                { _ | Dyn }
                                              ],
                                      },
                                  required =
                                    { combinedServiceDiscovery = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        consulServiceDiscovery =
                                          std.contract.Sequence
                                              [
                                                refs."items.definitions.org.apache.camel.model.cloud.ConsulServiceCallServiceDiscoveryConfiguration",
                                                { _ | Dyn }
                                              ],
                                      },
                                  required = { consulServiceDiscovery = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        dnsServiceDiscovery =
                                          std.contract.Sequence
                                              [
                                                refs."items.definitions.org.apache.camel.model.cloud.DnsServiceCallServiceDiscoveryConfiguration",
                                                { _ | Dyn }
                                              ],
                                      },
                                  required = { dnsServiceDiscovery = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        kubernetesServiceDiscovery =
                                          std.contract.Sequence
                                              [
                                                refs."items.definitions.org.apache.camel.model.cloud.KubernetesServiceCallServiceDiscoveryConfiguration",
                                                { _ | Dyn }
                                              ],
                                      },
                                  required =
                                    { kubernetesServiceDiscovery = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        staticServiceDiscovery =
                                          std.contract.Sequence
                                              [
                                                refs."items.definitions.org.apache.camel.model.cloud.StaticServiceCallServiceDiscoveryConfiguration",
                                                { _ | Dyn }
                                              ],
                                      },
                                  required = { staticServiceDiscovery = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        zookeeperServiceDiscovery =
                                          std.contract.Sequence
                                              [
                                                refs."items.definitions.org.apache.camel.model.cloud.ZooKeeperServiceCallServiceDiscoveryConfiguration",
                                                { _ | Dyn }
                                              ],
                                      },
                                  required =
                                    { zookeeperServiceDiscovery = true, },
                                }
                            ],
                          js2n.OneOf
                            [
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        defaultLoadBalancer =
                                          std.contract.Sequence
                                              [
                                                refs."items.definitions.org.apache.camel.model.cloud.DefaultServiceCallServiceLoadBalancerConfiguration",
                                                { _ | Dyn }
                                              ],
                                      },
                                  required = { defaultLoadBalancer = true, },
                                },
                              std.contract.not
                                (std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required
                                      [ "defaultLoadBalancer" ],
                                    Array Dyn
                                  ])
                            ],
                          js2n.OneOf
                            [
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        expression =
                                          std.contract.Sequence
                                              [
                                                refs."items.definitions.org.apache.camel.model.cloud.ServiceCallExpressionConfiguration",
                                                { _ | Dyn }
                                              ],
                                      },
                                  required = { expression = true, },
                                },
                              std.contract.not
                                (std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required [ "expression" ],
                                    Array Dyn
                                  ])
                            ]
                        ],
                      {
                        blacklistServiceFilter | js2n.Always | optional,
                        cachingServiceDiscovery | js2n.Always | optional,
                        combinedServiceDiscovery | js2n.Always | optional,
                        combinedServiceFilter | js2n.Always | optional,
                        component
                          | String
                          | doc "The component to use."
                          | optional,
                        configurationRef
                          | String
                          | doc "Refers to a ServiceCall configuration to use"
                          | optional,
                        consulServiceDiscovery | js2n.Always | optional,
                        customServiceFilter | js2n.Always | optional,
                        defaultLoadBalancer | js2n.Always | optional,
                        description
                          | String
                          | doc "Sets the description of this node"
                          | optional,
                        disabled
                          | Bool
                          | doc "Whether to disable this EIP from the route during build time. Once an EIP has been disabled then it cannot be enabled later at runtime."
                          | optional,
                        dnsServiceDiscovery | js2n.Always | optional,
                        expression | js2n.Always | optional,
                        expressionRef
                          | String
                          | doc "Set a reference to a custom Expression to use."
                          | optional,
                        healthyServiceFilter | js2n.Always | optional,
                        id | String | doc "Sets the id of this node" | optional,
                        kubernetesServiceDiscovery | js2n.Always | optional,
                        loadBalancerRef
                          | String
                          | doc "Sets a reference to a custom ServiceLoadBalancer to use."
                          | optional,
                        name
                          | String
                          | doc "Sets the name of the service to use"
                          | optional,
                        passThroughServiceFilter | js2n.Always | optional,
                        pattern
                          | std.enum.TagOrString
                          | [| 'InOut, 'InOnly |]
                          | doc "Sets the optional ExchangePattern used to invoke this endpoint"
                          | optional,
                        serviceChooserRef
                          | String
                          | doc "Sets a reference to a custom ServiceChooser to use."
                          | optional,
                        serviceDiscoveryRef
                          | String
                          | doc "Sets a reference to a custom ServiceDiscovery to use."
                          | optional,
                        serviceFilterRef
                          | String
                          | doc "Sets a reference to a custom ServiceFilter to use."
                          | optional,
                        staticServiceDiscovery | js2n.Always | optional,
                        uri
                          | String
                          | doc "The uri of the endpoint to send to. The uri can be dynamic computed using the org.apache.camel.language.simple.SimpleLanguage expression."
                          | optional,
                        zookeeperServiceDiscovery | js2n.Always | optional,
                      }
                    ]
                ]
            ],
      "items.definitions.org.apache.camel.model.cloud.ServiceCallExpressionConfiguration" =
        {
            expressionType
              | refs."items.definitions.org.apache.camel.model.language.ExpressionDefinition"
              | { _ | Dyn }
              | optional,
            hostHeader
              | String
              | doc "The header that holds the service host information, default ServiceCallConstants.SERVICE_HOST"
              | optional,
            id | String | doc "The id of this node" | optional,
            portHeader
              | String
              | doc "The header that holds the service port information, default ServiceCallConstants.SERVICE_PORT"
              | optional,
            properties
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.PropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Set client properties to use. These properties are specific to what service call implementation are in use. For example if using a different one, then the client properties are defined according to the specific service in use."
              | optional,
          },
      "items.definitions.org.apache.camel.model.cloud.StaticServiceCallServiceDiscoveryConfiguration" =
        {
            id | String | doc "The id of this node" | optional,
            properties
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.PropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Set client properties to use. These properties are specific to what service call implementation are in use. For example if using a different one, then the client properties are defined according to the specific service in use."
              | optional,
            servers
              | Array String
              | doc "Sets the server list. Each entry can be a list of servers separated by comma in the format: servicehost:port,servicehost2:port,servicehost3:port"
              | optional,
          },
      "items.definitions.org.apache.camel.model.cloud.ZooKeeperServiceCallServiceDiscoveryConfiguration" =
        {
            basePath | String | doc "Set the base path to store in ZK",
            connectionTimeout | String | doc "Connection timeout." | optional,
            id | String | doc "The id of this node" | optional,
            namespace
              | String
              | doc "As ZooKeeper is a shared space, users of a given cluster should stay within a pre-defined namespace. If a namespace is set here, all paths will get pre-pended with the namespace"
              | optional,
            nodes
              | String
              | doc "A comma separate list of servers to connect to in the form host:port",
            properties
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.PropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Set client properties to use. These properties are specific to what service call implementation are in use. For example if using a different one, then the client properties are defined according to the specific service in use."
              | optional,
            reconnectBaseSleepTime
              | String
              | doc "Initial amount of time to wait between retries."
              | optional,
            reconnectMaxRetries
              | String
              | doc "Max number of times to retry"
              | optional,
            reconnectMaxSleepTime
              | String
              | doc "Max time in ms to sleep on each retry"
              | optional,
            sessionTimeout | String | doc "Session timeout." | optional,
          },
      "items.definitions.org.apache.camel.model.config.BatchResequencerConfig" =
        {
            allowDuplicates
              | Bool
              | doc "Whether to allow duplicates."
              | optional,
            batchSize
              | Number
              | doc "Sets the size of the batch to be re-ordered. The default size is 100."
              | optional,
            batchTimeout
              | String
              | doc "Sets the timeout for collecting elements to be re-ordered. The default timeout is 1000 msec."
              | optional,
            ignoreInvalidExchanges
              | Bool
              | doc "Whether to ignore invalid exchanges"
              | optional,
            reverse | Bool | doc "Whether to reverse the ordering." | optional,
          },
      "items.definitions.org.apache.camel.model.config.StreamResequencerConfig" =
        {
            capacity
              | Number
              | doc "Sets the capacity of the resequencer inbound queue."
              | optional,
            comparator
              | String
              | doc "To use a custom comparator as a org.apache.camel.processor.resequencer.ExpressionResultComparator type."
              | optional,
            deliveryAttemptInterval
              | String
              | doc "Sets the interval in milliseconds the stream resequencer will at most wait while waiting for condition of being able to deliver."
              | optional,
            ignoreInvalidExchanges
              | Bool
              | doc "Whether to ignore invalid exchanges"
              | optional,
            rejectOld
              | Bool
              | doc "If true, throws an exception when messages older than the last delivered message are processed"
              | optional,
            timeout
              | String
              | doc "Sets minimum time (milliseconds) to wait for missing elements (messages)."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.ASN1DataFormat" =
        std.contract.any_of
            [
              String,
              {
                id | String | doc "The id of this node" | optional,
                unmarshalType
                  | String
                  | doc "Class to use when unmarshalling."
                  | optional,
                usingIterator
                  | Bool
                  | doc "If the asn1 file has more than one entry, the setting this option to true, allows working with the splitter EIP, to split the data using an iterator in a streaming mode."
                  | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.dataformat.AvroDataFormat" =
        std.contract.any_of
            [
              String,
              {
                allowJmsType
                  | Bool
                  | doc "Used for JMS users to allow the JMSType header from the JMS spec to specify a FQN classname to use to unmarshal to."
                  | optional,
                allowUnmarshallType
                  | Bool
                  | doc "If enabled then Jackson is allowed to attempt to use the CamelJacksonUnmarshalType header during the unmarshalling. This should only be enabled when desired to be used."
                  | optional,
                autoDiscoverObjectMapper
                  | Bool
                  | doc "If set to true then Jackson will lookup for an objectMapper into the registry"
                  | optional,
                autoDiscoverSchemaResolver
                  | Bool
                  | doc "When not disabled, the SchemaResolver will be looked up into the registry"
                  | optional,
                collectionType
                  | String
                  | doc "Refers to a custom collection type to lookup in the registry to use. This option should rarely be used, but allows to use different collection types than java.util.Collection based as default."
                  | optional,
                contentTypeHeader
                  | Bool
                  | doc "Whether the data format should set the Content-Type header with the type from the data format. For example application/xml for data formats marshalling to XML, or application/json for data formats marshalling to JSON"
                  | optional,
                disableFeatures
                  | String
                  | doc "Set of features to disable on the Jackson com.fasterxml.jackson.databind.ObjectMapper. The features should be a name that matches a enum from com.fasterxml.jackson.databind.SerializationFeature, com.fasterxml.jackson.databind.DeserializationFeature, or com.fasterxml.jackson.databind.MapperFeature Multiple features can be separated by comma"
                  | optional,
                enableFeatures
                  | String
                  | doc "Set of features to enable on the Jackson com.fasterxml.jackson.databind.ObjectMapper. The features should be a name that matches a enum from com.fasterxml.jackson.databind.SerializationFeature, com.fasterxml.jackson.databind.DeserializationFeature, or com.fasterxml.jackson.databind.MapperFeature Multiple features can be separated by comma"
                  | optional,
                id | String | doc "The id of this node" | optional,
                include
                  | String
                  | doc "If you want to marshal a pojo to JSON, and the pojo has some fields with null values. And you want to skip these null values, you can set this option to NON_NULL"
                  | optional,
                instanceClassName
                  | String
                  | doc "Class name to use for marshal and unmarshalling"
                  | optional,
                jsonView
                  | String
                  | doc "When marshalling a POJO to JSON you might want to exclude certain fields from the JSON output. With Jackson you can use JSON views to accomplish this. This option is to refer to the class which has JsonView annotations"
                  | optional,
                library
                  | std.enum.TagOrString
                  | [| 'Jackson, 'ApacheAvro |]
                  | doc "Which Avro library to use."
                  | optional,
                moduleClassNames
                  | String
                  | doc "To use custom Jackson modules com.fasterxml.jackson.databind.Module specified as a String with FQN class names. Multiple classes can be separated by comma."
                  | optional,
                moduleRefs
                  | String
                  | doc "To use custom Jackson modules referred from the Camel registry. Multiple modules can be separated by comma."
                  | optional,
                objectMapper
                  | String
                  | doc "Lookup and use the existing ObjectMapper with the given id when using Jackson."
                  | optional,
                schemaResolver
                  | String
                  | doc "Optional schema resolver used to lookup schemas for the data in transit."
                  | optional,
                timezone
                  | String
                  | doc "If set then Jackson will use the Timezone when marshalling/unmarshalling."
                  | optional,
                unmarshalType
                  | String
                  | doc "Class name of the java type to use when unmarshalling"
                  | optional,
                useDefaultObjectMapper
                  | Bool
                  | doc "Whether to lookup and use default Jackson ObjectMapper from the registry."
                  | optional,
                useList
                  | Bool
                  | doc "To unmarshal to a List of Map or a List of Pojo."
                  | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.dataformat.BarcodeDataFormat" =
        {
            barcodeFormat
              | String
              | doc "Barcode format such as QR-Code"
              | optional,
            height | Number | doc "Height of the barcode" | optional,
            id | String | doc "The id of this node" | optional,
            imageType
              | String
              | doc "Image type of the barcode such as png"
              | optional,
            width | Number | doc "Width of the barcode" | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.Base64DataFormat" =
        {
            id | String | doc "The id of this node" | optional,
            lineLength
              | Number
              | doc "To specific a maximum line length for the encoded data. By default 76 is used."
              | optional,
            lineSeparator
              | String
              | doc "The line separators to use. Uses new line characters (CRLF) by default."
              | optional,
            urlSafe
              | Bool
              | doc "Instead of emitting '' and '/' we emit '-' and '_' respectively. urlSafe is only applied to encode operations. Decoding seamlessly handles both modes. Is by default false."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.BeanioDataFormat" =
        {
            beanReaderErrorHandlerType
              | String
              | doc "To use a custom org.apache.camel.dataformat.beanio.BeanIOErrorHandler as error handler while parsing. Configure the fully qualified class name of the error handler. Notice the options ignoreUnidentifiedRecords, ignoreUnexpectedRecords, and ignoreInvalidRecords may not be in use when you use a custom error handler."
              | optional,
            encoding
              | String
              | doc "The charset to use. Is by default the JVM platform default charset."
              | optional,
            id | String | doc "The id of this node" | optional,
            ignoreInvalidRecords
              | Bool
              | doc "Whether to ignore invalid records."
              | optional,
            ignoreUnexpectedRecords
              | Bool
              | doc "Whether to ignore unexpected records."
              | optional,
            ignoreUnidentifiedRecords
              | Bool
              | doc "Whether to ignore unidentified records."
              | optional,
            mapping
              | String
              | doc "The BeanIO mapping file. Is by default loaded from the classpath. You can prefix with file:, http:, or classpath: to denote from where to load the mapping file.",
            streamName | String | doc "The name of the stream to use.",
            unmarshalSingleObject
              | Bool
              | doc "This options controls whether to unmarshal as a list of objects or as a single object only. The former is the default mode, and the latter is only intended in special use-cases where beanio maps the Camel message to a single POJO bean."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.BindyDataFormat" =
        {
            allowEmptyStream
              | Bool
              | doc "Whether to allow empty streams in the unmarshal process. If true, no exception will be thrown when a body without records is provided."
              | optional,
            classType | String | doc "Name of model class to use." | optional,
            id | String | doc "The id of this node" | optional,
            locale
              | String
              | doc "To configure a default locale to use, such as us for united states. To use the JVM platform default locale then use the name default"
              | optional,
            type
              | std.enum.TagOrString
              | [| 'KeyValue, 'Fixed, 'Csv |]
              | doc "Whether to use Csv, Fixed, or KeyValue."
              | optional,
            unwrapSingleInstance
              | Bool
              | doc "When unmarshalling should a single instance be unwrapped and returned instead of wrapped in a java.util.List."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.CBORDataFormat" =
        {
            allowJmsType
              | Bool
              | doc "Used for JMS users to allow the JMSType header from the JMS spec to specify a FQN classname to use to unmarshal to."
              | optional,
            allowUnmarshallType
              | Bool
              | doc "If enabled then Jackson CBOR is allowed to attempt to use the CamelCBORUnmarshalType header during the unmarshalling. This should only be enabled when desired to be used."
              | optional,
            collectionType
              | String
              | doc "Refers to a custom collection type to lookup in the registry to use. This option should rarely be used, but allows to use different collection types than java.util.Collection based as default."
              | optional,
            disableFeatures
              | String
              | doc "Set of features to disable on the Jackson com.fasterxml.jackson.databind.ObjectMapper. The features should be a name that matches a enum from com.fasterxml.jackson.databind.SerializationFeature, com.fasterxml.jackson.databind.DeserializationFeature, or com.fasterxml.jackson.databind.MapperFeature Multiple features can be separated by comma"
              | optional,
            enableFeatures
              | String
              | doc "Set of features to enable on the Jackson com.fasterxml.jackson.databind.ObjectMapper. The features should be a name that matches a enum from com.fasterxml.jackson.databind.SerializationFeature, com.fasterxml.jackson.databind.DeserializationFeature, or com.fasterxml.jackson.databind.MapperFeature Multiple features can be separated by comma"
              | optional,
            id | String | doc "The id of this node" | optional,
            objectMapper
              | String
              | doc "Lookup and use the existing CBOR ObjectMapper with the given id when using Jackson."
              | optional,
            prettyPrint
              | Bool
              | doc "To enable pretty printing output nicely formatted. Is by default false."
              | optional,
            unmarshalType
              | String
              | doc "Class name of the java type to use when unmarshalling"
              | optional,
            useDefaultObjectMapper
              | Bool
              | doc "Whether to lookup and use default Jackson CBOR ObjectMapper from the registry."
              | optional,
            useList
              | Bool
              | doc "To unmarshal to a List of Map or a List of Pojo."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.CryptoDataFormat" =
        {
            algorithm
              | String
              | doc "The JCE algorithm name indicating the cryptographic algorithm that will be used."
              | optional,
            algorithmParameterRef
              | String
              | doc "A JCE AlgorithmParameterSpec used to initialize the Cipher. Will lookup the type using the given name as a java.security.spec.AlgorithmParameterSpec type."
              | optional,
            bufferSize
              | Number
              | doc "The size of the buffer used in the signature process."
              | optional,
            cryptoProvider
              | String
              | doc "The name of the JCE Security Provider that should be used."
              | optional,
            id | String | doc "The id of this node" | optional,
            initVectorRef
              | String
              | doc "Refers to a byte array containing the Initialization Vector that will be used to initialize the Cipher."
              | optional,
            inline
              | Bool
              | doc "Flag indicating that the configured IV should be inlined into the encrypted data stream. Is by default false."
              | optional,
            keyRef
              | String
              | doc "Refers to the secret key to lookup from the register to use."
              | optional,
            macAlgorithm
              | String
              | doc "The JCE algorithm name indicating the Message Authentication algorithm."
              | optional,
            shouldAppendHMAC
              | Bool
              | doc "Flag indicating that a Message Authentication Code should be calculated and appended to the encrypted data."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.CsvDataFormat" =
        std.contract.any_of
            [
              String,
              {
                allowMissingColumnNames
                  | Bool
                  | doc "Whether to allow missing column names."
                  | optional,
                captureHeaderRecord
                  | Bool
                  | doc "Whether the unmarshalling should capture the header record and store it in the message header"
                  | optional,
                commentMarker
                  | String
                  | doc "Sets the comment marker of the reference format."
                  | optional,
                commentMarkerDisabled
                  | Bool
                  | doc "Disables the comment marker of the reference format."
                  | optional,
                delimiter
                  | String
                  | doc "Sets the delimiter to use. The default value is , (comma)"
                  | optional,
                escape
                  | String
                  | doc "Sets the escape character to use"
                  | optional,
                escapeDisabled
                  | Bool
                  | doc "Use for disabling using escape character"
                  | optional,
                formatName
                  | std.enum.TagOrString
                  | [|
                    'RFC4180,
                    'MYSQL,
                    'INFORMIX_UNLOAD_CSV,
                    'INFORMIX_UNLOAD,
                    'EXCEL,
                    'DEFAULT
                  |]
                  | doc "The name of the format to use, the default value is CSVFormat.DEFAULT"
                  | optional,
                formatRef
                  | String
                  | doc "The reference format to use, it will be updated with the other format options, the default value is CSVFormat.DEFAULT"
                  | optional,
                header
                  | Array String
                  | doc "To configure the CSV headers"
                  | optional,
                headerDisabled
                  | Bool
                  | doc "Use for disabling headers"
                  | optional,
                id | String | doc "The id of this node" | optional,
                ignoreEmptyLines
                  | Bool
                  | doc "Whether to ignore empty lines."
                  | optional,
                ignoreHeaderCase
                  | Bool
                  | doc "Sets whether or not to ignore case when accessing header names."
                  | optional,
                ignoreSurroundingSpaces
                  | Bool
                  | doc "Whether to ignore surrounding spaces"
                  | optional,
                lazyLoad
                  | Bool
                  | doc "Whether the unmarshalling should produce an iterator that reads the lines on the fly or if all the lines must be read at one."
                  | optional,
                marshallerFactoryRef
                  | String
                  | doc "Sets the implementation of the CsvMarshallerFactory interface which is able to customize marshalling/unmarshalling behavior by extending CsvMarshaller or creating it from scratch."
                  | optional,
                nullString | String | doc "Sets the null string" | optional,
                nullStringDisabled
                  | Bool
                  | doc "Used to disable null strings"
                  | optional,
                quote
                  | String
                  | doc "Sets the quote to use which by default is double-quote character"
                  | optional,
                quoteDisabled | Bool | doc "Used to disable quotes" | optional,
                quoteMode
                  | std.enum.TagOrString
                  | [| 'NONE, 'NON_NUMERIC, 'MINIMAL, 'ALL_NON_NULL, 'ALL |]
                  | doc "Sets the quote mode"
                  | optional,
                recordConverterRef
                  | String
                  | doc "Refers to a custom CsvRecordConverter to lookup from the registry to use."
                  | optional,
                recordSeparator
                  | String
                  | doc "Sets the record separator (aka new line) which by default is new line characters (CRLF)"
                  | optional,
                recordSeparatorDisabled
                  | String
                  | doc "Used for disabling record separator"
                  | optional,
                skipHeaderRecord
                  | Bool
                  | doc "Whether to skip the header record in the output"
                  | optional,
                trailingDelimiter
                  | Bool
                  | doc "Sets whether or not to add a trailing delimiter."
                  | optional,
                trim
                  | Bool
                  | doc "Sets whether or not to trim leading and trailing blanks."
                  | optional,
                useMaps
                  | Bool
                  | doc "Whether the unmarshalling should produce maps (HashMap)for the lines values instead of lists. It requires to have header (either defined or collected)."
                  | optional,
                useOrderedMaps
                  | Bool
                  | doc "Whether the unmarshalling should produce ordered maps (LinkedHashMap) for the lines values instead of lists. It requires to have header (either defined or collected)."
                  | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.dataformat.CustomDataFormat" =
        std.contract.Sequence
            [
              std.contract.any_of [ String, js2n.record.Required [ "ref" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    id | String | doc "The id of this node" | optional,
                    ref
                      | String
                      | doc "Reference to the custom org.apache.camel.spi.DataFormat to lookup from the Camel registry."
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.dataformat.DataFormatsDefinition" =
        {
            asn1
              | refs."items.definitions.org.apache.camel.model.dataformat.ASN1DataFormat"
              | optional,
            avro
              | refs."items.definitions.org.apache.camel.model.dataformat.AvroDataFormat"
              | optional,
            barcode
              | refs."items.definitions.org.apache.camel.model.dataformat.BarcodeDataFormat"
              | { _ | Dyn }
              | optional,
            base64
              | refs."items.definitions.org.apache.camel.model.dataformat.Base64DataFormat"
              | { _ | Dyn }
              | optional,
            beanio
              | refs."items.definitions.org.apache.camel.model.dataformat.BeanioDataFormat"
              | { _ | Dyn }
              | optional,
            bindy
              | refs."items.definitions.org.apache.camel.model.dataformat.BindyDataFormat"
              | { _ | Dyn }
              | optional,
            cbor
              | refs."items.definitions.org.apache.camel.model.dataformat.CBORDataFormat"
              | { _ | Dyn }
              | optional,
            crypto
              | refs."items.definitions.org.apache.camel.model.dataformat.CryptoDataFormat"
              | { _ | Dyn }
              | optional,
            csv
              | refs."items.definitions.org.apache.camel.model.dataformat.CsvDataFormat"
              | optional,
            custom
              | refs."items.definitions.org.apache.camel.model.dataformat.CustomDataFormat"
              | optional,
            fhirJson
              | refs."items.definitions.org.apache.camel.model.dataformat.FhirJsonDataFormat"
              | { _ | Dyn }
              | optional,
            fhirXml
              | refs."items.definitions.org.apache.camel.model.dataformat.FhirXmlDataFormat"
              | { _ | Dyn }
              | optional,
            flatpack
              | refs."items.definitions.org.apache.camel.model.dataformat.FlatpackDataFormat"
              | { _ | Dyn }
              | optional,
            fury
              | refs."items.definitions.org.apache.camel.model.dataformat.FuryDataFormat"
              | { _ | Dyn }
              | optional,
            grok
              | refs."items.definitions.org.apache.camel.model.dataformat.GrokDataFormat"
              | { _ | Dyn }
              | optional,
            gzipDeflater
              | refs."items.definitions.org.apache.camel.model.dataformat.GzipDeflaterDataFormat"
              | { _ | Dyn }
              | optional,
            hl7
              | refs."items.definitions.org.apache.camel.model.dataformat.HL7DataFormat"
              | { _ | Dyn }
              | optional,
            ical
              | refs."items.definitions.org.apache.camel.model.dataformat.IcalDataFormat"
              | { _ | Dyn }
              | optional,
            jacksonXml
              | refs."items.definitions.org.apache.camel.model.dataformat.JacksonXMLDataFormat"
              | { _ | Dyn }
              | optional,
            jaxb
              | refs."items.definitions.org.apache.camel.model.dataformat.JaxbDataFormat"
              | { _ | Dyn }
              | optional,
            json
              | refs."items.definitions.org.apache.camel.model.dataformat.JsonDataFormat"
              | { _ | Dyn }
              | optional,
            jsonApi
              | refs."items.definitions.org.apache.camel.model.dataformat.JsonApiDataFormat"
              | { _ | Dyn }
              | optional,
            lzf
              | refs."items.definitions.org.apache.camel.model.dataformat.LZFDataFormat"
              | { _ | Dyn }
              | optional,
            mimeMultipart
              | refs."items.definitions.org.apache.camel.model.dataformat.MimeMultipartDataFormat"
              | { _ | Dyn }
              | optional,
            parquetAvro
              | refs."items.definitions.org.apache.camel.model.dataformat.ParquetAvroDataFormat"
              | optional,
            pgp
              | refs."items.definitions.org.apache.camel.model.dataformat.PGPDataFormat"
              | { _ | Dyn }
              | optional,
            protobuf
              | refs."items.definitions.org.apache.camel.model.dataformat.ProtobufDataFormat"
              | optional,
            rss
              | refs."items.definitions.org.apache.camel.model.dataformat.RssDataFormat"
              | { _ | Dyn }
              | optional,
            smooks
              | refs."items.definitions.org.apache.camel.model.dataformat.SmooksDataFormat"
              | { _ | Dyn }
              | optional,
            soap
              | refs."items.definitions.org.apache.camel.model.dataformat.SoapDataFormat"
              | optional,
            swiftMt
              | refs."items.definitions.org.apache.camel.model.dataformat.SwiftMtDataFormat"
              | optional,
            swiftMx
              | refs."items.definitions.org.apache.camel.model.dataformat.SwiftMxDataFormat"
              | { _ | Dyn }
              | optional,
            syslog
              | refs."items.definitions.org.apache.camel.model.dataformat.SyslogDataFormat"
              | { _ | Dyn }
              | optional,
            tarFile
              | refs."items.definitions.org.apache.camel.model.dataformat.TarFileDataFormat"
              | { _ | Dyn }
              | optional,
            thrift
              | refs."items.definitions.org.apache.camel.model.dataformat.ThriftDataFormat"
              | optional,
            tidyMarkup
              | refs."items.definitions.org.apache.camel.model.dataformat.TidyMarkupDataFormat"
              | { _ | Dyn }
              | optional,
            univocityCsv
              | refs."items.definitions.org.apache.camel.model.dataformat.UniVocityCsvDataFormat"
              | { _ | Dyn }
              | optional,
            univocityFixed
              | refs."items.definitions.org.apache.camel.model.dataformat.UniVocityFixedDataFormat"
              | { _ | Dyn }
              | optional,
            univocityTsv
              | refs."items.definitions.org.apache.camel.model.dataformat.UniVocityTsvDataFormat"
              | { _ | Dyn }
              | optional,
            xmlSecurity
              | refs."items.definitions.org.apache.camel.model.dataformat.XMLSecurityDataFormat"
              | { _ | Dyn }
              | optional,
            yaml
              | refs."items.definitions.org.apache.camel.model.dataformat.YAMLDataFormat"
              | { _ | Dyn }
              | optional,
            zipDeflater
              | refs."items.definitions.org.apache.camel.model.dataformat.ZipDeflaterDataFormat"
              | { _ | Dyn }
              | optional,
            zipFile
              | refs."items.definitions.org.apache.camel.model.dataformat.ZipFileDataFormat"
              | { _ | Dyn }
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.DfdlDataFormat" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "schemaUri" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    id | String | doc "The id of this node" | optional,
                    rootElement
                      | String
                      | doc "The root element name of the schema to use. If not specified, the first root element in the schema will be used."
                      | optional,
                    rootNamespace
                      | String
                      | doc "The root namespace of the schema to use."
                      | optional,
                    schemaUri
                      | String
                      | doc "The path to the DFDL schema file."
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.dataformat.FhirJsonDataFormat" =
        {
            contentTypeHeader
              | Bool
              | doc "Whether the data format should set the Content-Type header with the type from the data format. For example application/xml for data formats marshalling to XML, or application/json for data formats marshalling to JSON"
              | optional,
            dontEncodeElements
              | String
              | doc "If provided, specifies the elements which should NOT be encoded. Multiple elements can be separated by comma when using String parameter. Valid values for this field would include: Patient - Don't encode patient and all its children Patient.name - Don't encode the patient's name Patient.name.family - Don't encode the patient's family name .text - Don't encode the text element on any resource (only the very first position may contain a wildcard) DSTU2 note: Note that values including meta, such as Patient.meta will work for DSTU2 parsers, but values with subelements on meta such as Patient.meta.lastUpdated will only work in DSTU3 mode."
              | optional,
            dontStripVersionsFromReferencesAtPaths
              | String
              | doc "If supplied value(s), any resource references at the specified paths will have their resource versions encoded instead of being automatically stripped during the encoding process. This setting has no effect on the parsing process. Multiple elements can be separated by comma when using String parameter. This method provides a finer-grained level of control than setStripVersionsFromReferences(String) and any paths specified by this method will be encoded even if setStripVersionsFromReferences(String) has been set to true (which is the default)"
              | optional,
            encodeElements
              | String
              | doc "If provided, specifies the elements which should be encoded, to the exclusion of all others. Multiple elements can be separated by comma when using String parameter. Valid values for this field would include: Patient - Encode patient and all its children Patient.name - Encode only the patient's name Patient.name.family - Encode only the patient's family name .text - Encode the text element on any resource (only the very first position may contain a wildcard) .(mandatory) - This is a special case which causes any mandatory fields (min 0) to be encoded"
              | optional,
            encodeElementsAppliesToChildResourcesOnly
              | Bool
              | doc "If set to true (default is false), the values supplied to setEncodeElements(Set) will not be applied to the root resource (typically a Bundle), but will be applied to any sub-resources contained within it (i.e. search result resources in that bundle)"
              | optional,
            fhirContext
              | String
              | doc "To use a custom fhir context. Reference to object of type ca.uhn.fhir.context.FhirContext"
              | optional,
            fhirVersion
              | std.enum.TagOrString
              | [| 'R5, 'R4, 'DSTU3, 'DSTU2_1, 'DSTU2_HL7ORG, 'DSTU2 |]
              | doc "The version of FHIR to use. Possible values are: DSTU2,DSTU2_HL7ORG,DSTU2_1,DSTU3,R4,R5"
              | optional,
            forceResourceId
              | String
              | doc "When encoding, force this resource ID to be encoded as the resource ID. Reference to object of type org.hl7.fhir.instance.model.api.IIdType"
              | optional,
            id | String | doc "The id of this node" | optional,
            omitResourceId
              | Bool
              | doc "If set to true (default is false) the ID of any resources being encoded will not be included in the output. Note that this does not apply to contained resources, only to root resources. In other words, if this is set to true, contained resources will still have local IDs but the outer/containing ID will not have an ID."
              | optional,
            overrideResourceIdWithBundleEntryFullUrl
              | Bool
              | doc "If set to true (which is the default), the Bundle.entry.fullUrl will override the Bundle.entry.resource's resource id if the fullUrl is defined. This behavior happens when parsing the source data into a Bundle object. Set this to false if this is not the desired behavior (e.g. the client code wishes to perform additional validation checks between the fullUrl and the resource id)."
              | optional,
            parserErrorHandler
              | String
              | doc "Registers an error handler which will be invoked when any parse errors are found. Reference to object of type ca.uhn.fhir.parser.IParserErrorHandler"
              | optional,
            parserOptions
              | String
              | doc "Sets the parser options object which will be used to supply default options to newly created parsers. Reference to object of type ca.uhn.fhir.context.ParserOptions."
              | optional,
            preferTypes
              | String
              | doc "If set (FQN class names), when parsing resources the parser will try to use the given types when possible, in the order that they are provided (from highest to lowest priority). For example, if a custom type which declares to implement the Patient resource is passed in here, and the parser is parsing a Bundle containing a Patient resource, the parser will use the given custom type. Multiple class names can be separated by comma."
              | optional,
            prettyPrint
              | Bool
              | doc "Sets the pretty print flag, meaning that the parser will encode resources with human-readable spacing and newlines between elements instead of condensing output as much as possible."
              | optional,
            serverBaseUrl
              | String
              | doc "Sets the server's base URL used by this parser. If a value is set, resource references will be turned into relative references if they are provided as absolute URLs but have a base matching the given base."
              | optional,
            stripVersionsFromReferences
              | Bool
              | doc "If set to true (which is the default), resource references containing a version will have the version removed when the resource is encoded. This is generally good behaviour because in most situations, references from one resource to another should be to the resource by ID, not by ID and version. In some cases though, it may be desirable to preserve the version in resource links. In that case, this value should be set to false. This method provides the ability to globally disable reference encoding. If finer-grained control is needed, use setDontStripVersionsFromReferencesAtPaths(List)"
              | optional,
            summaryMode
              | Bool
              | doc "If set to true (default is false) only elements marked by the FHIR specification as being summary elements will be included."
              | optional,
            suppressNarratives
              | Bool
              | doc "If set to true (default is false), narratives will not be included in the encoded values."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.FhirXmlDataFormat" =
        {
            contentTypeHeader
              | Bool
              | doc "Whether the data format should set the Content-Type header with the type from the data format. For example application/xml for data formats marshalling to XML, or application/json for data formats marshalling to JSON"
              | optional,
            dontEncodeElements
              | String
              | doc "If provided, specifies the elements which should NOT be encoded. Multiple elements can be separated by comma when using String parameter. Valid values for this field would include: Patient - Don't encode patient and all its children Patient.name - Don't encode the patient's name Patient.name.family - Don't encode the patient's family name .text - Don't encode the text element on any resource (only the very first position may contain a wildcard) DSTU2 note: Note that values including meta, such as Patient.meta will work for DSTU2 parsers, but values with subelements on meta such as Patient.meta.lastUpdated will only work in DSTU3 mode."
              | optional,
            dontStripVersionsFromReferencesAtPaths
              | String
              | doc "If supplied value(s), any resource references at the specified paths will have their resource versions encoded instead of being automatically stripped during the encoding process. This setting has no effect on the parsing process. Multiple elements can be separated by comma when using String parameter. This method provides a finer-grained level of control than setStripVersionsFromReferences(String) and any paths specified by this method will be encoded even if setStripVersionsFromReferences(String) has been set to true (which is the default)"
              | optional,
            encodeElements
              | String
              | doc "If provided, specifies the elements which should be encoded, to the exclusion of all others. Multiple elements can be separated by comma when using String parameter. Valid values for this field would include: Patient - Encode patient and all its children Patient.name - Encode only the patient's name Patient.name.family - Encode only the patient's family name .text - Encode the text element on any resource (only the very first position may contain a wildcard) .(mandatory) - This is a special case which causes any mandatory fields (min 0) to be encoded"
              | optional,
            encodeElementsAppliesToChildResourcesOnly
              | Bool
              | doc "If set to true (default is false), the values supplied to setEncodeElements(Set) will not be applied to the root resource (typically a Bundle), but will be applied to any sub-resources contained within it (i.e. search result resources in that bundle)"
              | optional,
            fhirContext
              | String
              | doc "To use a custom fhir context. Reference to object of type ca.uhn.fhir.context.FhirContext"
              | optional,
            fhirVersion
              | std.enum.TagOrString
              | [| 'R5, 'R4, 'DSTU3, 'DSTU2_1, 'DSTU2_HL7ORG, 'DSTU2 |]
              | doc "The version of FHIR to use. Possible values are: DSTU2,DSTU2_HL7ORG,DSTU2_1,DSTU3,R4,R5"
              | optional,
            forceResourceId
              | String
              | doc "When encoding, force this resource ID to be encoded as the resource ID. Reference to object of type org.hl7.fhir.instance.model.api.IIdType"
              | optional,
            id | String | doc "The id of this node" | optional,
            omitResourceId
              | Bool
              | doc "If set to true (default is false) the ID of any resources being encoded will not be included in the output. Note that this does not apply to contained resources, only to root resources. In other words, if this is set to true, contained resources will still have local IDs but the outer/containing ID will not have an ID."
              | optional,
            overrideResourceIdWithBundleEntryFullUrl
              | Bool
              | doc "If set to true (which is the default), the Bundle.entry.fullUrl will override the Bundle.entry.resource's resource id if the fullUrl is defined. This behavior happens when parsing the source data into a Bundle object. Set this to false if this is not the desired behavior (e.g. the client code wishes to perform additional validation checks between the fullUrl and the resource id)."
              | optional,
            parserErrorHandler
              | String
              | doc "Registers an error handler which will be invoked when any parse errors are found. Reference to object of type ca.uhn.fhir.parser.IParserErrorHandler"
              | optional,
            parserOptions
              | String
              | doc "Sets the parser options object which will be used to supply default options to newly created parsers. Reference to object of type ca.uhn.fhir.context.ParserOptions."
              | optional,
            preferTypes
              | String
              | doc "If set (FQN class names), when parsing resources the parser will try to use the given types when possible, in the order that they are provided (from highest to lowest priority). For example, if a custom type which declares to implement the Patient resource is passed in here, and the parser is parsing a Bundle containing a Patient resource, the parser will use the given custom type. Multiple class names can be separated by comma."
              | optional,
            prettyPrint
              | Bool
              | doc "Sets the pretty print flag, meaning that the parser will encode resources with human-readable spacing and newlines between elements instead of condensing output as much as possible."
              | optional,
            serverBaseUrl
              | String
              | doc "Sets the server's base URL used by this parser. If a value is set, resource references will be turned into relative references if they are provided as absolute URLs but have a base matching the given base."
              | optional,
            stripVersionsFromReferences
              | Bool
              | doc "If set to true (which is the default), resource references containing a version will have the version removed when the resource is encoded. This is generally good behaviour because in most situations, references from one resource to another should be to the resource by ID, not by ID and version. In some cases though, it may be desirable to preserve the version in resource links. In that case, this value should be set to false. This method provides the ability to globally disable reference encoding. If finer-grained control is needed, use setDontStripVersionsFromReferencesAtPaths(List)"
              | optional,
            summaryMode
              | Bool
              | doc "If set to true (default is false) only elements marked by the FHIR specification as being summary elements will be included."
              | optional,
            suppressNarratives
              | Bool
              | doc "If set to true (default is false), narratives will not be included in the encoded values."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.FlatpackDataFormat" =
        {
            allowShortLines
              | Bool
              | doc "Allows for lines to be shorter than expected and ignores the extra characters"
              | optional,
            definition
              | String
              | doc "The flatpack pzmap configuration file. Can be omitted in simpler situations, but its preferred to use the pzmap."
              | optional,
            delimiter
              | String
              | doc "The delimiter char (could be ; , or similar)"
              | optional,
            fixed
              | Bool
              | doc "Delimited or fixed. Is by default false = delimited"
              | optional,
            id | String | doc "The id of this node" | optional,
            ignoreExtraColumns
              | Bool
              | doc "Allows for lines to be longer than expected and ignores the extra characters."
              | optional,
            ignoreFirstRecord
              | Bool
              | doc "Whether the first line is ignored for delimited files (for the column headers). Is by default true."
              | optional,
            parserFactoryRef
              | String
              | doc "References to a custom parser factory to lookup in the registry"
              | optional,
            textQualifier
              | String
              | doc "If the text is qualified with a character. Uses quote character by default."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.FuryDataFormat" =
        {
            allowAutoWiredFury
              | Bool
              | doc "Whether to auto-discover Fury from the registry"
              | optional,
            id | String | doc "The id of this node" | optional,
            requireClassRegistration
              | Bool
              | doc "Whether to require register classes"
              | optional,
            threadSafe
              | Bool
              | doc "Whether to use the threadsafe fury"
              | optional,
            unmarshalType
              | String
              | doc "Class of the java type to use when unmarshalling"
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.GrokDataFormat" =
        {
            allowMultipleMatchesPerLine
              | Bool
              | doc "If false, every line of input is matched for pattern only once. Otherwise the line can be scanned multiple times when non-terminal pattern is used."
              | optional,
            flattened
              | Bool
              | doc "Turns on flattened mode. In flattened mode the exception is thrown when there are multiple pattern matches with same key."
              | optional,
            id | String | doc "The id of this node" | optional,
            namedOnly
              | Bool
              | doc "Whether to capture named expressions only or not (i.e. \%{IP:ip} but not ${IP})"
              | optional,
            pattern | String | doc "The grok pattern to match lines of input",
          },
      "items.definitions.org.apache.camel.model.dataformat.GzipDeflaterDataFormat" =
        { id | String | doc "The id of this node" | optional, },
      "items.definitions.org.apache.camel.model.dataformat.HL7DataFormat" =
        {
            id | String | doc "The id of this node" | optional,
            validate
              | Bool
              | doc "Whether to validate the HL7 message Is by default true."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.IcalDataFormat" =
        {
            id | String | doc "The id of this node" | optional,
            validating | Bool | doc "Whether to validate." | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.JacksonXMLDataFormat" =
        {
            allowJmsType
              | Bool
              | doc "Used for JMS users to allow the JMSType header from the JMS spec to specify a FQN classname to use to unmarshal to."
              | optional,
            allowUnmarshallType
              | Bool
              | doc "If enabled then Jackson is allowed to attempt to use the CamelJacksonUnmarshalType header during the unmarshalling. This should only be enabled when desired to be used."
              | optional,
            collectionType
              | String
              | doc "Refers to a custom collection type to lookup in the registry to use. This option should rarely be used, but allows to use different collection types than java.util.Collection based as default."
              | optional,
            contentTypeHeader
              | Bool
              | doc "Whether the data format should set the Content-Type header with the type from the data format. For example application/xml for data formats marshalling to XML, or application/json for data formats marshalling to JSON"
              | optional,
            disableFeatures
              | String
              | doc "Set of features to disable on the Jackson com.fasterxml.jackson.databind.ObjectMapper. The features should be a name that matches a enum from com.fasterxml.jackson.databind.SerializationFeature, com.fasterxml.jackson.databind.DeserializationFeature, or com.fasterxml.jackson.databind.MapperFeature Multiple features can be separated by comma"
              | optional,
            enableFeatures
              | String
              | doc "Set of features to enable on the Jackson com.fasterxml.jackson.databind.ObjectMapper. The features should be a name that matches a enum from com.fasterxml.jackson.databind.SerializationFeature, com.fasterxml.jackson.databind.DeserializationFeature, or com.fasterxml.jackson.databind.MapperFeature Multiple features can be separated by comma"
              | optional,
            enableJaxbAnnotationModule
              | Bool
              | doc "Whether to enable the JAXB annotations module when using jackson. When enabled then JAXB annotations can be used by Jackson."
              | optional,
            id | String | doc "The id of this node" | optional,
            include
              | String
              | doc "If you want to marshal a pojo to JSON, and the pojo has some fields with null values. And you want to skip these null values, you can set this option to NON_NULL"
              | optional,
            jsonView
              | String
              | doc "When marshalling a POJO to JSON you might want to exclude certain fields from the JSON output. With Jackson you can use JSON views to accomplish this. This option is to refer to the class which has JsonView annotations"
              | optional,
            moduleClassNames
              | String
              | doc "To use custom Jackson modules com.fasterxml.jackson.databind.Module specified as a String with FQN class names. Multiple classes can be separated by comma."
              | optional,
            moduleRefs
              | String
              | doc "To use custom Jackson modules referred from the Camel registry. Multiple modules can be separated by comma."
              | optional,
            prettyPrint
              | Bool
              | doc "To enable pretty printing output nicely formatted. Is by default false."
              | optional,
            timezone
              | String
              | doc "If set then Jackson will use the Timezone when marshalling/unmarshalling."
              | optional,
            unmarshalType
              | String
              | doc "Class name of the java type to use when unmarshalling"
              | optional,
            useList
              | Bool
              | doc "To unmarshal to a List of Map or a List of Pojo."
              | optional,
            xmlMapper
              | String
              | doc "Lookup and use the existing XmlMapper with the given id."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.JaxbDataFormat" =
        {
            accessExternalSchemaProtocols
              | String
              | doc "Only in use if schema validation has been enabled. Restrict access to the protocols specified for external reference set by the schemaLocation attribute, Import and Include element. Examples of protocols are file, http, jar:file. false or none to deny all access to external references; a specific protocol, such as file, to give permission to only the protocol; the keyword all to grant permission to all protocols."
              | optional,
            contentTypeHeader
              | Bool
              | doc "Whether the data format should set the Content-Type header with the type from the data format. For example application/xml for data formats marshalling to XML, or application/json for data formats marshalling to JSON"
              | optional,
            contextPath
              | String
              | doc "Package name where your JAXB classes are located.",
            contextPathIsClassName
              | Bool
              | doc "This can be set to true to mark that the contextPath is referring to a classname and not a package name."
              | optional,
            encoding
              | String
              | doc "To overrule and use a specific encoding"
              | optional,
            filterNonXmlChars
              | Bool
              | doc "To ignore non xml characheters and replace them with an empty space."
              | optional,
            fragment
              | Bool
              | doc "To turn on marshalling XML fragment trees. By default JAXB looks for XmlRootElement annotation on given class to operate on whole XML tree. This is useful but not always - sometimes generated code does not have XmlRootElement annotation, sometimes you need unmarshall only part of tree. In that case you can use partial unmarshalling. To enable this behaviours you need set property partClass. Camel will pass this class to JAXB's unmarshaler."
              | optional,
            id | String | doc "The id of this node" | optional,
            ignoreJAXBElement
              | Bool
              | doc "Whether to ignore JAXBElement elements - only needed to be set to false in very special use-cases."
              | optional,
            jaxbProviderProperties
              | String
              | doc "Refers to a custom java.util.Map to lookup in the registry containing custom JAXB provider properties to be used with the JAXB marshaller."
              | optional,
            mustBeJAXBElement
              | Bool
              | doc "Whether marhsalling must be java objects with JAXB annotations. And if not then it fails. This option can be set to false to relax that, such as when the data is already in XML format."
              | optional,
            namespacePrefixRef
              | String
              | doc "When marshalling using JAXB or SOAP then the JAXB implementation will automatic assign namespace prefixes, such as ns2, ns3, ns4 etc. To control this mapping, Camel allows you to refer to a map which contains the desired mapping."
              | optional,
            noNamespaceSchemaLocation
              | String
              | doc "To define the location of the namespaceless schema"
              | optional,
            objectFactory
              | Bool
              | doc "Whether to allow using ObjectFactory classes to create the POJO classes during marshalling. This only applies to POJO classes that has not been annotated with JAXB and providing jaxb.index descriptor files."
              | optional,
            partClass
              | String
              | doc "Name of class used for fragment parsing. See more details at the fragment option."
              | optional,
            partNamespace
              | String
              | doc "XML namespace to use for fragment parsing. See more details at the fragment option."
              | optional,
            prettyPrint
              | Bool
              | doc "To enable pretty printing output nicely formatted. Is by default false."
              | optional,
            schema
              | String
              | doc "To validate against an existing schema. Your can use the prefix classpath:, file: or http: to specify how the resource should be resolved. You can separate multiple schema files by using the ',' character."
              | optional,
            schemaLocation
              | String
              | doc "To define the location of the schema"
              | optional,
            schemaSeverityLevel
              | std.enum.TagOrString
              | [| '"2", '"1", '"0" |]
              | doc "Sets the schema severity level to use when validating against a schema. This level determines the minimum severity error that triggers JAXB to stop continue parsing. The default value of 0 (warning) means that any error (warning, error or fatal error) will trigger JAXB to stop. There are the following three levels: 0=warning, 1=error, 2=fatal error."
              | optional,
            xmlStreamWriterWrapper
              | String
              | doc "To use a custom xml stream writer."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.JsonApiDataFormat" =
        {
            dataFormatTypes
              | String
              | doc "The classes to take into account for the marshalling. Multiple classes can be separated by comma."
              | optional,
            id | String | doc "The id of this node" | optional,
            mainFormatType
              | String
              | doc "The class to take into account while unmarshalling."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.JsonDataFormat" =
        {
            allowJmsType
              | Bool
              | doc "Used for JMS users to allow the JMSType header from the JMS spec to specify a FQN classname to use to unmarshal to."
              | optional,
            allowUnmarshallType
              | Bool
              | doc "If enabled then Jackson is allowed to attempt to use the CamelJacksonUnmarshalType header during the unmarshalling. This should only be enabled when desired to be used."
              | optional,
            autoDiscoverObjectMapper
              | Bool
              | doc "If set to true then Jackson will look for an objectMapper to use from the registry"
              | optional,
            autoDiscoverSchemaResolver
              | Bool
              | doc "When not disabled, the SchemaResolver will be looked up into the registry"
              | optional,
            collectionType
              | String
              | doc "Refers to a custom collection type to lookup in the registry to use. This option should rarely be used, but allows using different collection types than java.util.Collection based as default."
              | optional,
            combineUnicodeSurrogates
              | Bool
              | doc "Force generator that outputs JSON content to combine surrogate pairs (if any) into 4-byte characters. This should be preferred when using 4-byte characters such as Japanese."
              | optional,
            contentTypeHeader
              | Bool
              | doc "Whether the data format should set the Content-Type header with the type from the data format. For example application/xml for data formats marshalling to XML, or application/json for data formats marshalling to JSON"
              | optional,
            dateFormatPattern
              | String
              | doc "To configure the date format while marshall or unmarshall Date fields in JSON using Gson"
              | optional,
            disableFeatures
              | String
              | doc "Set of features to disable on the Jackson com.fasterxml.jackson.databind.ObjectMapper. The features should be a name that matches a enum from com.fasterxml.jackson.databind.SerializationFeature, com.fasterxml.jackson.databind.DeserializationFeature, or com.fasterxml.jackson.databind.MapperFeature Multiple features can be separated by comma"
              | optional,
            enableFeatures
              | String
              | doc "Set of features to enable on the Jackson com.fasterxml.jackson.databind.ObjectMapper. The features should be a name that matches a enum from com.fasterxml.jackson.databind.SerializationFeature, com.fasterxml.jackson.databind.DeserializationFeature, or com.fasterxml.jackson.databind.MapperFeature Multiple features can be separated by comma"
              | optional,
            id | String | doc "The id of this node" | optional,
            include
              | String
              | doc "If you want to marshal a pojo to JSON, and the pojo has some fields with null values. And you want to skip these null values, you can set this option to NON_NULL"
              | optional,
            jsonView
              | String
              | doc "When marshalling a POJO to JSON you might want to exclude certain fields from the JSON output. With Jackson you can use JSON views to accomplish this. This option is to refer to the class which has JsonView annotations"
              | optional,
            library
              | std.enum.TagOrString
              | [| 'Jsonb, 'Jackson, 'Gson, 'Fastjson |]
              | doc "Which json library to use."
              | optional,
            moduleClassNames
              | String
              | doc "To use custom Jackson modules com.fasterxml.jackson.databind.Module specified as a String with FQN class names. Multiple classes can be separated by comma."
              | optional,
            moduleRefs
              | String
              | doc "To use custom Jackson modules referred from the Camel registry. Multiple modules can be separated by comma."
              | optional,
            namingStrategy
              | String
              | doc "If set then Jackson will use the the defined Property Naming Strategy.Possible values are: LOWER_CAMEL_CASE, LOWER_DOT_CASE, LOWER_CASE, KEBAB_CASE, SNAKE_CASE and UPPER_CAMEL_CASE"
              | optional,
            objectMapper
              | String
              | doc "Lookup and use the existing ObjectMapper with the given id when using Jackson."
              | optional,
            prettyPrint
              | Bool
              | doc "To enable pretty printing output nicely formatted. Is by default false."
              | optional,
            schemaResolver
              | String
              | doc "Optional schema resolver used to lookup schemas for the data in transit."
              | optional,
            timezone
              | String
              | doc "If set then Jackson will use the Timezone when marshalling/unmarshalling. This option will have no effect on the others Json DataFormat, like gson and fastjson."
              | optional,
            unmarshalType
              | String
              | doc "Class name of the java type to use when unmarshalling"
              | optional,
            useDefaultObjectMapper
              | Bool
              | doc "Whether to lookup and use default Jackson ObjectMapper from the registry."
              | optional,
            useList
              | Bool
              | doc "To unmarshal to a List of Map or a List of Pojo."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.LZFDataFormat" =
        {
            id | String | doc "The id of this node" | optional,
            usingParallelCompression
              | Bool
              | doc "Enable encoding (compress) using multiple processing cores."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.MimeMultipartDataFormat" =
        {
            binaryContent
              | Bool
              | doc "Defines whether the content of binary parts in the MIME multipart is binary (true) or Base-64 encoded (false) Default is false."
              | optional,
            headersInline
              | Bool
              | doc "Defines whether the MIME-Multipart headers are part of the message body (true) or are set as Camel headers (false). Default is false."
              | optional,
            id | String | doc "The id of this node" | optional,
            includeHeaders
              | String
              | doc "A regex that defines which Camel headers are also included as MIME headers into the MIME multipart. This will only work if headersInline is set to true. Default is to include no headers"
              | optional,
            multipartSubType
              | String
              | doc "Specify the subtype of the MIME Multipart. Default is mixed."
              | optional,
            multipartWithoutAttachment
              | Bool
              | doc "Defines whether a message without attachment is also marshaled into a MIME Multipart (with only one body part). Default is false."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.PGPDataFormat" =
        {
            algorithm
              | Number
              | doc "Symmetric key encryption algorithm; possible values are defined in org.bouncycastle.bcpg.SymmetricKeyAlgorithmTags; for example 2 (= TRIPLE DES), 3 (= CAST5), 4 (= BLOWFISH), 6 (= DES), 7 (= AES_128). Only relevant for encrypting."
              | optional,
            armored
              | Bool
              | doc "This option will cause PGP to base64 encode the encrypted text, making it available for copy/paste, etc."
              | optional,
            compressionAlgorithm
              | Number
              | doc "Compression algorithm; possible values are defined in org.bouncycastle.bcpg.CompressionAlgorithmTags; for example 0 (= UNCOMPRESSED), 1 (= ZIP), 2 (= ZLIB), 3 (= BZIP2). Only relevant for encrypting."
              | optional,
            hashAlgorithm
              | Number
              | doc "Signature hash algorithm; possible values are defined in org.bouncycastle.bcpg.HashAlgorithmTags; for example 2 (= SHA1), 8 (= SHA256), 9 (= SHA384), 10 (= SHA512), 11 (=SHA224). Only relevant for signing."
              | optional,
            id | String | doc "The id of this node" | optional,
            integrity
              | Bool
              | doc "Adds an integrity check/sign into the encryption file. The default value is true."
              | optional,
            keyFileName
              | String
              | doc "Filename of the keyring; must be accessible as a classpath resource (but you can specify a location in the file system by using the file: prefix)."
              | optional,
            keyUserid
              | String
              | doc "The user ID of the key in the PGP keyring used during encryption. Can also be only a part of a user ID. For example, if the user ID is Test User then you can use the part Test User or to address the user ID."
              | optional,
            password
              | String
              | doc "Password used when opening the private key (not used for encryption)."
              | optional,
            provider
              | String
              | doc "Java Cryptography Extension (JCE) provider, default is Bouncy Castle (BC). Alternatively you can use, for example, the IAIK JCE provider; in this case the provider must be registered beforehand and the Bouncy Castle provider must not be registered beforehand. The Sun JCE provider does not work."
              | optional,
            signatureKeyFileName
              | String
              | doc "Filename of the keyring to use for signing (during encryption) or for signature verification (during decryption); must be accessible as a classpath resource (but you can specify a location in the file system by using the file: prefix)."
              | optional,
            signatureKeyRing
              | String
              | doc "Keyring used for signing/verifying as byte array. You can not set the signatureKeyFileName and signatureKeyRing at the same time."
              | optional,
            signatureKeyUserid
              | String
              | doc "User ID of the key in the PGP keyring used for signing (during encryption) or signature verification (during decryption). During the signature verification process the specified User ID restricts the public keys from the public keyring which can be used for the verification. If no User ID is specified for the signature verficiation then any public key in the public keyring can be used for the verification. Can also be only a part of a user ID. For example, if the user ID is Test User then you can use the part Test User or to address the User ID."
              | optional,
            signaturePassword
              | String
              | doc "Password used when opening the private key used for signing (during encryption)."
              | optional,
            signatureVerificationOption
              | String
              | doc "Controls the behavior for verifying the signature during unmarshaling. There are 4 values possible: optional: The PGP message may or may not contain signatures; if it does contain signatures, then a signature verification is executed. required: The PGP message must contain at least one signature; if this is not the case an exception (PGPException) is thrown. A signature verification is executed. ignore: Contained signatures in the PGP message are ignored; no signature verification is executed. no_signature_allowed: The PGP message must not contain a signature; otherwise an exception (PGPException) is thrown."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.ParquetAvroDataFormat" =
        std.contract.any_of
            [
              String,
              {
                compressionCodecName
                  | std.enum.TagOrString
                  | [|
                    'LZ4_RAW,
                    'ZSTD,
                    'LZ4,
                    'BROTLI,
                    'LZO,
                    'GZIP,
                    'SNAPPY,
                    'UNCOMPRESSED
                  |]
                  | doc "Compression codec to use when marshalling."
                  | optional,
                id | String | doc "The id of this node" | optional,
                lazyLoad
                  | Bool
                  | doc "Whether the unmarshalling should produce an iterator of records or read all the records at once."
                  | optional,
                unmarshalType
                  | String
                  | doc "Class to use when (un)marshalling. If omitted, parquet files are converted into Avro's GenericRecords for unmarshalling and input objects are assumed as GenericRecords for marshalling."
                  | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.dataformat.ProtobufDataFormat" =
        std.contract.any_of
            [
              String,
              {
                allowJmsType
                  | Bool
                  | doc "Used for JMS users to allow the JMSType header from the JMS spec to specify a FQN classname to use to unmarshal to."
                  | optional,
                allowUnmarshallType
                  | Bool
                  | doc "If enabled then Jackson is allowed to attempt to use the CamelJacksonUnmarshalType header during the unmarshalling. This should only be enabled when desired to be used."
                  | optional,
                autoDiscoverObjectMapper
                  | Bool
                  | doc "If set to true then Jackson will lookup for an objectMapper into the registry"
                  | optional,
                autoDiscoverSchemaResolver
                  | Bool
                  | doc "When not disabled, the SchemaResolver will be looked up into the registry"
                  | optional,
                collectionType
                  | String
                  | doc "Refers to a custom collection type to lookup in the registry to use. This option should rarely be used, but allows to use different collection types than java.util.Collection based as default."
                  | optional,
                contentTypeFormat
                  | std.enum.TagOrString
                  | [| 'json, 'native |]
                  | doc "Defines a content type format in which protobuf message will be serialized/deserialized from(to) the Java been. The format can either be native or json for either native protobuf or json fields representation. The default value is native."
                  | optional,
                contentTypeHeader
                  | Bool
                  | doc "Whether the data format should set the Content-Type header with the type from the data format. For example application/xml for data formats marshalling to XML, or application/json for data formats marshalling to JSON"
                  | optional,
                disableFeatures
                  | String
                  | doc "Set of features to disable on the Jackson com.fasterxml.jackson.databind.ObjectMapper. The features should be a name that matches a enum from com.fasterxml.jackson.databind.SerializationFeature, com.fasterxml.jackson.databind.DeserializationFeature, or com.fasterxml.jackson.databind.MapperFeature Multiple features can be separated by comma"
                  | optional,
                enableFeatures
                  | String
                  | doc "Set of features to enable on the Jackson com.fasterxml.jackson.databind.ObjectMapper. The features should be a name that matches a enum from com.fasterxml.jackson.databind.SerializationFeature, com.fasterxml.jackson.databind.DeserializationFeature, or com.fasterxml.jackson.databind.MapperFeature Multiple features can be separated by comma"
                  | optional,
                id | String | doc "The id of this node" | optional,
                include
                  | String
                  | doc "If you want to marshal a pojo to JSON, and the pojo has some fields with null values. And you want to skip these null values, you can set this option to NON_NULL"
                  | optional,
                instanceClass
                  | String
                  | doc "Name of class to use when unmarshalling"
                  | optional,
                jsonView
                  | String
                  | doc "When marshalling a POJO to JSON you might want to exclude certain fields from the JSON output. With Jackson you can use JSON views to accomplish this. This option is to refer to the class which has JsonView annotations"
                  | optional,
                library
                  | std.enum.TagOrString
                  | [| 'Jackson, 'GoogleProtobuf |]
                  | doc "Which Protobuf library to use."
                  | optional,
                moduleClassNames
                  | String
                  | doc "To use custom Jackson modules com.fasterxml.jackson.databind.Module specified as a String with FQN class names. Multiple classes can be separated by comma."
                  | optional,
                moduleRefs
                  | String
                  | doc "To use custom Jackson modules referred from the Camel registry. Multiple modules can be separated by comma."
                  | optional,
                objectMapper
                  | String
                  | doc "Lookup and use the existing ObjectMapper with the given id when using Jackson."
                  | optional,
                schemaResolver
                  | String
                  | doc "Optional schema resolver used to lookup schemas for the data in transit."
                  | optional,
                timezone
                  | String
                  | doc "If set then Jackson will use the Timezone when marshalling/unmarshalling."
                  | optional,
                unmarshalType
                  | String
                  | doc "Class name of the java type to use when unmarshalling"
                  | optional,
                useDefaultObjectMapper
                  | Bool
                  | doc "Whether to lookup and use default Jackson ObjectMapper from the registry."
                  | optional,
                useList
                  | Bool
                  | doc "To unmarshal to a List of Map or a List of Pojo."
                  | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.dataformat.RssDataFormat" =
        { id | String | doc "The id of this node" | optional, },
      "items.definitions.org.apache.camel.model.dataformat.SmooksDataFormat" =
        {
            id | String | doc "The id of this node" | optional,
            smooksConfig
              | String
              | doc "Path to the Smooks configuration file.",
          },
      "items.definitions.org.apache.camel.model.dataformat.SoapDataFormat" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "contextPath" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    contextPath
                      | String
                      | doc "Package name where your JAXB classes are located."
                      | optional,
                    elementNameStrategyRef
                      | String
                      | doc "Refers to an element strategy to lookup from the registry. An element name strategy is used for two purposes. The first is to find a xml element name for a given object and soap action when marshaling the object into a SOAP message. The second is to find an Exception class for a given soap fault name. The following three element strategy class name is provided out of the box. QNameStrategy - Uses a fixed qName that is configured on instantiation. Exception lookup is not supported TypeNameStrategy - Uses the name and namespace from the XMLType annotation of the given type. If no namespace is set then package-info is used. Exception lookup is not supported ServiceInterfaceStrategy - Uses information from a webservice interface to determine the type name and to find the exception class for a SOAP fault All three classes is located in the package name org.apache.camel.dataformat.soap.name If you have generated the web service stub code with cxf-codegen or a similar tool then you probably will want to use the ServiceInterfaceStrategy. In the case you have no annotated service interface you should use QNameStrategy or TypeNameStrategy."
                      | optional,
                    encoding
                      | String
                      | doc "To overrule and use a specific encoding"
                      | optional,
                    id | String | doc "The id of this node" | optional,
                    namespacePrefixRef
                      | String
                      | doc "When marshalling using JAXB or SOAP then the JAXB implementation will automatic assign namespace prefixes, such as ns2, ns3, ns4 etc. To control this mapping, Camel allows you to refer to a map which contains the desired mapping."
                      | optional,
                    schema
                      | String
                      | doc "To validate against an existing schema. Your can use the prefix classpath:, file: or http: to specify how the resource should be resolved. You can separate multiple schema files by using the ',' character."
                      | optional,
                    version
                      | std.enum.TagOrString
                      | [| '"1.2", '"1.1" |]
                      | doc "SOAP version should either be 1.1 or 1.2. Is by default 1.1"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.dataformat.SwiftMtDataFormat" =
        std.contract.any_of
            [
              String,
              {
                id | String | doc "The id of this node" | optional,
                writeInJson
                  | Bool
                  | doc "The flag indicating that messages must be marshalled in a JSON format."
                  | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.dataformat.SwiftMxDataFormat" =
        {
            id | String | doc "The id of this node" | optional,
            readConfigRef
              | String
              | doc "Refers to a specific configuration to use when unmarshalling an input stream to lookup from the registry."
              | optional,
            readMessageId
              | String
              | doc "The type of MX message to produce when unmarshalling an input stream. If not set, it will be automatically detected from the namespace used."
              | optional,
            writeConfigRef
              | String
              | doc "Refers to a specific configuration to use when marshalling a message to lookup from the registry."
              | optional,
            writeInJson
              | Bool
              | doc "The flag indicating that messages must be marshalled in a JSON format."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.SyslogDataFormat" =
        { id | String | doc "The id of this node" | optional, },
      "items.definitions.org.apache.camel.model.dataformat.TarFileDataFormat" =
        {
            allowEmptyDirectory
              | Bool
              | doc "If the tar file has more than one entry, setting this option to true, allows to get the iterator even if the directory is empty"
              | optional,
            id | String | doc "The id of this node" | optional,
            maxDecompressedSize
              | Number
              | doc "Set the maximum decompressed size of a tar file (in bytes). The default value if not specified corresponds to 1 gigabyte. An IOException will be thrown if the decompressed size exceeds this amount. Set to -1 to disable setting a maximum decompressed size."
              | optional,
            preservePathElements
              | Bool
              | doc "If the file name contains path elements, setting this option to true, allows the path to be maintained in the tar file."
              | optional,
            usingIterator
              | Bool
              | doc "If the tar file has more than one entry, the setting this option to true, allows working with the splitter EIP, to split the data using an iterator in a streaming mode."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.ThriftDataFormat" =
        std.contract.any_of
            [
              String,
              {
                contentTypeFormat
                  | std.enum.TagOrString
                  | [| 'sjson, 'json, 'binary |]
                  | doc "Defines a content type format in which thrift message will be serialized/deserialized from(to) the Java been. The format can either be native or json for either native binary thrift, json or simple json fields representation. The default value is binary."
                  | optional,
                contentTypeHeader
                  | Bool
                  | doc "Whether the data format should set the Content-Type header with the type from the data format. For example application/xml for data formats marshalling to XML, or application/json for data formats marshalling to JSON"
                  | optional,
                id | String | doc "The id of this node" | optional,
                instanceClass
                  | String
                  | doc "Name of class to use when unmarshalling"
                  | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.dataformat.TidyMarkupDataFormat" =
        {
            dataObjectType
              | std.enum.TagOrString
              | [| '"java.lang.String", '"org.w3c.dom.Node" |]
              | doc "What data type to unmarshal as, can either be org.w3c.dom.Node or java.lang.String. Is by default org.w3c.dom.Node"
              | optional,
            id | String | doc "The id of this node" | optional,
            omitXmlDeclaration
              | Bool
              | doc "When returning a String, do we omit the XML declaration in the top."
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.UniVocityCsvDataFormat" =
        {
            asMap
              | Bool
              | doc "Whether the unmarshalling should produce maps for the lines values instead of lists. It requires to have header (either defined or collected). The default value is false"
              | optional,
            comment
              | String
              | doc "The comment symbol. The default value is #"
              | optional,
            delimiter | String | doc "The delimiter of values" | optional,
            emptyValue
              | String
              | doc "The String representation of an empty value."
              | optional,
            headerExtractionEnabled
              | Bool
              | doc "Whether or not the header must be read in the first line of the test document. The default value is false"
              | optional,
            headersDisabled
              | Bool
              | doc "Whether or not the headers are disabled. When defined, this option explicitly sets the headers as null which indicates that there is no header. The default value is false"
              | optional,
            id | String | doc "The id of this node" | optional,
            ignoreLeadingWhitespaces
              | Bool
              | doc "Whether or not the leading white spaces must be ignored. The default value is true"
              | optional,
            ignoreTrailingWhitespaces
              | Bool
              | doc "Whether or not the trailing white spaces must be ignored. The default value is true"
              | optional,
            lazyLoad
              | Bool
              | doc "Whether the unmarshalling should produce an iterator that reads the lines on the fly or if all the lines must be read at once. The default value is false"
              | optional,
            lineSeparator
              | String
              | doc "The line separator of the files. The default value is to use the JVM platform line separator"
              | optional,
            normalizedLineSeparator
              | String
              | doc "The normalized line separator of the files. The default value is a new line character."
              | optional,
            nullValue
              | String
              | doc "The string representation of a null value. The default value is null"
              | optional,
            numberOfRecordsToRead
              | Number
              | doc "The maximum number of record to read."
              | optional,
            quote | String | doc "The quote symbol." | optional,
            quoteAllFields
              | Bool
              | doc "Whether or not all values must be quoted when writing them."
              | optional,
            quoteEscape | String | doc "The quote escape symbol" | optional,
            skipEmptyLines
              | Bool
              | doc "Whether or not the empty lines must be ignored. The default value is true"
              | optional,
            univocityHeader
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.dataformat.UniVocityHeader",
                    { _ | Dyn }
                  ]
              )
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.UniVocityFixedDataFormat" =
        {
            asMap
              | Bool
              | doc "Whether the unmarshalling should produce maps for the lines values instead of lists. It requires to have header (either defined or collected). The default value is false"
              | optional,
            comment
              | String
              | doc "The comment symbol. The default value is #"
              | optional,
            emptyValue
              | String
              | doc "The String representation of an empty value."
              | optional,
            headerExtractionEnabled
              | Bool
              | doc "Whether or not the header must be read in the first line of the test document. The default value is false"
              | optional,
            headersDisabled
              | Bool
              | doc "Whether or not the headers are disabled. When defined, this option explicitly sets the headers as null which indicates that there is no header. The default value is false"
              | optional,
            id | String | doc "The id of this node" | optional,
            ignoreLeadingWhitespaces
              | Bool
              | doc "Whether or not the leading white spaces must be ignored. The default value is true"
              | optional,
            ignoreTrailingWhitespaces
              | Bool
              | doc "Whether or not the trailing white spaces must be ignored. The default value is true"
              | optional,
            lazyLoad
              | Bool
              | doc "Whether the unmarshalling should produce an iterator that reads the lines on the fly or if all the lines must be read at once. The default value is false"
              | optional,
            lineSeparator
              | String
              | doc "The line separator of the files. The default value is to use the JVM platform line separator"
              | optional,
            normalizedLineSeparator
              | String
              | doc "The normalized line separator of the files. The default value is a new line character."
              | optional,
            nullValue
              | String
              | doc "The string representation of a null value. The default value is null"
              | optional,
            numberOfRecordsToRead
              | Number
              | doc "The maximum number of record to read."
              | optional,
            padding
              | String
              | doc "The padding character. The default value is a space"
              | optional,
            recordEndsOnNewline
              | Bool
              | doc "Whether or not the record ends on new line. The default value is false"
              | optional,
            skipEmptyLines
              | Bool
              | doc "Whether or not the empty lines must be ignored. The default value is true"
              | optional,
            skipTrailingCharsUntilNewline
              | Bool
              | doc "Whether or not the trailing characters until new line must be ignored. The default value is false"
              | optional,
            univocityHeader
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.dataformat.UniVocityHeader",
                    { _ | Dyn }
                  ]
              )
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.UniVocityHeader" =
        {
            length | String | doc "Header length" | optional,
            name | String | doc "Header name" | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.UniVocityTsvDataFormat" =
        {
            asMap
              | Bool
              | doc "Whether the unmarshalling should produce maps for the lines values instead of lists. It requires to have header (either defined or collected). The default value is false"
              | optional,
            comment
              | String
              | doc "The comment symbol. The default value is #"
              | optional,
            emptyValue
              | String
              | doc "The String representation of an empty value."
              | optional,
            escapeChar | String | doc "The escape character." | optional,
            headerExtractionEnabled
              | Bool
              | doc "Whether or not the header must be read in the first line of the test document. The default value is false"
              | optional,
            headersDisabled
              | Bool
              | doc "Whether or not the headers are disabled. When defined, this option explicitly sets the headers as null which indicates that there is no header. The default value is false"
              | optional,
            id | String | doc "The id of this node" | optional,
            ignoreLeadingWhitespaces
              | Bool
              | doc "Whether or not the leading white spaces must be ignored. The default value is true"
              | optional,
            ignoreTrailingWhitespaces
              | Bool
              | doc "Whether or not the trailing white spaces must be ignored. The default value is true"
              | optional,
            lazyLoad
              | Bool
              | doc "Whether the unmarshalling should produce an iterator that reads the lines on the fly or if all the lines must be read at once. The default value is false"
              | optional,
            lineSeparator
              | String
              | doc "The line separator of the files. The default value is to use the JVM platform line separator"
              | optional,
            normalizedLineSeparator
              | String
              | doc "The normalized line separator of the files. The default value is a new line character."
              | optional,
            nullValue
              | String
              | doc "The string representation of a null value. The default value is null"
              | optional,
            numberOfRecordsToRead
              | Number
              | doc "The maximum number of record to read."
              | optional,
            skipEmptyLines
              | Bool
              | doc "Whether or not the empty lines must be ignored. The default value is true"
              | optional,
            univocityHeader
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.dataformat.UniVocityHeader",
                    { _ | Dyn }
                  ]
              )
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.XMLSecurityDataFormat" =
        {
            addKeyValueForEncryptedKey
              | Bool
              | doc "Whether to add the public key used to encrypt the session key as a KeyValue in the EncryptedKey structure or not."
              | optional,
            digestAlgorithm
              | std.enum.TagOrString
              | [| 'SHA512, 'SHA256, 'SHA1 |]
              | doc "The digest algorithm to use with the RSA OAEP algorithm. The available choices are: XMLCipher.SHA1 XMLCipher.SHA256 XMLCipher.SHA512 The default value is XMLCipher.SHA1"
              | optional,
            id | String | doc "The id of this node" | optional,
            keyCipherAlgorithm
              | std.enum.TagOrString
              | [| 'RSA_OAEP_11, 'RSA_OAEP, 'RSA_v1dot5 |]
              | doc "The cipher algorithm to be used for encryption/decryption of the asymmetric key. The available choices are: XMLCipher.RSA_v1dot5 XMLCipher.RSA_OAEP XMLCipher.RSA_OAEP_11 The default value is XMLCipher.RSA_OAEP"
              | optional,
            keyOrTrustStoreParametersRef
              | String
              | doc "Refers to a KeyStore instance to lookup in the registry, which is used for configuration options for creating and loading a KeyStore instance that represents the sender's trustStore or recipient's keyStore."
              | optional,
            keyPassword
              | String
              | doc "The password to be used for retrieving the private key from the KeyStore. This key is used for asymmetric decryption."
              | optional,
            mgfAlgorithm
              | std.enum.TagOrString
              | [| 'MGF1_SHA512, 'MGF1_SHA256, 'MGF1_SHA1 |]
              | doc "The MGF Algorithm to use with the RSA OAEP algorithm. The available choices are: EncryptionConstants.MGF1_SHA1 EncryptionConstants.MGF1_SHA256 EncryptionConstants.MGF1_SHA512 The default value is EncryptionConstants.MGF1_SHA1"
              | optional,
            passPhrase
              | String
              | doc "A String used as passPhrase to encrypt/decrypt content. The passPhrase has to be provided. The passPhrase needs to be put together in conjunction with the appropriate encryption algorithm. For example using TRIPLEDES the passPhase can be a Only another 24 Byte key"
              | optional,
            passPhraseByte
              | String
              | doc "A byte used as passPhrase to encrypt/decrypt content. The passPhrase has to be provided. The passPhrase needs to be put together in conjunction with the appropriate encryption algorithm. For example using TRIPLEDES the passPhase can be a Only another 24 Byte key"
              | optional,
            recipientKeyAlias
              | String
              | doc "The key alias to be used when retrieving the recipient's public or private key from a KeyStore when performing asymmetric key encryption or decryption."
              | optional,
            secureTag
              | String
              | doc "The XPath reference to the XML Element selected for encryption/decryption. If no tag is specified, the entire payload is encrypted/decrypted."
              | optional,
            secureTagContents
              | Bool
              | doc "A boolean value to specify whether the XML Element is to be encrypted or the contents of the XML Element. false = Element Level. true = Element Content Level."
              | optional,
            xmlCipherAlgorithm
              | std.enum.TagOrString
              | [|
                'CAMELLIA_256,
                'CAMELLIA_192,
                'CAMELLIA_128,
                'SEED_128,
                'AES_256_GCM,
                'AES_256,
                'AES_192_GCM,
                'AES_192,
                'AES_128_GCM,
                'AES_128,
                'TRIPLEDES
              |]
              | doc "The cipher algorithm to be used for encryption/decryption of the XML message content. The available choices are: XMLCipher.TRIPLEDES XMLCipher.AES_128 XMLCipher.AES_128_GCM XMLCipher.AES_192 XMLCipher.AES_192_GCM XMLCipher.AES_256 XMLCipher.AES_256_GCM XMLCipher.SEED_128 XMLCipher.CAMELLIA_128 XMLCipher.CAMELLIA_192 XMLCipher.CAMELLIA_256 The default value is XMLCipher.AES_256_GCM"
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.YAMLDataFormat" =
        {
            allowAnyType
              | Bool
              | doc "Allow any class to be un-marshaled"
              | optional,
            allowRecursiveKeys
              | Bool
              | doc "Set whether recursive keys are allowed."
              | optional,
            constructor
              | String
              | doc "BaseConstructor to construct incoming documents."
              | optional,
            dumperOptions
              | String
              | doc "DumperOptions to configure outgoing objects."
              | optional,
            id | String | doc "The id of this node" | optional,
            library
              | std.enum.TagOrString
              | [| 'SnakeYAML |]
              | doc "Which yaml library to use. By default it is SnakeYAML"
              | optional,
            maxAliasesForCollections
              | Number
              | doc "Set the maximum amount of aliases allowed for collections."
              | optional,
            prettyFlow
              | Bool
              | doc "Force the emitter to produce a pretty YAML document when using the flow style."
              | optional,
            representer
              | String
              | doc "Representer to emit outgoing objects."
              | optional,
            resolver
              | String
              | doc "Resolver to detect implicit type"
              | optional,
            typeFilter
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.dataformat.YAMLTypeFilterDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Set the types SnakeYAML is allowed to un-marshall"
              | optional,
            unmarshalType
              | String
              | doc "Class name of the java type to use when unmarshalling"
              | optional,
            useApplicationContextClassLoader
              | Bool
              | doc "Use ApplicationContextClassLoader as custom ClassLoader"
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.YAMLTypeFilterDefinition" =
        {
            type
              | String
              | doc "Whether to filter by class type or regular expression"
              | optional,
            value
              | String
              | doc "Value of type such as class name or regular expression"
              | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.ZipDeflaterDataFormat" =
        {
            compressionLevel
              | std.enum.TagOrString
              | [|
                '"9",
                '"8",
                '"7",
                '"6",
                '"5",
                '"4",
                '"3",
                '"2",
                '"1",
                '"0",
                '"-1"
              |]
              | doc "To specify a specific compression between 0-9. -1 is default compression, 0 is no compression, and 9 is the best compression."
              | optional,
            id | String | doc "The id of this node" | optional,
          },
      "items.definitions.org.apache.camel.model.dataformat.ZipFileDataFormat" =
        {
            allowEmptyDirectory
              | Bool
              | doc "If the zip file has more than one entry, setting this option to true, allows to get the iterator even if the directory is empty"
              | optional,
            id | String | doc "The id of this node" | optional,
            maxDecompressedSize
              | Number
              | doc "Set the maximum decompressed size of a zip file (in bytes). The default value if not specified corresponds to 1 gigabyte. An IOException will be thrown if the decompressed size exceeds this amount. Set to -1 to disable setting a maximum decompressed size."
              | optional,
            preservePathElements
              | Bool
              | doc "If the file name contains path elements, setting this option to true, allows the path to be maintained in the zip file."
              | optional,
            usingIterator
              | Bool
              | doc "If the zip file has more than one entry, the setting this option to true, allows working with the splitter EIP, to split the data using an iterator in a streaming mode."
              | optional,
          },
      "items.definitions.org.apache.camel.model.errorhandler.DeadLetterChannelDefinition" =
        {
            deadLetterHandleNewException
              | Bool
              | doc "Whether the dead letter channel should handle (and ignore) any new exception that may been thrown during sending the message to the dead letter endpoint. The default value is true which means any such kind of exception is handled and ignored. Set this to false to let the exception be propagated back on the org.apache.camel.Exchange . This can be used in situations where you use transactions, and want to use Camel's dead letter channel to deal with exceptions during routing, but if the dead letter channel itself fails because of a new exception being thrown, then by setting this to false the new exceptions is propagated back and set on the org.apache.camel.Exchange , which allows the transaction to detect the exception, and rollback."
              | optional,
            deadLetterUri
              | String
              | doc "The dead letter endpoint uri for the Dead Letter error handler.",
            executorServiceRef
              | String
              | doc "Sets a reference to a thread pool to be used by the error handler"
              | optional,
            id | String | doc "The id of this node" | optional,
            level
              | std.enum.TagOrString
              | [| 'OFF, 'ERROR, 'WARN, 'INFO, 'DEBUG, 'TRACE |]
              | doc "Logging level to use by error handler"
              | optional,
            logName
              | String
              | doc "Name of the logger to use by the error handler"
              | optional,
            loggerRef
              | String
              | doc "References to a logger to use as logger for the error handler"
              | optional,
            onExceptionOccurredRef
              | String
              | doc "Sets a reference to a processor that should be processed just after an exception occurred. Can be used to perform custom logging about the occurred exception at the exact time it happened. Important: Any exception thrown from this processor will be ignored."
              | optional,
            onPrepareFailureRef
              | String
              | doc "Sets a reference to a processor to prepare the org.apache.camel.Exchange before handled by the failure processor / dead letter channel. This allows for example to enrich the message before sending to a dead letter queue."
              | optional,
            onRedeliveryRef
              | String
              | doc "Sets a reference to a processor that should be processed before a redelivery attempt. Can be used to change the org.apache.camel.Exchange before its being redelivered."
              | optional,
            redeliveryPolicy
              | refs."items.definitions.org.apache.camel.model.RedeliveryPolicyDefinition"
              | { _ | Dyn }
              | doc "Sets the redelivery settings"
              | optional,
            redeliveryPolicyRef
              | String
              | doc "Sets a reference to a RedeliveryPolicy to be used for redelivery settings."
              | optional,
            retryWhileRef
              | String
              | doc "Sets a retry while predicate. Will continue retrying until the predicate evaluates to false."
              | optional,
            useOriginalBody
              | Bool
              | doc "Will use the original input org.apache.camel.Message body (original body only) when an org.apache.camel.Exchange is moved to the dead letter queue. Notice: this only applies when all redeliveries attempt have failed and the org.apache.camel.Exchange is doomed for failure. Instead of using the current inprogress org.apache.camel.Exchange IN message we use the original IN message instead. This allows you to store the original input in the dead letter queue instead of the inprogress snapshot of the IN message. For instance if you route transform the IN body during routing and then failed. With the original exchange store in the dead letter queue it might be easier to manually re submit the org.apache.camel.Exchange again as the IN message is the same as when Camel received it. So you should be able to send the org.apache.camel.Exchange to the same input. The difference between useOriginalMessage and useOriginalBody is that the former includes both the original body and headers, where as the latter only includes the original body. You can use the latter to enrich the message with custom headers and include the original message body. The former wont let you do this, as its using the original message body and headers as they are. You cannot enable both useOriginalMessage and useOriginalBody. The original input message is defensively copied, and the copied message body is converted to org.apache.camel.StreamCache if possible (stream caching is enabled, can be disabled globally or on the original route), to ensure the body can be read when the original message is being used later. If the body is converted to org.apache.camel.StreamCache then the message body on the current org.apache.camel.Exchange is replaced with the org.apache.camel.StreamCache body. If the body is not converted to org.apache.camel.StreamCache then the body will not be able to re-read when accessed later. Important: The original input means the input message that are bounded by the current org.apache.camel.spi.UnitOfWork . An unit of work typically spans one route, or multiple routes if they are connected using internal endpoints such as direct or seda. When messages is passed via external endpoints such as JMS or HTTP then the consumer will create a new unit of work, with the message it received as input as the original input. Also some EIP patterns such as splitter, multicast, will create a new unit of work boundary for the messages in their sub-route (eg the splitted message); however these EIPs have an option named shareUnitOfWork which allows to combine with the parent unit of work in regard to error handling and therefore use the parent original message. By default this feature is off."
              | optional,
            useOriginalMessage
              | Bool
              | doc "Will use the original input org.apache.camel.Message (original body and headers) when an org.apache.camel.Exchange is moved to the dead letter queue. Notice: this only applies when all redeliveries attempt have failed and the org.apache.camel.Exchange is doomed for failure. Instead of using the current inprogress org.apache.camel.Exchange IN message we use the original IN message instead. This allows you to store the original input in the dead letter queue instead of the inprogress snapshot of the IN message. For instance if you route transform the IN body during routing and then failed. With the original exchange store in the dead letter queue it might be easier to manually re submit the org.apache.camel.Exchange again as the IN message is the same as when Camel received it. So you should be able to send the org.apache.camel.Exchange to the same input. The difference between useOriginalMessage and useOriginalBody is that the former includes both the original body and headers, where as the latter only includes the original body. You can use the latter to enrich the message with custom headers and include the original message body. The former wont let you do this, as its using the original message body and headers as they are. You cannot enable both useOriginalMessage and useOriginalBody. The original input message is defensively copied, and the copied message body is converted to org.apache.camel.StreamCache if possible (stream caching is enabled, can be disabled globally or on the original route), to ensure the body can be read when the original message is being used later. If the body is converted to org.apache.camel.StreamCache then the message body on the current org.apache.camel.Exchange is replaced with the org.apache.camel.StreamCache body. If the body is not converted to org.apache.camel.StreamCache then the body will not be able to re-read when accessed later. Important: The original input means the input message that are bounded by the current org.apache.camel.spi.UnitOfWork . An unit of work typically spans one route, or multiple routes if they are connected using internal endpoints such as direct or seda. When messages is passed via external endpoints such as JMS or HTTP then the consumer will create a new unit of work, with the message it received as input as the original input. Also some EIP patterns such as splitter, multicast, will create a new unit of work boundary for the messages in their sub-route (eg the splitted message); however these EIPs have an option named shareUnitOfWork which allows to combine with the parent unit of work in regard to error handling and therefore use the parent original message. By default this feature is off."
              | optional,
          },
      "items.definitions.org.apache.camel.model.errorhandler.DefaultErrorHandlerDefinition" =
        {
            executorServiceRef
              | String
              | doc "Sets a reference to a thread pool to be used by the error handler"
              | optional,
            id | String | doc "The id of this node" | optional,
            level
              | std.enum.TagOrString
              | [| 'OFF, 'ERROR, 'WARN, 'INFO, 'DEBUG, 'TRACE |]
              | doc "Logging level to use by error handler"
              | optional,
            logName
              | String
              | doc "Name of the logger to use by the error handler"
              | optional,
            loggerRef
              | String
              | doc "References to a logger to use as logger for the error handler"
              | optional,
            onExceptionOccurredRef
              | String
              | doc "Sets a reference to a processor that should be processed just after an exception occurred. Can be used to perform custom logging about the occurred exception at the exact time it happened. Important: Any exception thrown from this processor will be ignored."
              | optional,
            onPrepareFailureRef
              | String
              | doc "Sets a reference to a processor to prepare the org.apache.camel.Exchange before handled by the failure processor / dead letter channel. This allows for example to enrich the message before sending to a dead letter queue."
              | optional,
            onRedeliveryRef
              | String
              | doc "Sets a reference to a processor that should be processed before a redelivery attempt. Can be used to change the org.apache.camel.Exchange before its being redelivered."
              | optional,
            redeliveryPolicy
              | refs."items.definitions.org.apache.camel.model.RedeliveryPolicyDefinition"
              | { _ | Dyn }
              | doc "Sets the redelivery settings"
              | optional,
            redeliveryPolicyRef
              | String
              | doc "Sets a reference to a RedeliveryPolicy to be used for redelivery settings."
              | optional,
            retryWhileRef
              | String
              | doc "Sets a retry while predicate. Will continue retrying until the predicate evaluates to false."
              | optional,
            useOriginalBody
              | Bool
              | doc "Will use the original input org.apache.camel.Message body (original body only) when an org.apache.camel.Exchange is moved to the dead letter queue. Notice: this only applies when all redeliveries attempt have failed and the org.apache.camel.Exchange is doomed for failure. Instead of using the current inprogress org.apache.camel.Exchange IN message we use the original IN message instead. This allows you to store the original input in the dead letter queue instead of the inprogress snapshot of the IN message. For instance if you route transform the IN body during routing and then failed. With the original exchange store in the dead letter queue it might be easier to manually re submit the org.apache.camel.Exchange again as the IN message is the same as when Camel received it. So you should be able to send the org.apache.camel.Exchange to the same input. The difference between useOriginalMessage and useOriginalBody is that the former includes both the original body and headers, where as the latter only includes the original body. You can use the latter to enrich the message with custom headers and include the original message body. The former wont let you do this, as its using the original message body and headers as they are. You cannot enable both useOriginalMessage and useOriginalBody. The original input message is defensively copied, and the copied message body is converted to org.apache.camel.StreamCache if possible (stream caching is enabled, can be disabled globally or on the original route), to ensure the body can be read when the original message is being used later. If the body is converted to org.apache.camel.StreamCache then the message body on the current org.apache.camel.Exchange is replaced with the org.apache.camel.StreamCache body. If the body is not converted to org.apache.camel.StreamCache then the body will not be able to re-read when accessed later. Important: The original input means the input message that are bounded by the current org.apache.camel.spi.UnitOfWork . An unit of work typically spans one route, or multiple routes if they are connected using internal endpoints such as direct or seda. When messages is passed via external endpoints such as JMS or HTTP then the consumer will create a new unit of work, with the message it received as input as the original input. Also some EIP patterns such as splitter, multicast, will create a new unit of work boundary for the messages in their sub-route (eg the splitted message); however these EIPs have an option named shareUnitOfWork which allows to combine with the parent unit of work in regard to error handling and therefore use the parent original message. By default this feature is off."
              | optional,
            useOriginalMessage
              | Bool
              | doc "Will use the original input org.apache.camel.Message (original body and headers) when an org.apache.camel.Exchange is moved to the dead letter queue. Notice: this only applies when all redeliveries attempt have failed and the org.apache.camel.Exchange is doomed for failure. Instead of using the current inprogress org.apache.camel.Exchange IN message we use the original IN message instead. This allows you to store the original input in the dead letter queue instead of the inprogress snapshot of the IN message. For instance if you route transform the IN body during routing and then failed. With the original exchange store in the dead letter queue it might be easier to manually re submit the org.apache.camel.Exchange again as the IN message is the same as when Camel received it. So you should be able to send the org.apache.camel.Exchange to the same input. The difference between useOriginalMessage and useOriginalBody is that the former includes both the original body and headers, where as the latter only includes the original body. You can use the latter to enrich the message with custom headers and include the original message body. The former wont let you do this, as its using the original message body and headers as they are. You cannot enable both useOriginalMessage and useOriginalBody. The original input message is defensively copied, and the copied message body is converted to org.apache.camel.StreamCache if possible (stream caching is enabled, can be disabled globally or on the original route), to ensure the body can be read when the original message is being used later. If the body is converted to org.apache.camel.StreamCache then the message body on the current org.apache.camel.Exchange is replaced with the org.apache.camel.StreamCache body. If the body is not converted to org.apache.camel.StreamCache then the body will not be able to re-read when accessed later. Important: The original input means the input message that are bounded by the current org.apache.camel.spi.UnitOfWork . An unit of work typically spans one route, or multiple routes if they are connected using internal endpoints such as direct or seda. When messages is passed via external endpoints such as JMS or HTTP then the consumer will create a new unit of work, with the message it received as input as the original input. Also some EIP patterns such as splitter, multicast, will create a new unit of work boundary for the messages in their sub-route (eg the splitted message); however these EIPs have an option named shareUnitOfWork which allows to combine with the parent unit of work in regard to error handling and therefore use the parent original message. By default this feature is off."
              | optional,
          },
      "items.definitions.org.apache.camel.model.errorhandler.JtaTransactionErrorHandlerDefinition" =
        {
            executorServiceRef
              | String
              | doc "Sets a reference to a thread pool to be used by the error handler"
              | optional,
            id | String | doc "The id of this node" | optional,
            level
              | std.enum.TagOrString
              | [| 'OFF, 'ERROR, 'WARN, 'INFO, 'DEBUG, 'TRACE |]
              | doc "Logging level to use by error handler"
              | optional,
            logName
              | String
              | doc "Name of the logger to use by the error handler"
              | optional,
            loggerRef
              | String
              | doc "References to a logger to use as logger for the error handler"
              | optional,
            onExceptionOccurredRef
              | String
              | doc "Sets a reference to a processor that should be processed just after an exception occurred. Can be used to perform custom logging about the occurred exception at the exact time it happened. Important: Any exception thrown from this processor will be ignored."
              | optional,
            onPrepareFailureRef
              | String
              | doc "Sets a reference to a processor to prepare the org.apache.camel.Exchange before handled by the failure processor / dead letter channel. This allows for example to enrich the message before sending to a dead letter queue."
              | optional,
            onRedeliveryRef
              | String
              | doc "Sets a reference to a processor that should be processed before a redelivery attempt. Can be used to change the org.apache.camel.Exchange before its being redelivered."
              | optional,
            redeliveryPolicy
              | refs."items.definitions.org.apache.camel.model.RedeliveryPolicyDefinition"
              | { _ | Dyn }
              | doc "Sets the redelivery settings"
              | optional,
            redeliveryPolicyRef
              | String
              | doc "Sets a reference to a RedeliveryPolicy to be used for redelivery settings."
              | optional,
            retryWhileRef
              | String
              | doc "Sets a retry while predicate. Will continue retrying until the predicate evaluates to false."
              | optional,
            rollbackLoggingLevel
              | std.enum.TagOrString
              | [| 'OFF, 'ERROR, 'WARN, 'INFO, 'DEBUG, 'TRACE |]
              | doc "Sets the logging level to use for logging transactional rollback. This option is default WARN."
              | optional,
            transactedPolicyRef
              | String
              | doc "The transacted policy to use that is configured for either Spring or JTA based transactions. If no policy has been configured then Camel will attempt to auto-discover."
              | optional,
            useOriginalBody
              | Bool
              | doc "Will use the original input org.apache.camel.Message body (original body only) when an org.apache.camel.Exchange is moved to the dead letter queue. Notice: this only applies when all redeliveries attempt have failed and the org.apache.camel.Exchange is doomed for failure. Instead of using the current inprogress org.apache.camel.Exchange IN message we use the original IN message instead. This allows you to store the original input in the dead letter queue instead of the inprogress snapshot of the IN message. For instance if you route transform the IN body during routing and then failed. With the original exchange store in the dead letter queue it might be easier to manually re submit the org.apache.camel.Exchange again as the IN message is the same as when Camel received it. So you should be able to send the org.apache.camel.Exchange to the same input. The difference between useOriginalMessage and useOriginalBody is that the former includes both the original body and headers, where as the latter only includes the original body. You can use the latter to enrich the message with custom headers and include the original message body. The former wont let you do this, as its using the original message body and headers as they are. You cannot enable both useOriginalMessage and useOriginalBody. The original input message is defensively copied, and the copied message body is converted to org.apache.camel.StreamCache if possible (stream caching is enabled, can be disabled globally or on the original route), to ensure the body can be read when the original message is being used later. If the body is converted to org.apache.camel.StreamCache then the message body on the current org.apache.camel.Exchange is replaced with the org.apache.camel.StreamCache body. If the body is not converted to org.apache.camel.StreamCache then the body will not be able to re-read when accessed later. Important: The original input means the input message that are bounded by the current org.apache.camel.spi.UnitOfWork . An unit of work typically spans one route, or multiple routes if they are connected using internal endpoints such as direct or seda. When messages is passed via external endpoints such as JMS or HTTP then the consumer will create a new unit of work, with the message it received as input as the original input. Also some EIP patterns such as splitter, multicast, will create a new unit of work boundary for the messages in their sub-route (eg the splitted message); however these EIPs have an option named shareUnitOfWork which allows to combine with the parent unit of work in regard to error handling and therefore use the parent original message. By default this feature is off."
              | optional,
            useOriginalMessage
              | Bool
              | doc "Will use the original input org.apache.camel.Message (original body and headers) when an org.apache.camel.Exchange is moved to the dead letter queue. Notice: this only applies when all redeliveries attempt have failed and the org.apache.camel.Exchange is doomed for failure. Instead of using the current inprogress org.apache.camel.Exchange IN message we use the original IN message instead. This allows you to store the original input in the dead letter queue instead of the inprogress snapshot of the IN message. For instance if you route transform the IN body during routing and then failed. With the original exchange store in the dead letter queue it might be easier to manually re submit the org.apache.camel.Exchange again as the IN message is the same as when Camel received it. So you should be able to send the org.apache.camel.Exchange to the same input. The difference between useOriginalMessage and useOriginalBody is that the former includes both the original body and headers, where as the latter only includes the original body. You can use the latter to enrich the message with custom headers and include the original message body. The former wont let you do this, as its using the original message body and headers as they are. You cannot enable both useOriginalMessage and useOriginalBody. The original input message is defensively copied, and the copied message body is converted to org.apache.camel.StreamCache if possible (stream caching is enabled, can be disabled globally or on the original route), to ensure the body can be read when the original message is being used later. If the body is converted to org.apache.camel.StreamCache then the message body on the current org.apache.camel.Exchange is replaced with the org.apache.camel.StreamCache body. If the body is not converted to org.apache.camel.StreamCache then the body will not be able to re-read when accessed later. Important: The original input means the input message that are bounded by the current org.apache.camel.spi.UnitOfWork . An unit of work typically spans one route, or multiple routes if they are connected using internal endpoints such as direct or seda. When messages is passed via external endpoints such as JMS or HTTP then the consumer will create a new unit of work, with the message it received as input as the original input. Also some EIP patterns such as splitter, multicast, will create a new unit of work boundary for the messages in their sub-route (eg the splitted message); however these EIPs have an option named shareUnitOfWork which allows to combine with the parent unit of work in regard to error handling and therefore use the parent original message. By default this feature is off."
              | optional,
          },
      "items.definitions.org.apache.camel.model.errorhandler.NoErrorHandlerDefinition" =
        { id | String | doc "The id of this node" | optional, },
      "items.definitions.org.apache.camel.model.errorhandler.RefErrorHandlerDefinition" =
        std.contract.Sequence
            [
              std.contract.any_of [ String, js2n.record.Required [ "ref" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    id | String | doc "The id of this node" | optional,
                    ref
                      | String
                      | doc "References to an existing or custom error handler."
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.errorhandler.SpringTransactionErrorHandlerDefinition" =
        {
            executorServiceRef
              | String
              | doc "Sets a reference to a thread pool to be used by the error handler"
              | optional,
            id | String | doc "The id of this node" | optional,
            level
              | std.enum.TagOrString
              | [| 'OFF, 'ERROR, 'WARN, 'INFO, 'DEBUG, 'TRACE |]
              | doc "Logging level to use by error handler"
              | optional,
            logName
              | String
              | doc "Name of the logger to use by the error handler"
              | optional,
            loggerRef
              | String
              | doc "References to a logger to use as logger for the error handler"
              | optional,
            onExceptionOccurredRef
              | String
              | doc "Sets a reference to a processor that should be processed just after an exception occurred. Can be used to perform custom logging about the occurred exception at the exact time it happened. Important: Any exception thrown from this processor will be ignored."
              | optional,
            onPrepareFailureRef
              | String
              | doc "Sets a reference to a processor to prepare the org.apache.camel.Exchange before handled by the failure processor / dead letter channel. This allows for example to enrich the message before sending to a dead letter queue."
              | optional,
            onRedeliveryRef
              | String
              | doc "Sets a reference to a processor that should be processed before a redelivery attempt. Can be used to change the org.apache.camel.Exchange before its being redelivered."
              | optional,
            redeliveryPolicy
              | refs."items.definitions.org.apache.camel.model.RedeliveryPolicyDefinition"
              | { _ | Dyn }
              | doc "Sets the redelivery settings"
              | optional,
            redeliveryPolicyRef
              | String
              | doc "Sets a reference to a RedeliveryPolicy to be used for redelivery settings."
              | optional,
            retryWhileRef
              | String
              | doc "Sets a retry while predicate. Will continue retrying until the predicate evaluates to false."
              | optional,
            rollbackLoggingLevel
              | std.enum.TagOrString
              | [| 'OFF, 'ERROR, 'WARN, 'INFO, 'DEBUG, 'TRACE |]
              | doc "Sets the logging level to use for logging transactional rollback. This option is default WARN."
              | optional,
            transactedPolicyRef
              | String
              | doc "The transacted policy to use that is configured for either Spring or JTA based transactions. If no policy has been configured then Camel will attempt to auto-discover."
              | optional,
            useOriginalBody
              | Bool
              | doc "Will use the original input org.apache.camel.Message body (original body only) when an org.apache.camel.Exchange is moved to the dead letter queue. Notice: this only applies when all redeliveries attempt have failed and the org.apache.camel.Exchange is doomed for failure. Instead of using the current inprogress org.apache.camel.Exchange IN message we use the original IN message instead. This allows you to store the original input in the dead letter queue instead of the inprogress snapshot of the IN message. For instance if you route transform the IN body during routing and then failed. With the original exchange store in the dead letter queue it might be easier to manually re submit the org.apache.camel.Exchange again as the IN message is the same as when Camel received it. So you should be able to send the org.apache.camel.Exchange to the same input. The difference between useOriginalMessage and useOriginalBody is that the former includes both the original body and headers, where as the latter only includes the original body. You can use the latter to enrich the message with custom headers and include the original message body. The former wont let you do this, as its using the original message body and headers as they are. You cannot enable both useOriginalMessage and useOriginalBody. The original input message is defensively copied, and the copied message body is converted to org.apache.camel.StreamCache if possible (stream caching is enabled, can be disabled globally or on the original route), to ensure the body can be read when the original message is being used later. If the body is converted to org.apache.camel.StreamCache then the message body on the current org.apache.camel.Exchange is replaced with the org.apache.camel.StreamCache body. If the body is not converted to org.apache.camel.StreamCache then the body will not be able to re-read when accessed later. Important: The original input means the input message that are bounded by the current org.apache.camel.spi.UnitOfWork . An unit of work typically spans one route, or multiple routes if they are connected using internal endpoints such as direct or seda. When messages is passed via external endpoints such as JMS or HTTP then the consumer will create a new unit of work, with the message it received as input as the original input. Also some EIP patterns such as splitter, multicast, will create a new unit of work boundary for the messages in their sub-route (eg the splitted message); however these EIPs have an option named shareUnitOfWork which allows to combine with the parent unit of work in regard to error handling and therefore use the parent original message. By default this feature is off."
              | optional,
            useOriginalMessage
              | Bool
              | doc "Will use the original input org.apache.camel.Message (original body and headers) when an org.apache.camel.Exchange is moved to the dead letter queue. Notice: this only applies when all redeliveries attempt have failed and the org.apache.camel.Exchange is doomed for failure. Instead of using the current inprogress org.apache.camel.Exchange IN message we use the original IN message instead. This allows you to store the original input in the dead letter queue instead of the inprogress snapshot of the IN message. For instance if you route transform the IN body during routing and then failed. With the original exchange store in the dead letter queue it might be easier to manually re submit the org.apache.camel.Exchange again as the IN message is the same as when Camel received it. So you should be able to send the org.apache.camel.Exchange to the same input. The difference between useOriginalMessage and useOriginalBody is that the former includes both the original body and headers, where as the latter only includes the original body. You can use the latter to enrich the message with custom headers and include the original message body. The former wont let you do this, as its using the original message body and headers as they are. You cannot enable both useOriginalMessage and useOriginalBody. The original input message is defensively copied, and the copied message body is converted to org.apache.camel.StreamCache if possible (stream caching is enabled, can be disabled globally or on the original route), to ensure the body can be read when the original message is being used later. If the body is converted to org.apache.camel.StreamCache then the message body on the current org.apache.camel.Exchange is replaced with the org.apache.camel.StreamCache body. If the body is not converted to org.apache.camel.StreamCache then the body will not be able to re-read when accessed later. Important: The original input means the input message that are bounded by the current org.apache.camel.spi.UnitOfWork . An unit of work typically spans one route, or multiple routes if they are connected using internal endpoints such as direct or seda. When messages is passed via external endpoints such as JMS or HTTP then the consumer will create a new unit of work, with the message it received as input as the original input. Also some EIP patterns such as splitter, multicast, will create a new unit of work boundary for the messages in their sub-route (eg the splitted message); however these EIPs have an option named shareUnitOfWork which allows to combine with the parent unit of work in regard to error handling and therefore use the parent original message. By default this feature is off."
              | optional,
          },
      "items.definitions.org.apache.camel.model.language.CSimpleExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.ConstantExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.DatasonnetExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    bodyMediaType
                      | String
                      | doc "The String representation of the message's body MediaType"
                      | optional,
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    outputMediaType
                      | String
                      | doc "The String representation of the MediaType to output"
                      | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    source
                      | String
                      | doc "Source to use, instead of message body. You can prefix with variable:, header:, or property: to specify kind of source. Otherwise, the source is assumed to be a variable. Use empty or null to use default source, which is the message body."
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.ExchangePropertyExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.ExpressionDefinition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            constant =
                              refs."items.definitions.org.apache.camel.model.language.ConstantExpression",
                          },
                      required = { constant = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            csimple =
                              refs."items.definitions.org.apache.camel.model.language.CSimpleExpression",
                          },
                      required = { csimple = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            datasonnet =
                              refs."items.definitions.org.apache.camel.model.language.DatasonnetExpression",
                          },
                      required = { datasonnet = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            exchangeProperty =
                              refs."items.definitions.org.apache.camel.model.language.ExchangePropertyExpression",
                          },
                      required = { exchangeProperty = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            groovy =
                              refs."items.definitions.org.apache.camel.model.language.GroovyExpression",
                          },
                      required = { groovy = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            header =
                              refs."items.definitions.org.apache.camel.model.language.HeaderExpression",
                          },
                      required = { header = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            hl7terser =
                              refs."items.definitions.org.apache.camel.model.language.Hl7TerserExpression",
                          },
                      required = { hl7terser = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            java =
                              refs."items.definitions.org.apache.camel.model.language.JavaExpression",
                          },
                      required = { java = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            joor =
                              refs."items.definitions.org.apache.camel.model.language.JoorExpression",
                          },
                      required = { joor = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            jq =
                              refs."items.definitions.org.apache.camel.model.language.JqExpression",
                          },
                      required = { jq = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            js =
                              refs."items.definitions.org.apache.camel.model.language.JavaScriptExpression",
                          },
                      required = { js = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            jsonpath =
                              refs."items.definitions.org.apache.camel.model.language.JsonPathExpression",
                          },
                      required = { jsonpath = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            language =
                              std.contract.Sequence
                                  [
                                    refs."items.definitions.org.apache.camel.model.language.LanguageExpression",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { language = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            method =
                              refs."items.definitions.org.apache.camel.model.language.MethodCallExpression",
                          },
                      required = { method = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            mvel =
                              refs."items.definitions.org.apache.camel.model.language.MvelExpression",
                          },
                      required = { mvel = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            ognl =
                              refs."items.definitions.org.apache.camel.model.language.OgnlExpression",
                          },
                      required = { ognl = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            python =
                              refs."items.definitions.org.apache.camel.model.language.PythonExpression",
                          },
                      required = { python = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            ref =
                              refs."items.definitions.org.apache.camel.model.language.RefExpression",
                          },
                      required = { ref = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            simple =
                              refs."items.definitions.org.apache.camel.model.language.SimpleExpression",
                          },
                      required = { simple = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            spel =
                              refs."items.definitions.org.apache.camel.model.language.SpELExpression",
                          },
                      required = { spel = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            tokenize =
                              refs."items.definitions.org.apache.camel.model.language.TokenizerExpression",
                          },
                      required = { tokenize = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            variable =
                              refs."items.definitions.org.apache.camel.model.language.VariableExpression",
                          },
                      required = { variable = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            wasm =
                              refs."items.definitions.org.apache.camel.model.language.WasmExpression",
                          },
                      required = { wasm = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            xpath =
                              refs."items.definitions.org.apache.camel.model.language.XPathExpression",
                          },
                      required = { xpath = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            xquery =
                              refs."items.definitions.org.apache.camel.model.language.XQueryExpression",
                          },
                      required = { xquery = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            xtokenize =
                              refs."items.definitions.org.apache.camel.model.language.XMLTokenizerExpression",
                          },
                      required = { xtokenize = true, },
                    }
                ],
              {
                constant | js2n.Always | optional,
                csimple | js2n.Always | optional,
                datasonnet | js2n.Always | optional,
                exchangeProperty | js2n.Always | optional,
                groovy | js2n.Always | optional,
                header | js2n.Always | optional,
                hl7terser | js2n.Always | optional,
                java | js2n.Always | optional,
                joor | js2n.Always | optional,
                jq | js2n.Always | optional,
                js | js2n.Always | optional,
                jsonpath | js2n.Always | optional,
                language | js2n.Always | optional,
                method | js2n.Always | optional,
                mvel | js2n.Always | optional,
                ognl | js2n.Always | optional,
                python | js2n.Always | optional,
                ref | js2n.Always | optional,
                simple | js2n.Always | optional,
                spel | js2n.Always | optional,
                tokenize | js2n.Always | optional,
                variable | js2n.Always | optional,
                wasm | js2n.Always | optional,
                xpath | js2n.Always | optional,
                xquery | js2n.Always | optional,
                xtokenize | js2n.Always | optional,
                ..
              }
            ],
      "items.definitions.org.apache.camel.model.language.GroovyExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.HeaderExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.Hl7TerserExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    source
                      | String
                      | doc "Source to use, instead of message body. You can prefix with variable:, header:, or property: to specify kind of source. Otherwise, the source is assumed to be a variable. Use empty or null to use default source, which is the message body."
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.JavaExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    preCompile
                      | Bool
                      | doc "Whether the expression should be pre compiled once during initialization phase. If this is turned off, then the expression is reloaded and compiled on each evaluation."
                      | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    singleQuotes
                      | Bool
                      | doc "Whether single quotes can be used as replacement for double quotes. This is convenient when you need to work with strings inside strings."
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.JavaScriptExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.JoorExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    preCompile
                      | Bool
                      | doc "Whether the expression should be pre compiled once during initialization phase. If this is turned off, then the expression is reloaded and compiled on each evaluation."
                      | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    singleQuotes
                      | Bool
                      | doc "Whether single quotes can be used as replacement for double quotes. This is convenient when you need to work with strings inside strings."
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.JqExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    source
                      | String
                      | doc "Source to use, instead of message body. You can prefix with variable:, header:, or property: to specify kind of source. Otherwise, the source is assumed to be a variable. Use empty or null to use default source, which is the message body."
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.JsonPathExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    allowEasyPredicate
                      | Bool
                      | doc "Whether to allow using the easy predicate parser to pre-parse predicates."
                      | optional,
                    allowSimple
                      | Bool
                      | doc "Whether to allow in inlined Simple exceptions in the JSONPath expression"
                      | optional,
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    option
                      | std.enum.TagOrString
                      | [|
                        'REQUIRE_PROPERTIES,
                        'SUPPRESS_EXCEPTIONS,
                        'AS_PATH_LIST,
                        'ALWAYS_RETURN_LIST,
                        'DEFAULT_PATH_LEAF_TO_NULL
                      |]
                      | doc "To configure additional options on JSONPath. Multiple values can be separated by comma."
                      | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    source
                      | String
                      | doc "Source to use, instead of message body. You can prefix with variable:, header:, or property: to specify kind of source. Otherwise, the source is assumed to be a variable. Use empty or null to use default source, which is the message body."
                      | optional,
                    suppressExceptions
                      | Bool
                      | doc "Whether to suppress exceptions such as PathNotFoundException."
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                    unpackArray
                      | Bool
                      | doc "Whether to unpack a single element json-array into an object."
                      | optional,
                    writeAsString
                      | Bool
                      | doc "Whether to write the output of each row/element as a JSON String value instead of a Map/POJO value."
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.LanguageExpression" =
        {
            expression
              | String
              | doc "The expression value in your chosen language syntax",
            id | String | doc "Sets the id of this node" | optional,
            language | String | doc "The name of the language to use",
            trim
              | Bool
              | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
              | optional,
          },
      "items.definitions.org.apache.camel.model.language.MethodCallExpression" =
        std.contract.any_of
            [
              String,
              {
                beanType
                  | String
                  | doc "Class name (fully qualified) of the bean to use Will lookup in registry and if there is a single instance of the same type, then the existing bean is used, otherwise a new bean is created (requires a default no-arg constructor)."
                  | optional,
                id | String | doc "Sets the id of this node" | optional,
                method | String | doc "Name of method to call" | optional,
                ref
                  | String
                  | doc "Reference to an existing bean (bean id) to lookup in the registry"
                  | optional,
                resultType
                  | String
                  | doc "Sets the class of the result type (type from output)"
                  | optional,
                scope
                  | std.enum.TagOrString
                  | [| 'Prototype, 'Request, 'Singleton |]
                  | doc "Scope of bean. When using singleton scope (default) the bean is created or looked up only once and reused for the lifetime of the endpoint. The bean should be thread-safe in case concurrent threads is calling the bean at the same time. When using request scope the bean is created or looked up once per request (exchange). This can be used if you want to store state on a bean while processing a request and you want to call the same bean instance multiple times while processing the request. The bean does not have to be thread-safe as the instance is only called from the same request. When using prototype scope, then the bean will be looked up or created per call. However in case of lookup then this is delegated to the bean registry such as Spring or CDI (if in use), which depends on their configuration can act as either singleton or prototype scope. So when using prototype scope then this depends on the bean registry implementation."
                  | optional,
                trim
                  | Bool
                  | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                  | optional,
                validate
                  | Bool
                  | doc "Whether to validate the bean has the configured method."
                  | optional,
              }
            ],
      "items.definitions.org.apache.camel.model.language.MvelExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.OgnlExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.PythonExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.RefExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.SimpleExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.SpELExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.TokenizerExpression" =
        std.contract.Sequence
            [
              std.contract.any_of [ String, js2n.record.Required [ "token" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    endToken
                      | String
                      | doc "The end token to use as tokenizer if using start/end token pairs. You can use simple language as the token to support dynamic tokens."
                      | optional,
                    group
                      | String
                      | doc "To group N parts together, for example to split big files into chunks of 1000 lines. You can use simple language as the group to support dynamic group sizes."
                      | optional,
                    groupDelimiter
                      | String
                      | doc "Sets the delimiter to use when grouping. If this has not been set then token will be used as the delimiter."
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    includeTokens
                      | Bool
                      | doc "Whether to include the tokens in the parts when using pairs. When including tokens then the endToken property must also be configured (to use pair mode). The default value is false"
                      | optional,
                    inheritNamespaceTagName
                      | String
                      | doc "To inherit namespaces from a root/parent tag name when using XML You can use simple language as the tag name to support dynamic names."
                      | optional,
                    regex
                      | Bool
                      | doc "If the token is a regular expression pattern. The default value is false"
                      | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    skipFirst
                      | Bool
                      | doc "To skip the very first element"
                      | optional,
                    source
                      | String
                      | doc "Source to use, instead of message body. You can prefix with variable:, header:, or property: to specify kind of source. Otherwise, the source is assumed to be a variable. Use empty or null to use default source, which is the message body."
                      | optional,
                    token
                      | String
                      | doc "The (start) token to use as tokenizer, for example you can use the new line token. You can use simple language as the token to support dynamic tokens."
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                    xml
                      | Bool
                      | doc "Whether the input is XML messages. This option must be set to true if working with XML payloads."
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.VariableExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.WasmExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression", "module" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    module
                      | String
                      | doc "Set the module (the distributable, loadable, and executable unit of code in WebAssembly) resource that provides the expression function."
                      | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.XMLTokenizerExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    group | Number | doc "To group N parts together" | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    mode
                      | std.enum.TagOrString
                      | [| 't, 'u, 'w, 'i |]
                      | doc "The extraction mode. The available extraction modes are: i - injecting the contextual namespace bindings into the extracted token (default) w - wrapping the extracted token in its ancestor context u - unwrapping the extracted token to its child content t - extracting the text content of the specified element"
                      | optional,
                    namespace
                      | Array (
                        std.contract.Sequence
                          [
                            refs."items.definitions.org.apache.camel.model.PropertyDefinition",
                            { _ | Dyn }
                          ]
                      )
                      | doc "Injects the XML Namespaces of prefix - uri mappings"
                      | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    source
                      | String
                      | doc "Source to use, instead of message body. You can prefix with variable:, header:, or property: to specify kind of source. Otherwise, the source is assumed to be a variable. Use empty or null to use default source, which is the message body."
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.XPathExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    documentType
                      | String
                      | doc "Name of class for document type The default value is org.w3c.dom.Document"
                      | optional,
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    factoryRef
                      | String
                      | doc "References to a custom XPathFactory to lookup in the registry"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    logNamespaces
                      | Bool
                      | doc "Whether to log namespaces which can assist during troubleshooting"
                      | optional,
                    namespace
                      | Array (
                        std.contract.Sequence
                          [
                            refs."items.definitions.org.apache.camel.model.PropertyDefinition",
                            { _ | Dyn }
                          ]
                      )
                      | doc "Injects the XML Namespaces of prefix - uri mappings"
                      | optional,
                    objectModel
                      | String
                      | doc "The XPath object model to use"
                      | optional,
                    preCompile
                      | Bool
                      | doc "Whether to enable pre-compiling the xpath expression during initialization phase. pre-compile is enabled by default. This can be used to turn off, for example in cases the compilation phase is desired at the starting phase, such as if the application is ahead of time compiled (for example with camel-quarkus) which would then load the xpath factory of the built operating system, and not a JVM runtime."
                      | optional,
                    resultQName
                      | std.enum.TagOrString
                      | [| 'NODE, 'NODESET, 'BOOLEAN, 'STRING, 'NUMBER |]
                      | doc "Sets the output type supported by XPath."
                      | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    saxon | Bool | doc "Whether to use Saxon." | optional,
                    source
                      | String
                      | doc "Source to use, instead of message body. You can prefix with variable:, header:, or property: to specify kind of source. Otherwise, the source is assumed to be a variable. Use empty or null to use default source, which is the message body."
                      | optional,
                    threadSafety
                      | Bool
                      | doc "Whether to enable thread-safety for the returned result of the xpath expression. This applies to when using NODESET as the result type, and the returned set has multiple elements. In this situation there can be thread-safety issues if you process the NODESET concurrently such as from a Camel Splitter EIP in parallel processing mode. This option prevents concurrency issues by doing defensive copies of the nodes. It is recommended to turn this option on if you are using camel-saxon or Saxon in your application. Saxon has thread-safety issues which can be prevented by turning this option on."
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.language.XQueryExpression" =
        std.contract.Sequence
            [
              std.contract.any_of
                [ String, js2n.record.Required [ "expression" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    configurationRef
                      | String
                      | doc "Reference to a saxon configuration instance in the registry to use for xquery (requires camel-saxon). This may be needed to add custom functions to a saxon configuration, so these custom functions can be used in xquery expressions."
                      | optional,
                    expression
                      | String
                      | doc "The expression value in your chosen language syntax"
                      | optional,
                    id | String | doc "Sets the id of this node" | optional,
                    namespace
                      | Array (
                        std.contract.Sequence
                          [
                            refs."items.definitions.org.apache.camel.model.PropertyDefinition",
                            { _ | Dyn }
                          ]
                      )
                      | doc "Injects the XML Namespaces of prefix - uri mappings"
                      | optional,
                    resultType
                      | String
                      | doc "Sets the class of the result type (type from output)"
                      | optional,
                    source
                      | String
                      | doc "Source to use, instead of message body. You can prefix with variable:, header:, or property: to specify kind of source. Otherwise, the source is assumed to be a variable. Use empty or null to use default source, which is the message body."
                      | optional,
                    trim
                      | Bool
                      | doc "Whether to trim the value to remove leading and trailing whitespaces and line breaks"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.loadbalancer.CustomLoadBalancerDefinition" =
        std.contract.Sequence
            [
              std.contract.any_of [ String, js2n.record.Required [ "ref" ] ],
              std.contract.any_of
                [
                  String,
                  {
                    id | String | doc "The id of this node" | optional,
                    ref
                      | String
                      | doc "Refers to the custom load balancer to lookup from the registry"
                      | optional,
                  }
                ]
            ],
      "items.definitions.org.apache.camel.model.loadbalancer.FailoverLoadBalancerDefinition" =
        {
            exception
              | Array String
              | doc "A list of class names for specific exceptions to monitor. If no exceptions are configured then all exceptions are monitored"
              | optional,
            id | String | doc "The id of this node" | optional,
            maximumFailoverAttempts
              | String
              | doc "A value to indicate after X failover attempts we should exhaust (give up). Use -1 to indicate never give up and continuously try to failover. Use 0 to never failover. And use e.g. 3 to failover at most 3 times before giving up. This option can be used whether roundRobin is enabled or not."
              | optional,
            roundRobin
              | String
              | doc "Whether or not the failover load balancer should operate in round robin mode or not. If not, then it will always start from the first endpoint when a new message is to be processed. In other words it restart from the top for every message. If round robin is enabled, then it keeps state and will continue with the next endpoint in a round robin fashion. You can also enable sticky mode together with round robin, if so then it will pick the last known good endpoint to use when starting the load balancing (instead of using the next when starting)."
              | optional,
            sticky
              | String
              | doc "Whether or not the failover load balancer should operate in sticky mode or not. If not, then it will always start from the first endpoint when a new message is to be processed. In other words it restart from the top for every message. If sticky is enabled, then it keeps state and will continue with the last known good endpoint. You can also enable sticky mode together with round robin, if so then it will pick the last known good endpoint to use when starting the load balancing (instead of using the next when starting)."
              | optional,
          },
      "items.definitions.org.apache.camel.model.loadbalancer.RandomLoadBalancerDefinition" =
        { id | String | doc "The id of this node" | optional, },
      "items.definitions.org.apache.camel.model.loadbalancer.RoundRobinLoadBalancerDefinition" =
        { id | String | doc "The id of this node" | optional, },
      "items.definitions.org.apache.camel.model.loadbalancer.StickyLoadBalancerDefinition" =
        {
            correlationExpression
              | refs."items.definitions.org.apache.camel.model.ExpressionSubElementDefinition"
              | { _ | Dyn }
              | doc "The correlation expression to use to calculate the correlation key"
              | optional,
            id | String | doc "The id of this node" | optional,
          },
      "items.definitions.org.apache.camel.model.loadbalancer.TopicLoadBalancerDefinition" =
        { id | String | doc "The id of this node" | optional, },
      "items.definitions.org.apache.camel.model.loadbalancer.WeightedLoadBalancerDefinition" =
        {
            distributionRatio
              | String
              | doc "The distribution ratio is a delimited String consisting on integer weights separated by delimiters for example 2,3,5. The distributionRatio must match the number of endpoints and/or processors specified in the load balancer list.",
            distributionRatioDelimiter
              | String
              | doc "Delimiter used to specify the distribution ratio. The default value is , (comma)"
              | optional,
            id | String | doc "The id of this node" | optional,
            roundRobin
              | Bool
              | doc "To enable round robin mode. By default the weighted distribution mode is used. The default value is false."
              | optional,
          },
      "items.definitions.org.apache.camel.model.rest.ApiKeyDefinition" =
        {
            description
              | String
              | doc "A short description for security scheme."
              | optional,
            inCookie
              | Bool
              | doc "To use a cookie as the location of the API key."
              | optional,
            inHeader
              | Bool
              | doc "To use header as the location of the API key."
              | optional,
            inQuery
              | Bool
              | doc "To use query parameter as the location of the API key."
              | optional,
            key | String | doc "Key used to refer to this security definition",
            name
              | String
              | doc "The name of the header or query parameter to be used.",
          },
      "items.definitions.org.apache.camel.model.rest.BasicAuthDefinition" =
        {
            description
              | String
              | doc "A short description for security scheme."
              | optional,
            key | String | doc "Key used to refer to this security definition",
          },
      "items.definitions.org.apache.camel.model.rest.BearerTokenDefinition" =
        {
            description
              | String
              | doc "A short description for security scheme."
              | optional,
            format
              | String
              | doc "A hint to the client to identify how the bearer token is formatted."
              | optional,
            key | String | doc "Key used to refer to this security definition",
          },
      "items.definitions.org.apache.camel.model.rest.DeleteDefinition" =
        {
            apiDocs
              | Bool
              | doc "Whether to include or exclude this rest operation in API documentation. The default value is true."
              | optional,
            bindingMode
              | std.enum.TagOrString
              | [| 'json_xml, 'xml, 'json, 'auto, 'off |]
              | doc "Sets the binding mode to use. This option will override what may be configured on a parent level The default value is off"
              | optional,
            clientRequestValidation
              | Bool
              | doc "Whether to enable validation of the client request to check: 1) Content-Type header matches what the Rest DSL consumes; returns HTTP Status 415 if validation error. 2) Accept header matches what the Rest DSL produces; returns HTTP Status 406 if validation error. 3) Missing required data (query parameters, HTTP headers, body); returns HTTP Status 400 if validation error. 4) Parsing error of the message body (JSon, XML or Auto binding mode must be enabled); returns HTTP Status 400 if validation error."
              | optional,
            consumes
              | String
              | doc "To define the content type what the REST service consumes (accept as input), such as application/xml or application/json. This option will override what may be configured on a parent level"
              | optional,
            deprecated
              | Bool
              | doc "Marks this rest operation as deprecated in OpenApi documentation."
              | optional,
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this REST service from the route during build time. Once an REST service has been disabled then it cannot be enabled later at runtime."
              | optional,
            enableCORS
              | Bool
              | doc "Whether to enable CORS headers in the HTTP response. This option will override what may be configured on a parent level The default value is false."
              | optional,
            enableNoContentResponse
              | Bool
              | doc "Whether to return HTTP 204 with an empty body when a response contains an empty JSON object or XML root object. The default value is false."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            outType
              | String
              | doc "Sets the class name to use for binding from POJO to output for the outgoing data This option will override what may be configured on a parent level The name of the class of the input data. Append a to the end of the name if you want the input to be an array type."
              | optional,
            param
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.ParamDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Information about parameters for this REST operation"
              | optional,
            path
              | String
              | doc "The path mapping URIs of this REST operation such as /{id}."
              | optional,
            produces
              | String
              | doc "To define the content type what the REST service produces (uses for output), such as application/xml or application/json This option will override what may be configured on a parent level"
              | optional,
            responseMessage
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.ResponseMessageDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Response details for this REST operation"
              | optional,
            routeId | String | doc "Sets the id of the route" | optional,
            security
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.SecurityDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Security settings for this REST operation"
              | optional,
            skipBindingOnErrorCode
              | Bool
              | doc "Whether to skip binding on output if there is a custom HTTP error code header. This allows to build custom error messages that do not bind to json / xml etc, as success messages otherwise will do. This option will override what may be configured on a parent level"
              | optional,
            streamCache
              | Bool
              | doc "Whether stream caching is enabled on this rest operation."
              | optional,
            to
              | refs."items.definitions.org.apache.camel.model.ToDefinition"
              | doc "The Camel endpoint this REST service will call, such as a direct endpoint to link to an existing route that handles this REST call."
              | optional,
            type
              | String
              | doc "Sets the class name to use for binding from input to POJO for the incoming data This option will override what may be configured on a parent level. The name of the class of the input data. Append a to the end of the name if you want the input to be an array type."
              | optional,
          },
      "items.definitions.org.apache.camel.model.rest.GetDefinition" =
        {
            apiDocs
              | Bool
              | doc "Whether to include or exclude this rest operation in API documentation. The default value is true."
              | optional,
            bindingMode
              | std.enum.TagOrString
              | [| 'json_xml, 'xml, 'json, 'auto, 'off |]
              | doc "Sets the binding mode to use. This option will override what may be configured on a parent level The default value is off"
              | optional,
            clientRequestValidation
              | Bool
              | doc "Whether to enable validation of the client request to check: 1) Content-Type header matches what the Rest DSL consumes; returns HTTP Status 415 if validation error. 2) Accept header matches what the Rest DSL produces; returns HTTP Status 406 if validation error. 3) Missing required data (query parameters, HTTP headers, body); returns HTTP Status 400 if validation error. 4) Parsing error of the message body (JSon, XML or Auto binding mode must be enabled); returns HTTP Status 400 if validation error."
              | optional,
            consumes
              | String
              | doc "To define the content type what the REST service consumes (accept as input), such as application/xml or application/json. This option will override what may be configured on a parent level"
              | optional,
            deprecated
              | Bool
              | doc "Marks this rest operation as deprecated in OpenApi documentation."
              | optional,
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this REST service from the route during build time. Once an REST service has been disabled then it cannot be enabled later at runtime."
              | optional,
            enableCORS
              | Bool
              | doc "Whether to enable CORS headers in the HTTP response. This option will override what may be configured on a parent level The default value is false."
              | optional,
            enableNoContentResponse
              | Bool
              | doc "Whether to return HTTP 204 with an empty body when a response contains an empty JSON object or XML root object. The default value is false."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            outType
              | String
              | doc "Sets the class name to use for binding from POJO to output for the outgoing data This option will override what may be configured on a parent level The name of the class of the input data. Append a to the end of the name if you want the input to be an array type."
              | optional,
            param
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.ParamDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Information about parameters for this REST operation"
              | optional,
            path
              | String
              | doc "The path mapping URIs of this REST operation such as /{id}."
              | optional,
            produces
              | String
              | doc "To define the content type what the REST service produces (uses for output), such as application/xml or application/json This option will override what may be configured on a parent level"
              | optional,
            responseMessage
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.ResponseMessageDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Response details for this REST operation"
              | optional,
            routeId | String | doc "Sets the id of the route" | optional,
            security
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.SecurityDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Security settings for this REST operation"
              | optional,
            skipBindingOnErrorCode
              | Bool
              | doc "Whether to skip binding on output if there is a custom HTTP error code header. This allows to build custom error messages that do not bind to json / xml etc, as success messages otherwise will do. This option will override what may be configured on a parent level"
              | optional,
            streamCache
              | Bool
              | doc "Whether stream caching is enabled on this rest operation."
              | optional,
            to
              | refs."items.definitions.org.apache.camel.model.ToDefinition"
              | doc "The Camel endpoint this REST service will call, such as a direct endpoint to link to an existing route that handles this REST call."
              | optional,
            type
              | String
              | doc "Sets the class name to use for binding from input to POJO for the incoming data This option will override what may be configured on a parent level. The name of the class of the input data. Append a to the end of the name if you want the input to be an array type."
              | optional,
          },
      "items.definitions.org.apache.camel.model.rest.HeadDefinition" =
        {
            apiDocs
              | Bool
              | doc "Whether to include or exclude this rest operation in API documentation. The default value is true."
              | optional,
            bindingMode
              | std.enum.TagOrString
              | [| 'json_xml, 'xml, 'json, 'auto, 'off |]
              | doc "Sets the binding mode to use. This option will override what may be configured on a parent level The default value is off"
              | optional,
            clientRequestValidation
              | Bool
              | doc "Whether to enable validation of the client request to check: 1) Content-Type header matches what the Rest DSL consumes; returns HTTP Status 415 if validation error. 2) Accept header matches what the Rest DSL produces; returns HTTP Status 406 if validation error. 3) Missing required data (query parameters, HTTP headers, body); returns HTTP Status 400 if validation error. 4) Parsing error of the message body (JSon, XML or Auto binding mode must be enabled); returns HTTP Status 400 if validation error."
              | optional,
            consumes
              | String
              | doc "To define the content type what the REST service consumes (accept as input), such as application/xml or application/json. This option will override what may be configured on a parent level"
              | optional,
            deprecated
              | Bool
              | doc "Marks this rest operation as deprecated in OpenApi documentation."
              | optional,
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this REST service from the route during build time. Once an REST service has been disabled then it cannot be enabled later at runtime."
              | optional,
            enableCORS
              | Bool
              | doc "Whether to enable CORS headers in the HTTP response. This option will override what may be configured on a parent level The default value is false."
              | optional,
            enableNoContentResponse
              | Bool
              | doc "Whether to return HTTP 204 with an empty body when a response contains an empty JSON object or XML root object. The default value is false."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            outType
              | String
              | doc "Sets the class name to use for binding from POJO to output for the outgoing data This option will override what may be configured on a parent level The name of the class of the input data. Append a to the end of the name if you want the input to be an array type."
              | optional,
            param
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.ParamDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Information about parameters for this REST operation"
              | optional,
            path
              | String
              | doc "The path mapping URIs of this REST operation such as /{id}."
              | optional,
            produces
              | String
              | doc "To define the content type what the REST service produces (uses for output), such as application/xml or application/json This option will override what may be configured on a parent level"
              | optional,
            responseMessage
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.ResponseMessageDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Response details for this REST operation"
              | optional,
            routeId | String | doc "Sets the id of the route" | optional,
            security
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.SecurityDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Security settings for this REST operation"
              | optional,
            skipBindingOnErrorCode
              | Bool
              | doc "Whether to skip binding on output if there is a custom HTTP error code header. This allows to build custom error messages that do not bind to json / xml etc, as success messages otherwise will do. This option will override what may be configured on a parent level"
              | optional,
            streamCache
              | Bool
              | doc "Whether stream caching is enabled on this rest operation."
              | optional,
            to
              | refs."items.definitions.org.apache.camel.model.ToDefinition"
              | doc "The Camel endpoint this REST service will call, such as a direct endpoint to link to an existing route that handles this REST call."
              | optional,
            type
              | String
              | doc "Sets the class name to use for binding from input to POJO for the incoming data This option will override what may be configured on a parent level. The name of the class of the input data. Append a to the end of the name if you want the input to be an array type."
              | optional,
          },
      "items.definitions.org.apache.camel.model.rest.MutualTLSDefinition" =
        {
            description
              | String
              | doc "A short description for security scheme."
              | optional,
            key | String | doc "Key used to refer to this security definition",
          },
      "items.definitions.org.apache.camel.model.rest.OAuth2Definition" =
        {
            authorizationUrl
              | String
              | doc "The authorization URL to be used for this flow. This SHOULD be in the form of a URL. Required for implicit and access code flows"
              | optional,
            description
              | String
              | doc "A short description for security scheme."
              | optional,
            flow
              | std.enum.TagOrString
              | [|
                'authorizationCode,
                'accessCode,
                'clientCredentials,
                'application,
                'password,
                'implicit
              |]
              | doc "The flow used by the OAuth2 security scheme. Valid values are implicit, password, application or accessCode."
              | optional,
            key | String | doc "Key used to refer to this security definition",
            refreshUrl
              | String
              | doc "The URL to be used for obtaining refresh tokens. This MUST be in the form of a URL."
              | optional,
            scopes
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.RestPropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "The available scopes for an OAuth2 security scheme"
              | optional,
            tokenUrl
              | String
              | doc "The token URL to be used for this flow. This SHOULD be in the form of a URL. Required for password, application, and access code flows."
              | optional,
          },
      "items.definitions.org.apache.camel.model.rest.OpenApiDefinition" =
        {
            apiContextPath
              | String
              | doc "Whether to enable api-doc that exposes the OpenAPI specification file as a REST endpoint. This allows clients to obtain the specification from the running Camel application."
              | optional,
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable all the REST services from the OpenAPI contract from the route during build time. Once an REST service has been disabled then it cannot be enabled later at runtime."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            missingOperation
              | std.enum.TagOrString
              | [| 'mock, 'ignore, 'fail |]
              | doc "Whether to fail, ignore or return a mock response for OpenAPI operations that are not mapped to a corresponding route."
              | optional,
            mockIncludePattern
              | String
              | doc "Used for inclusive filtering of mock data from directories. The pattern is using Ant-path style pattern. Multiple patterns can be specified separated by comma."
              | optional,
            routeId | String | doc "Sets the id of the route" | optional,
            specification
              | String
              | doc "Path to the OpenApi specification file.",
          },
      "items.definitions.org.apache.camel.model.rest.OpenIdConnectDefinition" =
        {
            description
              | String
              | doc "A short description for security scheme."
              | optional,
            key | String | doc "Key used to refer to this security definition",
            url
              | String
              | doc "OpenId Connect URL to discover OAuth2 configuration values.",
          },
      "items.definitions.org.apache.camel.model.rest.ParamDefinition" =
        {
            allowableValues
              | Array
                refs."items.definitions.org.apache.camel.model.ValueDefinition"
              | doc "Sets the parameter list of allowable values (enum)."
              | optional,
            arrayType
              | String
              | doc "Sets the parameter array type. Required if data type is array. Describes the type of items in the array."
              | optional,
            collectionFormat
              | std.enum.TagOrString
              | [| 'tsv, 'ssv, 'pipes, 'multi, 'csv |]
              | doc "Sets the parameter collection format."
              | optional,
            dataFormat
              | String
              | doc "Sets the parameter data format."
              | optional,
            dataType | String | doc "Sets the parameter data type." | optional,
            defaultValue
              | String
              | doc "Sets the parameter default value."
              | optional,
            description
              | String
              | doc "Sets the parameter description."
              | optional,
            examples
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.RestPropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Sets the parameter examples."
              | optional,
            name | String | doc "Sets the parameter name.",
            required
              | Bool
              | doc "Sets the parameter required flag."
              | optional,
            type
              | std.enum.TagOrString
              | [| 'query, 'path, 'header, 'formData, 'body |]
              | doc "Sets the parameter type."
              | optional,
          },
      "items.definitions.org.apache.camel.model.rest.PatchDefinition" =
        {
            apiDocs
              | Bool
              | doc "Whether to include or exclude this rest operation in API documentation. The default value is true."
              | optional,
            bindingMode
              | std.enum.TagOrString
              | [| 'json_xml, 'xml, 'json, 'auto, 'off |]
              | doc "Sets the binding mode to use. This option will override what may be configured on a parent level The default value is off"
              | optional,
            clientRequestValidation
              | Bool
              | doc "Whether to enable validation of the client request to check: 1) Content-Type header matches what the Rest DSL consumes; returns HTTP Status 415 if validation error. 2) Accept header matches what the Rest DSL produces; returns HTTP Status 406 if validation error. 3) Missing required data (query parameters, HTTP headers, body); returns HTTP Status 400 if validation error. 4) Parsing error of the message body (JSon, XML or Auto binding mode must be enabled); returns HTTP Status 400 if validation error."
              | optional,
            consumes
              | String
              | doc "To define the content type what the REST service consumes (accept as input), such as application/xml or application/json. This option will override what may be configured on a parent level"
              | optional,
            deprecated
              | Bool
              | doc "Marks this rest operation as deprecated in OpenApi documentation."
              | optional,
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this REST service from the route during build time. Once an REST service has been disabled then it cannot be enabled later at runtime."
              | optional,
            enableCORS
              | Bool
              | doc "Whether to enable CORS headers in the HTTP response. This option will override what may be configured on a parent level The default value is false."
              | optional,
            enableNoContentResponse
              | Bool
              | doc "Whether to return HTTP 204 with an empty body when a response contains an empty JSON object or XML root object. The default value is false."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            outType
              | String
              | doc "Sets the class name to use for binding from POJO to output for the outgoing data This option will override what may be configured on a parent level The name of the class of the input data. Append a to the end of the name if you want the input to be an array type."
              | optional,
            param
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.ParamDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Information about parameters for this REST operation"
              | optional,
            path
              | String
              | doc "The path mapping URIs of this REST operation such as /{id}."
              | optional,
            produces
              | String
              | doc "To define the content type what the REST service produces (uses for output), such as application/xml or application/json This option will override what may be configured on a parent level"
              | optional,
            responseMessage
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.ResponseMessageDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Response details for this REST operation"
              | optional,
            routeId | String | doc "Sets the id of the route" | optional,
            security
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.SecurityDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Security settings for this REST operation"
              | optional,
            skipBindingOnErrorCode
              | Bool
              | doc "Whether to skip binding on output if there is a custom HTTP error code header. This allows to build custom error messages that do not bind to json / xml etc, as success messages otherwise will do. This option will override what may be configured on a parent level"
              | optional,
            streamCache
              | Bool
              | doc "Whether stream caching is enabled on this rest operation."
              | optional,
            to
              | refs."items.definitions.org.apache.camel.model.ToDefinition"
              | doc "The Camel endpoint this REST service will call, such as a direct endpoint to link to an existing route that handles this REST call."
              | optional,
            type
              | String
              | doc "Sets the class name to use for binding from input to POJO for the incoming data This option will override what may be configured on a parent level. The name of the class of the input data. Append a to the end of the name if you want the input to be an array type."
              | optional,
          },
      "items.definitions.org.apache.camel.model.rest.PostDefinition" =
        {
            apiDocs
              | Bool
              | doc "Whether to include or exclude this rest operation in API documentation. The default value is true."
              | optional,
            bindingMode
              | std.enum.TagOrString
              | [| 'json_xml, 'xml, 'json, 'auto, 'off |]
              | doc "Sets the binding mode to use. This option will override what may be configured on a parent level The default value is off"
              | optional,
            clientRequestValidation
              | Bool
              | doc "Whether to enable validation of the client request to check: 1) Content-Type header matches what the Rest DSL consumes; returns HTTP Status 415 if validation error. 2) Accept header matches what the Rest DSL produces; returns HTTP Status 406 if validation error. 3) Missing required data (query parameters, HTTP headers, body); returns HTTP Status 400 if validation error. 4) Parsing error of the message body (JSon, XML or Auto binding mode must be enabled); returns HTTP Status 400 if validation error."
              | optional,
            consumes
              | String
              | doc "To define the content type what the REST service consumes (accept as input), such as application/xml or application/json. This option will override what may be configured on a parent level"
              | optional,
            deprecated
              | Bool
              | doc "Marks this rest operation as deprecated in OpenApi documentation."
              | optional,
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this REST service from the route during build time. Once an REST service has been disabled then it cannot be enabled later at runtime."
              | optional,
            enableCORS
              | Bool
              | doc "Whether to enable CORS headers in the HTTP response. This option will override what may be configured on a parent level The default value is false."
              | optional,
            enableNoContentResponse
              | Bool
              | doc "Whether to return HTTP 204 with an empty body when a response contains an empty JSON object or XML root object. The default value is false."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            outType
              | String
              | doc "Sets the class name to use for binding from POJO to output for the outgoing data This option will override what may be configured on a parent level The name of the class of the input data. Append a to the end of the name if you want the input to be an array type."
              | optional,
            param
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.ParamDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Information about parameters for this REST operation"
              | optional,
            path
              | String
              | doc "The path mapping URIs of this REST operation such as /{id}."
              | optional,
            produces
              | String
              | doc "To define the content type what the REST service produces (uses for output), such as application/xml or application/json This option will override what may be configured on a parent level"
              | optional,
            responseMessage
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.ResponseMessageDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Response details for this REST operation"
              | optional,
            routeId | String | doc "Sets the id of the route" | optional,
            security
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.SecurityDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Security settings for this REST operation"
              | optional,
            skipBindingOnErrorCode
              | Bool
              | doc "Whether to skip binding on output if there is a custom HTTP error code header. This allows to build custom error messages that do not bind to json / xml etc, as success messages otherwise will do. This option will override what may be configured on a parent level"
              | optional,
            streamCache
              | Bool
              | doc "Whether stream caching is enabled on this rest operation."
              | optional,
            to
              | refs."items.definitions.org.apache.camel.model.ToDefinition"
              | doc "The Camel endpoint this REST service will call, such as a direct endpoint to link to an existing route that handles this REST call."
              | optional,
            type
              | String
              | doc "Sets the class name to use for binding from input to POJO for the incoming data This option will override what may be configured on a parent level. The name of the class of the input data. Append a to the end of the name if you want the input to be an array type."
              | optional,
          },
      "items.definitions.org.apache.camel.model.rest.PutDefinition" =
        {
            apiDocs
              | Bool
              | doc "Whether to include or exclude this rest operation in API documentation. The default value is true."
              | optional,
            bindingMode
              | std.enum.TagOrString
              | [| 'json_xml, 'xml, 'json, 'auto, 'off |]
              | doc "Sets the binding mode to use. This option will override what may be configured on a parent level The default value is off"
              | optional,
            clientRequestValidation
              | Bool
              | doc "Whether to enable validation of the client request to check: 1) Content-Type header matches what the Rest DSL consumes; returns HTTP Status 415 if validation error. 2) Accept header matches what the Rest DSL produces; returns HTTP Status 406 if validation error. 3) Missing required data (query parameters, HTTP headers, body); returns HTTP Status 400 if validation error. 4) Parsing error of the message body (JSon, XML or Auto binding mode must be enabled); returns HTTP Status 400 if validation error."
              | optional,
            consumes
              | String
              | doc "To define the content type what the REST service consumes (accept as input), such as application/xml or application/json. This option will override what may be configured on a parent level"
              | optional,
            deprecated
              | Bool
              | doc "Marks this rest operation as deprecated in OpenApi documentation."
              | optional,
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this REST service from the route during build time. Once an REST service has been disabled then it cannot be enabled later at runtime."
              | optional,
            enableCORS
              | Bool
              | doc "Whether to enable CORS headers in the HTTP response. This option will override what may be configured on a parent level The default value is false."
              | optional,
            enableNoContentResponse
              | Bool
              | doc "Whether to return HTTP 204 with an empty body when a response contains an empty JSON object or XML root object. The default value is false."
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            outType
              | String
              | doc "Sets the class name to use for binding from POJO to output for the outgoing data This option will override what may be configured on a parent level The name of the class of the input data. Append a to the end of the name if you want the input to be an array type."
              | optional,
            param
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.ParamDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Information about parameters for this REST operation"
              | optional,
            path
              | String
              | doc "The path mapping URIs of this REST operation such as /{id}."
              | optional,
            produces
              | String
              | doc "To define the content type what the REST service produces (uses for output), such as application/xml or application/json This option will override what may be configured on a parent level"
              | optional,
            responseMessage
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.ResponseMessageDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Response details for this REST operation"
              | optional,
            routeId | String | doc "Sets the id of the route" | optional,
            security
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.SecurityDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Security settings for this REST operation"
              | optional,
            skipBindingOnErrorCode
              | Bool
              | doc "Whether to skip binding on output if there is a custom HTTP error code header. This allows to build custom error messages that do not bind to json / xml etc, as success messages otherwise will do. This option will override what may be configured on a parent level"
              | optional,
            streamCache
              | Bool
              | doc "Whether stream caching is enabled on this rest operation."
              | optional,
            to
              | refs."items.definitions.org.apache.camel.model.ToDefinition"
              | doc "The Camel endpoint this REST service will call, such as a direct endpoint to link to an existing route that handles this REST call."
              | optional,
            type
              | String
              | doc "Sets the class name to use for binding from input to POJO for the incoming data This option will override what may be configured on a parent level. The name of the class of the input data. Append a to the end of the name if you want the input to be an array type."
              | optional,
          },
      "items.definitions.org.apache.camel.model.rest.ResponseHeaderDefinition" =
        {
            allowableValues
              | Array
                refs."items.definitions.org.apache.camel.model.ValueDefinition"
              | doc "Sets the parameter list of allowable values."
              | optional,
            arrayType
              | String
              | doc "Sets the parameter array type. Required if data type is array. Describes the type of items in the array."
              | optional,
            collectionFormat
              | std.enum.TagOrString
              | [| 'tsv, 'ssv, 'pipes, 'multi, 'csv |]
              | doc "Sets the parameter collection format."
              | optional,
            dataFormat
              | String
              | doc "Sets the parameter data format."
              | optional,
            dataType | String | doc "Sets the header data type." | optional,
            description
              | String
              | doc "Description of the parameter."
              | optional,
            example | String | doc "Sets the example" | optional,
            name
              | String
              | doc "Name of the parameter. This option is mandatory.",
          },
      "items.definitions.org.apache.camel.model.rest.ResponseMessageDefinition" =
        {
            code
              | String
              | doc "The response code such as a HTTP status code"
              | optional,
            examples
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.RestPropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Examples of response messages"
              | optional,
            header
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.ResponseHeaderDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Adds a response header"
              | optional,
            message | String | doc "The response message (description)",
            responseModel | String | doc "The response model" | optional,
          },
      "items.definitions.org.apache.camel.model.rest.RestConfigurationDefinition" =
        {
            apiComponent
              | std.enum.TagOrString
              | [| 'swagger, 'openapi |]
              | doc "The name of the Camel component to use as the REST API. If no API Component has been explicit configured, then Camel will lookup if there is a Camel component responsible for servicing and generating the REST API documentation, or if a org.apache.camel.spi.RestApiProcessorFactory is registered in the registry. If either one is found, then that is being used."
              | optional,
            apiContextPath
              | String
              | doc "Sets a leading context-path the REST API will be using. This can be used when using components such as camel-servlet where the deployed web application is deployed using a context-path."
              | optional,
            apiContextRouteId
              | String
              | doc "Sets the route id to use for the route that services the REST API. The route will by default use an auto assigned route id."
              | optional,
            apiHost
              | String
              | doc "To use a specific hostname for the API documentation (such as swagger or openapi) This can be used to override the generated host with this configured hostname"
              | optional,
            apiProperty
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.RestPropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Allows to configure as many additional properties for the api documentation. For example set property api.title to my cool stuff"
              | optional,
            apiVendorExtension
              | Bool
              | doc "Whether vendor extension is enabled in the Rest APIs. If enabled then Camel will include additional information as vendor extension (eg keys starting with x-) such as route ids, class names etc. Not all 3rd party API gateways and tools supports vendor-extensions when importing your API docs."
              | optional,
            bindingMode
              | std.enum.TagOrString
              | [| 'xml, 'off, 'json_xml, 'json, 'auto |]
              | doc "Sets the binding mode to use. The default value is off"
              | optional,
            bindingPackageScan
              | String
              | doc "Package name to use as base (offset) for classpath scanning of POJO classes are located when using binding mode is enabled for JSon or XML. Multiple package names can be separated by comma."
              | optional,
            clientRequestValidation
              | Bool
              | doc "Whether to enable validation of the client request to check: 1) Content-Type header matches what the Rest DSL consumes; returns HTTP Status 415 if validation error. 2) Accept header matches what the Rest DSL produces; returns HTTP Status 406 if validation error. 3) Missing required data (query parameters, HTTP headers, body); returns HTTP Status 400 if validation error. 4) Parsing error of the message body (JSon, XML or Auto binding mode must be enabled); returns HTTP Status 400 if validation error."
              | optional,
            component
              | std.enum.TagOrString
              | [|
                'coap,
                'netty-http,
                'undertow,
                'jetty,
                'servlet,
                'platform-http
              |]
              | doc "The Camel Rest component to use for the REST transport (consumer), such as netty-http, jetty, servlet, undertow. If no component has been explicit configured, then Camel will lookup if there is a Camel component that integrates with the Rest DSL, or if a org.apache.camel.spi.RestConsumerFactory is registered in the registry. If either one is found, then that is being used."
              | optional,
            componentProperty
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.RestPropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Allows to configure as many additional properties for the rest component in use."
              | optional,
            consumerProperty
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.RestPropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Allows to configure as many additional properties for the rest consumer in use."
              | optional,
            contextPath
              | String
              | doc "Sets a leading context-path the REST services will be using. This can be used when using components such as camel-servlet where the deployed web application is deployed using a context-path. Or for components such as camel-jetty or camel-netty-http that includes a HTTP server."
              | optional,
            corsHeaders
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.RestPropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Allows to configure custom CORS headers."
              | optional,
            dataFormatProperty
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.RestPropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Allows to configure as many additional properties for the data formats in use. For example set property prettyPrint to true to have json outputted in pretty mode. The properties can be prefixed to denote the option is only for either JSON or XML and for either the IN or the OUT. The prefixes are: json.in. json.out. xml.in. xml.out. For example a key with value xml.out.mustBeJAXBElement is only for the XML data format for the outgoing. A key without a prefix is a common key for all situations."
              | optional,
            enableCORS
              | Bool
              | doc "Whether to enable CORS headers in the HTTP response. The default value is false."
              | optional,
            enableNoContentResponse
              | Bool
              | doc "Whether to return HTTP 204 with an empty body when a response contains an empty JSON object or XML root object. The default value is false."
              | optional,
            endpointProperty
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.RestPropertyDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Allows to configure as many additional properties for the rest endpoint in use."
              | optional,
            host
              | String
              | doc "The hostname to use for exposing the REST service."
              | optional,
            hostNameResolver
              | std.enum.TagOrString
              | [| 'none, 'localIp, 'localHostName, 'allLocalIp |]
              | doc "If no hostname has been explicit configured, then this resolver is used to compute the hostname the REST service will be using."
              | optional,
            inlineRoutes
              | Bool
              | doc "Inline routes in rest-dsl which are linked using direct endpoints. Each service in Rest DSL is an individual route, meaning that you would have at least two routes per service (rest-dsl, and the route linked from rest-dsl). By inlining (default) allows Camel to optimize and inline this as a single route, however this requires to use direct endpoints, which must be unique per service. If a route is not using direct endpoint then the rest-dsl is not inlined, and will become an individual route. This option is default true."
              | optional,
            jsonDataFormat
              | String
              | doc "Name of specific json data format to use. By default jackson will be used. Important: This option is only for setting a custom name of the data format, not to refer to an existing data format instance."
              | optional,
            port
              | String
              | doc "The port number to use for exposing the REST service. Notice if you use servlet component then the port number configured here does not apply, as the port number in use is the actual port number the servlet component is using. eg if using Apache Tomcat its the tomcat http port, if using Apache Karaf its the HTTP service in Karaf that uses port 8181 by default etc. Though in those situations setting the port number here, allows tooling and JMX to know the port number, so its recommended to set the port number to the number that the servlet engine uses."
              | optional,
            producerApiDoc
              | String
              | doc "Sets the location of the api document the REST producer will use to validate the REST uri and query parameters are valid accordingly to the api document. The location of the api document is loaded from classpath by default, but you can use file: or http: to refer to resources to load from file or http url."
              | optional,
            producerComponent
              | std.enum.TagOrString
              | [| 'netty-http, 'undertow, 'http, 'vertx-http |]
              | doc "Sets the name of the Camel component to use as the REST producer"
              | optional,
            scheme
              | String
              | doc "The scheme to use for exposing the REST service. Usually http or https is supported. The default value is http"
              | optional,
            skipBindingOnErrorCode
              | Bool
              | doc "Whether to skip binding on output if there is a custom HTTP error code header. This allows to build custom error messages that do not bind to json / xml etc, as success messages otherwise will do."
              | optional,
            useXForwardHeaders
              | Bool
              | doc "Whether to use X-Forward headers to set host etc. for OpenApi. This may be needed in special cases involving reverse-proxy and networking going from HTTP to HTTPS etc. Then the proxy can send X-Forward headers (X-Forwarded-Proto) that influences the host names in the OpenAPI schema that camel-openapi-java generates from Rest DSL routes."
              | optional,
            xmlDataFormat
              | String
              | doc "Name of specific XML data format to use. By default jaxb will be used. Important: This option is only for setting a custom name of the data format, not to refer to an existing data format instance."
              | optional,
          },
      "items.definitions.org.apache.camel.model.rest.RestDefinition" =
        {
            apiDocs
              | Bool
              | doc "Whether to include or exclude this rest operation in API documentation. This option will override what may be configured on a parent level. The default value is true."
              | optional,
            bindingMode
              | std.enum.TagOrString
              | [| 'json_xml, 'xml, 'json, 'auto, 'off |]
              | doc "Sets the binding mode to use. This option will override what may be configured on a parent level The default value is auto"
              | optional,
            clientRequestValidation
              | Bool
              | doc "Whether to enable validation of the client request to check: 1) Content-Type header matches what the Rest DSL consumes; returns HTTP Status 415 if validation error. 2) Accept header matches what the Rest DSL produces; returns HTTP Status 406 if validation error. 3) Missing required data (query parameters, HTTP headers, body); returns HTTP Status 400 if validation error. 4) Parsing error of the message body (JSon, XML or Auto binding mode must be enabled); returns HTTP Status 400 if validation error."
              | optional,
            consumes
              | String
              | doc "To define the content type what the REST service consumes (accept as input), such as application/xml or application/json. This option will override what may be configured on a parent level"
              | optional,
            delete
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.DeleteDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
            description
              | String
              | doc "Sets the description of this node"
              | optional,
            disabled
              | Bool
              | doc "Whether to disable this REST service from the route during build time. Once an REST service has been disabled then it cannot be enabled later at runtime."
              | optional,
            enableCORS
              | Bool
              | doc "Whether to enable CORS headers in the HTTP response. This option will override what may be configured on a parent level The default value is false."
              | optional,
            enableNoContentResponse
              | Bool
              | doc "Whether to return HTTP 204 with an empty body when a response contains an empty JSON object or XML root object. The default value is false."
              | optional,
            get
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.GetDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
            head
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.HeadDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
            id | String | doc "Sets the id of this node" | optional,
            openApi
              | refs."items.definitions.org.apache.camel.model.rest.OpenApiDefinition"
              | { _ | Dyn }
              | doc "To use an existing OpenAPI specification as contract-first for Camel Rest DSL."
              | optional,
            patch
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.PatchDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
            path
              | String
              | doc "Path of the rest service, such as /foo"
              | optional,
            post
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.PostDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
            produces
              | String
              | doc "To define the content type what the REST service produces (uses for output), such as application/xml or application/json This option will override what may be configured on a parent level"
              | optional,
            put
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.PutDefinition",
                    { _ | Dyn }
                  ]
              )
              | optional,
            securityDefinitions
              | refs."items.definitions.org.apache.camel.model.rest.RestSecuritiesDefinition"
              | { _ | Dyn }
              | doc "Sets the security definitions such as Basic, OAuth2 etc."
              | optional,
            securityRequirements
              | Array (
                std.contract.Sequence
                  [
                    refs."items.definitions.org.apache.camel.model.rest.SecurityDefinition",
                    { _ | Dyn }
                  ]
              )
              | doc "Sets the security requirement(s) for all endpoints."
              | optional,
            skipBindingOnErrorCode
              | Bool
              | doc "Whether to skip binding on output if there is a custom HTTP error code header. This allows to build custom error messages that do not bind to json / xml etc, as success messages otherwise will do. This option will override what may be configured on a parent level"
              | optional,
            tag
              | String
              | doc "To configure a special tag for the operations within this rest definition."
              | optional,
          },
      "items.definitions.org.apache.camel.model.rest.RestPropertyDefinition" =
        {
            key | String | doc "Property key",
            value | String | doc "Property value",
          },
      "items.definitions.org.apache.camel.model.rest.RestSecuritiesDefinition" =
        {
            apiKey
              | refs."items.definitions.org.apache.camel.model.rest.ApiKeyDefinition"
              | { _ | Dyn }
              | optional,
            basicAuth
              | refs."items.definitions.org.apache.camel.model.rest.BasicAuthDefinition"
              | { _ | Dyn }
              | optional,
            bearerToken
              | refs."items.definitions.org.apache.camel.model.rest.BearerTokenDefinition"
              | { _ | Dyn }
              | optional,
            mutualTLS
              | refs."items.definitions.org.apache.camel.model.rest.MutualTLSDefinition"
              | { _ | Dyn }
              | optional,
            oauth2
              | refs."items.definitions.org.apache.camel.model.rest.OAuth2Definition"
              | { _ | Dyn }
              | optional,
            openIdConnect
              | refs."items.definitions.org.apache.camel.model.rest.OpenIdConnectDefinition"
              | { _ | Dyn }
              | optional,
          },
      "items.definitions.org.apache.camel.model.rest.SecurityDefinition" =
        {
            key | String | doc "Key used to refer to this security definition",
            scopes
              | String
              | doc "The scopes to allow (separate multiple scopes by comma)"
              | optional,
          },
      "items.definitions.org.apache.camel.model.tokenizer.LangChain4jCharacterTokenizerDefinition" =
        {
            id | String | doc "The id of this node" | optional,
            maxOverlap
              | Number
              | doc "Sets the maximum number of tokens that can overlap in each segment",
            maxTokens
              | Number
              | doc "Sets the maximum number of tokens on each segment",
            modelName | String | doc "Sets the model name" | optional,
            tokenizerType
              | std.enum.TagOrString
              | [| 'QWEN, 'AZURE, 'OPEN_AI |]
              | doc "Sets the tokenizer type"
              | optional,
          },
      "items.definitions.org.apache.camel.model.tokenizer.LangChain4jLineTokenizerDefinition" =
        {
            id | String | doc "The id of this node" | optional,
            maxOverlap
              | Number
              | doc "Sets the maximum number of tokens that can overlap in each segment",
            maxTokens
              | Number
              | doc "Sets the maximum number of tokens on each segment",
            modelName | String | doc "Sets the model name" | optional,
            tokenizerType
              | std.enum.TagOrString
              | [| 'QWEN, 'AZURE, 'OPEN_AI |]
              | doc "Sets the tokenizer type"
              | optional,
          },
      "items.definitions.org.apache.camel.model.tokenizer.LangChain4jParagraphTokenizerDefinition" =
        {
            id | String | doc "The id of this node" | optional,
            maxOverlap
              | Number
              | doc "Sets the maximum number of tokens that can overlap in each segment",
            maxTokens
              | Number
              | doc "Sets the maximum number of tokens on each segment",
            modelName | String | doc "Sets the model name" | optional,
            tokenizerType
              | std.enum.TagOrString
              | [| 'QWEN, 'AZURE, 'OPEN_AI |]
              | doc "Sets the tokenizer type"
              | optional,
          },
      "items.definitions.org.apache.camel.model.tokenizer.LangChain4jSentenceTokenizerDefinition" =
        {
            id | String | doc "The id of this node" | optional,
            maxOverlap
              | Number
              | doc "Sets the maximum number of tokens that can overlap in each segment",
            maxTokens
              | Number
              | doc "Sets the maximum number of tokens on each segment",
            modelName | String | doc "Sets the model name" | optional,
            tokenizerType
              | std.enum.TagOrString
              | [| 'QWEN, 'AZURE, 'OPEN_AI |]
              | doc "Sets the tokenizer type"
              | optional,
          },
      "items.definitions.org.apache.camel.model.tokenizer.LangChain4jWordTokenizerDefinition" =
        {
            id | String | doc "The id of this node" | optional,
            maxOverlap
              | Number
              | doc "Sets the maximum number of tokens that can overlap in each segment",
            maxTokens
              | Number
              | doc "Sets the maximum number of tokens on each segment",
            modelName | String | doc "Sets the model name" | optional,
            tokenizerType
              | std.enum.TagOrString
              | [| 'QWEN, 'AZURE, 'OPEN_AI |]
              | doc "Sets the tokenizer type"
              | optional,
          },
    }
    in
  Array (
      std.contract.any_of
        [
          js2n.Null,
          Bool,
          Number,
          String,
          std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              {
                beans
                  | refs."items.definitions.org.apache.camel.dsl.yaml.deserializers.BeansDeserializer"
                  | optional,
                dataFormats
                  | refs."items.definitions.org.apache.camel.dsl.yaml.deserializers.DataFormatsDefinitionDeserializer"
                  | optional,
                errorHandler
                  | refs."items.definitions.org.apache.camel.dsl.yaml.deserializers.ErrorHandlerDeserializer"
                  | { _ | Dyn }
                  | optional,
                from
                  | refs."items.definitions.org.apache.camel.dsl.yaml.deserializers.RouteFromDefinitionDeserializer"
                  | { _ | Dyn }
                  | optional,
                intercept
                  | refs."items.definitions.org.apache.camel.model.InterceptDefinition"
                  | optional,
                interceptFrom
                  | refs."items.definitions.org.apache.camel.model.InterceptFromDefinition"
                  | optional,
                interceptSendToEndpoint
                  | refs."items.definitions.org.apache.camel.model.InterceptSendToEndpointDefinition"
                  | std.contract.any_of [ { _ | Dyn }, String ]
                  | optional,
                onCompletion
                  | refs."items.definitions.org.apache.camel.model.OnCompletionDefinition"
                  | optional,
                onException
                  | refs."items.definitions.org.apache.camel.model.OnExceptionDefinition"
                  | optional,
                rest
                  | refs."items.definitions.org.apache.camel.model.rest.RestDefinition"
                  | optional,
                restConfiguration
                  | refs."items.definitions.org.apache.camel.model.rest.RestConfigurationDefinition"
                  | optional,
                route
                  | refs."items.definitions.org.apache.camel.model.RouteDefinition"
                  | optional,
                routeConfiguration
                  | refs."items.definitions.org.apache.camel.model.RouteConfigurationDefinition"
                  | optional,
                routeTemplate
                  | refs."items.definitions.org.apache.camel.model.RouteTemplateDefinition"
                  | optional,
                templatedRoute
                  | refs."items.definitions.org.apache.camel.model.TemplatedRouteDefinition"
                  | optional,
              }
            ],
          Array Dyn
        ]
    )