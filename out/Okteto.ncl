# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      build
        | {
          _ | {
            args
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | doc "Build arguments, which are environment variables accessible only during the build process. Build arguments with a value containing a $ sign are resolved to the environment variable value on the machine Okteto is running on"
              | optional,
            context
              | String
              | doc "The build context. Relative paths are relative to the location of the Okteto Manifest"
              | optional,
            depends_on
              | Array String
              | doc "List of images that need to be built first"
              | optional,
            dockerfile
              | String
              | doc "The path to the Dockerfile. It's a relative path to the build context"
              | optional,
            image
              | String
              | doc "The name of the image to build and push. In clusters that have Okteto installed, this is optional (if not specified, the Okteto Registry is used)"
              | optional,
            secrets
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | doc "List of secrets exposed to the build. The value of each secret refers to a file. Okteto will resolve references containing a $ sign in this file to environment variables on the machine Okteto is running on"
              | optional,
            target
              | String
              | doc "Build the specified stage as defined inside the Dockerfile"
              | optional,
          }
        }
        | js2n.record.FieldsMatch ".*"
        | doc m%"
          A list of images to build as part of your development environment.
          Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#build-object-optional
        "%
        | optional,
      dependencies
        | std.contract.any_of
          [
            Array String,
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      ".*" =
                        {
                            branch
                              | String
                              | doc "The Git branch to use"
                              | optional,
                            manifest
                              | String
                              | doc "The path to the Okteto manifest file in the repository"
                              | optional,
                            repository
                              | String
                              | doc "The Git repository URL of the dependency",
                            timeout
                              | js2n.string.Matches "^[0-9]+(h|m|s)$"
                              | doc "Maximum time to wait for the dependency to be ready"
                              | optional,
                            variables
                              | js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = { ".*" = String, },
                                  properties = {},
                                  required = {},
                                }
                              | doc "Environment variables to pass to the dependency"
                              | optional,
                            wait
                              | Bool
                              | doc "Whether to wait for the dependency to be ready"
                              | optional,
                          },
                    },
                properties = {},
                required = {},
              }
          ]
        | doc m%"
          A list of repositories you want to deploy as part of your development environment.
          Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#dependencies-string-optional
        "%
        | optional,
      deploy
        | std.contract.any_of
          [
            Array (
              std.contract.any_of
                [
                  String,
                  {
                    command | String | doc "Command to execute",
                    name | String | doc "Name of the command" | optional,
                  }
                ]
            ),
            {
              commands
                | Array (
                  std.contract.any_of
                    [
                      String,
                      {
                        command | String | doc "Command to execute",
                        name | String | doc "Name of the command" | optional,
                      }
                    ]
                )
                | doc "List of commands to execute"
                | optional,
              compose
                | std.contract.any_of
                  [
                    String,
                    {
                      file | String | doc "Path to the compose file",
                      services
                        | Array String
                        | doc "List of services to deploy"
                        | optional,
                    },
                    Array
                      {
                        file | String | doc "Path to the compose file",
                        services
                          | Array String
                          | doc "List of services to deploy"
                          | optional,
                      }
                  ]
                | optional,
              context
                | String
                | doc "The working directory for running the deploy commands. If left empty, it defaults to the directory containing the Okteto Manifest."
                | optional,
              divert
                | {
                  driver
                    | std.enum.TagOrString
                    | [| 'istio |]
                    | doc "The backend for divert. Currently, only 'istio' is supported"
                    | optional,
                  hosts
                    | Array
                      {
                        namespace
                          | String
                          | doc "Namespace of the virtual service"
                          | optional,
                        virtualService
                          | String
                          | doc "Name of the virtual service"
                          | optional,
                      }
                    | doc "List of hosts to divert in the developer namespace"
                    | optional,
                  namespace | String | doc "Namespace of the divert" | optional,
                  virtualServices
                    | Array
                      {
                        name
                          | String
                          | doc "Name of the virtual service"
                          | optional,
                        namespace
                          | String
                          | doc "Namespace of the virtual service"
                          | optional,
                        routes
                          | Array String
                          | doc "List of routes to divert. If empty, all routes are diverted"
                          | optional,
                      }
                    | doc "List of virtual services to divert"
                    | optional,
                }
                | doc "Configuration for diverting traffic between namespaces"
                | optional,
              endpoints
                | Array
                  {
                    path | String | doc "Path for the endpoint",
                    port | std.number.Integer | doc "Port number",
                    service | String | doc "Service name",
                  }
                | doc "List of endpoints"
                | optional,
              image | String | doc "Image to use for deployment" | optional,
              remote | Bool | doc "Whether to run commands remotely" | optional,
            }
          ]
        | doc m%"
          A list of commands to deploy your development environment. It's usually a combination of helm, kubectl, and okteto commands.
          Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#deploy-string-optional
        "%
        | optional,
      destroy
        | std.contract.any_of
          [
            Array (
              std.contract.any_of
                [
                  String,
                  {
                    command | String | doc "Command to execute",
                    name | String | doc "Name of the command" | optional,
                  }
                ]
            ),
            {
              commands
                | Array (
                  std.contract.any_of
                    [
                      String,
                      {
                        command | String | doc "Command to execute",
                        name | String | doc "Name of the command" | optional,
                      }
                    ]
                )
                | doc "List of commands to execute for destroying resources"
                | optional,
              context
                | String
                | doc "The working directory for running the destroy commands. If left empty, it defaults to the directory containing the Okteto Manifest"
                | optional,
              image
                | String
                | doc "Image to use for running destroy commands"
                | optional,
              remote | Bool | doc "Whether to run commands remotely" | optional,
            }
          ]
        | doc m%"
          A list of commands to destroy external resources created by your development environment.
          Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#destroy-string-optional
        "%
        | optional,
      dev
        | {
          _ | {
            affinity
              | { _ | Dyn }
              | doc m%"
                Affinity allows you to constrain which nodes your development container is eligible to be scheduled on, based on labels on the node.
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#affinity-affinity-optional
              "%
              | optional,
            autocreate
              | Bool
              | doc m%"
                If set to true, okteto up creates a deployment if name doesn't match any existing deployment in the current namespace.
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#autocreate-bool-optional
              "%
              | optional,
            command
              | std.contract.any_of [ String, Array String ]
              | doc m%"
                The command of your development container. If empty, it defaults to sh. The command can also be a list.
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#command-string-optional
              "%
              | optional,
            container
              | String
              | doc m%"
                The name of the container in your deployment you want to put on development mode. By default, it takes the first one.
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#container-string-optional
              "%
              | optional,
            envFiles
              | Array String
              | doc m%"
                Add environment variables to your development container from files
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#envfiles
              "%
              | optional,
            environment
              | std.contract.any_of
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            ".*" = std.contract.any_of [ Bool, Number, String ],
                          },
                      properties = {},
                      required = {},
                    },
                  Array String
                ]
              | doc m%"
                Add environment variables to your development container. If a variable already exists on your deployment, it will be overridden with the value specified on the manifest. Environment variables with only a key, or with a value with a $ sign resolve to their values on the machine Okteto is running on
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#environment-string-optional
              "%
              | optional,
            externalVolumes
              | Array String
              | doc m%"
                A list of persistent volume claims that you want to mount in your development container
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#externalvolumes-string-optional
              "%
              | optional,
            forward
              | Array (
                std.contract.any_of
                  [
                    js2n.string.Matches "^[0-9]+:([a-zA-Z0-9-]+:)?[0-9]+$",
                    {
                      labels
                        | js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = { ".*" = String, },
                            properties = {},
                            required = {},
                          }
                        | optional,
                      localPort | std.number.Integer,
                      name | String | optional,
                      remotePort | std.number.Integer,
                    }
                  ]
              )
              | doc m%"
                A list of ports to forward from your development container
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#forward-string-optional
              "%
              | optional,
            image
              | String
              | doc m%"
                Sets the docker image of your development container. Defaults to the image specified in your deployment.
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#image-string-optional
              "%
              | optional,
            imagePullPolicy
              | String
              | doc m%"
                Image pull policy of your development container
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#imagepullpolicy-string-optional
              "%
              | optional,
            initContainer
              | {
                image | String | optional,
                resources | { _ | Dyn } | optional,
              }
              | doc m%"
                Allows you to override the okteto init container configuration of your development container.
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#initcontainer-object-optional
              "%
              | optional,
            interface
              | String
              | doc m%"
                Port forwards and reverse tunnels will be bound to this address.
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#interface-string-optional
              "%
              | optional,
            lifecycle
              | std.contract.any_of
                [
                  Bool,
                  {
                    postStart
                      | {
                        command | String | optional,
                        enabled | Bool | optional,
                      }
                      | optional,
                    preStop
                      | {
                        command | String | optional,
                        enabled | Bool | optional,
                      }
                      | optional,
                  }
                ]
              | doc m%"
                Configures lifecycle hooks for your development container. Lifecycle hooks allow you to execute commands when your container starts or stops, enabling you to automate setup or cleanup tasks.
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#lifecycle-boolean-optional
              "%
              | optional,
            metadata
              | {
                annotations
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = { ".*" = String, },
                      properties = {},
                      required = {},
                    }
                  | optional,
                labels
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = { ".*" = String, },
                      properties = {},
                      required = {},
                    }
                  | optional,
              }
              | doc m%"
                The metadata field allows to inject labels and annotations into your development container.
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#metadata-object-optional
              "%
              | optional,
            mode
              | std.enum.TagOrString
              | [| 'hybrid, 'sync |]
              | doc m%"
                Development mode (sync, hybrid)
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#mode-string-optional
              "%
              | optional,
            nodeSelector
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | doc m%"
                Labels that the node must have to schedule the development container
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#nodeselector-mapstringstring-optional
              "%
              | optional,
            persistentVolume
              | {
                accessMode
                  | String
                  | doc "The Okteto persistent volume access mode"
                  | optional,
                annotations
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = { ".*" = String, },
                      properties = {},
                      required = {},
                    }
                  | doc "Add annotations to the Okteto persistent volume"
                  | optional,
                enabled
                  | Bool
                  | doc "Enable/disable the use of persistent volumes. Must be true if using services, volumes, or to share command history."
                  | optional,
                labels
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = { ".*" = String, },
                      properties = {},
                      required = {},
                    }
                  | doc "Add labels to the Okteto persistent volume"
                  | optional,
                size
                  | String
                  | doc "The size of the Okteto persistent volume"
                  | optional,
                storageClass
                  | String
                  | doc "The storage class of the Okteto persistent volume. Defaults to cluster's default storage class"
                  | optional,
                volumeMode
                  | String
                  | doc "The Okteto persistent volume mode"
                  | optional,
              }
              | doc m%"
                Allows you to configure a persistent volume for your development container.
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#persistentvolume-object-optional
              "%
              | optional,
            priorityClassName
              | String
              | doc m%"
                Priority class name for the development container
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#priorityclassname-string-optional
              "%
              | optional,
            probes
              | std.contract.any_of
                [
                  Bool,
                  {
                    liveness | Bool | optional,
                    readiness | Bool | optional,
                    startup | Bool | optional,
                  }
                ]
              | doc m%"
                Used to enable or disable the Kubernetes probes of your development container. If set to 'true' 
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#probes-boolean-optional
              "%
              | optional,
            remote
              | std.number.Integer
              | doc "Local port for SSH communication"
              | optional,
            resources
              | {
                limits
                  | {
                    cpu | String | optional,
                    ephemeral-storage | String | optional,
                    memory | String | optional,
                  }
                  | optional,
                requests
                  | {
                    cpu | String | optional,
                    ephemeral-storage | String | optional,
                    memory | String | optional,
                  }
                  | optional,
              }
              | doc m%"
                Resource requests and limits for the development container
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#resources-object-optional
              "%
              | optional,
            reverse
              | Array (js2n.string.Matches "^[0-9]+:[0-9]+$")
              | doc "Ports to reverse forward from your development container"
              | optional,
            secrets
              | Array String
              | doc "List of secrets to be injected"
              | optional,
            securityContext
              | {
                allowPrivilegeEscalation | Bool | optional,
                capabilities | { add | Array String | optional, } | optional,
                fsGroup | std.number.Integer | optional,
                runAsGroup | std.number.Integer | optional,
                runAsNonRoot | Bool | optional,
                runAsUser | std.number.Integer | optional,
              }
              | optional,
            selector
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | doc m%"
                The labels of the Kubernetes deployment/statefulset you want to put on development mode. They must identify a single Kubernetes deployment/statefulset.
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#selector-mapstringstring-optional
              "%
              | optional,
            serviceAccount
              | String
              | doc m%"
                Service account for the development container
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#serviceaccount-string-optional
              "%
              | optional,
            services
              | Array
                {
                  annotations | { _ | Dyn } | optional,
                  command | Array String | optional,
                  container | String | optional,
                  environment
                    | js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = { ".*" = String, },
                        properties = {},
                        required = {},
                      }
                    | optional,
                  image | String | optional,
                  labels | { _ | Dyn } | optional,
                  name | String | optional,
                  replicas | std.number.Integer | optional,
                  resources | { _ | Dyn } | optional,
                  sync | Array String | optional,
                  workdir | String | optional,
                }
              | doc m%"
                A list of services that you want to put on developer mode along your development container. The services work just like the development container, with one exception: they won't be able to start an interactive session.
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#services-object-optional
              "%
              | optional,
            sync
              | std.contract.any_of
                [
                  Array (js2n.string.Matches "^.*:.*$"),
                  {
                    compression | Bool | optional,
                    folders | Array String,
                    rescanInterval | std.number.Integer | optional,
                    verbose | Bool | optional,
                  }
                ]
              | doc m%"
                Specifies local folders that must be synchronized to the development container.
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#sync-string-required
              "%
              | optional,
            timeout
              | std.contract.any_of
                [
                  js2n.string.Matches "^[0-9]+(h|m|s)$",
                  {
                    "default"
                      | js2n.string.Matches "^[0-9]+(h|m|s)$"
                      | optional,
                    resources
                      | js2n.string.Matches "^[0-9]+(h|m|s)$"
                      | optional,
                  }
                ]
              | doc m%"
                Maximum time to be waiting for creating a development container until an error is returned.
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#timeout-time-optional
              "%
              | optional,
            tolerations
              | Array ({ _ | Dyn })
              | doc m%"
                A list of tolerations that will be injected into your development container.
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#tolerations-object-optional
              "%
              | optional,
            volumes
              | Array String
              | doc m%"
                A list of paths in your development container that you want to associate to persistent volumes. This is useful to persist information between okteto up executions, like downloaded libraries or cache information. 
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#volumes-string-optional
              "%
              | optional,
            workdir
              | String
              | doc m%"
                Sets the working directory of your development container.
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#workdir-string-optional
              "%
              | optional,
          }
        }
        | js2n.record.FieldsMatch ".*"
        | doc m%"
          A list of development containers to define the behavior of okteto up and synchronize your code in your development environment.
          Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#dev-object-optional
        "%
        | optional,
      external
        | {
          _ | {
            endpoints
              | Array
                {
                  name | String | doc "The name of the endpoint",
                  url
                    | String
                    | doc "The url of the endpoint. Can be set dynamically during deployment using $OKTETO_EXTERNAL_{EXTERNAL_NAME}_ENDPOINTS_{ENDPOINT_NAME}_URL"
                    | optional,
                }
              | doc m%"
                List of endpoints to access the external resource
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#endpoints-object-required
              "%,
            icon
              | std.enum.TagOrString
              | [|
                'okteto,
                'aws,
                'gcp,
                'mongodb,
                'launchdarkly,
                'storage,
                'graph,
                'function,
                'database,
                'dashboard,
                'container,
                '"default"
              |]
              | doc m%"
                Icon to represent the external resource
                Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#icon-string-optional
              "%
              | optional,
            notes
              | String
              | doc "Path to documentation or notes about the external resource"
              | optional,
          }
        }
        | js2n.record.FieldsMatch ".*"
        | doc "A list of external resources that are part of your development environment. Use this section for resources that are deployed outside of the Okteto cluster"
        | optional,
      forward
        | Array (
          std.contract.any_of
            [
              js2n.string.Matches "^\\d+:[^:]+:\\d+$|^\\d+:\\d+$",
              std.contract.Sequence
                [
                  js2n.OneOf
                    [
                      std.contract.Sequence
                        [
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "name" ],
                              Array Dyn
                            ],
                          std.contract.not
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "labels" ],
                                Array Dyn
                              ])
                        ],
                      std.contract.Sequence
                        [
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "labels" ],
                              Array Dyn
                            ],
                          std.contract.not
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "name" ],
                                Array Dyn
                              ])
                        ],
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "name" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "labels" ],
                            Array Dyn
                          ])
                    ],
                  {
                    labels
                      | js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = { ".*" = String, },
                          properties = {},
                          required = {},
                        }
                      | doc "Labels to select the service to forward to"
                      | optional,
                    localPort
                      | std.number.Integer
                      | doc "Local port to forward from",
                    name
                      | String
                      | doc "Name of the service to forward to"
                      | optional,
                    remotePort
                      | std.number.Integer
                      | doc "Remote port to forward to",
                  }
                ]
            ]
        )
        | doc m%"
          Global port forwards to handle port collisions automatically between multiple okteto up sessions.
          Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#forward-string-optional-1
        "%
        | optional,
      icon
        | String
        | doc m%"
          The icon associated to your development environment in the Okteto UI.
          Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#icon-string-optional-1
        "%
        | optional,
      name
        | String
        | doc m%"
          The name of your development environment. It defaults to the name of your git repository.
          Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#name-string-optional
        "%
        | optional,
      test
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".*" =
                    {
                        artifacts
                          | Array String
                          | doc m%"
                            A list of files and/or folder to be exported after the execution of the tests. They will be added relative to root context of the tests. If you want to export coverage reports and test results this is where they should go.
                            Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#artifacts-string-optional
                          "%
                          | optional,
                        caches
                          | Array String
                          | doc m%"
                            A list of cache mounts to be used as part of running the tests. This is used to speed up recurrent test executions where, for example, dependencies will not be reinstalled and will instead be mounted from the cache.
                            Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#caches-string-optional
                          "%
                          | optional,
                        commands
                          | Array (
                            std.contract.any_of
                              [
                                String,
                                {
                                  command | String | doc "Command to execute",
                                  name
                                    | String
                                    | doc "Name of the command"
                                    | optional,
                                }
                              ]
                          )
                          | doc m%"
                            Provide a list of commands to run the tests. For the tests to be considered successful, each command must exit with a zero exit code. If any command returns a non-zero exit code, the Test Container will be marked as failed
                            Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#commands-string-required
                          "%,
                        context
                          | String
                          | doc m%"
                            The folder to use as the root for running the tests. If this is empty, the location of the Okteto Manifest will be used (usually the root of the project).
                            Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#context-string-optional
                          "%
                          | optional,
                        depends_on
                          | Array String
                          | doc m%"
                            A list of Test Containers this test depends on. When a Test Container is executed, all its dependencies are executed first. The Test Containers defined in depends_on must exist in the current Okteto Manifest.
                            Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#depends_on-string-optional
                          "%
                          | optional,
                        hosts
                          | Array (
                            std.contract.any_of
                              [
                                js2n.string.Matches "^[a-zA-Z0-9.-]+:[0-9.]+$",
                                { hostname | String, ip | String, }
                              ]
                          )
                          | doc m%"
                            A list of hostnames and ips. For each pair, an entry is created in /etc/hosts during the test execution. The following extended notation is also supported: hosts[0].hostname=hostname1 hosts[0].ip=ip1
                            Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#hosts-string-optional
                          "%
                          | optional,
                        image
                          | String
                          | doc m%"
                            The base image used to run your test.
                            Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#image-string-optional-1
                          "%
                          | optional,
                        skipIfNoFileChanges
                          | Bool
                          | doc "Skip the test execution if no files have changed since the last test run. This is useful to avoid running tests when the code hasn't changed."
                          | optional,
                      },
                },
            properties = {},
            required = {},
          }
        | doc m%"
          A dictionary of Test Containers to run tests using Remote Execution.
          Documentation: https://www.okteto.com/docs/reference/okteto-manifest/#test-object-optional
        "%
        | optional,
    }