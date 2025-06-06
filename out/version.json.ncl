# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.allProperties" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                assemblyVersion
                  | js2n.OneOf
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.twoToFourComponentVersion",
                          String
                        ],
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                version =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.twoToFourComponentVersion",
                                        String
                                      ],
                              },
                          required = {},
                        },
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                precision =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'revision, 'build, 'minor, 'major |]
                                      ],
                              },
                          required = {},
                        }
                    ]
                  | doc "The a.b[.c[.d]] version to use particularly for the AssemblyVersionAttribute instead of the default. This is useful when maintaining assembly binding compatibility on the desktop .NET Framework is important even though AssemblyFileVersion may change."
                  | optional,
                buildNumberOffset
                  | std.number.Integer
                  | doc "OBSOLETE by v3.0. Use \"versionHeightOffset\" instead. A number to add to the git height when calculating the version height (which typically appears as the 3rd integer in a computed version). May be negative, but not of greater magnitude than the original git height."
                  | optional,
                cloudBuild
                  | {
                    buildNumber
                      | {
                        enabled
                          | Bool
                          | doc "Whether to override the build number preset by the cloud build."
                          | optional,
                        includeCommitId
                          | {
                            when
                              | std.enum.TagOrString
                              | [| 'never, 'nonPublicReleaseOnly, 'always |]
                              | doc "The conditions when the commit ID is included in the build number."
                              | optional,
                            where
                              | std.enum.TagOrString
                              | [| 'fourthVersionComponent, 'buildMetadata |]
                              | doc "The position to include the commit ID information."
                              | optional,
                            ..
                          }
                          | doc "Describes when and where to include information about the git commit being built."
                          | optional,
                        ..
                      }
                      | doc "Override the build number preset by the cloud build with one enriched with version information."
                      | optional,
                    setAllVariables
                      | Bool
                      | doc "Elevates all build properties to cloud build variables prefaced with \"NBGV_\"."
                      | optional,
                    setVersionVariables
                      | Bool
                      | doc "Elevate certain calculated version build properties to cloud build variables."
                      | optional,
                    ..
                  }
                  | doc "Options that are applicable specifically to cloud builds (e.g. VSTS, AppVeyor, TeamCity)."
                  | optional,
                gitCommitIdPrefix
                  | js2n.string.Matches "^[^0-9][\\da-z\\-_\\.]*$"
                  | doc "The git commit prefix (e.g. 'g') in non-public release versions."
                  | optional,
                gitCommitIdShortAutoMinimum
                  | std.number.Integer
                  | js2n.number.Maximum 40
                  | doc "When greater than 0, the length of the commit ID will be either this value or the shortest unambiguous git-abbreviated commit ID possible, whichever is greater. When 0, the gitCommitIdShortFixedLength property is used instead."
                  | optional,
                gitCommitIdShortFixedLength
                  | std.number.Integer
                  | js2n.number.Maximum 40
                  | doc "The fixed number of characters to use for the commit ID abbreviation length. This property is ignored if the gitCommitIdShortAutoMinimum property is greater than 0."
                  | optional,
                inherit
                  | Bool
                  | doc "A value indicating whether this file only partially describes the versioning policy, and that more information should be discovered in an ancestor directory."
                  | optional,
                nugetPackageVersion
                  | {
                    precision
                      | std.enum.TagOrString
                      | [| 'revision, 'build, 'minor, 'major |]
                      | doc "Specifies the number of components to include in the NuGet package version."
                      | optional,
                    semVer
                      | std.number.Integer
                      | js2n.number.Maximum 2
                      | js2n.number.Minimum 1
                      | doc "The version of SemVer (e.g. 1 or 2) that should be used when generating the package version."
                      | optional,
                    ..
                  }
                  | doc "Details for how and what the generated version for NuGet packages will be."
                  | optional,
                pathFilters
                  | js2n.array.UniqueItems
                  | Array (js2n.string.Matches "^(:\\^|:!|:/|[^:])")
                  | doc m%"
                    An array of pathspec-like strings that are used to filter commits when calculating the version height. A commit will not increment the version height if its changed files are not included by these filters.
                    Paths are relative to this file. Paths relative to the root of the repository can be specified with the `:/` prefix.
                    Exclusions can be specified with a `:^` prefix for relative paths, or a `:^/` prefix for paths relative to the root of the repository.
                    After a path matches any non-exclude filter, it will be run through all exclude filters. If it matches, the path is ignored.
                  "%
                  | optional,
                publicReleaseRefSpec
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "An array of regular expressions that may match a ref (branch or tag) that should be built with PublicRelease=true as the default value. The ref matched against is in its canonical form (e.g. refs/heads/master)."
                  | optional,
                release
                  | {
                    branchName
                      | js2n.string.Matches "\\{version\\}"
                      | doc "Defines the format of release branch names. Format must include a placeholder '{version}' for the version."
                      | optional,
                    firstUnstableTag
                      | String
                      | doc "Specifies the first/default prerelease tag for new versions."
                      | optional,
                    tagName
                      | js2n.string.Matches "\\{version\\}"
                      | doc "Defines the format of tag names. Format must include a placeholder '{version}' for the version."
                      | optional,
                    versionIncrement
                      | std.enum.TagOrString
                      | [| 'build, 'minor, 'major |]
                      | doc "Specifies which part of the version on the current branch is incremented when preparing a release."
                      | optional,
                  }
                  | doc "Settings for the prepare-release and tag commands."
                  | optional,
                semVer1NumericIdentifierPadding
                  | std.number.Integer
                  | js2n.number.Maximum 6
                  | js2n.number.Minimum 1
                  | doc "The minimum number of digits to use for numeric identifiers in SemVer 1."
                  | optional,
                version
                  | js2n.string.Matches
                    "^v?(0|[1-9][0-9]*)\\.(0|[1-9][0-9]*)(?:\\.(0|[1-9][0-9]*)(?:\\.(0|[1-9][0-9]*))?)?(-(?:[\\da-z\\-]+|\\{height\\})(?:\\.(?:[\\da-z\\-]+|\\{height\\}))*)?(\\+(?:[\\da-z\\-]+|\\{height\\})(?:\\.(?:[\\da-z\\-]+|\\{height\\}))*)?$"
                  | doc "The major.minor-pre version to use as the basis for version calculations. If {height} is not used in this value and the value has fewer than the full major.minor.build.revision specified, \".{height}\" will be appended by the build."
                  | optional,
                versionHeightOffset
                  | std.number.Integer
                  | doc "A number to add to the git height when calculating the version height (which typically appears as the 3rd integer in a computed version). May be negative, but not of greater magnitude than the original git height."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.baseFile" =
        std.contract.Sequence
            [
              refs."definitions.allProperties",
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  js2n.record.Required [ "version" ],
                  Array Dyn
                ]
            ],
      "definitions.inheritingFile" =
        std.contract.Sequence
            [
              refs."definitions.allProperties",
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  js2n.record.Required [ "inherit" ],
                  Array Dyn
                ],
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  { inherit | js2n.Enum [ true ] | optional, .. },
                  Array Dyn
                ]
            ],
      "definitions.twoToFourComponentVersion" =
        js2n.string.Matches "^\\d+\\.\\d+(?:\\.\\d+(?:\\.\\d+)?)?$",
    }
    in
  std.contract.Sequence
      [
        std.contract.any_of
          [ refs."definitions.baseFile", refs."definitions.inheritingFile" ],
        { _ | Dyn }
      ]