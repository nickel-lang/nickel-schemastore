# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      assembly-file-versioning-format
        | String
        | doc "Specifies the format of AssemblyFileVersion and overwrites the value of assembly-file-versioning-scheme."
        | optional,
      assembly-file-versioning-scheme
        | std.enum.TagOrString
        | [|
          'None,
          'Major,
          'MajorMinor,
          'MajorMinorPatch,
          'MajorMinorPatchTag
        |]
        | doc "The scheme to use when setting AssemblyFileVersion attribute. Can be 'MajorMinorPatchTag', 'MajorMinorPatch', 'MajorMinor', 'Major', 'None'. Defaults to 'MajorMinorPatch'."
        | optional,
      assembly-informational-format
        | String
        | doc "Specifies the format of AssemblyInformationalVersion. Defaults to '{InformationalVersion}'."
        | optional,
      assembly-versioning-format
        | String
        | doc "Specifies the format of AssemblyVersion and overwrites the value of assembly-versioning-scheme."
        | optional,
      assembly-versioning-scheme
        | std.enum.TagOrString
        | [|
          'None,
          'Major,
          'MajorMinor,
          'MajorMinorPatch,
          'MajorMinorPatchTag
        |]
        | doc "The scheme to use when setting AssemblyVersion attribute. Can be 'MajorMinorPatchTag', 'MajorMinorPatch', 'MajorMinor', 'Major', 'None'. Defaults to 'MajorMinorPatch'."
        | optional,
      branches
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | doc "The header for all the individual branch configuration."
        | optional,
      commit-date-format
        | String
        | doc "The format to use when calculating the commit date. Defaults to 'yyyy-MM-dd'. See [Standard Date and Time Format Strings](https://learn.microsoft.com/en-us/dotnet/standard/base-types/standard-date-and-time-format-strings) and [Custom Date and Time Format Strings](https://learn.microsoft.com/en-us/dotnet/standard/base-types/standard-date-and-time-format-strings)."
        | optional,
      commit-message-incrementing
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      ignore
        | {
          commits-before
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          sha
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          ..
        }
        | doc "The header property for the ignore configuration."
        | optional,
      increment
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      is-main-branch
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      is-release-branch
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      is-source-branch-for
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      label
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      label-number-pattern
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      major-version-bump-message
        | String
        | doc "The regular expression to match commit messages with to perform a major version increment. Defaults to '\\+semver:\\s?(breaking|major)'"
        | optional,
      merge-message-formats
        | { _ | String }
        | doc "Custom merge message formats to enable identification of merge messages that do not follow the built-in conventions."
        | optional,
      minor-version-bump-message
        | String
        | doc "The regular expression to match commit messages with to perform a minor version increment. Defaults to '\\+semver:\\s?(feature|minor)'"
        | optional,
      mode
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      next-version
        | String
        | doc "Allows you to bump the next version explicitly. Useful for bumping main or a feature branch with breaking changes"
        | optional,
      no-bump-message
        | String
        | doc "Used to tell GitVersion not to increment when in Mainline development mode. Defaults to '\\+semver:\\s?(none|skip)'"
        | optional,
      patch-version-bump-message
        | String
        | doc "The regular expression to match commit messages with to perform a patch version increment. Defaults to '\\+semver:\\s?(fix|patch)'"
        | optional,
      pre-release-weight
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      prevent-increment
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      regex
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      semantic-version-format
        | std.enum.TagOrString
        | [| 'Loose, 'Strict |]
        | doc "Specifies the semantic version format that is used when parsing the string. Can be 'Strict' or 'Loose'. Defaults to 'Strict'."
        | optional,
      source-branches
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      strategies
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'Mainline,
                'VersionInBranchName,
                'TrackReleaseBranches,
                'TaggedCommit,
                'MergeMessage,
                'ConfiguredNextVersion,
                'Fallback,
                'None
              |]
            ]
        )
        | doc "Specifies which version strategies (one or more) will be used to determine the next version. Following values are available: 'ConfiguredNextVersion', 'MergeMessage', 'TaggedCommit', 'TrackReleaseBranches', 'VersionInBranchName' and 'Mainline'."
        | optional,
      tag-pre-release-weight
        | js2n.Nullable std.number.Integer
        | doc "The pre-release weight in case of tagged commits. Defaults to 60000."
        | optional,
      tag-prefix
        | String
        | doc "A regular expression which is used to trim Git tags before processing. Defaults to '[vV]?'"
        | optional,
      track-merge-message
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      track-merge-target
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      tracks-release-branches
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      update-build-number
        | Bool
        | doc "Whether to update the build number in the project file. Defaults to true."
        | optional,
      version-in-branch-pattern
        | String
        | doc "A regular expression which is used to determine the version number in the branch name or commit message (e.g., v1.0.0-LTS). Defaults to '(?<version>[vV]?\\d+(\\.\\d+)?(\\.\\d+)?).*'."
        | optional,
      workflow
        | String
        | doc "The base template of the configuration to use. Possible values are: 'GitFlow/v1' or 'GitHubFlow/v1'"
        | optional,
      ..
    }