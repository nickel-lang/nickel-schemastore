# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      buffer
        | std.number.Integer
        | doc "The buffer duration to wait before triggering a restart."
        | optional,
      bufferPoll
        | std.number.Integer
        | doc "The buffer polling interval to check for the file stability."
        | optional,
      clearScreen
        | Bool
        | doc "Clear the screen on start and on every restart."
        | optional,
      display
        | {
          onBeforeRestart
            | String
            | doc "The message to display before the watcher restarts."
            | optional,
          onBeforeStart
            | String
            | doc "The message to display before the watcher starts."
            | optional,
          onBeforeStop
            | String
            | doc "The message to display before the watcher stops."
            | optional,
          onRestart
            | String
            | doc "The message to display after the watcher restarts."
            | optional,
          onStart
            | String
            | doc "The message to display after the watcher starts."
            | optional,
          ..
        }
        | doc "The various messages to display during different events."
        | optional,
      env
        | { _ | Dyn }
        | doc "A set of key-value pairs which will be promptly passed on to your process and accessible via `process.env`."
        | optional,
      exec | String | doc "The command to execute on file change.",
      ignored
        | String
        | doc "Paths, globs or regular expressions to ignore."
        | optional,
      logLevel
        | std.number.Integer
        | doc "The level of logging. 0 - fatal, 1 - error, 2 - warning, 3 - info, 4 - debug"
        | optional,
      paths
        | std.contract.any_of [ String, Array String ]
        | doc "A string or an array of paths to watch. Supports globbing."
        | optional,
      port
        | std.number.Integer
        | doc "The port on which the server should run. This is passed to your application as `process.env.PORT` which should be used by you."
        | optional,
      root
        | String
        | doc "The root path from which all other paths will be resolved."
        | optional,
      ..
    }