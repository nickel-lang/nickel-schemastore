# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      attributes
        | {  .. }
        | doc "Map of implementation-dependant free-form YAML attributes."
        | optional,
      commands
        | Array (
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
                      js2n.record.Required [ "exec" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "apply" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "composite" ],
                      Array Dyn
                    ]
                ],
              {
                apply
                  | {
                    component
                      | String
                      | doc "Describes component that will be applied",
                    group
                      | {
                        isDefault
                          | Bool
                          | doc "Identifies the default command for a given group kind"
                          | optional,
                        kind
                          | std.enum.TagOrString
                          | [| 'deploy, 'debug, 'test, 'run, 'build |]
                          | doc "Kind of group the command is part of",
                      }
                      | doc "Defines the group this command is part of"
                      | optional,
                    label
                      | String
                      | doc "Optional label that provides a label for this command to be used in Editor UI menus for example"
                      | optional,
                  }
                  | doc m%"
                    Command that consists in applying a given component definition, typically bound to a devworkspace event.
                    
                    For example, when an `apply` command is bound to a `preStart` event, and references a `container` component, it will start the container as a K8S initContainer in the devworkspace POD, unless the component has its `dedicatedPod` field set to `true`.
                    
                    When no `apply` command exist for a given component, it is assumed the component will be applied at devworkspace start by default, unless `deployByDefault` for that component is set to false.
                  "%
                  | optional,
                attributes
                  | {  .. }
                  | doc "Map of implementation-dependant free-form YAML attributes."
                  | optional,
                composite
                  | {
                    commands
                      | Array String
                      | doc "The commands that comprise this composite command"
                      | optional,
                    group
                      | {
                        isDefault
                          | Bool
                          | doc "Identifies the default command for a given group kind"
                          | optional,
                        kind
                          | std.enum.TagOrString
                          | [| 'deploy, 'debug, 'test, 'run, 'build |]
                          | doc "Kind of group the command is part of",
                      }
                      | doc "Defines the group this command is part of"
                      | optional,
                    label
                      | String
                      | doc "Optional label that provides a label for this command to be used in Editor UI menus for example"
                      | optional,
                    parallel
                      | Bool
                      | doc "Indicates if the sub-commands should be executed concurrently"
                      | optional,
                  }
                  | doc "Composite command that allows executing several sub-commands either sequentially or concurrently"
                  | optional,
                exec
                  | {
                    commandLine
                      | String
                      | doc m%"
                        The actual command-line string
                        
                        Special variables that can be used:
                        
                         - `$PROJECTS_ROOT`: A path where projects sources are mounted as defined by container component's sourceMapping.
                        
                         - `$PROJECT_SOURCE`: A path to a project source ($PROJECTS_ROOT/<project-name>). If there are multiple projects, this will point to the directory of the first one.
                      "%,
                    component
                      | String
                      | doc "Describes component to which given action relates",
                    env
                      | Array { name | String, value | String, }
                      | doc "Optional list of environment variables that have to be set before running the command"
                      | optional,
                    group
                      | {
                        isDefault
                          | Bool
                          | doc "Identifies the default command for a given group kind"
                          | optional,
                        kind
                          | std.enum.TagOrString
                          | [| 'deploy, 'debug, 'test, 'run, 'build |]
                          | doc "Kind of group the command is part of",
                      }
                      | doc "Defines the group this command is part of"
                      | optional,
                    hotReloadCapable
                      | Bool
                      | doc m%"
                        Whether the command is capable to reload itself when source code changes. If set to `true` the command won't be restarted and it is expected to handle file changes on its own.
                        
                        Default value is `false`
                      "%
                      | optional,
                    label
                      | String
                      | doc "Optional label that provides a label for this command to be used in Editor UI menus for example"
                      | optional,
                    workingDir
                      | String
                      | doc m%"
                        Working directory where the command should be executed
                        
                        Special variables that can be used:
                        
                         - `$PROJECTS_ROOT`: A path where projects sources are mounted as defined by container component's sourceMapping.
                        
                         - `$PROJECT_SOURCE`: A path to a project source ($PROJECTS_ROOT/<project-name>). If there are multiple projects, this will point to the directory of the first one.
                      "%
                      | optional,
                  }
                  | doc "CLI Command executed in an existing component container"
                  | optional,
                id
                  | js2n.string.MaxLength 63
                  | js2n.string.Matches "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$"
                  | doc "Mandatory identifier that allows referencing this command in composite commands, from a parent, or in events.",
              }
            ]
        )
        | doc "Predefined, ready-to-use, devworkspace-related commands"
        | optional,
      components
        | Array (
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
                      js2n.record.Required [ "container" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "kubernetes" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "openshift" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "volume" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "image" ],
                      Array Dyn
                    ]
                ],
              {
                attributes
                  | {  .. }
                  | doc "Map of implementation-dependant free-form YAML attributes."
                  | optional,
                container
                  | {
                    annotation
                      | {
                        deployment
                          | { _ | String }
                          | doc "Annotations to be added to deployment"
                          | optional,
                        service
                          | { _ | String }
                          | doc "Annotations to be added to service"
                          | optional,
                      }
                      | doc "Annotations that should be added to specific resources for this container"
                      | optional,
                    args
                      | Array String
                      | doc m%"
                        The arguments to supply to the command running the dockerimage component. The arguments are supplied either to the default command provided in the image or to the overridden command.
                        
                        Defaults to an empty array, meaning use whatever is defined in the image.
                      "%
                      | optional,
                    command
                      | Array String
                      | doc m%"
                        The command to run in the dockerimage component instead of the default one provided in the image.
                        
                        Defaults to an empty array, meaning use whatever is defined in the image.
                      "%
                      | optional,
                    cpuLimit | String | optional,
                    cpuRequest | String | optional,
                    dedicatedPod
                      | Bool
                      | doc m%"
                        Specify if a container should run in its own separated pod, instead of running as part of the main development environment pod.
                        
                        Default value is `false`
                      "%
                      | optional,
                    endpoints
                      | Array
                        {
                          annotation
                            | { _ | String }
                            | doc "Annotations to be added to Kubernetes Ingress or Openshift Route"
                            | optional,
                          attributes
                            | {  .. }
                            | doc m%"
                              Map of implementation-dependant string-based free-form attributes.
                              
                              Examples of Che-specific attributes:
                              - cookiesAuthEnabled: "true" / "false",
                              - type: "terminal" / "ide" / "ide-dev",
                            "%
                            | optional,
                          exposure
                            | std.enum.TagOrString
                            | [| 'none, 'internal, 'public |]
                            | doc m%"
                              Describes how the endpoint should be exposed on the network.
                              - `public` means that the endpoint will be exposed on the public network, typically through a K8S ingress or an OpenShift route.
                              - `internal` means that the endpoint will be exposed internally outside of the main devworkspace POD, typically by K8S services, to be consumed by other elements running on the same cloud internal network.
                              - `none` means that the endpoint will not be exposed and will only be accessible inside the main devworkspace POD, on a local address.
                              
                              Default value is `public`
                            "%
                            | optional,
                          name
                            | js2n.string.MaxLength 15
                            | js2n.string.Matches
                              "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$",
                          path
                            | String
                            | doc "Path of the endpoint URL"
                            | optional,
                          protocol
                            | std.enum.TagOrString
                            | [| 'udp, 'tcp, 'wss, 'ws, 'https, 'http |]
                            | doc m%"
                              Describes the application and transport protocols of the traffic that will go through this endpoint.
                              - `http`: Endpoint will have `http` traffic, typically on a TCP connection. It will be automaticaly promoted to `https` when the `secure` field is set to `true`.
                              - `https`: Endpoint will have `https` traffic, typically on a TCP connection.
                              - `ws`: Endpoint will have `ws` traffic, typically on a TCP connection. It will be automaticaly promoted to `wss` when the `secure` field is set to `true`.
                              - `wss`: Endpoint will have `wss` traffic, typically on a TCP connection.
                              - `tcp`: Endpoint will have traffic on a TCP connection, without specifying an application protocol.
                              - `udp`: Endpoint will have traffic on an UDP connection, without specifying an application protocol.
                              
                              Default value is `http`
                            "%
                            | optional,
                          secure
                            | Bool
                            | doc "Describes whether the endpoint should be secured and protected by some authentication process. This requires a protocol of `https` or `wss`."
                            | optional,
                          targetPort
                            | std.number.Integer
                            | doc "Port number to be used within the container component. The same port cannot be used by two different container components.",
                        }
                      | optional,
                    env
                      | Array { name | String, value | String, }
                      | doc m%"
                        Environment variables used in this container.
                        
                        The following variables are reserved and cannot be overridden via env:
                        
                         - `$PROJECTS_ROOT`
                        
                         - `$PROJECT_SOURCE`
                      "%
                      | optional,
                    image | String,
                    memoryLimit | String | optional,
                    memoryRequest | String | optional,
                    mountSources
                      | Bool
                      | doc m%"
                        Toggles whether or not the project source code should be mounted in the component.
                        
                        Defaults to true for all component types except plugins and components that set `dedicatedPod` to true.
                      "%
                      | optional,
                    sourceMapping
                      | String
                      | doc "Optional specification of the path in the container where project sources should be transferred/mounted when `mountSources` is `true`. When omitted, the default value of /projects is used."
                      | optional,
                    volumeMounts
                      | Array
                        {
                          name
                            | js2n.string.MaxLength 63
                            | js2n.string.Matches
                              "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$"
                            | doc "The volume mount name is the name of an existing `Volume` component. If several containers mount the same volume name then they will reuse the same volume and will be able to access to the same files.",
                          path
                            | String
                            | doc "The path in the component container where the volume should be mounted. If not path is mentioned, default path is the is `/<name>`."
                            | optional,
                        }
                      | doc "List of volumes mounts that should be mounted is this container."
                      | optional,
                  }
                  | doc "Allows adding and configuring devworkspace-related containers"
                  | optional,
                image
                  | {
                    autoBuild
                      | Bool
                      | doc m%"
                        Defines if the image should be built during startup.
                        
                        Default value is `false`
                      "%
                      | optional,
                    dockerfile
                      | js2n.OneOf
                        [
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "uri" ],
                              Array Dyn
                            ],
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "devfileRegistry" ],
                              Array Dyn
                            ],
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "git" ],
                              Array Dyn
                            ]
                        ]
                      | {
                        args
                          | Array String
                          | doc "The arguments to supply to the dockerfile build."
                          | optional,
                        buildContext
                          | String
                          | doc "Path of source directory to establish build context. Defaults to ${PROJECT_SOURCE} in the container"
                          | optional,
                        devfileRegistry
                          | {
                            id
                              | String
                              | doc "Id in a devfile registry that contains a Dockerfile. The src in the OCI registry required for the Dockerfile build will be downloaded for building the image.",
                            registryUrl
                              | String
                              | doc "Devfile Registry URL to pull the Dockerfile from when using the Devfile Registry as Dockerfile src. To ensure the Dockerfile gets resolved consistently in different environments, it is recommended to always specify the `devfileRegistryUrl` when `Id` is used."
                              | optional,
                          }
                          | doc "Dockerfile's Devfile Registry source"
                          | optional,
                        git
                          | {
                            checkoutFrom
                              | {
                                remote
                                  | String
                                  | doc "The remote name should be used as init. Required if there are more than one remote configured"
                                  | optional,
                                revision
                                  | String
                                  | doc "The revision to checkout from. Should be branch name, tag or commit id. Default branch is used if missing or specified revision is not found."
                                  | optional,
                              }
                              | doc "Defines from what the project should be checked out. Required if there are more than one remote configured"
                              | optional,
                            fileLocation
                              | String
                              | doc "Location of the Dockerfile in the Git repository when using git as Dockerfile src. Defaults to Dockerfile."
                              | optional,
                            remotes
                              | { _ | String }
                              | doc "The remotes map which should be initialized in the git project. Projects must have at least one remote configured while StarterProjects & Image Component's Git source can only have at most one remote configured.",
                          }
                          | doc "Dockerfile's Git source"
                          | optional,
                        rootRequired
                          | Bool
                          | doc m%"
                            Specify if a privileged builder pod is required.
                            
                            Default value is `false`
                          "%
                          | optional,
                        uri
                          | String
                          | doc "URI Reference of a Dockerfile. It can be a full URL or a relative URI from the current devfile as the base URI."
                          | optional,
                      }
                      | doc "Allows specifying dockerfile type build",
                    imageName
                      | String
                      | doc "Name of the image for the resulting outerloop build",
                  }
                  | doc "Allows specifying the definition of an image for outer loop builds"
                  | optional,
                kubernetes
                  | js2n.OneOf
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "uri" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "inlined" ],
                          Array Dyn
                        ]
                    ]
                  | {
                    deployByDefault
                      | Bool
                      | doc m%"
                        Defines if the component should be deployed during startup.
                        
                        Default value is `false`
                      "%
                      | optional,
                    endpoints
                      | Array
                        {
                          annotation
                            | { _ | String }
                            | doc "Annotations to be added to Kubernetes Ingress or Openshift Route"
                            | optional,
                          attributes
                            | {  .. }
                            | doc m%"
                              Map of implementation-dependant string-based free-form attributes.
                              
                              Examples of Che-specific attributes:
                              - cookiesAuthEnabled: "true" / "false",
                              - type: "terminal" / "ide" / "ide-dev",
                            "%
                            | optional,
                          exposure
                            | std.enum.TagOrString
                            | [| 'none, 'internal, 'public |]
                            | doc m%"
                              Describes how the endpoint should be exposed on the network.
                              - `public` means that the endpoint will be exposed on the public network, typically through a K8S ingress or an OpenShift route.
                              - `internal` means that the endpoint will be exposed internally outside of the main devworkspace POD, typically by K8S services, to be consumed by other elements running on the same cloud internal network.
                              - `none` means that the endpoint will not be exposed and will only be accessible inside the main devworkspace POD, on a local address.
                              
                              Default value is `public`
                            "%
                            | optional,
                          name
                            | js2n.string.MaxLength 15
                            | js2n.string.Matches
                              "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$",
                          path
                            | String
                            | doc "Path of the endpoint URL"
                            | optional,
                          protocol
                            | std.enum.TagOrString
                            | [| 'udp, 'tcp, 'wss, 'ws, 'https, 'http |]
                            | doc m%"
                              Describes the application and transport protocols of the traffic that will go through this endpoint.
                              - `http`: Endpoint will have `http` traffic, typically on a TCP connection. It will be automaticaly promoted to `https` when the `secure` field is set to `true`.
                              - `https`: Endpoint will have `https` traffic, typically on a TCP connection.
                              - `ws`: Endpoint will have `ws` traffic, typically on a TCP connection. It will be automaticaly promoted to `wss` when the `secure` field is set to `true`.
                              - `wss`: Endpoint will have `wss` traffic, typically on a TCP connection.
                              - `tcp`: Endpoint will have traffic on a TCP connection, without specifying an application protocol.
                              - `udp`: Endpoint will have traffic on an UDP connection, without specifying an application protocol.
                              
                              Default value is `http`
                            "%
                            | optional,
                          secure
                            | Bool
                            | doc "Describes whether the endpoint should be secured and protected by some authentication process. This requires a protocol of `https` or `wss`."
                            | optional,
                          targetPort
                            | std.number.Integer
                            | doc "Port number to be used within the container component. The same port cannot be used by two different container components.",
                        }
                      | optional,
                    inlined | String | doc "Inlined manifest" | optional,
                    uri
                      | String
                      | doc "Location in a file fetched from a uri."
                      | optional,
                  }
                  | doc "Allows importing into the devworkspace the Kubernetes resources defined in a given manifest. For example this allows reusing the Kubernetes definitions used to deploy some runtime components in production."
                  | optional,
                name
                  | js2n.string.MaxLength 63
                  | js2n.string.Matches "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$"
                  | doc "Mandatory name that allows referencing the component from other elements (such as commands) or from an external devfile that may reference this component through a parent or a plugin.",
                openshift
                  | js2n.OneOf
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "uri" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "inlined" ],
                          Array Dyn
                        ]
                    ]
                  | {
                    deployByDefault
                      | Bool
                      | doc m%"
                        Defines if the component should be deployed during startup.
                        
                        Default value is `false`
                      "%
                      | optional,
                    endpoints
                      | Array
                        {
                          annotation
                            | { _ | String }
                            | doc "Annotations to be added to Kubernetes Ingress or Openshift Route"
                            | optional,
                          attributes
                            | {  .. }
                            | doc m%"
                              Map of implementation-dependant string-based free-form attributes.
                              
                              Examples of Che-specific attributes:
                              - cookiesAuthEnabled: "true" / "false",
                              - type: "terminal" / "ide" / "ide-dev",
                            "%
                            | optional,
                          exposure
                            | std.enum.TagOrString
                            | [| 'none, 'internal, 'public |]
                            | doc m%"
                              Describes how the endpoint should be exposed on the network.
                              - `public` means that the endpoint will be exposed on the public network, typically through a K8S ingress or an OpenShift route.
                              - `internal` means that the endpoint will be exposed internally outside of the main devworkspace POD, typically by K8S services, to be consumed by other elements running on the same cloud internal network.
                              - `none` means that the endpoint will not be exposed and will only be accessible inside the main devworkspace POD, on a local address.
                              
                              Default value is `public`
                            "%
                            | optional,
                          name
                            | js2n.string.MaxLength 15
                            | js2n.string.Matches
                              "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$",
                          path
                            | String
                            | doc "Path of the endpoint URL"
                            | optional,
                          protocol
                            | std.enum.TagOrString
                            | [| 'udp, 'tcp, 'wss, 'ws, 'https, 'http |]
                            | doc m%"
                              Describes the application and transport protocols of the traffic that will go through this endpoint.
                              - `http`: Endpoint will have `http` traffic, typically on a TCP connection. It will be automaticaly promoted to `https` when the `secure` field is set to `true`.
                              - `https`: Endpoint will have `https` traffic, typically on a TCP connection.
                              - `ws`: Endpoint will have `ws` traffic, typically on a TCP connection. It will be automaticaly promoted to `wss` when the `secure` field is set to `true`.
                              - `wss`: Endpoint will have `wss` traffic, typically on a TCP connection.
                              - `tcp`: Endpoint will have traffic on a TCP connection, without specifying an application protocol.
                              - `udp`: Endpoint will have traffic on an UDP connection, without specifying an application protocol.
                              
                              Default value is `http`
                            "%
                            | optional,
                          secure
                            | Bool
                            | doc "Describes whether the endpoint should be secured and protected by some authentication process. This requires a protocol of `https` or `wss`."
                            | optional,
                          targetPort
                            | std.number.Integer
                            | doc "Port number to be used within the container component. The same port cannot be used by two different container components.",
                        }
                      | optional,
                    inlined | String | doc "Inlined manifest" | optional,
                    uri
                      | String
                      | doc "Location in a file fetched from a uri."
                      | optional,
                  }
                  | doc "Allows importing into the devworkspace the OpenShift resources defined in a given manifest. For example this allows reusing the OpenShift definitions used to deploy some runtime components in production."
                  | optional,
                volume
                  | {
                    ephemeral
                      | Bool
                      | doc "Ephemeral volumes are not stored persistently across restarts. Defaults to false"
                      | optional,
                    size | String | doc "Size of the volume" | optional,
                  }
                  | doc "Allows specifying the definition of a volume shared by several other components"
                  | optional,
              }
            ]
        )
        | doc "List of the devworkspace components, such as editor and plugins, user-provided containers, or other types of components"
        | optional,
      events
        | {
          postStart
            | Array String
            | doc "IDs of commands that should be executed after the devworkspace is completely started. In the case of Che-Theia, these commands should be executed after all plugins and extensions have started, including project cloning. This means that those commands are not triggered until the user opens the IDE in his browser."
            | optional,
          postStop
            | Array String
            | doc "IDs of commands that should be executed after stopping the devworkspace."
            | optional,
          preStart
            | Array String
            | doc "IDs of commands that should be executed before the devworkspace start. Kubernetes-wise, these commands would typically be executed in init containers of the devworkspace POD."
            | optional,
          preStop
            | Array String
            | doc "IDs of commands that should be executed before stopping the devworkspace."
            | optional,
        }
        | doc "Bindings of commands to events. Each command is referred-to by its name."
        | optional,
      metadata
        | {
          architectures
            | js2n.array.UniqueItems
            | Array (
              std.contract.Sequence
                [ std.enum.TagOrString, [| 's390x, 'ppc64le, 'arm64, 'amd64 |] ]
            )
            | doc "Optional list of processor architectures that the devfile supports, empty list suggests that the devfile can be used on any architecture"
            | optional,
          attributes
            | {  .. }
            | doc "Map of implementation-dependant free-form YAML attributes. Deprecated, use the top-level attributes field instead."
            | optional,
          description | String | doc "Optional devfile description" | optional,
          displayName | String | doc "Optional devfile display name" | optional,
          globalMemoryLimit
            | String
            | doc "Optional devfile global memory limit"
            | optional,
          icon
            | String
            | doc "Optional devfile icon, can be a URI or a relative path in the project"
            | optional,
          language | String | doc "Optional devfile language" | optional,
          name | String | doc "Optional devfile name" | optional,
          projectType | String | doc "Optional devfile project type" | optional,
          provider
            | String
            | doc "Optional devfile provider information"
            | optional,
          supportUrl
            | String
            | doc "Optional link to a page that provides support information"
            | optional,
          tags | Array String | doc "Optional devfile tags" | optional,
          version
            | js2n.string.Matches
              "^([0-9]+)\\.([0-9]+)\\.([0-9]+)(\\-[0-9a-z-]+(\\.[0-9a-z-]+)*)?(\\+[0-9A-Za-z-]+(\\.[0-9A-Za-z-]+)*)?$"
            | doc "Optional semver-compatible version"
            | optional,
          website | String | doc "Optional devfile website" | optional,
          ..
        }
        | doc "Optional metadata"
        | optional,
      parent
        | js2n.OneOf
          [
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "uri" ],
                Array Dyn
              ],
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "id" ],
                Array Dyn
              ],
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "kubernetes" ],
                Array Dyn
              ]
          ]
        | {
          attributes
            | {  .. }
            | doc "Overrides of attributes encapsulated in a parent devfile. Overriding is done according to K8S strategic merge patch standard rules."
            | optional,
          commands
            | Array (
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
                          js2n.record.Required [ "exec" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "apply" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "composite" ],
                          Array Dyn
                        ]
                    ],
                  {
                    apply
                      | {
                        component
                          | String
                          | doc "Describes component that will be applied"
                          | optional,
                        group
                          | {
                            isDefault
                              | Bool
                              | doc "Identifies the default command for a given group kind"
                              | optional,
                            kind
                              | std.enum.TagOrString
                              | [| 'deploy, 'debug, 'test, 'run, 'build |]
                              | doc "Kind of group the command is part of"
                              | optional,
                          }
                          | doc "Defines the group this command is part of"
                          | optional,
                        label
                          | String
                          | doc "Optional label that provides a label for this command to be used in Editor UI menus for example"
                          | optional,
                      }
                      | doc m%"
                        Command that consists in applying a given component definition, typically bound to a devworkspace event.
                        
                        For example, when an `apply` command is bound to a `preStart` event, and references a `container` component, it will start the container as a K8S initContainer in the devworkspace POD, unless the component has its `dedicatedPod` field set to `true`.
                        
                        When no `apply` command exist for a given component, it is assumed the component will be applied at devworkspace start by default, unless `deployByDefault` for that component is set to false.
                      "%
                      | optional,
                    attributes
                      | {  .. }
                      | doc "Map of implementation-dependant free-form YAML attributes."
                      | optional,
                    composite
                      | {
                        commands
                          | Array String
                          | doc "The commands that comprise this composite command"
                          | optional,
                        group
                          | {
                            isDefault
                              | Bool
                              | doc "Identifies the default command for a given group kind"
                              | optional,
                            kind
                              | std.enum.TagOrString
                              | [| 'deploy, 'debug, 'test, 'run, 'build |]
                              | doc "Kind of group the command is part of"
                              | optional,
                          }
                          | doc "Defines the group this command is part of"
                          | optional,
                        label
                          | String
                          | doc "Optional label that provides a label for this command to be used in Editor UI menus for example"
                          | optional,
                        parallel
                          | Bool
                          | doc "Indicates if the sub-commands should be executed concurrently"
                          | optional,
                      }
                      | doc "Composite command that allows executing several sub-commands either sequentially or concurrently"
                      | optional,
                    exec
                      | {
                        commandLine
                          | String
                          | doc m%"
                            The actual command-line string
                            
                            Special variables that can be used:
                            
                             - `$PROJECTS_ROOT`: A path where projects sources are mounted as defined by container component's sourceMapping.
                            
                             - `$PROJECT_SOURCE`: A path to a project source ($PROJECTS_ROOT/<project-name>). If there are multiple projects, this will point to the directory of the first one.
                          "%
                          | optional,
                        component
                          | String
                          | doc "Describes component to which given action relates"
                          | optional,
                        env
                          | Array { name | String, value | String | optional, }
                          | doc "Optional list of environment variables that have to be set before running the command"
                          | optional,
                        group
                          | {
                            isDefault
                              | Bool
                              | doc "Identifies the default command for a given group kind"
                              | optional,
                            kind
                              | std.enum.TagOrString
                              | [| 'deploy, 'debug, 'test, 'run, 'build |]
                              | doc "Kind of group the command is part of"
                              | optional,
                          }
                          | doc "Defines the group this command is part of"
                          | optional,
                        hotReloadCapable
                          | Bool
                          | doc m%"
                            Whether the command is capable to reload itself when source code changes. If set to `true` the command won't be restarted and it is expected to handle file changes on its own.
                            
                            Default value is `false`
                          "%
                          | optional,
                        label
                          | String
                          | doc "Optional label that provides a label for this command to be used in Editor UI menus for example"
                          | optional,
                        workingDir
                          | String
                          | doc m%"
                            Working directory where the command should be executed
                            
                            Special variables that can be used:
                            
                             - `$PROJECTS_ROOT`: A path where projects sources are mounted as defined by container component's sourceMapping.
                            
                             - `$PROJECT_SOURCE`: A path to a project source ($PROJECTS_ROOT/<project-name>). If there are multiple projects, this will point to the directory of the first one.
                          "%
                          | optional,
                      }
                      | doc "CLI Command executed in an existing component container"
                      | optional,
                    id
                      | js2n.string.MaxLength 63
                      | js2n.string.Matches "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$"
                      | doc "Mandatory identifier that allows referencing this command in composite commands, from a parent, or in events.",
                  }
                ]
            )
            | doc "Overrides of commands encapsulated in a parent devfile or a plugin. Overriding is done according to K8S strategic merge patch standard rules."
            | optional,
          components
            | Array (
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
                          js2n.record.Required [ "container" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "kubernetes" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "openshift" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "volume" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "image" ],
                          Array Dyn
                        ]
                    ],
                  {
                    attributes
                      | {  .. }
                      | doc "Map of implementation-dependant free-form YAML attributes."
                      | optional,
                    container
                      | {
                        annotation
                          | {
                            deployment
                              | { _ | String }
                              | doc "Annotations to be added to deployment"
                              | optional,
                            service
                              | { _ | String }
                              | doc "Annotations to be added to service"
                              | optional,
                          }
                          | doc "Annotations that should be added to specific resources for this container"
                          | optional,
                        args
                          | Array String
                          | doc m%"
                            The arguments to supply to the command running the dockerimage component. The arguments are supplied either to the default command provided in the image or to the overridden command.
                            
                            Defaults to an empty array, meaning use whatever is defined in the image.
                          "%
                          | optional,
                        command
                          | Array String
                          | doc m%"
                            The command to run in the dockerimage component instead of the default one provided in the image.
                            
                            Defaults to an empty array, meaning use whatever is defined in the image.
                          "%
                          | optional,
                        cpuLimit | String | optional,
                        cpuRequest | String | optional,
                        dedicatedPod
                          | Bool
                          | doc m%"
                            Specify if a container should run in its own separated pod, instead of running as part of the main development environment pod.
                            
                            Default value is `false`
                          "%
                          | optional,
                        endpoints
                          | Array
                            {
                              annotation
                                | { _ | String }
                                | doc "Annotations to be added to Kubernetes Ingress or Openshift Route"
                                | optional,
                              attributes
                                | {  .. }
                                | doc m%"
                                  Map of implementation-dependant string-based free-form attributes.
                                  
                                  Examples of Che-specific attributes:
                                  - cookiesAuthEnabled: "true" / "false",
                                  - type: "terminal" / "ide" / "ide-dev",
                                "%
                                | optional,
                              exposure
                                | std.enum.TagOrString
                                | [| 'none, 'internal, 'public |]
                                | doc m%"
                                  Describes how the endpoint should be exposed on the network.
                                  - `public` means that the endpoint will be exposed on the public network, typically through a K8S ingress or an OpenShift route.
                                  - `internal` means that the endpoint will be exposed internally outside of the main devworkspace POD, typically by K8S services, to be consumed by other elements running on the same cloud internal network.
                                  - `none` means that the endpoint will not be exposed and will only be accessible inside the main devworkspace POD, on a local address.
                                  
                                  Default value is `public`
                                "%
                                | optional,
                              name
                                | js2n.string.MaxLength 15
                                | js2n.string.Matches
                                  "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$",
                              path
                                | String
                                | doc "Path of the endpoint URL"
                                | optional,
                              protocol
                                | std.enum.TagOrString
                                | [| 'udp, 'tcp, 'wss, 'ws, 'https, 'http |]
                                | doc m%"
                                  Describes the application and transport protocols of the traffic that will go through this endpoint.
                                  - `http`: Endpoint will have `http` traffic, typically on a TCP connection. It will be automaticaly promoted to `https` when the `secure` field is set to `true`.
                                  - `https`: Endpoint will have `https` traffic, typically on a TCP connection.
                                  - `ws`: Endpoint will have `ws` traffic, typically on a TCP connection. It will be automaticaly promoted to `wss` when the `secure` field is set to `true`.
                                  - `wss`: Endpoint will have `wss` traffic, typically on a TCP connection.
                                  - `tcp`: Endpoint will have traffic on a TCP connection, without specifying an application protocol.
                                  - `udp`: Endpoint will have traffic on an UDP connection, without specifying an application protocol.
                                  
                                  Default value is `http`
                                "%
                                | optional,
                              secure
                                | Bool
                                | doc "Describes whether the endpoint should be secured and protected by some authentication process. This requires a protocol of `https` or `wss`."
                                | optional,
                              targetPort
                                | std.number.Integer
                                | doc "Port number to be used within the container component. The same port cannot be used by two different container components."
                                | optional,
                            }
                          | optional,
                        env
                          | Array { name | String, value | String | optional, }
                          | doc m%"
                            Environment variables used in this container.
                            
                            The following variables are reserved and cannot be overridden via env:
                            
                             - `$PROJECTS_ROOT`
                            
                             - `$PROJECT_SOURCE`
                          "%
                          | optional,
                        image | String | optional,
                        memoryLimit | String | optional,
                        memoryRequest | String | optional,
                        mountSources
                          | Bool
                          | doc m%"
                            Toggles whether or not the project source code should be mounted in the component.
                            
                            Defaults to true for all component types except plugins and components that set `dedicatedPod` to true.
                          "%
                          | optional,
                        sourceMapping
                          | String
                          | doc "Optional specification of the path in the container where project sources should be transferred/mounted when `mountSources` is `true`. When omitted, the default value of /projects is used."
                          | optional,
                        volumeMounts
                          | Array
                            {
                              name
                                | js2n.string.MaxLength 63
                                | js2n.string.Matches
                                  "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$"
                                | doc "The volume mount name is the name of an existing `Volume` component. If several containers mount the same volume name then they will reuse the same volume and will be able to access to the same files.",
                              path
                                | String
                                | doc "The path in the component container where the volume should be mounted. If not path is mentioned, default path is the is `/<name>`."
                                | optional,
                            }
                          | doc "List of volumes mounts that should be mounted is this container."
                          | optional,
                      }
                      | doc "Allows adding and configuring devworkspace-related containers"
                      | optional,
                    image
                      | js2n.OneOf
                        [
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "dockerfile" ],
                              Array Dyn
                            ],
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "autoBuild" ],
                              Array Dyn
                            ]
                        ]
                      | {
                        autoBuild
                          | Bool
                          | doc m%"
                            Defines if the image should be built during startup.
                            
                            Default value is `false`
                          "%
                          | optional,
                        dockerfile
                          | js2n.OneOf
                            [
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "uri" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "devfileRegistry" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "git" ],
                                  Array Dyn
                                ]
                            ]
                          | {
                            args
                              | Array String
                              | doc "The arguments to supply to the dockerfile build."
                              | optional,
                            buildContext
                              | String
                              | doc "Path of source directory to establish build context. Defaults to ${PROJECT_SOURCE} in the container"
                              | optional,
                            devfileRegistry
                              | {
                                id
                                  | String
                                  | doc "Id in a devfile registry that contains a Dockerfile. The src in the OCI registry required for the Dockerfile build will be downloaded for building the image."
                                  | optional,
                                registryUrl
                                  | String
                                  | doc "Devfile Registry URL to pull the Dockerfile from when using the Devfile Registry as Dockerfile src. To ensure the Dockerfile gets resolved consistently in different environments, it is recommended to always specify the `devfileRegistryUrl` when `Id` is used."
                                  | optional,
                              }
                              | doc "Dockerfile's Devfile Registry source"
                              | optional,
                            git
                              | {
                                checkoutFrom
                                  | {
                                    remote
                                      | String
                                      | doc "The remote name should be used as init. Required if there are more than one remote configured"
                                      | optional,
                                    revision
                                      | String
                                      | doc "The revision to checkout from. Should be branch name, tag or commit id. Default branch is used if missing or specified revision is not found."
                                      | optional,
                                  }
                                  | doc "Defines from what the project should be checked out. Required if there are more than one remote configured"
                                  | optional,
                                fileLocation
                                  | String
                                  | doc "Location of the Dockerfile in the Git repository when using git as Dockerfile src. Defaults to Dockerfile."
                                  | optional,
                                remotes
                                  | { _ | String }
                                  | doc "The remotes map which should be initialized in the git project. Projects must have at least one remote configured while StarterProjects & Image Component's Git source can only have at most one remote configured."
                                  | optional,
                              }
                              | doc "Dockerfile's Git source"
                              | optional,
                            rootRequired
                              | Bool
                              | doc m%"
                                Specify if a privileged builder pod is required.
                                
                                Default value is `false`
                              "%
                              | optional,
                            uri
                              | String
                              | doc "URI Reference of a Dockerfile. It can be a full URL or a relative URI from the current devfile as the base URI."
                              | optional,
                          }
                          | doc "Allows specifying dockerfile type build"
                          | optional,
                        imageName
                          | String
                          | doc "Name of the image for the resulting outerloop build"
                          | optional,
                      }
                      | doc "Allows specifying the definition of an image for outer loop builds"
                      | optional,
                    kubernetes
                      | js2n.OneOf
                        [
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "uri" ],
                              Array Dyn
                            ],
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "inlined" ],
                              Array Dyn
                            ]
                        ]
                      | {
                        deployByDefault
                          | Bool
                          | doc m%"
                            Defines if the component should be deployed during startup.
                            
                            Default value is `false`
                          "%
                          | optional,
                        endpoints
                          | Array
                            {
                              annotation
                                | { _ | String }
                                | doc "Annotations to be added to Kubernetes Ingress or Openshift Route"
                                | optional,
                              attributes
                                | {  .. }
                                | doc m%"
                                  Map of implementation-dependant string-based free-form attributes.
                                  
                                  Examples of Che-specific attributes:
                                  - cookiesAuthEnabled: "true" / "false",
                                  - type: "terminal" / "ide" / "ide-dev",
                                "%
                                | optional,
                              exposure
                                | std.enum.TagOrString
                                | [| 'none, 'internal, 'public |]
                                | doc m%"
                                  Describes how the endpoint should be exposed on the network.
                                  - `public` means that the endpoint will be exposed on the public network, typically through a K8S ingress or an OpenShift route.
                                  - `internal` means that the endpoint will be exposed internally outside of the main devworkspace POD, typically by K8S services, to be consumed by other elements running on the same cloud internal network.
                                  - `none` means that the endpoint will not be exposed and will only be accessible inside the main devworkspace POD, on a local address.
                                  
                                  Default value is `public`
                                "%
                                | optional,
                              name
                                | js2n.string.MaxLength 15
                                | js2n.string.Matches
                                  "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$",
                              path
                                | String
                                | doc "Path of the endpoint URL"
                                | optional,
                              protocol
                                | std.enum.TagOrString
                                | [| 'udp, 'tcp, 'wss, 'ws, 'https, 'http |]
                                | doc m%"
                                  Describes the application and transport protocols of the traffic that will go through this endpoint.
                                  - `http`: Endpoint will have `http` traffic, typically on a TCP connection. It will be automaticaly promoted to `https` when the `secure` field is set to `true`.
                                  - `https`: Endpoint will have `https` traffic, typically on a TCP connection.
                                  - `ws`: Endpoint will have `ws` traffic, typically on a TCP connection. It will be automaticaly promoted to `wss` when the `secure` field is set to `true`.
                                  - `wss`: Endpoint will have `wss` traffic, typically on a TCP connection.
                                  - `tcp`: Endpoint will have traffic on a TCP connection, without specifying an application protocol.
                                  - `udp`: Endpoint will have traffic on an UDP connection, without specifying an application protocol.
                                  
                                  Default value is `http`
                                "%
                                | optional,
                              secure
                                | Bool
                                | doc "Describes whether the endpoint should be secured and protected by some authentication process. This requires a protocol of `https` or `wss`."
                                | optional,
                              targetPort
                                | std.number.Integer
                                | doc "Port number to be used within the container component. The same port cannot be used by two different container components."
                                | optional,
                            }
                          | optional,
                        inlined | String | doc "Inlined manifest" | optional,
                        uri
                          | String
                          | doc "Location in a file fetched from a uri."
                          | optional,
                      }
                      | doc "Allows importing into the devworkspace the Kubernetes resources defined in a given manifest. For example this allows reusing the Kubernetes definitions used to deploy some runtime components in production."
                      | optional,
                    name
                      | js2n.string.MaxLength 63
                      | js2n.string.Matches "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$"
                      | doc "Mandatory name that allows referencing the component from other elements (such as commands) or from an external devfile that may reference this component through a parent or a plugin.",
                    openshift
                      | js2n.OneOf
                        [
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "uri" ],
                              Array Dyn
                            ],
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "inlined" ],
                              Array Dyn
                            ]
                        ]
                      | {
                        deployByDefault
                          | Bool
                          | doc m%"
                            Defines if the component should be deployed during startup.
                            
                            Default value is `false`
                          "%
                          | optional,
                        endpoints
                          | Array
                            {
                              annotation
                                | { _ | String }
                                | doc "Annotations to be added to Kubernetes Ingress or Openshift Route"
                                | optional,
                              attributes
                                | {  .. }
                                | doc m%"
                                  Map of implementation-dependant string-based free-form attributes.
                                  
                                  Examples of Che-specific attributes:
                                  - cookiesAuthEnabled: "true" / "false",
                                  - type: "terminal" / "ide" / "ide-dev",
                                "%
                                | optional,
                              exposure
                                | std.enum.TagOrString
                                | [| 'none, 'internal, 'public |]
                                | doc m%"
                                  Describes how the endpoint should be exposed on the network.
                                  - `public` means that the endpoint will be exposed on the public network, typically through a K8S ingress or an OpenShift route.
                                  - `internal` means that the endpoint will be exposed internally outside of the main devworkspace POD, typically by K8S services, to be consumed by other elements running on the same cloud internal network.
                                  - `none` means that the endpoint will not be exposed and will only be accessible inside the main devworkspace POD, on a local address.
                                  
                                  Default value is `public`
                                "%
                                | optional,
                              name
                                | js2n.string.MaxLength 15
                                | js2n.string.Matches
                                  "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$",
                              path
                                | String
                                | doc "Path of the endpoint URL"
                                | optional,
                              protocol
                                | std.enum.TagOrString
                                | [| 'udp, 'tcp, 'wss, 'ws, 'https, 'http |]
                                | doc m%"
                                  Describes the application and transport protocols of the traffic that will go through this endpoint.
                                  - `http`: Endpoint will have `http` traffic, typically on a TCP connection. It will be automaticaly promoted to `https` when the `secure` field is set to `true`.
                                  - `https`: Endpoint will have `https` traffic, typically on a TCP connection.
                                  - `ws`: Endpoint will have `ws` traffic, typically on a TCP connection. It will be automaticaly promoted to `wss` when the `secure` field is set to `true`.
                                  - `wss`: Endpoint will have `wss` traffic, typically on a TCP connection.
                                  - `tcp`: Endpoint will have traffic on a TCP connection, without specifying an application protocol.
                                  - `udp`: Endpoint will have traffic on an UDP connection, without specifying an application protocol.
                                  
                                  Default value is `http`
                                "%
                                | optional,
                              secure
                                | Bool
                                | doc "Describes whether the endpoint should be secured and protected by some authentication process. This requires a protocol of `https` or `wss`."
                                | optional,
                              targetPort
                                | std.number.Integer
                                | doc "Port number to be used within the container component. The same port cannot be used by two different container components."
                                | optional,
                            }
                          | optional,
                        inlined | String | doc "Inlined manifest" | optional,
                        uri
                          | String
                          | doc "Location in a file fetched from a uri."
                          | optional,
                      }
                      | doc "Allows importing into the devworkspace the OpenShift resources defined in a given manifest. For example this allows reusing the OpenShift definitions used to deploy some runtime components in production."
                      | optional,
                    volume
                      | {
                        ephemeral
                          | Bool
                          | doc "Ephemeral volumes are not stored persistently across restarts. Defaults to false"
                          | optional,
                        size | String | doc "Size of the volume" | optional,
                      }
                      | doc "Allows specifying the definition of a volume shared by several other components"
                      | optional,
                  }
                ]
            )
            | doc "Overrides of components encapsulated in a parent devfile or a plugin. Overriding is done according to K8S strategic merge patch standard rules."
            | optional,
          id
            | String
            | doc "Id in a registry that contains a Devfile yaml file"
            | optional,
          kubernetes
            | { name | String, namespace | String | optional, }
            | doc "Reference to a Kubernetes CRD of type DevWorkspaceTemplate"
            | optional,
          projects
            | Array (
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
                          js2n.record.Required [ "git" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "zip" ],
                          Array Dyn
                        ]
                    ],
                  {
                    attributes
                      | {  .. }
                      | doc "Map of implementation-dependant free-form YAML attributes."
                      | optional,
                    clonePath
                      | String
                      | doc "Path relative to the root of the projects to which this project should be cloned into. This is a unix-style relative path (i.e. uses forward slashes). The path is invalid if it is absolute or tries to escape the project root through the usage of '..'. If not specified, defaults to the project name."
                      | optional,
                    git
                      | {
                        checkoutFrom
                          | {
                            remote
                              | String
                              | doc "The remote name should be used as init. Required if there are more than one remote configured"
                              | optional,
                            revision
                              | String
                              | doc "The revision to checkout from. Should be branch name, tag or commit id. Default branch is used if missing or specified revision is not found."
                              | optional,
                          }
                          | doc "Defines from what the project should be checked out. Required if there are more than one remote configured"
                          | optional,
                        remotes
                          | { _ | String }
                          | doc "The remotes map which should be initialized in the git project. Projects must have at least one remote configured while StarterProjects & Image Component's Git source can only have at most one remote configured."
                          | optional,
                      }
                      | doc "Project's Git source"
                      | optional,
                    name
                      | js2n.string.MaxLength 63
                      | js2n.string.Matches "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$"
                      | doc "Project name",
                    zip
                      | {
                        location
                          | String
                          | doc "Zip project's source location address. Should be file path of the archive, e.g. file://$FILE_PATH"
                          | optional,
                      }
                      | doc "Project's Zip source"
                      | optional,
                  }
                ]
            )
            | doc "Overrides of projects encapsulated in a parent devfile. Overriding is done according to K8S strategic merge patch standard rules."
            | optional,
          registryUrl
            | String
            | doc "Registry URL to pull the parent devfile from when using id in the parent reference. To ensure the parent devfile gets resolved consistently in different environments, it is recommended to always specify the `registryUrl` when `id` is used."
            | optional,
          starterProjects
            | Array (
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
                          js2n.record.Required [ "git" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "zip" ],
                          Array Dyn
                        ]
                    ],
                  {
                    attributes
                      | {  .. }
                      | doc "Map of implementation-dependant free-form YAML attributes."
                      | optional,
                    description
                      | String
                      | doc "Description of a starter project"
                      | optional,
                    git
                      | {
                        checkoutFrom
                          | {
                            remote
                              | String
                              | doc "The remote name should be used as init. Required if there are more than one remote configured"
                              | optional,
                            revision
                              | String
                              | doc "The revision to checkout from. Should be branch name, tag or commit id. Default branch is used if missing or specified revision is not found."
                              | optional,
                          }
                          | doc "Defines from what the project should be checked out. Required if there are more than one remote configured"
                          | optional,
                        remotes
                          | { _ | String }
                          | doc "The remotes map which should be initialized in the git project. Projects must have at least one remote configured while StarterProjects & Image Component's Git source can only have at most one remote configured."
                          | optional,
                      }
                      | doc "Project's Git source"
                      | optional,
                    name
                      | js2n.string.MaxLength 63
                      | js2n.string.Matches "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$"
                      | doc "Project name",
                    subDir
                      | String
                      | doc "Sub-directory from a starter project to be used as root for starter project."
                      | optional,
                    zip
                      | {
                        location
                          | String
                          | doc "Zip project's source location address. Should be file path of the archive, e.g. file://$FILE_PATH"
                          | optional,
                      }
                      | doc "Project's Zip source"
                      | optional,
                  }
                ]
            )
            | doc "Overrides of starterProjects encapsulated in a parent devfile. Overriding is done according to K8S strategic merge patch standard rules."
            | optional,
          uri
            | String
            | doc "URI Reference of a parent devfile YAML file. It can be a full URL or a relative URI with the current devfile as the base URI."
            | optional,
          variables
            | { _ | String }
            | doc "Overrides of variables encapsulated in a parent devfile. Overriding is done according to K8S strategic merge patch standard rules."
            | optional,
          version
            | js2n.string.Matches
              "^(latest)|(([1-9])\\.([0-9]+)\\.([0-9]+)(\\-[0-9a-z-]+(\\.[0-9a-z-]+)*)?(\\+[0-9A-Za-z-]+(\\.[0-9A-Za-z-]+)*)?)$"
            | doc "Specific stack/sample version to pull the parent devfile from, when using id in the parent reference. To specify `version`, `id` must be defined and used as the import reference source. `version` can be either a specific stack version, or `latest`. If no `version` specified, default version will be used."
            | optional,
        }
        | doc "Parent devworkspace template"
        | optional,
      projects
        | Array (
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
                      js2n.record.Required [ "git" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "zip" ],
                      Array Dyn
                    ]
                ],
              {
                attributes
                  | {  .. }
                  | doc "Map of implementation-dependant free-form YAML attributes."
                  | optional,
                clonePath
                  | String
                  | doc "Path relative to the root of the projects to which this project should be cloned into. This is a unix-style relative path (i.e. uses forward slashes). The path is invalid if it is absolute or tries to escape the project root through the usage of '..'. If not specified, defaults to the project name."
                  | optional,
                git
                  | {
                    checkoutFrom
                      | {
                        remote
                          | String
                          | doc "The remote name should be used as init. Required if there are more than one remote configured"
                          | optional,
                        revision
                          | String
                          | doc "The revision to checkout from. Should be branch name, tag or commit id. Default branch is used if missing or specified revision is not found."
                          | optional,
                      }
                      | doc "Defines from what the project should be checked out. Required if there are more than one remote configured"
                      | optional,
                    remotes
                      | { _ | String }
                      | doc "The remotes map which should be initialized in the git project. Projects must have at least one remote configured while StarterProjects & Image Component's Git source can only have at most one remote configured.",
                  }
                  | doc "Project's Git source"
                  | optional,
                name
                  | js2n.string.MaxLength 63
                  | js2n.string.Matches "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$"
                  | doc "Project name",
                zip
                  | {
                    location
                      | String
                      | doc "Zip project's source location address. Should be file path of the archive, e.g. file://$FILE_PATH"
                      | optional,
                  }
                  | doc "Project's Zip source"
                  | optional,
              }
            ]
        )
        | doc "Projects worked on in the devworkspace, containing names and sources locations"
        | optional,
      schemaVersion
        | js2n.string.Matches
          "^([2-9])\\.([0-9]+)\\.([0-9]+)(\\-[0-9a-z-]+(\\.[0-9a-z-]+)*)?(\\+[0-9A-Za-z-]+(\\.[0-9A-Za-z-]+)*)?$"
        | doc "Devfile schema version",
      starterProjects
        | Array (
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
                      js2n.record.Required [ "git" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "zip" ],
                      Array Dyn
                    ]
                ],
              {
                attributes
                  | {  .. }
                  | doc "Map of implementation-dependant free-form YAML attributes."
                  | optional,
                description
                  | String
                  | doc "Description of a starter project"
                  | optional,
                git
                  | {
                    checkoutFrom
                      | {
                        remote
                          | String
                          | doc "The remote name should be used as init. Required if there are more than one remote configured"
                          | optional,
                        revision
                          | String
                          | doc "The revision to checkout from. Should be branch name, tag or commit id. Default branch is used if missing or specified revision is not found."
                          | optional,
                      }
                      | doc "Defines from what the project should be checked out. Required if there are more than one remote configured"
                      | optional,
                    remotes
                      | { _ | String }
                      | doc "The remotes map which should be initialized in the git project. Projects must have at least one remote configured while StarterProjects & Image Component's Git source can only have at most one remote configured.",
                  }
                  | doc "Project's Git source"
                  | optional,
                name
                  | js2n.string.MaxLength 63
                  | js2n.string.Matches "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$"
                  | doc "Project name",
                subDir
                  | String
                  | doc "Sub-directory from a starter project to be used as root for starter project."
                  | optional,
                zip
                  | {
                    location
                      | String
                      | doc "Zip project's source location address. Should be file path of the archive, e.g. file://$FILE_PATH"
                      | optional,
                  }
                  | doc "Project's Zip source"
                  | optional,
              }
            ]
        )
        | doc "StarterProjects is a project that can be used as a starting point when bootstrapping new projects"
        | optional,
      variables
        | { _ | String }
        | doc m%"
          Map of key-value variables used for string replacement in the devfile. Values can be referenced via {{variable-key}} to replace the corresponding value in string fields in the devfile. Replacement cannot be used for
          
           - schemaVersion, metadata, parent source
          
           - element identifiers, e.g. command id, component name, endpoint name, project name
          
           - references to identifiers, e.g. in events, a command's component, container's volume mount name
          
           - string enums, e.g. command group kind, endpoint exposure
        "%
        | optional,
    }