# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Application" =
        {
            buildpacks
              | Array String
              | doc m%"
                `buildpacks` may contain: 
                
                a) An empty array, which will automatically select the appropriate default buildpack according to the coding language;
                b) An array of one or more URLs pointing to buildpacks;
                c) An array of one or more installed buildpack names.
              "%
              | optional,
            command
              | String
              | doc "The command used to start the process; this overrides start commands from Procfiles and buildpacks."
              | optional,
            disk_quota
              | String
              | doc "The disk limit for all instances of the web process. This attribute requires a unit of measurement: B, K, KB, M, MB, G, GB, T, or TB in upper case or lower case."
              | optional,
            docker | refs."definitions.Docker" | { _ | Dyn } | optional,
            env | refs."definitions.Env" | { _ | Dyn } | optional,
            health-check-http-endpoint
              | refs."definitions.HealthCheckHTTPEndpoint"
              | String
              | optional,
            health-check-interval
              | refs."definitions.HealthCheckInterval"
              | Number
              | optional,
            health-check-invocation-timeout
              | refs."definitions.HealthCheckInvocationTimeout"
              | Number
              | optional,
            health-check-type
              | refs."definitions.HealthCheckType"
              | String
              | optional,
            instances
              | std.number.Integer
              | doc "The number of instances to run. Default is 1."
              | optional,
            log-rate-limit-per-second
              | String
              | doc "The log-rate-limit-per-second attribute specifies the log rate limit for all instances of an app. This attribute requires a unit of measurement: B, K, KB, M, MB, G, or GB, in either uppercase or lowercase. Default is 16K."
              | optional,
            memory
              | String
              | doc "The memory attribute specifies the memory limit for all instances of an app. This attribute requires a unit of measurement: M, MB, G, or GB, in either uppercase or lowercase. Default is 1G."
              | optional,
            metadata | refs."definitions.Metadata" | { _ | Dyn } | optional,
            name | String | doc "Name of the app.",
            no-route
              | Bool
              | doc "When set to true, any routes specified with the `routes` attribute will be ignored and any existing routes will be removed. Default is false."
              | optional,
            path
              | String
              | doc "The path attribute tells Cloud Foundry the directory location in which it can find your app. The directory specified as the path, either as an attribute or as a parameter on the command line, becomes the location where the buildpack Detect script runs."
              | optional,
            processes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Process", { _ | Dyn } ]
              )
              | doc "List of configurations for individual process types."
              | optional,
            random-route
              | Bool
              | doc "Creates a random route for the app if true. If `routes` is specified, if the app already has routes, or if `no-route` is specified, this field is ignored regardless of its value. Default is false."
              | optional,
            readiness-health-check-http-endpoint
              | refs."definitions.ReadinessHealthCheckHTTPEndpoint"
              | String
              | optional,
            readiness-health-check-interval
              | refs."definitions.ReadinessHealthCheckInterval"
              | Number
              | optional,
            readiness-health-check-invocation-timeout
              | refs."definitions.ReadinessHealthCheckInvocationTimeout"
              | Number
              | optional,
            readiness-health-check-type
              | refs."definitions.ReadinessHealthCheckType"
              | String
              | optional,
            routes
              | Array (
                std.contract.Sequence [ refs."definitions.Route", { _ | Dyn } ]
              )
              | doc "List declaring HTTP and TCP routes to be mapped to the app."
              | optional,
            services
              | Array refs."definitions.ServiceElement"
              | doc "Apps can bind to services such as databases, messaging, and key-value stores. The services block consists of a heading and one or more service instance names."
              | optional,
            sidecars
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Sidecar", { _ | Dyn } ]
              )
              | doc "The sidecars attribute specifies additional processes to run in the same container as your app."
              | optional,
            stack
              | String
              | doc "The root filesystem to use with the buildpack, for example cflinuxfs4."
              | optional,
            timeout
              | std.number.Integer
              | doc "The duration in seconds that health checks can fail before the process is restarted. Default is 60 (seconds)."
              | optional,
          },
      "definitions.Docker" = { image | String, username | String | optional, },
      "definitions.Env" = {  .. },
      "definitions.HealthCheckHTTPEndpoint" = String,
      "definitions.HealthCheckInterval" = std.number.Integer,
      "definitions.HealthCheckInvocationTimeout" = std.number.Integer,
      "definitions.HealthCheckType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'http, 'process, 'port |] ],
      "definitions.KVMetadata" = {  .. },
      "definitions.Manifest" =
        {
            applications
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Application", { _ | Dyn } ]
              ),
            version
              | std.number.Integer
              | doc "The version of the manifest schema. Currently, the only valid version is 1."
              | optional,
          },
      "definitions.Metadata" =
        {
            annotations
              | refs."definitions.KVMetadata"
              | { _ | Dyn }
              | doc "Annotations allow you to add non-identifying metadata to Cloud Foundry resources. You cannot query based on annotations. Also, there are fewer restrictions for key-value pairs of annotations than there are for labels. For example, you can include contact information of persons responsible for the resource, or tool information for debugging purposes."
              | optional,
            labels
              | refs."definitions.KVMetadata"
              | { _ | Dyn }
              | doc "Labels allow you to identify and select Cloud Foundry resources. For example, if you label all apps running in production or all spaces that contain Internet-facing apps, you can then search for them."
              | optional,
          },
      "definitions.Process" =
        {
            command
              | String
              | doc "The command used to start the process; this overrides start commands from Procfiles and buildpacks."
              | optional,
            disk_quota
              | String
              | doc "The disk limit for all instances of the web process. This attribute requires a unit of measurement: B, K, KB, M, MB, G, GB, T, or TB in upper case or lower case."
              | optional,
            health-check-http-endpoint
              | refs."definitions.HealthCheckHTTPEndpoint"
              | String
              | optional,
            health-check-interval
              | refs."definitions.HealthCheckInterval"
              | Number
              | optional,
            health-check-invocation-timeout
              | refs."definitions.HealthCheckInvocationTimeout"
              | Number
              | optional,
            health-check-type
              | refs."definitions.HealthCheckType"
              | String
              | optional,
            instances
              | std.number.Integer
              | doc "The number of instances to run. Default is 1."
              | optional,
            log-rate-limit-per-second
              | String
              | doc "The log rate limit for all the instances of the process. This attribute requires a unit of measurement: B, K, KB, M, MB, G, GB, T, or TB in upper case or lower case, or -1 or 0."
              | optional,
            memory
              | String
              | doc "The memory limit for all instances of the web process. This attribute requires a unit of measurement: B, K, KB, M, MB, G, GB, T, or TB in upper case or lower case."
              | optional,
            readiness-health-check-http-endpoint
              | refs."definitions.ReadinessHealthCheckHTTPEndpoint"
              | String
              | optional,
            readiness-health-check-interval
              | refs."definitions.ReadinessHealthCheckInterval"
              | Number
              | optional,
            readiness-health-check-invocation-timeout
              | refs."definitions.ReadinessHealthCheckInvocationTimeout"
              | Number
              | optional,
            readiness-health-check-type
              | refs."definitions.ReadinessHealthCheckType"
              | String
              | optional,
            timeout
              | std.number.Integer
              | doc "Time in seconds at which the health-check will report failure. Default is 60 (seconds)."
              | optional,
            type
              | String
              | doc "The identifier for the processes to be configured.",
          },
      "definitions.ReadinessHealthCheckHTTPEndpoint" = String,
      "definitions.ReadinessHealthCheckInterval" = std.number.Integer,
      "definitions.ReadinessHealthCheckInvocationTimeout" = std.number.Integer,
      "definitions.ReadinessHealthCheckType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'http, 'process, 'port |] ],
      "definitions.Route" =
        {
            protocol
              | std.enum.TagOrString
              | [| 'tcp, 'http1, 'http2 |]
              | doc "Protocol to use for this route."
              | optional,
            route | String | doc "The route URI. Example: host.domain.com.",
          },
      "definitions.ServiceElement" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.ServiceObject", { _ | Dyn } ],
              String
            ],
      "definitions.ServiceObject" =
        {
            binding_name
              | String
              | doc "The name of the service binding to be created"
              | optional,
            name
              | String
              | doc "The name of the service instance to be bound to.",
            parameters
              | refs."definitions.ServiceParameters"
              | { _ | Dyn }
              | optional,
          },
      "definitions.ServiceParameters" = {  .. },
      "definitions.Sidecar" =
        {
            command | String | doc "The command used to start the sidecar",
            memory
              | String
              | doc "Memory that the sidecar will be allocated"
              | optional,
            name
              | String
              | doc "The identifier for the sidecars to be configured",
            process_types
              | Array String
              | doc "List of processes to associate sidecar with",
          },
    }
    in
  refs."definitions.Manifest"