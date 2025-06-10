# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.BazelStep" =
        {
            build_flags
              | Array String
              | doc "Build flags to use in addition to defined in /etc/bazel.bazelrc"
              | optional,
            build_targets
              | Array String
              | doc "List of bazel targets to build"
              | optional,
            test_flags
              | Array String
              | doc "Test flags to use in addition to defined in /etc/bazel.bazelrc"
              | optional,
            test_targets
              | Array String
              | doc "List of bazel targets to test"
              | optional,
          },
      "definitions.BranchesAndPaths" =
        {
            branches
              | Array String
              | doc "List of branch name masks (doubleglob) to match",
            branches-ignore
              | Array String
              | doc "List of branch name masks (doubleglob) to ignore"
              | optional,
            from-branches
              | Array String
              | doc "List of source branches masks (doubleglob) to match. If not specified will match any source branch name"
              | optional,
            from-branches-ignore
              | Array String
              | doc "List of source branches masks (doubleglob) to ignore. If not specified, no source branch names are ignored"
              | optional,
            paths
              | Array String
              | doc "List of path masks (doubleglob) to match. If not specified, all paths are matched"
              | optional,
            paths-ignore
              | Array String
              | doc "List of path masks (doubleglob) to match. If not specified, all paths are ignored"
              | optional,
          },
      "definitions.BranchesOrTags" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "branches" ],
                  js2n.record.Required [ "tags" ]
                ],
              {
                branches
                  | Array String
                  | doc "List of branch name masks (doubleglob) to match"
                  | optional,
                branches-ignore
                  | Array String
                  | doc "List of branch name masks (doubleglob) to ignore"
                  | optional,
                tags
                  | Array String
                  | doc "List of tag masks (doubleglob) to match"
                  | optional,
                tags-ignore
                  | Array String
                  | doc "List of tag masks (doubleglob) to ignore"
                  | optional,
              }
            ],
      "definitions.Config" =
        {
            workflows
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Workflow", { _ | Dyn } ]
              )
              | doc "The list of FasterCI workflows",
          },
      "definitions.On" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "push" ],
                  js2n.record.Required [ "pull_request" ]
                ],
              {
                pull_request
                  | refs."definitions.BranchesAndPaths"
                  | { _ | Dyn }
                  | doc "Run the workflow on pull request"
                  | optional,
                push
                  | refs."definitions.BranchesOrTags"
                  | { _ | Dyn }
                  | doc "Run the workflow on code push"
                  | optional,
              }
            ],
      "definitions.Step" =
        std.contract.Sequence
            [
              js2n.record.DependentFields
                {
                  github_check = [ "name" ],
                  github_check_md_file = [ "name" ],
                },
              std.contract.any_of
                [
                  js2n.record.Required [ "github_check_md_file" ],
                  js2n.record.Required [ "run" ],
                  js2n.record.Required [ "bazel" ]
                ],
              {
                bazel
                  | refs."definitions.BazelStep"
                  | { _ | Dyn }
                  | doc "Bazel step"
                  | optional,
                github_check
                  | Bool
                  | doc "Report the result of the step as a separate github check"
                  | optional,
                github_check_md_file
                  | String
                  | doc "After completing the step, report as a separate Github Check, using the content of the file as a report body, optional"
                  | optional,
                name | String | doc "Step name, optional" | optional,
                run
                  | String
                  | doc "Arbitrary command execution; Could be multiline"
                  | optional,
                side_effects
                  | Bool
                  | doc "Side effects step is anything that may change the state not related to building from the source tree or tests execution. Think of publishing artifacts, sending notifications etc."
                  | optional,
                working-directory
                  | String
                  | doc "Directory to run the step instead of default repo directory"
                  | optional,
              }
            ],
      "definitions.Workflow" =
        {
            cleanup
              | String
              | doc "optional cleanup command, executed after the workflow"
              | optional,
            env
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | doc "Environment variables"
              | optional,
            ephemeral
              | Bool
              | doc "optionally mark this workflow as ephemeral. Will not keep the workflow state between runs"
              | optional,
            hide_from_github | Bool | doc "Do not notify github" | optional,
            image | String | doc "Docker image to run the workflow" | optional,
            init
              | String
              | doc "Optional command to run before the workflow. Use multiline for multiple commands"
              | optional,
            max_parallel
              | std.number.Integer
              | doc "optional maximum number of parallel runs of this workflow"
              | optional,
            name | String | doc "Workflow name",
            on
              | refs."definitions.On"
              | { _ | Dyn }
              | doc "Event to activate the workflow on",
            secrets
              | Array String
              | doc "List of secrets to mount as environment variables"
              | optional,
            steps
              | Array (
                std.contract.Sequence [ refs."definitions.Step", { _ | Dyn } ]
              )
              | doc "List of workflow steps to execute"
              | optional,
          },
    }
    in
  refs."definitions.Config"