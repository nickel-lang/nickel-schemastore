# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      commands_dir
        | js2n.Nullable (js2n.string.MinLength 1)
        | doc m%"
          The path to use for command files, relative to source_dir
          https://bashly.dev/usage/settings/#commands_dir
        "%
        | optional,
      compact_short_flags
        | Bool
        | doc m%"
          Whether to expand -abc to -a -b -c in the input line
          https://bashly.dev/usage/settings/#compact_short_flags
        "%
        | optional,
      config_path
        | js2n.string.MinLength 1
        | doc m%"
          The path to bashly.yml
          https://bashly.dev/usage/settings/#config_path
        "%
        | optional,
      conjoined_flag_args
        | Bool
        | doc m%"
          Whether to expand --flag=value to --flag value in the input line
          https://bashly.dev/usage/settings/#conjoined_flag_args
        "%
        | optional,
      enable_bash3_bouncer
        | std.enum.TagOrString
        | [| 'never, 'always, 'production, 'development |]
        | doc m%"
          Whether to include the code snippet that aborts when an old version of bash is detected in the generated script
          https://bashly.dev/usage/settings/#enable_bash3_bouncer
        "%
        | optional,
      enable_deps_array
        | std.enum.TagOrString
        | [| 'never, 'always, 'production, 'development |]
        | doc m%"
          Whether to include the code for the dependencies array in the generated script
          https://bashly.dev/usage/settings/#enable_deps_array
        "%
        | optional,
      enable_env_var_names_array
        | std.enum.TagOrString
        | [| 'never, 'always, 'production, 'development |]
        | doc m%"
          Whether to include the code for the env_var_names array in the generated script
          https://bashly.dev/usage/settings/#enable_env_var_names_array
        "%
        | optional,
      enable_header_comment
        | std.enum.TagOrString
        | [| 'never, 'always, 'production, 'development |]
        | doc m%"
          Whether to include the header comment in the generated script
          https://bashly.dev/usage/settings/#enable_header_comment
        "%
        | optional,
      enable_inspect_args
        | std.enum.TagOrString
        | [| 'never, 'always, 'production, 'development |]
        | doc m%"
          Whether to include the inspect_args function in the generated script
          https://bashly.dev/usage/settings/#enable_inspect_args
        "%
        | optional,
      enable_sourcing
        | std.enum.TagOrString
        | [| 'never, 'always, 'production, 'development |]
        | doc m%"
          Whether to wrap the script execution in a condition that checks if the script is sourced
          https://bashly.dev/usage/settings/#enable_sourcing
        "%
        | optional,
      enable_view_markers
        | std.enum.TagOrString
        | [| 'never, 'always, 'production, 'development |]
        | doc m%"
          Whether to include view marker comments in the generated script
          https://bashly.dev/usage/settings/#enable_view_markers
        "%
        | optional,
      env
        | std.enum.TagOrString
        | [| 'production, 'development |]
        | doc m%"
          Whether to include development related comments in the generated script
          https://bashly.dev/usage/settings/#env
        "%
        | optional,
      function_names
        | {
          initialize
            | js2n.Nullable (js2n.string.MinLength 1)
            | doc m%"
              Name for the initialize() function
              https://bashly.dev/usage/settings/#function_names
            "%
            | optional,
          run
            | js2n.Nullable (js2n.string.MinLength 1)
            | doc m%"
              Name for the run() function
              https://bashly.dev/usage/settings/#function_names
            "%
            | optional,
        }
        | doc m%"
          Choose different names for some of the internal functions.
          https://bashly.dev/usage/settings/#function_names
        "%
        | optional,
      lib_dir
        | js2n.string.MinLength 1
        | doc m%"
          The path to use for common library files, relative to source_dir
          https://bashly.dev/usage/settings/#lib_dir
        "%
        | optional,
      partials_extension
        | js2n.string.MinLength 1
        | doc m%"
          The extension to use when reading/writing partial script snippets
          https://bashly.dev/usage/settings/#partials_extension
        "%
        | optional,
      private_reveal_key
        | js2n.Nullable (js2n.string.MinLength 1)
        | doc m%"
          The name of the environment variable (case sensitive) that, if set, will reveal private commands, flags and environment variables
          https://bashly.dev/usage/settings/#private_reveal_key
        "%
        | optional,
      show_examples_on_error
        | Bool
        | doc m%"
          Whether to show command examples when the input line is missing required arguments
          https://bashly.dev/usage/settings/#show_examples_on_error
        "%
        | optional,
      source_dir
        | js2n.string.MinLength 1
        | doc m%"
          The path containing the bashly source files
          https://bashly.dev/usage/settings/#source_dir
        "%
        | optional,
      strict
        | std.contract.any_of [ Bool, String ]
        | doc m%"
          Configure the bash options that will be added to the initialize function
          https://bashly.dev/usage/settings/#strict
        "%
        | optional,
      tab_indent
        | Bool
        | doc m%"
          Whether to use tabs or spaces in the generated script
          https://bashly.dev/usage/settings/#tab_indent
        "%
        | optional,
      target_dir
        | js2n.string.MinLength 1
        | doc m%"
          The path to use for creating the bash script
          https://bashly.dev/usage/settings/#target_dir
        "%
        | optional,
      usage_colors
        | {
          arg
            | js2n.Nullable String
            | doc m%"
              Color for positional arguments
              https://bashly.dev/usage/settings/#usage_colors
            "%
            | optional,
          caption
            | js2n.Nullable String
            | doc m%"
              Color for captions
              https://bashly.dev/usage/settings/#usage_colors
            "%
            | optional,
          command
            | js2n.Nullable String
            | doc m%"
              Color for commands
              https://bashly.dev/usage/settings/#usage_colors
            "%
            | optional,
          environment_variable
            | js2n.Nullable String
            | doc m%"
              Color for env environment variables
              https://bashly.dev/usage/settings/#usage_colors
            "%
            | optional,
          flag
            | js2n.Nullable String
            | doc m%"
              Color for flags
              https://bashly.dev/usage/settings/#usage_colors
            "%
            | optional,
        }
        | doc m%"
          Enable and configure colorful output for --help
          https://bashly.dev/usage/settings/#usage_colors
        "%
        | optional,
      var_aliases
        | {
          args
            | js2n.Nullable (js2n.string.MinLength 1)
            | doc m%"
              Alias name for the args array
              https://bashly.dev/usage/settings/#var_aliases
            "%
            | optional,
          deps
            | js2n.Nullable (js2n.string.MinLength 1)
            | doc m%"
              Alias name for the deps array
              https://bashly.dev/usage/settings/#var_aliases
            "%
            | optional,
          env_var_names
            | js2n.Nullable (js2n.string.MinLength 1)
            | doc m%"
              Alias name for the env_var_names array
              https://bashly.dev/usage/settings/#var_aliases
            "%
            | optional,
          other_args
            | js2n.Nullable (js2n.string.MinLength 1)
            | doc m%"
              Alias name for the other_args array (used when catch_all is enabled)
              https://bashly.dev/usage/settings/#var_aliases
            "%
            | optional,
        }
        | doc m%"
          Declare alias names for bashly's public global arrays
          https://bashly.dev/usage/settings/#var_aliases
        "%
        | optional,
    }