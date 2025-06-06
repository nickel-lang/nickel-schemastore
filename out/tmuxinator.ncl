# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      attach
        | Bool
        | doc "Controls whether the tmux session should be attached to automatically. Defaults to true."
        | optional,
      cli_args | String | doc "Pass arguments to tmux (deprecated)" | optional,
      defaults | { _ | Dyn } | optional,
      enable_pane_titles
        | Bool
        | doc "Enables the display of pane titles."
        | optional,
      name | std.contract.any_of [ Number, js2n.string.MinLength 1 ] | optional,
      on_project_exit
        | std.contract.any_of [ String, Array String ]
        | doc "Run on project exit (detaching from tmux session)."
        | optional,
      on_project_first_start
        | std.contract.any_of [ String, Array String ]
        | doc "Run on project start, the first time."
        | optional,
      on_project_restart
        | std.contract.any_of [ String, Array String ]
        | doc "Run on project start, after the first time."
        | optional,
      on_project_start
        | std.contract.any_of [ String, Array String ]
        | doc "Runs on project start, always."
        | optional,
      on_project_stop
        | std.contract.any_of [ String, Array String ]
        | doc "Run on project stop."
        | optional,
      pane_title_format
        | String
        | doc "Configures pane title format."
        | optional,
      pane_title_position
        | String
        | doc "Configures pane title position."
        | optional,
      post | String | doc "Runs after everything (deprecated)." | optional,
      pre | String | doc "Runs before everything (deprecated)." | optional,
      pre_window
        | String
        | doc "Runs in each window and pane before window/pane specific commands. Useful for setting up interpreter versions."
        | optional,
      project_name
        | String
        | doc "Name of project root (deprecated, use `name`)"
        | optional,
      project_root
        | String
        | doc "Name of project root (deprecated, use `root`)"
        | optional,
      rbenv | String | doc "Specify version for rbenv (deprecated)" | optional,
      root | String | optional,
      socket_name | String | doc "Optional tmux socket." | optional,
      startup_pane
        | std.number.Integer
        | doc "Specifies (by index) which pane of the specified window will be selected on project startup. If not set, the first pane is used."
        | optional,
      startup_window
        | std.contract.any_of [ String, std.number.Integer ]
        | doc "Specifies (by name or index) which window will be selected on project startup. If not set, the first window is used."
        | optional,
      tabs
        | Array (std.contract.any_of [ { _ | Dyn }, String ])
        | doc "Specify tabs (deprecated)"
        | optional,
      tmux_command
        | String
        | doc "Change the command to call tmux.  This can be used by derivatives/wrappers like byobu."
        | optional,
      tmux_detached | Bool | doc "Deprecated. Use `attach`" | optional,
      tmux_options
        | String
        | doc "Pass command line options to tmux. Useful for specifying a different tmux.conf."
        | optional,
      windows
        | Array (
          std.contract.any_of
            [
              String,
              {
                layout
                  | String
                  | doc "The layout setting gets handed down to tmux directly, so you can choose from one of the five tmux standard layouts or specify your own."
                  | optional,
                panes
                  | Array (
                    std.contract.any_of
                      [
                        Number,
                        js2n.string.MinLength 1,
                        Array (
                          std.contract.any_of
                            [
                              String,
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns =
                                    {
                                        "." =
                                          std.contract.any_of
                                              [ String, Array String ],
                                      },
                                  properties = {},
                                  required = {},
                                }
                            ]
                        )
                      ]
                  )
                  | doc "Panes are optional and are children of window entries."
                  | optional,
                pre | Array String | optional,
                ..
              }
            ]
        )
        | optional,
    }