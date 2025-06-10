# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.buildFileEnvs" = { _ | String },
      "definitions.buildFileIncludes" =
        {
            _ | std.contract.Sequence
              [ refs."definitions.taskSrc.items", String ]
          },
      "definitions.buildFileReferences" =
        {
            _ | std.contract.Sequence
              [ refs."definitions.taskSrc.items", String ]
          },
      "definitions.buildFileServices" = { _ | refs."definitions.service" },
      "definitions.buildFileTasks" = { _ | refs."definitions.task" },
      "definitions.containerService" =
        {
            envs
              | { _ | String }
              | doc m%"
                Environment values for the current service
                https://no0dles.gitbook.io/hammerkit/build-file/environment-variables
              "%
              | optional,
            healthcheck
              | {
                cmd | String | doc "task to check if the service is healthy",
              }
              | doc m%"
                Check to detect if the service is started and ready
                https://no0dles.gitbook.io/hammerkit/service/container#healthcheck
              "%
              | optional,
            image
              | String
              | doc "Container image for the current service to run commands in",
            labels
              | { _ | String }
              | doc m%"
                A map of label values for the current service
                https://no0dles.gitbook.io/hammerkit/labels
              "%
              | optional,
            mounts
              | js2n.array.UniqueItems
              | Array (js2n.string.Matches "\\d+:\\d+")
              | doc m%"
                File paths that get mounted into the container <localPath>:<containerPath>
                https://no0dles.gitbook.io/hammerkit/service/container#mounts
              "%
              | optional,
            ports
              | js2n.array.UniqueItems
              | Array (js2n.string.Matches "\\d+:\\d+")
              | doc m%"
                A list of ports that get exposed on the host from the container <localPort>:<targetPort>
                https://no0dles.gitbook.io/hammerkit/service/container#mounts
              "%
              | optional,
            volumes
              | js2n.array.UniqueItems
              | Array (js2n.string.Matches "\\d+:\\d+")
              | doc m%"
                A list of volumes that get attached to the container <name>:<containerPath>
                https://no0dles.gitbook.io/hammerkit/service/container#mounts
              "%
              | optional,
          },
      "definitions.containerTask" =
        {
            cache | refs."definitions.taskCache" | String | optional,
            cmds
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.taskCommand",
                    std.contract.any_of [ { _ | Dyn }, String ]
                  ]
              )
              | doc "Commands for the current task",
            continuous | refs."definitions.taskContinuous" | Bool | optional,
            deps | refs."definitions.taskDeps" | Array Dyn | optional,
            description
              | refs."definitions.taskCommand"
              | std.contract.any_of [ { _ | Dyn }, String ]
              | optional,
            envs | refs."definitions.taskEnvs" | { _ | Dyn } | optional,
            extend | refs."definitions.taskExtend" | String | optional,
            generates | refs."definitions.taskGenerates" | Array Dyn | optional,
            image
              | String
              | doc "Container image for the current task to run commands in",
            labels | refs."definitions.taskLabels" | { _ | Dyn } | optional,
            mounts
              | js2n.array.UniqueItems
              | Array (js2n.string.Matches "\\d+:\\d+")
              | doc m%"
                File paths that get mounted into the container
                https://no0dles.gitbook.io/hammerkit/task/container#adding-mounts
              "%
              | optional,
            needs | refs."definitions.taskNeeds" | Array Dyn | optional,
            ports
              | js2n.array.UniqueItems
              | Array (js2n.string.Matches "\\d+:\\d+")
              | doc "A list of ports that get exposed on the host from the container <localPort>:<targetPort>"
              | optional,
            shell
              | String
              | doc "Define which shell is used to execute the commands"
              | optional,
            src | refs."definitions.taskSrc" | Array Dyn | optional,
          },
      "definitions.kubernetesService" =
        {
            context
              | String
              | doc m%"
                Kubernetes context for the current service
                https://no0dles.gitbook.io/hammerkit/service/kubernetes#config
              "%,
            kubeconfig
              | String
              | doc m%"
                Kube config for the current service
                https://no0dles.gitbook.io/hammerkit/service/kubernetes#config
              "%
              | optional,
            ports
              | js2n.array.UniqueItems
              | Array (js2n.string.Matches "\\d+:\\d+")
              | doc "A list of ports that get exposed on the host from the service <localPort>:<targetPort>",
            selector
              | {
                name | String | doc "resource name for the kubernetes resource",
                type
                  | std.enum.TagOrString
                  | [| 'pod, 'service, 'deployment |]
                  | doc "resource type for the current service",
              }
              | doc m%"
                Selector to specify which resource gets forwarded to
                https://no0dles.gitbook.io/hammerkit/service/kubernetes
              "%,
          },
      "definitions.localTask" =
        {
            cache | refs."definitions.taskCache" | String | optional,
            cmds
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.taskCommand",
                    std.contract.any_of [ { _ | Dyn }, String ]
                  ]
              )
              | doc "Commands for the current task",
            continuous | refs."definitions.taskContinuous" | Bool | optional,
            deps | refs."definitions.taskDeps" | Array Dyn | optional,
            description
              | refs."definitions.taskCommand"
              | std.contract.any_of [ { _ | Dyn }, String ]
              | optional,
            envs | refs."definitions.taskEnvs" | { _ | Dyn } | optional,
            extend | refs."definitions.taskExtend" | String | optional,
            generates | refs."definitions.taskGenerates" | Array Dyn | optional,
            labels | refs."definitions.taskLabels" | { _ | Dyn } | optional,
            needs | refs."definitions.taskNeeds" | Array Dyn | optional,
            src | refs."definitions.taskSrc" | Array Dyn | optional,
          },
      "definitions.service" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.containerService", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.kubernetesService", { _ | Dyn } ]
            ],
      "definitions.task" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.containerTask", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.localTask", { _ | Dyn } ]
            ],
      "definitions.taskCache" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'none, 'modify-date, 'checksum |] ],
      "definitions.taskCommand" =
        std.contract.any_of
            [
              String,
              {
                cmd | String | doc "Command to be executed for the task",
                path
                  | refs."definitions.taskSrc.items"
                  | String
                  | doc "Path below build file path"
                  | optional,
              }
            ],
      "definitions.taskContinuous" = Bool,
      "definitions.taskDeps" =
        std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
      "definitions.taskEnvs" = { _ | String },
      "definitions.taskExtend" = String,
      "definitions.taskGenerates" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.taskSrc.items", String ]
              )
            ],
      "definitions.taskLabels" = { _ | String },
      "definitions.taskNeeds" =
        std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
      "definitions.taskSrc" =
        std.contract.Sequence
            [ js2n.array.UniqueItems, Array (js2n.string.MinLength 1) ],
      "definitions.taskSrc.items" = js2n.string.MinLength 1,
    }
    in
  {
      envs | refs."definitions.buildFileEnvs" | optional,
      includes | refs."definitions.buildFileIncludes" | optional,
      references | refs."definitions.buildFileReferences" | optional,
      services | refs."definitions.buildFileServices" | optional,
      tasks | refs."definitions.buildFileTasks" | optional,
    }