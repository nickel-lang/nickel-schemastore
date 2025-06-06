# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.command_info" =
        {
            command | String | optional,
            continue_if_failed | Bool | optional,
            cwd | std.enum.TagOrString | [| 'workspace, 'root |] | optional,
            ..
          },
      "definitions.enum_flavors" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'terraform,
                'swift,
                'security,
                'salesforce,
                'rust,
                'ruby,
                'python,
                'php,
                'javascript,
                'java,
                'go,
                'formatters,
                'dotnetweb,
                'dotnet,
                'documentation,
                'cupcake,
                'ci_light,
                'c_cpp,
                'all,
                'all_flavors
              |]
            ],
      "definitions.linter_command_info" =
        std.contract.Sequence
            [
              refs."definitions.command_info",
              {
                run_after_linters | Bool | optional,
                run_before_linters | Bool | optional,
                ..
              }
            ],
    }
    in
  {
      active_only_if_file_found
        | Array String
        | doc "Names of the config files to be found (at least one), else descriptor will be deactivated. Search in workspace, linter rules path, and files_sub_directory"
        | optional,
      descriptor_flavors
        | Array refs."definitions.enum_flavors"
        | doc "MegaLinter flavors matching this descriptor"
        | optional,
      descriptor_flavors_exclude
        | Array refs."definitions.enum_flavors"
        | doc "MegaLinter flavors that must not contain this descriptor"
        | optional,
      descriptor_id
        | String
        | doc "Uppercase unique identifier for the language, tooling format or identifier",
      descriptor_label
        | String
        | doc "Label for descriptor documentation, if different from Id. Ex: C++ for CPP"
        | optional,
      descriptor_type
        | std.enum.TagOrString
        | [| 'other, 'tooling_format, 'format, 'language |]
        | doc "Descriptor type: language, format or tooling format",
      file_contains_regex
        | Array String
        | doc "Regular expression list for filtering files by their content"
        | optional,
      file_contains_regex_extensions
        | Array String
        | doc "If file_contains_regex is set, use this property to filter extensions of the files that will be checked"
        | optional,
      file_extensions
        | Array String
        | doc "File extension filters. Empty list excludes all files. Can be overridden at linter level"
        | optional,
      file_names_not_ends_with
        | Array String
        | doc "List of strings to filter the files according to their end of file name"
        | optional,
      file_names_regex
        | Array String
        | doc "Regular expression list for filtering files by their base names using regex full match. Empty list includes all files. Can be overridden at linter level"
        | optional,
      files_sub_directory
        | String
        | doc "Set when a linter only lints a sub-directory"
        | optional,
      install
        | {
          apk
            | Array String
            | doc "APK packages identifiers (with or without version)"
            | optional,
          cargo
            | Array String
            | doc "Cargo packages identifiers (with or without version)"
            | optional,
          dockerfile
            | Array String
            | doc "Will be automatically integrated in generated Dockerfile"
            | optional,
          gem
            | Array String
            | doc "GEM packages identifiers (with or without version)"
            | optional,
          npm
            | Array String
            | doc "NPM packages identifiers (with or without version)"
            | optional,
          pip
            | Array String
            | doc "PIP packages identifiers (with or without version)"
            | optional,
          ..
        }
        | doc "List of apk, dockerfile instructions, npm/pip/gem packages required to use the descriptor linters"
        | optional,
      lint_all_files
        | Bool
        | doc "If set to true, this descriptor linters will always lint all files, undepending their name/extensions/content"
        | optional,
      lint_all_other_linters_files
        | Bool
        | doc "If set to true, this descriptor linters will lint one by one all files collected by all other linters"
        | optional,
      linters
        | Array
          {
            activation_rules
              | Array ({ _ | Dyn })
              | doc "List of rules to check to activate linter"
              | optional,
            active_only_if_file_found
              | Array String
              | doc "Names of the config files to be found (at least one), else descriptor will be deactivated"
              | optional,
            can_output_sarif
              | Bool
              | doc "Shows if the linter is capable of output SARIF report within MegaLinter"
              | optional,
            class
              | String
              | doc "If MegaLinter core is not enough, use a custom class inheriting from Linter class"
              | optional,
            cli_config_arg_name | String | optional,
            cli_config_default_value | String | optional,
            cli_config_extra_args
              | Array String
              | doc "When a configuration file is used with the linter CLI, send these additional arguments"
              | optional,
            cli_docker_args
              | Array String
              | doc "Arguments for docker run before image name"
              | optional,
            cli_docker_image | String | optional,
            cli_docker_image_version
              | String
              | doc "Version of the docker image to use for linting"
              | optional,
            cli_executable
              | String
              | doc "Override if different from linter_name"
              | optional,
            cli_executable_help
              | String
              | doc "Override if different from cli executable used for linting"
              | optional,
            cli_executable_version
              | String
              | doc "Override if different from cli executable used for linting"
              | optional,
            cli_help_arg_name | String | optional,
            cli_help_extra_args
              | Array String
              | doc "When linter CLI is call for help, send these additional arguments"
              | optional,
            cli_help_extra_commands
              | Array String
              | doc "When linter CLI is call for help, send these additional commands"
              | optional,
            cli_lint_errors_count
              | std.enum.TagOrString
              | [|
                'sarif,
                'total_lines,
                'regex_sum,
                'regex_count,
                'regex_number
              |]
              | doc "Defines how to count errors from log file. regex_number, regex_count, regex_sum, or total_lines"
              | optional,
            cli_lint_errors_regex
              | String
              | doc "Regex allowing to extract the number of errors from linter output logs"
              | optional,
            cli_lint_extra_args
              | Array String
              | doc "When linter CLI is call for linting, send these additional arguments before config args"
              | optional,
            cli_lint_extra_args_after
              | Array String
              | doc "When linter CLI is call for linting, send these additional arguments after config args"
              | optional,
            cli_lint_fix_arg_name | String | optional,
            cli_lint_fix_remove_args
              | Array String
              | doc "When linter CLI is call for fixing, remove these arguments"
              | optional,
            cli_lint_ignore_arg_name
              | String
              | doc "If the linter can use an ignore file, input here the related argument"
              | optional,
            cli_lint_mode
              | std.enum.TagOrString
              | [| 'list_of_files, 'project, 'file |]
              | doc "Defines how the linter is called: file,  list_of_files, project"
              | optional,
            cli_lint_warnings_count
              | std.enum.TagOrString
              | [| 'total_lines, 'regex_sum, 'regex_count, 'regex_number |]
              | doc "Defines how to count warnings from log file. regex_number, regex_count, regex_sum, or total_lines"
              | optional,
            cli_lint_warnings_regex
              | String
              | doc "Regex allowing to extract the number of warnings from linter output logs"
              | optional,
            cli_sarif_args
              | Array String
              | doc "Arguments to generate SARIF output"
              | optional,
            cli_version_arg_name | String | optional,
            cli_version_extra_args
              | Array String
              | doc "When linter CLI is call for version, send these additional arguments"
              | optional,
            config_file_name
              | String
              | doc "An explanation about the purpose of this instance."
              | optional,
            deprecated
              | Bool
              | doc "Shows if the linter is deprecated."
              | optional,
            deprecated_description
              | String
              | doc "Displays information on why it is deprecated and whether an alternative is available."
              | optional,
            descriptor_flavors
              | Array refs."definitions.enum_flavors"
              | doc "MegaLinter flavors matching this linter"
              | optional,
            descriptor_flavors_exclude
              | Array refs."definitions.enum_flavors"
              | doc "MegaLinter flavors that must not contain this descriptor"
              | optional,
            disabled
              | Bool
              | doc "Disable linter in MegaLinter next builds"
              | optional,
            disabled_reason
              | String
              | doc "Explanation about why the linter is disabled"
              | optional,
            downgraded_reason
              | String
              | doc "Explanation about why the linter is downgraded"
              | optional,
            downgraded_version
              | Bool
              | doc "Indicates that installation instructions does not use the latest release of the linter"
              | optional,
            examples
              | Array String
              | doc "Please add an example with and without configuration file in the command. They will appear in documentation",
            file_extensions
              | Array String
              | doc "File extension filters if different from the ones defined on parent descriptor"
              | optional,
            file_names_not_ends_with
              | Array String
              | doc "List of strings to filter the files according to their end of file name"
              | optional,
            file_names_regex
              | Array String
              | doc "Regular expression list for filtering files by their base names using regex full match. Empty list includes all files. Can be overridden at linter level"
              | optional,
            files_sub_directory
              | String
              | doc "Set when a linter only lints a sub-directory"
              | optional,
            help_command_return_code | Number | optional,
            ide
              | { _ | Dyn }
              | doc "List of IDE supporting the linter"
              | optional,
            ignore_file_name
              | String
              | doc "An explanation about the purpose of this instance."
              | optional,
            ignore_for_flavor_suggestions
              | Bool
              | doc "If this property is set to true, this linter will be ignored for flavor suggestions"
              | optional,
            install
              | {
                apk
                  | Array String
                  | doc "APK packages identifiers (with or without version)"
                  | optional,
                cargo
                  | Array String
                  | doc "Cargo packages identifiers (with or without version)"
                  | optional,
                dockerfile
                  | Array String
                  | doc "Will be automatically integrated in generated Dockerfile"
                  | optional,
                gem
                  | Array String
                  | doc "GEM packages identifiers (with or without version)"
                  | optional,
                npm
                  | Array String
                  | doc "NPM packages identifiers (with or without version)"
                  | optional,
                pip
                  | Array String
                  | doc "PIP packages identifiers (with or without version)"
                  | optional,
                ..
              }
              | doc "List of apk, dockerfile instructions, npm/pip/gem packages required to install the linter"
              | optional,
            is_formatter
              | Bool
              | doc "If the linter is just a formatter, set to true so errors will count as warnings"
              | optional,
            is_sbom
              | Bool
              | doc "If the linter is SBOM, set to true so extra properties will be returned"
              | optional,
            lint_all_files
              | Bool
              | doc "If set to true, this linter will always lint all files, undepending their name/extensions/content"
              | optional,
            lint_all_other_linters_files
              | Bool
              | doc "If set to true, this descriptor linters will lint one by one all files collected by all other linters"
              | optional,
            linter_banner_image_url
              | String
              | doc "URL of an image used to build header of linter Markdown documentation"
              | optional,
            linter_help_cache
              | String
              | doc "If the linter is unable to return help content, hardcode it here"
              | optional,
            linter_icon_png_url
              | String
              | doc "URL of a PNG image representing the icon of the linter"
              | optional,
            linter_image_url
              | String
              | doc "URL of an image used in linter Markdown documentation"
              | optional,
            linter_megalinter_ref_url
              | String
              | doc "URL to linter documentation referring to MegaLinter"
              | optional,
            linter_name
              | String
              | doc "Name of the linter (same as cli command if possible)",
            linter_repo
              | String
              | doc "URL of the linter repository home page"
              | optional,
            linter_rules_configuration_url
              | String
              | doc "URL to linter documentation explaining how to configure the linter"
              | optional,
            linter_rules_ignore_config_url
              | String
              | doc "URL to linter documentation explaining how to ignore files"
              | optional,
            linter_rules_inline_disable_url
              | String
              | doc "URL to linter documentation explaining how to disable rules directly with comments in files"
              | optional,
            linter_rules_url
              | String
              | doc "URL to linter documentation listing all the rules that can be detected"
              | optional,
            linter_spdx_license
              | String
              | doc "spdx license id of the linter"
              | optional,
            linter_speed
              | js2n.Enum [ 1, 2, 3, 4, 5 ]
              | doc "Average speed of the linter (performances indicator). For 1 (very slow) to 5 (very fast)"
              | optional,
            linter_text | String | optional,
            linter_url | String | doc "URL of the linter home page",
            linter_version_cache
              | String
              | doc "If the linter is unable to return a version number, hardcode it here"
              | optional,
            name
              | String
              | doc "When several linters in a descriptor, set a different name that will be used for configuration"
              | optional,
            post_commands
              | Array (
                std.contract.Sequence
                  [ refs."definitions.linter_command_info", { _ | Dyn } ]
              )
              | doc "Custom bash commands to run after linter"
              | optional,
            pre_commands
              | Array (
                std.contract.Sequence
                  [ refs."definitions.linter_command_info", { _ | Dyn } ]
              )
              | doc "Custom bash commands to run before linter"
              | optional,
            sarif_default_output_file
              | String
              | doc "Path to find default SARIF output file when generated by linter"
              | optional,
            test_folder
              | String
              | doc "Test folder containing _good_ and _bad_ files, if different from parent descriptor test_folder"
              | optional,
            test_format_fix_file_extensions
              | Array String
              | doc "Format / Fix test file extension filters."
              | optional,
            test_format_fix_regex_exclude
              | String
              | doc "Format / Fix test exclusions"
              | optional,
            test_variables
              | { _ | Dyn }
              | doc "List of variables to set before running tests"
              | optional,
            variables
              | Array Dyn
              | doc "Try to not use this property except if you really have no choice"
              | optional,
            version_command_return_code | Number | optional,
            version_extract_regex
              | String
              | doc "If default regex to extract version from linter -v call, override it here"
              | optional,
          }
        | doc "List of linter definitions associated to the descriptor",
      processing_order
        | Number
        | doc "If descriptor linters may be slow, put a negative processing order. If it is fast, put a positive one. If you don't know, do not set"
        | optional,
      test_folder
        | String
        | doc "Test folder containing _good_ and _bad_ files. Default: lowercase(descriptor_id)"
        | optional,
    }