# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.config-files" =
        Array
            {
              isBinaryFile
                | Bool
                | doc "Whether the file is binary. Needed for kubernetes environments so that binaryData is used in the ConfigMap."
                | optional,
              source | String | doc "name of the source file" | optional,
              target
                | String
                | doc "name & path of the file inside the container"
                | optional,
              ..
            },
      "definitions.expose" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.exposure", { _ | Dyn } ],
              Array (
                std.contract.Sequence
                  [ refs."definitions.exposure", { _ | Dyn } ]
              )
            ],
      "definitions.exposure" =
        {
            hostname
              | String
              | doc "The host to be used for this exposure, the global cluster host is the default."
              | optional,
            path
              | Array String
              | doc "list of paths (path-beginnings) to be routed to this service",
            port
              | std.number.Integer
              | doc "the internal port of the service that exposes the path"
              | optional,
            tls-termination
              | std.enum.TagOrString
              | [| 'reencrypt, 'passthrough, 'edge |]
              | doc "TLS termination on OpenShift"
              | optional,
            ..
          },
      "definitions.host-aliases" =
        Array
            {
              hostnames
                | Array { hostname | String | doc "Hostname" | optional, .. }
                | optional,
              ip | String | doc "IP of the hostalias" | optional,
              ..
            },
      "definitions.labels" =
        std.contract.Sequence
            [ { _ | String }, js2n.record.FieldsMatch "^.*$" ],
      "definitions.port-override" =
        Array (
            std.contract.any_of
              [
                Number,
                {
                  externalPort
                    | Number
                    | doc "port number exposed to clients (service port). If omitted implicitly equal to the port"
                    | optional,
                  nodePort
                    | std.contract.any_of
                      [
                        Number,
                        std.contract.Sequence
                          [
                            refs."definitions.templateParameterReference",
                            String
                          ]
                      ]
                    | doc "port number exposed on the Kubernetes cluster nodes. This generates a separate Service of type NodePort, if set."
                    | optional,
                  port
                    | Number
                    | doc "port number exposed by the container"
                    | optional,
                  portLabel | String | doc "name of the port" | optional,
                  ..
                }
              ]
          ),
      "definitions.probe" =
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
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                path = String,
                                port = String,
                                scheme = js2n.string.Matches "(HTTP|HTTPS)",
                              },
                          required = { path = true, port = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { tcpSocket = String, },
                          required = { tcpSocket = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                commands =
                                  js2n.array.ArrayOf
                                      (js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties = { arg = String, },
                                          required = {},
                                        }),
                              },
                          required = { commands = true, },
                        },
                      Array Dyn
                    ]
                ],
              {
                failureThreshold
                  | std.number.Integer
                  | js2n.number.Minimum 1
                  | doc "(optional) the number of times the probe is allowed to fail the health check before performing its duty (e.g., recreating a pod or marking a pod as unavailable)"
                  | optional,
                initialDelay
                  | Number
                  | doc "(optional) the initial delay to wait before starting to probe in seconds"
                  | optional,
                successThreshold
                  | std.number.Integer
                  | js2n.number.Minimum 1
                  | doc "(optional) the number of times the probe has to pass the health check before performing its duty (e.g., marking a pod as available)"
                  | optional,
                timeout
                  | Number
                  | doc "(optional) the time in seconds to wait for an http response for each call to the probe endpoint"
                  | optional,
                ..
              }
            ],
      "definitions.resourceSpec" =
        {
            limits
              | refs."definitions.resources"
              | { _ | Dyn }
              | doc "Upper limits of resources available to a container instance"
              | optional,
            requests
              | refs."definitions.resources"
              | { _ | Dyn }
              | doc "Amount of resources necessary to run a container instance. Must be less than limits."
              | optional,
            ..
          },
      "definitions.resources" =
        {
            cpu
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.templateParameterReference", String ],
                  js2n.string.Matches "\\d+m?"
                ]
              | doc "The number of cores, can be specified as integer cores, or in milli-cores (eg: '100m')",
            memory
              | js2n.OneOf
                [
                  js2n.string.Matches "\\d+(M|G|Mi|Gi)",
                  std.contract.Sequence
                    [ refs."definitions.templateParameterReference", String ]
                ]
              | doc "The amount of main memory in either of M,G (base 10) or Mi, Gi (base 2). (eg: '3Gi')",
            ..
          },
      "definitions.secret-files" =
        Array
            {
              key
                | String
                | doc "(Optional) Specifies the use of a single item of the secret identified by its key."
                | optional,
              mountPath
                | String
                | doc "Mount path in the target service-container where the secret files will be available.",
              secret
                | String
                | doc "Name of the secret to be mounted. If no key and target specified, all the items of the secret will be mounted in the mount path.",
              target
                | String
                | doc "(Optional) When using a specific secret item, then target file name needs to be specified."
                | optional,
              ..
            },
      "definitions.serviceConfiguration" =
        {
            additionalLabels
              | {
                deployment
                  | refs."definitions.labels"
                  | { _ | Dyn }
                  | doc "List of labels for deployments"
                  | optional,
                service
                  | refs."definitions.labels"
                  | { _ | Dyn }
                  | doc "List of labels for services"
                  | optional,
              }
              | optional,
            config-files
              | refs."definitions.config-files"
              | Array Dyn
              | doc "configuration files to be mapped into the pod"
              | optional,
            customData
              | {  .. }
              | doc "Custom data object which will be passed as is into the render context"
              | optional,
            deploymentResources
              | refs."definitions.resourceSpec"
              | { _ | Dyn }
              | doc "Specifies resource usage of a deployment container instance"
              | optional,
            deploymentStrategy
              | {
                params
                  | {
                    intervalSeconds
                      | Number
                      | doc "Number of seconds to wait between evaluations of the deployment status"
                      | optional,
                    maxSurge
                      | std.contract.any_of
                        [
                          Number,
                          std.contract.Sequence
                            [
                              refs."definitions.templateParameterReference",
                              String
                            ]
                        ]
                      | doc "Maximum temporary excess number of pods above the desired number of replicas"
                      | optional,
                    maxUnavailable
                      | std.contract.any_of
                        [
                          Number,
                          std.contract.Sequence
                            [
                              refs."definitions.templateParameterReference",
                              String
                            ]
                        ]
                      | doc "Maximum temporarily lacking pods compared to the desired number of replicas"
                      | optional,
                    timeoutSeconds
                      | std.contract.any_of
                        [
                          Number,
                          std.contract.Sequence
                            [
                              refs."definitions.templateParameterReference",
                              String
                            ]
                        ]
                      | doc "Time to wait for a successful scale-up before rolling back to the previous deployment"
                      | optional,
                    updatePeriodSeconds
                      | Number
                      | doc "Number of seconds to wait between pod updates"
                      | optional,
                    ..
                  }
                  | optional,
                type
                  | std.enum.TagOrString
                  | [| 'Recreate, 'Rolling |]
                  | optional,
                ..
              }
              | doc "How to roll out changed versions of the service (Recreate or Rolling)"
              | optional,
            disableAutomountServiceAccountToken
              | Bool
              | doc "(K8s/OpenShift only) Indicates whether a service account token should be mounted"
              | optional,
            disableServiceLinks
              | Bool
              | doc "(K8s/OpenShift only) Indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links"
              | optional,
            entrypoint
              | String
              | doc "The entrypoint that is used to start the image (Only works with docker-compose and OpenShift"
              | optional,
            environment
              | {
                _ | std.contract.any_of
                  [
                    {
                      key
                        | String
                        | doc "the (entry) key of the referenced secret"
                        | optional,
                      keyRefName
                        | String
                        | doc "the name of the secret to reference"
                        | optional,
                    },
                    String,
                    Number,
                    Bool
                  ]
              }
              | js2n.record.FieldsMatch "^.*$"
              | doc "List of environment variables set in the Container/Pod"
              | optional,
            expose | refs."definitions.expose" | optional,
            external-ip | String | optional,
            external-port | Number | optional,
            host-aliases
              | refs."definitions.host-aliases"
              | Array Dyn
              | doc "Host entries added to /etc/hosts file"
              | optional,
            liveness
              | refs."definitions.probe"
              | { _ | Dyn }
              | doc "Defines a check, failure of which leads to the restart of the service"
              | optional,
            needsDbSchema
              | Bool
              | doc "true, if this service needs a database schema to persist information."
              | optional,
            nlb
              | Bool
              | doc "marks this service as 'network load-balanced'. On AWS this is a simple alternative to setting up a router and ingresses, which is the preferred method."
              | optional,
            nodeSelector
              | js2n.Never
              | doc "Label for a desired node selector"
              | optional,
            podAntiAffinity | js2n.Never | doc "podAntiAffinity" | optional,
            port-override
              | refs."definitions.port-override"
              | Array Dyn
              | doc "ports exposed by the service"
              | optional,
            pull-policy
              | std.enum.TagOrString
              | [| 'Always, 'IfNotPresent |]
              | doc "Image pull policy for openshift. Default: IfNotPresent"
              | optional,
            readiness
              | refs."definitions.probe"
              | { _ | Dyn }
              | doc "Defines a check, failure of which leads to the service not receiving any requests"
              | optional,
            replicas
              | std.contract.any_of
                [
                  Number,
                  String,
                  std.contract.Sequence
                    [ refs."definitions.templateParameterReference", String ]
                ]
              | doc "Number of desired instances."
              | optional,
            resources
              | refs."definitions.resourceSpec"
              | { _ | Dyn }
              | doc "Specifies resource usage of a container instance"
              | optional,
            revisionHistoryLimit
              | Number
              | doc "(K8s/OpenShift only) The number of old ReplicationControllers to retain to allow for rollbacks"
              | optional,
            secret-files
              | refs."definitions.secret-files"
              | Array Dyn
              | doc "secret files to be mounted in the pod"
              | optional,
            service-account
              | String
              | doc "The service account to use for Openshift."
              | optional,
            service-account-name
              | String
              | doc "The name of the service account to use for Openshift."
              | optional,
            startup
              | refs."definitions.probe"
              | { _ | Dyn }
              | doc "A startup probe indicates whether the application within a container is started. All other probes are disabled until the startup succeeds"
              | optional,
            template-parameters
              | Array (
                std.contract.Sequence
                  [ refs."definitions.templateParameter", { _ | Dyn } ]
              )
              | optional,
            tolerations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.toleration", { _ | Dyn } ]
              )
              | doc "Tolerations section for Openshift"
              | optional,
            volumes
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.volumes", Array Dyn ],
                  {  .. }
                ]
              | optional,
            ..
          },
      "definitions.templateParameter" =
        { description | String, name | String, value | String, .. },
      "definitions.templateParameterReference" =
        js2n.string.Matches "\\$\\{\\{?.+\\}?\\}",
      "definitions.toleration" =
        {
            effect
              | String
              | doc "Toleration effect. The effect is one of the following: NoSchedule, PreferNoSchedule or NoExecute"
              | optional,
            key
              | String
              | doc "Toleration key. The key is any string, up to 253 characters. The key must begin with a letter or number, and may contain letters, numbers, hyphens, dots, and underscores."
              | optional,
            operator
              | String
              | doc "Toleration operator. The operator is one of the following: Equal or Exists"
              | optional,
            value
              | String
              | doc "Toleration value. The value is any string, up to 63 characters. The value must begin with a letter or number, and may contain letters, numbers, hyphens, dots, and underscores."
              | optional,
            ..
          },
      "definitions.volumes" =
        Array
            {
              path | String | doc "path onto which the volume will be mounted",
              persistentVolumeClaimName
                | String
                | doc "existing pvc Name that is already existing on openshift"
                | optional,
              shared
                | Bool
                | doc "whether or not the volume can be mounted by multiple nodes, generates a global volume for docker-compose environments"
                | optional,
              size
                | js2n.string.Matches "\\d+(M|G|Mi|Gi)"
                | doc "the requested size of the volume in Mega- or Giga-Byte. If this is specified, it will generate a volume-claim, if not an anonymous volume of type emptyDir will be created"
                | optional,
              ..
            },
    }
    in
  {
      app
        | String
        | doc "the name of the application-(component) defined by this environment",
      config-set
        | { _ | refs."definitions.serviceConfiguration" }
        | doc "configuration sets, which can be referenced from the service definitions"
        | optional,
      services
        | Array (
          std.contract.Sequence
            [
              refs."definitions.serviceConfiguration",
              {
                alias
                  | String
                  | doc "a convenient name, unique within the environment.",
                config-sets
                  | Array String
                  | doc "list of configuration sets to be applied to this service"
                  | optional,
                exposed-route
                  | {
                    rewrite-target
                      | String
                      | doc "the target path for url rewrites (replaces the entry path of the route)"
                      | optional,
                    timeout
                      | String
                      | doc "the timeout in minutes or seconds (e.g. 10m, 10s)"
                      | optional,
                    ..
                  }
                  | doc "Additional properties for routes"
                  | optional,
                external-name
                  | String
                  | doc "the external name of the service, this is usually a DNS name for an external service, e.g. api.google.com"
                  | optional,
                hostname
                  | String
                  | doc "the hostname of the docker-container, to override the automatic created hostnames for docker-compose environments"
                  | optional,
                image
                  | String
                  | doc "URL of the docker registry containing the services image"
                  | optional,
                name
                  | String
                  | doc "the name of the service, usually prefixed by the environment name to continue the historic way of supporting plain docker/docker-compose environments",
                ..
              }
            ]
        )
        | doc "list of services which are part of this environment"
        | optional,
      ..
    }