# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.c" = String,
      "definitions.keymap" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^<[^>]+>$" =
                      js2n.Nullable
                          {
                            c | refs."definitions.c" | String,
                            cmds
                              | Array { c | refs."definitions.c" | String, .. }
                              | doc "Commands to run when keybind is triggered."
                              | optional,
                            ..
                          },
                  },
              properties = { reset = Bool, },
              required = {},
            },
      "definitions.selectOperator" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^(windows|macos|linux|android|freebsd|openbsd|netbsd|dragonfly|solaris|illumos|ios)$" =
                      String,
                  },
              properties =
                { "$else" = String, "$select" = std.contract.Equal "os", },
              required = { "$select" = true, },
            },
    }
    in
  {
      hide_keymap_window
        | Bool
        | doc "Hide the pane at the bottom of the screen showing key bindings."
        | optional,
      keymap_copy
        | refs."definitions.keymap"
        | doc "Key bindings for copy mode."
        | optional,
      keymap_procs
        | refs."definitions.keymap"
        | doc "Key bindings for process list."
        | optional,
      keymap_term
        | refs."definitions.keymap"
        | doc "Key bindings for terminal window."
        | optional,
      mouse_scroll_speed
        | std.number.Integer
        | doc "Number of lines to scroll per one mouse scroll."
        | optional,
      proc_list_width
        | std.number.Integer
        | doc "Process list window width."
        | optional,
      procs
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "^[a-zA-Z0-9_-]+$" =
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
                                  js2n.record.Required [ "shell" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "cmd" ],
                                  Array Dyn
                                ]
                            ],
                          {
                            add_path
                              | std.contract.any_of
                                [
                                  String,
                                  Array String,
                                  refs."definitions.selectOperator"
                                ]
                              | doc "Add entries to the PATH environment variable."
                              | optional,
                            autorestart
                              | Bool
                              | doc "Restart process when it exits. Default: false. Note: If process exits within 1 second of starting, it will not be restarted."
                              | optional,
                            autostart
                              | Bool
                              | doc "Start process when mprocs starts. Default: true."
                              | optional,
                            cmd
                              | Array String
                              | doc "Array of command and args to run (exactly one of shell or cmd must be provided)."
                              | optional,
                            cwd
                              | String
                              | doc "Set working directory for the process. Prefix <CONFIG_DIR> will be replaced with the path of the directory where the config is located."
                              | optional,
                            env
                              | {
                                _ | std.contract.any_of
                                  [
                                    String,
                                    js2n.Null,
                                    refs."definitions.selectOperator"
                                  ]
                              }
                              | doc "Set env variables. Object keys are variable names. Assign variable to null, to clear variables inherited from parent process."
                              | optional,
                            shell
                              | std.contract.any_of
                                [ refs."definitions.selectOperator", String ]
                              | doc "Shell command to run (exactly one of shell or cmd must be provided)."
                              | optional,
                            stop
                              | std.contract.any_of
                                [
                                  std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [|
                                        'hard-kill,
                                        'SIGKILL,
                                        'SIGTERM,
                                        'SIGINT
                                      |]
                                    ],
                                  { send-keys | Array String, .. }
                                ]
                              | doc "A way to stop a process (using `x` key or when quitting mprocs)."
                              | optional,
                          }
                        ],
                },
            properties = {},
            required = {},
          }
        | doc "Processes to run. Only allowed in local config."
        | optional,
    }