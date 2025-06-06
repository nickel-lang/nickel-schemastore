# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      ai_anonymize_samples
        | js2n.Nullable Bool
        | doc "Anonymize samples"
        | optional,
      ai_auth_type | js2n.Nullable String | doc "AI auth type" | optional,
      ai_custom_context_window
        | js2n.Nullable String
        | doc "AI custom context window"
        | optional,
      ai_custom_endpoint
        | js2n.Nullable String
        | doc "AI custom endpoint"
        | optional,
      ai_extra_query_options
        | js2n.Nullable String
        | doc "AI extra query options"
        | optional,
      ai_model | js2n.Nullable String | doc "AI model" | optional,
      ai_prompt_full
        | js2n.Nullable String
        | doc "Prompt for full AI summary, put before the report details when sent to the provider"
        | optional,
      ai_prompt_short
        | js2n.Nullable String
        | doc "Prompt for short AI summary, put before the report details when sent to the provider"
        | optional,
      ai_provider
        | js2n.Nullable
          (std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'custom, 'aws_bedrock, 'anthropic, 'openai, 'seqera |]
            ])
        | doc "AI provider"
        | optional,
      ai_retries
        | js2n.Nullable std.number.Integer
        | doc "AI retries"
        | optional,
      ai_summary | js2n.Nullable Bool | doc "AI summary" | optional,
      ai_summary_full | js2n.Nullable Bool | doc "AI summary full" | optional,
      barplot_legend_on_bottom
        | js2n.Nullable Bool
        | doc "Place bar plot legend at the bottom (not recommended)"
        | optional,
      base_count_desc
        | js2n.Nullable String
        | doc "Base count description"
        | optional,
      base_count_multiplier
        | js2n.Nullable Number
        | doc "Base count multiplier"
        | optional,
      base_count_prefix
        | js2n.Nullable String
        | doc "Base count prefix"
        | optional,
      collapse_tables | js2n.Nullable Bool | doc "Collapse tables" | optional,
      custom_content
        | js2n.Nullable ({ _ | Dyn })
        | doc "Custom content"
        | optional,
      custom_css_files
        | js2n.Nullable (Array String)
        | doc "Custom CSS files to include"
        | optional,
      custom_logo
        | js2n.Nullable String
        | doc "Path to custom logo image"
        | optional,
      custom_logo_title
        | js2n.Nullable String
        | doc "Title for custom logo"
        | optional,
      custom_logo_url
        | js2n.Nullable String
        | doc "URL for custom logo"
        | optional,
      custom_plot_config
        | js2n.Nullable ({ _ | Dyn })
        | doc "Custom plot config"
        | optional,
      custom_table_header_config
        | js2n.Nullable ({ _ | Dyn })
        | doc "Custom table header config"
        | optional,
      data_dir_name
        | js2n.Nullable String
        | doc "Data directory name"
        | optional,
      data_dump_file
        | js2n.Nullable Bool
        | doc "Write data to a file"
        | optional,
      data_dump_file_write_raw
        | js2n.Nullable Bool
        | doc "Write raw data to a file"
        | optional,
      data_format
        | js2n.Nullable String
        | doc "Data format for output files"
        | optional,
      data_format_extensions
        | js2n.Nullable ({ _ | String })
        | doc "Data format extensions"
        | optional,
      decimalPoint_format
        | js2n.Nullable String
        | doc "Decimal point format"
        | optional,
      development | js2n.Nullable Bool | doc "Development" | optional,
      disable_version_detection
        | js2n.Nullable Bool
        | doc "Disable version detection"
        | optional,
      export_plot_formats
        | js2n.Nullable (Array String)
        | doc "Export plot formats"
        | optional,
      export_plots | js2n.Nullable Bool | doc "Export plots" | optional,
      export_plots_timeout
        | js2n.Nullable std.number.Integer
        | doc "Export plots timeout"
        | optional,
      extra_fn_clean_exts
        | js2n.Nullable
          (Array (
            std.contract.any_of
              [
                String,
                js2n.Null,
                Bool,
                { _ | Dyn },
                Array Dyn,
                Number,
                String
              ]
          ))
        | doc "Additional extensions to clean from sample names"
        | optional,
      extra_fn_clean_trim
        | js2n.Nullable (Array String)
        | doc "Additional strings to trim from start/end of sample names"
        | optional,
      file_list | js2n.Nullable Bool | doc "Create a file list" | optional,
      filesearch_file_shared
        | js2n.Nullable (Array String)
        | doc "Filesearch file shared"
        | optional,
      filesearch_lines_limit
        | js2n.Nullable std.number.Integer
        | doc "Filesearch lines limit"
        | optional,
      fn_clean_exts
        | js2n.Nullable
          (Array (
            std.contract.any_of
              [
                String,
                js2n.Null,
                Bool,
                { _ | Dyn },
                Array Dyn,
                Number,
                String
              ]
          ))
        | doc "Extensions to clean from sample names"
        | optional,
      fn_clean_sample_names
        | js2n.Nullable Bool
        | doc "Clean sample names"
        | optional,
      fn_clean_trim
        | js2n.Nullable (Array String)
        | doc "Strings to trim from start/end of sample names"
        | optional,
      fn_ignore_dirs
        | js2n.Nullable (Array String)
        | doc "Directories to ignore"
        | optional,
      fn_ignore_paths
        | js2n.Nullable (Array String)
        | doc "Paths to ignore"
        | optional,
      "force"
        | js2n.Nullable Bool
        | doc "Overwrite existing reports"
        | optional,
      general_stats_columns
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | doc "Configuration for general stats columns per module. Keys are module IDs."
        | optional,
      highlight_colors
        | js2n.Nullable (Array String)
        | doc "Colors to use for highlighting patterns"
        | optional,
      highlight_patterns
        | js2n.Nullable (Array String)
        | doc "Patterns for highlighting samples"
        | optional,
      highlight_regex
        | js2n.Nullable Bool
        | doc "Whether to use regex mode for highlighting"
        | optional,
      ignore_images | js2n.Nullable Bool | doc "Ignore images" | optional,
      ignore_symlinks | js2n.Nullable Bool | doc "Ignore symlinks" | optional,
      intro_text
        | js2n.Nullable String
        | doc "Report introduction text"
        | optional,
      lineplot_number_of_points_to_hide_markers
        | js2n.Nullable std.number.Integer
        | doc "Number of points to hide markers - sum of data points in all samples"
        | optional,
      lint | js2n.Nullable Bool | doc "Lint" | optional,
      log_filesize_limit
        | js2n.Nullable std.number.Integer
        | doc "Log filesize limit"
        | optional,
      long_read_count_desc
        | js2n.Nullable String
        | doc "Long read count description"
        | optional,
      long_read_count_multiplier
        | js2n.Nullable Number
        | doc "Long read count multiplier"
        | optional,
      long_read_count_prefix
        | js2n.Nullable String
        | doc "Long read count prefix"
        | optional,
      make_data_dir
        | js2n.Nullable Bool
        | doc "Create data directory"
        | optional,
      make_pdf | js2n.Nullable Bool | doc "Make PDF" | optional,
      make_report | js2n.Nullable Bool | doc "Make report" | optional,
      max_configurable_table_columns
        | js2n.Nullable std.number.Integer
        | doc "Maximum number of columns to show in tables"
        | optional,
      max_table_rows
        | js2n.Nullable std.number.Integer
        | doc "Maximum number of rows to show in tables"
        | optional,
      megaqc_access_token
        | js2n.Nullable String
        | doc "MegaQC access token"
        | optional,
      megaqc_timeout
        | js2n.Nullable std.number.Integer
        | doc "MegaQC timeout"
        | optional,
      megaqc_url
        | js2n.Nullable String
        | doc "MegaQC URL to upload to"
        | optional,
      no_ai | js2n.Nullable Bool | doc "Disable AI" | optional,
      no_ansi | js2n.Nullable Bool | doc "Disable ANSI output" | optional,
      no_version_check | js2n.Nullable Bool | doc "No version check" | optional,
      output_fn_name | js2n.Nullable String | doc "Output filename" | optional,
      pandoc_template | js2n.Nullable String | doc "Pandoc template" | optional,
      parquet_format
        | js2n.Nullable
          (std.contract.Sequence [ std.enum.TagOrString, [| 'wide, 'long |] ])
        | doc m%"
          Parquet table format. Long format has columns 'sample_name', 'metric_name' and 'val_raw', 
                  'val_raw_type', 'val_str'. To select values for a certain metric, you need to filter based on its name. In contrast, 
                  the wide format has columns named after metrics, prefixed with table name and optional namespace. It's easier to 
                  for analytics, however, might hit limits on the maximal number of columns in certain edge cases, as well as
                  have potential issues in case of mixed types (i.e. if some values are non-numeric, as Parquet requires a column 
                  to have a single type).
                  
        "%
        | optional,
      plots_defer_loading_numseries
        | js2n.Nullable std.number.Integer
        | doc "Number of series to defer loading - user will need to press button to render plot"
        | optional,
      plots_dir_name
        | js2n.Nullable String
        | doc "Plots directory name"
        | optional,
      plots_export_font_scale
        | js2n.Nullable Number
        | doc "Font scale for exported plots"
        | optional,
      plots_flat_numseries
        | js2n.Nullable std.number.Integer
        | doc "Number of series to show in flat plots"
        | optional,
      plots_force_flat
        | js2n.Nullable Bool
        | doc "Force static plot images"
        | optional,
      plots_force_interactive
        | js2n.Nullable Bool
        | doc "Force interactive plots"
        | optional,
      prepend_dirs
        | js2n.Nullable Bool
        | doc "Prepend directories to sample names"
        | optional,
      prepend_dirs_depth
        | js2n.Nullable std.number.Integer
        | doc "Depth to prepend directories"
        | optional,
      prepend_dirs_sep
        | js2n.Nullable String
        | doc "Separator for prepended directories"
        | optional,
      profile_memory | js2n.Nullable Bool | doc "Profile memory" | optional,
      profile_runtime | js2n.Nullable Bool | doc "Profile runtime" | optional,
      quiet | js2n.Nullable Bool | doc "Quiet output" | optional,
      read_count_desc
        | js2n.Nullable String
        | doc "Read count description"
        | optional,
      read_count_multiplier
        | js2n.Nullable Number
        | doc "Read count multiplier"
        | optional,
      read_count_prefix
        | js2n.Nullable String
        | doc "Read count prefix"
        | optional,
      remove_sections
        | js2n.Nullable (Array String)
        | doc "Sections to remove"
        | optional,
      report_comment | js2n.Nullable String | doc "Report comment" | optional,
      report_header_info
        | js2n.Nullable (Array ({ _ | String }))
        | doc "Report header dictionary"
        | optional,
      report_readerrors
        | js2n.Nullable std.number.Integer
        | doc "Report read errors"
        | optional,
      require_logs
        | js2n.Nullable Bool
        | doc "Require logs for reports"
        | optional,
      sample_names_ignore
        | js2n.Nullable (Array String)
        | doc "Sample names to ignore"
        | optional,
      sample_names_ignore_re
        | js2n.Nullable (Array String)
        | doc "Sample names to ignore (regex)"
        | optional,
      sample_names_only_include
        | js2n.Nullable (Array String)
        | doc "Sample names to include"
        | optional,
      sample_names_only_include_re
        | js2n.Nullable (Array String)
        | doc "Sample names to include (regex)"
        | optional,
      sample_names_rename
        | js2n.Nullable (Array (Array String))
        | doc "Sample names to rename"
        | optional,
      sample_names_rename_buttons
        | js2n.Nullable (Array String)
        | doc "Sample names to rename"
        | optional,
      sample_names_replace
        | js2n.Nullable ({ _ | String })
        | doc "Sample names to replace"
        | optional,
      sample_names_replace_complete
        | js2n.Nullable Bool
        | doc "Sample names to replace (complete)"
        | optional,
      sample_names_replace_exact
        | js2n.Nullable Bool
        | doc "Sample names to replace (exact)"
        | optional,
      sample_names_replace_regex
        | js2n.Nullable Bool
        | doc "Sample names to replace (regex)"
        | optional,
      section_comments
        | js2n.Nullable ({ _ | String })
        | doc "Comments for sections"
        | optional,
      seqera_api_url | js2n.Nullable String | doc "Seqera API URL" | optional,
      seqera_website | js2n.Nullable String | doc "Seqera website" | optional,
      show_analysis_paths
        | js2n.Nullable Bool
        | doc "Show analysis paths in the report"
        | optional,
      show_analysis_time
        | js2n.Nullable Bool
        | doc "Show analysis time in the report"
        | optional,
      show_hide_buttons
        | js2n.Nullable (Array String)
        | doc "Show/hide buttons"
        | optional,
      show_hide_mode
        | js2n.Nullable (Array String)
        | doc "Show/hide mode"
        | optional,
      show_hide_patterns
        | js2n.Nullable (Array String)
        | doc "Show/hide patterns"
        | optional,
      show_hide_regex
        | js2n.Nullable (Array String)
        | doc "Show/hide regex"
        | optional,
      simple_output | js2n.Nullable Bool | doc "Simple output" | optional,
      skip_generalstats
        | js2n.Nullable Bool
        | doc "Skip generalstats"
        | optional,
      skip_versions_section
        | js2n.Nullable Bool
        | doc "Skip versions section"
        | optional,
      software_versions
        | js2n.Nullable ({ _ | Dyn })
        | doc "Software versions"
        | optional,
      sp
        | js2n.Nullable
          ({
            _ | std.contract.any_of
              [
                js2n.Null,
                Bool,
                { _ | Dyn },
                Array Dyn,
                Number,
                String,
                js2n.array.ArrayOf
                  (std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
              ]
          })
        | doc "Search patterns for finding tool outputs"
        | optional,
      strict | js2n.Nullable Bool | doc "Strict" | optional,
      subtitle | js2n.Nullable String | doc "Report subtitle" | optional,
      table_columns_name
        | js2n.Nullable ({ _ | std.contract.any_of [ String, { _ | String } ] })
        | doc "Name of columns in tables"
        | optional,
      table_columns_placement
        | js2n.Nullable ({ _ | { _ | Number } })
        | doc "Placement of columns in tables"
        | optional,
      table_columns_visible
        | js2n.Nullable ({ _ | std.contract.any_of [ Bool, { _ | Bool } ] })
        | doc "Which columns to show in tables"
        | optional,
      table_cond_formatting_colours
        | js2n.Nullable (Array ({ _ | String }))
        | doc "Colours to use for conditional formatting in tables"
        | optional,
      table_cond_formatting_rules
        | js2n.Nullable
          ({
            _ | {
              _ | Array (
                {
                  _ | std.contract.any_of [ String, std.number.Integer, Number ]
                }
              )
            }
          })
        | doc "Rules for conditional formatting in tables"
        | optional,
      template | js2n.Nullable String | doc "Report template to use" | optional,
      thousandsSep_format
        | js2n.Nullable String
        | doc "Thousands separator format"
        | optional,
      title | js2n.Nullable String | doc "Report title" | optional,
      use_filename_as_sample_name
        | js2n.Nullable Bool
        | doc "Use filename as sample name"
        | optional,
      verbose | js2n.Nullable Bool | doc "Verbose output" | optional,
      version_check_url
        | js2n.Nullable String
        | doc "Version check URL"
        | optional,
      versions_table_group_header
        | js2n.Nullable String
        | doc "Versions table group header"
        | optional,
      violin_downsample_after
        | js2n.Nullable std.number.Integer
        | doc "Downsample data for violin plot starting from this number os samples"
        | optional,
      violin_min_threshold_no_points
        | js2n.Nullable std.number.Integer
        | doc "For more than this number of samples, show no points"
        | optional,
      violin_min_threshold_outliers
        | js2n.Nullable std.number.Integer
        | doc "For more than this number of samples, show only outliers"
        | optional,
      zip_data_dir | js2n.Nullable Bool | doc "Zip data directory" | optional,
      ..
    }