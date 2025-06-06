# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.eventType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'deleted, 'added, 'changed, 'all |] ],
      "definitions.options" =
        std.contract.Sequence
            [
              refs."definitions.optionsWithEvents",
              {
                atBegin
                  | Bool
                  | doc "This option will trigger the run of each specified task at startup of the watcher."
                  | optional,
                cwd
                  | std.contract.any_of [ String, { _ | Dyn } ]
                  | doc "Ability to set the current working directory."
                  | optional,
                debounceDelay
                  | std.number.Integer
                  | doc "How long to wait before emitting events in succession for the same filepath and status. For example if your Gruntfile.js file was changed, a 'changed' event will only fire again after the given milliseconds."
                  | optional,
                forever
                  | Bool
                  | doc "This is only a task level option and cannot be configured per target. By default the watch task will duck punch grunt.fatal and grunt.warn to try and prevent them from exiting the watch process. If you don't want grunt.fatal and grunt.warn to be overridden set the forever option to false."
                  | optional,
                interrupt
                  | Bool
                  | doc "As files are modified this watch task will spawn tasks in child processes."
                  | optional,
                interval
                  | std.number.Integer
                  | doc "The interval is passed to 'fs.watchFile'. Since 'interval' is only used by 'fs.watchFile' and this watcher also uses 'fs.watch'; it is recommended to ignore this option."
                  | optional,
                livereload
                  | std.contract.any_of [ Bool, Number ]
                  | doc "If enabled a live reload server will be started with the watch task per target. Then after the indicated tasks have run, the live reload server will be triggered with the modified files."
                  | optional,
                livereloadOnError
                  | Bool
                  | doc "Option to prevent the livereload if the executed tasks encountered an error. If set to  false , the livereload will only be triggered if all tasks completed successfully."
                  | optional,
                reload
                  | Bool
                  | doc "By default, if Gruntfile.js is being watched, then changes to it will trigger the watch task to restart, and reload the Gruntfile.js changes. When reload is set to true, changes to any of the watched files will trigger the watch task to restart. This is especially useful if your Gruntfile.js is dependent on other files."
                  | optional,
                spawn
                  | Bool
                  | doc "Whether to spawn task runs in a child process."
                  | optional,
                ..
              }
            ],
      "definitions.optionsWithEvents" =
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
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            events =
                              js2n.array.ArrayOf
                                  (std.contract.Sequence
                                    [ refs."definitions.eventType", String ]),
                          },
                      required = {},
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
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            events =
                              std.contract.Sequence
                                  [ refs."definitions.eventType", String ],
                          },
                      required = {},
                    },
                  Array Dyn
                ]
            ],
      "definitions.target" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                files | Array String | doc "One or more files to watch.",
                options | refs."definitions.options" | { _ | Dyn } | optional,
                tasks
                  | Array String
                  | doc "One or more tasks to run."
                  | optional,
                ..
              },
              Array Dyn
            ],
    }
    in
  js2n.record.Record
      {
        additional = 'Some refs."definitions.target",
        patterns = {},
        properties =
          {
              options =
                std.contract.Sequence
                    [ refs."definitions.options", { _ | Dyn } ],
            },
        required = {},
      }