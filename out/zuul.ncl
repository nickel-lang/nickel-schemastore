# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.JobDependencyModel" =
        { name | String, soft | Bool | optional, },
      "definitions.JobEntry" =
        { job | refs."definitions.JobModel" | { _ | Dyn }, },
      "definitions.JobModel" =
        {
            abstract | Bool | optional,
            allowed-projects | String | optional,
            ansible-version
              | std.contract.any_of
                [
                  Number,
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"2.11", '"2.10", '"2.9", '"2.8", '"2.7" |]
                    ]
                ]
              | optional,
            attempts | std.number.Integer | optional,
            branches | String | optional,
            dependencies
              | std.contract.any_of
                [
                  js2n.array.ArrayOf String,
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [ refs."definitions.JobDependencyModel", { _ | Dyn } ])
                ]
              | optional,
            description | String | optional,
            failure-url | String | optional,
            files | std.contract.any_of [ String, Array String ] | optional,
            final | Bool | optional,
            host-vars | { _ | { _ | Dyn } } | optional,
            irrelevant-files
              | std.contract.any_of [ String, Array String ]
              | optional,
            name | String,
            nodeset
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | optional,
            override-checkout | String | optional,
            parent | String | optional,
            post-run | std.contract.any_of [ String, Array String ] | optional,
            post-timeout | std.number.Integer | optional,
            pre-run | std.contract.any_of [ String, Array String ] | optional,
            provides | Array String | optional,
            required-projects
              | Array (
                std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [ refs."definitions.RequiredProjectModel", { _ | Dyn } ]
                  ]
              )
              | optional,
            requires | Array String | optional,
            roles
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ZuulRoleModel", { _ | Dyn } ]
              )
              | optional,
            run | std.contract.any_of [ String, Array String ] | optional,
            secrets
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.JobSecretModel", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.JobSecretModel", { _ | Dyn } ],
                        String
                      ]
                  )
                ]
              | optional,
            semaphores
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.JobSemaphoreModel", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.JobSemaphoreModel", { _ | Dyn } ],
                  Array Dyn
                ]
              | optional,
            success-url | String | optional,
            tags | std.contract.any_of [ String, Array String ] | optional,
            timeout | std.number.Integer | optional,
            vars | { _ | Dyn } | optional,
            voting | Bool | optional,
            workspace-scheme
              | std.enum.TagOrString
              | [| 'unique, 'golang, 'flat |]
              | optional,
          },
      "definitions.JobSecretModel" =
        { name | String, pass-to-parent | Bool | optional, secret | String, },
      "definitions.JobSemaphoreModel" =
        { name | String, resources-first | Bool | optional, },
      "definitions.PipelineModel" =
        {
            fail-fast | Bool | optional,
            jobs | Array js2n.Always | optional,
            queue | String | optional,
          },
      "definitions.ProjectEntry" =
        { project | refs."definitions.ProjectModel" | { _ | Dyn }, },
      "definitions.ProjectModel" =
        {
            check | refs."definitions.PipelineModel" | { _ | Dyn } | optional,
            default-branch | String | optional,
            description | String | optional,
            gate | refs."definitions.PipelineModel" | { _ | Dyn } | optional,
            name | String | optional,
            periodic-weekly
              | refs."definitions.PipelineModel"
              | { _ | Dyn }
              | optional,
            post | refs."definitions.PipelineModel" | { _ | Dyn } | optional,
            promote | refs."definitions.PipelineModel" | { _ | Dyn } | optional,
            queue | String | optional,
            release | refs."definitions.PipelineModel" | { _ | Dyn } | optional,
            templates | Array String | optional,
            third-party-check
              | refs."definitions.PipelineModel"
              | { _ | Dyn }
              | optional,
            vars | { _ | Dyn } | optional,
          },
      "definitions.ProjectTemplateEntry" =
        {
            project-template
              | refs."definitions.ProjectTemplateModel"
              | { _ | Dyn },
          },
      "definitions.ProjectTemplateModel" =
        {
            check | refs."definitions.PipelineModel" | { _ | Dyn } | optional,
            default-branch | String | optional,
            description | String | optional,
            gate | refs."definitions.PipelineModel" | { _ | Dyn } | optional,
            name | String,
            periodic-weekly
              | refs."definitions.PipelineModel"
              | { _ | Dyn }
              | optional,
            post | refs."definitions.PipelineModel" | { _ | Dyn } | optional,
            promote | refs."definitions.PipelineModel" | { _ | Dyn } | optional,
            queue | String | optional,
            release | refs."definitions.PipelineModel" | { _ | Dyn } | optional,
            third-party-check
              | refs."definitions.PipelineModel"
              | { _ | Dyn }
              | optional,
            vars | { _ | Dyn } | optional,
          },
      "definitions.RequiredProjectModel" =
        { name | String, override-checkout | String | optional, .. },
      "definitions.SecretEntry" =
        { secret | refs."definitions.SecretModel" | { _ | Dyn }, },
      "definitions.SecretModel" = { data | { _ | Dyn }, name | String, },
      "definitions.ZuulRoleModel" = { zuul | String, },
    }
    in
  Array (
      std.contract.any_of
        [
          refs."definitions.JobEntry",
          refs."definitions.ProjectEntry",
          refs."definitions.ProjectTemplateEntry",
          refs."definitions.SecretEntry"
        ]
    )