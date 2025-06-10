# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ArgumentType" =
        js2n.OneOf
            [
              String,
              std.contract.Sequence
                [ refs."definitions.GraphInputArgument", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.TaskOutputArgument", { _ | Dyn } ]
            ],
      "definitions.CachingStrategySpec" =
        { maxCacheStaleness | String | optional, },
      "definitions.ComponentReference" =
        {
            digest | String | optional,
            name | String | optional,
            spec | refs."definitions.ComponentSpec" | { _ | Dyn } | optional,
            tag | String | optional,
            url | String | optional,
          },
      "definitions.ComponentSpec" =
        {
            description | String | optional,
            implementation | refs."definitions.ImplementationType",
            inputs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.InputSpec", { _ | Dyn } ]
              )
              | optional,
            metadata | refs."definitions.MetadataSpec" | { _ | Dyn } | optional,
            name | String | optional,
            outputs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.OutputSpec", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.ConcatPlaceholder" =
        {
            concat
              | Array refs."definitions.StringOrPlaceholder"
              | doc "Items to concatenate",
          },
      "definitions.ContainerImplementation" =
        { container | refs."definitions.ContainerSpec" | { _ | Dyn }, .. },
      "definitions.ContainerSpec" =
        {
            args
              | Array refs."definitions.StringOrPlaceholder"
              | doc "Arguments to the entrypoint. The docker image's CMD is used if this is not provided."
              | optional,
            command
              | Array refs."definitions.StringOrPlaceholder"
              | doc "Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided."
              | optional,
            env
              | { _ | refs."definitions.StringOrPlaceholder" }
              | doc "List of environment variables to set in the container."
              | optional,
            image
              | refs."definitions.StringOrPlaceholder"
              | doc "Docker image name.",
          },
      "definitions.ExecutionOptionsSpec" =
        {
            cachingStrategy
              | refs."definitions.CachingStrategySpec"
              | { _ | Dyn }
              | optional,
            retryStrategy
              | refs."definitions.RetryStrategySpec"
              | { _ | Dyn }
              | optional,
          },
      "definitions.GraphImplementation" =
        { graph | refs."definitions.GraphSpec" | { _ | Dyn }, },
      "definitions.GraphInputArgument" =
        {
            graphInput
              | {
                inputName | String,
                type | refs."definitions.TypeSpecType" | optional,
              }
              | doc "References the input of the graph/pipeline.",
          },
      "definitions.GraphSpec" =
        {
            outputValues
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.TaskOutputArgument", { _ | Dyn } ]
              }
              | optional,
            tasks
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.TaskSpec", { _ | Dyn } ]
              },
          },
      "definitions.IfConditionArgumentType" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."definitions.IsPresentPlaceholder", { _ | Dyn } ],
              Bool,
              String,
              std.contract.Sequence
                [ refs."definitions.InputValuePlaceholder", { _ | Dyn } ]
            ],
      "definitions.IfPlaceholder" =
        {
            "if"
              | {
                cond | refs."definitions.IfConditionArgumentType",
                "else"
                  | refs."definitions.ListOfStringsOrPlaceholders"
                  | Array Dyn
                  | optional,
                "then"
                  | refs."definitions.ListOfStringsOrPlaceholders"
                  | Array Dyn,
                ..
              },
            ..
          },
      "definitions.ImplementationType" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."definitions.ContainerImplementation", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.GraphImplementation", { _ | Dyn } ]
            ],
      "definitions.InputPathPlaceholder" =
        { inputPath | String | doc "Name of the input.", },
      "definitions.InputSpec" =
        {
            annotations | { _ | Dyn } | optional,
            "default" | String | optional,
            description | String | optional,
            name | String,
            "optional" | Bool | optional,
            type | refs."definitions.TypeSpecType" | optional,
          },
      "definitions.InputValuePlaceholder" =
        { inputValue | String | doc "Name of the input.", },
      "definitions.IsPresentPlaceholder" =
        { isPresent | String | doc "Name of the input.", },
      "definitions.ListOfStringsOrPlaceholders" =
        Array refs."definitions.StringOrPlaceholder",
      "definitions.MetadataSpec" = { annotations | { _ | Dyn } | optional, },
      "definitions.OutputPathPlaceholder" =
        { outputPath | String | doc "Name of the output.", },
      "definitions.OutputSpec" =
        {
            annotations | { _ | Dyn } | optional,
            description | String | optional,
            name | String,
            type | refs."definitions.TypeSpecType" | optional,
          },
      "definitions.PredicateType" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        "==" =
                          std.contract.Sequence
                              [
                                refs."definitions.TwoArgumentOperands",
                                { _ | Dyn }
                              ],
                      },
                  required = { "==" = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        "!=" =
                          std.contract.Sequence
                              [
                                refs."definitions.TwoArgumentOperands",
                                { _ | Dyn }
                              ],
                      },
                  required = { "!=" = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        ">" =
                          std.contract.Sequence
                              [
                                refs."definitions.TwoArgumentOperands",
                                { _ | Dyn }
                              ],
                      },
                  required = { ">" = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        ">=" =
                          std.contract.Sequence
                              [
                                refs."definitions.TwoArgumentOperands",
                                { _ | Dyn }
                              ],
                      },
                  required = { ">=" = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        "<" =
                          std.contract.Sequence
                              [
                                refs."definitions.TwoArgumentOperands",
                                { _ | Dyn }
                              ],
                      },
                  required = { "<" = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        "<=" =
                          std.contract.Sequence
                              [
                                refs."definitions.TwoArgumentOperands",
                                { _ | Dyn }
                              ],
                      },
                  required = { "<=" = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        and =
                          std.contract.Sequence
                              [
                                refs."definitions.TwoLogicalOperands",
                                { _ | Dyn }
                              ],
                      },
                  required = { and = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        or =
                          std.contract.Sequence
                              [
                                refs."definitions.TwoLogicalOperands",
                                { _ | Dyn }
                              ],
                      },
                  required = { or = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { not = js2n.Always, },
                  required = { not = true, },
                }
            ],
      "definitions.RetryStrategySpec" =
        { maxRetries | std.number.Integer | optional, },
      "definitions.StringOrPlaceholder" =
        js2n.OneOf
            [
              String,
              std.contract.Sequence
                [ refs."definitions.InputValuePlaceholder", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.InputPathPlaceholder", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.OutputPathPlaceholder", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.ConcatPlaceholder", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.IfPlaceholder", { _ | Dyn } ]
            ],
      "definitions.TaskOutputArgument" =
        {
            taskOutput
              | {
                outputName | String,
                taskId | String,
                type | refs."definitions.TypeSpecType" | optional,
              }
              | doc "References the output of a sibling task.",
          },
      "definitions.TaskSpec" =
        {
            annotations | { _ | Dyn } | optional,
            arguments | { _ | refs."definitions.ArgumentType" } | optional,
            componentRef | refs."definitions.ComponentReference" | { _ | Dyn },
            executionOptions
              | refs."definitions.ExecutionOptionsSpec"
              | { _ | Dyn }
              | optional,
            isEnabled | refs."definitions.PredicateType" | optional,
          },
      "definitions.TwoArgumentOperands" =
        {
            op1 | refs."definitions.ArgumentType",
            op2 | refs."definitions.ArgumentType",
          },
      "definitions.TwoLogicalOperands" =
        {
            op1 | refs."definitions.PredicateType",
            op2 | refs."definitions.PredicateType",
          },
      "definitions.TypeSpecType" =
        std.contract.any_of [ String, { _ | js2n.Always } ],
    }
    in
  refs."definitions.ComponentSpec"