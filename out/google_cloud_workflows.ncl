# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.args" =
        {
            auth
              | {
                audience
                  | std.contract.any_of
                    [ String, js2n.string.Matches "^\\$\\{.+\\}$" ]
                  | doc "Specifies the audience for the OIDC token. By default, it's set to the same value as url; however, it should be set to your service's root URL."
                  | optional,
                scope
                  | std.contract.any_of [ js2n.array.Contains String, String ]
                  | doc "Specify token scope to limit an application's access to a user's account."
                  | optional,
                scopes
                  | refs."definitions.scopes"
                  | std.contract.any_of [ Array Dyn, String ]
                  | doc "Specify token scope to limit an application's access to a user's account."
                  | optional,
                type
                  | std.enum.TagOrString
                  | [| 'OAuth2, 'OIDC |]
                  | doc "The type of authentication."
                  | optional,
              }
              | doc "Required if the API being called requires authentication."
              | optional,
            body
              | std.contract.any_of
                [
                  { _ | Dyn },
                  js2n.Null,
                  String,
                  js2n.string.Matches "^\\$\\{.+\\}$"
                ]
              | doc "Body fields to supply input to the API."
              | optional,
            connector_params
              | {
                polling_policy
                  | {
                    initial_delay
                      | Number
                      | doc "Time in seconds. Only applies to long-running operation calls."
                      | optional,
                    max_delay
                      | Number
                      | doc "Time in seconds. Only applies to long-running operation calls."
                      | optional,
                    multiplier
                      | Number
                      | doc "Time in seconds. Only applies to long-running operation calls."
                      | optional,
                    ..
                  }
                  | doc "Polling policy."
                  | optional,
                scopes
                  | refs."definitions.scopes"
                  | std.contract.any_of [ Array Dyn, String ]
                  | doc "OAuth2 scopes to pass to the Google API."
                  | optional,
                skip_polling
                  | Bool
                  | doc "If set to True, the connector invocation call is non-blocking if the initial request to manage or update the resource succeeds"
                  | optional,
                timeout
                  | std.number.Integer
                  | js2n.number.Maximum 31536000
                  | doc "Time in seconds. The end-to-end duration the connector call is allowed to run for before throwing a timeout exception."
                  | optional,
                ..
              }
              | doc "Connector-specific parameters."
              | optional,
            headers
              | js2n.record.MinProperties 1
              | doc "Header fields to supply input to the API."
              | optional,
            method
              | std.enum.TagOrString
              | [|
                'PATCH,
                'TRACE,
                'OPTIONS,
                'CONNECT,
                'DELETE,
                'PUT,
                'POST,
                'HEAD,
                'GET
              |]
              | doc "The type of HTTP request method to use. Required if using call type http.request."
              | optional,
            query
              | std.contract.any_of
                [ { _ | Dyn }, js2n.string.Matches "^\\$\\{.+\\}$" ]
              | doc "Query fields to supply input to the API."
              | optional,
            timeout
              | Number
              | doc "Time in seconds. How long a request is allowed to run before throwing an exception. Default and maximum values vary by call."
              | optional,
            url
              | std.contract.any_of
                [ String, js2n.string.Matches "^\\$\\{.+\\}$" ]
              | optional,
            ..
          },
      "definitions.assign" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 50,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ js2n.record.MaxProperties 1, js2n.record.MinProperties 1 ]
              )
            ],
      "definitions.branches" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 10,
              js2n.array.MinItems 2,
              refs."definitions.stepArray"
            ],
      "definitions.call" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    '"http.request",
                    '"http.delete",
                    '"http.patch",
                    '"http.put",
                    '"http.post",
                    '"http.get"
                  |]
                ],
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| '"sys.log", '"sys.sleep_until", '"sys.sleep" |]
                ],
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    '"events.create_callback_endpoint",
                    '"events.await_callback"
                  |]
                ],
              String,
              js2n.string.Matches "^googleapis(\\.[a-zA-Z1-9]+)+"
            ],
      "definitions.condition" =
        {
            args | refs."definitions.args" | { _ | Dyn } | optional,
            assign | refs."definitions.assign" | Array Dyn | optional,
            call | refs."definitions.call" | String | optional,
            condition
              | std.contract.any_of
                [ js2n.string.Matches "^\\$\\{.+\\}$", Bool ]
              | doc "An expression to switch on.",
            except | refs."definitions.except" | { _ | Dyn } | optional,
            for | refs."definitions.for" | { _ | Dyn } | optional,
            next | refs."definitions.next" | String | optional,
            parallel | refs."definitions.parallel" | { _ | Dyn } | optional,
            raise
              | refs."definitions.raise"
              | std.contract.any_of [ { _ | Dyn }, String ]
              | optional,
            result | refs."definitions.result" | optional,
            retry | refs."definitions.retry" | optional,
            return | refs."definitions.return" | optional,
            steps | refs."definitions.stepArray" | Array Dyn | optional,
            switch | refs."definitions.switch" | Array Dyn | optional,
            try | refs."definitions.try" | optional,
            ..
          },
      "definitions.except" =
        {
            as
              | String
              | doc "The name of a map variable that contains the error message."
              | optional,
            steps
              | refs."definitions.stepArray"
              | Array Dyn
              | doc "A list of steps."
              | optional,
          },
      "definitions.for" =
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
                      js2n.record.Required [ "in" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "range" ],
                      Array Dyn
                    ]
                ],
              {
                "in"
                  | std.contract.any_of
                    [ Array Dyn, js2n.string.Matches "^\\$\\{.+\\}$" ]
                  | doc "An expression that evaluates into a list or a list definition. Required, if not using 'range'."
                  | optional,
                index
                  | String
                  | doc "An index variable name. Contains the value to the current offset of the iteration. "
                  | optional,
                range
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 2,
                          js2n.array.MinItems 2,
                          Array Number
                        ],
                      js2n.string.Matches "^\\$\\{\\[.+\\]\\}$"
                    ]
                  | doc "A list of two expressions, specifying the beginning and end of the range, both inclusive. Required, if not using 'in'."
                  | optional,
                steps
                  | refs."definitions.stepArray"
                  | Array Dyn
                  | doc "Each iteration the steps will be executed.",
                value
                  | String
                  | doc "A loop variable name. Contains the value of the currently iterated element.",
              }
            ],
      "definitions.next" =
        std.contract.any_of
            [
              String,
              js2n.Const "end",
              js2n.Const "continue",
              js2n.Const "break"
            ],
      "definitions.parallel" =
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
                      js2n.record.Required [ "for" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "branches" ],
                      Array Dyn
                    ]
                ],
              {
                branches
                  | refs."definitions.branches"
                  | Array Dyn
                  | doc "Branches that can run concurrently. Required, if not using 'for'."
                  | optional,
                concurrency_limit
                  | std.number.Integer
                  | doc "The maximum number of branches and iterations that can concurrently execute within a single workflow execution before further branches and iterations are queued to wait. This applies to a single 'parallel' step only and does not cascade. Must be a positive integer and can be either a literal value or an expression."
                  | optional,
                exception_policy
                  | std.contract.Equal "continueAll"
                  | doc "The action for other branches when an exception occurs. Optional. The default policy, 'continueAll', results in no further action, and all other branches will attempt to run."
                  | optional,
                for
                  | refs."definitions.for"
                  | { _ | Dyn }
                  | doc "A loop where iterations can run concurrently. Required, if not using 'branches'."
                  | optional,
                shared
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "A list of writable variables with parent scope that allow assignments within the 'parallel' step."
                  | optional,
              }
            ],
      "definitions.raise" =
        std.contract.any_of
            [
              String,
              {
                code | std.number.Integer | doc "Error code." | optional,
                message | String | doc "Error message string." | optional,
                ..
              }
            ],
      "definitions.result" =
        std.contract.any_of
            [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
      "definitions.retry" =
        std.contract.any_of
            [
              {
                backoff
                  | {
                    initial_delay
                      | std.number.Integer
                      | doc "Delay in seconds between the initial failure and the first retry."
                      | optional,
                    max_delay
                      | std.number.Integer
                      | doc "Maximum delay in seconds between retries."
                      | optional,
                    multiplier
                      | std.number.Integer
                      | doc "Multiplier applied to the previous delay to calculate the delay for the subsequent retry."
                      | optional,
                  }
                  | doc "Block that controls how retries occur."
                  | optional,
                max_retries
                  | std.number.Integer
                  | doc "Maximum number of times a step will be retried, not counting the initial step execution attempt."
                  | optional,
                predicate
                  | String
                  | doc "Defines which error codes will be retried. Options include ${http.default_retry_predicate}, ${http.default_retry_predicate_non_idempotent}, or a custom predicate defined as a subworkflow."
                  | optional,
              },
              js2n.string.Matches "^\\$\\{.+\\}$"
            ],
      "definitions.return" =
        std.contract.any_of
            [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
      "definitions.scopes" =
        std.contract.any_of [ js2n.array.Contains String, String, String ],
      "definitions.step" =
        std.contract.Sequence
            [
              js2n.record.DependentFields
                {
                  args = [ "call" ],
                  except = [ "try" ],
                  result = [ "call" ],
                  retry = [ "try" ],
                },
              {
                args | refs."definitions.args" | { _ | Dyn } | optional,
                assign | refs."definitions.assign" | Array Dyn | optional,
                call | refs."definitions.call" | String | optional,
                except | refs."definitions.except" | { _ | Dyn } | optional,
                for | refs."definitions.for" | { _ | Dyn } | optional,
                next | refs."definitions.next" | String | optional,
                parallel | refs."definitions.parallel" | { _ | Dyn } | optional,
                raise
                  | refs."definitions.raise"
                  | std.contract.any_of [ { _ | Dyn }, String ]
                  | optional,
                result | refs."definitions.result" | optional,
                retry | refs."definitions.retry" | optional,
                return | refs."definitions.return" | optional,
                steps | refs."definitions.stepArray" | Array Dyn | optional,
                switch | refs."definitions.switch" | Array Dyn | optional,
                try | refs."definitions.try" | optional,
              }
            ],
      "definitions.stepArray" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 100000,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [
                    js2n.record.MaxProperties 1,
                    js2n.record.MinProperties 1,
                    {
                      _ | std.contract.Sequence
                        [ refs."definitions.step", { _ | Dyn } ]
                    },
                    js2n.record.FieldsMatch "^.*$"
                  ]
              )
            ],
      "definitions.subworkflow" =
        {
            params
              | js2n.array.MaxItems 10
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | doc "The name of the parameter variable."
              | optional,
            steps
              | refs."definitions.stepArray"
              | Array Dyn
              | doc "An array of objects with a single step."
              | optional,
          },
      "definitions.switch" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 50,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."definitions.condition", { _ | Dyn } ]
              )
            ],
      "definitions.try" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.step", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.stepArray", Array Dyn ]
            ],
    }
    in
  std.contract.any_of
      [
        js2n.record.Record
          {
            additional = 'Some refs."definitions.subworkflow",
            patterns = {},
            properties =
              {
                  main =
                    {
                        params
                          | js2n.array.MaxItems 1
                          | js2n.array.MinItems 0
                          | js2n.array.UniqueItems
                          | Array String
                          | doc "The name of the parameter variable."
                          | optional,
                        steps
                          | refs."definitions.stepArray"
                          | Array Dyn
                          | doc "An array of objects with a single step."
                          | optional,
                      },
                },
            required = { main = true, },
          },
        std.contract.Sequence [ refs."definitions.stepArray", Array Dyn ]
      ]