# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.pathPattern" =
        std.contract.any_of [ String, { re | String, } ],
      "definitions.terminationSignals" =
        std.contract.any_of
            [
              js2n.Const "SIGTERM",
              js2n.Const "SIGINT",
              js2n.Const "SIGQUIT",
              js2n.Const "SIGKILL",
              js2n.Const "SIGHUP"
            ],
    }
    in
  std.contract.Sequence
      [
        js2n.record.DependentContracts
          {
            nodeArgs =
              std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "exec" ],
                    Array Dyn
                  ],
            pollingInterval =
              std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "legacyWatch" ],
                    Array Dyn
                  ],
          },
        {
          colours
            | Bool
            | doc "set to false to disable color output"
            | optional,
          cwd
            | String
            | doc "change into <dir> before running the script"
            | optional,
          delay
            | Number
            | doc "debounce restart for a number of milliseconds"
            | optional,
          dump | Bool | doc "print full debug configuration" | optional,
          exec
            | String
            | doc "execute script with \"app\", ie. -x \"python -v\".  May use variables."
            | optional,
          execMap
            | { _ | Dyn }
            | doc "The global config file is useful for setting up default executables"
            | optional,
          exitcrash | Bool | doc "Exit nodemon after crash" | optional,
          ext
            | String
            | doc "extensions to look for, ie. \"js,jade,hbs\""
            | optional,
          ignore
            | Array refs."definitions.pathPattern"
            | doc "Ignore directory or file.  One entry per ignored value.  Wildcards are allowed."
            | optional,
          ignoreRoot | Array String | doc "root paths to ignore" | optional,
          legacyWatch
            | Bool
            | doc "use polling to watch for changes (typically needed when watching over a network/Docker)"
            | optional,
          noUpdateNotifier
            | Bool
            | doc "opt-out of update version check"
            | optional,
          nodeArgs
            | Array Dyn
            | doc "arguments to pass to node if exec is \"node\""
            | optional,
          pollingInterval
            | Number
            | doc "combined with legacyWatch, milliseconds to poll for (default 100)"
            | optional,
          quiet
            | Bool
            | doc "minimise nodemon messages to start/stop only"
            | optional,
          runOnChangeOnly
            | Bool
            | doc "execute script on change only, not startup"
            | optional,
          signal
            | refs."definitions.terminationSignals"
            | doc "use specified kill signal instead of default (ex. SIGTERM)"
            | optional,
          spawn
            | Bool
            | doc "force nodemon to use spawn (over fork) [node only]"
            | optional,
          stdin
            | Bool
            | doc "set to false to have nodemon pass stdin directly to child process"
            | optional,
          verbose
            | Bool
            | doc "show detail on what is causing restarts"
            | optional,
          watch
            | Array refs."definitions.pathPattern"
            | doc "Watch directory or file.  One entry per watched value.  Wildcards are allowed."
            | optional,
          ..
        }
      ]