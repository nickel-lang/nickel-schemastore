# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Action" =
        { key | String | optional, path | String | optional, .. },
      "definitions.Breakpoint" =
        {
            on | refs."definitions.BreakpointOn" | { _ | Dyn } | optional,
            timeout | js2n.Always | optional,
            ..
          },
      "definitions.BreakpointOn" = { failure | String | optional, .. },
      "definitions.CronCompensator" =
        {
            enable | Bool | optional,
            latest_first | Bool | optional,
            stop_if_latter_executed | Bool | optional,
            ..
          },
      "definitions.MergeTrigger" = { branches | Array String | optional, .. },
      "definitions.NetworkHookInfo" =
        {
            client | String | optional,
            hook | String | optional,
            labels | {  .. } | optional,
            ..
          },
      "definitions.PipelineOutput" =
        {
            desc | String | optional,
            name | String | optional,
            ref | String | optional,
            ..
          },
      "definitions.PipelineParam" =
        {
            "default" | js2n.Always | optional,
            desc | String | optional,
            name | String | optional,
            required | Bool | optional,
            type | String | optional,
            ..
          },
      "definitions.PipelineTrigger" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                filter
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      { _ | String },
                      Array Dyn
                    ]
                  | optional,
                on | String | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.PushTrigger" =
        {
            branches | Array String | optional,
            tags | Array String | optional,
            ..
          },
      "definitions.Stage" =
        {
            stage
              | Array (
                std.contract.Sequence
                  [ refs."definitions.typedActionMap", { _ | Dyn } ]
              )
              | optional,
            ..
          },
      "definitions.StorageConfig" = { context | String | optional, .. },
      "definitions.TriggerConfig" =
        {
            "merge" | refs."definitions.MergeTrigger" | { _ | Dyn } | optional,
            push | refs."definitions.PushTrigger" | { _ | Dyn } | optional,
            ..
          },
      "definitions.typedActionMap" =
        {
            _ | std.contract.Sequence [ refs."definitions.Action", { _ | Dyn } ]
          },
    }
    in
  {
      "$schema" | String | optional,
      breakpoint | refs."definitions.Breakpoint" | optional,
      cron | String | optional,
      cron_compensator | refs."definitions.CronCompensator" | optional,
      envs
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | String }, Array Dyn ]
        | optional,
      lifecycle
        | Array refs."definitions.NetworkHookInfo"
        | doc "生命周期"
        | optional,
      name | String | optional,
      on | refs."definitions.TriggerConfig" | optional,
      outputs | Array refs."definitions.PipelineOutput" | doc "输出" | optional,
      params | Array refs."definitions.PipelineParam" | doc "流水线参数" | optional,
      stages | Array refs."definitions.Stage" | doc "步骤" | optional,
      storage | refs."definitions.StorageConfig" | optional,
      triggers | refs."definitions.PipelineTrigger" | optional,
      version | String | doc "pipeline.yml 语法规范版本" | optional,
      ..
    }