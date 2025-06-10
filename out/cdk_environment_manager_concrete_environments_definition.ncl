# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "additionalProperties.anyOf.0" =
        js2n.record.Record
            {
              additional = 'Some js2n.Always,
              patterns = {},
              properties =
                {
                    config-set =
                      {
                          _ | {
                            additionalLabels
                              | {
                                deployment
                                  | js2n.Always
                                  | { _ | Dyn }
                                  | doc "List of labels for deployments"
                                  | optional,
                                service
                                  | { _ | String }
                                  | js2n.record.FieldsMatch "^.*$"
                                  | doc "List of labels for services"
                                  | optional,
                              }
                              | optional,
                            config-files
                              | Array
                                {
                                  isBinaryFile
                                    | Bool
                                    | doc "Whether the file is binary. Needed for kubernetes environments so that binaryData is used in the ConfigMap."
                                    | optional,
                                  source
                                    | String
                                    | doc "name of the source file"
                                    | optional,
                                  target
                                    | String
                                    | doc "name & path of the file inside the container"
                                    | optional,
                                  ..
                                }
                              | doc "configuration files to be mapped into the pod"
                              | optional,
                            customData
                              | {  .. }
                              | doc "Custom data object which will be passed as is into the render context"
                              | optional,
                            deploymentResources
                              | js2n.Always
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
                                      | js2n.OneOf [ Number, js2n.Always ]
                                      | doc "Maximum temporary excess number of pods above the desired number of replicas"
                                      | optional,
                                    maxUnavailable
                                      | js2n.OneOf [ Number, js2n.Always ]
                                      | doc "Maximum temporarily lacking pods compared to the desired number of replicas"
                                      | optional,
                                    timeoutSeconds
                                      | js2n.OneOf [ Number, js2n.Always ]
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
                            expose
                              | std.contract.any_of
                                [
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
                                  Array js2n.Always
                                ]
                              | optional,
                            external-ip | String | optional,
                            external-port | Number | optional,
                            host-aliases
                              | Array
                                {
                                  hostnames
                                    | Array
                                      {
                                        hostname
                                          | String
                                          | doc "Hostname"
                                          | optional,
                                        ..
                                      }
                                    | optional,
                                  ip
                                    | String
                                    | doc "IP of the hostalias"
                                    | optional,
                                  ..
                                }
                              | doc "Host entries added to /etc/hosts file"
                              | optional,
                            liveness
                              | js2n.Always
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
                              | Array Dyn
                              | doc "Label for a desired node selector"
                              | optional,
                            podAntiAffinity
                              | Array Dyn
                              | doc "podAntiAffinity"
                              | optional,
                            port-override
                              | Array (
                                std.contract.any_of
                                  [
                                    Number,
                                    {
                                      externalPort
                                        | Number
                                        | doc "port number exposed to clients (service port). If omitted implicitly equal to the port"
                                        | optional,
                                      nodePort
                                        | js2n.OneOf [ Number, js2n.Always ]
                                        | doc "port number exposed on the Kubernetes cluster nodes. This generates a separate Service of type NodePort, if set."
                                        | optional,
                                      port
                                        | Number
                                        | doc "port number exposed by the container"
                                        | optional,
                                      portLabel
                                        | String
                                        | doc "name of the port"
                                        | optional,
                                      ..
                                    }
                                  ]
                              )
                              | doc "ports exposed by the service"
                              | optional,
                            pull-policy
                              | std.enum.TagOrString
                              | [| 'Always, 'IfNotPresent |]
                              | doc "Image pull policy for openshift. Default: IfNotPresent"
                              | optional,
                            readiness
                              | js2n.Always
                              | { _ | Dyn }
                              | doc "Defines a check, failure of which leads to the service not receiving any requests"
                              | optional,
                            replicas
                              | std.contract.any_of
                                [
                                  Number,
                                  String,
                                  js2n.string.Matches "\\$\\{\\{?.+\\}?\\}"
                                ]
                              | doc "Number of desired instances."
                              | optional,
                            resources
                              | js2n.Always
                              | doc "Specifies resource usage of a container instance"
                              | optional,
                            revisionHistoryLimit
                              | Number
                              | doc "(K8s/OpenShift only) The number of old ReplicationControllers to retain to allow for rollbacks"
                              | optional,
                            secret-files
                              | Array
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
                                }
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
                              | js2n.OneOf
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
                                                scheme =
                                                  js2n.string.Matches
                                                      "(HTTP|HTTPS)",
                                              },
                                          required =
                                            { path = true, port = true, },
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
                                                          additional =
                                                            'Some Dyn,
                                                          patterns = {},
                                                          properties =
                                                            { arg = String, },
                                                          required = {},
                                                        }),
                                              },
                                          required = { commands = true, },
                                        },
                                      Array Dyn
                                    ]
                                ]
                              | {
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
                              | doc "A startup probe indicates whether the application within a container is started. All other probes are disabled until the startup succeeds"
                              | optional,
                            template-parameters | Array js2n.Always | optional,
                            tolerations
                              | Array
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
                                }
                              | doc "Tolerations section for Openshift"
                              | optional,
                            volumes
                              | std.contract.any_of
                                [
                                  Array
                                    {
                                      path
                                        | String
                                        | doc "path onto which the volume will be mounted",
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
                                  {  .. }
                                ]
                              | optional,
                            ..
                          }
                        },
                    critical = Bool,
                    exclusions = Array String,
                    global-template-parameters = Array js2n.Always,
                    hostname = String,
                    image-pull-secret = String,
                    include = Array String,
                    includes = Array String,
                    remote-project = String,
                    resource-quota =
                      {
                          limits
                            | {
                              cpu
                                | js2n.OneOf
                                  [ js2n.Always, js2n.string.Matches "\\d+m?" ]
                                | doc "The number of cores, can be specified as integer cores, or in milli-cores (eg: '100m')",
                              memory
                                | js2n.OneOf
                                  [
                                    js2n.string.Matches "\\d+(M|G|Mi|Gi)",
                                    js2n.Always
                                  ]
                                | doc "The amount of main memory in either of M,G (base 10) or Mi, Gi (base 2). (eg: '3Gi')",
                              ..
                            }
                            | doc "Upper limits of resources available to a container instance"
                            | optional,
                          requests
                            | js2n.Always
                            | { _ | Dyn }
                            | doc "Amount of resources necessary to run a container instance. Must be less than limits."
                            | optional,
                          ..
                        },
                    route-mode =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'service-mesh |] ],
                    server = String,
                    tags = { _ | String },
                    target =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'kubernetes, 'openshift, 'docker-compose |]
                          ],
                    template-parameters =
                      Array
                          {
                            description | String,
                            name | String,
                            value | String,
                            ..
                          },
                  },
              required = {},
            },
    }
    in
  js2n.record.Record
      {
        additional =
          'Some
              (std.contract.any_of
                [
                  js2n.record.Record
                    {
                      additional =
                        'Some
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                { _ | Dyn },
                                Array Dyn,
                                Number,
                                String
                              ]),
                      patterns = {},
                      properties =
                        {
                            config-set =
                              js2n.record.Record
                                  {
                                    additional =
                                      'Some
                                          (js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    additionalLabels =
                                                      js2n.record.Record
                                                          {
                                                            additional = 'None,
                                                            patterns = {},
                                                            properties =
                                                              {
                                                                  deployment =
                                                                    { _ | Dyn },
                                                                  service =
                                                                    js2n.record.Record
                                                                        {
                                                                          additional =
                                                                            'None,
                                                                          patterns =
                                                                            {
                                                                                "^.*$" =
                                                                                  String,
                                                                              },
                                                                          properties =
                                                                            {},
                                                                          required =
                                                                            {},
                                                                        },
                                                                },
                                                            required = {},
                                                          },
                                                    config-files =
                                                      js2n.array.ArrayOf
                                                          (js2n.record.Record
                                                            {
                                                              additional =
                                                                'Some Dyn,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    isBinaryFile =
                                                                      Bool,
                                                                    source =
                                                                      String,
                                                                    target =
                                                                      String,
                                                                  },
                                                              required = {},
                                                            }),
                                                    customData =
                                                      { _ | js2n.Always },
                                                    deploymentResources =
                                                      { _ | Dyn },
                                                    deploymentStrategy =
                                                      js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some Dyn,
                                                            patterns = {},
                                                            properties =
                                                              {
                                                                  params =
                                                                    js2n.record.Record
                                                                        {
                                                                          additional =
                                                                            'Some
                                                                                Dyn,
                                                                          patterns =
                                                                            {},
                                                                          properties =
                                                                            {
                                                                                intervalSeconds =
                                                                                  Number,
                                                                                maxSurge =
                                                                                  js2n.OneOf
                                                                                      [
                                                                                        Number,
                                                                                        std.contract.any_of
                                                                                          [
                                                                                            js2n.Null,
                                                                                            Bool,
                                                                                            {
                                                                                              _ | Dyn
                                                                                            },
                                                                                            Array
                                                                                              Dyn,
                                                                                            Number,
                                                                                            String
                                                                                          ]
                                                                                      ],
                                                                                maxUnavailable =
                                                                                  js2n.OneOf
                                                                                      [
                                                                                        Number,
                                                                                        std.contract.any_of
                                                                                          [
                                                                                            js2n.Null,
                                                                                            Bool,
                                                                                            {
                                                                                              _ | Dyn
                                                                                            },
                                                                                            Array
                                                                                              Dyn,
                                                                                            Number,
                                                                                            String
                                                                                          ]
                                                                                      ],
                                                                                timeoutSeconds =
                                                                                  js2n.OneOf
                                                                                      [
                                                                                        Number,
                                                                                        std.contract.any_of
                                                                                          [
                                                                                            js2n.Null,
                                                                                            Bool,
                                                                                            {
                                                                                              _ | Dyn
                                                                                            },
                                                                                            Array
                                                                                              Dyn,
                                                                                            Number,
                                                                                            String
                                                                                          ]
                                                                                      ],
                                                                                updatePeriodSeconds =
                                                                                  Number,
                                                                              },
                                                                          required =
                                                                            {},
                                                                        },
                                                                  type =
                                                                    std.contract.Sequence
                                                                        [
                                                                          std.enum.TagOrString,
                                                                          [|
                                                                            'Recreate,
                                                                            'Rolling
                                                                          |]
                                                                        ],
                                                                },
                                                            required = {},
                                                          },
                                                    disableAutomountServiceAccountToken =
                                                      Bool,
                                                    disableServiceLinks = Bool,
                                                    entrypoint = String,
                                                    environment =
                                                      js2n.record.Record
                                                          {
                                                            additional = 'None,
                                                            patterns =
                                                              {
                                                                  "^.*$" =
                                                                    std.contract.any_of
                                                                        [
                                                                          js2n.record.Record
                                                                            {
                                                                              additional =
                                                                                'None,
                                                                              patterns =
                                                                                {},
                                                                              properties =
                                                                                {
                                                                                    key =
                                                                                      String,
                                                                                    keyRefName =
                                                                                      String,
                                                                                  },
                                                                              required =
                                                                                {},
                                                                            },
                                                                          String,
                                                                          Number,
                                                                          Bool
                                                                        ],
                                                                },
                                                            properties = {},
                                                            required = {},
                                                          },
                                                    expose =
                                                      std.contract.any_of
                                                          [
                                                            js2n.record.Record
                                                              {
                                                                additional =
                                                                  'Some Dyn,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      hostname =
                                                                        String,
                                                                      path =
                                                                        js2n.array.ArrayOf
                                                                            String,
                                                                      port =
                                                                        std.number.Integer,
                                                                      tls-termination =
                                                                        std.contract.Sequence
                                                                            [
                                                                              std.enum.TagOrString,
                                                                              [|
                                                                                'reencrypt,
                                                                                'passthrough,
                                                                                'edge
                                                                              |]
                                                                            ],
                                                                    },
                                                                required =
                                                                  {
                                                                      path =
                                                                        true,
                                                                    },
                                                              },
                                                            js2n.array.ArrayOf
                                                              (std.contract.any_of
                                                                [
                                                                  js2n.Null,
                                                                  Bool,
                                                                  { _ | Dyn },
                                                                  Array Dyn,
                                                                  Number,
                                                                  String
                                                                ])
                                                          ],
                                                    external-ip = String,
                                                    external-port = Number,
                                                    host-aliases =
                                                      js2n.array.ArrayOf
                                                          (js2n.record.Record
                                                            {
                                                              additional =
                                                                'Some Dyn,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    hostnames =
                                                                      js2n.array.ArrayOf
                                                                          (js2n.record.Record
                                                                            {
                                                                              additional =
                                                                                'Some
                                                                                    Dyn,
                                                                              patterns =
                                                                                {},
                                                                              properties =
                                                                                {
                                                                                    hostname =
                                                                                      String,
                                                                                  },
                                                                              required =
                                                                                {},
                                                                            }),
                                                                    ip = String,
                                                                  },
                                                              required = {},
                                                            }),
                                                    liveness = { _ | Dyn },
                                                    needsDbSchema = Bool,
                                                    nlb = Bool,
                                                    nodeSelector = Array Dyn,
                                                    podAntiAffinity = Array Dyn,
                                                    port-override =
                                                      js2n.array.ArrayOf
                                                          (std.contract.any_of
                                                            [
                                                              Number,
                                                              js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'Some Dyn,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        externalPort =
                                                                          Number,
                                                                        nodePort =
                                                                          js2n.OneOf
                                                                              [
                                                                                Number,
                                                                                std.contract.any_of
                                                                                  [
                                                                                    js2n.Null,
                                                                                    Bool,
                                                                                    {
                                                                                      _ | Dyn
                                                                                    },
                                                                                    Array
                                                                                      Dyn,
                                                                                    Number,
                                                                                    String
                                                                                  ]
                                                                              ],
                                                                        port =
                                                                          Number,
                                                                        portLabel =
                                                                          String,
                                                                      },
                                                                  required = {},
                                                                }
                                                            ]),
                                                    pull-policy =
                                                      std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [|
                                                              'Always,
                                                              'IfNotPresent
                                                            |]
                                                          ],
                                                    readiness = { _ | Dyn },
                                                    replicas =
                                                      std.contract.any_of
                                                          [
                                                            Number,
                                                            String,
                                                            js2n.string.Matches
                                                              "\\$\\{\\{?.+\\}?\\}"
                                                          ],
                                                    resources =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ],
                                                    revisionHistoryLimit =
                                                      Number,
                                                    secret-files =
                                                      js2n.array.ArrayOf
                                                          (js2n.record.Record
                                                            {
                                                              additional =
                                                                'Some Dyn,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    key =
                                                                      String,
                                                                    mountPath =
                                                                      String,
                                                                    secret =
                                                                      String,
                                                                    target =
                                                                      String,
                                                                  },
                                                              required =
                                                                {
                                                                    mountPath =
                                                                      true,
                                                                    secret =
                                                                      true,
                                                                  },
                                                            }),
                                                    service-account = String,
                                                    service-account-name =
                                                      String,
                                                    startup =
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
                                                                        additional =
                                                                          'Some
                                                                              Dyn,
                                                                        patterns =
                                                                          {},
                                                                        properties =
                                                                          {
                                                                              path =
                                                                                String,
                                                                              port =
                                                                                String,
                                                                              scheme =
                                                                                js2n.string.Matches
                                                                                    "(HTTP|HTTPS)",
                                                                            },
                                                                        required =
                                                                          {
                                                                              path =
                                                                                true,
                                                                              port =
                                                                                true,
                                                                            },
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
                                                                        additional =
                                                                          'Some
                                                                              Dyn,
                                                                        patterns =
                                                                          {},
                                                                        properties =
                                                                          {
                                                                              tcpSocket =
                                                                                String,
                                                                            },
                                                                        required =
                                                                          {
                                                                              tcpSocket =
                                                                                true,
                                                                            },
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
                                                                        additional =
                                                                          'Some
                                                                              Dyn,
                                                                        patterns =
                                                                          {},
                                                                        properties =
                                                                          {
                                                                              commands =
                                                                                js2n.array.ArrayOf
                                                                                    (js2n.record.Record
                                                                                      {
                                                                                        additional =
                                                                                          'Some
                                                                                              Dyn,
                                                                                        patterns =
                                                                                          {},
                                                                                        properties =
                                                                                          {
                                                                                              arg =
                                                                                                String,
                                                                                            },
                                                                                        required =
                                                                                          {},
                                                                                      }),
                                                                            },
                                                                        required =
                                                                          {
                                                                              commands =
                                                                                true,
                                                                            },
                                                                      },
                                                                    Array Dyn
                                                                  ]
                                                              ],
                                                            js2n.record.Record
                                                              {
                                                                additional =
                                                                  'Some Dyn,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      failureThreshold =
                                                                        std.contract.Sequence
                                                                            [
                                                                              std.number.Integer,
                                                                              js2n.number.Minimum
                                                                                1
                                                                            ],
                                                                      initialDelay =
                                                                        Number,
                                                                      successThreshold =
                                                                        std.contract.Sequence
                                                                            [
                                                                              std.number.Integer,
                                                                              js2n.number.Minimum
                                                                                1
                                                                            ],
                                                                      timeout =
                                                                        Number,
                                                                    },
                                                                required = {},
                                                              }
                                                          ],
                                                    template-parameters =
                                                      js2n.array.ArrayOf
                                                          (std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ]),
                                                    tolerations =
                                                      js2n.array.ArrayOf
                                                          (js2n.record.Record
                                                            {
                                                              additional =
                                                                'Some Dyn,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    effect =
                                                                      String,
                                                                    key =
                                                                      String,
                                                                    operator =
                                                                      String,
                                                                    value =
                                                                      String,
                                                                  },
                                                              required = {},
                                                            }),
                                                    volumes =
                                                      std.contract.any_of
                                                          [
                                                            js2n.array.ArrayOf
                                                              (js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'Some Dyn,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        path =
                                                                          String,
                                                                        persistentVolumeClaimName =
                                                                          String,
                                                                        shared =
                                                                          Bool,
                                                                        size =
                                                                          js2n.string.Matches
                                                                              "\\d+(M|G|Mi|Gi)",
                                                                      },
                                                                  required =
                                                                    {
                                                                        path =
                                                                          true,
                                                                      },
                                                                }),
                                                            { _ | js2n.Always }
                                                          ],
                                                  },
                                              required = {},
                                            }),
                                    patterns = {},
                                    properties = {},
                                    required = {},
                                  },
                            critical = Bool,
                            exclusions = js2n.array.ArrayOf String,
                            global-template-parameters =
                              js2n.array.ArrayOf
                                  (std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ]),
                            hostname = String,
                            image-pull-secret = String,
                            include = js2n.array.ArrayOf String,
                            includes = js2n.array.ArrayOf String,
                            remote-project = String,
                            resource-quota =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          limits =
                                            js2n.record.Record
                                                {
                                                  additional = 'Some Dyn,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        cpu =
                                                          js2n.OneOf
                                                              [
                                                                std.contract.any_of
                                                                  [
                                                                    js2n.Null,
                                                                    Bool,
                                                                    { _ | Dyn },
                                                                    Array Dyn,
                                                                    Number,
                                                                    String
                                                                  ],
                                                                js2n.string.Matches
                                                                  "\\d+m?"
                                                              ],
                                                        memory =
                                                          js2n.OneOf
                                                              [
                                                                js2n.string.Matches
                                                                  "\\d+(M|G|Mi|Gi)",
                                                                std.contract.any_of
                                                                  [
                                                                    js2n.Null,
                                                                    Bool,
                                                                    { _ | Dyn },
                                                                    Array Dyn,
                                                                    Number,
                                                                    String
                                                                  ]
                                                              ],
                                                      },
                                                  required =
                                                    {
                                                        cpu = true,
                                                        memory = true,
                                                      },
                                                },
                                          requests = { _ | Dyn },
                                        },
                                    required = {},
                                  },
                            route-mode =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'service-mesh |] ],
                            server = String,
                            tags =
                              js2n.record.Record
                                  {
                                    additional = 'Some String,
                                    patterns = {},
                                    properties = {},
                                    required = {},
                                  },
                            target =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [|
                                      'kubernetes,
                                      'openshift,
                                      'docker-compose
                                    |]
                                  ],
                            template-parameters =
                              js2n.array.ArrayOf
                                  (js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        {
                                            description = String,
                                            name = String,
                                            value = String,
                                          },
                                      required =
                                        {
                                            description = true,
                                            name = true,
                                            value = true,
                                          },
                                    }),
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            "$ref" =
                              std.contract.any_of
                                  [ String, js2n.array.ArrayOf String ],
                          },
                      required = {},
                    }
                ]),
        patterns = {},
        properties =
          { "$schema" = String, all = refs."additionalProperties.anyOf.0", },
        required = {},
      }