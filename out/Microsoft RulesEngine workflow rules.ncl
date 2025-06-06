# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ActionInfo" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              { Context | { _ | Dyn } | optional, Name | String, .. },
              Array Dyn
            ],
      "definitions.LeafRule" =
        {
            Actions | refs."definitions.RuleActions" | optional,
            Enabled | Bool | optional,
            ErrorMessage | String | optional,
            Expression | String,
            LocalParams
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ScopedParam", { _ | Dyn } ]
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
      "definitions.Rule" =
        {
            Actions | refs."definitions.RuleActions" | optional,
            Enabled | Bool | optional,
            ErrorMessage | String | optional,
            LocalParams
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ScopedParam", { _ | Dyn } ]
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
                      [ refs."definitions.LeafRule", { _ | Dyn } ],
                    std.contract.Sequence [ js2n.Always, { _ | Dyn } ]
                  ]
              ),
            SuccessEvent | String | optional,
            ..
          },
      "definitions.RuleActions" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                OnFailure | refs."definitions.ActionInfo" | optional,
                OnSuccess | refs."definitions.ActionInfo" | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.ScopedParam" = { Expression | String, Name | String, .. },
    }
    in
  {
      GlobalParams | Array refs."definitions.ScopedParam" | optional,
      Rules
        | Array (
          std.contract.any_of
            [ refs."definitions.LeafRule", refs."definitions.Rule" ]
        ),
      WorkflowName | String,
      WorkflowsToInject | Array String | optional,
      ..
    }