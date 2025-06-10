# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.azureFunction" =
        {
            args
              | String
              | doc "Command-line arguments to use when launching."
              | optional,
            azureFunction
              | String
              | doc "The directory path to the azure function.",
            bindings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.binding", { _ | Dyn } ]
              )
              | doc "The bindings provided by the service."
              | optional,
            env
              | Array (
                std.contract.Sequence
                  [ refs."definitions.env-var", { _ | Dyn } ]
              )
              | doc "Environment variables to use when launching."
              | optional,
            name
              | String
              | doc "The service name. Must be unique per-application.",
            pathToFunc
              | String
              | doc "Optional path to the function host to be used when launching functions. Can point to either func.dll or the binary."
              | optional,
            replicas
              | std.number.Integer
              | doc "Number of service replicas to create."
              | optional,
            ..
          },
      "definitions.binding" =
        {
            autoAssignPort
              | Bool
              | doc "Whether to auto-assign a port value."
              | optional,
            connectionString | String | doc "The connection string." | optional,
            containerPort
              | std.number.Integer
              | doc "The port used when running inside a container."
              | optional,
            host | String | doc "The hostname for the binding." | optional,
            name | String | doc "The binding name." | optional,
            port | std.number.Integer | doc "The binding port." | optional,
            protocol
              | String
              | doc "The protocol used by the binding"
              | optional,
          },
      "definitions.build-property" =
        {
            name | String | doc "Build property name.",
            value | String | doc "Build property name.",
          },
      "definitions.dockerFile" =
        {
            args
              | String
              | doc "Command-line arguments to use when launching."
              | optional,
            bindings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.binding", { _ | Dyn } ]
              )
              | doc "The bindings provided by the service."
              | optional,
            dockerFile | String | doc "The Dockerfile to use.",
            dockerFileArgs
              | Array ({ _ | Dyn })
              | doc "Build arguments to use when building the image."
              | optional,
            dockerFileContext
              | String
              | doc "The Dockerfile context to run docker build on."
              | optional,
            env
              | Array (
                std.contract.Sequence
                  [ refs."definitions.env-var", { _ | Dyn } ]
              )
              | doc "Environment variables to use when launching."
              | optional,
            name
              | String
              | doc "The service name. Must be unique per-application.",
            replicas
              | std.number.Integer
              | doc "Number of service replicas to create."
              | optional,
            volumes
              | Array (
                std.contract.Sequence [ refs."definitions.volume", { _ | Dyn } ]
              )
              | doc "Volumes to mount to the container."
              | optional,
            ..
          },
      "definitions.env-var" =
        {
            name | String | doc "Environment variable name.",
            value | String | doc "Environment variable value.",
          },
      "definitions.executable" =
        {
            args
              | String
              | doc "Command-line arguments to use when launching."
              | optional,
            bindings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.binding", { _ | Dyn } ]
              )
              | doc "The bindings provided by the service."
              | optional,
            env
              | Array (
                std.contract.Sequence
                  [ refs."definitions.env-var", { _ | Dyn } ]
              )
              | doc "Environment variables to use when launching."
              | optional,
            executable
              | String
              | doc "The file path (or file name if on the system path) of an executable.",
            name
              | String
              | doc "The service name. Must be unique per-application.",
            replicas
              | std.number.Integer
              | doc "Number of service replicas to create."
              | optional,
            workingDirectory
              | String
              | doc "The working directory to use when launching."
              | optional,
            ..
          },
      "definitions.extension" = { name | String | doc "Extension name.", .. },
      "definitions.external" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                bindings
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.binding", { _ | Dyn } ]
                  )
                  | doc "The bindings provided by the service."
                  | optional,
                external
                  | std.contract.Equal true
                  | doc "Designates as service as external. External services will not be launched and can only provide bindings."
                  | optional,
                name
                  | String
                  | doc "The service name. Must be unique per-application."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.image" =
        {
            args
              | String
              | doc "Command-line arguments to use when launching."
              | optional,
            bindings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.binding", { _ | Dyn } ]
              )
              | doc "The bindings provided by the service."
              | optional,
            env
              | Array (
                std.contract.Sequence
                  [ refs."definitions.env-var", { _ | Dyn } ]
              )
              | doc "Environment variables to use when launching."
              | optional,
            image | String | doc "The name of a Docker image.",
            name
              | String
              | doc "The service name. Must be unique per-application.",
            replicas
              | std.number.Integer
              | doc "Number of service replicas to create."
              | optional,
            volumes
              | Array (
                std.contract.Sequence [ refs."definitions.volume", { _ | Dyn } ]
              )
              | doc "Volumes to mount to the container."
              | optional,
            ..
          },
      "definitions.include" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                include
                  | String
                  | doc "Path to tye.yaml file which will be used in the application.",
                name
                  | String
                  | doc "The service name. Must be unique per-application.",
                ..
              },
              Array Dyn
            ],
      "definitions.ingress" =
        {
            bindings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ingress-binding", { _ | Dyn } ]
              )
              | doc "Bindings for the ingress in local development."
              | optional,
            name | String | doc "The ingress name." | optional,
            rules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ingress-rule", { _ | Dyn } ]
              )
              | doc "Rules for ingress routing."
              | optional,
            ..
          },
      "definitions.ingress-binding" =
        {
            ip
              | String
              | doc "The ip address the ingress listens on."
              | optional,
            name | String | doc "The binding name." | optional,
            port | std.number.Integer | doc "The binding port." | optional,
            protocol
              | String
              | doc "The protocol used by the binding"
              | optional,
            ..
          },
      "definitions.ingress-rule" =
        {
            host | String | doc "The hostname to match." | optional,
            path | String | doc "The path prefix to match." | optional,
            preservePath
              | Bool
              | doc "Whether to keep the path that was originally present or not after a prefix match."
              | optional,
            service
              | String
              | doc "The service to route traffic when the rule matches.",
            ..
          },
      "definitions.project" =
        {
            args
              | String
              | doc "Command-line arguments to use when launching."
              | optional,
            bindings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.binding", { _ | Dyn } ]
              )
              | doc "The bindings provided by the service."
              | optional,
            build | Bool | doc "Whether to build the project." | optional,
            buildProperties
              | Array (
                std.contract.Sequence
                  [ refs."definitions.build-property", { _ | Dyn } ]
              )
              | doc "Build properties to use when launching or building a project."
              | optional,
            env
              | Array (
                std.contract.Sequence
                  [ refs."definitions.env-var", { _ | Dyn } ]
              )
              | doc "Environment variables to use when launching."
              | optional,
            name
              | String
              | doc "The service name. Must be unique per-application.",
            project | String | doc "The relative path to a .NET project file.",
            replicas
              | std.number.Integer
              | doc "Number of service replicas to create."
              | optional,
            ..
          },
      "definitions.repository" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                cloneDirectory
                  | String
                  | doc "The directory to clone the repository into."
                  | optional,
                name
                  | String
                  | doc "The service name. Must be unique per-application.",
                repository
                  | String
                  | doc "The repository url which will be cloned.",
                ..
              },
              Array Dyn
            ],
      "definitions.volume" =
        {
            name | String | doc "A named volume." | optional,
            source | String | doc "The local path." | optional,
            target | String | doc "The destination path within the container.",
          },
    }
    in
  {
      containerEngine
        | std.enum.TagOrString
        | [| 'podman, 'docker |]
        | doc "Container engine."
        | optional,
      dashboardPort
        | std.number.Integer
        | doc "Configure the dashboard port used for `tye run`. Can be overridden using the `--port` CLI argument, and falls back to port 8000 if free, or a random port if 8000 is in use."
        | optional,
      extensions
        | Array refs."definitions.extension"
        | doc "Extensions to be added to tye."
        | optional,
      ingress
        | js2n.array.MinItems 1
        | Array refs."definitions.ingress"
        | doc "The application's ingresses."
        | optional,
      name | String | doc "The application name." | optional,
      namespace | String | doc "The Kubernetes namespace to use." | optional,
      network | String | doc "The Docker network to use." | optional,
      registry
        | String
        | doc "Dockerhub username or hostname of remote registry. Used for tagging images."
        | optional,
      services
        | js2n.array.MinItems 1
        | Array (
          std.contract.Sequence
            [
              js2n.OneOf
                [
                  refs."definitions.executable",
                  refs."definitions.external",
                  refs."definitions.azureFunction",
                  refs."definitions.image",
                  refs."definitions.dockerFile",
                  refs."definitions.project",
                  refs."definitions.repository",
                  refs."definitions.include"
                ],
              { _ | Dyn }
            ]
        )
        | doc "The application's services.",
      solution
        | String
        | doc "Indicates the solution file (.sln) or filter (.slnf) to use when building project-based services in watch mode. If omitted, those services will be built individually. Specifying the solution [filter] can help reduce repeated builds of shared libraries when in watch mode."
        | optional,
      ..
    }