# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "items.definitions.ActionInfo" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              { Context | { _ | Dyn } | optional, Name | String, .. },
              Array Dyn
            ],
      "items.definitions.LeafRule" =
        {
            Actions | refs."items.definitions.RuleActions" | optional,
            Enabled | Bool | optional,
            ErrorMessage | String | optional,
            Expression | String,
            LocalParams
              | Array (
                std.contract.Sequence
                  [ refs."items.definitions.ScopedParam", { _ | Dyn } ]
              )
              | optional,
            Properties | { _ | Dyn } | optional,
            RuleExpressionType
              | std.enum.TagOrString
              | [| 'LambdaExpression |]
              | optional,
            RuleName | String,
            SuccessEvent | String | optional,
            ..
          },
      "items.definitions.Rule" =
        {
            Actions | refs."items.definitions.RuleActions" | optional,
            Enabled | Bool | optional,
            ErrorMessage | String | optional,
            LocalParams
              | Array (
                std.contract.Sequence
                  [ refs."items.definitions.ScopedParam", { _ | Dyn } ]
              )
              | optional,
            Operator
              | std.enum.TagOrString
              | [| 'OrElse, 'Or, 'AndAlso, 'And |],
            Properties | { _ | Dyn } | optional,
            RuleName | String,
            Rules
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."items.definitions.LeafRule", { _ | Dyn } ],
                    std.contract.Sequence [ js2n.Always, { _ | Dyn } ]
                  ]
              ),
            SuccessEvent | String | optional,
            ..
          },
      "items.definitions.RuleActions" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                OnFailure | refs."items.definitions.ActionInfo" | optional,
                OnSuccess | refs."items.definitions.ActionInfo" | optional,
                ..
              },
              Array Dyn
            ],
      "items.definitions.ScopedParam" =
        { Expression | String, Name | String, .. },
    }
    in
  Array
      {
        GlobalParams | Array refs."items.definitions.ScopedParam" | optional,
        Rules
          | Array (
            std.contract.any_of
              [
                refs."items.definitions.LeafRule",
                refs."items.definitions.Rule"
              ]
          ),
        WorkflowName | String,
        WorkflowsToInject | Array String | optional,
        ..
      }