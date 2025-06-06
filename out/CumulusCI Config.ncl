# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.CumulusCIConfig" = { keychain | String, },
      "definitions.CumulusCLIConfig" =
        { plain_output | Bool | optional, show_stacktraces | Bool | optional, },
      "definitions.DependencyResolutions" =
        {
            preproduction | String | optional,
            production | String | optional,
            resolution_strategies | { _ | Array String } | optional,
          },
      "definitions.Flow" =
        {
            description | String | optional,
            group | String | optional,
            steps
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.Step", { _ | Dyn } ]
              }
              | optional,
          },
      "definitions.Git" =
        {
            "2gp_context" | String | optional,
            default_branch | String | optional,
            prefix_beta | String | optional,
            prefix_feature | String | optional,
            prefix_release | String | optional,
            push_prefix_production | String | optional,
            push_prefix_sandbox | String | optional,
            release_notes
              | refs."definitions.ReleaseNotes"
              | { _ | Dyn }
              | optional,
            repo_url | String | optional,
            unlocked_context | String | optional,
          },
      "definitions.GitHubSourceModel" =
        {
            allow_remote_code | Bool | optional,
            branch | String | optional,
            commit | String | optional,
            description | String | optional,
            github | String,
            ref | String | optional,
            release
              | refs."definitions.GitHubSourceRelease"
              | String
              | optional,
            resolution_strategy | String | optional,
            tag | String | optional,
          },
      "definitions.GitHubSourceRelease" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'latest_beta, 'previous, 'latest |] ],
      "definitions.LocalFolderSourceModel" =
        { allow_remote_code | Bool | optional, path | String, },
      "definitions.Orgs" =
        {
            scratch
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.ScratchOrg", { _ | Dyn } ]
              }
              | optional,
          },
      "definitions.Package" =
        {
            api_version | String | optional,
            install_class | String | optional,
            metadata_package_id | String | optional,
            name | String | optional,
            name_managed | String | optional,
            namespace | String | optional,
            uninstall_class | String | optional,
          },
      "definitions.Plan" =
        {
            allowed_org_providers
              | Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'user, 'devhub |] ]
              )
              | optional,
            checks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.PreflightCheck", { _ | Dyn } ]
              )
              | optional,
            description | String | optional,
            error_message | String | optional,
            is_listed | Bool | optional,
            post_install_message | String | optional,
            preflight_message | String | optional,
            slug | String | optional,
            steps
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.Step", { _ | Dyn } ]
              }
              | optional,
            tier
              | std.enum.TagOrString
              | [| 'additional, 'secondary, 'primary |]
              | optional,
            title | String | optional,
          },
      "definitions.PreflightCheck" =
        {
            action | String | optional,
            message | String | optional,
            when | String | optional,
          },
      "definitions.Project" =
        {
            custom | { _ | Dyn } | optional,
            dependencies | Array ({ _ | String }) | optional,
            dependency_pins | Array ({ _ | String }) | optional,
            dependency_resolutions
              | refs."definitions.DependencyResolutions"
              | { _ | Dyn }
              | optional,
            git | refs."definitions.Git" | { _ | Dyn } | optional,
            name | String | optional,
            package | refs."definitions.Package" | { _ | Dyn } | optional,
            source_format
              | std.enum.TagOrString
              | [| 'mdapi, 'sfdx |]
              | optional,
            test | refs."definitions.Test" | { _ | Dyn } | optional,
          },
      "definitions.ReleaseNotes" =
        {
            parsers
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.ReleaseNotesParser", { _ | Dyn } ]
              },
          },
      "definitions.ReleaseNotesParser" =
        { class_path | String, title | String, },
      "definitions.ScratchOrg" =
        {
            config_file | String | optional,
            days | std.number.Integer | optional,
            namespaced | String | optional,
            noancestors | Bool | optional,
            release
              | std.enum.TagOrString
              | [| 'previous, 'preview |]
              | optional,
            setup_flow | String | optional,
          },
      "definitions.Service" =
        {
            attributes
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.ServiceAttribute", { _ | Dyn } ]
              }
              | optional,
            class_path | String | optional,
            description | String | optional,
            validator | String | optional,
          },
      "definitions.ServiceAttribute" =
        {
            "default" | String | optional,
            default_factory | String | optional,
            description | String | optional,
            required | Bool | optional,
            sensitive | Bool | optional,
          },
      "definitions.Step" =
        {
            checks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.PreflightCheck", { _ | Dyn } ]
              )
              | optional,
            description | String | optional,
            flow | String | optional,
            ignore_failure | Bool | optional,
            options | {  .. } | optional,
            task | String | optional,
            ui_options | {  .. } | optional,
            when | String | optional,
          },
      "definitions.Task" =
        {
            class_path | String | optional,
            description | String | optional,
            group | String | optional,
            name | String | optional,
            options | {  .. } | optional,
            ui_options | {  .. } | optional,
          },
      "definitions.Test" = { name_match | String, },
    }
    in
  {
      cli | refs."definitions.CumulusCLIConfig" | optional,
      cumulusci | refs."definitions.CumulusCIConfig" | optional,
      flows | { _ | refs."definitions.Flow" } | optional,
      minimum_cumulusci_version | String | optional,
      orgs | refs."definitions.Orgs" | optional,
      plans | { _ | refs."definitions.Plan" } | optional,
      project | refs."definitions.Project" | optional,
      services | { _ | refs."definitions.Service" } | optional,
      sources
        | {
          _ | std.contract.any_of
            [
              refs."definitions.LocalFolderSourceModel",
              refs."definitions.GitHubSourceModel"
            ]
        }
        | optional,
      tasks | { _ | refs."definitions.Task" } | optional,
    }