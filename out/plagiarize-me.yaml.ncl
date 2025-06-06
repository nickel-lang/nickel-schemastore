# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.mergeEnv" =
        {
            create
              | Array String
              | doc "List of Environment variable names to create in target project if they are not already created"
              | optional,
            path | String,
            set | { _ | String } | optional,
            skip | Array String | optional,
            skipIfNotSameFileName | Array String | optional,
            type | std.enum.TagOrString | [| 'env |],
          },
      "definitions.mergeGit" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                path | String | doc "Path to file to merge",
                type | std.enum.TagOrString | [| 'git |] | doc "Merge type",
              },
              Array Dyn
            ],
      "definitions.mergeJson" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                create
                  | Array String
                  | doc "JQ pattern of property to create if the property does not exist in target project file"
                  | optional,
                path | String | doc "Path to file to merge",
                replace
                  | Array String
                  | doc "JQ pattern of property to replace"
                  | optional,
                replaceIf
                  | Array
                    {
                      condition
                        | String
                        | doc "The condition to evaluate for truthiness. If truthy will replace property matched by pattern",
                      pattern
                        | String
                        | doc "JQ pattern of property to replace",
                      ..
                    }
                  | doc "A set of properties to replace if the condition evaluates to truthy"
                  | optional,
                set
                  | { _ | String }
                  | doc "Set the value of these items to the value. So `'.license':MIT` would set the `license` property of the json file to 'MIT'"
                  | optional,
                skip
                  | Array String
                  | doc "A list of items to not create, copy, replace, or remove in target file"
                  | optional,
                skipIfNotSameFileName | Array String | optional,
                type | std.enum.TagOrString | [| 'jq |] | doc "Merge type",
              },
              Array Dyn
            ],
      "definitions.mergeYaml" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                create
                  | Array String
                  | doc "YQ pattern of property to create if the property does not exist in target project file"
                  | optional,
                path | String | doc "Path to file to merge",
                replace
                  | Array String
                  | doc "YQ pattern of property to replace"
                  | optional,
                replaceIf
                  | Array
                    {
                      condition
                        | String
                        | doc "The condition to evaluate for truthiness. If truthy will replace property matched by pattern",
                      pattern
                        | String
                        | doc "YQ pattern of property to replace",
                      ..
                    }
                  | doc "A set of properties to replace if the condition evaluates to truthy"
                  | optional,
                set
                  | { _ | String }
                  | doc "Set the value of these items to the value. So `'license':MIT` would set the `license` property of the yaml file to 'MIT'"
                  | optional,
                skip
                  | Array String
                  | doc "A list of items to not create, copy, replace, or remove in target file"
                  | optional,
                skipIfNotSameFileName | Array String | optional,
                type | std.enum.TagOrString | [| 'yq |] | doc "Merge type",
              },
              Array Dyn
            ],
      "definitions.moveItems" =
        {
            names | Array String,
            to | String | doc "The path to move the directory to",
            ..
          },
    }
    in
  {
      create
        | {
          andClean
            | Array String
            | doc "Files to remove commented sections from. Eg code between `// plagiarize:start:always:delete` and `// plagiarize:end:always:delete`"
            | optional,
          files
            | Array String
            | doc "Files to copy from plagiarized project if they do not exist in the target project"
            | optional,
          ..
        }
        | optional,
      "merge"
        | Array (
          js2n.OneOf
            [
              refs."definitions.mergeJson",
              refs."definitions.mergeYaml",
              refs."definitions.mergeGit",
              refs."definitions.mergeEnv"
            ]
        )
        | optional,
      move
        | {
          directories
            | Array refs."definitions.moveItems"
            | doc "Directories to move from the target repo to the target repo. Useful for refactoring project structures"
            | optional,
          files
            | Array refs."definitions.moveItems"
            | doc "Files to move from the target repo to the target repo. Useful for refactoring"
            | optional,
          ..
        }
        | doc "Files to move in target project from their previous locations"
        | optional,
      push
        | Array
          {
            git
              | {
                branch | String,
                commit | { create | Bool | optional, message | String, },
                hooks
                  | {
                    post-push
                      | Array
                        {
                          api | std.enum.TagOrString | [| 'gitlab |],
                          envVars | { _ | String } | optional,
                          remote | String,
                          removeSourceBranch | Bool | optional,
                          targetBranch | String,
                          type
                            | std.enum.TagOrString
                            | [| 'create-merge-request |],
                          ..
                        }
                      | optional,
                  }
                  | optional,
                push | Bool | optional,
                remotes
                  | Array String
                  | doc "A list of removes to push to (if `push: true`)",
                repos
                  | Array
                    {
                      local | String | optional,
                      remote
                        | {
                          checkout | String,
                          defaultName | String,
                          url | String,
                        },
                    },
              }
              | optional,
            instances
              | Array (
                std.contract.Sequence
                  [ { _ | String }, js2n.record.Required [ "project" ] ]
              )
              | optional,
            values
              | { _ | String }
              | doc "Values to set when iterating through each instance"
              | optional,
          }
        | optional,
      replace
        | {
          files
            | Array String
            | doc "Relative path to target files that will be completely overwritten by source files in the same path"
            | optional,
          strings
            | js2n.record.Record
              {
                additional =
                  'Some
                      (std.contract.any_of
                        [ Bool, std.number.Integer, String ]),
                patterns = {},
                properties = { project = String, },
                required = { project = true, },
              }
            | doc "Strings to find in target project and be replaced with plagiarized project's values",
          vars
            | { _ | std.contract.any_of [ Bool, std.number.Integer, String ] }
            | doc "Variables available to be used for finding and replacing by variable name. For example `$var_name: hello` would replace string '$var_name' with 'hello' in target project"
            | optional,
          ..
        }
        | doc "Configuration for strings, files, and file paths to replace in target file",
      repo
        | {
          checkout
            | String
            | doc "The default branch that downstream projects should checkout when plagiarizing this project"
            | optional,
          url | String | doc "The git repo url of this project",
        }
        | doc "Git repo of where this plagiarizable project is hosted"
        | optional,
      run
        | Array
          {
            command | String | doc "The shell command to run",
            parallel
              | Bool
              | doc "Whether or not to run this command synchronously or in parallel to other commands where `parallel: true`"
              | optional,
            when
              | js2n.OneOf
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'always |] ],
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            options =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties = { path = String, },
                                    required = { path = true, },
                                  },
                            type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'if-missing |] ],
                          },
                      required = { options = true, type = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'always |] ],
                          },
                      required = { type = true, },
                    }
                ]
              | optional,
            ..
          }
        | doc "Shell commands to run after plagiarize files are done being copied and updated"
        | optional,
      templates
        | Array
          {
            configs
              | Array
                {
                  strings
                    | { _ | std.contract.any_of [ Bool, Number, String ] }
                    | optional,
                  vars
                    | {
                      _ | std.contract.any_of
                        [ js2n.Null, Bool, Number, String ]
                    }
                    | optional,
                }
              | optional,
            create | { files | Array String | optional, } | optional,
            "merge"
              | Array (
                js2n.OneOf
                  [
                    refs."definitions.mergeJson",
                    refs."definitions.mergeYaml",
                    refs."definitions.mergeGit",
                    refs."definitions.mergeEnv"
                  ]
              )
              | optional,
            name | String | doc "The name of the template",
            replace
              | {
                strings
                  | { _ | std.contract.any_of [ Bool, Number, String ] }
                  | doc "Values to be used as variables within the target project. So `var_name: hello` in the template configuration and `var_name: world` would replace instances of 'hello' found in the source file with with 'world' found in the target file",
                values
                  | {
                    _ | std.contract.any_of [ js2n.Null, Bool, Number, String ]
                  }
                  | doc "Values to be used as variables within the target project. So `var_name: hello` would replace instances of '$var_name' with 'hello' in the target file"
                  | optional,
                vars
                  | {
                    _ | std.contract.any_of [ js2n.Null, Bool, Number, String ]
                  }
                  | doc "Values to be used as variables within the plagiarize-me.yaml file only. So `var_name: hello` would replace '$var_name' with 'hello' in plagiarize-me.yaml"
                  | optional,
              },
          }
        | doc "Files that are used the have similarities between instances of that that. .env files for example are similar and could be templated"
        | optional,
    }