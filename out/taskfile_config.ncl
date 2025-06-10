# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.cmd" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ refs."definitions.cmd_call", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.task_call", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.defer_task_call", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.defer_cmd_call", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.for_cmds_call", { _ | Dyn } ]
            ],
      "definitions.cmd_call" =
        {
            cmd | String | doc "Command to run",
            ignore_error
              | Bool
              | doc "Prevent command from aborting the execution of task even after receiving a status code of 1"
              | optional,
            platforms
              | refs."definitions.platforms"
              | Array Dyn
              | doc "Specifies which platforms the command should be run on."
              | optional,
            set
              | Array (std.contract.Sequence [ refs."definitions.set", String ])
              | doc "Enables POSIX shell options for this command. See https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html"
              | optional,
            shopt
              | Array (
                std.contract.Sequence [ refs."definitions.shopt", String ]
              )
              | doc "Enables Bash shell options for this command. See https://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html"
              | optional,
            silent
              | Bool
              | doc "Silent mode disables echoing of command before Task runs it"
              | optional,
          },
      "definitions.cmds" = Array refs."definitions.cmd",
      "definitions.defer_cmd_call" =
        {
            defer | String | doc "Name of the command to defer",
            silent
              | Bool
              | doc "Hides task name and command from output. The command's output will still be redirected to `STDOUT` and `STDERR`."
              | optional,
          },
      "definitions.defer_task_call" =
        {
            defer
              | refs."definitions.task_call"
              | { _ | Dyn }
              | doc "Run a command when the task completes. This command will run even when the task fails",
          },
      "definitions.deps" =
        Array (
            js2n.OneOf
              [
                String,
                std.contract.Sequence
                  [ refs."definitions.task_call", { _ | Dyn } ],
                std.contract.Sequence
                  [ refs."definitions.for_deps_call", { _ | Dyn } ]
              ]
          ),
      "definitions.for" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.for_list", Array Dyn ],
              std.contract.Sequence
                [ refs."definitions.for_attribute", String ],
              std.contract.Sequence [ refs."definitions.for_var", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.for_matrix", { _ | Dyn } ]
            ],
      "definitions.for_attribute" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'generates, 'sources |] ],
      "definitions.for_cmds_call" =
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
                      js2n.record.Required [ "cmd" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "task" ],
                      Array Dyn
                    ]
                ],
              {
                cmd | String | doc "Command to run" | optional,
                for | refs."definitions.for",
                platforms
                  | refs."definitions.platforms"
                  | Array Dyn
                  | doc "Specifies which platforms the command should be run on."
                  | optional,
                silent
                  | Bool
                  | doc "Silent mode disables echoing of command before Task runs it"
                  | optional,
                task | String | doc "Task to run" | optional,
                vars
                  | refs."definitions.vars"
                  | { _ | Dyn }
                  | doc "Values passed to the task called"
                  | optional,
              }
            ],
      "definitions.for_deps_call" =
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
                      js2n.record.Required [ "cmd" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "task" ],
                      Array Dyn
                    ]
                ],
              {
                for | refs."definitions.for",
                silent
                  | Bool
                  | doc "Silent mode disables echoing of command before Task runs it"
                  | optional,
                task | String | doc "Task to run" | optional,
                vars
                  | refs."definitions.vars"
                  | { _ | Dyn }
                  | doc "Values passed to the task called"
                  | optional,
              }
            ],
      "definitions.for_list" = Array String,
      "definitions.for_matrix" =
        std.contract.Sequence [ {  .. }, js2n.record.Required [ "matrix" ] ],
      "definitions.for_var" =
        {
            as
              | String
              | doc "What the loop variable should be named"
              | optional,
            split | String | doc "String to split the variable on" | optional,
            var | String | doc "Name of the variable to iterate over",
          },
      "definitions.glob" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence [ refs."definitions.glob_obj", { _ | Dyn } ]
            ],
      "definitions.glob_obj" =
        {
            exclude
              | String
              | doc "File or glob pattern to exclude from the list"
              | optional,
          },
      "definitions.outputObject" =
        {
            group
              | {
                begin | String | optional,
                end | String | optional,
                error_only
                  | Bool
                  | doc "Swallows command output on zero exit code"
                  | optional,
                ..
              }
              | optional,
          },
      "definitions.outputString" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'group, 'prefixed, 'interleaved |] ],
      "definitions.platforms" = Array String,
      "definitions.precondition" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ refs."definitions.precondition_obj", { _ | Dyn } ]
            ],
      "definitions.precondition_obj" =
        {
            msg
              | String
              | doc "Failure message to display when the condition fails"
              | optional,
            sh
              | String
              | doc "Command to run. If that command returns 1, the condition will fail"
              | optional,
          },
      "definitions.requires_obj" =
        {
            vars
              | Array (
                std.contract.any_of
                  [ String, { enum | Array String, name | String, } ]
              )
              | doc "List of variables that must be defined for the task to run"
              | optional,
          },
      "definitions.run" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'when_changed, 'once, 'always |] ],
      "definitions.set" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'pipefail,
                'x,
                'xtrace,
                'u,
                'nounset,
                'f,
                'noglob,
                'n,
                'noexec,
                'e,
                'errexit,
                'a,
                'allexport
              |]
            ],
      "definitions.shopt" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'nullglob, 'globstar, 'expand_aliases |]
            ],
      "definitions.task" =
        {
            aliases
              | Array String
              | doc "A list of alternative names by which the task can be called."
              | optional,
            cmd
              | refs."definitions.cmd"
              | doc "The command to be executed."
              | optional,
            cmds
              | refs."definitions.cmds"
              | Array Dyn
              | doc "A list of commands to be executed."
              | optional,
            deps
              | refs."definitions.deps"
              | Array Dyn
              | doc "A list of dependencies of this task. Tasks defined here will run in parallel before this task."
              | optional,
            desc
              | String
              | doc "A short description of the task. This is displayed when calling `task --list`."
              | optional,
            dir
              | String
              | doc "The directory in which this task should run. Defaults to the current working directory."
              | optional,
            dotenv
              | Array String
              | doc "A list of `.env` file paths to be parsed."
              | optional,
            env
              | refs."definitions.vars"
              | { _ | Dyn }
              | doc "A set of environment variables that will be made available to shell commands."
              | optional,
            generates
              | Array refs."definitions.glob"
              | doc "A list of files meant to be generated by this task. Relevant for `timestamp` method. Can be file paths or star globs."
              | optional,
            ignore_error
              | Bool
              | doc "Continue execution if errors happen while executing commands."
              | optional,
            interactive
              | Bool
              | doc "Tells task that the command is interactive."
              | optional,
            internal
              | Bool
              | doc "Stops a task from being callable on the command line. It will also be omitted from the output when used with `--list`."
              | optional,
            label
              | String
              | doc "Overrides the name of the task in the output when a task is run. Supports variables."
              | optional,
            method
              | std.enum.TagOrString
              | [| 'timestamp, 'checksum, 'none |]
              | doc "Defines which method is used to check the task is up-to-date. `timestamp` will compare the timestamp of the sources and generates files. `checksum` will check the checksum (You probably want to ignore the .task folder in your .gitignore file). `none` skips any validation and always run the task."
              | optional,
            platforms
              | refs."definitions.platforms"
              | Array Dyn
              | doc "Specifies which platforms the task should be run on."
              | optional,
            preconditions
              | Array refs."definitions.precondition"
              | doc "A list of commands to check if this task should run. If a condition is not met, the task will error."
              | optional,
            prefix
              | String
              | doc "Defines a string to prefix the output of tasks running in parallel. Only used when the output mode is `prefixed`."
              | optional,
            prompt
              | std.contract.any_of [ String, Array String ]
              | doc "One or more prompts that will be presented before a task is run. Declining will cancel running the current and any subsequent tasks."
              | optional,
            requires
              | refs."definitions.requires_obj"
              | { _ | Dyn }
              | doc "A list of variables which should be set if this task is to run, if any of these variables are unset the task will error and not run"
              | optional,
            run
              | refs."definitions.run"
              | String
              | doc "Specifies whether the task should run again or not if called more than once. Available options: `always`, `once` and `when_changed`."
              | optional,
            set
              | Array (std.contract.Sequence [ refs."definitions.set", String ])
              | doc "Enables POSIX shell options for all of a task's commands. See https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html"
              | optional,
            shopt
              | Array (
                std.contract.Sequence [ refs."definitions.shopt", String ]
              )
              | doc "Enables Bash shell options for all of a task's commands. See https://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html"
              | optional,
            silent
              | Bool
              | doc "Hides task name and command from output. The command's output will still be redirected to `STDOUT` and `STDERR`. When combined with the `--list` flag, task descriptions will be hidden."
              | optional,
            sources
              | Array refs."definitions.glob"
              | doc "A list of sources to check before running this task. Relevant for `checksum` and `timestamp` methods. Can be file paths or star globs."
              | optional,
            status
              | Array String
              | doc "A list of commands to check if this task should run. The task is skipped otherwise. This overrides `method`, `sources` and `generates`."
              | optional,
            summary
              | String
              | doc "A longer description of the task. This is displayed when calling `task --summary [task]`."
              | optional,
            vars
              | refs."definitions.vars"
              | { _ | Dyn }
              | doc "A set of variables that can be used in the task."
              | optional,
            watch
              | Bool
              | doc "Configures a task to run in watch mode automatically."
              | optional,
          },
      "definitions.task_call" =
        {
            silent
              | Bool
              | doc "Hides task name and command from output. The command's output will still be redirected to `STDOUT` and `STDERR`."
              | optional,
            task | String | doc "Name of the task to run",
            vars
              | refs."definitions.vars"
              | { _ | Dyn }
              | doc "Values passed to the task called"
              | optional,
          },
      "definitions.tasks" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^.*$" =
                      std.contract.any_of
                          [
                            String,
                            Array (
                              js2n.OneOf
                                [
                                  String,
                                  std.contract.Sequence
                                    [
                                      refs."definitions.task_call",
                                      { _ | Dyn }
                                    ],
                                  std.contract.Sequence
                                    [
                                      refs."definitions.defer_task_call",
                                      { _ | Dyn }
                                    ],
                                  std.contract.Sequence
                                    [
                                      refs."definitions.defer_cmd_call",
                                      { _ | Dyn }
                                    ]
                                ]
                            ),
                            std.contract.Sequence
                              [ refs."definitions.task", { _ | Dyn } ]
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.var_subkey" =
        {
            map
              | { _ | Dyn }
              | doc "The value will be treated as a literal map type and stored in the variable"
              | optional,
            ref
              | String
              | doc "The value will be used to lookup the value of another variable which will then be assigned to this variable"
              | optional,
            sh
              | String
              | doc "The value will be treated as a command and the output assigned to the variable"
              | optional,
          },
      "definitions.vars" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^.*$" =
                      std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            std.number.Integer,
                            String,
                            Array Dyn,
                            std.contract.Sequence
                              [ refs."definitions.var_subkey", { _ | Dyn } ]
                          ],
                  },
              properties = {},
              required = {},
            },
    }
    in
  std.contract.Sequence
      [
        std.contract.any_of
          [
            js2n.record.Required [ "includes" ],
            js2n.record.Required [ "tasks" ],
            js2n.record.Required [ "includes", "tasks" ]
          ],
        {
          dotenv
            | Array String
            | doc "A list of `.env` file paths to be parsed."
            | optional,
          env
            | refs."definitions.vars"
            | doc "A set of global environment variables."
            | optional,
          includes
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "^.*$" =
                        std.contract.any_of
                            [
                              String,
                              {
                                aliases
                                  | Array String
                                  | doc "Alternative names for the namespace of the included Taskfile."
                                  | optional,
                                checksum
                                  | String
                                  | doc "The checksum of the file you expect to include. If the checksum does not match, the file will not be included."
                                  | optional,
                                dir
                                  | String
                                  | doc "The working directory of the included tasks when run."
                                  | optional,
                                excludes
                                  | Array String
                                  | doc "A list of tasks to be excluded from inclusion."
                                  | optional,
                                flatten
                                  | Bool
                                  | doc "If `true`, the tasks from the included Taskfile will be available in the including Taskfile without a namespace. If a task with the same name already exists in the including Taskfile, an error will be thrown."
                                  | optional,
                                internal
                                  | Bool
                                  | doc "Stops any task in the included Taskfile from being callable on the command line. These commands will also be omitted from the output when used with `--list`."
                                  | optional,
                                "optional"
                                  | Bool
                                  | doc "If `true`, no errors will be thrown if the specified file does not exist."
                                  | optional,
                                taskfile
                                  | String
                                  | doc "The path for the Taskfile or directory to be included. If a directory, Task will look for files named `Taskfile.yml` or `Taskfile.yaml` inside that directory. If a relative path, resolved relative to the directory containing the including Taskfile."
                                  | optional,
                                vars
                                  | refs."definitions.vars"
                                  | doc "A set of variables to apply to the included Taskfile."
                                  | optional,
                                ..
                              }
                            ],
                    },
                properties = {},
                required = {},
              }
            | doc "Imports tasks from the specified taskfiles. The tasks described in the given Taskfiles will be available with the informed namespace."
            | optional,
          interval
            | js2n.string.Matches "^[0-9]+(?:m|s|ms)$"
            | doc "Sets a different watch interval when using `--watch`, the default being 100 milliseconds. This string should be a valid Go duration: https://pkg.go.dev/time#ParseDuration."
            | optional,
          method
            | std.enum.TagOrString
            | [| 'timestamp, 'checksum, 'none |]
            | doc "Defines which method is used to check the task is up-to-date. (default: checksum)"
            | optional,
          output
            | std.contract.any_of
              [
                refs."definitions.outputString",
                refs."definitions.outputObject"
              ]
            | doc "Defines how the STDOUT and STDERR are printed when running tasks in parallel. The interleaved output prints lines in real time (default). The group output will print the entire output of a command once, after it finishes, so you won't have live feedback for commands that take a long time to run. The prefix output will prefix every line printed by a command with [task-name] as the prefix, but you can customize the prefix for a command with the prefix: attribute."
            | optional,
          run
            | refs."definitions.run"
            | doc "Default 'run' option for this Taskfile. Available options: `always`, `once` and `when_changed`."
            | optional,
          set
            | Array refs."definitions.set"
            | doc "Enables POSIX shell options for all commands in the Taskfile. See https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html"
            | optional,
          shopt
            | Array refs."definitions.shopt"
            | doc "Enables Bash shell options for all commands in the Taskfile. See https://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html"
            | optional,
          silent
            | Bool
            | doc "Default 'silent' options for this Taskfile. If `false`, can be overridden with `true` in a task by task basis."
            | optional,
          tasks
            | refs."definitions.tasks"
            | doc "A set of task definitions."
            | optional,
          vars
            | refs."definitions.vars"
            | doc "A set of global variables."
            | optional,
          version
            | std.contract.any_of
              [
                js2n.string.Matches
                  "^(0|[1-9]\\d*)(?:\\.(0|[1-9]\\d*))?(?:\\.(0|[1-9]\\d*))?(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$",
                js2n.Enum [ 3 ]
              ]
            | doc "Specify the Taskfile format that this file conforms to.",
        }
      ]