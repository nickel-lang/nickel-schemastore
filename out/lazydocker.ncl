# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.color" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'strikethrough,
                        'underline,
                        'reverse,
                        '"default",
                        'bold,
                        'white,
                        'cyan,
                        'magenta,
                        'blue,
                        'yellow,
                        'green,
                        'red,
                        'black
                      |]
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "^#[0-9a-fA-F]{6}$",
                      { _ | Dyn },
                      Array Dyn
                    ]
                ],
              String
            ],
    }
    in
  {
      commandTemplates
        | {
          allLogs
            | String
            | doc m%"
              An all logs command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          checkDockerComposeConfig
            | String
            | doc m%"
              A check docker compose config command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          dockerCompose
            | String
            | doc m%"
              A docker compose command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          dockerComposeConfig
            | String
            | doc m%"
              A docker compose config command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          down
            | String
            | doc m%"
              A down command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          downWithVolumes
            | String
            | doc m%"
              A down with volumes command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          rebuildService
            | String
            | doc m%"
              A rebuild service command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          recreateService
            | String
            | doc m%"
              A recreate service command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          restartService
            | String
            | doc m%"
              A restart service command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          serviceLogs
            | String
            | doc m%"
              A service logs command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          serviceTop
            | String
            | doc m%"
              A service top command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          startService
            | String
            | doc m%"
              A start service command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          stopService
            | String
            | doc m%"
              A stop service command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          up
            | String
            | doc m%"
              An up command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          upService
            | String
            | doc m%"
              An up service command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          viewAlLogs
            | String
            | doc m%"
              A view al logs command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          viewServiceLogs
            | String
            | doc m%"
              A view service logs command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          ..
        }
        | doc m%"
          Command templates
          https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
        "%
        | optional,
      customCommands
        | {
          containers
            | js2n.array.UniqueItems
            | Array
              {
                attach
                  | Bool
                  | doc m%"
                    Whether to attach
                    https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
                  "%
                  | optional,
                command
                  | String
                  | doc m%"
                    A command
                    https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
                  "%
                  | optional,
                name
                  | String
                  | doc m%"
                    A name
                    https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
                  "%
                  | optional,
                serviceNames
                  | js2n.array.UniqueItems
                  | Array String
                  | doc m%"
                    Service names
                    https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
                  "%
                  | optional,
                ..
              }
            | doc m%"
              Container settings
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          ..
        }
        | doc m%"
          Custom commands
          https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
        "%
        | optional,
      gui
        | {
          containerStatusHealthStyle
            | std.enum.TagOrString
            | [| 'icon, 'short, 'long |]
            | doc m%"
              A style of container status and it's health display
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          expandFocusedSidePanel
            | Bool
            | doc m%"
              Whether to expand focused side panel
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          language
            | std.enum.TagOrString
            | [| 'tr, 'de, 'nl, 'pl, 'en, 'auto |]
            | doc m%"
              A language
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          returnImmediately
            | Bool
            | doc m%"
              Whether to return immediately
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          screenMode
            | std.enum.TagOrString
            | [| 'fullscreen, 'half, 'normal |]
            | doc m%"
              A screen mode
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          scrollHeight
            | std.number.Integer
            | js2n.number.Minimum 1
            | doc m%"
              A scroll height
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          showBottomLine
            | Bool
            | doc m%"
              Whether to show bottom line
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          sidePanelWidth
            | js2n.number.Minimum 0
            | doc m%"
              A side panel ratio of screen's width
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          theme
            | {
              activeBorderColor
                | js2n.array.MinItems 1
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence [ refs."definitions.color", String ]
                )
                | doc m%"
                  An active border color
                  https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
                "%
                | optional,
              inactiveBorderColor
                | js2n.array.MinItems 1
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence [ refs."definitions.color", String ]
                )
                | doc m%"
                  An inactive border color
                  https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
                "%
                | optional,
              optionsTextColor
                | js2n.array.MinItems 1
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence [ refs."definitions.color", String ]
                )
                | doc m%"
                  An option text color
                  https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
                "%
                | optional,
              selectedLineBgColor
                | js2n.array.MinItems 1
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence [ refs."definitions.color", String ]
                )
                | doc m%"
                  A selected line background color
                  https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
                "%
                | optional,
              ..
            }
            | doc m%"
              Theme settings
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          wrapMainPanel
            | Bool
            | doc m%"
              Whether to wrap main panel
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          ..
        }
        | doc m%"
          UI settings
          https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
        "%
        | optional,
      logs
        | {
          since
            | String
            | doc m%"
              A start time
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          tail
            | std.contract.any_of
              [
                String,
                std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ]
              ]
            | doc m%"
              A last line count
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          timestamps
            | Bool
            | doc m%"
              Whether to show timestamps
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          ..
        }
        | doc m%"
          Log settings
          https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
        "%
        | optional,
      os
        | {
          openCommand
            | String
            | doc m%"
              An open command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          openLinkCommand
            | String
            | doc m%"
              An open link command
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          ..
        }
        | doc m%"
          OS settings
          https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
        "%
        | optional,
      replacements
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "." =
                    js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = { "." = String, },
                          properties = {},
                          required = {},
                        },
                },
            properties = {},
            required = {},
          }
        | doc m%"
          Replacement settings
          https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
        "%
        | optional,
      stats
        | {
          graphs
            | Array
              {
                caption
                  | String
                  | doc m%"
                    A caption
                    https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
                  "%
                  | optional,
                color
                  | refs."definitions.color"
                  | String
                  | doc m%"
                    A color
                    https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
                  "%
                  | optional,
                statPath
                  | String
                  | doc m%"
                    A path
                    https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
                  "%
                  | optional,
                ..
              }
            | doc m%"
              Graph settings
              https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
            "%
            | optional,
          ..
        }
        | doc m%"
          Statistic settings
          https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md#default
        "%
        | optional,
      ..
    }