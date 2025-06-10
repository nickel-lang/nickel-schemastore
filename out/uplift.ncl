# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Bump" =
        std.contract.Sequence
            [
              std.contract.not
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              json =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      { _ | Dyn },
                                      js2n.array.MaxItems 0
                                    ],
                              regex =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      { _ | Dyn },
                                      js2n.array.MaxItems 0
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]),
              {
                file
                  | js2n.string.MinLength 1
                  | doc "The path of the file relative to where Uplift is executed. Glob patterns can be used to match multiple files at the same time. Glob syntax is based on https://github.com/goreleaser/fileglob",
                json
                  | js2n.array.MinItems 1
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.JSONBump", { _ | Dyn } ]
                  )
                  | doc "A JSON path matcher to be used when bumping the file. Multiple path matches are supported. Each will be carried out in the order they are defined here. All matches must succeed for the file to be bumped. JSON path syntax is based on https://github.com/tidwall/sjson"
                  | optional,
                regex
                  | js2n.array.MinItems 1
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.RegexBump", { _ | Dyn } ]
                  )
                  | doc "A regex matcher to be used when bumping the file. Multiple regex matches are supported. Each will be carried out in the order they are defined here. All matches must succeed for the file to be bumped"
                  | optional,
              }
            ],
      "definitions.Changelog" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "sort" ],
                  js2n.record.Required [ "exclude" ],
                  js2n.record.Required [ "include" ],
                  js2n.record.Required [ "multiline" ],
                  js2n.record.Required [ "trimHeader" ],
                  js2n.record.Required [ "skipPrerelease" ]
                ],
              {
                exclude
                  | js2n.array.MinItems 1
                  | Array (js2n.string.MinLength 1)
                  | doc "A list of commits to exclude during the creation of a changelog. Provide a list of regular expressions for matching commits that are to be excluded. Auto-generated commits from Uplift (with the prefix ci(uplift)) will always be excluded"
                  | optional,
                include
                  | js2n.array.MinItems 1
                  | Array (js2n.string.MinLength 1)
                  | doc "A list of commits to cherry-pick and include during the creation of a changelog. Provide a list of regular expressions for matching commits that are to be included"
                  | optional,
                multiline
                  | Bool
                  | doc "Include multiline commit messages within the changelog. Disables default behaviour of truncating a commit message to its first line"
                  | optional,
                skipPrerelease
                  | Bool
                  | doc "Skips generating a changelog for any prerelease. All commits from a prerelease will be appended to the changelog entry for the next release"
                  | optional,
                sort
                  | std.enum.TagOrString
                  | [| 'DESC, 'ASC, 'desc, 'asc |]
                  | doc "Change the sort order of the commits within each changelog entry. Supported values are [asc, desc, ASC or DESC]. Defaults to desc (descending order) to mirror the default behaviour of 'git log'"
                  | optional,
                trimHeader
                  | Bool
                  | doc "Trims any lines preceding the conventional commit type in the commit message"
                  | optional,
              }
            ],
      "definitions.CommitAuthor" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "name" ],
                  js2n.record.Required [ "email" ]
                ],
              {
                email
                  | js2n.string.MinLength 1
                  | doc "Email of the commit author"
                  | optional,
                name
                  | js2n.string.MinLength 1
                  | doc "Name of the commit author"
                  | optional,
              }
            ],
      "definitions.Git" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "ignoreDetached" ],
                  js2n.record.Required [ "ignoreShallow" ],
                  js2n.record.Required [ "pushOptions" ]
                ],
              {
                ignoreDetached
                  | Bool
                  | doc "A flag for suppressing the git detached HEAD repository check. If set to true, Uplift will report a warning while running, otherwise Uplift will raise an error and stop. Defaults to false"
                  | optional,
                ignoreShallow
                  | Bool
                  | doc "A flag for suppressing the git shallow repository check. If set to true, Uplift will report a warning while running, otherwise Uplift will raise an error and stop. Defaults to false"
                  | optional,
                includeArtifacts
                  | js2n.array.MinItems 1
                  | Array (
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        { _ | Dyn },
                        Array Dyn
                      ]
                  )
                  | optional,
                pushOptions
                  | js2n.array.MinItems 1
                  | Array (
                    std.contract.Sequence
                      [
                        refs."definitions.GitPushOptions",
                        std.contract.any_of [ { _ | Dyn }, String ]
                      ]
                  )
                  | optional,
              }
            ],
      "definitions.GitHub" =
        {
            url
              | js2n.string.MinLength 1
              | doc "The URL of the enterprise instance of GitHub. Only the scheme and hostname are required. The hostname is used when matching against the configured remote origin of the cloned repository",
          },
      "definitions.GitLab" =
        {
            url
              | js2n.string.MinLength 1
              | doc "The URL of the self-managed instance of GitLab. Only the scheme and hostname are required. The hostname is used when matching against the configured remote origin of the cloned repository",
          },
      "definitions.GitPushOptions" =
        std.contract.any_of
            [
              js2n.string.MinLength 1,
              {
                option
                  | js2n.string.MinLength 1
                  | doc "A push option that will be appended to a git push operation within Uplift",
                skipBranch
                  | Bool
                  | doc "A flag to control the exclusion of the current push option from any branch based git push operation"
                  | optional,
                skipTag
                  | Bool
                  | doc "A flag to control the exclusion of the current push option from any tag based git push operation"
                  | optional,
              }
            ],
      "definitions.Gitea" =
        {
            url
              | js2n.string.MinLength 1
              | doc "The URL of the self-hosted instance of Gitea. Only the scheme and hostname are required. The hostname is used when matching against the configured remote origin of the cloned repository",
          },
      "definitions.Hooks" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "before" ],
                  js2n.record.Required [ "beforeBump" ],
                  js2n.record.Required [ "beforeTag" ],
                  js2n.record.Required [ "beforeChangelog" ],
                  js2n.record.Required [ "after" ],
                  js2n.record.Required [ "afterBump" ],
                  js2n.record.Required [ "afterTag" ],
                  js2n.record.Required [ "afterChangelog" ]
                ],
              {
                after
                  | js2n.array.MinItems 1
                  | Array (js2n.string.MinLength 1)
                  | optional,
                afterBump
                  | js2n.array.MinItems 1
                  | Array (js2n.string.MinLength 1)
                  | optional,
                afterChangelog
                  | js2n.array.MinItems 1
                  | Array (js2n.string.MinLength 1)
                  | optional,
                afterTag
                  | js2n.array.MinItems 1
                  | Array (js2n.string.MinLength 1)
                  | optional,
                before
                  | js2n.array.MinItems 1
                  | Array (js2n.string.MinLength 1)
                  | optional,
                beforeBump
                  | js2n.array.MinItems 1
                  | Array (js2n.string.MinLength 1)
                  | optional,
                beforeChangelog
                  | js2n.array.MinItems 1
                  | Array (js2n.string.MinLength 1)
                  | optional,
                beforeTag
                  | js2n.array.MinItems 1
                  | Array (js2n.string.MinLength 1)
                  | optional,
              }
            ],
      "definitions.JSONBump" =
        {
            path
              | js2n.string.MinLength 1
              | doc "A JSON path for matching and replacing the version within the file",
            semver
              | Bool
              | doc "A flag controlling if the matched version in the file should be replaced with a semantic version. This will strip any 'v' prefix if needed"
              | optional,
          },
      "definitions.RegexBump" =
        {
            count
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "The number of times any matched version should be replaced"
              | optional,
            pattern
              | js2n.string.MinLength 1
              | doc "A regex pattern for matching and replacing the version within the file.",
            semver
              | Bool
              | doc "A flag controlling if the matched version in the file should be replaced with a semantic version. This will strip any 'v' prefix if needed"
              | optional,
          },
    }
    in
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
                js2n.record.Required [ "gitea" ],
                Array Dyn
              ],
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "github" ],
                Array Dyn
              ],
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "gitlab" ],
                Array Dyn
              ]
          ],
        std.contract.not
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Required [ "gitea", "github", "gitlab" ],
              Array Dyn
            ]),
        {
          annotatedTags
            | Bool
            | doc "Use annotated tags instead of lightweight tags when tagging a new semantic version. An annotated tag is treated like a regular commit by git and contains both author details and a commit message. Uplift will either use its defaults or the custom commit details provided when generating the annotated tag."
            | optional,
          bumps
            | js2n.array.MinItems 1
            | Array (
              std.contract.Sequence [ refs."definitions.Bump", { _ | Dyn } ]
            )
            | doc "Define a series of files whose semantic version will be bumped. Supports both Regex and JSON Path based file bumps"
            | optional,
          changelog
            | refs."definitions.Changelog"
            | { _ | Dyn }
            | doc "Customise how Uplift creates and updates a changelog within the repository"
            | optional,
          commitAuthor
            | refs."definitions.CommitAuthor"
            | { _ | Dyn }
            | doc m%"
              Changes the commit author used by Uplift when committing any staged changes.
              Defaults to the Uplift Bot: uplift-bot <uplift@gembaadvantage.com>
            "%
            | optional,
          commitMessage
            | js2n.string.MinLength 1
            | doc m%"
              Change the default commit message used by Uplift when committing any staged changes.
              The default commit message is: ci(uplift): uplifted for version v0.1.0
            "%
            | optional,
          env
            | js2n.array.MinItems 1
            | Array (js2n.string.MinLength 1)
            | doc "Define a set of environment variables that are made available to all hooks. Supports loading environment variables from DotEnv (.env) files. Environment variables are merged with system wide ones."
            | optional,
          git
            | refs."definitions.Git"
            | { _ | Dyn }
            | doc "Customise how Uplift interacts with Git"
            | optional,
          gitea
            | refs."definitions.Gitea"
            | doc "Configure SCM detection and support for Gitea"
            | optional,
          github
            | refs."definitions.GitHub"
            | doc "Configure SCM detection and support for GitHub"
            | optional,
          gitlab
            | refs."definitions.GitLab"
            | doc "Configure SCM detection and support for GitLab"
            | optional,
          hooks
            | refs."definitions.Hooks"
            | { _ | Dyn }
            | doc "Extend Uplift through the use of hooks. A hook is a specific point during a workflow where Uplift executes adhoc shell commands and scripts"
            | optional,
        }
      ]