# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      access
        | std.enum.TagOrString
        | [| 'restricted, 'public, 'infer |]
        | doc "This overrides the access defined in the publishConfig of individual workspaces. Set this to 'infer' to respect individual workspace configurations."
        | optional,
      autoCommit
        | Bool
        | doc "Whether to automatically create a release commit after a publish. If using autoCommit, you must also have one of 'persistVersions' or 'changelogFilename' set."
        | optional,
      autoCommitMessage
        | String
        | doc "The commit message to use when autoCommit is enabled."
        | optional,
      changelogFilename
        | String
        | doc "The filename to write changelogs to, assuming a conventional changelog config has been set. Use '<packageDir>' to reference the cwd of an individual workspace. You should also enable 'autoCommit' when this is set so that the changelogs are committed to your repo."
        | optional,
      changesetFilename
        | String
        | doc "The filename to write the changeset to. This is a metadata file which after a monoweave run, will contain change history useful for external scripts. Set to '-' to write to stdout."
        | optional,
      changesetIgnorePatterns
        | Array String
        | doc "An array of micromatch globs which will be used to filter out modified files. You can use this to skip modifications to 'test files' as part of the 'how this package changed' determination."
        | optional,
      commitIgnorePatterns
        | Array String
        | doc "An array of regular expressions which will be used to filter out commits from the explicit package bump detection. The patterns are matched against commits of the form: <sha> <newline> <body>"
        | optional,
      conventionalChangelogConfig
        | std.contract.any_of
          [ { name | String, .. }, String, js2n.Enum [ false ] ]
        | doc "A conventional changelog config package name. This config determines the changelog format, as well as the version strategy determiner. Set explicitly to false to disable conventional changelog mode and enter a 'manual' mode that determines versions based on version files."
        | optional,
      dryRun
        | Bool
        | doc "If enabled, any operation performing a destructive action on an external system is skipped over. This includes publishing to NPM, committing to git, and execution of lifecycle scripts. Use dry run to preview publish changes, and to validate your configuration. Defaults to true outside of CI."
        | optional,
      forceWriteChangeFiles
        | Bool
        | doc "By default, the changeset and changelog files are not written in dry run mode, as they constitute a change to an external system. Enable force write to write these change files, which can be useful for generating publish previews."
        | optional,
      git
        | {
          baseBranch
            | String
            | doc "The base git ref to using as the starting point of package change discovery. If not set, this will default to the last tagged commit. You usually do not want to set this."
            | optional,
          commitSha
            | String
            | doc "The git ref which marks the 'end point' of package change discovery. This defaults to HEAD. You usually do not want to set this."
            | optional,
          push
            | Bool
            | doc "Whether to push to the git remote. This works in conjunction with the git.tag and autoCommit options, thus allowing you to create the tags and release commit automatically while deferring the actual push."
            | optional,
          remote
            | String
            | doc "The git remote name to push tags and the release commit to. Defaults to origin."
            | optional,
          tag
            | Bool
            | doc "Whether to create git tags to track the releases. It is useful to disable this when publishing to a test registry, where you do not want to modify the main git branch."
            | optional,
        }
        | doc "Git configuration."
        | optional,
      jobs
        | std.number.Integer
        | doc "The maximum number of packages whose lifecycle scripts can be run in parallel. Similar to concurrency in Lerna."
        | optional,
      maxConcurrentReads
        | std.number.Integer
        | doc "The maximum number of package metadata to read from the NPM registry simultaneously. If no default is set, or set to 0, Monoweave will use its discretion."
        | optional,
      maxConcurrentWrites
        | std.number.Integer
        | doc "The maximum number of packages to publish to the NPM registry simultaneously. We have seen issues in the past with too many concurrent writes for private registries. If no default is set, or set to 0, Monoweave will use its discretion."
        | optional,
      packageGroupManifestField
        | String
        | doc "The manifest field name to use in workspace grouping. All packages within a group will always have the same version and git tag. If unset, all packages are versioned independently. Since the group is used for the git tag, it must not contain any characters not supported in a git tag. You can use a '.' to access nested properties in the manifest file. For example, you can use 'publishConfig.group' to access the group property in your publishConfig."
        | optional,
      packageGroups
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".*" =
                    {
                        registryMode
                          | std.enum.TagOrString
                          | [| 'manifest, 'npm |]
                          | optional,
                        ..
                      },
                },
            properties = {},
            required = {},
          }
        | doc "Package group specific settings. Note that if no packageGroupManifestField is set, each workspace is in its own group."
        | optional,
      persistVersions
        | Bool
        | doc "Whether to persist package.json modifications, i.e. updating the dependency versions and the version field of each published workspace. Most publishing tools act as if this is enabled. It can be useful to disable version persistence if you do not want your CI environment to write back to your Git repository. Useful for runners like Jenkins. You should also enable 'autoCommit' when this is set so that the changelogs are committed to your repo."
        | optional,
      plugins
        | Array (
          std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ js2n.array.MaxItems 2, js2n.array.MinItems 1 ]
            ]
        )
        | doc "An array of Monoweave plugins. See the plugin section of the documentation for more information."
        | optional,
      prerelease
        | Bool
        | doc "Whether to run Monoweave in Prerelease mode. In prerelease mode, versions are not published to the latest npm dist tag. This is meant for release candidates, and beta versions. Version strategy behaviour is also impacted by this mode."
        | optional,
      prereleaseId
        | String
        | doc "The identifier to use in the prerelease tag. Defaults to 'rc' as in '1.0.0-rc.1'."
        | optional,
      prereleaseNPMTag
        | String
        | doc "The npm dist-tag to publish to in prerelease mode. Defaults to 'next'."
        | optional,
      preset
        | String
        | doc "A configuration preset. This can point to an NPM package or one of the built-in monoweave presets (e.g. monoweave/preset-recommended, monoweave/preset-manual)."
        | optional,
      registryMode
        | std.enum.TagOrString
        | [| 'manifest, 'npm |]
        | doc "By default the latest package versions upon which the version strategy is applied is taken from the NPM registry (npm mode). If registryMode is set to 'manifest' the latest version is instead taken from the package.json files. Note that 'manifest' mode is incompatible with prerelease mode."
        | optional,
      registryUrl
        | String
        | doc "The NPM registry URL for fetching package information, and publishing packages. Note that this overrides any publishConfig.registryUrl or Yarn RC configuration."
        | optional,
      topological
        | Bool
        | doc "Whether to run the lifecycle scripts of the packages to publish in topological order, based on dependencies and peerDependencies. This excludes devDependencies from the graph."
        | optional,
      topologicalDev
        | Bool
        | doc "Similar to topological, however also consider devDependencies."
        | optional,
      versionStrategy
        | {
          coerceImplicitPeerDependency
            | std.enum.TagOrString
            | [| 'major, 'minor, 'patch |]
            | doc "When patching dependencies in package manifests, this setting controls how to set the version for peerDependencies. The default is 'patch'. If set to 'minor', the peerDependency version is rounded down to the nearest 'minor' version. If set to 'major', the peerDependency version is rounded down to the nearest major."
            | optional,
          minimumStrategy
            | std.enum.TagOrString
            | [| 'major, 'minor, 'patch |]
            | doc "If specified, when determining explicit version strategies, a '3' or null returned from the strategy determiner will be coerced to the minimum strategy. This can be used to override a third party conventional changelog config such that all package changes are treated as a 'patch' at a minimum. Without this override, a strategy determiner, depending on the configuration, may treat a certain commit as a 'no-op'."
            | optional,
        }
        | doc "Customizations to the version strategy logic."
        | optional,
    }