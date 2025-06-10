# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.BatteryStyle" =
        {
            high_battery_color
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.ColorStr", String ])
              | doc "The colour of the battery widget bar when the battery is over 50%."
              | optional,
            low_battery_color
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.ColorStr", String ])
              | doc "The colour of the battery widget bar when the battery is under 10%."
              | optional,
            medium_battery_color
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.ColorStr", String ])
              | doc "The colour of the battery widget bar when the battery between 10% to 50%."
              | optional,
            ..
          },
      "definitions.ColorStr" = String,
      "definitions.CpuConfig" =
        { "default" | refs."definitions.CpuDefault" | String | optional, .. },
      "definitions.CpuDefault" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'average, 'all |] ],
      "definitions.CpuStyle" =
        {
            all_entry_color
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.ColorStr", String ])
              | doc "The colour of the \"All\" CPU label."
              | optional,
            avg_entry_color
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.ColorStr", String ])
              | doc "The colour of the average CPU label and graph line."
              | optional,
            cpu_core_colors
              | js2n.Nullable
                (Array (
                  std.contract.Sequence [ refs."definitions.ColorStr", String ]
                ))
              | doc "Colour of each CPU threads' label and graph line. Read in order."
              | optional,
            ..
          },
      "definitions.DiskConfig" =
        {
            mount_filter
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.IgnoreList", { _ | Dyn } ])
              | doc "A filter over the mount names."
              | optional,
            name_filter
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.IgnoreList", { _ | Dyn } ])
              | doc "A filter over the disk names."
              | optional,
            ..
          },
      "definitions.FinalWidget" =
        {
            "default" | js2n.Nullable Bool | optional,
            ratio
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | optional,
            type | String,
            ..
          },
      "definitions.FlagConfig" =
        {
            autohide_time | js2n.Nullable Bool | optional,
            basic | js2n.Nullable Bool | optional,
            battery | js2n.Nullable Bool | optional,
            case_sensitive | js2n.Nullable Bool | optional,
            cpu_left_legend | js2n.Nullable Bool | optional,
            current_usage | js2n.Nullable Bool | optional,
            default_time_value
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.StringOrNum",
                    std.contract.any_of [ Number, String ]
                  ])
              | optional,
            default_widget_count
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | optional,
            default_widget_type | js2n.Nullable String | optional,
            disable_advanced_kill | js2n.Nullable Bool | optional,
            disable_click | js2n.Nullable Bool | optional,
            dot_marker | js2n.Nullable Bool | optional,
            enable_cache_memory | js2n.Nullable Bool | optional,
            enable_gpu | js2n.Nullable Bool | optional,
            expanded | js2n.Nullable Bool | optional,
            group_processes | js2n.Nullable Bool | optional,
            hide_avg_cpu | js2n.Nullable Bool | optional,
            hide_table_gap | js2n.Nullable Bool | optional,
            hide_time | js2n.Nullable Bool | optional,
            memory_legend | js2n.Nullable String | optional,
            network_legend | js2n.Nullable String | optional,
            network_use_binary_prefix | js2n.Nullable Bool | optional,
            network_use_bytes | js2n.Nullable Bool | optional,
            network_use_log | js2n.Nullable Bool | optional,
            no_write | js2n.Nullable Bool | optional,
            process_command | js2n.Nullable Bool | optional,
            process_memory_as_value | js2n.Nullable Bool | optional,
            rate
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.StringOrNum",
                    std.contract.any_of [ Number, String ]
                  ])
              | optional,
            regex | js2n.Nullable Bool | optional,
            retention
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.StringOrNum",
                    std.contract.any_of [ Number, String ]
                  ])
              | optional,
            show_table_scroll_position | js2n.Nullable Bool | optional,
            temperature_type | js2n.Nullable String | optional,
            time_delta
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.StringOrNum",
                    std.contract.any_of [ Number, String ]
                  ])
              | optional,
            tree | js2n.Nullable Bool | optional,
            unnormalized_cpu | js2n.Nullable Bool | optional,
            use_old_network_legend | js2n.Nullable Bool | optional,
            whole_word | js2n.Nullable Bool | optional,
            ..
          },
      "definitions.GraphStyle" =
        {
            graph_color
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.ColorStr", String ])
              | doc "The general colour of the parts of the graph."
              | optional,
            legend_text
              | js2n.Nullable refs."definitions.TextStyleConfig"
              | doc "Text styling for graph's legend text."
              | optional,
            ..
          },
      "definitions.IgnoreList" =
        {
            case_sensitive | Bool | optional,
            is_list_ignored | Bool | optional,
            list | Array String,
            regex | Bool | optional,
            whole_word | Bool | optional,
            ..
          },
      "definitions.MemoryStyle" =
        {
            arc_color
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.ColorStr", String ])
              | doc "The colour of the ARC label and graph line."
              | optional,
            cache_color
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.ColorStr", String ])
              | doc "The colour of the cache label and graph line. Does not do anything on Windows."
              | optional,
            gpu_colors
              | js2n.Nullable
                (Array (
                  std.contract.Sequence [ refs."definitions.ColorStr", String ]
                ))
              | doc "Colour of each GPU's memory label and graph line. Read in order."
              | optional,
            ram_color
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.ColorStr", String ])
              | doc "The colour of the RAM label and graph line."
              | optional,
            swap_color
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.ColorStr", String ])
              | doc "The colour of the swap label and graph line."
              | optional,
            ..
          },
      "definitions.NetworkConfig" =
        {
            interface_filter
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.IgnoreList", { _ | Dyn } ])
              | doc "A filter over the network interface names."
              | optional,
            ..
          },
      "definitions.NetworkStyle" =
        {
            rx_color
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.ColorStr", String ])
              | doc "The colour of the RX (download) label and graph line."
              | optional,
            rx_total_color
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.ColorStr", String ])
              | doc "he colour of the total RX (download) label in basic mode."
              | optional,
            tx_color
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.ColorStr", String ])
              | doc "The colour of the TX (upload) label and graph line."
              | optional,
            tx_total_color
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.ColorStr", String ])
              | doc "The colour of the total TX (upload) label in basic mode."
              | optional,
            ..
          },
      "definitions.ProcColumn" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                '"GPU%",
                '"GMem%",
                'GMem,
                'Time,
                'User,
                'State,
                'TRead,
                '"T.Write",
                'TWrite,
                '"T.Read",
                'Wps,
                'Write,
                '"W/s",
                'Rps,
                'Read,
                '"R/s",
                '"Mem%",
                'Mem,
                '"CPU%",
                'Command,
                'Name,
                'Count,
                'PID
              |]
            ],
      "definitions.ProcessesConfig" =
        {
            columns
              | Array (
                std.contract.Sequence [ refs."definitions.ProcColumn", String ]
              )
              | doc "A list of process widget columns."
              | optional,
            ..
          },
      "definitions.RowChildren" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.FinalWidget", { _ | Dyn } ],
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        child =
                          js2n.array.ArrayOf
                              (std.contract.Sequence
                                [
                                  refs."definitions.FinalWidget",
                                  { _ | Dyn }
                                ]),
                        ratio =
                          js2n.Nullable
                              (std.contract.Sequence
                                [ std.number.Integer, js2n.number.Minimum 0 ]),
                      },
                  required = { child = true, },
                }
            ],
      "definitions.StringOrNum" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ std.number.Integer, js2n.number.Minimum 0 ]
            ],
      "definitions.StyleConfig" =
        {
            battery
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.BatteryStyle", { _ | Dyn } ])
              | doc "Styling for the battery widget."
              | optional,
            cpu
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.CpuStyle", { _ | Dyn } ])
              | doc "Styling for the CPU widget."
              | optional,
            graphs
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.GraphStyle", { _ | Dyn } ])
              | doc "Styling for graph widgets."
              | optional,
            memory
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.MemoryStyle", { _ | Dyn } ])
              | doc "Styling for the memory widget."
              | optional,
            network
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.NetworkStyle", { _ | Dyn } ])
              | doc "Styling for the network widget."
              | optional,
            tables
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.TableStyle", { _ | Dyn } ])
              | doc "Styling for table widgets."
              | optional,
            theme
              | js2n.Nullable String
              | doc m%"
                A built-in theme.
                
                If this is and a custom colour are both set, in the config file, the custom colour scheme will be prioritized first. If a theme is set in the command-line args, however, it will always be prioritized first.
              "%
              | optional,
            widgets
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.WidgetStyle", { _ | Dyn } ])
              | doc "Styling for general widgets."
              | optional,
            ..
          },
      "definitions.TableStyle" =
        {
            headers
              | js2n.Nullable refs."definitions.TextStyleConfig"
              | doc "Text styling for table headers."
              | optional,
            ..
          },
      "definitions.TempConfig" =
        {
            sensor_filter
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.IgnoreList", { _ | Dyn } ])
              | doc "A filter over the sensor names."
              | optional,
            ..
          },
      "definitions.TextStyleConfig" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.ColorStr", String ],
              {
                bg_color
                  | js2n.Nullable
                    (std.contract.Sequence
                      [ refs."definitions.ColorStr", String ])
                  | doc "A built-in ANSI colour, RGB hex, or RGB colour code."
                  | optional,
                bold
                  | js2n.Nullable Bool
                  | doc "Whether to make this text bolded or not. If not set, will default to built-in defaults."
                  | optional,
                color
                  | js2n.Nullable
                    (std.contract.Sequence
                      [ refs."definitions.ColorStr", String ])
                  | doc "A built-in ANSI colour, RGB hex, or RGB colour code."
                  | optional,
                italics
                  | js2n.Nullable Bool
                  | doc "Whether to make this text italicized or not. If not set, will default to built-in defaults."
                  | optional,
                ..
              }
            ],
      "definitions.WidgetStyle" =
        {
            border_color
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.ColorStr", String ])
              | doc "The colour of the widgets' borders."
              | optional,
            disabled_text
              | js2n.Nullable refs."definitions.TextStyleConfig"
              | doc "Text styling for text when representing something that is disabled."
              | optional,
            selected_border_color
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.ColorStr", String ])
              | doc "The colour of a widget's borders when the widget is selected."
              | optional,
            selected_text
              | js2n.Nullable refs."definitions.TextStyleConfig"
              | doc "Text styling for text when representing something that is selected."
              | optional,
            text
              | js2n.Nullable refs."definitions.TextStyleConfig"
              | doc "Text styling for text in general."
              | optional,
            widget_title
              | js2n.Nullable refs."definitions.TextStyleConfig"
              | doc "Text styling for a widget's title."
              | optional,
            ..
          },
      "definitions.row" =
        {
            child
              | js2n.Nullable (Array refs."definitions.RowChildren")
              | optional,
            ratio
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | optional,
            ..
          },
    }
    in
  {
      cpu | js2n.Nullable refs."definitions.CpuConfig" | optional,
      disk | js2n.Nullable refs."definitions.DiskConfig" | optional,
      flags | js2n.Nullable refs."definitions.FlagConfig" | optional,
      network | js2n.Nullable refs."definitions.NetworkConfig" | optional,
      processes | js2n.Nullable refs."definitions.ProcessesConfig" | optional,
      row | js2n.Nullable (Array refs."definitions.row") | optional,
      styles | js2n.Nullable refs."definitions.StyleConfig" | optional,
      temperature | js2n.Nullable refs."definitions.TempConfig" | optional,
      ..
    }