# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ReleaserConfigOptions" =
        {
            always-update
              | Bool
              | doc "Always update the pull request with the latest changes. Defaults to `false`."
              | optional,
            bump-minor-pre-major
              | Bool
              | doc "Breaking changes only bump semver minor if version < 1.0.0"
              | optional,
            bump-patch-for-minor-pre-major
              | Bool
              | doc "Feature changes only bump semver patch if version < 1.0.0"
              | optional,
            changelog-host
              | String
              | doc "Generate changelog links to this GitHub host. Useful for running against GitHub Enterprise."
              | optional,
            changelog-path
              | String
              | doc "Path to the file that tracks release note changes. Defaults to `CHANGELOG.md`."
              | optional,
            changelog-sections
              | Array
                {
                  hidden
                    | Bool
                    | doc "Skip displaying this type of commit. Defaults to `false`."
                    | optional,
                  section | String | doc "Changelog section title",
                  type
                    | String
                    | doc "Semantic commit type (e.g. `feat`, `chore`)",
                  ..
                }
              | doc "Override the Changelog configuration sections"
              | optional,
            changelog-type
              | std.enum.TagOrString
              | [| 'github, '"default" |]
              | doc "The type of changelog to use. Defaults to `default`."
              | optional,
            component-no-space
              | Bool
              | doc "release-please automatically adds ` ` (space) in front of parsed ${component}. This option indicates whether that behaviour should be disabled. Defaults to `false`"
              | optional,
            date-format
              | String
              | doc "Date format given as a strftime expression for the generic strategy."
              | optional,
            draft
              | Bool
              | doc "Create the GitHub release in draft mode. Defaults to `false`."
              | optional,
            draft-pull-request
              | Bool
              | doc "Open the release pull request in draft mode. Defaults to `false`."
              | optional,
            exclude-paths
              | Array String
              | doc "Path of commits to be excluded from parsing. If all files from commit belong to one of the paths it will be skipped"
              | optional,
            extra-files
              | Array (
                std.contract.any_of
                  [
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              glob = Bool,
                              jsonpath = String,
                              path = String,
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'yaml, 'toml, 'json |]
                                    ],
                            },
                        required =
                          { jsonpath = true, path = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              glob = Bool,
                              path = String,
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'xml |] ],
                              xpath = String,
                            },
                        required = { path = true, type = true, xpath = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              glob = Bool,
                              path = String,
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'pom |] ],
                            },
                        required = { path = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              glob = Bool,
                              path = String,
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'generic |] ],
                            },
                        required = { path = true, type = true, },
                      }
                  ]
              )
              | doc "Specify extra generic files to replace versions."
              | optional,
            extra-label
              | String
              | doc "Comma-separated list of labels to add to a newly opened pull request"
              | optional,
            include-component-in-tag
              | Bool
              | doc "When tagging a release, include the component name as part of the tag. Defaults to `true`."
              | optional,
            include-v-in-tag
              | Bool
              | doc "When tagging a release, include `v` in the tag. Defaults to `false`."
              | optional,
            initial-version
              | String
              | doc "Releases the initial library with a specified version"
              | optional,
            prerelease
              | Bool
              | doc "Create the GitHub release as prerelease. Defaults to `false`."
              | optional,
            prerelease-type
              | String
              | doc "Configuration option for the prerelease versioning strategy. If prerelease strategy used and type set, will set the prerelease part of the version to the provided value in case prerelease part is not present."
              | optional,
            pull-request-footer
              | String
              | doc "Customize the release pull request footer."
              | optional,
            pull-request-header
              | String
              | doc "Customize the release pull request header."
              | optional,
            pull-request-title-pattern
              | String
              | doc "Customize the release pull request title."
              | optional,
            release-as
              | String
              | doc "[DEPRECATED] Override the next version of this package. Consider using a `Release-As` commit instead."
              | optional,
            release-type
              | String
              | doc "The strategy to use for this component."
              | optional,
            separate-pull-requests
              | Bool
              | doc "Open a separate release pull request for each component. Defaults to `false`."
              | optional,
            skip-changelog
              | Bool
              | doc "Skip generating a changelog for this package. Defaults to `false`."
              | optional,
            skip-github-release
              | Bool
              | doc "Skip tagging GitHub releases for this package. Release-Please still requires releases to be tagged, so this option should only be used if you have existing infrastructure to tag these releases.Defaults to `false`."
              | optional,
            skip-snapshot
              | Bool
              | doc "If set, do not propose snapshot pull requests. Used by `java` strategies."
              | optional,
            snapshot-label
              | String
              | doc "Label to add to snapshot pull request. Used by `java` strategies."
              | optional,
            tag-separator
              | String
              | doc "Customize the separator between the component and version in the GitHub tag."
              | optional,
            version-file
              | String
              | doc "Path to the specialize version file. Used by `ruby` and `simple` strategies."
              | optional,
            versioning
              | String
              | doc "Versioning strategy. Defaults to `default`"
              | optional,
            ..
          },
    }
    in
  std.contract.Sequence
      [
        refs."definitions.ReleaserConfigOptions",
        {
          "$schema"
            | String
            | doc "Path to the release-please manifest config schema"
            | optional,
          always-link-local
            | Bool
            | doc "When using the `node-workspace` plugin, force all local dependencies to be linked."
            | optional,
          bootstrap-sha
            | String
            | doc "For the initial release of a library, only consider as far back as this commit SHA. This is an uncommon use case and should generally be avoided."
            | optional,
          commit-search-depth
            | Number
            | doc "When considering commit history, only look this many commits deep."
            | optional,
          component-no-space
            | Bool
            | doc "release-please automatically adds ` ` (space) in front of parsed ${component}. This option indicates whether that behaviour should be disabled. Defaults to `false`"
            | optional,
          group-pull-request-title-pattern
            | String
            | doc "When grouping multiple release pull requests use this pattern for the title."
            | optional,
          label
            | String
            | doc "Comma-separated list of labels to add to newly opened pull request. These are used to identify release pull requests."
            | optional,
          last-release-sha
            | String
            | doc "For any release, only consider as far back as this commit SHA. This is an uncommon use case and should generally be avoided."
            | optional,
          packages
            | { _ | refs."definitions.ReleaserConfigOptions" }
            | doc "Per-path component configuration.",
          plugins
            | Array (
              std.contract.any_of
                [
                  String,
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            components = js2n.array.ArrayOf String,
                            groupName = String,
                            "merge" = Bool,
                            specialWords = js2n.array.ArrayOf String,
                            type =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'linked-versions |]
                                  ],
                          },
                      required =
                        { components = true, groupName = true, type = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            considerAllArtifacts = Bool,
                            "merge" = Bool,
                            type =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'maven-workspace, 'cargo-workspace |]
                                  ],
                            updateAllPackages = Bool,
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            considerAllArtifacts = Bool,
                            "merge" = Bool,
                            type =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'node-workspace |]
                                  ],
                            updateAllPackages = Bool,
                            updatePeerDependencies = Bool,
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            groups = js2n.array.ArrayOf String,
                            type =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'group-priority |]
                                  ],
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = String, },
                      required = {},
                    }
                ]
            )
            | doc "Plugins to apply to pull requests. Plugins can be added to perform extra release processing that cannot be achieved by an individual release strategy."
            | optional,
          release-label
            | String
            | doc "Comma-separated list of labels to add to a pull request that has been released/tagged"
            | optional,
          release-search-depth
            | Number
            | doc "When considering previously releases, only look this deep."
            | optional,
          sequential-calls
            | Bool
            | doc "Whether to open pull requests/releases sequentially rather than concurrently. If you have many components, you may want to set this to avoid secondary rate limits."
            | optional,
          signoff
            | String
            | doc "Text to be used as Signed-off-by in the commit."
            | optional,
          ..
        },
        {
          "$schema" | js2n.Always | optional,
          always-link-local | js2n.Always | optional,
          always-update | js2n.Always | optional,
          bootstrap-sha | js2n.Always | optional,
          bump-minor-pre-major | js2n.Always | optional,
          bump-patch-for-minor-pre-major | js2n.Always | optional,
          changelog-host | js2n.Always | optional,
          changelog-path | js2n.Always | optional,
          changelog-sections | js2n.Always | optional,
          changelog-type | js2n.Always | optional,
          commit-search-depth | js2n.Always | optional,
          component-no-space | js2n.Never | optional,
          date-format | js2n.Always | optional,
          draft | js2n.Always | optional,
          draft-pull-request | js2n.Always | optional,
          exclude-paths | js2n.Always | optional,
          extra-files | js2n.Always | optional,
          extra-label | js2n.Always | optional,
          group-pull-request-title-pattern | js2n.Always | optional,
          include-component-in-tag | js2n.Always | optional,
          include-v-in-tag | js2n.Always | optional,
          initial-version | js2n.Always | optional,
          label | js2n.Always | optional,
          last-release-sha | js2n.Always | optional,
          packages | js2n.Always | optional,
          plugins | js2n.Always | optional,
          prerelease | js2n.Always | optional,
          pull-request-footer | js2n.Always | optional,
          pull-request-header | js2n.Always | optional,
          pull-request-title-pattern | js2n.Always | optional,
          release-as | js2n.Always | optional,
          release-label | js2n.Always | optional,
          release-search-depth | js2n.Always | optional,
          release-type | js2n.Always | optional,
          separate-pull-requests | js2n.Always | optional,
          sequential-calls | js2n.Always | optional,
          signoff | js2n.Always | optional,
          skip-changelog | js2n.Always | optional,
          skip-github-release | js2n.Always | optional,
          snapshot-label | js2n.Always | optional,
          tag-separator | js2n.Always | optional,
          version-file | js2n.Always | optional,
          versioning | js2n.Always | optional,
        }
      ]