# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.fileToModify" =
        {
            path
              | String
              | doc "Relative paths are calculated from the configured (or calculated) project root.",
            patterns
              | Array (
                std.contract.Sequence
                  [ refs."definitions.versionPattern", String ]
              )
              | doc "Each pattern must contain a `{%version%}` placeholder that is replaced by the new version. Patterns are internally converted to regular expressions, so feel free to use regex syntax such as `\\s+`.",
            reportMissing | Bool | optional,
            reportUnmatched | Bool | optional,
          },
      "definitions.preset" =
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
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                name =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'composer-package |]
                                      ],
                                options =
                                  js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns = {},
                                        properties = { path = String, },
                                        required = {},
                                      },
                              },
                          required = { name = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                name =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'npm-package |]
                                      ],
                                options =
                                  js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns = {},
                                        properties =
                                          {
                                              packageName = String,
                                              path = String,
                                            },
                                        required = {},
                                      },
                              },
                          required = { name = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                name =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          'typo3-commit-guidelines,
                                          'conventional-commits
                                        |]
                                      ],
                              },
                          required = { name = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                name =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'typo3-extension |]
                                      ],
                                options =
                                  js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns = {},
                                        properties =
                                          {
                                              documentation =
                                                std.contract.any_of
                                                    [
                                                      Bool,
                                                      std.contract.Sequence
                                                        [
                                                          std.enum.TagOrString,
                                                          [| 'legacy, 'auto |]
                                                        ]
                                                    ],
                                            },
                                        required = {},
                                      },
                              },
                          required = { name = true, },
                        },
                      Array Dyn
                    ]
                ],
              { _ | Dyn }
            ],
      "definitions.presetShort" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'typo3-extension,
                'typo3-commit-guidelines,
                'npm-package,
                'conventional-commits,
                'composer-package
              |]
            ],
      "definitions.releaseOptions" =
        {
            commitMessage
              | String
              | doc "May contain a `{%version%}` placeholder that is replaced by the version to release."
              | optional,
            overwriteExistingTag
              | Bool
              | doc "If set to `true`, the existing tag will be deleted before the new tag is created."
              | optional,
            signTag
              | Bool
              | doc "Uses Git's `-s` command option to sign the new tag using the Git-configured signing key."
              | optional,
            tagName
              | refs."definitions.versionPattern"
              | String
              | doc "Must contain a `{%version%}` placeholder that is replaced by the version to release."
              | optional,
          },
      "definitions.versionPattern" = js2n.string.Matches "\\{%version%\\}",
      "definitions.versionRange" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'patch, 'next, 'minor, 'major |] ],
      "definitions.versionRangeIndicator" =
        {
            patterns
              | Array (
                std.contract.Sequence
                  [ refs."definitions.versionRangePattern", { _ | Dyn } ]
              ),
            range | refs."definitions.versionRange" | String,
            strategy
              | std.enum.TagOrString
              | [| 'matchNone, 'matchAny, 'matchAll |]
              | optional,
          },
      "definitions.versionRangePattern" =
        {
            pattern | String,
            type
              | std.enum.TagOrString
              | [| 'fileModified, 'fileDeleted, 'fileAdded, 'commitMessage |],
          },
    }
    in
  {
      filesToModify | Array refs."definitions.fileToModify" | optional,
      presets
        | Array (
          std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.preset", { _ | Dyn } ],
              refs."definitions.presetShort"
            ]
        )
        | optional,
      releaseOptions | refs."definitions.releaseOptions" | optional,
      rootPath
        | String
        | doc "This path will be used to calculate paths to configured files if they are configured as relative paths. If the root path is configured as relative path, it is calculated based on the config file path."
        | optional,
      versionRangeIndicators
        | Array refs."definitions.versionRangeIndicator"
        | optional,
    }