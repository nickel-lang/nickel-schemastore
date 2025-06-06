# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      allowed
        | js2n.string.MinLength 1
        | doc m%"
          The string template for the list of allowed values
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      arguments
        | js2n.string.MinLength 1
        | doc m%"
          The caption for the argument section
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      command_alias
        | js2n.string.MinLength 1
        | doc m%"
          The string template for a command alias
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      commands
        | js2n.string.MinLength 1
        | doc m%"
          The caption for the command section
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      conflicting_flags
        | js2n.string.MinLength 1
        | doc m%"
          The error message template for conflicting flags
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      conflicts
        | js2n.string.MinLength 1
        | doc m%"
          The string template for the list of conflicting flags
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      "default"
        | js2n.string.MinLength 1
        | doc m%"
          The string template for a default argument or flag
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      default_command_summary
        | js2n.string.MinLength 1
        | doc m%"
          The string template for the summary of a default command
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      disallowed_argument
        | js2n.string.MinLength 1
        | doc m%"
          The error message template for forbidden argument
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      disallowed_environment_variable
        | js2n.string.MinLength 1
        | doc m%"
          The error message template for forbidden environment variable
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      disallowed_flag
        | js2n.string.MinLength 1
        | doc m%"
          The error message template for forbidden flag
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      environment_variable_validation_error
        | js2n.string.MinLength 1
        | doc m%"
          The error message template for failed custom validation for environment variables
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      environment_variables
        | js2n.string.MinLength 1
        | doc m%"
          The caption for the environment variables section
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      examples
        | js2n.string.MinLength 1
        | doc m%"
          The caption for the examples section
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      examples_caption_on_error
        | js2n.string.MinLength 1
        | doc m%"
          The string to show before the examples when show_examples_on_error is enabled
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      flag_needs_another
        | js2n.string.MinLength 1
        | doc m%"
          The error message template for missing flag needs
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      flag_requires_an_argument
        | js2n.string.MinLength 1
        | doc m%"
          The error message template for missing flag argument
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      global_options
        | js2n.string.MinLength 1
        | doc m%"
          The caption for the options section, when a command has flags and sub-commands
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      group
        | js2n.string.MinLength 1
        | doc m%"
          The caption template for custom command groups
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      help_flag_text
        | js2n.string.MinLength 1
        | doc m%"
          The help message for --help
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      invalid_argument
        | js2n.string.MinLength 1
        | doc m%"
          The error message template for invalid argument
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      invalid_command
        | js2n.string.MinLength 1
        | doc m%"
          The error message template for invalid command
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      invalid_flag
        | js2n.string.MinLength 1
        | doc m%"
          The error message template for invalid flag
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      missing_dependency
        | js2n.string.MinLength 1
        | doc m%"
          The error message template for missing dependency
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      missing_required_argument
        | js2n.string.MinLength 1
        | doc m%"
          The error message template for missing required argument
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      missing_required_environment_variable
        | js2n.string.MinLength 1
        | doc m%"
          The error message template for missing required environment variable
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      missing_required_flag
        | js2n.string.MinLength 1
        | doc m%"
          The error message template for missing required flag
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      needs
        | js2n.string.MinLength 1
        | doc m%"
          The string template for the list of needed flags
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      options
        | js2n.string.MinLength 1
        | doc m%"
          The caption for the options section
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      repeatable
        | js2n.string.MinLength 1
        | doc m%"
          The string suffix for repeatable arguments, flags, or commands
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      required
        | js2n.string.MinLength 1
        | doc m%"
          The string suffix for required arguments, flags, or commands
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      unsupported_bash_version
        | js2n.string.MinLength 1
        | doc m%"
          The error message for unsupported Bash version
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      usage
        | js2n.string.MinLength 1
        | doc m%"
          The caption for the usage patterns
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      validation_error
        | js2n.string.MinLength 1
        | doc m%"
          The error message template for failed custom validation
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
      version_flag_text
        | js2n.string.MinLength 1
        | doc m%"
          The help message for --version
          https://bashly.dev/advanced/strings/#custom-strings
        "%
        | optional,
    }