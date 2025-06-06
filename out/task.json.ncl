# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.BackgroundMatcher" =
        {
            activeOnStart
              | Bool
              | doc m%"
                If set to true the watcher is in active mode when the task
                starts. This is equals of issuing a line that matches the
                beginPattern.
              "%
              | optional,
            beginsPattern
              | String
              | doc "If matched in the output the start of a background task is signaled."
              | optional,
            endsPattern
              | String
              | doc "If matched in the output the end of a background task is signaled."
              | optional,
            ..
          },
      "definitions.BaseTaskConfiguration" =
        {
            args
              | Array String
              | doc "The arguments passed to the command. Can be omitted."
              | optional,
            command
              | String
              | doc m%"
                The command to be executed. Can be an external program or a shell
                command.
              "%
              | optional,
            isBackground
              | Bool
              | doc "Specifies whether a global command is a background task."
              | optional,
            options
              | refs."definitions.CommandOptions"
              | { _ | Dyn }
              | doc "The command options used when the command is executed. Can be omitted."
              | optional,
            presentation
              | refs."definitions.PresentationOptions"
              | { _ | Dyn }
              | doc "The presentation options."
              | optional,
            problemMatcher
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.ProblemMatcher", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.ProblemMatcher", { _ | Dyn } ],
                        String
                      ]
                  ),
                  String
                ]
              | doc m%"
                The problem matcher to be used if a global command is executed (e.g. no tasks
                are defined). A tasks.json file can either contain a global problemMatcher
                property or a tasks property but not both.
              "%
              | optional,
            tasks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.TaskDescription", { _ | Dyn } ]
              )
              | doc m%"
                The configuration of the available tasks. A tasks.json file can either
                contain a global problemMatcher property or a tasks property but not both.
              "%
              | optional,
            type
              | std.enum.TagOrString
              | [| 'npm, 'shell, 'process |]
              | doc m%"
                The type of a custom task. Tasks of type "shell" are executed
                inside a shell (e.g. bash, cmd, powershell, ...)
              "%
              | optional,
            ..
          },
      "definitions.CommandOptions" =
        {
            cwd
              | String
              | doc m%"
                The current working directory of the executed program or shell.
                If omitted the current workspace's root is used.
              "%
              | optional,
            env
              | { _ | String }
              | doc m%"
                The environment of the executed program or shell. If omitted
                the parent process' environment is used.
              "%
              | optional,
            shell
              | {
                args
                  | Array String
                  | doc m%"
                    The arguments to be passed to the shell executable to run in command mode
                    (e.g ['-c'] for bash or ['/S', '/C'] for cmd.exe).
                  "%
                  | optional,
                executable | String | doc "The shell to use." | optional,
                ..
              }
              | doc "Configuration of the shell when task type is `shell`"
              | optional,
            ..
          },
      "definitions.PresentationOptions" =
        {
            clear
              | Bool
              | doc m%"
                Controls whether the terminal is cleared before this task is run.
                Defaults to `false`.
              "%
              | optional,
            echo
              | Bool
              | doc m%"
                Controls whether the command associated with the task is echoed
                in the user interface. Defaults to `true`.
              "%
              | optional,
            focus
              | Bool
              | doc m%"
                Controls whether the panel showing the task output is taking focus.
                Defaults to `false`.
              "%
              | optional,
            group
              | String
              | doc m%"
                Controls whether the task is executed in a specific terminal
                group using split panes. Tasks in the same group (specified by a string value)
                will use split terminals to present instead of a new terminal panel.
              "%
              | optional,
            panel
              | std.enum.TagOrString
              | [| 'shared, 'new, 'dedicated |]
              | doc m%"
                Controls if the task panel is used for this task only (dedicated),
                shared between tasks (shared) or if a new panel is created on
                every task execution (new). Defaults to `shared`.
              "%
              | optional,
            reveal
              | std.enum.TagOrString
              | [| 'silent, 'never, 'always |]
              | doc m%"
                Controls whether the task output is reveal in the user interface.
                Defaults to `always`.
              "%
              | optional,
            showReuseMessage
              | Bool
              | doc m%"
                Controls whether to show the `Terminal will be reused by tasks,
                press any key to close it` message.
              "%
              | optional,
            ..
          },
      "definitions.ProblemMatcher" =
        {
            background
              | refs."definitions.BackgroundMatcher"
              | { _ | Dyn }
              | doc m%"
                Additional information used to detect when a background task (like a watching task in Gulp)
                is active.
              "%
              | optional,
            base
              | String
              | doc m%"
                The name of a base problem matcher to use. If specified the
                base problem matcher will be used as a template and properties
                specified here will replace properties of the base problem
                matcher
              "%
              | optional,
            fileLocation
              | std.contract.any_of [ Array String, String ]
              | doc m%"
                Defines how filename reported in a problem pattern
                should be read. Valid values are:
                 - "absolute": the filename is always treated absolute.
                 - "relative": the filename is always treated relative to
                   the current working directory. This is the default.
                 - ["relative", "path value"]: the filename is always
                   treated relative to the given path value.
                 - "autodetect": the filename is treated relative to
                   the current workspace directory, and if the file
                   does not exist, it is treated as absolute.
                 - ["autodetect", "path value"]: the filename is treated
                   relative to the given path value, and if it does not
                   exist, it is treated as absolute.
              "%
              | optional,
            owner
              | String
              | doc m%"
                The owner of the produced VS Code problem. This is typically
                the identifier of a VS Code language service if the problems are
                to be merged with the one produced by the language service
                or 'external'. Defaults to 'external' if omitted.
              "%
              | optional,
            pattern
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.ProblemPattern", { _ | Dyn } ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.ProblemPattern", { _ | Dyn } ]
                  ),
                  String
                ]
              | doc m%"
                The name of a predefined problem pattern, the inline definition
                of a problem pattern or an array of problem patterns to match
                problems spread over multiple lines.
              "%
              | optional,
            severity
              | String
              | doc m%"
                The severity of the VS Code problem produced by this problem matcher.
                
                Valid values are:
                  "error": to produce errors.
                  "warning": to produce warnings.
                  "info": to produce infos.
                
                The value is used if a pattern doesn't specify a severity match group.
                Defaults to "error" if omitted.
              "%
              | optional,
            ..
          },
      "definitions.ProblemPattern" =
        {
            code
              | Number
              | doc m%"
                The match group index of the problem's code.
                
                Defaults to undefined. No code is captured.
              "%
              | optional,
            column
              | Number
              | doc "The match group index of the problem's column in the source file."
              | optional,
            endColumn
              | Number
              | doc m%"
                The match group index of the problem's end column in the source file.
                
                Defaults to undefined. No end column is captured.
              "%
              | optional,
            endLine
              | Number
              | doc m%"
                The match group index of the problem's end line in the source file.
                
                Defaults to undefined. No end line is captured.
              "%
              | optional,
            file
              | Number
              | doc "The match group index of the filename."
              | optional,
            kind
              | std.enum.TagOrString
              | [| 'location, 'file |]
              | doc m%"
                Whether the pattern matches a problem for the whole file or for a location
                inside a file.
                
                Defaults to "location".
              "%
              | optional,
            line
              | Number
              | doc m%"
                The match group index of the problem's line in the source file.
                Can only be omitted if location is specified.
              "%
              | optional,
            location
              | Number
              | doc m%"
                The match group index of the problem's location. Valid location
                patterns are: (line), (line,column) and (startLine,startColumn,endLine,endColumn).
                If omitted the line and column properties are used.
              "%
              | optional,
            loop
              | Bool
              | doc m%"
                Specifies if the last pattern in a multi line problem matcher should
                loop as long as it does match a line consequently. Only valid on the
                last problem pattern in a multi line problem matcher.
              "%
              | optional,
            message
              | Number
              | doc "The match group index of the message. Defaults to 0."
              | optional,
            regexp
              | String
              | doc m%"
                The regular expression to find a problem in the console output of an
                executed task.
              "%
              | optional,
            severity
              | Number
              | doc m%"
                The match group index of the problem's severity.
                
                Defaults to undefined. In this case the problem matcher's severity
                is used.
              "%
              | optional,
            ..
          },
      "definitions.RunOptions" =
        {
            reevaluateOnRerun
              | Bool
              | doc m%"
                Controls how variables are evaluated when a task is executed through
                the Rerun Last Task command.
                The default is `true`, meaning that variables will be re-evaluated when
                a task is rerun. When set to `false`, the resolved variable values from
                the previous run of the task will be used.
              "%
              | optional,
            runOn
              | String
              | doc m%"
                Specifies when a task is run.
                
                Valid values are:
                  "default": The task will only be run when executed through the Run Task command.
                  "folderOpen": The task will be run when the containing folder is opened.
              "%
              | optional,
            ..
          },
      "definitions.TaskDescription" =
        {
            args
              | Array String
              | doc m%"
                Additional arguments passed to the command. Should be used if type
                is "process".
              "%
              | optional,
            command
              | String
              | doc m%"
                The command to execute. If the type is "shell" it should be the full
                command line including any additional arguments passed to the command.
              "%
              | optional,
            group
              | std.contract.any_of
                [
                  {
                    isDefault | Bool | optional,
                    kind
                      | std.enum.TagOrString
                      | [| 'test, 'build |]
                      | optional,
                    ..
                  },
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'test, 'build |] ]
                ]
              | doc m%"
                Defines the group to which this task belongs. Also supports to mark
                a task as the default task in a group.
              "%
              | optional,
            isBackground
              | Bool
              | doc "Whether the executed command is kept alive and runs in the background."
              | optional,
            label | String | doc "The task's name" | optional,
            presentation
              | refs."definitions.PresentationOptions"
              | { _ | Dyn }
              | doc "The presentation options."
              | optional,
            problemMatcher
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.ProblemMatcher", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.ProblemMatcher", { _ | Dyn } ],
                        String
                      ]
                  ),
                  String
                ]
              | doc m%"
                The problem matcher(s) to use to capture problems in the tasks
                output.
              "%
              | optional,
            runOptions
              | refs."definitions.RunOptions"
              | { _ | Dyn }
              | doc "Defines when and how a task is run."
              | optional,
            type
              | std.enum.TagOrString
              | [| 'npm, 'shell, 'process |]
              | doc m%"
                The type of a custom task. Tasks of type "shell" are executed
                inside a shell (e.g. bash, cmd, powershell, ...)
              "%
              | optional,
            ..
          },
    }
    in
  {
      args
        | Array String
        | doc "The arguments passed to the command. Can be omitted."
        | optional,
      command
        | String
        | doc m%"
          The command to be executed. Can be an external program or a shell
          command.
        "%
        | optional,
      isBackground
        | Bool
        | doc "Specifies whether a global command is a background task."
        | optional,
      linux
        | refs."definitions.BaseTaskConfiguration"
        | doc "Linux specific task configuration"
        | optional,
      options
        | refs."definitions.CommandOptions"
        | doc "The command options used when the command is executed. Can be omitted."
        | optional,
      osx
        | refs."definitions.BaseTaskConfiguration"
        | doc "macOS specific task configuration"
        | optional,
      presentation
        | refs."definitions.PresentationOptions"
        | doc "The presentation options."
        | optional,
      problemMatcher
        | std.contract.any_of
          [
            refs."definitions.ProblemMatcher",
            Array (
              std.contract.any_of [ refs."definitions.ProblemMatcher", String ]
            ),
            String
          ]
        | doc m%"
          The problem matcher to be used if a global command is executed (e.g. no tasks
          are defined). A tasks.json file can either contain a global problemMatcher
          property or a tasks property but not both.
        "%
        | optional,
      tasks
        | Array refs."definitions.TaskDescription"
        | doc m%"
          The configuration of the available tasks. A tasks.json file can either
          contain a global problemMatcher property or a tasks property but not both.
        "%
        | optional,
      type
        | std.enum.TagOrString
        | [| 'npm, 'shell, 'process |]
        | doc m%"
          The type of a custom task. Tasks of type "shell" are executed
          inside a shell (e.g. bash, cmd, powershell, ...)
        "%
        | optional,
      version
        | std.enum.TagOrString
        | [| '"2.0.0" |]
        | doc "The configuration's version number"
        | optional,
      windows
        | refs."definitions.BaseTaskConfiguration"
        | doc "Windows specific task configuration"
        | optional,
      ..
    }