# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      containers
        | std.contract.any_of
          [
            Array
              {
                args
                  | std.contract.any_of
                    [ Array String, js2n.string.Matches "^\\[([^\\[].*)?\\]$" ]
                  | doc "Container start command arguments."
                  | optional,
                command
                  | std.contract.any_of
                    [ Array String, js2n.string.Matches "^\\[([^\\[].*)?\\]$" ]
                  | doc "Container start command."
                  | optional,
                env
                  | std.contract.any_of
                    [
                      Array
                        {
                          name
                            | String
                            | doc "Environment variable name."
                            | optional,
                          secretRef
                            | String
                            | doc "Name of the Container App secret from which to pull the environment variable value."
                            | optional,
                          value
                            | String
                            | doc "Non-secret environment variable value."
                            | optional,
                        },
                      js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                    ]
                  | doc "Container environment variables."
                  | optional,
                image | String | doc "Container image tag." | optional,
                name | String | doc "Custom container name." | optional,
                probes
                  | std.contract.any_of
                    [
                      Array
                        {
                          failureThreshold
                            | std.contract.any_of
                              [
                                std.number.Integer,
                                js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                              ]
                            | doc "Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1. Maximum value is 10."
                            | optional,
                          httpGet
                            | std.contract.any_of
                              [
                                {
                                  host
                                    | String
                                    | doc "Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."
                                    | optional,
                                  httpHeaders
                                    | std.contract.any_of
                                      [
                                        Array
                                          {
                                            name
                                              | String
                                              | doc "The header field name"
                                              | optional,
                                            value
                                              | String
                                              | doc "The header field value"
                                              | optional,
                                          },
                                        js2n.string.Matches
                                          "^\\[([^\\[].*)?\\]$"
                                      ]
                                    | doc "Custom headers to set in the request. HTTP allows repeated headers."
                                    | optional,
                                  path
                                    | String
                                    | doc "Path to access on the HTTP server."
                                    | optional,
                                  port
                                    | std.contract.any_of
                                      [
                                        std.number.Integer,
                                        js2n.string.Matches
                                          "^\\[([^\\[].*)?\\]$"
                                      ]
                                    | doc "Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."
                                    | optional,
                                  scheme
                                    | js2n.OneOf
                                      [
                                        std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'HTTPS, 'HTTP |]
                                          ],
                                        js2n.string.Matches
                                          "^\\[([^\\[].*)?\\]$"
                                      ]
                                    | doc "Scheme to use for connecting to the host. Defaults to HTTP."
                                    | optional,
                                },
                                js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                              ]
                            | doc "HTTPGet specifies the http request to perform."
                            | optional,
                          initialDelaySeconds
                            | std.contract.any_of
                              [
                                std.number.Integer,
                                js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                              ]
                            | doc "Number of seconds after the container has started before liveness probes are initiated. Minimum value is 1. Maximum value is 60."
                            | optional,
                          periodSeconds
                            | std.contract.any_of
                              [
                                std.number.Integer,
                                js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                              ]
                            | doc "How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value is 240."
                            | optional,
                          successThreshold
                            | std.contract.any_of
                              [
                                std.number.Integer,
                                js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                              ]
                            | doc "Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1. Maximum value is 10."
                            | optional,
                          tcpSocket
                            | std.contract.any_of
                              [
                                {
                                  host
                                    | String
                                    | doc "Optional: Host name to connect to, defaults to the pod IP."
                                    | optional,
                                  port
                                    | std.contract.any_of
                                      [
                                        std.number.Integer,
                                        js2n.string.Matches
                                          "^\\[([^\\[].*)?\\]$"
                                      ]
                                    | doc "Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."
                                    | optional,
                                },
                                js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                              ]
                            | doc "TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported."
                            | optional,
                          terminationGracePeriodSeconds
                            | std.contract.any_of
                              [
                                std.number.Integer,
                                js2n.Null,
                                js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                              ]
                            | doc "Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is an alpha field and requires enabling ProbeTerminationGracePeriod feature gate. Maximum value is 3600 seconds (1 hour)"
                            | optional,
                          timeoutSeconds
                            | std.contract.any_of
                              [
                                std.number.Integer,
                                js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                              ]
                            | doc "Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 240."
                            | optional,
                          type
                            | js2n.OneOf
                              [
                                std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'Startup, 'Readiness, 'Liveness |]
                                  ],
                                js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                              ]
                            | doc "The type of probe."
                            | optional,
                        },
                      js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                    ]
                  | doc "List of probes for the container."
                  | optional,
                resources
                  | std.contract.any_of
                    [
                      {
                        cpu
                          | std.contract.any_of
                            [
                              Number,
                              js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                            ]
                          | doc "Required CPU in cores, e.g. 0.5"
                          | optional,
                        ephemeralStorage
                          | String
                          | doc "UNDOCUMENTED. The total amount of storage available to each replica."
                          | optional,
                        memory
                          | String
                          | doc "Required memory, e.g. \"250Mb\""
                          | optional,
                      },
                      js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                    ]
                  | doc "Container App container resource requirements."
                  | optional,
                volumeMounts
                  | std.contract.any_of
                    [
                      Array
                        {
                          mountPath
                            | String
                            | doc "Path within the container at which the volume should be mounted.Must not contain ':'."
                            | optional,
                          subPath
                            | String
                            | doc "Path within the volume from which the container's volume should be mounted. Defaults to \"\" (volume's root)."
                            | optional,
                          volumeName
                            | String
                            | doc "This must match the Name of a Volume."
                            | optional,
                        },
                      js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                    ]
                  | doc "Container volume mounts."
                  | optional,
              },
            js2n.string.Matches "^\\[([^\\[].*)?\\]$"
          ]
        | doc "List of container definitions for the Container App."
        | optional,
      initContainers
        | std.contract.any_of
          [
            js2n.Null,
            Array
              {
                args
                  | std.contract.any_of
                    [ Array String, js2n.string.Matches "^\\[([^\\[].*)?\\]$" ]
                  | doc "Container start command arguments."
                  | optional,
                command
                  | std.contract.any_of
                    [ Array String, js2n.string.Matches "^\\[([^\\[].*)?\\]$" ]
                  | doc "Container start command."
                  | optional,
                env
                  | std.contract.any_of
                    [
                      Array
                        {
                          name
                            | String
                            | doc "Environment variable name."
                            | optional,
                          secretRef
                            | String
                            | doc "Name of the Container App secret from which to pull the environment variable value."
                            | optional,
                          value
                            | String
                            | doc "Non-secret environment variable value."
                            | optional,
                        },
                      js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                    ]
                  | doc "Container environment variables."
                  | optional,
                image | String | doc "Container image tag." | optional,
                name | String | doc "Custom container name." | optional,
                resources
                  | std.contract.any_of
                    [
                      {
                        cpu
                          | std.contract.any_of
                            [
                              Number,
                              js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                            ]
                          | doc "Required CPU in cores, e.g. 0.5"
                          | optional,
                        memory
                          | String
                          | doc "Required memory, e.g. \"250Mb\""
                          | optional,
                      },
                      js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                    ]
                  | doc "Container App container resource requirements."
                  | optional,
                volumeMounts
                  | std.contract.any_of
                    [
                      Array
                        {
                          mountPath
                            | String
                            | doc "Path within the container at which the volume should be mounted.Must not contain ':'."
                            | optional,
                          subPath
                            | String
                            | doc "Path within the volume from which the container's volume should be mounted. Defaults to \"\" (volume's root)."
                            | optional,
                          volumeName
                            | String
                            | doc "This must match the Name of a Volume."
                            | optional,
                        },
                      js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                    ]
                  | doc "Container volume mounts."
                  | optional,
              },
            js2n.string.Matches "^\\[([^\\[].*)?\\]$"
          ]
        | doc "List of specialized containers that run before app containers."
        | optional,
      revisionSuffix
        | String
        | doc "User friendly suffix that is appended to the revision name"
        | optional,
      scale
        | std.contract.any_of
          [
            {
              maxReplicas
                | std.contract.any_of
                  [
                    std.number.Integer,
                    js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                  ]
                | doc "Optional. Maximum number of container replicas. Defaults to 10 if not set."
                | optional,
              minReplicas
                | std.contract.any_of
                  [
                    std.number.Integer,
                    js2n.Null,
                    js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                  ]
                | doc "Optional. Minimum number of container replicas."
                | optional,
              rules
                | std.contract.any_of
                  [
                    Array
                      {
                        azureQueue
                          | std.contract.any_of
                            [
                              {
                                auth
                                  | std.contract.any_of
                                    [
                                      Array
                                        {
                                          secretRef
                                            | String
                                            | doc "Name of the secret from which to pull the auth params."
                                            | optional,
                                          triggerParameter
                                            | String
                                            | doc "Trigger Parameter that uses the secret"
                                            | optional,
                                        },
                                      js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                                    ]
                                  | doc "Authentication secrets for the queue scale rule."
                                  | optional,
                                queueLength
                                  | std.contract.any_of
                                    [
                                      std.number.Integer,
                                      js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                                    ]
                                  | doc "Queue length."
                                  | optional,
                                queueName
                                  | String
                                  | doc "Queue name."
                                  | optional,
                              },
                              js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                            ]
                          | doc "Container App container Azure Queue based scaling rule."
                          | optional,
                        custom
                          | std.contract.any_of
                            [
                              {
                                auth
                                  | std.contract.any_of
                                    [
                                      Array
                                        {
                                          secretRef
                                            | String
                                            | doc "Name of the secret from which to pull the auth params."
                                            | optional,
                                          triggerParameter
                                            | String
                                            | doc "Trigger Parameter that uses the secret"
                                            | optional,
                                        },
                                      js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                                    ]
                                  | doc "Authentication secrets for the custom scale rule."
                                  | optional,
                                metadata
                                  | std.contract.any_of
                                    [
                                      { _ | String },
                                      js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                                    ]
                                  | doc "Metadata properties to describe custom scale rule."
                                  | optional,
                                type
                                  | String
                                  | doc m%"
                                    Type of the custom scale rule
                                    eg: azure-servicebus, redis etc.
                                  "%
                                  | optional,
                              },
                              js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                            ]
                          | doc "Container App container Custom scaling rule."
                          | optional,
                        http
                          | std.contract.any_of
                            [
                              {
                                auth
                                  | std.contract.any_of
                                    [
                                      Array
                                        {
                                          secretRef
                                            | String
                                            | doc "Name of the secret from which to pull the auth params."
                                            | optional,
                                          triggerParameter
                                            | String
                                            | doc "Trigger Parameter that uses the secret"
                                            | optional,
                                        },
                                      js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                                    ]
                                  | doc "Authentication secrets for the custom scale rule."
                                  | optional,
                                metadata
                                  | std.contract.any_of
                                    [
                                      { _ | String },
                                      js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                                    ]
                                  | doc "Metadata properties to describe http scale rule."
                                  | optional,
                              },
                              js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                            ]
                          | doc "Container App container Http scaling rule."
                          | optional,
                        name | String | doc "Scale Rule Name" | optional,
                        tcp
                          | std.contract.any_of
                            [
                              {
                                auth
                                  | std.contract.any_of
                                    [
                                      Array
                                        {
                                          secretRef
                                            | String
                                            | doc "Name of the secret from which to pull the auth params."
                                            | optional,
                                          triggerParameter
                                            | String
                                            | doc "Trigger Parameter that uses the secret"
                                            | optional,
                                        },
                                      js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                                    ]
                                  | doc "Authentication secrets for the tcp scale rule."
                                  | optional,
                                metadata
                                  | std.contract.any_of
                                    [
                                      { _ | String },
                                      js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                                    ]
                                  | doc "Metadata properties to describe tcp scale rule."
                                  | optional,
                              },
                              js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                            ]
                          | doc "Container App container Tcp scaling rule."
                          | optional,
                      },
                    js2n.Null,
                    js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                  ]
                | doc "Scaling rules."
                | optional,
            },
            js2n.string.Matches "^\\[([^\\[].*)?\\]$"
          ]
        | doc "Container App scaling configurations."
        | optional,
      serviceBinds
        | std.contract.any_of
          [
            Array
              {
                name | String | doc "Name of the service bind" | optional,
                serviceId
                  | String
                  | doc "Resource id of the target service"
                  | optional,
              },
            js2n.Null,
            js2n.string.Matches "^\\[([^\\[].*)?\\]$"
          ]
        | doc "List of container app services bound to the app"
        | optional,
      terminationGracePeriodSeconds
        | std.contract.any_of
          [
            std.number.Integer,
            js2n.Null,
            js2n.string.Matches "^\\[([^\\[].*)?\\]$"
          ]
        | doc "Optional duration in seconds the Container App Instance needs to terminate gracefully. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds."
        | optional,
      volumes
        | std.contract.any_of
          [
            Array
              {
                mountOptions
                  | String
                  | doc "Mount options used while mounting the AzureFile. Must be a comma-separated string."
                  | optional,
                name | String | doc "Volume name." | optional,
                secrets
                  | std.contract.any_of
                    [
                      Array
                        {
                          path
                            | String
                            | doc "Path to project secret to. If no path is provided, path defaults to name of secret listed in secretRef."
                            | optional,
                          secretRef
                            | String
                            | doc "Name of the Container App secret from which to pull the secret value."
                            | optional,
                        },
                      js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                    ]
                  | doc "List of secrets to be added in volume. If no secrets are provided, all secrets in collection will be added to volume."
                  | optional,
                storageName
                  | String
                  | doc "Name of storage resource. No need to provide for EmptyDir and Secret."
                  | optional,
                storageType
                  | js2n.OneOf
                    [
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'Secret, 'EmptyDir, 'AzureFile |]
                        ],
                      js2n.string.Matches "^\\[([^\\[].*)?\\]$"
                    ]
                  | doc "Storage type for the volume. If not provided, use EmptyDir."
                  | optional,
              },
            js2n.Null,
            js2n.string.Matches "^\\[([^\\[].*)?\\]$"
          ]
        | doc "List of volume definitions for the Container App."
        | optional,
      ..
    }