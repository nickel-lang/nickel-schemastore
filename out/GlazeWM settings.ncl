# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.background-property" =
        std.contract.Sequence [ refs."definitions.color", String ],
      "definitions.binding" =
        std.contract.Sequence
            [
              std.contract.not
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    js2n.string.Matches "^\\s+$",
                    { _ | Dyn },
                    Array Dyn
                  ]),
              String
            ],
      "definitions.bindings" =
        std.contract.Sequence
            [
              js2n.array.MinItems 2,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence [ refs."definitions.binding", String ]
              )
            ],
      "definitions.border-color-property" =
        std.contract.Sequence [ refs."definitions.color", String ],
      "definitions.border-width-property" =
        std.contract.Sequence
            [
              js2n.string.MinLength 1,
              std.contract.not refs."definitions.invalid-shorthand-property"
            ],
      "definitions.color" = js2n.string.Matches "^\\S+$",
      "definitions.command" =
        std.contract.Sequence
            [
              js2n.string.MinLength 1,
              std.contract.not refs."definitions.invalid-shorthand-property"
            ],
      "definitions.commands" =
        std.contract.Sequence
            [
              js2n.array.MinItems 2,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence [ refs."definitions.command", String ]
              )
            ],
      "definitions.component.background-property" =
        std.contract.Sequence
            [ refs."definitions.background-property", String ],
      "definitions.component.border-color-property" =
        std.contract.Sequence
            [ refs."definitions.border-color-property", String ],
      "definitions.component.border-width-property" =
        std.contract.Sequence
            [ refs."definitions.border-width-property", String ],
      "definitions.component.font-family-property" =
        std.contract.Sequence
            [ refs."definitions.font-family-property", String ],
      "definitions.component.font-size-property" =
        std.contract.Sequence [ refs."definitions.font-size-property", String ],
      "definitions.component.font-weight-property" =
        std.contract.Sequence
            [ refs."definitions.font-weight-property", Number ],
      "definitions.component.foreground-property" =
        std.contract.Sequence
            [ refs."definitions.foreground-property", String ],
      "definitions.component.margin-property" =
        std.contract.Sequence
            [
              js2n.string.MinLength 1,
              std.contract.not refs."definitions.invalid-shorthand-property"
            ],
      "definitions.component.opacity-property" =
        std.contract.Sequence [ refs."definitions.opacity-property", Number ],
      "definitions.component.padding-property" =
        std.contract.Sequence [ refs."definitions.padding-property", String ],
      "definitions.component.type-property" =
        std.contract.Sequence
            [ js2n.string.MinLength 1, js2n.string.Matches "\\S" ],
      "definitions.components" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              { _ | Dyn },
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.Sequence
                      [
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties = { type = js2n.Const "clock", },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                background
                                  | refs."definitions.component.background-property"
                                  | String
                                  | optional,
                                border_color
                                  | refs."definitions.component.border-color-property"
                                  | String
                                  | optional,
                                border_width
                                  | refs."definitions.component.border-width-property"
                                  | String
                                  | optional,
                                font_family
                                  | refs."definitions.component.font-family-property"
                                  | String
                                  | optional,
                                font_size
                                  | refs."definitions.component.font-size-property"
                                  | String
                                  | optional,
                                font_weight
                                  | refs."definitions.component.font-weight-property"
                                  | Number
                                  | optional,
                                foreground
                                  | refs."definitions.component.foreground-property"
                                  | String
                                  | optional,
                                margin
                                  | refs."definitions.component.margin-property"
                                  | String
                                  | optional,
                                opacity
                                  | refs."definitions.component.opacity-property"
                                  | Number
                                  | optional,
                                padding
                                  | refs."definitions.component.padding-property"
                                  | String
                                  | optional,
                                time_formatting
                                  | String
                                  | doc m%"
                                    A time formatting of the 'Clock' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-clock
                                  "%
                                  | optional,
                                type
                                  | refs."definitions.component.type-property"
                                  | String
                                  | optional,
                              },
                              Array Dyn
                            ]) js2n.Always,
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties = { type = js2n.Const "battery", },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                background
                                  | refs."definitions.component.background-property"
                                  | String
                                  | optional,
                                border_color
                                  | refs."definitions.component.border-color-property"
                                  | String
                                  | optional,
                                border_width
                                  | refs."definitions.component.border-width-property"
                                  | String
                                  | optional,
                                font_family
                                  | refs."definitions.component.font-family-property"
                                  | String
                                  | optional,
                                font_size
                                  | refs."definitions.component.font-size-property"
                                  | String
                                  | optional,
                                font_weight
                                  | refs."definitions.component.font-weight-property"
                                  | Number
                                  | optional,
                                foreground
                                  | refs."definitions.component.foreground-property"
                                  | String
                                  | optional,
                                label_charging
                                  | String
                                  | doc m%"
                                    A charging label of the 'Battery' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-battery
                                  "%
                                  | optional,
                                label_draining
                                  | String
                                  | doc m%"
                                    A draining label of the 'Battery' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-battery
                                  "%
                                  | optional,
                                label_power_saver
                                  | String
                                  | doc m%"
                                    A power saver label of the 'Battery' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-battery
                                  "%
                                  | optional,
                                margin
                                  | refs."definitions.component.margin-property"
                                  | String
                                  | optional,
                                opacity
                                  | refs."definitions.component.opacity-property"
                                  | Number
                                  | optional,
                                padding
                                  | refs."definitions.component.padding-property"
                                  | String
                                  | optional,
                                type
                                  | refs."definitions.component.type-property"
                                  | String
                                  | optional,
                              },
                              Array Dyn
                            ]) js2n.Always,
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties = { type = js2n.Const "cpu", },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                background
                                  | refs."definitions.component.background-property"
                                  | String
                                  | optional,
                                border_color
                                  | refs."definitions.component.border-color-property"
                                  | String
                                  | optional,
                                border_width
                                  | refs."definitions.component.border-width-property"
                                  | String
                                  | optional,
                                font_family
                                  | refs."definitions.component.font-family-property"
                                  | String
                                  | optional,
                                font_size
                                  | refs."definitions.component.font-size-property"
                                  | String
                                  | optional,
                                font_weight
                                  | refs."definitions.component.font-weight-property"
                                  | Number
                                  | optional,
                                foreground
                                  | refs."definitions.component.foreground-property"
                                  | String
                                  | optional,
                                label
                                  | String
                                  | doc m%"
                                    A label for the 'CPU Usage' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-cpu-usage
                                  "%
                                  | optional,
                                margin
                                  | refs."definitions.component.margin-property"
                                  | String
                                  | optional,
                                opacity
                                  | refs."definitions.component.opacity-property"
                                  | Number
                                  | optional,
                                padding
                                  | refs."definitions.component.padding-property"
                                  | String
                                  | optional,
                                refresh_interval_ms
                                  | std.number.Integer
                                  | js2n.number.Minimum 0
                                  | doc m%"
                                    A refresh interval for the 'CPU Usage' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-cpu-usage
                                  "%
                                  | optional,
                                type
                                  | refs."definitions.component.type-property"
                                  | String
                                  | optional,
                              },
                              Array Dyn
                            ]) js2n.Always,
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties = { type = js2n.Const "gpu", },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                background
                                  | refs."definitions.component.background-property"
                                  | String
                                  | optional,
                                border_color
                                  | refs."definitions.component.border-color-property"
                                  | String
                                  | optional,
                                border_width
                                  | refs."definitions.component.border-width-property"
                                  | String
                                  | optional,
                                font_family
                                  | refs."definitions.component.font-family-property"
                                  | String
                                  | optional,
                                font_size
                                  | refs."definitions.component.font-size-property"
                                  | String
                                  | optional,
                                font_weight
                                  | refs."definitions.component.font-weight-property"
                                  | Number
                                  | optional,
                                foreground
                                  | refs."definitions.component.foreground-property"
                                  | String
                                  | optional,
                                label
                                  | String
                                  | doc m%"
                                    A label for the 'GPU Usage' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-gpu-usage
                                  "%
                                  | optional,
                                margin
                                  | refs."definitions.component.margin-property"
                                  | String
                                  | optional,
                                opacity
                                  | refs."definitions.component.opacity-property"
                                  | Number
                                  | optional,
                                padding
                                  | refs."definitions.component.padding-property"
                                  | String
                                  | optional,
                                refresh_interval_ms
                                  | std.number.Integer
                                  | js2n.number.Minimum 0
                                  | doc m%"
                                    A refresh interval for the 'GPU Usage' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-gpu-usage
                                  "%
                                  | optional,
                                type
                                  | refs."definitions.component.type-property"
                                  | String
                                  | optional,
                              },
                              Array Dyn
                            ]) js2n.Always,
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties = { type = js2n.Const "memory", },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                background
                                  | refs."definitions.component.background-property"
                                  | String
                                  | optional,
                                border_color
                                  | refs."definitions.component.border-color-property"
                                  | String
                                  | optional,
                                border_width
                                  | refs."definitions.component.border-width-property"
                                  | String
                                  | optional,
                                font_family
                                  | refs."definitions.component.font-family-property"
                                  | String
                                  | optional,
                                font_size
                                  | refs."definitions.component.font-size-property"
                                  | String
                                  | optional,
                                font_weight
                                  | refs."definitions.component.font-weight-property"
                                  | Number
                                  | optional,
                                foreground
                                  | refs."definitions.component.foreground-property"
                                  | String
                                  | optional,
                                label
                                  | String
                                  | doc m%"
                                    A label for the 'Memory Usage' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-memory-usage
                                  "%
                                  | optional,
                                margin
                                  | refs."definitions.component.margin-property"
                                  | String
                                  | optional,
                                opacity
                                  | refs."definitions.component.opacity-property"
                                  | Number
                                  | optional,
                                padding
                                  | refs."definitions.component.padding-property"
                                  | String
                                  | optional,
                                refresh_interval_ms
                                  | std.number.Integer
                                  | js2n.number.Minimum 0
                                  | doc m%"
                                    A refresh interval for the 'Memory Usage' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-memory-usage
                                  "%
                                  | optional,
                                type
                                  | refs."definitions.component.type-property"
                                  | String
                                  | optional,
                              },
                              Array Dyn
                            ]) js2n.Always,
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties = { type = js2n.Const "network", },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                background
                                  | refs."definitions.component.background-property"
                                  | String
                                  | optional,
                                border_color
                                  | refs."definitions.component.border-color-property"
                                  | String
                                  | optional,
                                border_width
                                  | refs."definitions.component.border-width-property"
                                  | String
                                  | optional,
                                font_family
                                  | refs."definitions.component.font-family-property"
                                  | String
                                  | optional,
                                font_size
                                  | refs."definitions.component.font-size-property"
                                  | String
                                  | optional,
                                font_weight
                                  | refs."definitions.component.font-weight-property"
                                  | Number
                                  | optional,
                                foreground
                                  | refs."definitions.component.foreground-property"
                                  | String
                                  | optional,
                                label_ethernet
                                  | String
                                  | doc m%"
                                    An ethernet label for the 'Network' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-network
                                  "%
                                  | optional,
                                label_no_internet
                                  | String
                                  | doc m%"
                                    A label for the 'Network' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-network
                                  "%
                                  | optional,
                                label_wifi_strength_0
                                  | String
                                  | doc m%"
                                    A 0% strength WiFi label for the 'Network' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-network
                                  "%
                                  | optional,
                                label_wifi_strength_100
                                  | String
                                  | doc m%"
                                    A 100% strength WiFi label for the 'Network' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-network
                                  "%
                                  | optional,
                                label_wifi_strength_25
                                  | String
                                  | doc m%"
                                    A 25% strength WiFi label for the 'Network' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-network
                                  "%
                                  | optional,
                                label_wifi_strength_50
                                  | String
                                  | doc m%"
                                    A 50% strength WiFi label for the 'Network' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-network
                                  "%
                                  | optional,
                                label_wifi_strength_75
                                  | String
                                  | doc m%"
                                    A 75% strength WiFi label for the 'Network' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-network
                                  "%
                                  | optional,
                                margin
                                  | refs."definitions.component.margin-property"
                                  | String
                                  | optional,
                                opacity
                                  | refs."definitions.component.opacity-property"
                                  | Number
                                  | optional,
                                padding
                                  | refs."definitions.component.padding-property"
                                  | String
                                  | optional,
                                type
                                  | refs."definitions.component.type-property"
                                  | String
                                  | optional,
                              },
                              Array Dyn
                            ]) js2n.Always,
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties = { type = js2n.Const "volume", },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                background
                                  | refs."definitions.component.background-property"
                                  | String
                                  | optional,
                                border_color
                                  | refs."definitions.component.border-color-property"
                                  | String
                                  | optional,
                                border_width
                                  | refs."definitions.component.border-width-property"
                                  | String
                                  | optional,
                                font_family
                                  | refs."definitions.component.font-family-property"
                                  | String
                                  | optional,
                                font_size
                                  | refs."definitions.component.font-size-property"
                                  | String
                                  | optional,
                                font_weight
                                  | refs."definitions.component.font-weight-property"
                                  | Number
                                  | optional,
                                foreground
                                  | refs."definitions.component.foreground-property"
                                  | String
                                  | optional,
                                label_high
                                  | String
                                  | doc m%"
                                    A high volume label for the 'Volume' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-volume
                                  "%
                                  | optional,
                                label_low
                                  | String
                                  | doc m%"
                                    A low volume label for the 'Volume' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-volume
                                  "%
                                  | optional,
                                label_medium
                                  | String
                                  | doc m%"
                                    A medium volume label for the 'Volume' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-volume
                                  "%
                                  | optional,
                                label_mute
                                  | String
                                  | doc m%"
                                    A no volume label for the 'Volume' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-volume
                                  "%
                                  | optional,
                                margin
                                  | refs."definitions.component.margin-property"
                                  | String
                                  | optional,
                                opacity
                                  | refs."definitions.component.opacity-property"
                                  | Number
                                  | optional,
                                padding
                                  | refs."definitions.component.padding-property"
                                  | String
                                  | optional,
                                type
                                  | refs."definitions.component.type-property"
                                  | String
                                  | optional,
                              },
                              Array Dyn
                            ]) js2n.Always,
                        js2n.IfThenElse
                          (std.contract.any_of
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
                                    { type = js2n.Const "text file", },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                background
                                  | refs."definitions.component.background-property"
                                  | String
                                  | optional,
                                border_color
                                  | refs."definitions.component.border-color-property"
                                  | String
                                  | optional,
                                border_width
                                  | refs."definitions.component.border-width-property"
                                  | String
                                  | optional,
                                file_path
                                  | js2n.string.MinLength 1
                                  | doc m%"
                                    A file path for the 'Text File' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-text-file
                                  "%
                                  | optional,
                                font_family
                                  | refs."definitions.component.font-family-property"
                                  | String
                                  | optional,
                                font_size
                                  | refs."definitions.component.font-size-property"
                                  | String
                                  | optional,
                                font_weight
                                  | refs."definitions.component.font-weight-property"
                                  | Number
                                  | optional,
                                foreground
                                  | refs."definitions.component.foreground-property"
                                  | String
                                  | optional,
                                margin
                                  | refs."definitions.component.margin-property"
                                  | String
                                  | optional,
                                opacity
                                  | refs."definitions.component.opacity-property"
                                  | Number
                                  | optional,
                                padding
                                  | refs."definitions.component.padding-property"
                                  | String
                                  | optional,
                                type
                                  | refs."definitions.component.type-property"
                                  | String
                                  | optional,
                              },
                              Array Dyn
                            ]) js2n.Always,
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties = { type = js2n.Const "weather", },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                background
                                  | refs."definitions.component.background-property"
                                  | String
                                  | optional,
                                border_color
                                  | refs."definitions.component.border-color-property"
                                  | String
                                  | optional,
                                border_width
                                  | refs."definitions.component.border-width-property"
                                  | String
                                  | optional,
                                font_family
                                  | refs."definitions.component.font-family-property"
                                  | String
                                  | optional,
                                font_size
                                  | refs."definitions.component.font-size-property"
                                  | String
                                  | optional,
                                font_weight
                                  | refs."definitions.component.font-weight-property"
                                  | Number
                                  | optional,
                                foreground
                                  | refs."definitions.component.foreground-property"
                                  | String
                                  | optional,
                                label
                                  | String
                                  | doc m%"
                                    A label for the 'Weather' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-weather
                                  "%
                                  | optional,
                                label_cloud
                                  | String
                                  | doc m%"
                                    A cloud label for the 'Weather' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-weather
                                  "%
                                  | optional,
                                label_cloud_moon
                                  | String
                                  | doc m%"
                                    A cloud moon label for the 'Weather' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-weather
                                  "%
                                  | optional,
                                label_cloud_moon_rain
                                  | String
                                  | doc m%"
                                    A cloud moon rain label for the 'Weather' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-weather
                                  "%
                                  | optional,
                                label_cloud_rain
                                  | String
                                  | doc m%"
                                    A cloud rain label for the 'Weather' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-weather
                                  "%
                                  | optional,
                                label_cloud_sun
                                  | String
                                  | doc m%"
                                    A cloud sun label for the 'Weather' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-weather
                                  "%
                                  | optional,
                                label_cloud_sun_rain
                                  | String
                                  | doc m%"
                                    A cloud sun rain label for the 'Weather' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-weather
                                  "%
                                  | optional,
                                label_moon
                                  | String
                                  | doc m%"
                                    A moon label for the 'Weather' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-weather
                                  "%
                                  | optional,
                                label_snow_flake
                                  | String
                                  | doc m%"
                                    A snow flake label for the 'Weather' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-weather
                                  "%
                                  | optional,
                                label_sun
                                  | String
                                  | doc m%"
                                    A sun label for the 'Weather' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-weather
                                  "%
                                  | optional,
                                label_thunderstorm
                                  | String
                                  | doc m%"
                                    A thunderstorm label for the 'Weather' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-weather
                                  "%
                                  | optional,
                                latitude
                                  | js2n.number.Maximum 90
                                  | js2n.number.Minimum (-90)
                                  | doc m%"
                                    A latitude for the 'Weather' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-weather
                                  "%
                                  | optional,
                                longitude
                                  | js2n.number.Maximum 180
                                  | js2n.number.Minimum (-180)
                                  | doc m%"
                                    A longitude for the 'Weather' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-weather
                                  "%
                                  | optional,
                                margin
                                  | refs."definitions.component.margin-property"
                                  | String
                                  | optional,
                                opacity
                                  | refs."definitions.component.opacity-property"
                                  | Number
                                  | optional,
                                padding
                                  | refs."definitions.component.padding-property"
                                  | String
                                  | optional,
                                type
                                  | refs."definitions.component.type-property"
                                  | String
                                  | optional,
                              },
                              Array Dyn
                            ]) js2n.Always,
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties = { type = js2n.Const "image", },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                background
                                  | refs."definitions.component.background-property"
                                  | String
                                  | optional,
                                border_color
                                  | refs."definitions.component.border-color-property"
                                  | String
                                  | optional,
                                border_width
                                  | refs."definitions.component.border-width-property"
                                  | String
                                  | optional,
                                font_family
                                  | refs."definitions.component.font-family-property"
                                  | String
                                  | optional,
                                font_size
                                  | refs."definitions.component.font-size-property"
                                  | String
                                  | optional,
                                font_weight
                                  | refs."definitions.component.font-weight-property"
                                  | Number
                                  | optional,
                                foreground
                                  | refs."definitions.component.foreground-property"
                                  | String
                                  | optional,
                                margin
                                  | refs."definitions.component.margin-property"
                                  | String
                                  | optional,
                                opacity
                                  | refs."definitions.component.opacity-property"
                                  | Number
                                  | optional,
                                padding
                                  | refs."definitions.component.padding-property"
                                  | String
                                  | optional,
                                source
                                  | js2n.string.MinLength 1
                                  | doc m%"
                                    A source path for the 'Image' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-image
                                  "%
                                  | optional,
                                type
                                  | refs."definitions.component.type-property"
                                  | String
                                  | optional,
                              },
                              Array Dyn
                            ]) js2n.Always,
                        js2n.IfThenElse
                          (std.contract.any_of
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
                                    { type = js2n.Const "system tray", },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                background
                                  | refs."definitions.component.background-property"
                                  | String
                                  | optional,
                                border_color
                                  | refs."definitions.component.border-color-property"
                                  | String
                                  | optional,
                                border_width
                                  | refs."definitions.component.border-width-property"
                                  | String
                                  | optional,
                                font_family
                                  | refs."definitions.component.font-family-property"
                                  | String
                                  | optional,
                                font_size
                                  | refs."definitions.component.font-size-property"
                                  | String
                                  | optional,
                                font_weight
                                  | refs."definitions.component.font-weight-property"
                                  | Number
                                  | optional,
                                foreground
                                  | refs."definitions.component.foreground-property"
                                  | String
                                  | optional,
                                label_collapse_text
                                  | String
                                  | doc m%"
                                    An collapse label for the 'System Tray' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-system-tray
                                  "%
                                  | optional,
                                label_expand_text
                                  | String
                                  | doc m%"
                                    An expand label for the 'System Tray' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-system-tray
                                  "%
                                  | optional,
                                margin
                                  | refs."definitions.component.margin-property"
                                  | String
                                  | optional,
                                opacity
                                  | refs."definitions.component.opacity-property"
                                  | Number
                                  | optional,
                                padding
                                  | refs."definitions.component.padding-property"
                                  | String
                                  | optional,
                                type
                                  | refs."definitions.component.type-property"
                                  | String
                                  | optional,
                              },
                              Array Dyn
                            ]) js2n.Always,
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties = { type = js2n.Const "music", },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                background
                                  | refs."definitions.component.background-property"
                                  | String
                                  | optional,
                                border_color
                                  | refs."definitions.component.border-color-property"
                                  | String
                                  | optional,
                                border_width
                                  | refs."definitions.component.border-width-property"
                                  | String
                                  | optional,
                                font_family
                                  | refs."definitions.component.font-family-property"
                                  | String
                                  | optional,
                                font_size
                                  | refs."definitions.component.font-size-property"
                                  | String
                                  | optional,
                                font_weight
                                  | refs."definitions.component.font-weight-property"
                                  | Number
                                  | optional,
                                foreground
                                  | refs."definitions.component.foreground-property"
                                  | String
                                  | optional,
                                label_not_playing
                                  | String
                                  | doc m%"
                                    A not playing label for the 'Music' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-music
                                  "%
                                  | optional,
                                label_paused
                                  | String
                                  | doc m%"
                                    A paused label for the 'Music' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-music
                                  "%
                                  | optional,
                                label_playing
                                  | String
                                  | doc m%"
                                    A playing label for the 'Music' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-music
                                  "%
                                  | optional,
                                margin
                                  | refs."definitions.component.margin-property"
                                  | String
                                  | optional,
                                max_artist_length
                                  | std.number.Integer
                                  | js2n.number.Minimum 0
                                  | doc m%"
                                    A maximum artist length for the 'Music' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-music
                                  "%
                                  | optional,
                                max_title_length
                                  | std.number.Integer
                                  | js2n.number.Minimum 0
                                  | doc m%"
                                    A maximum title length for the 'Music' component
                                    https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-component-music
                                  "%
                                  | optional,
                                opacity
                                  | refs."definitions.component.opacity-property"
                                  | Number
                                  | optional,
                                padding
                                  | refs."definitions.component.padding-property"
                                  | String
                                  | optional,
                                type
                                  | refs."definitions.component.type-property"
                                  | String
                                  | optional,
                              },
                              Array Dyn
                            ]) js2n.Always,
                        {
                          background
                            | refs."definitions.component.background-property"
                            | String
                            | optional,
                          border_color
                            | refs."definitions.component.border-color-property"
                            | String
                            | optional,
                          border_width
                            | refs."definitions.component.border-width-property"
                            | String
                            | optional,
                          font_family
                            | refs."definitions.component.font-family-property"
                            | String
                            | optional,
                          font_size
                            | refs."definitions.component.font-size-property"
                            | String
                            | optional,
                          font_weight
                            | refs."definitions.component.font-weight-property"
                            | Number
                            | optional,
                          foreground
                            | refs."definitions.component.foreground-property"
                            | String
                            | optional,
                          margin
                            | refs."definitions.component.margin-property"
                            | String
                            | optional,
                          opacity
                            | refs."definitions.component.opacity-property"
                            | Number
                            | optional,
                          padding
                            | refs."definitions.component.padding-property"
                            | String
                            | optional,
                          type
                            | refs."definitions.component.type-property"
                            | String
                            | optional,
                          ..
                        }
                      ]
                  )
                ]
            ],
      "definitions.font-family-property" =
        std.contract.Sequence
            [
              js2n.string.MinLength 1,
              js2n.string.Matches "^\\S+(\\s+\\S+)*$"
            ],
      "definitions.font-size-property" =
        std.contract.Sequence [ refs."definitions.length", String ],
      "definitions.font-weight-property" =
        std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 0 ],
      "definitions.foreground-property" =
        std.contract.Sequence [ refs."definitions.color", String ],
      "definitions.invalid-shorthand-property" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              js2n.string.Matches "^\\s+$|\\spx\\s|\\spx$|^px",
              { _ | Dyn },
              Array Dyn
            ],
      "definitions.length" = js2n.string.Matches "^\\d+px$",
      "definitions.opacity-property" =
        std.contract.Sequence [ js2n.number.Maximum 1, js2n.number.Minimum 0 ],
      "definitions.padding-property" =
        std.contract.Sequence
            [
              js2n.string.MinLength 1,
              std.contract.not refs."definitions.invalid-shorthand-property"
            ],
    }
    in
  {
      bar
        | {
          always_on_top
            | Bool
            | doc m%"
              Whether to keep the bar above other windows
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
          background
            | refs."definitions.background-property"
            | String
            | doc m%"
              A background of the bar
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
          border_color
            | refs."definitions.border-color-property"
            | String
            | doc m%"
              A border color of the bar
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
          border_radius
            | std.number.Integer
            | doc m%"
              A border radius of the bar
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
          border_width
            | refs."definitions.border-width-property"
            | String
            | doc m%"
              A border width of the bar
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
          components_center
            | refs."definitions.components"
            | doc m%"
              Center component settings
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
          components_left
            | refs."definitions.components"
            | doc m%"
              Left component settings
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
          components_right
            | refs."definitions.components"
            | doc m%"
              Right component settings
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
          enabled
            | Bool
            | doc m%"
              Whether to enable the bar
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
          font_family
            | refs."definitions.font-family-property"
            | String
            | doc m%"
              A font family of the bar
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
          font_size
            | refs."definitions.font-size-property"
            | String
            | doc m%"
              A font size of the bar
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
          font_weight
            | refs."definitions.font-weight-property"
            | Number
            | doc m%"
              A font weight of the bar
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
          foreground
            | refs."definitions.foreground-property"
            | String
            | doc m%"
              A foreground of the bar
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
          height
            | refs."definitions.length"
            | doc m%"
              A height of the bar
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
          offset_x
            | std.number.Integer
            | doc m%"
              A horizontal offset of the bar
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
          offset_y
            | std.number.Integer
            | doc m%"
              A vertical offset of the bar
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
          opacity
            | refs."definitions.opacity-property"
            | Number
            | doc m%"
              An opacity of the bar
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
          padding
            | js2n.string.MinLength 1
            | std.contract.not refs."definitions.invalid-shorthand-property"
            | doc m%"
              A padding of the bar
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
          position
            | std.enum.TagOrString
            | [| 'bottom, 'top |]
            | doc m%"
              A position of the bar
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
            "%
            | optional,
        }
        | doc m%"
          Bar settings
          https://github.com/glzr-io/glazewm?tab=readme-ov-file#bar-configuration
        "%
        | optional,
      focus_borders
        | {
          active
            | {
              color
                | refs."definitions.color"
                | doc m%"
                  A color of the active border
                  https://github.com/glzr-io/glazewm?tab=readme-ov-file#focus-window-border-configuration
                "%
                | optional,
              enabled
                | Bool
                | doc m%"
                  Whether to enable the active border
                  https://github.com/glzr-io/glazewm?tab=readme-ov-file#focus-window-border-configuration
                "%
                | optional,
            }
            | doc m%"
              An active border
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#focus-window-border-configuration
            "%
            | optional,
          inactive
            | {
              color
                | refs."definitions.color"
                | doc m%"
                  A color of the active border
                  https://github.com/glzr-io/glazewm?tab=readme-ov-file#focus-window-border-configuration
                "%
                | optional,
              enabled
                | Bool
                | doc m%"
                  Whether to enable the inactive border
                  https://github.com/glzr-io/glazewm?tab=readme-ov-file#focus-window-border-configuration
                "%
                | optional,
            }
            | doc m%"
              An inactive border
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#focus-window-border-configuration
            "%
            | optional,
        }
        | doc m%"
          Focus settings
          https://github.com/glzr-io/glazewm?tab=readme-ov-file#focus-window-border-configuration
        "%
        | optional,
      gaps
        | {
          inner_gap
            | js2n.string.MinLength 1
            | std.contract.not refs."definitions.invalid-shorthand-property"
            | doc m%"
              An inner gap
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#gap-configuration
            "%
            | optional,
          outer_gap
            | js2n.string.MinLength 1
            | std.contract.not refs."definitions.invalid-shorthand-property"
            | doc m%"
              An outer gap
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#gap-configuration
            "%
            | optional,
        }
        | doc m%"
          Gap settings
          https://github.com/glzr-io/glazewm?tab=readme-ov-file#gap-configuration
        "%
        | optional,
      general
        | {
          center_new_floating_windows
            | Bool
            | doc m%"
              Whether to center new floating windows
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#general
            "%
            | optional,
          cursor_follows_focus
            | Bool
            | doc m%"
              Whether to jump the cursor between windows focused by the WM
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#general
            "%
            | optional,
          floating_window_move_amount
            | js2n.string.MinLength 2
            | js2n.string.Matches "^\\d+%$"
            | doc m%"
              An amount to move floating windows by
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#general
            "%
            | optional,
          focus_follows_cursor
            | Bool
            | doc m%"
              Whether to automatically focus windows underneath the cursor
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#general
            "%
            | optional,
          show_floating_on_top
            | Bool
            | doc m%"
              Whether to show floating windows as always on top
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#general
            "%
            | optional,
          toggle_workspace_on_refocus
            | Bool
            | doc m%"
              Whether to switch back and forth between the previously focused workspace when focusing the current workspace
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#general
            "%
            | optional,
          window_animations
            | std.contract.any_of [ Bool, std.contract.Equal "unchanged" ]
            | doc m%"
              Whether to enable window transition animations
              https://github.com/glzr-io/glazewm?tab=readme-ov-file#general
            "%
            | optional,
        }
        | doc m%"
          General settings
          https://github.com/glzr-io/glazewm?tab=readme-ov-file#general
        "%
        | optional,
      keybindings
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array (
          std.contract.Sequence
            [
              js2n.record.MaxProperties 2,
              js2n.record.MinProperties 2,
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                binding =
                                  std.contract.Sequence
                                      [ refs."definitions.binding", String ],
                                command =
                                  std.contract.Sequence
                                      [ refs."definitions.command", String ],
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                bindings =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.bindings",
                                        Array Dyn
                                      ],
                                command =
                                  std.contract.Sequence
                                      [ refs."definitions.command", String ],
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                binding =
                                  std.contract.Sequence
                                      [ refs."definitions.binding", String ],
                                commands =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.commands",
                                        Array Dyn
                                      ],
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                bindings =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.bindings",
                                        Array Dyn
                                      ],
                                commands =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.commands",
                                        Array Dyn
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
            ]
        )
        | doc m%"
          Keybindings
          https://github.com/glzr-io/glazewm?tab=readme-ov-file#keybindings
        "%
        | optional,
      window_rules
        | js2n.array.UniqueItems
        | Array
          {
            command | refs."definitions.command" | String | optional,
            match_class_name
              | js2n.string.MinLength 1
              | doc m%"
                A class name to match
                https://github.com/glzr-io/glazewm?tab=readme-ov-file#window-rules
              "%
              | optional,
            match_process_name
              | js2n.string.MinLength 1
              | doc m%"
                A process name to match
                https://github.com/glzr-io/glazewm?tab=readme-ov-file#window-rules
              "%
              | optional,
            match_title
              | js2n.string.MinLength 1
              | doc m%"
                A window title to match
                https://github.com/glzr-io/glazewm?tab=readme-ov-file#window-rules
              "%
              | optional,
          }
        | doc m%"
          Windows rule settings
          https://github.com/glzr-io/glazewm?tab=readme-ov-file#window-rules
        "%
        | optional,
      workspaces
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array
          {
            bind_to_monitor
              | Bool
              | doc m%"
                Whether to bind the workspace to a specific monitor
                https://github.com/glzr-io/glazewm?tab=readme-ov-file#workspaces-configuration
              "%
              | optional,
            display_name
              | js2n.string.MinLength 1
              | js2n.string.Matches "\\S"
              | doc m%"
                A display name of the workspace
                https://github.com/glzr-io/glazewm?tab=readme-ov-file#workspaces-configuration
              "%
              | optional,
            keep_alive
              | Bool
              | doc m%"
                Whether not to destroy the workspace when it's empty
                https://github.com/glzr-io/glazewm?tab=readme-ov-file#workspaces-configuration
              "%
              | optional,
            name
              | js2n.string.MinLength 1
              | js2n.string.Matches "\\S"
              | doc m%"
                A unique name of the workspace
                https://github.com/glzr-io/glazewm?tab=readme-ov-file#workspaces-configuration
              "%
              | optional,
          }
        | doc m%"
          Workspace settings
          https://github.com/glzr-io/glazewm?tab=readme-ov-file#workspaces-configuration
        "%
        | optional,
      ..
    }