# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ProjectSchema" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    js2n.string.Matches "^(?!root$)[A-Za-z0-9./_-]+$",
                    { _ | Dyn },
                    Array Dyn
                  ]),
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^[A-Za-z0-9./_-]+$" =
                          js2n.string.Matches "^internal|^local|.git$",
                      },
                  properties = {},
                  required = {},
                }
            ],
      "definitions.RootSchema" =
        {
            "$schema" | String | optional,
            go_mod_prefix
              | String
              | doc "Default namespace to use for your go modules"
              | optional,
            js_package_manager
              | String
              | doc "specify the package manager to use in js/ts projects. It use the same syntax as package.json package_manager"
              | optional,
            pipeline
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.TaskSchema", { _ | Dyn } ]
              }
              | doc "An object representing the task dependency graph of your monospace"
              | optional,
            preferred_output_mode
              | refs."definitions.output_mode"
              | String
              | optional,
            projects
              | refs."definitions.ProjectSchema"
              | { _ | Dyn }
              | doc "Key value pair where keys are path to the project in the monospace and values are either: 'internal', 'local', or a git repo url",
            projects_aliases
              | js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    js2n.string.Matches "^(?!root$)[A-Za-z0-9_-]+$",
                    { _ | Dyn },
                    Array Dyn
                  ])
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^[A-Za-z0-9_-]+$" =
                          js2n.string.Matches "^[A-Za-z0-9./_-]+$",
                      },
                  properties = {},
                  required = {},
                }
              | doc "Aliases for projects, it allows you to define shorter names to use in commands that point to projects. (can't be 'root' as it is a reserved alias)"
              | optional,
          },
      "definitions.TaskSchema" =
        {
            cmd
              | Array String
              | doc m%"
                By default task will be looked up in the package.json script properties.
                You can override this behavior by providing the command to execute. It must be an array of string ie: [ls, -l].
                This can also be useful for projects that don't have a package.json at all.
                ----
                ℹ: This is not a shell command, so you can't use shell features like pipes, redirections, etc...
                Either use an external script for this or something like [/bin/sh, -c, "command1 && command2"]
                Additionally .monospace/bin will be added to your path and can be used to store utility commands to ship with your monospace.
              "%
              | optional,
            dependsOn
              | Array String
              | doc m%"
                The list of tasks that this task depends on.
                Dependencies should be listed in the form 'projectName#taskName', if prefix 'projectName#' is ommited then it is considered to point to a task of the same project.
                
                For example given the following pipeline:
                  myproject#test: 
                    dependsOn: [build, myotherProject#test]
                  myproject#build:{}
                  myotherProject#test:{}
                
                the test task of myproject will depend on the build task of myproject and the test task of myotherProject
              "%
              | optional,
            description
              | String
              | doc "An optional description of the task."
              | optional,
            output_mode | refs."definitions.output_mode" | String | optional,
            persistent
              | Bool
              | doc m%"
                Persistent tasks are long-running process such as server, or watchers that will not exit unless manually stopped.
                It is important to mark such tasks as persistent, doing so monospace will prevent other tasks to depend on them and will inform you of configuration problem when running in check mode
              "%
              | optional,
          },
      "definitions.output_mode" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'none, 'status-only, 'errors-only, 'interleaved, 'grouped |]
            ],
    }
    in
  refs."definitions.RootSchema"