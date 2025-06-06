# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      commands
        | std.contract.any_of
          [
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = { ".*" = String, },
                properties = {},
                required = {},
              },
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      ".*" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                    },
                properties = {},
                required = {},
              },
            { _ | Dyn },
            js2n.string.Matches "(?ms)^\\$\\$?\\#?\\!?\\((.+)\\)$"
          ]
        | doc m%"
          Commands are custom commands that can be executed via 'devspace run COMMAND'. These commands are run within a pseudo bash
          that also allows executing special commands such as run_watch or is_equal.
        "%
        | optional,
      dependencies
        | std.contract.any_of
          [
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      ".*" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                    },
                properties = {},
                required = {},
              },
            js2n.string.Matches "(?ms)^\\$\\$?\\#?\\!?\\((.+)\\)$"
          ]
        | doc m%"
          Dependencies are sub devspace projects that lie in a local folder or remote git repository that can be executed
          from within the pipeline. In contrast to imports, these projects pose as separate fully functional DevSpace projects
          that typically lie including source code in a different folder and can be used to compose a full microservice
          application that will be deployed by DevSpace. Each dependency name can only be used once and if you want to use
          the same project multiple times, make sure to use a different name for each of those instances.
        "%
        | optional,
      deployments
        | std.contract.any_of
          [
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      ".*" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                    },
                properties = {},
                required = {},
              },
            js2n.string.Matches "(?ms)^\\$\\$?\\#?\\!?\\((.+)\\)$"
          ]
        | doc m%"
          Deployments holds configuration of how DevSpace should deploy resources to Kubernetes. By default, DevSpace will deploy all defined deployments.
          If you are using a custom pipeline, you can dynamically define which deployment is deployed at which time during the
          execution.
        "%
        | optional,
      dev
        | std.contract.any_of
          [
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      ".*" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                    },
                properties = {},
                required = {},
              },
            js2n.string.Matches "(?ms)^\\$\\$?\\#?\\!?\\((.+)\\)$"
          ]
        | doc m%"
          Dev holds development configuration. Each dev configuration targets a single pod and enables certain dev services on that pod
          or even rewrites it if certain changes are requested, such as adding an environment variable or changing the entrypoint.
          Dev allows you to:
          - sync local folders to the Kubernetes pod
          - port forward remote ports to your local computer
          - forward local ports into the Kubernetes pod
          - configure an ssh tunnel to the Kubernetes pod
          - proxy local commands to the container
          - restart the container on file changes
        "%
        | optional,
      functions
        | std.contract.any_of
          [
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = { ".*" = String, },
                properties = {},
                required = {},
              },
            js2n.string.Matches "(?ms)^\\$\\$?\\#?\\!?\\((.+)\\)$"
          ]
        | doc m%"
          Functions are POSIX functions that can be used within pipelines. Those functions can also be imported by
          imports.
        "%
        | optional,
      hooks
        | std.contract.any_of
          [
            Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            ),
            js2n.string.Matches "(?ms)^\\$\\$?\\#?\\!?\\((.+)\\)$"
          ]
        | doc m%"
          Hooks are actions that are executed at certain points within the pipeline. Hooks are ordered and are executed
          in the order they are specified. They are deprecated and pipelines should be used instead.
        "%
        | optional,
      images
        | std.contract.any_of
          [
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      ".*" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                    },
                properties = {},
                required = {},
              },
            js2n.string.Matches "(?ms)^\\$\\$?\\#?\\!?\\((.+)\\)$"
          ]
        | doc m%"
          Images holds configuration of how DevSpace should build images. By default, DevSpace will build all defined images.
          If you are using a custom pipeline, you can dynamically define which image is built at which time during the
          execution.
        "%
        | optional,
      imports
        | std.contract.any_of
          [
            Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            ),
            js2n.string.Matches "(?ms)^\\$\\$?\\#?\\!?\\((.+)\\)$"
          ]
        | doc m%"
          Imports merges specified config files into this one. This is very useful to split up your DevSpace configuration
          into multiple files and reuse those through git, a remote url or common local path.
        "%
        | optional,
      localRegistry
        | js2n.OneOf
          [
            std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
            js2n.string.Matches "(?ms)^\\$\\$?\\#?\\!?\\((.+)\\)$"
          ]
        | doc "LocalRegistry specifies the configuration for a local image registry"
        | optional,
      name
        | String
        | doc m%"
          Name specifies the name of the DevSpace project and uniquely identifies a project.
          DevSpace will not allow multiple active projects with the same name in the same Kubernetes namespace.
          If not provided, DevSpace will use the name of the current working directory.
        "%,
      pipelines
        | std.contract.any_of
          [
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = { ".*" = String, },
                properties = {},
                required = {},
              },
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      ".*" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                    },
                properties = {},
                required = {},
              },
            { _ | Dyn },
            js2n.string.Matches "(?ms)^\\$\\$?\\#?\\!?\\((.+)\\)$"
          ]
        | doc m%"
          Pipelines are the work blocks that DevSpace should execute when devspace dev, devspace build, devspace deploy or devspace purge
          is called. Pipelines are defined through a special POSIX script that allows you to use special commands
          such as create_deployments, start_dev, build_images etc. to signal DevSpace you want to execute
          a specific functionality. The pipelines dev, build, deploy and purge are special and will override
          the default functionality of the respective command if defined. All other pipelines can be either run
          via the devspace run-pipeline command or used within another pipeline through run_pipelines.
        "%
        | optional,
      pullSecrets
        | std.contract.any_of
          [
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      ".*" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                    },
                properties = {},
                required = {},
              },
            js2n.string.Matches "(?ms)^\\$\\$?\\#?\\!?\\((.+)\\)$"
          ]
        | doc m%"
          PullSecrets are image pull secrets that will be created by devspace in the target namespace
          during devspace dev or devspace deploy. DevSpace will merge all defined pull secrets into a single
          one or the one specified.
        "%
        | optional,
      require
        | js2n.OneOf
          [
            std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
            js2n.string.Matches "(?ms)^\\$\\$?\\#?\\!?\\((.+)\\)$"
          ]
        | doc m%"
          Require defines what DevSpace, plugins and command versions are required to use this config and if a condition is not
          fulfilled, DevSpace will fail.
        "%
        | optional,
      vars
        | std.contract.any_of
          [
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = { ".*" = String, },
                properties = {},
                required = {},
              },
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      ".*" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                    },
                properties = {},
                required = {},
              },
            { _ | Dyn },
            js2n.string.Matches "(?ms)^\\$\\$?\\#?\\!?\\((.+)\\)$"
          ]
        | doc "Vars are config variables that can be used inside other config sections to replace certain values dynamically"
        | optional,
      version
        | String
        | doc m%"
          Version holds the config version. DevSpace will always convert older configs to the current latest
          config version, which makes it possible to use the newest DevSpace version also with older config
          versions.
        "%,
      ..
    }