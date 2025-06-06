# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      update_configs
        | Array
          {
            allowed_updates
              | Array
                {
                  "match"
                    | {
                      dependency_name
                        | String
                        | doc "matching on dependency name "
                        | optional,
                      dependency_type
                        | String
                        | doc "only allow certain updates"
                        | optional,
                      update_type
                        | std.enum.TagOrString
                        | [| 'all, 'security |]
                        | doc "which updates to do"
                        | optional,
                      ..
                    }
                    | optional,
                  ..
                }
              | doc "Limit which updates are allowed.  By default all direct/top-level dependencies are kept up to date (indirect/sub-dependencies are only updated if they include security fixes)."
              | optional,
            automerged_updates
              | Array
                {
                  "match"
                    | {
                      dependency_name
                        | String
                        | doc "matching on dependency name "
                        | optional,
                      dependency_type
                        | std.enum.TagOrString
                        | [| 'all, 'production, 'development |]
                        | optional,
                      update_type
                        | std.enum.TagOrString
                        | [|
                          'all,
                          'in_range,
                          '"semver:minor",
                          '"semver:patch",
                          '"security:patch"
                        |]
                        | optional,
                      ..
                    }
                    | optional,
                  ..
                }
              | doc "Automerged updates must be enabled at the account level (from account settings in your dashboard) before they can be configured on a project. Specify which update pull requests should be merged automatically. By default no updates are automerged. For all of the options below Dependabot will wait until all your status checks pass before merging. You can also set working hours for automerging in your dashboard account settings."
              | optional,
            commit_message
              | {
                include_scope | Bool | optional,
                prefix | String | optional,
                prefix_development | String | optional,
                ..
              }
              | doc "Preferences for the format of Dependabot's commit messages and pull request titles. By default, Dependabot will attempt to detect your commit message preferences and use those."
              | optional,
            default_assignees
              | Array String
              | doc "Assignees to set on update pull requests."
              | optional,
            default_labels
              | Array String
              | doc "Labels to set on update pull requests. By default 'dependencies' is used."
              | optional,
            default_milestone
              | std.number.Integer
              | doc "Milestone to set on dependency update pull requests. Specified using the milestone number - you can find this in the URL when looking at details of a milestone in GitHub."
              | optional,
            default_reviewers
              | Array String
              | doc "Reviewers to set on update pull requests."
              | optional,
            directory | String | doc "Where to look for package manifests",
            ignored_updates
              | Array
                {
                  "match"
                    | {
                      dependency_name
                        | String
                        | doc "matching on dependency name "
                        | optional,
                      version_requirement
                        | String
                        | doc "The version_requirement specifies the versions to ignore. The range format is specific to the package manager (e.g., ^1.0.0 for JS, or ~> 2.0 for Ruby)."
                        | optional,
                      ..
                    }
                    | optional,
                  ..
                }
              | doc "By default no updates are ignored. The version_requirement specifies the versions to ignore. The range format is specific to the package manager (e.g., ^1.0.0 for JS, or ~> 2.0 for Ruby)."
              | optional,
            package_manager
              | std.enum.TagOrString
              | [|
                'github_actions,
                'elm,
                'submodules,
                'terraform,
                'docker,
                '"elixir:hex",
                '"rust:cargo",
                '"dotnet:nuget",
                '"java:gradle",
                '"java:maven",
                '"go:dep",
                '"go:modules",
                'python,
                '"php:composer",
                '"ruby:bundler",
                'javascript
              |]
              | doc "What package manager to use",
            target_branch
              | String
              | doc "Branch to create pull requests against. By default your repository's default branch is used."
              | optional,
            update_schedule
              | std.enum.TagOrString
              | [| 'monthly, 'weekly, 'daily, 'live |]
              | doc "How often to check for updates",
            version_requirement_updates
              | std.enum.TagOrString
              | [|
                'increase_versions_if_necessary,
                'increase_versions,
                'widen_ranges,
                'auto,
                'off
              |]
              | doc "Specify how Dependabot should update your package manifest (e.g. package.json, Gemfile etc), as opposed to your lockfile. By default, version requirements are increased if it's an app and the range widened if it's a library."
              | optional,
            ..
          },
      version
        | std.number.Integer
        | js2n.number.Maximum 1
        | js2n.number.Minimum 1,
      ..
    }