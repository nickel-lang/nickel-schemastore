# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.io.argoproj.events.v1alpha1.AMQPConsumeConfig" =
        {
            autoAck
              | Bool
              | doc "AutoAck when true, the server will acknowledge deliveries to this consumer prior to writing the delivery to the network"
              | optional,
            consumerTag
              | String
              | doc "ConsumerTag is the identity of the consumer included in every delivery"
              | optional,
            exclusive
              | Bool
              | doc "Exclusive when true, the server will ensure that this is the sole consumer from this queue"
              | optional,
            noLocal
              | Bool
              | doc "NoLocal flag is not supported by RabbitMQ"
              | optional,
            noWait
              | Bool
              | doc "NowWait when true, do not wait for the server to confirm the request and immediately begin deliveries"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.AMQPEventSource" =
        {
            auth
              | refs."definitions.io.argoproj.events.v1alpha1.BasicAuth"
              | { _ | Dyn }
              | doc "Auth hosts secret selectors for username and password"
              | optional,
            connectionBackoff
              | refs."definitions.io.argoproj.events.v1alpha1.Backoff"
              | { _ | Dyn }
              | doc "Backoff holds parameters applied to connection."
              | optional,
            consume
              | refs."definitions.io.argoproj.events.v1alpha1.AMQPConsumeConfig"
              | { _ | Dyn }
              | doc "Consume holds the configuration to immediately starts delivering queued messages For more information, visit https://pkg.go.dev/github.com/rabbitmq/amqp091-go#Channel.Consume"
              | optional,
            exchangeDeclare
              | refs."definitions.io.argoproj.events.v1alpha1.AMQPExchangeDeclareConfig"
              | { _ | Dyn }
              | doc "ExchangeDeclare holds the configuration for the exchange on the server For more information, visit https://pkg.go.dev/github.com/rabbitmq/amqp091-go#Channel.ExchangeDeclare"
              | optional,
            exchangeName
              | String
              | doc "ExchangeName is the exchange name For more information, visit https://www.rabbitmq.com/tutorials/amqp-concepts.html",
            exchangeType
              | String
              | doc "ExchangeType is rabbitmq exchange type",
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            jsonBody
              | Bool
              | doc "JSONBody specifies that all event body payload coming from this source will be JSON"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            queueBind
              | refs."definitions.io.argoproj.events.v1alpha1.AMQPQueueBindConfig"
              | { _ | Dyn }
              | doc "QueueBind holds the configuration that binds an exchange to a queue so that publishings to the exchange will be routed to the queue when the publishing routing key matches the binding routing key For more information, visit https://pkg.go.dev/github.com/rabbitmq/amqp091-go#Channel.QueueBind"
              | optional,
            queueDeclare
              | refs."definitions.io.argoproj.events.v1alpha1.AMQPQueueDeclareConfig"
              | { _ | Dyn }
              | doc "QueueDeclare holds the configuration of a queue to hold messages and deliver to consumers. Declaring creates a queue if it doesn't already exist, or ensures that an existing queue matches the same parameters For more information, visit https://pkg.go.dev/github.com/rabbitmq/amqp091-go#Channel.QueueDeclare"
              | optional,
            routingKey | String | doc "Routing key for bindings",
            tls
              | refs."definitions.io.argoproj.events.v1alpha1.TLSConfig"
              | { _ | Dyn }
              | doc "TLS configuration for the amqp client."
              | optional,
            url | String | doc "URL for rabbitmq service" | optional,
            urlSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "URLSecret is secret reference for rabbitmq service URL"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.AMQPExchangeDeclareConfig" =
        {
            autoDelete
              | Bool
              | doc "AutoDelete removes the exchange when no bindings are active"
              | optional,
            durable
              | Bool
              | doc "Durable keeps the exchange also after the server restarts"
              | optional,
            internal
              | Bool
              | doc "Internal when true does not accept publishings"
              | optional,
            noWait
              | Bool
              | doc "NowWait when true does not wait for a confirmation from the server"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.AMQPQueueBindConfig" =
        {
            noWait
              | Bool
              | doc "NowWait false and the queue could not be bound, the channel will be closed with an error"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.AMQPQueueDeclareConfig" =
        {
            arguments
              | String
              | doc "Arguments of a queue (also known as \"x-arguments\") used for optional features and plugins"
              | optional,
            autoDelete
              | Bool
              | doc "AutoDelete removes the queue when no consumers are active"
              | optional,
            durable
              | Bool
              | doc "Durable keeps the queue also after the server restarts"
              | optional,
            exclusive
              | Bool
              | doc "Exclusive sets the queues to be accessible only by the connection that declares them and will be deleted wgen the connection closes"
              | optional,
            name
              | String
              | doc "Name of the queue. If empty the server auto-generates a unique name for this queue"
              | optional,
            noWait
              | Bool
              | doc "NowWait when true, the queue assumes to be declared on the server"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.AWSLambdaTrigger" =
        {
            accessKey
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "AccessKey refers K8s secret containing aws access key"
              | optional,
            functionName
              | String
              | doc "FunctionName refers to the name of the function to invoke.",
            invocationType
              | String
              | doc m%"
                Choose from the following options.
                
                   * RequestResponse (default) - Invoke the function synchronously. Keep
                   the connection open until the function returns a response or times out.
                   The API response includes the function response and additional data.
                
                   * Event - Invoke the function asynchronously. Send events that fail multiple
                   times to the function's dead-letter queue (if it's configured). The API
                   response only includes a status code.
                
                   * DryRun - Validate parameter values and verify that the user or role
                   has permission to invoke the function.
              "%
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Parameters is the list of key-value extracted from event's payload that are applied to the trigger resource."
              | optional,
            payload
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Payload is the list of key-value extracted from an event payload to construct the request payload.",
            region | String | doc "Region is AWS region",
            roleARN
              | String
              | doc "RoleARN is the Amazon Resource Name (ARN) of the role to assume."
              | optional,
            secretKey
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SecretKey refers K8s secret containing aws secret key"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.Amount" = Number,
      "definitions.io.argoproj.events.v1alpha1.ArgoWorkflowTrigger" =
        {
            args
              | Array String
              | doc "Args is the list of arguments to pass to the argo CLI"
              | optional,
            operation
              | String
              | doc "Operation refers to the type of operation performed on the argo workflow resource. Default value is Submit."
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Parameters is the list of parameters to pass to resolved Argo Workflow object"
              | optional,
            source
              | refs."definitions.io.argoproj.events.v1alpha1.ArtifactLocation"
              | { _ | Dyn }
              | doc "Source of the K8s resource file(s)"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.ArtifactLocation" =
        {
            configmap
              | refs."definitions.io.k8s.api.core.v1.ConfigMapKeySelector"
              | { _ | Dyn }
              | doc "Configmap that stores the artifact"
              | optional,
            file
              | refs."definitions.io.argoproj.events.v1alpha1.FileArtifact"
              | { _ | Dyn }
              | doc "File artifact is artifact stored in a file"
              | optional,
            git
              | refs."definitions.io.argoproj.events.v1alpha1.GitArtifact"
              | { _ | Dyn }
              | doc "Git repository hosting the artifact"
              | optional,
            inline
              | String
              | doc "Inline artifact is embedded in sensor spec as a string"
              | optional,
            resource
              | refs."definitions.io.argoproj.events.v1alpha1.K8SResource"
              | { _ | Dyn }
              | doc "Resource is generic template for K8s resource"
              | optional,
            s3
              | refs."definitions.io.argoproj.events.v1alpha1.S3Artifact"
              | { _ | Dyn }
              | doc "S3 compliant artifact"
              | optional,
            url
              | refs."definitions.io.argoproj.events.v1alpha1.URLArtifact"
              | { _ | Dyn }
              | doc "URL to fetch the artifact from"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.AzureEventHubsTrigger" =
        {
            fqdn
              | String
              | doc "FQDN refers to the namespace dns of Azure Event Hubs to be used i.e. <namespace>.servicebus.windows.net",
            hubName
              | String
              | doc "HubName refers to the Azure Event Hub to send events to",
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Parameters is the list of key-value extracted from event's payload that are applied to the trigger resource."
              | optional,
            payload
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Payload is the list of key-value extracted from an event payload to construct the request payload.",
            sharedAccessKey
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SharedAccessKey refers to a K8s secret containing the primary key for the"
              | optional,
            sharedAccessKeyName
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SharedAccessKeyName refers to the name of the Shared Access Key",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.AzureEventsHubEventSource" =
        {
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            fqdn
              | String
              | doc "FQDN of the EventHubs namespace you created More info at https://docs.microsoft.com/en-us/azure/event-hubs/event-hubs-get-connection-string",
            hubName | String | doc "Event Hub path/name",
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            sharedAccessKey
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SharedAccessKey is the generated value of the key. If both this field and SharedAccessKeyName are not provided it will try to access via Azure AD with DefaultAzureCredential, FQDN and HubName."
              | optional,
            sharedAccessKeyName
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SharedAccessKeyName is the name you chose for your application's SAS keys. If both this field and SharedAccessKey are not provided it will try to access via Azure AD with DefaultAzureCredential, FQDN and HubName."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.AzureQueueStorageEventSource" =
        {
            connectionString
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "ConnectionString is the connection string to access Azure Queue Storage. If this fields is not provided it will try to access via Azure AD with StorageAccountName."
              | optional,
            decodeMessage
              | Bool
              | doc "DecodeMessage specifies if all the messages should be base64 decoded. If set to true the decoding is done before the evaluation of JSONBody"
              | optional,
            dlq
              | Bool
              | doc "DLQ specifies if a dead-letter queue is configured for messages that can't be processed successfully. If set to true, messages with invalid payload won't be acknowledged to allow to forward them farther to the dead-letter queue. The default value is false."
              | optional,
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            jsonBody
              | Bool
              | doc "JSONBody specifies that all event body payload coming from this source will be JSON"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            queueName | String | doc "QueueName is the name of the queue",
            storageAccountName
              | String
              | doc "StorageAccountName is the name of the storage account where the queue is. This field is necessary to access via Azure AD (managed identity) and it is ignored if ConnectionString is set."
              | optional,
            waitTimeInSeconds
              | std.number.Integer
              | doc "WaitTimeInSeconds is the duration (in seconds) for which the event source waits between empty results from the queue. The default value is 3 seconds."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.AzureServiceBusEventSource" =
        {
            connectionString
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "ConnectionString is the connection string for the Azure Service Bus. If this fields is not provided it will try to access via Azure AD with DefaultAzureCredential and FullyQualifiedNamespace."
              | optional,
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            fullyQualifiedNamespace
              | String
              | doc "FullyQualifiedNamespace is the Service Bus namespace name (ex: myservicebus.servicebus.windows.net). This field is necessary to access via Azure AD (managed identity) and it is ignored if ConnectionString is set."
              | optional,
            jsonBody
              | Bool
              | doc "JSONBody specifies that all event body payload coming from this source will be JSON"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            queueName
              | String
              | doc "QueueName is the name of the Azure Service Bus Queue",
            subscriptionName
              | String
              | doc "SubscriptionName is the name of the Azure Service Bus Topic Subscription",
            tls
              | refs."definitions.io.argoproj.events.v1alpha1.TLSConfig"
              | { _ | Dyn }
              | doc "TLS configuration for the service bus client"
              | optional,
            topicName
              | String
              | doc "TopicName is the name of the Azure Service Bus Topic",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.AzureServiceBusTrigger" =
        {
            connectionString
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "ConnectionString is the connection string for the Azure Service Bus"
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Parameters is the list of key-value extracted from event's payload that are applied to the trigger resource."
              | optional,
            payload
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Payload is the list of key-value extracted from an event payload to construct the request payload.",
            queueName
              | String
              | doc "QueueName is the name of the Azure Service Bus Queue",
            subscriptionName
              | String
              | doc "SubscriptionName is the name of the Azure Service Bus Topic Subscription",
            tls
              | refs."definitions.io.argoproj.events.v1alpha1.TLSConfig"
              | { _ | Dyn }
              | doc "TLS configuration for the service bus client"
              | optional,
            topicName
              | String
              | doc "TopicName is the name of the Azure Service Bus Topic",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.Backoff" =
        {
            duration
              | refs."definitions.io.argoproj.events.v1alpha1.Int64OrString"
              | std.contract.any_of [ Number, String ]
              | doc "The initial duration in nanoseconds or strings like \"1s\", \"3m\""
              | optional,
            factor
              | refs."definitions.io.argoproj.events.v1alpha1.Amount"
              | Number
              | doc "Duration is multiplied by factor each iteration"
              | optional,
            jitter
              | refs."definitions.io.argoproj.events.v1alpha1.Amount"
              | Number
              | doc "The amount of jitter applied each iteration"
              | optional,
            steps
              | std.number.Integer
              | doc "Exit with error after this many steps"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.BasicAuth" =
        {
            password
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Password refers to the Kubernetes secret that holds the password required for basic auth."
              | optional,
            username
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Username refers to the Kubernetes secret that holds the username required for basic auth."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.BitbucketAuth" =
        {
            basic
              | refs."definitions.io.argoproj.events.v1alpha1.BitbucketBasicAuth"
              | { _ | Dyn }
              | doc "Basic is BasicAuth auth strategy."
              | optional,
            oauthToken
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "OAuthToken refers to the K8s secret that holds the OAuth Bearer token."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.BitbucketBasicAuth" =
        {
            password
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Password refers to the K8s secret that holds the password.",
            username
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Username refers to the K8s secret that holds the username.",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.BitbucketEventSource" =
        {
            auth
              | refs."definitions.io.argoproj.events.v1alpha1.BitbucketAuth"
              | { _ | Dyn }
              | doc "Auth information required to connect to Bitbucket.",
            deleteHookOnFinish
              | Bool
              | doc "DeleteHookOnFinish determines whether to delete the defined Bitbucket hook once the event source is stopped."
              | optional,
            events | Array String | doc "Events this webhook is subscribed to.",
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will be passed along the event payload."
              | optional,
            owner
              | String
              | doc "DeprecatedOwner is the owner of the repository. Deprecated: use Repositories instead. Will be unsupported in v1.9"
              | optional,
            projectKey
              | String
              | doc "DeprecatedProjectKey is the key of the project to which the repository relates Deprecated: use Repositories instead. Will be unsupported in v1.9"
              | optional,
            repositories
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.BitbucketRepository",
                    { _ | Dyn }
                  ]
              )
              | doc "Repositories holds a list of repositories for which integration needs to set up"
              | optional,
            repositorySlug
              | String
              | doc "DeprecatedRepositorySlug is a URL-friendly version of a repository name, automatically generated by Bitbucket for use in the URL Deprecated: use Repositories instead. Will be unsupported in v1.9"
              | optional,
            webhook
              | refs."definitions.io.argoproj.events.v1alpha1.WebhookContext"
              | { _ | Dyn }
              | doc "Webhook refers to the configuration required to run an http server",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.BitbucketRepository" =
        {
            owner | String | doc "Owner is the owner of the repository",
            repositorySlug
              | String
              | doc "RepositorySlug is a URL-friendly version of a repository name, automatically generated by Bitbucket for use in the URL",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.BitbucketServerEventSource" =
        {
            accessToken
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "AccessToken is reference to K8s secret which holds the bitbucket api access information."
              | optional,
            bitbucketserverBaseURL
              | String
              | doc "BitbucketServerBaseURL is the base URL for API requests to a custom endpoint.",
            checkInterval
              | String
              | doc "CheckInterval is a duration in which to wait before checking that the webhooks exist, e.g. 1s, 30m, 2h... (defaults to 1m)"
              | optional,
            deleteHookOnFinish
              | Bool
              | doc "DeleteHookOnFinish determines whether to delete the Bitbucket Server hook for the project once the event source is stopped."
              | optional,
            events
              | Array String
              | doc "Events are bitbucket event to listen to. Refer https://confluence.atlassian.com/bitbucketserver/event-payload-938025882.html"
              | optional,
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            oneEventPerChange
              | Bool
              | doc "OneEventPerChange controls whether to process each change in a repo:refs_changed webhook event as a separate event. This setting is useful when multiple tags are pushed simultaneously for the same commit, and each tag needs to independently trigger an action, such as a distinct workflow in Argo Workflows. When enabled, the BitbucketServerEventSource publishes an individual BitbucketServerEventData for each change, ensuring independent processing of each tag or reference update in a single webhook event."
              | optional,
            projectKey
              | String
              | doc "DeprecatedProjectKey is the key of project for which integration needs to set up. Deprecated: use Repositories instead. Will be unsupported in v1.8."
              | optional,
            projects
              | Array String
              | doc "Projects holds a list of projects for which integration needs to set up, this will add the webhook to all repositories in the project."
              | optional,
            repositories
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.BitbucketServerRepository",
                    { _ | Dyn }
                  ]
              )
              | doc "Repositories holds a list of repositories for which integration needs to set up."
              | optional,
            repositorySlug
              | String
              | doc "DeprecatedRepositorySlug is the slug of the repository for which integration needs to set up. Deprecated: use Repositories instead. Will be unsupported in v1.8."
              | optional,
            skipBranchRefsChangedOnOpenPR
              | Bool
              | doc "SkipBranchRefsChangedOnOpenPR bypasses the event repo:refs_changed for branches whenever there's an associated open pull request. This helps in optimizing the event handling process by avoiding unnecessary triggers for branch reference changes that are already part of a pull request under review."
              | optional,
            tls
              | refs."definitions.io.argoproj.events.v1alpha1.TLSConfig"
              | { _ | Dyn }
              | doc "TLS configuration for the bitbucketserver client."
              | optional,
            webhook
              | refs."definitions.io.argoproj.events.v1alpha1.WebhookContext"
              | { _ | Dyn }
              | doc "Webhook holds configuration to run a http server."
              | optional,
            webhookSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "WebhookSecret is reference to K8s secret which holds the bitbucket webhook secret (for HMAC validation)."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.BitbucketServerRepository" =
        {
            projectKey
              | String
              | doc "ProjectKey is the key of project for which integration needs to set up.",
            repositorySlug
              | String
              | doc "RepositorySlug is the slug of the repository for which integration needs to set up.",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.BusConfig" =
        {
            jetstream
              | refs."definitions.io.argoproj.events.v1alpha1.JetStreamConfig"
              | { _ | Dyn }
              | optional,
            kafka
              | refs."definitions.io.argoproj.events.v1alpha1.KafkaBus"
              | { _ | Dyn }
              | optional,
            nats
              | refs."definitions.io.argoproj.events.v1alpha1.NATSConfig"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.CalendarEventSource" =
        {
            exclusionDates
              | Array String
              | doc "ExclusionDates defines the list of DATE-TIME exceptions for recurring events."
              | optional,
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            interval
              | String
              | doc "Interval is a string that describes an interval duration, e.g. 1s, 30m, 2h..."
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            persistence
              | refs."definitions.io.argoproj.events.v1alpha1.EventPersistence"
              | { _ | Dyn }
              | doc "Persistence hold the configuration for event persistence"
              | optional,
            schedule
              | String
              | doc "Schedule is a cron-like expression. For reference, see: https://en.wikipedia.org/wiki/Cron"
              | optional,
            timezone
              | String
              | doc "Timezone in which to run the schedule"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.CatchupConfiguration" =
        {
            enabled
              | Bool
              | doc "Enabled enables to triggered the missed schedule when eventsource restarts"
              | optional,
            maxDuration
              | String
              | doc "MaxDuration holds max catchup duration"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.Condition" =
        {
            lastTransitionTime
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.Time"
              | String
              | doc "Last time the condition transitioned from one status to another."
              | optional,
            message
              | String
              | doc "Human-readable message indicating details about last transition."
              | optional,
            reason
              | String
              | doc "Unique, this should be a short, machine understandable string that gives the reason for condition's last transition. For example, \"ImageNotFound\""
              | optional,
            status | String | doc "Condition status, True, False or Unknown.",
            type | String | doc "Condition type.",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.ConditionsResetByTime" =
        {
            cron
              | String
              | doc "Cron is a cron-like expression. For reference, see: https://en.wikipedia.org/wiki/Cron"
              | optional,
            timezone | String | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.ConditionsResetCriteria" =
        {
            byTime
              | refs."definitions.io.argoproj.events.v1alpha1.ConditionsResetByTime"
              | { _ | Dyn }
              | doc "Schedule is a cron-like expression. For reference, see: https://en.wikipedia.org/wiki/Cron"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.ConfigMapPersistence" =
        {
            createIfNotExist
              | Bool
              | doc "CreateIfNotExist will create configmap if it doesn't exists"
              | optional,
            name | String | doc "Name of the configmap" | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.Container" =
        {
            env
              | Array (
                std.contract.Sequence
                  [ refs."definitions.io.k8s.api.core.v1.EnvVar", { _ | Dyn } ]
              )
              | optional,
            envFrom
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.EnvFromSource",
                    { _ | Dyn }
                  ]
              )
              | optional,
            imagePullPolicy | String | optional,
            resources
              | refs."definitions.io.k8s.api.core.v1.ResourceRequirements"
              | { _ | Dyn }
              | optional,
            securityContext
              | refs."definitions.io.k8s.api.core.v1.SecurityContext"
              | { _ | Dyn }
              | optional,
            volumeMounts
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.VolumeMount",
                    { _ | Dyn }
                  ]
              )
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.ContainerTemplate" =
        {
            imagePullPolicy | String | optional,
            resources
              | refs."definitions.io.k8s.api.core.v1.ResourceRequirements"
              | { _ | Dyn }
              | optional,
            securityContext
              | refs."definitions.io.k8s.api.core.v1.SecurityContext"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.CustomTrigger" =
        {
            certSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "CertSecret refers to the secret that contains cert for secure connection between sensor and custom trigger gRPC server."
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Parameters is the list of parameters that is applied to resolved custom trigger trigger object."
              | optional,
            payload
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Payload is the list of key-value extracted from an event payload to construct the request payload.",
            secure
              | Bool
              | doc "Secure refers to type of the connection between sensor to custom trigger gRPC",
            serverNameOverride
              | String
              | doc "ServerNameOverride for the secure connection between sensor and custom trigger gRPC server."
              | optional,
            serverURL
              | String
              | doc "ServerURL is the url of the gRPC server that executes custom trigger",
            spec
              | { _ | String }
              | doc "Spec is the custom trigger resource specification that custom trigger gRPC server knows how to interpret.",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.DataFilter" =
        {
            comparator
              | String
              | doc "Comparator compares the event data with a user given value. Can be \">=\", \">\", \"=\", \"!=\", \"<\", or \"<=\". Is optional, and if left blank treated as equality \"=\"."
              | optional,
            path
              | String
              | doc "Path is the JSONPath of the event's (JSON decoded) data key Path is a series of keys separated by a dot. A key may contain wildcard characters '*' and '?'. To access an array value use the index as the key. The dot and wildcard characters can be escaped with '\\\\'. See https://github.com/tidwall/gjson#path-syntax for more information on how to use this.",
            template
              | String
              | doc "Template is a go-template for extracting a string from the event's data. A Template is evaluated with provided path, type and value. The templating follows the standard go-template syntax as well as sprig's extra functions. See https://pkg.go.dev/text/template and https://masterminds.github.io/sprig/"
              | optional,
            type | String | doc "Type contains the JSON type of the data",
            value
              | Array String
              | doc "Value is the allowed string values for this key Booleans are passed using strconv.ParseBool() Numbers are parsed using as float64 using strconv.ParseFloat() Strings are taken as is Nils this value is ignored",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.EmailTrigger" =
        {
            body
              | String
              | doc "Body refers to the body/content of the email send."
              | optional,
            from
              | String
              | doc "From refers to the address from which the email is send from."
              | optional,
            host
              | String
              | doc "Host refers to the smtp host url to which email is send."
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Parameters is the list of key-value extracted from event's payload that are applied to the trigger resource."
              | optional,
            port
              | std.number.Integer
              | doc "Port refers to the smtp server port to which email is send. Defaults to 0."
              | optional,
            smtpPassword
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SMTPPassword refers to the Kubernetes secret that holds the smtp password used to connect to smtp server."
              | optional,
            subject
              | String
              | doc "Subject refers to the subject line for the email send."
              | optional,
            to
              | Array String
              | doc "To refers to the email addresses to which the emails are send."
              | optional,
            username
              | String
              | doc "Username refers to the username used to connect to the smtp server."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.EmitterEventSource" =
        {
            broker | String | doc "Broker URI to connect to.",
            channelKey | String | doc "ChannelKey refers to the channel key",
            channelName | String | doc "ChannelName refers to the channel name",
            connectionBackoff
              | refs."definitions.io.argoproj.events.v1alpha1.Backoff"
              | { _ | Dyn }
              | doc "Backoff holds parameters applied to connection."
              | optional,
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            jsonBody
              | Bool
              | doc "JSONBody specifies that all event body payload coming from this source will be JSON"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            password
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Password to use to connect to broker"
              | optional,
            tls
              | refs."definitions.io.argoproj.events.v1alpha1.TLSConfig"
              | { _ | Dyn }
              | doc "TLS configuration for the emitter client."
              | optional,
            username
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Username to use to connect to broker"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.EventBus" =
        {
            apiVersion
              | std.contract.Equal "argoproj.io/v1alpha1"
              | doc "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources"
              | optional,
            kind
              | std.contract.Equal "EventBus"
              | doc "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"
              | optional,
            metadata
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta"
              | { _ | Dyn },
            spec
              | refs."definitions.io.argoproj.events.v1alpha1.EventBusSpec"
              | { _ | Dyn },
            status
              | refs."definitions.io.argoproj.events.v1alpha1.EventBusStatus"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.EventBusSpec" =
        {
            jetstream
              | refs."definitions.io.argoproj.events.v1alpha1.JetStreamBus"
              | { _ | Dyn }
              | optional,
            jetstreamExotic
              | refs."definitions.io.argoproj.events.v1alpha1.JetStreamConfig"
              | { _ | Dyn }
              | doc "Exotic JetStream"
              | optional,
            kafka
              | refs."definitions.io.argoproj.events.v1alpha1.KafkaBus"
              | { _ | Dyn }
              | doc "Kafka eventbus"
              | optional,
            nats
              | refs."definitions.io.argoproj.events.v1alpha1.NATSBus"
              | { _ | Dyn }
              | doc "NATS eventbus"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.EventBusStatus" =
        {
            conditions
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.Condition",
                    { _ | Dyn }
                  ]
              )
              | doc "Conditions are the latest available observations of a resource's current state."
              | optional,
            config
              | refs."definitions.io.argoproj.events.v1alpha1.BusConfig"
              | { _ | Dyn }
              | doc "Config holds the fininalized configuration of EventBus"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.EventContext" =
        {
            datacontenttype
              | String
              | doc "DataContentType - A MIME (RFC2046) string describing the media type of `data`.",
            id
              | String
              | doc "ID of the event; must be non-empty and unique within the scope of the producer.",
            source
              | String
              | doc "Source - A URI describing the event producer.",
            specversion
              | String
              | doc "SpecVersion - The version of the CloudEvents specification used by the event.",
            subject
              | String
              | doc "Subject - The subject of the event in the context of the event producer",
            time
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.Time"
              | String
              | doc "Time - A Timestamp when the event happened.",
            type
              | String
              | doc "Type - The type of the occurrence which has happened.",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.EventDependency" =
        {
            eventName | String | doc "EventName is the name of the event",
            eventSourceName
              | String
              | doc "EventSourceName is the name of EventSource that Sensor depends on",
            filters
              | refs."definitions.io.argoproj.events.v1alpha1.EventDependencyFilter"
              | { _ | Dyn }
              | doc "Filters and rules governing toleration of success and constraints on the context and data of an event"
              | optional,
            filtersLogicalOperator
              | String
              | doc "FiltersLogicalOperator defines how different filters are evaluated together. Available values: and (&&), or (||) Is optional and if left blank treated as and (&&)."
              | optional,
            name | String | doc "Name is a unique name of this dependency",
            transform
              | refs."definitions.io.argoproj.events.v1alpha1.EventDependencyTransformer"
              | { _ | Dyn }
              | doc "Transform transforms the event data"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.EventDependencyFilter" =
        {
            context
              | refs."definitions.io.argoproj.events.v1alpha1.EventContext"
              | { _ | Dyn }
              | doc "Context filter constraints"
              | optional,
            data
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.DataFilter",
                    { _ | Dyn }
                  ]
              )
              | doc "Data filter constraints with escalation"
              | optional,
            dataLogicalOperator
              | String
              | doc "DataLogicalOperator defines how multiple Data filters (if defined) are evaluated together. Available values: and (&&), or (||) Is optional and if left blank treated as and (&&)."
              | optional,
            exprLogicalOperator
              | String
              | doc "ExprLogicalOperator defines how multiple Exprs filters (if defined) are evaluated together. Available values: and (&&), or (||) Is optional and if left blank treated as and (&&)."
              | optional,
            exprs
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.ExprFilter",
                    { _ | Dyn }
                  ]
              )
              | doc "Exprs contains the list of expressions evaluated against the event payload."
              | optional,
            script
              | String
              | doc "Script refers to a Lua script evaluated to determine the validity of an event."
              | optional,
            time
              | refs."definitions.io.argoproj.events.v1alpha1.TimeFilter"
              | { _ | Dyn }
              | doc "Time filter on the event with escalation"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.EventDependencyTransformer" =
        {
            jq
              | String
              | doc "JQ holds the jq command applied for transformation"
              | optional,
            script
              | String
              | doc "Script refers to a Lua script used to transform the event"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.EventPersistence" =
        {
            catchup
              | refs."definitions.io.argoproj.events.v1alpha1.CatchupConfiguration"
              | { _ | Dyn }
              | doc "Catchup enables to triggered the missed schedule when eventsource restarts"
              | optional,
            configMap
              | refs."definitions.io.argoproj.events.v1alpha1.ConfigMapPersistence"
              | { _ | Dyn }
              | doc "ConfigMap holds configmap details for persistence"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.EventSource" =
        {
            apiVersion
              | std.contract.Equal "argoproj.io/v1alpha1"
              | doc "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources"
              | optional,
            kind
              | std.contract.Equal "EventSource"
              | doc "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"
              | optional,
            metadata
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta"
              | { _ | Dyn },
            spec
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceSpec"
              | { _ | Dyn },
            status
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceStatus"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.EventSourceFilter" =
        { expression | String | optional, .. },
      "definitions.io.argoproj.events.v1alpha1.EventSourceSpec" =
        {
            amqp
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.AMQPEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "AMQP event sources"
              | optional,
            azureEventsHub
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.AzureEventsHubEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "AzureEventsHub event sources"
              | optional,
            azureQueueStorage
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.AzureQueueStorageEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "AzureQueueStorage event source"
              | optional,
            azureServiceBus
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.AzureServiceBusEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "Azure Service Bus event source"
              | optional,
            bitbucket
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.BitbucketEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "Bitbucket event sources"
              | optional,
            bitbucketserver
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.BitbucketServerEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "Bitbucket Server event sources"
              | optional,
            calendar
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.CalendarEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "Calendar event sources"
              | optional,
            emitter
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.EmitterEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "Emitter event source"
              | optional,
            eventBusName
              | String
              | doc "EventBusName references to a EventBus name. By default the value is \"default\""
              | optional,
            file
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.FileEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "File event sources"
              | optional,
            generic
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.GenericEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "Generic event source"
              | optional,
            gerrit
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.GerritEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "Gerrit event source"
              | optional,
            github
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.GithubEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "Github event sources"
              | optional,
            gitlab
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.GitlabEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "Gitlab event sources"
              | optional,
            hdfs
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.HDFSEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "HDFS event sources"
              | optional,
            kafka
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.KafkaEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "Kafka event sources"
              | optional,
            minio
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.S3Artifact",
                    { _ | Dyn }
                  ]
              }
              | doc "Minio event sources"
              | optional,
            mns
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.MNSEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "MNS event sources"
              | optional,
            mqtt
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.MQTTEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "MQTT event sources"
              | optional,
            nats
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.NATSEventsSource",
                    { _ | Dyn }
                  ]
              }
              | doc "NATS event sources"
              | optional,
            nsq
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.NSQEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "NSQ event source"
              | optional,
            pubSub
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.PubSubEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "PubSub event sources"
              | optional,
            pulsar
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.PulsarEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "Pulsar event source"
              | optional,
            redis
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.RedisEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "Redis event source"
              | optional,
            redisStream
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.RedisStreamEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "Redis stream source"
              | optional,
            replicas
              | std.number.Integer
              | doc "Replicas is the event source deployment replicas"
              | optional,
            resource
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.ResourceEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "Resource event sources"
              | optional,
            service
              | refs."definitions.io.argoproj.events.v1alpha1.Service"
              | { _ | Dyn }
              | doc "Service is the specifications of the service to expose the event source"
              | optional,
            sftp
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.SFTPEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "SFTP event sources"
              | optional,
            slack
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.SlackEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "Slack event sources"
              | optional,
            sns
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.SNSEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "SNS event sources"
              | optional,
            sqs
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.SQSEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "SQS event sources"
              | optional,
            storageGrid
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.StorageGridEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "StorageGrid event sources"
              | optional,
            stripe
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.StripeEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "Stripe event sources"
              | optional,
            template
              | refs."definitions.io.argoproj.events.v1alpha1.Template"
              | { _ | Dyn }
              | doc "Template is the pod specification for the event source"
              | optional,
            webhook
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.WebhookEventSource",
                    { _ | Dyn }
                  ]
              }
              | doc "Webhook event sources"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.EventSourceStatus" =
        {
            conditions
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.Condition",
                    { _ | Dyn }
                  ]
              )
              | doc "Conditions are the latest available observations of a resource's current state."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.ExprFilter" =
        {
            expr
              | String
              | doc "Expr refers to the expression that determines the outcome of the filter.",
            fields
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.PayloadField",
                    { _ | Dyn }
                  ]
              )
              | doc "Fields refers to set of keys that refer to the paths within event payload.",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.FileArtifact" =
        { path | String | optional, .. },
      "definitions.io.argoproj.events.v1alpha1.FileEventSource" =
        {
            eventType
              | String
              | doc "Type of file operations to watch Refer https://github.com/fsnotify/fsnotify/blob/master/fsnotify.go for more information",
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            polling | Bool | doc "Use polling instead of inotify" | optional,
            watchPathConfig
              | refs."definitions.io.argoproj.events.v1alpha1.WatchPathConfig"
              | { _ | Dyn }
              | doc "WatchPathConfig contains configuration about the file path to watch",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.GenericEventSource" =
        {
            authSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "AuthSecret holds a secret selector that contains a bearer token for authentication"
              | optional,
            config | String | doc "Config is the event source configuration",
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            insecure
              | Bool
              | doc "Insecure determines the type of connection."
              | optional,
            jsonBody
              | Bool
              | doc "JSONBody specifies that all event body payload coming from this source will be JSON"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            url
              | String
              | doc "URL of the gRPC server that implements the event source.",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.GerritEventSource" =
        {
            auth
              | refs."definitions.io.argoproj.events.v1alpha1.BasicAuth"
              | { _ | Dyn }
              | doc "Auth hosts secret selectors for username and password"
              | optional,
            deleteHookOnFinish
              | Bool
              | doc "DeleteHookOnFinish determines whether to delete the Gerrit hook for the project once the event source is stopped."
              | optional,
            events
              | Array String
              | doc "Events are gerrit event to listen to. Refer https://gerrit-review.googlesource.com/Documentation/cmd-stream-events.html#events",
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            gerritBaseURL
              | String
              | doc "GerritBaseURL is the base URL for API requests to a custom endpoint",
            hookName | String | doc "HookName is the name of the webhook",
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            projects
              | Array String
              | doc "List of project namespace paths like \"whynowy/test\"."
              | optional,
            sslVerify
              | Bool
              | doc "SslVerify to enable ssl verification"
              | optional,
            webhook
              | refs."definitions.io.argoproj.events.v1alpha1.WebhookContext"
              | { _ | Dyn }
              | doc "Webhook holds configuration to run a http server"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.GitArtifact" =
        {
            branch
              | String
              | doc "Branch to use to pull trigger resource"
              | optional,
            cloneDirectory
              | String
              | doc "Directory to clone the repository. We clone complete directory because GitArtifact is not limited to any specific Git service providers. Hence we don't use any specific git provider client.",
            creds
              | refs."definitions.io.argoproj.events.v1alpha1.GitCreds"
              | { _ | Dyn }
              | doc "Creds contain reference to git username and password"
              | optional,
            filePath
              | String
              | doc "Path to file that contains trigger resource definition",
            insecureIgnoreHostKey
              | Bool
              | doc "Whether to ignore host key"
              | optional,
            ref
              | String
              | doc "Ref to use to pull trigger resource. Will result in a shallow clone and fetch."
              | optional,
            remote
              | refs."definitions.io.argoproj.events.v1alpha1.GitRemoteConfig"
              | { _ | Dyn }
              | doc "Remote to manage set of tracked repositories. Defaults to \"origin\". Refer https://git-scm.com/docs/git-remote"
              | optional,
            sshKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SSHKeySecret refers to the secret that contains SSH key"
              | optional,
            tag | String | doc "Tag to use to pull trigger resource" | optional,
            url | String | doc "Git URL",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.GitCreds" =
        {
            password
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | optional,
            username
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.GitRemoteConfig" =
        {
            name | String | doc "Name of the remote to fetch from.",
            urls
              | Array String
              | doc "URLs the URLs of a remote repository. It must be non-empty. Fetch will always use the first URL, while push will use all of them.",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.GithubAppCreds" =
        {
            appID
              | std.number.Integer
              | doc "AppID refers to the GitHub App ID for the application you created",
            installationID
              | std.number.Integer
              | doc "InstallationID refers to the Installation ID of the GitHub app you created and installed",
            privateKey
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "PrivateKey refers to a K8s secret containing the GitHub app private key",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.GithubEventSource" =
        {
            active
              | Bool
              | doc "Active refers to status of the webhook for event deliveries. https://developer.github.com/webhooks/creating/#active"
              | optional,
            apiToken
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "APIToken refers to a K8s secret containing github api token"
              | optional,
            contentType
              | String
              | doc "ContentType of the event delivery"
              | optional,
            deleteHookOnFinish
              | Bool
              | doc "DeleteHookOnFinish determines whether to delete the GitHub hook for the repository once the event source is stopped."
              | optional,
            events
              | Array String
              | doc "Events refer to Github events to which the event source will subscribe",
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            githubApp
              | refs."definitions.io.argoproj.events.v1alpha1.GithubAppCreds"
              | { _ | Dyn }
              | doc "GitHubApp holds the GitHub app credentials"
              | optional,
            githubBaseURL
              | String
              | doc "GitHub base URL (for GitHub Enterprise)"
              | optional,
            githubUploadURL
              | String
              | doc "GitHub upload URL (for GitHub Enterprise)"
              | optional,
            id
              | std.number.Integer
              | doc "Id is the webhook's id Deprecated: This is not used at all, will be removed in v1.6"
              | optional,
            insecure | Bool | doc "Insecure tls verification" | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            organizations
              | Array String
              | doc "Organizations holds the names of organizations (used for organization level webhooks). Not required if Repositories is set."
              | optional,
            owner
              | String
              | doc "DeprecatedOwner refers to GitHub owner name i.e. argoproj Deprecated: use Repositories instead. Will be unsupported in v 1.6"
              | optional,
            repositories
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.OwnedRepositories",
                    { _ | Dyn }
                  ]
              )
              | doc "Repositories holds the information of repositories, which uses repo owner as the key, and list of repo names as the value. Not required if Organizations is set."
              | optional,
            repository
              | String
              | doc "DeprecatedRepository refers to GitHub repo name i.e. argo-events Deprecated: use Repositories instead. Will be unsupported in v 1.6"
              | optional,
            webhook
              | refs."definitions.io.argoproj.events.v1alpha1.WebhookContext"
              | { _ | Dyn }
              | doc "Webhook refers to the configuration required to run a http server"
              | optional,
            webhookSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "WebhookSecret refers to K8s secret containing GitHub webhook secret https://developer.github.com/webhooks/securing/"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.GitlabEventSource" =
        {
            accessToken
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "AccessToken references to k8 secret which holds the gitlab api access information"
              | optional,
            deleteHookOnFinish
              | Bool
              | doc "DeleteHookOnFinish determines whether to delete the GitLab hook for the project once the event source is stopped."
              | optional,
            enableSSLVerification
              | Bool
              | doc "EnableSSLVerification to enable ssl verification"
              | optional,
            events
              | Array String
              | doc "Events are gitlab event to listen to. Refer https://github.com/xanzy/go-gitlab/blob/bf34eca5d13a9f4c3f501d8a97b8ac226d55e4d9/projects.go#L794.",
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            gitlabBaseURL
              | String
              | doc "GitlabBaseURL is the base URL for API requests to a custom endpoint",
            groups
              | Array String
              | doc "List of group IDs or group name like \"test\". Group level hook available in Premium and Ultimate Gitlab."
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            projectID
              | String
              | doc "DeprecatedProjectID is the id of project for which integration needs to setup Deprecated: use Projects instead. Will be unsupported in v 1.7"
              | optional,
            projects
              | Array String
              | doc "List of project IDs or project namespace paths like \"whynowy/test\". If neither a project nor a group is defined, the EventSource will not manage webhooks."
              | optional,
            secretToken
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SecretToken references to k8 secret which holds the Secret Token used by webhook config"
              | optional,
            webhook
              | refs."definitions.io.argoproj.events.v1alpha1.WebhookContext"
              | { _ | Dyn }
              | doc "Webhook holds configuration to run a http server"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.HDFSEventSource" =
        {
            addresses | Array String,
            checkInterval
              | String
              | doc "CheckInterval is a string that describes an interval duration to check the directory state, e.g. 1s, 30m, 2h... (defaults to 1m)"
              | optional,
            directory | String | doc "Directory to watch for events",
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            hdfsUser
              | String
              | doc "HDFSUser is the user to access HDFS file system. It is ignored if either ccache or keytab is used."
              | optional,
            krbCCacheSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "KrbCCacheSecret is the secret selector for Kerberos ccache Either ccache or keytab can be set to use Kerberos."
              | optional,
            krbConfigConfigMap
              | refs."definitions.io.k8s.api.core.v1.ConfigMapKeySelector"
              | { _ | Dyn }
              | doc "KrbConfig is the configmap selector for Kerberos config as string It must be set if either ccache or keytab is used."
              | optional,
            krbKeytabSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "KrbKeytabSecret is the secret selector for Kerberos keytab Either ccache or keytab can be set to use Kerberos."
              | optional,
            krbRealm
              | String
              | doc "KrbRealm is the Kerberos realm used with Kerberos keytab It must be set if keytab is used."
              | optional,
            krbServicePrincipalName
              | String
              | doc "KrbServicePrincipalName is the principal name of Kerberos service It must be set if either ccache or keytab is used."
              | optional,
            krbUsername
              | String
              | doc "KrbUsername is the Kerberos username used with Kerberos keytab It must be set if keytab is used."
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            path
              | String
              | doc "Path is relative path of object to watch with respect to the directory"
              | optional,
            pathRegexp
              | String
              | doc "PathRegexp is regexp of relative path of object to watch with respect to the directory"
              | optional,
            type | String | doc "Type of file operations to watch",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.HTTPTrigger" =
        {
            basicAuth
              | refs."definitions.io.argoproj.events.v1alpha1.BasicAuth"
              | { _ | Dyn }
              | doc "BasicAuth configuration for the http request."
              | optional,
            headers
              | { _ | String }
              | doc "Headers for the HTTP request."
              | optional,
            method
              | String
              | doc "Method refers to the type of the HTTP request. Refer https://golang.org/src/net/http/method.go for more info. Default value is POST."
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Parameters is the list of key-value extracted from event's payload that are applied to the HTTP trigger resource."
              | optional,
            payload
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              ),
            secureHeaders
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.SecureHeader",
                    { _ | Dyn }
                  ]
              )
              | doc "Secure Headers stored in Kubernetes Secrets for the HTTP requests."
              | optional,
            timeout
              | std.number.Integer
              | doc "Timeout refers to the HTTP request timeout in seconds. Default value is 60 seconds."
              | optional,
            tls
              | refs."definitions.io.argoproj.events.v1alpha1.TLSConfig"
              | { _ | Dyn }
              | doc "TLS configuration for the HTTP client."
              | optional,
            url | String | doc "URL refers to the URL to send HTTP request to.",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.Int64OrString" =
        std.contract.any_of [ std.number.Integer, String ],
      "definitions.io.argoproj.events.v1alpha1.JetStreamBus" =
        {
            affinity
              | refs."definitions.io.k8s.api.core.v1.Affinity"
              | { _ | Dyn }
              | doc "The pod's scheduling constraints More info: https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/"
              | optional,
            containerTemplate
              | refs."definitions.io.argoproj.events.v1alpha1.ContainerTemplate"
              | { _ | Dyn }
              | doc "ContainerTemplate contains customized spec for Nats JetStream container"
              | optional,
            imagePullSecrets
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.LocalObjectReference",
                    { _ | Dyn }
                  ]
              )
              | doc "ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod"
              | optional,
            maxPayload
              | String
              | doc "Maximum number of bytes in a message payload, 0 means unlimited. Defaults to 1MB"
              | optional,
            metadata
              | refs."definitions.io.argoproj.events.v1alpha1.Metadata"
              | { _ | Dyn }
              | doc "Metadata sets the pods's metadata, i.e. annotations and labels"
              | optional,
            metricsContainerTemplate
              | refs."definitions.io.argoproj.events.v1alpha1.ContainerTemplate"
              | { _ | Dyn }
              | doc "MetricsContainerTemplate contains customized spec for metrics container"
              | optional,
            nodeSelector
              | { _ | String }
              | doc "NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/"
              | optional,
            persistence
              | refs."definitions.io.argoproj.events.v1alpha1.PersistenceStrategy"
              | { _ | Dyn }
              | optional,
            "priority"
              | std.number.Integer
              | doc "The priority value. Various system components use this field to find the priority of the Redis pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority. More info: https://kubernetes.io/docs/concepts/configuration/pod-priority-preemption/"
              | optional,
            priorityClassName
              | String
              | doc "If specified, indicates the Redis pod's priority. \"system-node-critical\" and \"system-cluster-critical\" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default. More info: https://kubernetes.io/docs/concepts/configuration/pod-priority-preemption/"
              | optional,
            reloaderContainerTemplate
              | refs."definitions.io.argoproj.events.v1alpha1.ContainerTemplate"
              | { _ | Dyn }
              | doc "ReloaderContainerTemplate contains customized spec for config reloader container"
              | optional,
            replicas
              | std.number.Integer
              | doc "JetStream StatefulSet size"
              | optional,
            securityContext
              | refs."definitions.io.k8s.api.core.v1.PodSecurityContext"
              | { _ | Dyn }
              | doc "SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field."
              | optional,
            serviceAccountName
              | String
              | doc "ServiceAccountName to apply to the StatefulSet"
              | optional,
            settings
              | String
              | doc "JetStream configuration, if not specified, global settings in controller-config will be used. See https://docs.nats.io/running-a-nats-service/configuration#jetstream. Only configure \"max_memory_store\" or \"max_file_store\", do not set \"store_dir\" as it has been hardcoded."
              | optional,
            startArgs
              | Array String
              | doc "Optional arguments to start nats-server. For example, \"-D\" to enable debugging output, \"-DV\" to enable debugging and tracing. Check https://docs.nats.io/ for all the available arguments."
              | optional,
            streamConfig
              | String
              | doc "Optional configuration for the streams to be created in this JetStream service, if specified, it will be merged with the default configuration in controller-config. It accepts a YAML format configuration, available fields include, \"maxBytes\", \"maxMsgs\", \"maxAge\" (e.g. 72h), \"replicas\" (1, 3, 5), \"duplicates\" (e.g. 5m), \"retention\" (e.g. 0: Limits (default), 1: Interest, 2: WorkQueue), \"Discard\" (e.g. 0: DiscardOld (default), 1: DiscardNew)."
              | optional,
            tolerations
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.Toleration",
                    { _ | Dyn }
                  ]
              )
              | doc "If specified, the pod's tolerations."
              | optional,
            version
              | String
              | doc "JetStream version, such as \"2.7.3\""
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.JetStreamConfig" =
        {
            accessSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Secret for auth"
              | optional,
            streamConfig | String | optional,
            tls
              | refs."definitions.io.argoproj.events.v1alpha1.TLSConfig"
              | { _ | Dyn }
              | doc "SSL/TLS settings for the NATS client"
              | optional,
            url | String | doc "JetStream (Nats) URL" | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.K8SResource" = { _ | Dyn },
      "definitions.io.argoproj.events.v1alpha1.K8SResourcePolicy" =
        {
            backoff
              | refs."definitions.io.argoproj.events.v1alpha1.Backoff"
              | { _ | Dyn }
              | doc "Backoff before checking resource state",
            errorOnBackoffTimeout
              | Bool
              | doc "ErrorOnBackoffTimeout determines whether sensor should transition to error state if the trigger policy is unable to determine the state of the resource",
            labels
              | { _ | String }
              | doc "Labels required to identify whether a resource is in success state"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.KafkaBus" =
        {
            consumerGroup
              | refs."definitions.io.argoproj.events.v1alpha1.KafkaConsumerGroup"
              | { _ | Dyn }
              | doc "Consumer group for kafka client"
              | optional,
            sasl
              | refs."definitions.io.argoproj.events.v1alpha1.SASLConfig"
              | { _ | Dyn }
              | doc "SASL configuration for the kafka client"
              | optional,
            tls
              | refs."definitions.io.argoproj.events.v1alpha1.TLSConfig"
              | { _ | Dyn }
              | doc "TLS configuration for the kafka client."
              | optional,
            topic
              | String
              | doc "Topic name, defaults to {namespace_name}-{eventbus_name}"
              | optional,
            url
              | String
              | doc "URL to kafka cluster, multiple URLs separated by comma"
              | optional,
            version
              | String
              | doc "Kafka version, sarama defaults to the oldest supported stable version"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.KafkaConsumerGroup" =
        {
            groupName | String | doc "The name for the consumer group to use",
            oldest
              | Bool
              | doc "When starting up a new group do we want to start from the oldest event (true) or the newest event (false), defaults to false"
              | optional,
            rebalanceStrategy
              | String
              | doc "Rebalance strategy can be one of: sticky, roundrobin, range. Range is the default."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.KafkaEventSource" =
        {
            config
              | String
              | doc m%"
                Yaml format Sarama config for Kafka connection. It follows the struct of sarama.Config. See https://github.com/IBM/sarama/blob/main/config.go e.g.
                
                consumer:
                  fetch:
                    min: 1
                net:
                  MaxOpenRequests: 5
              "%
              | optional,
            connectionBackoff
              | refs."definitions.io.argoproj.events.v1alpha1.Backoff"
              | { _ | Dyn }
              | doc "Backoff holds parameters applied to connection."
              | optional,
            consumerGroup
              | refs."definitions.io.argoproj.events.v1alpha1.KafkaConsumerGroup"
              | { _ | Dyn }
              | doc "Consumer group for kafka client"
              | optional,
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            jsonBody
              | Bool
              | doc "JSONBody specifies that all event body payload coming from this source will be JSON"
              | optional,
            limitEventsPerSecond
              | std.number.Integer
              | doc "Sets a limit on how many events get read from kafka per second."
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            partition | String | doc "Partition name" | optional,
            sasl
              | refs."definitions.io.argoproj.events.v1alpha1.SASLConfig"
              | { _ | Dyn }
              | doc "SASL configuration for the kafka client"
              | optional,
            schemaRegistry
              | refs."definitions.io.argoproj.events.v1alpha1.SchemaRegistryConfig"
              | { _ | Dyn }
              | doc "Schema Registry configuration for consumer message with Avro format"
              | optional,
            tls
              | refs."definitions.io.argoproj.events.v1alpha1.TLSConfig"
              | { _ | Dyn }
              | doc "TLS configuration for the kafka client."
              | optional,
            topic | String | doc "Topic name",
            url
              | String
              | doc "URL to kafka cluster, multiple URLs separated by comma",
            version
              | String
              | doc "Specify what kafka version is being connected to enables certain features in sarama, defaults to 1.0.0"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.KafkaTrigger" =
        {
            compress
              | Bool
              | doc "Compress determines whether to compress message or not. Defaults to false. If set to true, compresses message using snappy compression."
              | optional,
            flushFrequency
              | std.number.Integer
              | doc "FlushFrequency refers to the frequency in milliseconds to flush batches. Defaults to 500 milliseconds."
              | optional,
            headers
              | { _ | String }
              | doc "Headers for the Kafka Messages."
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Parameters is the list of parameters that is applied to resolved Kafka trigger object."
              | optional,
            partition | std.number.Integer | doc "DEPRECATED" | optional,
            partitioningKey
              | String
              | doc "The partitioning key for the messages put on the Kafka topic."
              | optional,
            payload
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Payload is the list of key-value extracted from an event payload to construct the request payload.",
            requiredAcks
              | std.number.Integer
              | doc "RequiredAcks used in producer to tell the broker how many replica acknowledgements Defaults to 1 (Only wait for the leader to ack)."
              | optional,
            sasl
              | refs."definitions.io.argoproj.events.v1alpha1.SASLConfig"
              | { _ | Dyn }
              | doc "SASL configuration for the kafka client"
              | optional,
            schemaRegistry
              | refs."definitions.io.argoproj.events.v1alpha1.SchemaRegistryConfig"
              | { _ | Dyn }
              | doc "Schema Registry configuration to producer message with avro format"
              | optional,
            secureHeaders
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.SecureHeader",
                    { _ | Dyn }
                  ]
              )
              | doc "Secure Headers stored in Kubernetes Secrets for the Kafka messages."
              | optional,
            tls
              | refs."definitions.io.argoproj.events.v1alpha1.TLSConfig"
              | { _ | Dyn }
              | doc "TLS configuration for the Kafka producer."
              | optional,
            topic
              | String
              | doc "Name of the topic. More info at https://kafka.apache.org/documentation/#intro_topics",
            url
              | String
              | doc "URL of the Kafka broker, multiple URLs separated by comma.",
            version
              | String
              | doc "Specify what kafka version is being connected to enables certain features in sarama, defaults to 1.0.0"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.LogTrigger" =
        {
            intervalSeconds
              | std.number.Integer
              | doc "Only print messages every interval. Useful to prevent logging too much data for busy events."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.MNSEventSource" =
        {
            accessKey
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "AccessKey refers K8s secret containing AlibabaCloud access key"
              | optional,
            endpoint
              | String
              | doc "Endpoint configures connection to a specific AlibabaCloud MNS endpoint"
              | optional,
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            jsonBody | Bool | optional,
            queue
              | String
              | doc "Queue is AlibabaCloud MNS queue to listen to for messages",
            secretKey
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SecretKey refers K8s secret containing AlibabaCloud secret key"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.MQTTEventSource" =
        {
            auth
              | refs."definitions.io.argoproj.events.v1alpha1.BasicAuth"
              | { _ | Dyn }
              | doc "Auth hosts secret selectors for username and password"
              | optional,
            clientId | String | doc "ClientID is the id of the client",
            connectionBackoff
              | refs."definitions.io.argoproj.events.v1alpha1.Backoff"
              | { _ | Dyn }
              | doc "ConnectionBackoff holds backoff applied to connection."
              | optional,
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            jsonBody
              | Bool
              | doc "JSONBody specifies that all event body payload coming from this source will be JSON"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            tls
              | refs."definitions.io.argoproj.events.v1alpha1.TLSConfig"
              | { _ | Dyn }
              | doc "TLS configuration for the mqtt client."
              | optional,
            topic | String | doc "Topic name",
            url | String | doc "URL to connect to broker",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.Metadata" =
        {
            annotations | { _ | String } | optional,
            labels | { _ | String } | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.NATSAuth" =
        {
            basic
              | refs."definitions.io.argoproj.events.v1alpha1.BasicAuth"
              | { _ | Dyn }
              | doc "Baisc auth with username and password"
              | optional,
            credential
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "credential used to connect"
              | optional,
            nkey
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "NKey used to connect"
              | optional,
            token
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Token used to connect"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.NATSBus" =
        {
            exotic
              | refs."definitions.io.argoproj.events.v1alpha1.NATSConfig"
              | { _ | Dyn }
              | doc "Exotic holds an exotic NATS config"
              | optional,
            native
              | refs."definitions.io.argoproj.events.v1alpha1.NativeStrategy"
              | { _ | Dyn }
              | doc "Native means to bring up a native NATS service"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.NATSConfig" =
        {
            accessSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Secret for auth"
              | optional,
            auth
              | String
              | doc "Auth strategy, default to AuthStrategyNone"
              | optional,
            clusterID | String | doc "Cluster ID for nats streaming" | optional,
            url | String | doc "NATS streaming url" | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.NATSEventsSource" =
        {
            auth
              | refs."definitions.io.argoproj.events.v1alpha1.NATSAuth"
              | { _ | Dyn }
              | doc "Auth information"
              | optional,
            connectionBackoff
              | refs."definitions.io.argoproj.events.v1alpha1.Backoff"
              | { _ | Dyn }
              | doc "ConnectionBackoff holds backoff applied to connection."
              | optional,
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            jsonBody
              | Bool
              | doc "JSONBody specifies that all event body payload coming from this source will be JSON"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            queue
              | String
              | doc "Queue is the name of the queue group to subscribe as if specified. Uses QueueSubscribe logic to subscribe as queue group. If the queue is empty, uses default Subscribe logic."
              | optional,
            subject
              | String
              | doc "Subject holds the name of the subject onto which messages are published",
            tls
              | refs."definitions.io.argoproj.events.v1alpha1.TLSConfig"
              | { _ | Dyn }
              | doc "TLS configuration for the nats client."
              | optional,
            url | String | doc "URL to connect to NATS cluster",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.NATSTrigger" =
        {
            auth
              | refs."definitions.io.argoproj.events.v1alpha1.NATSAuth"
              | { _ | Dyn }
              | doc "AuthInformation"
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | optional,
            payload
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              ),
            subject | String | doc "Name of the subject to put message on.",
            tls
              | refs."definitions.io.argoproj.events.v1alpha1.TLSConfig"
              | { _ | Dyn }
              | doc "TLS configuration for the NATS producer."
              | optional,
            url | String | doc "URL of the NATS cluster.",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.NSQEventSource" =
        {
            channel | String | doc "Channel used for subscription",
            connectionBackoff
              | refs."definitions.io.argoproj.events.v1alpha1.Backoff"
              | { _ | Dyn }
              | doc "Backoff holds parameters applied to connection."
              | optional,
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            hostAddress
              | String
              | doc "HostAddress is the address of the host for NSQ lookup",
            jsonBody
              | Bool
              | doc "JSONBody specifies that all event body payload coming from this source will be JSON"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            tls
              | refs."definitions.io.argoproj.events.v1alpha1.TLSConfig"
              | { _ | Dyn }
              | doc "TLS configuration for the nsq client."
              | optional,
            topic | String | doc "Topic to subscribe to.",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.NativeStrategy" =
        {
            affinity
              | refs."definitions.io.k8s.api.core.v1.Affinity"
              | { _ | Dyn }
              | doc "The pod's scheduling constraints More info: https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/"
              | optional,
            auth | String | optional,
            containerTemplate
              | refs."definitions.io.argoproj.events.v1alpha1.ContainerTemplate"
              | { _ | Dyn }
              | doc "ContainerTemplate contains customized spec for NATS container"
              | optional,
            imagePullSecrets
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.LocalObjectReference",
                    { _ | Dyn }
                  ]
              )
              | doc "ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod"
              | optional,
            maxAge
              | String
              | doc "Max Age of existing messages, i.e. \"72h\", “4h35m”"
              | optional,
            maxBytes
              | String
              | doc "Total size of messages per channel, 0 means unlimited. Defaults to 1GB"
              | optional,
            maxMsgs
              | std.number.Integer
              | doc "Maximum number of messages per channel, 0 means unlimited. Defaults to 1000000"
              | optional,
            maxPayload
              | String
              | doc "Maximum number of bytes in a message payload, 0 means unlimited. Defaults to 1MB"
              | optional,
            maxSubs
              | std.number.Integer
              | doc "Maximum number of subscriptions per channel, 0 means unlimited. Defaults to 1000"
              | optional,
            metadata
              | refs."definitions.io.argoproj.events.v1alpha1.Metadata"
              | { _ | Dyn }
              | doc "Metadata sets the pods's metadata, i.e. annotations and labels"
              | optional,
            metricsContainerTemplate
              | refs."definitions.io.argoproj.events.v1alpha1.ContainerTemplate"
              | { _ | Dyn }
              | doc "MetricsContainerTemplate contains customized spec for metrics container"
              | optional,
            nodeSelector
              | { _ | String }
              | doc "NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/"
              | optional,
            persistence
              | refs."definitions.io.argoproj.events.v1alpha1.PersistenceStrategy"
              | { _ | Dyn }
              | optional,
            "priority"
              | std.number.Integer
              | doc "The priority value. Various system components use this field to find the priority of the EventSource pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority. More info: https://kubernetes.io/docs/concepts/configuration/pod-priority-preemption/"
              | optional,
            priorityClassName
              | String
              | doc "If specified, indicates the EventSource pod's priority. \"system-node-critical\" and \"system-cluster-critical\" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default. More info: https://kubernetes.io/docs/concepts/configuration/pod-priority-preemption/"
              | optional,
            raftCommitTimeout
              | String
              | doc "Specifies the time without an Apply() operation before sending an heartbeat to ensure timely commit, i.e. \"72h\", “4h35m”. Defaults to 100ms"
              | optional,
            raftElectionTimeout
              | String
              | doc "Specifies the time in candidate state without a leader before attempting an election, i.e. \"72h\", “4h35m”. Defaults to 2s"
              | optional,
            raftHeartbeatTimeout
              | String
              | doc "Specifies the time in follower state without a leader before attempting an election, i.e. \"72h\", “4h35m”. Defaults to 2s"
              | optional,
            raftLeaseTimeout
              | String
              | doc "Specifies how long a leader waits without being able to contact a quorum of nodes before stepping down as leader, i.e. \"72h\", “4h35m”. Defaults to 1s"
              | optional,
            replicas
              | std.number.Integer
              | doc "Size is the NATS StatefulSet size"
              | optional,
            securityContext
              | refs."definitions.io.k8s.api.core.v1.PodSecurityContext"
              | { _ | Dyn }
              | doc "SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field."
              | optional,
            serviceAccountName
              | String
              | doc "ServiceAccountName to apply to NATS StatefulSet"
              | optional,
            tolerations
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.Toleration",
                    { _ | Dyn }
                  ]
              )
              | doc "If specified, the pod's tolerations."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.OpenWhiskTrigger" =
        {
            actionName | String | doc "Name of the action/function.",
            authToken
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "AuthToken for authentication."
              | optional,
            host | String | doc "Host URL of the OpenWhisk.",
            namespace
              | String
              | doc "Namespace for the action. Defaults to \"_\"."
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Parameters is the list of key-value extracted from event's payload that are applied to the trigger resource."
              | optional,
            payload
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Payload is the list of key-value extracted from an event payload to construct the request payload.",
            version
              | String
              | doc "Version for the API. Defaults to v1."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.OwnedRepositories" =
        {
            names | Array String | doc "Repository names" | optional,
            owner | String | doc "Organization or user name" | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.PayloadField" =
        {
            name
              | String
              | doc "Name acts as key that holds the value at the path.",
            path
              | String
              | doc "Path is the JSONPath of the event's (JSON decoded) data key Path is a series of keys separated by a dot. A key may contain wildcard characters '*' and '?'. To access an array value use the index as the key. The dot and wildcard characters can be escaped with '\\\\'. See https://github.com/tidwall/gjson#path-syntax for more information on how to use this.",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.PersistenceStrategy" =
        {
            accessMode
              | String
              | doc "Available access modes such as ReadWriteOnce, ReadWriteMany https://kubernetes.io/docs/concepts/storage/persistent-volumes/#access-modes"
              | optional,
            storageClassName
              | String
              | doc "Name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1"
              | optional,
            volumeSize
              | refs."definitions.io.k8s.apimachinery.pkg.api.resource.Quantity"
              | String
              | doc "Volume size, e.g. 10Gi"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.PubSubEventSource" =
        {
            credentialSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "CredentialSecret references to the secret that contains JSON credentials to access GCP. If it is missing, it implicitly uses Workload Identity to access. https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity"
              | optional,
            deleteSubscriptionOnFinish
              | Bool
              | doc "DeleteSubscriptionOnFinish determines whether to delete the GCP PubSub subscription once the event source is stopped."
              | optional,
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            jsonBody
              | Bool
              | doc "JSONBody specifies that all event body payload coming from this source will be JSON"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            projectID
              | String
              | doc "ProjectID is GCP project ID for the subscription. Required if you run Argo Events outside of GKE/GCE. (otherwise, the default value is its project)"
              | optional,
            subscriptionID
              | String
              | doc "SubscriptionID is ID of subscription. Required if you use existing subscription. The default value will be auto generated hash based on this eventsource setting, so the subscription might be recreated every time you update the setting, which has a possibility of event loss."
              | optional,
            topic
              | String
              | doc "Topic to which the subscription should belongs. Required if you want the eventsource to create a new subscription. If you specify this field along with an existing subscription, it will be verified whether it actually belongs to the specified topic."
              | optional,
            topicProjectID
              | String
              | doc "TopicProjectID is GCP project ID for the topic. By default, it is same as ProjectID."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.PulsarEventSource" =
        {
            authAthenzParams
              | { _ | String }
              | doc "Authentication athenz parameters for the pulsar client. Refer https://github.com/apache/pulsar-client-go/blob/master/pulsar/auth/athenz.go Either token or athenz can be set to use auth."
              | optional,
            authAthenzSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Authentication athenz privateKey secret for the pulsar client. AuthAthenzSecret must be set if AuthAthenzParams is used."
              | optional,
            authTokenSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Authentication token for the pulsar client. Either token or athenz can be set to use auth."
              | optional,
            connectionBackoff
              | refs."definitions.io.argoproj.events.v1alpha1.Backoff"
              | { _ | Dyn }
              | doc "Backoff holds parameters applied to connection."
              | optional,
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            jsonBody
              | Bool
              | doc "JSONBody specifies that all event body payload coming from this source will be JSON"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            tls
              | refs."definitions.io.argoproj.events.v1alpha1.TLSConfig"
              | { _ | Dyn }
              | doc "TLS configuration for the pulsar client."
              | optional,
            tlsAllowInsecureConnection
              | Bool
              | doc "Whether the Pulsar client accept untrusted TLS certificate from broker."
              | optional,
            tlsTrustCertsSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Trusted TLS certificate secret."
              | optional,
            tlsValidateHostname
              | Bool
              | doc "Whether the Pulsar client verify the validity of the host name from broker."
              | optional,
            topics | Array String | doc "Name of the topics to subscribe to.",
            type
              | String
              | doc "Type of the subscription. Only \"exclusive\" and \"shared\" is supported. Defaults to exclusive."
              | optional,
            url
              | String
              | doc "Configure the service URL for the Pulsar service.",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.PulsarTrigger" =
        {
            authAthenzParams
              | { _ | String }
              | doc "Authentication athenz parameters for the pulsar client. Refer https://github.com/apache/pulsar-client-go/blob/master/pulsar/auth/athenz.go Either token or athenz can be set to use auth."
              | optional,
            authAthenzSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Authentication athenz privateKey secret for the pulsar client. AuthAthenzSecret must be set if AuthAthenzParams is used."
              | optional,
            authTokenSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Authentication token for the pulsar client. Either token or athenz can be set to use auth."
              | optional,
            connectionBackoff
              | refs."definitions.io.argoproj.events.v1alpha1.Backoff"
              | { _ | Dyn }
              | doc "Backoff holds parameters applied to connection."
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Parameters is the list of parameters that is applied to resolved Kafka trigger object."
              | optional,
            payload
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Payload is the list of key-value extracted from an event payload to construct the request payload.",
            tls
              | refs."definitions.io.argoproj.events.v1alpha1.TLSConfig"
              | { _ | Dyn }
              | doc "TLS configuration for the pulsar client."
              | optional,
            tlsAllowInsecureConnection
              | Bool
              | doc "Whether the Pulsar client accept untrusted TLS certificate from broker."
              | optional,
            tlsTrustCertsSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Trusted TLS certificate secret."
              | optional,
            tlsValidateHostname
              | Bool
              | doc "Whether the Pulsar client verify the validity of the host name from broker."
              | optional,
            topic
              | String
              | doc "Name of the topic. See https://pulsar.apache.org/docs/en/concepts-messaging/",
            url
              | String
              | doc "Configure the service URL for the Pulsar service.",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.RateLimit" =
        {
            requestsPerUnit | std.number.Integer | optional,
            unit | String | doc "Defaults to Second" | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.RedisEventSource" =
        {
            channels | Array String,
            db
              | std.number.Integer
              | doc "DB to use. If not specified, default DB 0 will be used."
              | optional,
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            hostAddress
              | String
              | doc "HostAddress refers to the address of the Redis host/server",
            jsonBody
              | Bool
              | doc "JSONBody specifies that all event body payload coming from this source will be JSON"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            namespace
              | String
              | doc "Namespace to use to retrieve the password from. It should only be specified if password is declared"
              | optional,
            password
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Password required for authentication if any."
              | optional,
            tls
              | refs."definitions.io.argoproj.events.v1alpha1.TLSConfig"
              | { _ | Dyn }
              | doc "TLS configuration for the redis client."
              | optional,
            username
              | String
              | doc "Username required for ACL style authentication if any."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.RedisStreamEventSource" =
        {
            consumerGroup
              | String
              | doc "ConsumerGroup refers to the Redis stream consumer group that will be created on all redis streams. Messages are read through this group. Defaults to 'argo-events-cg'"
              | optional,
            db
              | std.number.Integer
              | doc "DB to use. If not specified, default DB 0 will be used."
              | optional,
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            hostAddress
              | String
              | doc "HostAddress refers to the address of the Redis host/server (master instance)",
            maxMsgCountPerRead
              | std.number.Integer
              | doc "MaxMsgCountPerRead holds the maximum number of messages per stream that will be read in each XREADGROUP of all streams Example: if there are 2 streams and MaxMsgCountPerRead=10, then each XREADGROUP may read upto a total of 20 messages. Same as COUNT option in XREADGROUP(https://redis.io/topics/streams-intro). Defaults to 10"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            password
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Password required for authentication if any."
              | optional,
            streams
              | Array String
              | doc "Streams to look for entries. XREADGROUP is used on all streams using a single consumer group.",
            tls
              | refs."definitions.io.argoproj.events.v1alpha1.TLSConfig"
              | { _ | Dyn }
              | doc "TLS configuration for the redis client."
              | optional,
            username
              | String
              | doc "Username required for ACL style authentication if any."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.ResourceEventSource" =
        {
            eventTypes
              | Array String
              | doc "EventTypes is the list of event type to watch. Possible values are - ADD, UPDATE and DELETE.",
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.ResourceFilter"
              | { _ | Dyn }
              | doc "Filter is applied on the metadata of the resource If you apply filter, then the internal event informer will only monitor objects that pass the filter."
              | optional,
            group | String,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            namespace | String | doc "Namespace where resource is deployed",
            resource | String,
            version | String,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.ResourceFilter" =
        {
            afterStart
              | Bool
              | doc "If the resource is created after the start time then the event is treated as valid."
              | optional,
            createdBy
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.Time"
              | String
              | doc "If resource is created before the specified time then the event is treated as valid."
              | optional,
            fields
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.Selector",
                    { _ | Dyn }
                  ]
              )
              | doc "Fields provide field filters similar to K8s field selector (see https://kubernetes.io/docs/concepts/overview/working-with-objects/field-selectors/). Unlike K8s field selector, it supports arbitrary fileds like \"spec.serviceAccountName\", and the value could be a string or a regex. Same as K8s field selector, operator \"=\", \"==\" and \"!=\" are supported."
              | optional,
            labels
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.Selector",
                    { _ | Dyn }
                  ]
              )
              | doc "Labels provide listing options to K8s API to watch resource/s. Refer https://kubernetes.io/docs/concepts/overview/working-with-objects/label-selectors/ for more info. Unlike K8s field selector, multiple values are passed as comma separated values instead of list of values. Eg: value: value1,value2. Same as K8s label selector, operator \"=\", \"==\", \"!=\", \"exists\", \"!\", \"notin\", \"in\", \"gt\" and \"lt\" are supported"
              | optional,
            prefix
              | String
              | doc "Prefix filter is applied on the resource name."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.S3Artifact" =
        {
            accessKey
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn },
            bucket
              | refs."definitions.io.argoproj.events.v1alpha1.S3Bucket"
              | { _ | Dyn },
            caCertificate
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | optional,
            endpoint | String,
            events | Array String | optional,
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.S3Filter"
              | { _ | Dyn }
              | optional,
            insecure | Bool | optional,
            metadata | { _ | String } | optional,
            region | String | optional,
            secretKey
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn },
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.S3Bucket" =
        { key | String | optional, name | String, .. },
      "definitions.io.argoproj.events.v1alpha1.S3Filter" =
        { prefix | String, suffix | String, .. },
      "definitions.io.argoproj.events.v1alpha1.SASLConfig" =
        {
            mechanism
              | String
              | doc "SASLMechanism is the name of the enabled SASL mechanism. Possible values: OAUTHBEARER, PLAIN (defaults to PLAIN)."
              | optional,
            passwordSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Password for SASL/PLAIN authentication"
              | optional,
            userSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "User is the authentication identity (authcid) to present for SASL/PLAIN or SASL/SCRAM authentication"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.SFTPEventSource" =
        {
            address
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Address sftp address."
              | optional,
            eventType
              | String
              | doc "Type of file operations to watch Refer https://github.com/fsnotify/fsnotify/blob/master/fsnotify.go for more information",
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            password
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Password required for authentication if any."
              | optional,
            pollIntervalDuration
              | String
              | doc "PollIntervalDuration the interval at which to poll the SFTP server defaults to 10 seconds"
              | optional,
            sshKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SSHKeySecret refers to the secret that contains SSH key. Key needs to contain private key and public key."
              | optional,
            username
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Username required for authentication if any."
              | optional,
            watchPathConfig
              | refs."definitions.io.argoproj.events.v1alpha1.WatchPathConfig"
              | { _ | Dyn }
              | doc "WatchPathConfig contains configuration about the file path to watch",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.SNSEventSource" =
        {
            accessKey
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "AccessKey refers K8s secret containing aws access key"
              | optional,
            endpoint
              | String
              | doc "Endpoint configures connection to a specific SNS endpoint instead of Amazons servers"
              | optional,
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            region | String | doc "Region is AWS region",
            roleARN
              | String
              | doc "RoleARN is the Amazon Resource Name (ARN) of the role to assume."
              | optional,
            secretKey
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SecretKey refers K8s secret containing aws secret key"
              | optional,
            topicArn | String | doc "TopicArn",
            validateSignature
              | Bool
              | doc "ValidateSignature is boolean that can be set to true for SNS signature verification"
              | optional,
            webhook
              | refs."definitions.io.argoproj.events.v1alpha1.WebhookContext"
              | { _ | Dyn }
              | doc "Webhook configuration for http server"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.SQSEventSource" =
        {
            accessKey
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "AccessKey refers K8s secret containing aws access key"
              | optional,
            dlq
              | Bool
              | doc "DLQ specifies if a dead-letter queue is configured for messages that can't be processed successfully. If set to true, messages with invalid payload won't be acknowledged to allow to forward them farther to the dead-letter queue. The default value is false."
              | optional,
            endpoint
              | String
              | doc "Endpoint configures connection to a specific SQS endpoint instead of Amazons servers"
              | optional,
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            jsonBody
              | Bool
              | doc "JSONBody specifies that all event body payload coming from this source will be JSON"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            queue
              | String
              | doc "Queue is AWS SQS queue to listen to for messages",
            queueAccountId
              | String
              | doc "QueueAccountID is the ID of the account that created the queue to monitor"
              | optional,
            region | String | doc "Region is AWS region",
            roleARN
              | String
              | doc "RoleARN is the Amazon Resource Name (ARN) of the role to assume."
              | optional,
            secretKey
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SecretKey refers K8s secret containing aws secret key"
              | optional,
            sessionToken
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SessionToken refers to K8s secret containing AWS temporary credentials(STS) session token"
              | optional,
            waitTimeSeconds
              | std.number.Integer
              | doc "WaitTimeSeconds is The duration (in seconds) for which the call waits for a message to arrive in the queue before returning.",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.SchemaRegistryConfig" =
        {
            auth
              | refs."definitions.io.argoproj.events.v1alpha1.BasicAuth"
              | { _ | Dyn }
              | doc "SchemaRegistry - basic authentication"
              | optional,
            schemaId | std.number.Integer | doc "Schema ID" | optional,
            url | String | doc "Schema Registry URL.",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.SecureHeader" =
        {
            name | String | optional,
            valueFrom
              | refs."definitions.io.argoproj.events.v1alpha1.ValueFromSource"
              | { _ | Dyn }
              | doc "Values can be read from either secrets or configmaps"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.Selector" =
        {
            key | String | doc "Key name",
            operation
              | String
              | doc "Supported operations like ==, != etc. Defaults to ==. Refer https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors for more info."
              | optional,
            value | String | doc "Value",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.Sensor" =
        {
            apiVersion
              | std.contract.Equal "argoproj.io/v1alpha1"
              | doc "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources"
              | optional,
            kind
              | std.contract.Equal "Sensor"
              | doc "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"
              | optional,
            metadata
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta"
              | { _ | Dyn },
            spec
              | refs."definitions.io.argoproj.events.v1alpha1.SensorSpec"
              | { _ | Dyn },
            status
              | refs."definitions.io.argoproj.events.v1alpha1.SensorStatus"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.SensorSpec" =
        {
            dependencies
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.EventDependency",
                    { _ | Dyn }
                  ]
              )
              | doc "Dependencies is a list of the events that this sensor is dependent on.",
            errorOnFailedRound
              | Bool
              | doc "ErrorOnFailedRound if set to true, marks sensor state as `error` if the previous trigger round fails. Once sensor state is set to `error`, no further triggers will be processed."
              | optional,
            eventBusName
              | String
              | doc "EventBusName references to a EventBus name. By default the value is \"default\""
              | optional,
            loggingFields
              | { _ | String }
              | doc "LoggingFields add additional key-value pairs when logging happens"
              | optional,
            replicas
              | std.number.Integer
              | doc "Replicas is the sensor deployment replicas"
              | optional,
            revisionHistoryLimit
              | std.number.Integer
              | doc "RevisionHistoryLimit specifies how many old deployment revisions to retain"
              | optional,
            template
              | refs."definitions.io.argoproj.events.v1alpha1.Template"
              | { _ | Dyn }
              | doc "Template is the pod specification for the sensor"
              | optional,
            triggers
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.Trigger",
                    { _ | Dyn }
                  ]
              )
              | doc "Triggers is a list of the things that this sensor evokes. These are the outputs from this sensor.",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.SensorStatus" =
        {
            conditions
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.Condition",
                    { _ | Dyn }
                  ]
              )
              | doc "Conditions are the latest available observations of a resource's current state."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.Service" =
        {
            clusterIP
              | String
              | doc "clusterIP is the IP address of the service and is usually assigned randomly by the master. If an address is specified manually and is not in use by others, it will be allocated to the service; otherwise, creation of the service will fail. This field can not be changed through updates. Valid values are \"None\", empty string (\"\"), or a valid IP address. \"None\" can be specified for headless services when proxying is not required. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies"
              | optional,
            metadata
              | refs."definitions.io.argoproj.events.v1alpha1.Metadata"
              | { _ | Dyn }
              | doc "Metadata sets the pods's metadata, i.e. annotations and labels default={annotations: {}, labels: {}}"
              | optional,
            ports
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.ServicePort",
                    { _ | Dyn }
                  ]
              )
              | doc "The list of ports that are exposed by this ClusterIP service."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.SlackEventSource" =
        {
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            signingSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Slack App signing secret"
              | optional,
            token
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Token for URL verification handshake"
              | optional,
            webhook
              | refs."definitions.io.argoproj.events.v1alpha1.WebhookContext"
              | { _ | Dyn }
              | doc "Webhook holds configuration for a REST endpoint"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.SlackSender" =
        {
            icon
              | String
              | doc "Icon is the Slack application's icon, e.g. :robot_face: or https://example.com/image.png"
              | optional,
            username
              | String
              | doc "Username is the Slack application's username"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.SlackThread" =
        {
            broadcastMessageToChannel
              | Bool
              | doc "BroadcastMessageToChannel allows to also broadcast the message from the thread to the channel"
              | optional,
            messageAggregationKey
              | String
              | doc "MessageAggregationKey allows to aggregate the messages to a thread by some key."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.SlackTrigger" =
        {
            attachments
              | String
              | doc "Attachments is a JSON format string that represents an array of Slack attachments according to the attachments API: https://api.slack.com/reference/messaging/attachments ."
              | optional,
            blocks
              | String
              | doc "Blocks is a JSON format string that represents an array of Slack blocks according to the blocks API: https://api.slack.com/reference/block-kit/blocks ."
              | optional,
            channel
              | String
              | doc "Channel refers to which Slack channel to send Slack message."
              | optional,
            message
              | String
              | doc "Message refers to the message to send to the Slack channel."
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Parameters is the list of key-value extracted from event's payload that are applied to the trigger resource."
              | optional,
            sender
              | refs."definitions.io.argoproj.events.v1alpha1.SlackSender"
              | { _ | Dyn }
              | doc "Sender refers to additional configuration of the Slack application that sends the message."
              | optional,
            slackToken
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SlackToken refers to the Kubernetes secret that holds the slack token required to send messages."
              | optional,
            thread
              | refs."definitions.io.argoproj.events.v1alpha1.SlackThread"
              | { _ | Dyn }
              | doc "Thread refers to additional options for sending messages to a Slack thread."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.StandardK8STrigger" =
        {
            liveObject
              | Bool
              | doc "LiveObject specifies whether the resource should be directly fetched from K8s instead of being marshaled from the resource artifact. If set to true, the resource artifact must contain the information required to uniquely identify the resource in the cluster, that is, you must specify \"apiVersion\", \"kind\" as well as \"name\" and \"namespace\" meta data. Only valid for operation type `update`"
              | optional,
            operation
              | String
              | doc "Operation refers to the type of operation performed on the k8s resource. Default value is Create."
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Parameters is the list of parameters that is applied to resolved K8s trigger object."
              | optional,
            patchStrategy
              | String
              | doc "PatchStrategy controls the K8s object patching strategy when the trigger operation is specified as patch. possible values: \"application/json-patch+json\" \"application/merge-patch+json\" \"application/strategic-merge-patch+json\" \"application/apply-patch+yaml\". Defaults to \"application/merge-patch+json\""
              | optional,
            source
              | refs."definitions.io.argoproj.events.v1alpha1.ArtifactLocation"
              | { _ | Dyn }
              | doc "Source of the K8s resource file(s)"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.StatusPolicy" =
        { allow | Array std.number.Integer, .. },
      "definitions.io.argoproj.events.v1alpha1.StorageGridEventSource" =
        {
            apiURL | String | doc "APIURL is the url of the storagegrid api.",
            authToken
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Auth token for storagegrid api",
            bucket
              | String
              | doc "Name of the bucket to register notifications for.",
            events | Array String | optional,
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.StorageGridFilter"
              | { _ | Dyn }
              | doc "Filter on object key which caused the notification."
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            region | String | doc "S3 region. Defaults to us-east-1" | optional,
            topicArn | String | doc "TopicArn",
            webhook
              | refs."definitions.io.argoproj.events.v1alpha1.WebhookContext"
              | { _ | Dyn }
              | doc "Webhook holds configuration for a REST endpoint"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.StorageGridFilter" =
        { prefix | String, suffix | String, .. },
      "definitions.io.argoproj.events.v1alpha1.StripeEventSource" =
        {
            apiKey
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "APIKey refers to K8s secret that holds Stripe API key. Used only if CreateWebhook is enabled."
              | optional,
            createWebhook
              | Bool
              | doc "CreateWebhook if specified creates a new webhook programmatically."
              | optional,
            eventFilter
              | Array String
              | doc "EventFilter describes the type of events to listen to. If not specified, all types of events will be processed. More info at https://stripe.com/docs/api/events/list"
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            webhook
              | refs."definitions.io.argoproj.events.v1alpha1.WebhookContext"
              | { _ | Dyn }
              | doc "Webhook holds configuration for a REST endpoint"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.TLSConfig" =
        {
            caCertSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "CACertSecret refers to the secret that contains the CA cert"
              | optional,
            clientCertSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "ClientCertSecret refers to the secret that contains the client cert"
              | optional,
            clientKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "ClientKeySecret refers to the secret that contains the client key"
              | optional,
            insecureSkipVerify
              | Bool
              | doc "If true, skips creation of TLSConfig with certs and creates an empty TLSConfig. (Defaults to false)"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.Template" =
        {
            affinity
              | refs."definitions.io.k8s.api.core.v1.Affinity"
              | { _ | Dyn }
              | doc "If specified, the pod's scheduling constraints"
              | optional,
            container
              | refs."definitions.io.argoproj.events.v1alpha1.Container"
              | { _ | Dyn }
              | doc "Container is the main container image to run in the sensor pod"
              | optional,
            imagePullSecrets
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.LocalObjectReference",
                    { _ | Dyn }
                  ]
              )
              | doc "ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod"
              | optional,
            metadata
              | refs."definitions.io.argoproj.events.v1alpha1.Metadata"
              | { _ | Dyn }
              | doc "Metadata sets the pods's metadata, i.e. annotations and labels"
              | optional,
            nodeSelector
              | { _ | String }
              | doc "NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/"
              | optional,
            "priority"
              | std.number.Integer
              | doc "The priority value. Various system components use this field to find the priority of the EventSource pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority. More info: https://kubernetes.io/docs/concepts/configuration/pod-priority-preemption/"
              | optional,
            priorityClassName
              | String
              | doc "If specified, indicates the EventSource pod's priority. \"system-node-critical\" and \"system-cluster-critical\" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default. More info: https://kubernetes.io/docs/concepts/configuration/pod-priority-preemption/"
              | optional,
            securityContext
              | refs."definitions.io.k8s.api.core.v1.PodSecurityContext"
              | { _ | Dyn }
              | doc "SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field."
              | optional,
            serviceAccountName
              | String
              | doc "ServiceAccountName is the name of the ServiceAccount to use to run sensor pod. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/"
              | optional,
            tolerations
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.Toleration",
                    { _ | Dyn }
                  ]
              )
              | doc "If specified, the pod's tolerations."
              | optional,
            volumes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.io.k8s.api.core.v1.Volume", { _ | Dyn } ]
              )
              | doc "Volumes is a list of volumes that can be mounted by containers in a workflow."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.TimeFilter" =
        {
            start
              | String
              | doc "Start is the beginning of a time window in UTC. Before this time, events for this dependency are ignored. Format is hh:mm:ss.",
            stop
              | String
              | doc "Stop is the end of a time window in UTC. After or equal to this time, events for this dependency are ignored and Format is hh:mm:ss. If it is smaller than Start, it is treated as next day of Start (e.g.: 22:00:00-01:00:00 means 22:00:00-25:00:00).",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.Trigger" =
        {
            atLeastOnce
              | Bool
              | doc "AtLeastOnce determines the trigger execution semantics. Defaults to false. Trigger execution will use at-most-once semantics. If set to true, Trigger execution will switch to at-least-once semantics."
              | optional,
            dlqTrigger
              | js2n.Always
              | { _ | Dyn }
              | doc "If the trigger fails, it will retry up to the configured number of retries. If the maximum retries are reached and the trigger is set to execute atLeastOnce, the dead letter queue (DLQ) trigger will be invoked if specified.  Invoking the dead letter queue trigger helps prevent data loss."
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.TriggerParameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Parameters is the list of parameters applied to the trigger template definition"
              | optional,
            policy
              | refs."definitions.io.argoproj.events.v1alpha1.TriggerPolicy"
              | { _ | Dyn }
              | doc "Policy to configure backoff and execution criteria for the trigger"
              | optional,
            rateLimit
              | refs."definitions.io.argoproj.events.v1alpha1.RateLimit"
              | { _ | Dyn }
              | doc "Rate limit, default unit is Second"
              | optional,
            retryStrategy
              | refs."definitions.io.argoproj.events.v1alpha1.Backoff"
              | { _ | Dyn }
              | doc "Retry strategy, defaults to no retry"
              | optional,
            template
              | refs."definitions.io.argoproj.events.v1alpha1.TriggerTemplate"
              | { _ | Dyn }
              | doc "Template describes the trigger specification."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.TriggerParameter" =
        {
            dest
              | String
              | doc "Dest is the JSONPath of a resource key. A path is a series of keys separated by a dot. The colon character can be escaped with '.' The -1 key can be used to append a value to an existing array. See https://github.com/tidwall/sjson#path-syntax for more information about how this is used.",
            operation
              | String
              | doc "Operation is what to do with the existing value at Dest, whether to 'prepend', 'overwrite', or 'append' it."
              | optional,
            src
              | refs."definitions.io.argoproj.events.v1alpha1.TriggerParameterSource"
              | { _ | Dyn }
              | doc "Src contains a source reference to the value of the parameter from a dependency"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.TriggerParameterSource" =
        {
            contextKey
              | String
              | doc "ContextKey is the JSONPath of the event's (JSON decoded) context key ContextKey is a series of keys separated by a dot. A key may contain wildcard characters '*' and '?'. To access an array value use the index as the key. The dot and wildcard characters can be escaped with '\\\\'. See https://github.com/tidwall/gjson#path-syntax for more information on how to use this."
              | optional,
            contextTemplate
              | String
              | doc "ContextTemplate is a go-template for extracting a string from the event's context. If a ContextTemplate is provided with a ContextKey, the template will be evaluated first and fallback to the ContextKey. The templating follows the standard go-template syntax as well as sprig's extra functions. See https://pkg.go.dev/text/template and https://masterminds.github.io/sprig/"
              | optional,
            dataKey
              | String
              | doc "DataKey is the JSONPath of the event's (JSON decoded) data key DataKey is a series of keys separated by a dot. A key may contain wildcard characters '*' and '?'. To access an array value use the index as the key. The dot and wildcard characters can be escaped with '\\\\'. See https://github.com/tidwall/gjson#path-syntax for more information on how to use this."
              | optional,
            dataTemplate
              | String
              | doc "DataTemplate is a go-template for extracting a string from the event's data. If a DataTemplate is provided with a DataKey, the template will be evaluated first and fallback to the DataKey. The templating follows the standard go-template syntax as well as sprig's extra functions. See https://pkg.go.dev/text/template and https://masterminds.github.io/sprig/"
              | optional,
            dependencyName
              | String
              | doc "DependencyName refers to the name of the dependency. The event which is stored for this dependency is used as payload for the parameterization. Make sure to refer to one of the dependencies you have defined under Dependencies list.",
            useRawData
              | Bool
              | doc "UseRawData indicates if the value in an event at data key should be used without converting to string. When true, a number, boolean, json or string parameter may be extracted. When the field is unspecified, or explicitly false, the behavior is to turn the extracted field into a string. (e.g. when set to true, the parameter 123 will resolve to the numerical type, but when false, or not provided, the string \"123\" will be resolved)"
              | optional,
            value
              | String
              | doc "Value is the default literal value to use for this parameter source This is only used if the DataKey is invalid. If the DataKey is invalid and this is not defined, this param source will produce an error."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.TriggerPolicy" =
        {
            k8s
              | refs."definitions.io.argoproj.events.v1alpha1.K8SResourcePolicy"
              | { _ | Dyn }
              | doc "K8SResourcePolicy refers to the policy used to check the state of K8s based triggers using using labels"
              | optional,
            status
              | refs."definitions.io.argoproj.events.v1alpha1.StatusPolicy"
              | { _ | Dyn }
              | doc "Status refers to the policy used to check the state of the trigger using response status"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.TriggerTemplate" =
        {
            argoWorkflow
              | refs."definitions.io.argoproj.events.v1alpha1.ArgoWorkflowTrigger"
              | { _ | Dyn }
              | doc "ArgoWorkflow refers to the trigger that can perform various operations on an Argo workflow."
              | optional,
            awsLambda
              | refs."definitions.io.argoproj.events.v1alpha1.AWSLambdaTrigger"
              | { _ | Dyn }
              | doc "AWSLambda refers to the trigger designed to invoke AWS Lambda function with with on-the-fly constructable payload."
              | optional,
            azureEventHubs
              | refs."definitions.io.argoproj.events.v1alpha1.AzureEventHubsTrigger"
              | { _ | Dyn }
              | doc "AzureEventHubs refers to the trigger send an event to an Azure Event Hub."
              | optional,
            azureServiceBus
              | refs."definitions.io.argoproj.events.v1alpha1.AzureServiceBusTrigger"
              | { _ | Dyn }
              | doc "AzureServiceBus refers to the trigger designed to place messages on Azure Service Bus"
              | optional,
            conditions
              | String
              | doc "Conditions is the conditions to execute the trigger. For example: \"(dep01 || dep02) && dep04\""
              | optional,
            conditionsReset
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.events.v1alpha1.ConditionsResetCriteria",
                    { _ | Dyn }
                  ]
              )
              | doc "Criteria to reset the conditons"
              | optional,
            custom
              | refs."definitions.io.argoproj.events.v1alpha1.CustomTrigger"
              | { _ | Dyn }
              | doc "CustomTrigger refers to the trigger designed to connect to a gRPC trigger server and execute a custom trigger."
              | optional,
            email
              | refs."definitions.io.argoproj.events.v1alpha1.EmailTrigger"
              | { _ | Dyn }
              | doc "Email refers to the trigger designed to send an email notification"
              | optional,
            http
              | refs."definitions.io.argoproj.events.v1alpha1.HTTPTrigger"
              | { _ | Dyn }
              | doc "HTTP refers to the trigger designed to dispatch a HTTP request with on-the-fly constructable payload."
              | optional,
            k8s
              | refs."definitions.io.argoproj.events.v1alpha1.StandardK8STrigger"
              | { _ | Dyn }
              | doc "StandardK8STrigger refers to the trigger designed to create or update a generic Kubernetes resource."
              | optional,
            kafka
              | refs."definitions.io.argoproj.events.v1alpha1.KafkaTrigger"
              | { _ | Dyn }
              | doc "Kafka refers to the trigger designed to place messages on Kafka topic."
              | optional,
            log
              | refs."definitions.io.argoproj.events.v1alpha1.LogTrigger"
              | { _ | Dyn }
              | doc "Log refers to the trigger designed to invoke log the event."
              | optional,
            name | String | doc "Name is a unique name of the action to take.",
            nats
              | refs."definitions.io.argoproj.events.v1alpha1.NATSTrigger"
              | { _ | Dyn }
              | doc "NATS refers to the trigger designed to place message on NATS subject."
              | optional,
            openWhisk
              | refs."definitions.io.argoproj.events.v1alpha1.OpenWhiskTrigger"
              | { _ | Dyn }
              | doc "OpenWhisk refers to the trigger designed to invoke OpenWhisk action."
              | optional,
            pulsar
              | refs."definitions.io.argoproj.events.v1alpha1.PulsarTrigger"
              | { _ | Dyn }
              | doc "Pulsar refers to the trigger designed to place messages on Pulsar topic."
              | optional,
            slack
              | refs."definitions.io.argoproj.events.v1alpha1.SlackTrigger"
              | { _ | Dyn }
              | doc "Slack refers to the trigger designed to send slack notification message."
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.URLArtifact" =
        {
            path | String | doc "Path is the complete URL",
            verifyCert
              | Bool
              | doc "VerifyCert decides whether the connection is secure or not"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.ValueFromSource" =
        {
            configMapKeyRef
              | refs."definitions.io.k8s.api.core.v1.ConfigMapKeySelector"
              | { _ | Dyn }
              | optional,
            secretKeyRef
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.WatchPathConfig" =
        {
            directory | String | doc "Directory to watch for events",
            path
              | String
              | doc "Path is relative path of object to watch with respect to the directory"
              | optional,
            pathRegexp
              | String
              | doc "PathRegexp is regexp of relative path of object to watch with respect to the directory"
              | optional,
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.WebhookContext" =
        {
            authSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "AuthSecret holds a secret selector that contains a bearer token for authentication"
              | optional,
            endpoint | String | doc "REST API endpoint",
            maxPayloadSize
              | std.number.Integer
              | doc "MaxPayloadSize is the maximum webhook payload size that the server will accept. Requests exceeding that limit will be rejected with \"request too large\" response. Default value: 1048576 (1MB)."
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            method
              | String
              | doc "Method is HTTP request method that indicates the desired action to be performed for a given resource. See RFC7231 Hypertext Transfer Protocol (HTTP/1.1): Semantics and Content",
            port
              | String
              | doc "Port on which HTTP server is listening for incoming events.",
            serverCertSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "ServerCertPath refers the file that contains the cert."
              | optional,
            serverKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "ServerKeyPath refers the file that contains private key"
              | optional,
            url | String | doc "URL is the url of the server.",
            ..
          },
      "definitions.io.argoproj.events.v1alpha1.WebhookEventSource" =
        {
            authSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "AuthSecret holds a secret selector that contains a bearer token for authentication"
              | optional,
            endpoint | String | doc "REST API endpoint",
            filter
              | refs."definitions.io.argoproj.events.v1alpha1.EventSourceFilter"
              | { _ | Dyn }
              | doc "Filter"
              | optional,
            maxPayloadSize
              | std.number.Integer
              | doc "MaxPayloadSize is the maximum webhook payload size that the server will accept. Requests exceeding that limit will be rejected with \"request too large\" response. Default value: 1048576 (1MB)."
              | optional,
            metadata
              | { _ | String }
              | doc "Metadata holds the user defined metadata which will passed along the event payload."
              | optional,
            method
              | String
              | doc "Method is HTTP request method that indicates the desired action to be performed for a given resource. See RFC7231 Hypertext Transfer Protocol (HTTP/1.1): Semantics and Content",
            port
              | String
              | doc "Port on which HTTP server is listening for incoming events.",
            serverCertSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "ServerCertPath refers the file that contains the cert."
              | optional,
            serverKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "ServerKeyPath refers the file that contains private key"
              | optional,
            url | String | doc "URL is the url of the server.",
            ..
          },
      "definitions.io.k8s.api.core.v1.AWSElasticBlockStoreVolumeSource" =
        {
            fsType
              | String
              | doc "fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore"
              | optional,
            partition
              | std.number.Integer
              | doc "partition is the partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty)."
              | optional,
            readOnly
              | Bool
              | doc "readOnly value true will force the readOnly setting in VolumeMounts. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore"
              | optional,
            volumeID
              | String
              | doc "volumeID is unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore",
            ..
          },
      "definitions.io.k8s.api.core.v1.Affinity" =
        {
            nodeAffinity
              | refs."definitions.io.k8s.api.core.v1.NodeAffinity"
              | { _ | Dyn }
              | doc "Describes node affinity scheduling rules for the pod."
              | optional,
            podAffinity
              | refs."definitions.io.k8s.api.core.v1.PodAffinity"
              | { _ | Dyn }
              | doc "Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s))."
              | optional,
            podAntiAffinity
              | refs."definitions.io.k8s.api.core.v1.PodAntiAffinity"
              | { _ | Dyn }
              | doc "Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s))."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.AppArmorProfile" =
        {
            localhostProfile
              | String
              | doc "localhostProfile indicates a profile loaded on the node that should be used. The profile must be preconfigured on the node to work. Must match the loaded name of the profile. Must be set if and only if type is \"Localhost\"."
              | optional,
            type
              | String
              | doc m%"
                type indicates which kind of AppArmor profile will be applied. Valid options are:
                  Localhost - a profile pre-loaded on the node.
                  RuntimeDefault - the container runtime's default profile.
                  Unconfined - no AppArmor enforcement.
              "%,
            ..
          },
      "definitions.io.k8s.api.core.v1.AzureDiskVolumeSource" =
        {
            cachingMode
              | String
              | doc "cachingMode is the Host Caching mode: None, Read Only, Read Write."
              | optional,
            diskName
              | String
              | doc "diskName is the Name of the data disk in the blob storage",
            diskURI
              | String
              | doc "diskURI is the URI of data disk in the blob storage",
            fsType
              | String
              | doc "fsType is Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
              | optional,
            kind
              | String
              | doc "kind expected values are Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared"
              | optional,
            readOnly
              | Bool
              | doc "readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.AzureFileVolumeSource" =
        {
            readOnly
              | Bool
              | doc "readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
              | optional,
            secretName
              | String
              | doc "secretName is the  name of secret that contains Azure Storage Account Name and Key",
            shareName | String | doc "shareName is the azure share Name",
            ..
          },
      "definitions.io.k8s.api.core.v1.CSIVolumeSource" =
        {
            driver
              | String
              | doc "driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.",
            fsType
              | String
              | doc "fsType to mount. Ex. \"ext4\", \"xfs\", \"ntfs\". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply."
              | optional,
            nodePublishSecretRef
              | refs."definitions.io.k8s.api.core.v1.LocalObjectReference"
              | { _ | Dyn }
              | doc "nodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed."
              | optional,
            readOnly
              | Bool
              | doc "readOnly specifies a read-only configuration for the volume. Defaults to false (read/write)."
              | optional,
            volumeAttributes
              | { _ | String }
              | doc "volumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.Capabilities" =
        {
            add | Array String | doc "Added capabilities" | optional,
            drop | Array String | doc "Removed capabilities" | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.CephFSVolumeSource" =
        {
            monitors
              | Array String
              | doc "monitors is Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it",
            path
              | String
              | doc "path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /"
              | optional,
            readOnly
              | Bool
              | doc "readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"
              | optional,
            secretFile
              | String
              | doc "secretFile is Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"
              | optional,
            secretRef
              | refs."definitions.io.k8s.api.core.v1.LocalObjectReference"
              | { _ | Dyn }
              | doc "secretRef is Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"
              | optional,
            user
              | String
              | doc "user is optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.CinderVolumeSource" =
        {
            fsType
              | String
              | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md"
              | optional,
            readOnly
              | Bool
              | doc "readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md"
              | optional,
            secretRef
              | refs."definitions.io.k8s.api.core.v1.LocalObjectReference"
              | { _ | Dyn }
              | doc "secretRef is optional: points to a secret object containing parameters used to connect to OpenStack."
              | optional,
            volumeID
              | String
              | doc "volumeID used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md",
            ..
          },
      "definitions.io.k8s.api.core.v1.ClusterTrustBundleProjection" =
        {
            labelSelector
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector"
              | { _ | Dyn }
              | doc "Select all ClusterTrustBundles that match this label selector.  Only has effect if signerName is set.  Mutually-exclusive with name.  If unset, interpreted as \"match nothing\".  If set but empty, interpreted as \"match everything\"."
              | optional,
            name
              | String
              | doc "Select a single ClusterTrustBundle by object name.  Mutually-exclusive with signerName and labelSelector."
              | optional,
            "optional"
              | Bool
              | doc "If true, don't block pod startup if the referenced ClusterTrustBundle(s) aren't available.  If using name, then the named ClusterTrustBundle is allowed not to exist.  If using signerName, then the combination of signerName and labelSelector is allowed to match zero ClusterTrustBundles."
              | optional,
            path
              | String
              | doc "Relative path from the volume root to write the bundle.",
            signerName
              | String
              | doc "Select all ClusterTrustBundles that match this signer name. Mutually-exclusive with name.  The contents of all selected ClusterTrustBundles will be unified and deduplicated."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ConfigMapEnvSource" =
        {
            name
              | String
              | doc "Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
              | optional,
            "optional"
              | Bool
              | doc "Specify whether the ConfigMap must be defined"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ConfigMapKeySelector" =
        {
            key | String | doc "The key to select.",
            name
              | String
              | doc "Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
              | optional,
            "optional"
              | Bool
              | doc "Specify whether the ConfigMap or its key must be defined"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ConfigMapProjection" =
        {
            items
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.KeyToPath",
                    { _ | Dyn }
                  ]
              )
              | doc "items if unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."
              | optional,
            name
              | String
              | doc "Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
              | optional,
            "optional"
              | Bool
              | doc "optional specify whether the ConfigMap or its keys must be defined"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ConfigMapVolumeSource" =
        {
            defaultMode
              | std.number.Integer
              | doc "defaultMode is optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
              | optional,
            items
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.KeyToPath",
                    { _ | Dyn }
                  ]
              )
              | doc "items if unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."
              | optional,
            name
              | String
              | doc "Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
              | optional,
            "optional"
              | Bool
              | doc "optional specify whether the ConfigMap or its keys must be defined"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.DownwardAPIProjection" =
        {
            items
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.DownwardAPIVolumeFile",
                    { _ | Dyn }
                  ]
              )
              | doc "Items is a list of DownwardAPIVolume file"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.DownwardAPIVolumeFile" =
        {
            fieldRef
              | refs."definitions.io.k8s.api.core.v1.ObjectFieldSelector"
              | { _ | Dyn }
              | doc "Required: Selects a field of the pod: only annotations, labels, name, namespace and uid are supported."
              | optional,
            mode
              | std.number.Integer
              | doc "Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
              | optional,
            path
              | String
              | doc "Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'",
            resourceFieldRef
              | refs."definitions.io.k8s.api.core.v1.ResourceFieldSelector"
              | { _ | Dyn }
              | doc "Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.DownwardAPIVolumeSource" =
        {
            defaultMode
              | std.number.Integer
              | doc "Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
              | optional,
            items
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.DownwardAPIVolumeFile",
                    { _ | Dyn }
                  ]
              )
              | doc "Items is a list of downward API volume file"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.EmptyDirVolumeSource" =
        {
            medium
              | String
              | doc "medium represents what type of storage medium should back this directory. The default is \"\" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir"
              | optional,
            sizeLimit
              | refs."definitions.io.k8s.apimachinery.pkg.api.resource.Quantity"
              | String
              | doc "sizeLimit is the total amount of local storage required for this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. The default is nil which means that the limit is undefined. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.EnvFromSource" =
        {
            configMapRef
              | refs."definitions.io.k8s.api.core.v1.ConfigMapEnvSource"
              | { _ | Dyn }
              | doc "The ConfigMap to select from"
              | optional,
            prefix
              | String
              | doc "An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER."
              | optional,
            secretRef
              | refs."definitions.io.k8s.api.core.v1.SecretEnvSource"
              | { _ | Dyn }
              | doc "The Secret to select from"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.EnvVar" =
        {
            name
              | String
              | doc "Name of the environment variable. Must be a C_IDENTIFIER.",
            value
              | String
              | doc "Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\"."
              | optional,
            valueFrom
              | refs."definitions.io.k8s.api.core.v1.EnvVarSource"
              | { _ | Dyn }
              | doc "Source for the environment variable's value. Cannot be used if value is not empty."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.EnvVarSource" =
        {
            configMapKeyRef
              | refs."definitions.io.k8s.api.core.v1.ConfigMapKeySelector"
              | { _ | Dyn }
              | doc "Selects a key of a ConfigMap."
              | optional,
            fieldRef
              | refs."definitions.io.k8s.api.core.v1.ObjectFieldSelector"
              | { _ | Dyn }
              | doc "Selects a field of the pod: supports metadata.name, metadata.namespace, `metadata.labels['<KEY>']`, `metadata.annotations['<KEY>']`, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs."
              | optional,
            resourceFieldRef
              | refs."definitions.io.k8s.api.core.v1.ResourceFieldSelector"
              | { _ | Dyn }
              | doc "Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported."
              | optional,
            secretKeyRef
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Selects a key of a secret in the pod's namespace"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.EphemeralVolumeSource" =
        {
            volumeClaimTemplate
              | refs."definitions.io.k8s.api.core.v1.PersistentVolumeClaimTemplate"
              | { _ | Dyn }
              | doc m%"
                Will be used to create a stand-alone PVC to provision the volume. The pod in which this EphemeralVolumeSource is embedded will be the owner of the PVC, i.e. the PVC will be deleted together with the pod.  The name of the PVC will be `<pod name>-<volume name>` where `<volume name>` is the name from the `PodSpec.Volumes` array entry. Pod validation will reject the pod if the concatenated name is not valid for a PVC (for example, too long).
                
                An existing PVC with that name that is not owned by the pod will *not* be used for the pod to avoid using an unrelated volume by mistake. Starting the pod is then blocked until the unrelated PVC is removed. If such a pre-created PVC is meant to be used by the pod, the PVC has to updated with an owner reference to the pod once the pod exists. Normally this should not be necessary, but it may be useful when manually reconstructing a broken cluster.
                
                This field is read-only and no changes will be made by Kubernetes to the PVC after it has been created.
                
                Required, must not be nil.
              "%
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.FCVolumeSource" =
        {
            fsType
              | String
              | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
              | optional,
            lun
              | std.number.Integer
              | doc "lun is Optional: FC target lun number"
              | optional,
            readOnly
              | Bool
              | doc "readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
              | optional,
            targetWWNs
              | Array String
              | doc "targetWWNs is Optional: FC target worldwide names (WWNs)"
              | optional,
            wwids
              | Array String
              | doc "wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.FlexVolumeSource" =
        {
            driver
              | String
              | doc "driver is the name of the driver to use for this volume.",
            fsType
              | String
              | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default filesystem depends on FlexVolume script."
              | optional,
            options
              | { _ | String }
              | doc "options is Optional: this field holds extra command options if any."
              | optional,
            readOnly
              | Bool
              | doc "readOnly is Optional: defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
              | optional,
            secretRef
              | refs."definitions.io.k8s.api.core.v1.LocalObjectReference"
              | { _ | Dyn }
              | doc "secretRef is Optional: secretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.FlockerVolumeSource" =
        {
            datasetName
              | String
              | doc "datasetName is Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated"
              | optional,
            datasetUUID
              | String
              | doc "datasetUUID is the UUID of the dataset. This is unique identifier of a Flocker dataset"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.GCEPersistentDiskVolumeSource" =
        {
            fsType
              | String
              | doc "fsType is filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"
              | optional,
            partition
              | std.number.Integer
              | doc "partition is the partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"
              | optional,
            pdName
              | String
              | doc "pdName is unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk",
            readOnly
              | Bool
              | doc "readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.GitRepoVolumeSource" =
        {
            directory
              | String
              | doc "directory is the target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name."
              | optional,
            repository | String | doc "repository is the URL",
            revision
              | String
              | doc "revision is the commit hash for the specified revision."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.GlusterfsVolumeSource" =
        {
            endpoints
              | String
              | doc "endpoints is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod",
            path
              | String
              | doc "path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod",
            readOnly
              | Bool
              | doc "readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.HostPathVolumeSource" =
        {
            path
              | String
              | doc "path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath",
            type
              | String
              | doc "type for HostPath Volume Defaults to \"\" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ISCSIVolumeSource" =
        {
            chapAuthDiscovery
              | Bool
              | doc "chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication"
              | optional,
            chapAuthSession
              | Bool
              | doc "chapAuthSession defines whether support iSCSI Session CHAP authentication"
              | optional,
            fsType
              | String
              | doc "fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi"
              | optional,
            initiatorName
              | String
              | doc "initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection."
              | optional,
            iqn | String | doc "iqn is the target iSCSI Qualified Name.",
            iscsiInterface
              | String
              | doc "iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default' (tcp)."
              | optional,
            lun
              | std.number.Integer
              | doc "lun represents iSCSI Target Lun number.",
            portals
              | Array String
              | doc "portals is the iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260)."
              | optional,
            readOnly
              | Bool
              | doc "readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false."
              | optional,
            secretRef
              | refs."definitions.io.k8s.api.core.v1.LocalObjectReference"
              | { _ | Dyn }
              | doc "secretRef is the CHAP Secret for iSCSI target and initiator authentication"
              | optional,
            targetPortal
              | String
              | doc "targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).",
            ..
          },
      "definitions.io.k8s.api.core.v1.ImageVolumeSource" =
        {
            pullPolicy
              | String
              | doc "Policy for pulling OCI objects. Possible values are: Always: the kubelet always attempts to pull the reference. Container creation will fail If the pull fails. Never: the kubelet never pulls the reference and only uses a local image or artifact. Container creation will fail if the reference isn't present. IfNotPresent: the kubelet pulls if the reference isn't already present on disk. Container creation will fail if the reference isn't present and the pull fails. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise."
              | optional,
            reference
              | String
              | doc "Required: Image or artifact reference to be used. Behaves in the same way as pod.spec.containers[*].image. Pull secrets will be assembled in the same way as for the container image by looking up node credentials, SA image pull secrets, and pod spec image pull secrets. More info: https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.KeyToPath" =
        {
            key | String | doc "key is the key to project.",
            mode
              | std.number.Integer
              | doc "mode is Optional: mode bits used to set permissions on this file. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
              | optional,
            path
              | String
              | doc "path is the relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.",
            ..
          },
      "definitions.io.k8s.api.core.v1.LocalObjectReference" =
        {
            name
              | String
              | doc "Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.NFSVolumeSource" =
        {
            path
              | String
              | doc "path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs",
            readOnly
              | Bool
              | doc "readOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs"
              | optional,
            server
              | String
              | doc "server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs",
            ..
          },
      "definitions.io.k8s.api.core.v1.NodeAffinity" =
        {
            preferredDuringSchedulingIgnoredDuringExecution
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.PreferredSchedulingTerm",
                    { _ | Dyn }
                  ]
              )
              | doc "The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred."
              | optional,
            requiredDuringSchedulingIgnoredDuringExecution
              | refs."definitions.io.k8s.api.core.v1.NodeSelector"
              | { _ | Dyn }
              | doc "If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.NodeSelector" =
        {
            nodeSelectorTerms
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.NodeSelectorTerm",
                    { _ | Dyn }
                  ]
              )
              | doc "Required. A list of node selector terms. The terms are ORed.",
            ..
          },
      "definitions.io.k8s.api.core.v1.NodeSelectorRequirement" =
        {
            key | String | doc "The label key that the selector applies to.",
            operator
              | String
              | doc "Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.",
            values
              | Array String
              | doc "An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.NodeSelectorTerm" =
        {
            matchExpressions
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.NodeSelectorRequirement",
                    { _ | Dyn }
                  ]
              )
              | doc "A list of node selector requirements by node's labels."
              | optional,
            matchFields
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.NodeSelectorRequirement",
                    { _ | Dyn }
                  ]
              )
              | doc "A list of node selector requirements by node's fields."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ObjectFieldSelector" =
        {
            apiVersion
              | String
              | doc "Version of the schema the FieldPath is written in terms of, defaults to \"v1\"."
              | optional,
            fieldPath
              | String
              | doc "Path of the field to select in the specified API version.",
            ..
          },
      "definitions.io.k8s.api.core.v1.PersistentVolumeClaimSpec" =
        {
            accessModes
              | Array String
              | doc "accessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1"
              | optional,
            dataSource
              | refs."definitions.io.k8s.api.core.v1.TypedLocalObjectReference"
              | { _ | Dyn }
              | doc "dataSource field can be used to specify either: * An existing VolumeSnapshot object (snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source. When the AnyVolumeDataSource feature gate is enabled, dataSource contents will be copied to dataSourceRef, and dataSourceRef contents will be copied to dataSource when dataSourceRef.namespace is not specified. If the namespace is specified, then dataSourceRef will not be copied to dataSource."
              | optional,
            dataSourceRef
              | refs."definitions.io.k8s.api.core.v1.TypedObjectReference"
              | { _ | Dyn }
              | doc m%"
                dataSourceRef specifies the object from which to populate the volume with data, if a non-empty volume is desired. This may be any object from a non-empty API group (non core object) or a PersistentVolumeClaim object. When this field is specified, volume binding will only succeed if the type of the specified object matches some installed volume populator or dynamic provisioner. This field will replace the functionality of the dataSource field and as such if both fields are non-empty, they must have the same value. For backwards compatibility, when namespace isn't specified in dataSourceRef, both fields (dataSource and dataSourceRef) will be set to the same value automatically if one of them is empty and the other is non-empty. When namespace is specified in dataSourceRef, dataSource isn't set to the same value and must be empty. There are three important differences between dataSource and dataSourceRef: * While dataSource only allows two specific types of objects, dataSourceRef
                  allows any non-core object, as well as PersistentVolumeClaim objects.
                * While dataSource ignores disallowed values (dropping them), dataSourceRef
                  preserves all values, and generates an error if a disallowed value is
                  specified.
                * While dataSource only allows local objects, dataSourceRef allows objects
                  in any namespaces.
                (Beta) Using this field requires the AnyVolumeDataSource feature gate to be enabled. (Alpha) Using the namespace field of dataSourceRef requires the CrossNamespaceVolumeDataSource feature gate to be enabled.
              "%
              | optional,
            resources
              | refs."definitions.io.k8s.api.core.v1.VolumeResourceRequirements"
              | { _ | Dyn }
              | doc "resources represents the minimum resources the volume should have. If RecoverVolumeExpansionFailure feature is enabled users are allowed to specify resource requirements that are lower than previous value but must still be higher than capacity recorded in the status field of the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources"
              | optional,
            selector
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector"
              | { _ | Dyn }
              | doc "selector is a label query over volumes to consider for binding."
              | optional,
            storageClassName
              | String
              | doc "storageClassName is the name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1"
              | optional,
            volumeAttributesClassName
              | String
              | doc "volumeAttributesClassName may be used to set the VolumeAttributesClass used by this claim. If specified, the CSI driver will create or update the volume with the attributes defined in the corresponding VolumeAttributesClass. This has a different purpose than storageClassName, it can be changed after the claim is created. An empty string value means that no VolumeAttributesClass will be applied to the claim but it's not allowed to reset this field to empty string once it is set. If unspecified and the PersistentVolumeClaim is unbound, the default VolumeAttributesClass will be set by the persistentvolume controller if it exists. If the resource referred to by volumeAttributesClass does not exist, this PersistentVolumeClaim will be set to a Pending state, as reflected by the modifyVolumeStatus field, until such as a resource exists. More info: https://kubernetes.io/docs/concepts/storage/volume-attributes-classes/ (Beta) Using this field requires the VolumeAttributesClass feature gate to be enabled (off by default)."
              | optional,
            volumeMode
              | String
              | doc "volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec."
              | optional,
            volumeName
              | String
              | doc "volumeName is the binding reference to the PersistentVolume backing this claim."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.PersistentVolumeClaimTemplate" =
        {
            metadata
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta"
              | { _ | Dyn }
              | doc "May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation."
              | optional,
            spec
              | refs."definitions.io.k8s.api.core.v1.PersistentVolumeClaimSpec"
              | { _ | Dyn }
              | doc "The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here.",
            ..
          },
      "definitions.io.k8s.api.core.v1.PersistentVolumeClaimVolumeSource" =
        {
            claimName
              | String
              | doc "claimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims",
            readOnly
              | Bool
              | doc "readOnly Will force the ReadOnly setting in VolumeMounts. Default false."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.PhotonPersistentDiskVolumeSource" =
        {
            fsType
              | String
              | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
              | optional,
            pdID
              | String
              | doc "pdID is the ID that identifies Photon Controller persistent disk",
            ..
          },
      "definitions.io.k8s.api.core.v1.PodAffinity" =
        {
            preferredDuringSchedulingIgnoredDuringExecution
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.WeightedPodAffinityTerm",
                    { _ | Dyn }
                  ]
              )
              | doc "The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred."
              | optional,
            requiredDuringSchedulingIgnoredDuringExecution
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.PodAffinityTerm",
                    { _ | Dyn }
                  ]
              )
              | doc "If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.PodAffinityTerm" =
        {
            labelSelector
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector"
              | { _ | Dyn }
              | doc "A label query over a set of resources, in this case pods. If it's null, this PodAffinityTerm matches with no Pods."
              | optional,
            matchLabelKeys
              | Array String
              | doc "MatchLabelKeys is a set of pod label keys to select which pods will be taken into consideration. The keys are used to lookup values from the incoming pod labels, those key-value labels are merged with `labelSelector` as `key in (value)` to select the group of existing pods which pods will be taken into consideration for the incoming pod's pod (anti) affinity. Keys that don't exist in the incoming pod labels will be ignored. The default value is empty. The same key is forbidden to exist in both matchLabelKeys and labelSelector. Also, matchLabelKeys cannot be set when labelSelector isn't set. This is a beta field and requires enabling MatchLabelKeysInPodAffinity feature gate (enabled by default)."
              | optional,
            mismatchLabelKeys
              | Array String
              | doc "MismatchLabelKeys is a set of pod label keys to select which pods will be taken into consideration. The keys are used to lookup values from the incoming pod labels, those key-value labels are merged with `labelSelector` as `key notin (value)` to select the group of existing pods which pods will be taken into consideration for the incoming pod's pod (anti) affinity. Keys that don't exist in the incoming pod labels will be ignored. The default value is empty. The same key is forbidden to exist in both mismatchLabelKeys and labelSelector. Also, mismatchLabelKeys cannot be set when labelSelector isn't set. This is a beta field and requires enabling MatchLabelKeysInPodAffinity feature gate (enabled by default)."
              | optional,
            namespaceSelector
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector"
              | { _ | Dyn }
              | doc "A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces."
              | optional,
            namespaces
              | Array String
              | doc "namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\"."
              | optional,
            topologyKey
              | String
              | doc "This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.",
            ..
          },
      "definitions.io.k8s.api.core.v1.PodAntiAffinity" =
        {
            preferredDuringSchedulingIgnoredDuringExecution
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.WeightedPodAffinityTerm",
                    { _ | Dyn }
                  ]
              )
              | doc "The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred."
              | optional,
            requiredDuringSchedulingIgnoredDuringExecution
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.PodAffinityTerm",
                    { _ | Dyn }
                  ]
              )
              | doc "If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.PodSecurityContext" =
        {
            appArmorProfile
              | refs."definitions.io.k8s.api.core.v1.AppArmorProfile"
              | { _ | Dyn }
              | doc "appArmorProfile is the AppArmor options to use by the containers in this pod. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            fsGroup
              | std.number.Integer
              | doc m%"
                A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:
                
                1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----
                
                If unset, the Kubelet will not modify the ownership and permissions of any volume. Note that this field cannot be set when spec.os.name is windows.
              "%
              | optional,
            fsGroupChangePolicy
              | String
              | doc "fsGroupChangePolicy defines behavior of changing ownership and permission of the volume before being exposed inside Pod. This field will only apply to volume types which support fsGroup based ownership(and permissions). It will have no effect on ephemeral volume types such as: secret, configmaps and emptydir. Valid values are \"OnRootMismatch\" and \"Always\". If not specified, \"Always\" is used. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            runAsGroup
              | std.number.Integer
              | doc "The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            runAsNonRoot
              | Bool
              | doc "Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."
              | optional,
            runAsUser
              | std.number.Integer
              | doc "The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            seLinuxChangePolicy
              | String
              | doc m%"
                seLinuxChangePolicy defines how the container's SELinux label is applied to all volumes used by the Pod. It has no effect on nodes that do not support SELinux or to volumes does not support SELinux. Valid values are "MountOption" and "Recursive".
                
                "Recursive" means relabeling of all files on all Pod volumes by the container runtime. This may be slow for large volumes, but allows mixing privileged and unprivileged Pods sharing the same volume on the same node.
                
                "MountOption" mounts all eligible Pod volumes with `-o context` mount option. This requires all Pods that share the same volume to use the same SELinux label. It is not possible to share the same volume among privileged and unprivileged Pods. Eligible volumes are in-tree FibreChannel and iSCSI volumes, and all CSI volumes whose CSI driver announces SELinux support by setting spec.seLinuxMount: true in their CSIDriver instance. Other volumes are always re-labelled recursively. "MountOption" value is allowed only when SELinuxMount feature gate is enabled.
                
                If not specified and SELinuxMount feature gate is enabled, "MountOption" is used. If not specified and SELinuxMount feature gate is disabled, "MountOption" is used for ReadWriteOncePod volumes and "Recursive" for all other volumes.
                
                This field affects only Pods that have SELinux label set, either in PodSecurityContext or in SecurityContext of all containers.
                
                All Pods that use the same volume should use the same seLinuxChangePolicy, otherwise some pods can get stuck in ContainerCreating state. Note that this field cannot be set when spec.os.name is windows.
              "%
              | optional,
            seLinuxOptions
              | refs."definitions.io.k8s.api.core.v1.SELinuxOptions"
              | { _ | Dyn }
              | doc "The SELinux context to be applied to all containers. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            seccompProfile
              | refs."definitions.io.k8s.api.core.v1.SeccompProfile"
              | { _ | Dyn }
              | doc "The seccomp options to use by the containers in this pod. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            supplementalGroups
              | Array std.number.Integer
              | doc "A list of groups applied to the first process run in each container, in addition to the container's primary GID and fsGroup (if specified).  If the SupplementalGroupsPolicy feature is enabled, the supplementalGroupsPolicy field determines whether these are in addition to or instead of any group memberships defined in the container image. If unspecified, no additional groups are added, though group memberships defined in the container image may still be used, depending on the supplementalGroupsPolicy field. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            supplementalGroupsPolicy
              | String
              | doc "Defines how supplemental groups of the first container processes are calculated. Valid values are \"Merge\" and \"Strict\". If not specified, \"Merge\" is used. (Alpha) Using the field requires the SupplementalGroupsPolicy feature gate to be enabled and the container runtime must implement support for this feature. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            sysctls
              | Array (
                std.contract.Sequence
                  [ refs."definitions.io.k8s.api.core.v1.Sysctl", { _ | Dyn } ]
              )
              | doc "Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            windowsOptions
              | refs."definitions.io.k8s.api.core.v1.WindowsSecurityContextOptions"
              | { _ | Dyn }
              | doc "The Windows specific settings applied to all containers. If unspecified, the options within a container's SecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is linux."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.PortworxVolumeSource" =
        {
            fsType
              | String
              | doc "fSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\". Implicitly inferred to be \"ext4\" if unspecified."
              | optional,
            readOnly
              | Bool
              | doc "readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
              | optional,
            volumeID
              | String
              | doc "volumeID uniquely identifies a Portworx volume",
            ..
          },
      "definitions.io.k8s.api.core.v1.PreferredSchedulingTerm" =
        {
            preference
              | refs."definitions.io.k8s.api.core.v1.NodeSelectorTerm"
              | { _ | Dyn }
              | doc "A node selector term, associated with the corresponding weight.",
            weight
              | std.number.Integer
              | doc "Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.",
            ..
          },
      "definitions.io.k8s.api.core.v1.ProjectedVolumeSource" =
        {
            defaultMode
              | std.number.Integer
              | doc "defaultMode are the mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
              | optional,
            sources
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.VolumeProjection",
                    { _ | Dyn }
                  ]
              )
              | doc "sources is the list of volume projections. Each entry in this list handles one source."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.QuobyteVolumeSource" =
        {
            group
              | String
              | doc "group to map volume access to Default is no group"
              | optional,
            readOnly
              | Bool
              | doc "readOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false."
              | optional,
            registry
              | String
              | doc "registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes",
            tenant
              | String
              | doc "tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin"
              | optional,
            user
              | String
              | doc "user to map volume access to Defaults to serivceaccount user"
              | optional,
            volume
              | String
              | doc "volume is a string that references an already created Quobyte volume by name.",
            ..
          },
      "definitions.io.k8s.api.core.v1.RBDVolumeSource" =
        {
            fsType
              | String
              | doc "fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd"
              | optional,
            image
              | String
              | doc "image is the rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it",
            keyring
              | String
              | doc "keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
              | optional,
            monitors
              | Array String
              | doc "monitors is a collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it",
            pool
              | String
              | doc "pool is the rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
              | optional,
            readOnly
              | Bool
              | doc "readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
              | optional,
            secretRef
              | refs."definitions.io.k8s.api.core.v1.LocalObjectReference"
              | { _ | Dyn }
              | doc "secretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
              | optional,
            user
              | String
              | doc "user is the rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ResourceClaim" =
        {
            name
              | String
              | doc "Name must match the name of one entry in pod.spec.resourceClaims of the Pod where this field is used. It makes that resource available inside a container.",
            request
              | String
              | doc "Request is the name chosen for a request in the referenced claim. If empty, everything from the claim is made available, otherwise only the result of this request."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ResourceFieldSelector" =
        {
            containerName
              | String
              | doc "Container name: required for volumes, optional for env vars"
              | optional,
            divisor
              | refs."definitions.io.k8s.apimachinery.pkg.api.resource.Quantity"
              | String
              | doc "Specifies the output format of the exposed resources, defaults to \"1\""
              | optional,
            resource | String | doc "Required: resource to select",
            ..
          },
      "definitions.io.k8s.api.core.v1.ResourceRequirements" =
        {
            claims
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.ResourceClaim",
                    { _ | Dyn }
                  ]
              )
              | doc m%"
                Claims lists the names of resources, defined in spec.resourceClaims, that are used by this container.
                
                This is an alpha field and requires enabling the DynamicResourceAllocation feature gate.
                
                This field is immutable. It can only be set for containers.
              "%
              | optional,
            limits
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.k8s.apimachinery.pkg.api.resource.Quantity",
                    String
                  ]
              }
              | doc "Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/"
              | optional,
            requests
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.k8s.apimachinery.pkg.api.resource.Quantity",
                    String
                  ]
              }
              | doc "Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. Requests cannot exceed Limits. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.SELinuxOptions" =
        {
            level
              | String
              | doc "Level is SELinux level label that applies to the container."
              | optional,
            role
              | String
              | doc "Role is a SELinux role label that applies to the container."
              | optional,
            type
              | String
              | doc "Type is a SELinux type label that applies to the container."
              | optional,
            user
              | String
              | doc "User is a SELinux user label that applies to the container."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ScaleIOVolumeSource" =
        {
            fsType
              | String
              | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Default is \"xfs\"."
              | optional,
            gateway
              | String
              | doc "gateway is the host address of the ScaleIO API Gateway.",
            protectionDomain
              | String
              | doc "protectionDomain is the name of the ScaleIO Protection Domain for the configured storage."
              | optional,
            readOnly
              | Bool
              | doc "readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
              | optional,
            secretRef
              | refs."definitions.io.k8s.api.core.v1.LocalObjectReference"
              | { _ | Dyn }
              | doc "secretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.",
            sslEnabled
              | Bool
              | doc "sslEnabled Flag enable/disable SSL communication with Gateway, default false"
              | optional,
            storageMode
              | String
              | doc "storageMode indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned."
              | optional,
            storagePool
              | String
              | doc "storagePool is the ScaleIO Storage Pool associated with the protection domain."
              | optional,
            system
              | String
              | doc "system is the name of the storage system as configured in ScaleIO.",
            volumeName
              | String
              | doc "volumeName is the name of a volume already created in the ScaleIO system that is associated with this volume source."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.SeccompProfile" =
        {
            localhostProfile
              | String
              | doc "localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must be set if type is \"Localhost\". Must NOT be set for any other type."
              | optional,
            type
              | String
              | doc m%"
                type indicates which kind of seccomp profile will be applied. Valid options are:
                
                Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.
              "%,
            ..
          },
      "definitions.io.k8s.api.core.v1.SecretEnvSource" =
        {
            name
              | String
              | doc "Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
              | optional,
            "optional"
              | Bool
              | doc "Specify whether the Secret must be defined"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.SecretKeySelector" =
        {
            key
              | String
              | doc "The key of the secret to select from.  Must be a valid secret key.",
            name
              | String
              | doc "Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
              | optional,
            "optional"
              | Bool
              | doc "Specify whether the Secret or its key must be defined"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.SecretProjection" =
        {
            items
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.KeyToPath",
                    { _ | Dyn }
                  ]
              )
              | doc "items if unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."
              | optional,
            name
              | String
              | doc "Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
              | optional,
            "optional"
              | Bool
              | doc "optional field specify whether the Secret or its key must be defined"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.SecretVolumeSource" =
        {
            defaultMode
              | std.number.Integer
              | doc "defaultMode is Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
              | optional,
            items
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.KeyToPath",
                    { _ | Dyn }
                  ]
              )
              | doc "items If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."
              | optional,
            "optional"
              | Bool
              | doc "optional field specify whether the Secret or its keys must be defined"
              | optional,
            secretName
              | String
              | doc "secretName is the name of the secret in the pod's namespace to use. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.SecurityContext" =
        {
            allowPrivilegeEscalation
              | Bool
              | doc "AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN Note that this field cannot be set when spec.os.name is windows."
              | optional,
            appArmorProfile
              | refs."definitions.io.k8s.api.core.v1.AppArmorProfile"
              | { _ | Dyn }
              | doc "appArmorProfile is the AppArmor options to use by this container. If set, this profile overrides the pod's appArmorProfile. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            capabilities
              | refs."definitions.io.k8s.api.core.v1.Capabilities"
              | { _ | Dyn }
              | doc "The capabilities to add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            privileged
              | Bool
              | doc "Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            procMount
              | String
              | doc "procMount denotes the type of proc mount to use for the containers. The default value is Default which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            readOnlyRootFilesystem
              | Bool
              | doc "Whether this container has a read-only root filesystem. Default is false. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            runAsGroup
              | std.number.Integer
              | doc "The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            runAsNonRoot
              | Bool
              | doc "Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."
              | optional,
            runAsUser
              | std.number.Integer
              | doc "The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            seLinuxOptions
              | refs."definitions.io.k8s.api.core.v1.SELinuxOptions"
              | { _ | Dyn }
              | doc "The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            seccompProfile
              | refs."definitions.io.k8s.api.core.v1.SeccompProfile"
              | { _ | Dyn }
              | doc "The seccomp options to use by this container. If seccomp options are provided at both the pod & container level, the container options override the pod options. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            windowsOptions
              | refs."definitions.io.k8s.api.core.v1.WindowsSecurityContextOptions"
              | { _ | Dyn }
              | doc "The Windows specific settings applied to all containers. If unspecified, the options from the PodSecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is linux."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ServiceAccountTokenProjection" =
        {
            audience
              | String
              | doc "audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver."
              | optional,
            expirationSeconds
              | std.number.Integer
              | doc "expirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes."
              | optional,
            path
              | String
              | doc "path is the path relative to the mount point of the file to project the token into.",
            ..
          },
      "definitions.io.k8s.api.core.v1.ServicePort" =
        {
            appProtocol
              | String
              | doc m%"
                The application protocol for this port. This is used as a hint for implementations to offer richer behavior for protocols that they understand. This field follows standard Kubernetes label syntax. Valid values are either:
                
                * Un-prefixed protocol names - reserved for IANA standard service names (as per RFC-6335 and https://www.iana.org/assignments/service-names).
                
                * Kubernetes-defined prefixed names:
                  * 'kubernetes.io/h2c' - HTTP/2 prior knowledge over cleartext as described in https://www.rfc-editor.org/rfc/rfc9113.html#name-starting-http-2-with-prior-
                  * 'kubernetes.io/ws'  - WebSocket over cleartext as described in https://www.rfc-editor.org/rfc/rfc6455
                  * 'kubernetes.io/wss' - WebSocket over TLS as described in https://www.rfc-editor.org/rfc/rfc6455
                
                * Other protocols should use implementation-defined prefixed names such as mycompany.com/my-custom-protocol.
              "%
              | optional,
            name
              | String
              | doc "The name of this port within the service. This must be a DNS_LABEL. All ports within a ServiceSpec must have unique names. When considering the endpoints for a Service, this must match the 'name' field in the EndpointPort. Optional if only one ServicePort is defined on this service."
              | optional,
            nodePort
              | std.number.Integer
              | doc "The port on each node on which this service is exposed when type is NodePort or LoadBalancer.  Usually assigned by the system. If a value is specified, in-range, and not in use it will be used, otherwise the operation will fail.  If not specified, a port will be allocated if this Service requires one.  If this field is specified when creating a Service which does not need it, creation will fail. This field will be wiped when updating a Service to no longer need it (e.g. changing type from NodePort to ClusterIP). More info: https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport"
              | optional,
            port
              | std.number.Integer
              | doc "The port that will be exposed by this service.",
            protocol
              | String
              | doc "The IP protocol for this port. Supports \"TCP\", \"UDP\", and \"SCTP\". Default is TCP."
              | optional,
            targetPort
              | refs."definitions.io.k8s.apimachinery.pkg.util.intstr.IntOrString"
              | std.contract.any_of [ Number, String ]
              | doc "Number or name of the port to access on the pods targeted by the service. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. If this is a string, it will be looked up as a named port in the target Pod's container ports. If this is not specified, the value of the 'port' field is used (an identity map). This field is ignored for services with clusterIP=None, and should be omitted or set equal to the 'port' field. More info: https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.StorageOSVolumeSource" =
        {
            fsType
              | String
              | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
              | optional,
            readOnly
              | Bool
              | doc "readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
              | optional,
            secretRef
              | refs."definitions.io.k8s.api.core.v1.LocalObjectReference"
              | { _ | Dyn }
              | doc "secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If not specified, default values will be attempted."
              | optional,
            volumeName
              | String
              | doc "volumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace."
              | optional,
            volumeNamespace
              | String
              | doc "volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to \"default\" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.Sysctl" =
        {
            name | String | doc "Name of a property to set",
            value | String | doc "Value of a property to set",
            ..
          },
      "definitions.io.k8s.api.core.v1.Toleration" =
        {
            effect
              | String
              | doc "Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute."
              | optional,
            key
              | String
              | doc "Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys."
              | optional,
            operator
              | String
              | doc "Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category."
              | optional,
            tolerationSeconds
              | std.number.Integer
              | doc "TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system."
              | optional,
            value
              | String
              | doc "Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.TypedLocalObjectReference" =
        {
            apiGroup
              | String
              | doc "APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required."
              | optional,
            kind | String | doc "Kind is the type of resource being referenced",
            name | String | doc "Name is the name of resource being referenced",
            ..
          },
      "definitions.io.k8s.api.core.v1.TypedObjectReference" =
        {
            apiGroup
              | String
              | doc "APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required."
              | optional,
            kind | String | doc "Kind is the type of resource being referenced",
            name | String | doc "Name is the name of resource being referenced",
            namespace
              | String
              | doc "Namespace is the namespace of resource being referenced Note that when a namespace is specified, a gateway.networking.k8s.io/ReferenceGrant object is required in the referent namespace to allow that namespace's owner to accept the reference. See the ReferenceGrant documentation for details. (Alpha) This field requires the CrossNamespaceVolumeDataSource feature gate to be enabled."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.Volume" =
        {
            awsElasticBlockStore
              | refs."definitions.io.k8s.api.core.v1.AWSElasticBlockStoreVolumeSource"
              | { _ | Dyn }
              | doc "awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Deprecated: AWSElasticBlockStore is deprecated. All operations for the in-tree awsElasticBlockStore type are redirected to the ebs.csi.aws.com CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore"
              | optional,
            azureDisk
              | refs."definitions.io.k8s.api.core.v1.AzureDiskVolumeSource"
              | { _ | Dyn }
              | doc "azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod. Deprecated: AzureDisk is deprecated. All operations for the in-tree azureDisk type are redirected to the disk.csi.azure.com CSI driver."
              | optional,
            azureFile
              | refs."definitions.io.k8s.api.core.v1.AzureFileVolumeSource"
              | { _ | Dyn }
              | doc "azureFile represents an Azure File Service mount on the host and bind mount to the pod. Deprecated: AzureFile is deprecated. All operations for the in-tree azureFile type are redirected to the file.csi.azure.com CSI driver."
              | optional,
            cephfs
              | refs."definitions.io.k8s.api.core.v1.CephFSVolumeSource"
              | { _ | Dyn }
              | doc "cephFS represents a Ceph FS mount on the host that shares a pod's lifetime. Deprecated: CephFS is deprecated and the in-tree cephfs type is no longer supported."
              | optional,
            cinder
              | refs."definitions.io.k8s.api.core.v1.CinderVolumeSource"
              | { _ | Dyn }
              | doc "cinder represents a cinder volume attached and mounted on kubelets host machine. Deprecated: Cinder is deprecated. All operations for the in-tree cinder type are redirected to the cinder.csi.openstack.org CSI driver. More info: https://examples.k8s.io/mysql-cinder-pd/README.md"
              | optional,
            configMap
              | refs."definitions.io.k8s.api.core.v1.ConfigMapVolumeSource"
              | { _ | Dyn }
              | doc "configMap represents a configMap that should populate this volume"
              | optional,
            csi
              | refs."definitions.io.k8s.api.core.v1.CSIVolumeSource"
              | { _ | Dyn }
              | doc "csi (Container Storage Interface) represents ephemeral storage that is handled by certain external CSI drivers."
              | optional,
            downwardAPI
              | refs."definitions.io.k8s.api.core.v1.DownwardAPIVolumeSource"
              | { _ | Dyn }
              | doc "downwardAPI represents downward API about the pod that should populate this volume"
              | optional,
            emptyDir
              | refs."definitions.io.k8s.api.core.v1.EmptyDirVolumeSource"
              | { _ | Dyn }
              | doc "emptyDir represents a temporary directory that shares a pod's lifetime. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir"
              | optional,
            ephemeral
              | refs."definitions.io.k8s.api.core.v1.EphemeralVolumeSource"
              | { _ | Dyn }
              | doc m%"
                ephemeral represents a volume that is handled by a cluster storage driver. The volume's lifecycle is tied to the pod that defines it - it will be created before the pod starts, and deleted when the pod is removed.
                
                Use this if: a) the volume is only needed while the pod runs, b) features of normal volumes like restoring from snapshot or capacity
                   tracking are needed,
                c) the storage driver is specified through a storage class, and d) the storage driver supports dynamic volume provisioning through
                   a PersistentVolumeClaim (see EphemeralVolumeSource for more
                   information on the connection between this volume type
                   and PersistentVolumeClaim).
                
                Use PersistentVolumeClaim or one of the vendor-specific APIs for volumes that persist for longer than the lifecycle of an individual pod.
                
                Use CSI for light-weight local ephemeral volumes if the CSI driver is meant to be used that way - see the documentation of the driver for more information.
                
                A pod can use both types of ephemeral volumes and persistent volumes at the same time.
              "%
              | optional,
            fc
              | refs."definitions.io.k8s.api.core.v1.FCVolumeSource"
              | { _ | Dyn }
              | doc "fc represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod."
              | optional,
            flexVolume
              | refs."definitions.io.k8s.api.core.v1.FlexVolumeSource"
              | { _ | Dyn }
              | doc "flexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin. Deprecated: FlexVolume is deprecated. Consider using a CSIDriver instead."
              | optional,
            flocker
              | refs."definitions.io.k8s.api.core.v1.FlockerVolumeSource"
              | { _ | Dyn }
              | doc "flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running. Deprecated: Flocker is deprecated and the in-tree flocker type is no longer supported."
              | optional,
            gcePersistentDisk
              | refs."definitions.io.k8s.api.core.v1.GCEPersistentDiskVolumeSource"
              | { _ | Dyn }
              | doc "gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Deprecated: GCEPersistentDisk is deprecated. All operations for the in-tree gcePersistentDisk type are redirected to the pd.csi.storage.gke.io CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"
              | optional,
            gitRepo
              | refs."definitions.io.k8s.api.core.v1.GitRepoVolumeSource"
              | { _ | Dyn }
              | doc "gitRepo represents a git repository at a particular revision. Deprecated: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container."
              | optional,
            glusterfs
              | refs."definitions.io.k8s.api.core.v1.GlusterfsVolumeSource"
              | { _ | Dyn }
              | doc "glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. Deprecated: Glusterfs is deprecated and the in-tree glusterfs type is no longer supported. More info: https://examples.k8s.io/volumes/glusterfs/README.md"
              | optional,
            hostPath
              | refs."definitions.io.k8s.api.core.v1.HostPathVolumeSource"
              | { _ | Dyn }
              | doc "hostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath"
              | optional,
            image
              | refs."definitions.io.k8s.api.core.v1.ImageVolumeSource"
              | { _ | Dyn }
              | doc m%"
                image represents an OCI object (a container image or artifact) pulled and mounted on the kubelet's host machine. The volume is resolved at pod startup depending on which PullPolicy value is provided:
                
                - Always: the kubelet always attempts to pull the reference. Container creation will fail If the pull fails. - Never: the kubelet never pulls the reference and only uses a local image or artifact. Container creation will fail if the reference isn't present. - IfNotPresent: the kubelet pulls if the reference isn't already present on disk. Container creation will fail if the reference isn't present and the pull fails.
                
                The volume gets re-resolved if the pod gets deleted and recreated, which means that new remote content will become available on pod recreation. A failure to resolve or pull the image during pod startup will block containers from starting and may add significant latency. Failures will be retried using normal volume backoff and will be reported on the pod reason and message. The types of objects that may be mounted by this volume are defined by the container runtime implementation on a host machine and at minimum must include all valid types supported by the container image field. The OCI object gets mounted in a single directory (spec.containers[*].volumeMounts.mountPath) by merging the manifest layers in the same way as for container images. The volume will be mounted read-only (ro) and non-executable files (noexec). Sub path mounts for containers are not supported (spec.containers[*].volumeMounts.subpath). The field spec.securityContext.fsGroupChangePolicy has no effect on this volume type.
              "%
              | optional,
            iscsi
              | refs."definitions.io.k8s.api.core.v1.ISCSIVolumeSource"
              | { _ | Dyn }
              | doc "iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://examples.k8s.io/volumes/iscsi/README.md"
              | optional,
            name
              | String
              | doc "name of the volume. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names",
            nfs
              | refs."definitions.io.k8s.api.core.v1.NFSVolumeSource"
              | { _ | Dyn }
              | doc "nfs represents an NFS mount on the host that shares a pod's lifetime More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs"
              | optional,
            persistentVolumeClaim
              | refs."definitions.io.k8s.api.core.v1.PersistentVolumeClaimVolumeSource"
              | { _ | Dyn }
              | doc "persistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims"
              | optional,
            photonPersistentDisk
              | refs."definitions.io.k8s.api.core.v1.PhotonPersistentDiskVolumeSource"
              | { _ | Dyn }
              | doc "photonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine. Deprecated: PhotonPersistentDisk is deprecated and the in-tree photonPersistentDisk type is no longer supported."
              | optional,
            portworxVolume
              | refs."definitions.io.k8s.api.core.v1.PortworxVolumeSource"
              | { _ | Dyn }
              | doc "portworxVolume represents a portworx volume attached and mounted on kubelets host machine. Deprecated: PortworxVolume is deprecated. All operations for the in-tree portworxVolume type are redirected to the pxd.portworx.com CSI driver when the CSIMigrationPortworx feature-gate is on."
              | optional,
            projected
              | refs."definitions.io.k8s.api.core.v1.ProjectedVolumeSource"
              | { _ | Dyn }
              | doc "projected items for all in one resources secrets, configmaps, and downward API"
              | optional,
            quobyte
              | refs."definitions.io.k8s.api.core.v1.QuobyteVolumeSource"
              | { _ | Dyn }
              | doc "quobyte represents a Quobyte mount on the host that shares a pod's lifetime. Deprecated: Quobyte is deprecated and the in-tree quobyte type is no longer supported."
              | optional,
            rbd
              | refs."definitions.io.k8s.api.core.v1.RBDVolumeSource"
              | { _ | Dyn }
              | doc "rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. Deprecated: RBD is deprecated and the in-tree rbd type is no longer supported. More info: https://examples.k8s.io/volumes/rbd/README.md"
              | optional,
            scaleIO
              | refs."definitions.io.k8s.api.core.v1.ScaleIOVolumeSource"
              | { _ | Dyn }
              | doc "scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes. Deprecated: ScaleIO is deprecated and the in-tree scaleIO type is no longer supported."
              | optional,
            secret
              | refs."definitions.io.k8s.api.core.v1.SecretVolumeSource"
              | { _ | Dyn }
              | doc "secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret"
              | optional,
            storageos
              | refs."definitions.io.k8s.api.core.v1.StorageOSVolumeSource"
              | { _ | Dyn }
              | doc "storageOS represents a StorageOS volume attached and mounted on Kubernetes nodes. Deprecated: StorageOS is deprecated and the in-tree storageos type is no longer supported."
              | optional,
            vsphereVolume
              | refs."definitions.io.k8s.api.core.v1.VsphereVirtualDiskVolumeSource"
              | { _ | Dyn }
              | doc "vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine. Deprecated: VsphereVolume is deprecated. All operations for the in-tree vsphereVolume type are redirected to the csi.vsphere.vmware.com CSI driver."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.VolumeMount" =
        {
            mountPath
              | String
              | doc "Path within the container at which the volume should be mounted.  Must not contain ':'.",
            mountPropagation
              | String
              | doc "mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10. When RecursiveReadOnly is set to IfPossible or to Enabled, MountPropagation must be None or unspecified (which defaults to None)."
              | optional,
            name | String | doc "This must match the Name of a Volume.",
            readOnly
              | Bool
              | doc "Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false."
              | optional,
            recursiveReadOnly
              | String
              | doc m%"
                RecursiveReadOnly specifies whether read-only mounts should be handled recursively.
                
                If ReadOnly is false, this field has no meaning and must be unspecified.
                
                If ReadOnly is true, and this field is set to Disabled, the mount is not made recursively read-only.  If this field is set to IfPossible, the mount is made recursively read-only, if it is supported by the container runtime.  If this field is set to Enabled, the mount is made recursively read-only if it is supported by the container runtime, otherwise the pod will not be started and an error will be generated to indicate the reason.
                
                If this field is set to IfPossible or Enabled, MountPropagation must be set to None (or be unspecified, which defaults to None).
                
                If this field is not specified, it is treated as an equivalent of Disabled.
              "%
              | optional,
            subPath
              | String
              | doc "Path within the volume from which the container's volume should be mounted. Defaults to \"\" (volume's root)."
              | optional,
            subPathExpr
              | String
              | doc "Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to \"\" (volume's root). SubPathExpr and SubPath are mutually exclusive."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.VolumeProjection" =
        {
            clusterTrustBundle
              | refs."definitions.io.k8s.api.core.v1.ClusterTrustBundleProjection"
              | { _ | Dyn }
              | doc m%"
                ClusterTrustBundle allows a pod to access the `.spec.trustBundle` field of ClusterTrustBundle objects in an auto-updating file.
                
                Alpha, gated by the ClusterTrustBundleProjection feature gate.
                
                ClusterTrustBundle objects can either be selected by name, or by the combination of signer name and a label selector.
                
                Kubelet performs aggressive normalization of the PEM contents written into the pod filesystem.  Esoteric PEM features such as inter-block comments and block headers are stripped.  Certificates are deduplicated. The ordering of certificates within the file is arbitrary, and Kubelet may change the order over time.
              "%
              | optional,
            configMap
              | refs."definitions.io.k8s.api.core.v1.ConfigMapProjection"
              | { _ | Dyn }
              | doc "configMap information about the configMap data to project"
              | optional,
            downwardAPI
              | refs."definitions.io.k8s.api.core.v1.DownwardAPIProjection"
              | { _ | Dyn }
              | doc "downwardAPI information about the downwardAPI data to project"
              | optional,
            secret
              | refs."definitions.io.k8s.api.core.v1.SecretProjection"
              | { _ | Dyn }
              | doc "secret information about the secret data to project"
              | optional,
            serviceAccountToken
              | refs."definitions.io.k8s.api.core.v1.ServiceAccountTokenProjection"
              | { _ | Dyn }
              | doc "serviceAccountToken is information about the serviceAccountToken data to project"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.VolumeResourceRequirements" =
        {
            limits
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.k8s.apimachinery.pkg.api.resource.Quantity",
                    String
                  ]
              }
              | doc "Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/"
              | optional,
            requests
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.k8s.apimachinery.pkg.api.resource.Quantity",
                    String
                  ]
              }
              | doc "Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. Requests cannot exceed Limits. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.VsphereVirtualDiskVolumeSource" =
        {
            fsType
              | String
              | doc "fsType is filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
              | optional,
            storagePolicyID
              | String
              | doc "storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName."
              | optional,
            storagePolicyName
              | String
              | doc "storagePolicyName is the storage Policy Based Management (SPBM) profile name."
              | optional,
            volumePath
              | String
              | doc "volumePath is the path that identifies vSphere volume vmdk",
            ..
          },
      "definitions.io.k8s.api.core.v1.WeightedPodAffinityTerm" =
        {
            podAffinityTerm
              | refs."definitions.io.k8s.api.core.v1.PodAffinityTerm"
              | { _ | Dyn }
              | doc "Required. A pod affinity term, associated with the corresponding weight.",
            weight
              | std.number.Integer
              | doc "weight associated with matching the corresponding podAffinityTerm, in the range 1-100.",
            ..
          },
      "definitions.io.k8s.api.core.v1.WindowsSecurityContextOptions" =
        {
            gmsaCredentialSpec
              | String
              | doc "GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field."
              | optional,
            gmsaCredentialSpecName
              | String
              | doc "GMSACredentialSpecName is the name of the GMSA credential spec to use."
              | optional,
            hostProcess
              | Bool
              | doc "HostProcess determines if a container should be run as a 'Host Process' container. All of a Pod's containers must have the same effective HostProcess value (it is not allowed to have a mix of HostProcess containers and non-HostProcess containers). In addition, if HostProcess is true then HostNetwork must also be set to true."
              | optional,
            runAsUserName
              | String
              | doc "The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."
              | optional,
            ..
          },
      "definitions.io.k8s.apimachinery.pkg.api.resource.Quantity" = String,
      "definitions.io.k8s.apimachinery.pkg.apis.meta.v1.FieldsV1" = { _ | Dyn },
      "definitions.io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector" =
        {
            matchExpressions
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelectorRequirement",
                    { _ | Dyn }
                  ]
              )
              | doc "matchExpressions is a list of label selector requirements. The requirements are ANDed."
              | optional,
            matchLabels
              | { _ | String }
              | doc "matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."
              | optional,
            ..
          },
      "definitions.io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelectorRequirement" =
        {
            key
              | String
              | doc "key is the label key that the selector applies to.",
            operator
              | String
              | doc "operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.",
            values
              | Array String
              | doc "values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."
              | optional,
            ..
          },
      "definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ManagedFieldsEntry" =
        {
            apiVersion
              | String
              | doc "APIVersion defines the version of this resource that this field set applies to. The format is \"group/version\" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted."
              | optional,
            fieldsType
              | String
              | doc "FieldsType is the discriminator for the different fields format and version. There is currently only one possible value: \"FieldsV1\""
              | optional,
            fieldsV1
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.FieldsV1"
              | { _ | Dyn }
              | doc "FieldsV1 holds the first JSON version format as described in the \"FieldsV1\" type."
              | optional,
            manager
              | String
              | doc "Manager is an identifier of the workflow managing these fields."
              | optional,
            operation
              | String
              | doc "Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'."
              | optional,
            subresource
              | String
              | doc "Subresource is the name of the subresource used to update that object, or empty string if the object was updated through the main resource. The value of this field is used to distinguish between managers, even if they share the same name. For example, a status update will be distinct from a regular update using the same manager name. Note that the APIVersion field is not related to the Subresource field and it always corresponds to the version of the main resource."
              | optional,
            time
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.Time"
              | String
              | doc "Time is the timestamp of when the ManagedFields entry was added. The timestamp will also be updated if a field is added, the manager changes any of the owned fields value or removes a field. The timestamp does not update when a field is removed from the entry because another manager took it over."
              | optional,
            ..
          },
      "definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta" =
        {
            annotations
              | { _ | String }
              | doc "Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations"
              | optional,
            creationTimestamp
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.Time"
              | String
              | doc m%"
                CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.
                
                Populated by the system. Read-only. Null for lists. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
              "%
              | optional,
            deletionGracePeriodSeconds
              | std.number.Integer
              | doc "Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only."
              | optional,
            deletionTimestamp
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.Time"
              | String
              | doc m%"
                DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.
                
                Populated by the system when a graceful deletion is requested. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
              "%
              | optional,
            finalizers
              | Array String
              | doc "Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list."
              | optional,
            generateName
              | String
              | doc m%"
                GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.
                
                If this field is specified and the generated name exists, the server will return a 409.
                
                Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency
              "%
              | optional,
            generation
              | std.number.Integer
              | doc "A sequence number representing a specific generation of the desired state. Populated by the system. Read-only."
              | optional,
            labels
              | { _ | String }
              | doc "Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels"
              | optional,
            managedFields
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ManagedFieldsEntry",
                    { _ | Dyn }
                  ]
              )
              | doc "ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like \"ci-cd\". The set of fields is always in the version that the workflow used when modifying the object."
              | optional,
            name
              | String
              | doc "Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names"
              | optional,
            namespace
              | String
              | doc m%"
                Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.
                
                Must be a DNS_LABEL. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces
              "%
              | optional,
            ownerReferences
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.OwnerReference",
                    { _ | Dyn }
                  ]
              )
              | doc "List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller."
              | optional,
            resourceVersion
              | String
              | doc m%"
                An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.
                
                Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
              "%
              | optional,
            selfLink
              | String
              | doc "Deprecated: selfLink is a legacy read-only field that is no longer populated by the system."
              | optional,
            uid
              | String
              | doc m%"
                UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.
                
                Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
              "%
              | optional,
            ..
          },
      "definitions.io.k8s.apimachinery.pkg.apis.meta.v1.OwnerReference" =
        {
            apiVersion | String | doc "API version of the referent.",
            blockOwnerDeletion
              | Bool
              | doc "If true, AND if the owner has the \"foregroundDeletion\" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. See https://kubernetes.io/docs/concepts/architecture/garbage-collection/#foreground-deletion for how the garbage collector interacts with this field and enforces the foreground deletion. Defaults to false. To set this field, a user needs \"delete\" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned."
              | optional,
            controller
              | Bool
              | doc "If true, this reference points to the managing controller."
              | optional,
            kind
              | String
              | doc "Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds",
            name
              | String
              | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names",
            uid
              | String
              | doc "UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids",
            ..
          },
      "definitions.io.k8s.apimachinery.pkg.apis.meta.v1.Time" = String,
      "definitions.io.k8s.apimachinery.pkg.util.intstr.IntOrString" =
        std.contract.any_of [ std.number.Integer, String ],
    }
    in
  std.contract.Sequence
      [
        js2n.OneOf
          [
            refs."definitions.io.argoproj.events.v1alpha1.EventBus",
            refs."definitions.io.argoproj.events.v1alpha1.EventSource",
            refs."definitions.io.argoproj.events.v1alpha1.Sensor"
          ],
        { _ | Dyn }
      ]