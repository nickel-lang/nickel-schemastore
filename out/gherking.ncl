# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.formatOptions" =
        {
            compact
              | Bool
              | doc "Should empty lines be skipped, removed from the result?"
              | optional,
            indentation
              | String
              | doc "The indentation character(s)."
              | optional,
            lineBreak
              | js2n.Nullable String
              | doc "The line break character(s)."
              | optional,
            oneTagPerLine
              | Bool
              | doc "Should the tags be rendered separately, one by line?"
              | optional,
            separateStepGroups
              | Bool
              | doc "Should step groups (when-then) be separated?"
              | optional,
            tagFormat
              | std.enum.TagOrString
              | [| 'PARAMETERLESS, 'UNDERSCORE, 'ASSIGNMENT, 'FUNCTIONAL |]
              | doc "The parametrized tag format."
              | optional,
          },
      "definitions.gpcCustom" =
        {
            configuration
              | { _ | Dyn }
              | doc "The configuration object, if necessary, to be passed to the custom precompiler class."
              | optional,
            path
              | js2n.string.MinLength 1
              | doc "Either the NPM package name to use, or the path to a JS file containing a PreCompiler.",
          },
      "definitions.gpcFilter" =
        {
            configuration
              | js2n.string.MinLength 1
              | js2n.string.Matches "^.*@[^ ]+.*$"
              | doc "Cucumber-tag-expression the filtering is based on"
              | optional,
            path | std.contract.Equal "gpc-filter",
          },
      "definitions.gpcForLoop" =
        {
            configuration
              | {
                format
                  | js2n.string.MinLength 11
                  | js2n.string.Matches "^.*\\$\\{name\\}.*$"
                  | js2n.string.Matches "^.*\\$\\{i\\}.*$"
                  | doc "Format of the scenario or outline name after repeating. These tokens must be used: ${name}, ${i}."
                  | optional,
                iterations
                  | js2n.record.MinProperties 1
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^[a-zA-Z0-9_-]+$" =
                              std.contract.Sequence
                                  [ std.number.Integer, js2n.number.Minimum 0 ],
                          },
                      properties = {},
                      required = {},
                    }
                  | doc "An object of iteration name and values (named repeat values),"
                  | optional,
                keepTag
                  | Bool
                  | doc "Whether the loop tags should be kept or removed (default)."
                  | optional,
                limitToMaxValue
                  | Bool
                  | doc "Whether higher iteration values than the max should be limited to the max or error should be thrown (false)."
                  | optional,
                maxValue
                  | std.number.Integer
                  | js2n.number.Minimum 0
                  | doc "Maximum value of iteration."
                  | optional,
                startIndex
                  | std.number.Integer
                  | js2n.number.Minimum 0
                  | doc "Starting index of the iteration"
                  | optional,
                tagName
                  | js2n.string.MinLength 1
                  | js2n.string.Matches "^[^ ]+$"
                  | doc "Tag used to mark scenarios or outlines to be repeated."
                  | optional,
              }
              | optional,
            path | std.contract.Equal "gpc-for-loop",
          },
      "definitions.gpcLicense" =
        {
            configuration
              | std.contract.any_of
                [
                  js2n.record.Required [ "licenseFile" ],
                  js2n.record.Required [ "licenseText" ]
                ]
              | {
                licenseFile
                  | js2n.string.MinLength 1
                  | doc "The file's path where the license is stored."
                  | optional,
                licenseText
                  | js2n.string.MinLength 1
                  | doc "The exact license text. It can contain the ${LICENSE} token to set the content of the license file."
                  | optional,
                placement
                  | std.enum.TagOrString
                  | [| 'end, 'start |]
                  | doc "The place to inject the license text, either in start or end comment."
                  | optional,
              },
            path | std.contract.Equal "gpc-license",
          },
      "definitions.gpcMacro" = { path | std.contract.Equal "gpc-macro", },
      "definitions.gpcRemoveComments" =
        {
            configuration
              | {
                keep
                  | js2n.array.MinItems 1
                  | Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'ALL,
                          'END,
                          'START,
                          'STEP,
                          'DOC_STRING,
                          'ROW,
                          'TAG,
                          'DESCRIPTION,
                          'PRECEDING,
                          'BEFORE_TAGS,
                          'NONE
                        |]
                      ]
                  )
                  | doc "To set which comment types should be kept, not removed."
                  | optional,
              }
              | optional,
            path | std.contract.Equal "gpc-remove-comments",
          },
      "definitions.gpcRemoveDuplicates" =
        {
            configuration
              | {
                processRows
                  | Bool
                  | doc "Should table rows be de-duplicated."
                  | optional,
                processTags
                  | Bool
                  | doc "Should tags on the same level and from parent be de-duplicated."
                  | optional,
              }
              | optional,
            path | std.contract.Equal "gpc-remove-duplicates",
          },
      "definitions.gpcReplacer" =
        {
            configuration
              | js2n.record.MinProperties 1
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^[a-zA-Z0-9_-]+$" =
                          std.contract.any_of
                              [ Bool, std.number.Integer, String ],
                      },
                  properties = {},
                  required = {},
                }
              | doc "The key-value pairs to replace in the feature files.",
            path | std.contract.Equal "gpc-replacer",
          },
      "definitions.gpcScenarioNumbering" =
        {
            configuration
              | {
                format
                  | js2n.string.MinLength 11
                  | js2n.string.Matches "^.*\\$\\{name\\}.*$"
                  | js2n.string.Matches "^.*\\$\\{i\\}.*$"
                  | doc "The format, how index should be added to the name of the scenario/scenairo outline. Possible tokens: ${name} the original name, ${i} the index"
                  | optional,
              }
              | optional,
            path | std.contract.Equal "gpc-scenario-numbering",
          },
      "definitions.gpcScenarioOutlineExpander" =
        {
            configuration
              | {
                ignoreTag
                  | js2n.string.MinLength 2
                  | js2n.string.Matches "^@[^ ]+$"
                  | doc "Tag used to mark scenarios to be ignored during expanding Scenario Outlines."
                  | optional,
              }
              | optional,
            path | std.contract.Equal "gpc-scenario-outline-expander",
          },
      "definitions.gpcScenarioOutlineNumbering" =
        {
            configuration
              | {
                addNumbering
                  | Bool
                  | doc "Should an index be added to the name of the Scenario Outline."
                  | optional,
                addParameters
                  | Bool
                  | doc "Should the example parameters be added to the name of the Scenario Outline."
                  | optional,
                numberingFormat
                  | js2n.string.MinLength 11
                  | js2n.string.Matches "^.*\\$\\{name\\}.*$"
                  | js2n.string.Matches "^.*\\$\\{i\\}.*$"
                  | doc "The format how the output Scenario Outline name should look with the index. Tokens to use: ${name}, ${i}"
                  | optional,
                parameterDelimiter
                  | js2n.string.MinLength 1
                  | doc "The delimiter to use when adding the parameters to the name of the Scenario Outline."
                  | optional,
                parameterFormat
                  | js2n.string.MinLength 20
                  | js2n.string.Matches "^.*\\$\\{name\\}.*$"
                  | js2n.string.Matches "^.*\\$\\{parameters\\}.*$"
                  | doc "The format how the output Scenario Outline name should look with the parameters. Tokens to use: ${name}, ${parameters}"
                  | optional,
                strictNaming
                  | Bool
                  | doc "Should the existing numbering field (num) block execution (true) or be used for numbering (false)."
                  | optional,
              }
              | optional,
            path | std.contract.Equal "gpc-scenario-outline-numbering",
          },
      "definitions.gpcStepGroups" =
        { path | std.contract.Equal "gpc-step-groups", },
      "definitions.gpcTestData" =
        {
            configuration
              | {
                appendData
                  | Bool
                  | doc "Whether the loaded data should be appended to the existing rows of the examples table or overwritten."
                  | optional,
                defaultValue
                  | std.contract.any_of [ Number, String ]
                  | doc "The default value to be added to the table if a column/value is not found."
                  | optional,
                ignoreKeyCase
                  | Bool
                  | doc "Whether the casing of the example columns and data columns should be ignored."
                  | optional,
                keepTag
                  | Bool
                  | doc "Whether the load-tags should be kept or removed."
                  | optional,
              }
              | optional,
            path | std.contract.Equal "gpc-test-data",
          },
      "definitions.parseConfig" =
        {
            tagFormat
              | std.enum.TagOrString
              | [| 'PARAMETERLESS, 'UNDERSCORE, 'ASSIGNMENT, 'FUNCTIONAL |]
              | doc "The parametrized tag format."
              | optional,
          },
    }
    in
  std.contract.any_of
      [
        js2n.Null,
        Bool,
        Number,
        String,
        {
          "$schema"
            | String
            | doc "The explicit schema set. It is optional, as GherKing is supported by schemastore.org, thus most IDE."
            | optional,
          base
            | js2n.string.MinLength 1
            | doc "The base folder of the input feature files."
            | optional,
          clean
            | Bool
            | doc "Whether the destination directory should be clean in advance."
            | optional,
          compilers
            | js2n.array.MinItems 1
            | Array (
              std.contract.any_of
                [
                  refs."definitions.gpcCustom",
                  refs."definitions.gpcFilter",
                  refs."definitions.gpcForLoop",
                  refs."definitions.gpcLicense",
                  refs."definitions.gpcMacro",
                  refs."definitions.gpcRemoveComments",
                  refs."definitions.gpcRemoveDuplicates",
                  refs."definitions.gpcReplacer",
                  refs."definitions.gpcScenarioNumbering",
                  refs."definitions.gpcScenarioOutlineExpander",
                  refs."definitions.gpcScenarioOutlineNumbering",
                  refs."definitions.gpcStepGroups",
                  refs."definitions.gpcTestData"
                ]
            )
            | doc "The precompilers to use and their configuration.",
          destination
            | js2n.string.MinLength 1
            | doc "The destination folder to put the output feature files."
            | optional,
          formatOptions | refs."definitions.formatOptions" | optional,
          install
            | Bool
            | doc "Whether the missing precompilers (gpc-* packages) should be installed and save to the package.json. Packages will be installed in the current folder, and package.json created if it is not there yet."
            | optional,
          parseConfig | refs."definitions.parseConfig" | optional,
          source
            | js2n.string.MinLength 1
            | doc "The source folder or glob pattern of the input feature files."
            | optional,
          verbose
            | Bool
            | doc "Whether some information should be displayed on the screen."
            | optional,
        },
        Array Dyn
      ]