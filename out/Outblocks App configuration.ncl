# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.CDN" = { enabled | Bool | optional, },
      "definitions.FunctionBuild" =
        {
            command
              | std.contract.any_of [ String, Array String ]
              | doc "Command to be run to generate output files."
              | optional,
            dir
              | String
              | doc "Output dir to where built files end up."
              | optional,
            env
              | { _ | String }
              | doc "Additional environment variables available during build."
              | optional,
          },
      "definitions.FunctionDeploy" =
        {
            env
              | { _ | String }
              | doc "Additional environment variables."
              | optional,
            max_scale
              | std.number.Integer
              | doc "Maximum scale of container deployment (used if deployment uses a container)."
              | optional,
            memory_limit
              | std.number.Integer
              | doc "Memory limit in MiB of function deployment."
              | optional,
            min_scale
              | std.number.Integer
              | doc "Minimum scale of container deployment (used if deployment uses a container)."
              | optional,
            plugin
              | String
              | doc "Deploy plugin override. Defaults to first supported plugin available."
              | optional,
            timeout
              | std.number.Integer
              | doc "Execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period."
              | optional,
            ..
          },
      "definitions.FunctionPackage" =
        {
            patterns
              | Array String
              | doc "Package patterns to exclude (or force include if starts with '!')."
              | optional,
          },
      "definitions.Needs" =
        std.contract.Sequence
            [
              { _ | js2n.Nullable ({ _ | Dyn }) },
              js2n.record.FieldsMatch "^[_a-zA-Z][a-zA-Z0-9_-]*$"
            ],
      "definitions.OutblocksApp" =
        std.contract.Sequence
            [
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "static", },
                        required = {},
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      basic_auth
                        | refs."definitions.StaticBasicAuth"
                        | { _ | Dyn }
                        | doc "Static application basic authentication config. Currently used only for deployments."
                        | optional,
                      build
                        | refs."definitions.StaticBuild"
                        | { _ | Dyn }
                        | doc "Static application build config used for deployment builds."
                        | optional,
                      deploy
                        | refs."definitions.StaticDeploy"
                        | { _ | Dyn }
                        | doc "Static deploy config."
                        | optional,
                      remove_trailing_slash
                        | Bool
                        | doc "Remove trailing slash with permanent redirect. Currently used only for deployments. Defaults to 'true' when gatsby routing is used, 'false' otherwise."
                        | optional,
                      routing
                        | std.enum.TagOrString
                        | [| 'disabled, 'gatsby, 'react |]
                        | doc "Routing type. Defaults to 'react'."
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "service", },
                        required = {},
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      build
                        | refs."definitions.ServiceBuild"
                        | { _ | Dyn }
                        | doc "Service application build config used for deployment builds."
                        | optional,
                      container
                        | refs."definitions.ServiceContainer"
                        | { _ | Dyn }
                        | doc "Service application container config used for docker based deployments/runs."
                        | optional,
                      deploy
                        | refs."definitions.ServiceDeploy"
                        | { _ | Dyn }
                        | doc "Service deploy config."
                        | optional,
                      private
                        | Bool
                        | doc "Marks app as private - won't allow unauthenticated access."
                        | optional,
                      scheduler
                        | refs."definitions.Scheduler"
                        | Array Dyn
                        | doc "Service scheduler config."
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "function", },
                        required = {},
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    std.contract.Sequence
                      [
                        {
                          build
                            | refs."definitions.FunctionBuild"
                            | { _ | Dyn }
                            | doc "Function application build config used for deployment builds."
                            | optional,
                          deploy
                            | refs."definitions.FunctionDeploy"
                            | { _ | Dyn }
                            | doc "Function deploy config."
                            | optional,
                          entrypoint
                            | String
                            | doc "Name of the function that will be executed when the function is triggered. Not all deployment plugins support it. Defaults to application name."
                            | optional,
                          package
                            | refs."definitions.FunctionPackage"
                            | { _ | Dyn }
                            | doc "Function package config."
                            | optional,
                          private
                            | Bool
                            | doc "Marks app as private - won't allow unauthenticated access."
                            | optional,
                          runtime
                            | String
                            | doc "The runtime in which the function is going to run, refer to cloud provider docs for possible options."
                            | optional,
                          scheduler
                            | refs."definitions.Scheduler"
                            | Array Dyn
                            | doc "Function scheduler config."
                            | optional,
                          ..
                        },
                        js2n.record.Required [ "type" ]
                      ],
                    Array Dyn
                  ]) js2n.Always,
              {
                build | { _ | Dyn } | optional,
                cdn
                  | refs."definitions.CDN"
                  | { _ | Dyn }
                  | doc "CDN settings."
                  | optional,
                dir
                  | String
                  | doc "Working directory of the app where all commands will be run. Defaults to location of this yaml. All other dirs will be relative to this one."
                  | optional,
                env
                  | { _ | String }
                  | doc "Environment variables common for all operations."
                  | optional,
                name
                  | String
                  | doc "Name of the app. Defaults to directory name."
                  | optional,
                needs
                  | refs."definitions.Needs"
                  | { _ | Dyn }
                  | doc "Application dependencies to inject."
                  | optional,
                path_redirect
                  | String
                  | doc "Path redirect rewrites URL to specified path. URL path from 'url' field will be stripped and replaced with value below."
                  | optional,
                run
                  | refs."definitions.Run"
                  | { _ | Dyn }
                  | doc "Run config used for dev builds during run."
                  | optional,
                type
                  | std.enum.TagOrString
                  | [| 'service, 'function, 'static |]
                  | doc "Type of the app.",
                url | String | doc "External URL of the app." | optional,
                ..
              }
            ],
      "definitions.Run" =
        {
            command
              | std.contract.any_of [ String, Array String ]
              | doc "Command to be run to for dev mode."
              | optional,
            env
              | { _ | String }
              | doc "Additional environment variables available local run."
              | optional,
            plugin
              | String
              | doc "Run plugin override. Defaults to first supported plugin available."
              | optional,
            port
              | std.number.Integer
              | doc "Port override, by default just assigns next port starting from listen-port."
              | optional,
            ..
          },
      "definitions.Scheduler" =
        Array
            {
              cron
                | String
                | doc "Scheduler cron, e.g. */30 * * * * runs every 30 minutes.",
              headers
                | { _ | String }
                | doc "Additional headers to use for this call."
                | optional,
              method
                | std.enum.TagOrString
                | [| 'OPTIONS, 'PATCH, 'DELETE, 'PUT, 'HEAD, 'POST, 'GET |]
                | doc "HTTP method to use. Defaults to 'GET'."
                | optional,
              name
                | String
                | doc "Name of cron (just for information purpose)."
                | optional,
              path | String | doc "Path to call in current app url." | optional,
            },
      "definitions.ServiceBuild" =
        {
            build_args | { _ | String } | doc "Docker build-args." | optional,
            context
              | String
              | doc "Docker context directory, relative to application dir."
              | optional,
            dockerfile
              | String
              | doc "Dockerfile to use, relative to context path. Defaults to 'Dockerfile'."
              | optional,
            image
              | String
              | doc "Docker image to use. If specified, will try to pull this image if skip-build is enabled."
              | optional,
            skip_build
              | Bool
              | doc "Skip this image build phase. If enabled, requires image to be either present on docker host or custom image to be possible to pull."
              | optional,
            skip_pull
              | Bool
              | doc "Skip this image dependencies pull phase. As a result, doesn't check for newer versions of tagged dependencies. Useful if dependencies do not exist outside of local docker."
              | optional,
          },
      "definitions.ServiceContainer" =
        {
            command
              | std.contract.any_of [ String, Array String ]
              | doc "Docker command (CMD) to override."
              | optional,
            entrypoint
              | std.contract.any_of [ String, Array String ]
              | doc "Docker entrypoint (ENTRYPOINT) to override."
              | optional,
            port
              | std.number.Integer
              | doc "Docker container port to use."
              | optional,
          },
      "definitions.ServiceDeploy" =
        {
            container
              | refs."definitions.ServiceContainer"
              | { _ | Dyn }
              | doc "Service application container config used for docker based deployments."
              | optional,
            cpu_limit
              | Number
              | doc "CPU limit of container deployment. 1.0 means 1 full core of CPU will be used."
              | optional,
            env
              | { _ | String }
              | doc "Additional environment variables."
              | optional,
            max_scale
              | std.number.Integer
              | doc "Maximum scale of container deployment."
              | optional,
            memory_limit
              | std.number.Integer
              | doc "Memory limit in MiB of container deployment."
              | optional,
            min_scale
              | std.number.Integer
              | doc "Minimum scale of container deployment."
              | optional,
            plugin
              | String
              | doc "Deploy plugin override. Defaults to first supported plugin available."
              | optional,
            timeout
              | std.number.Integer
              | doc "Execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period."
              | optional,
            ..
          },
      "definitions.StaticBasicAuth" =
        {
            realm
              | String
              | doc "Basic auth realm name, defaults to 'restricted'."
              | optional,
            users
              | { _ | String }
              | doc "Basic auth users in form of `user: password` where password is either in plain text or in a form of apr1 hash (used by htpasswd)."
              | optional,
          },
      "definitions.StaticBuild" =
        {
            command
              | std.contract.any_of [ String, Array String ]
              | doc "Command to be run to generate output files."
              | optional,
            dir
              | String
              | doc "Output dir to where static files end up."
              | optional,
            env
              | { _ | String }
              | doc "Additional environment variables available during build."
              | optional,
          },
      "definitions.StaticDeploy" =
        {
            max_scale
              | std.number.Integer
              | doc "Maximum scale of container deployment (used if deployment uses a container)."
              | optional,
            min_scale
              | std.number.Integer
              | doc "Minimum scale of container deployment (used if deployment uses a container)."
              | optional,
            patterns
              | Array String
              | doc "File/dir patterns to exclude (or force include if starts with '!')."
              | optional,
            plugin
              | String
              | doc "Deploy plugin override. Defaults to first supported plugin available."
              | optional,
            timeout
              | std.number.Integer
              | doc "Execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period."
              | optional,
            ..
          },
    }
    in
  std.contract.Sequence [ refs."definitions.OutblocksApp", { _ | Dyn } ]