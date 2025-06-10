# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      CheckOptions
        | std.contract.any_of
          [
            {  .. },
            Array
              {
                key | String | optional,
                value
                  | std.contract.any_of [ js2n.Null, Bool, Number, String ]
                  | optional,
              }
          ]
        | optional,
      Checks
        | std.contract.any_of [ Array String, String ]
        | doc "Comma-separated list of globs with optional '-' prefix. Globs are processed in order of  appearance in the list. Globs without '-' prefix add checks with matching names to the set, globs with the '-' prefix remove checks with matching names from the set of enabled checks."
        | optional,
      ExcludeHeaderFilterRegex
        | String
        | doc "Regular expression matching the names of the headers to exclude diagnostics from. Diagnostics from the main file of each translation unit are always displayed. Must be used together with --header-filter. Can be used together with -line-filter."
        | optional,
      ExtraArgs
        | std.contract.any_of [ Array String, String ]
        | doc "Additional argument to append to the compiler command line"
        | optional,
      ExtraArgsBefore
        | std.contract.any_of [ Array String, String ]
        | doc "Additional argument to prepend to the compiler command line"
        | optional,
      FormatStyle
        | js2n.OneOf
          [
            std.contract.Sequence
              [
                std.enum.TagOrString,
                [| 'mozilla, 'webkit, 'google, 'llvm, 'file, 'none |]
              ],
            js2n.string.Matches "\\{.*\\}"
          ]
        | doc "Style for formatting code around applied fixes."
        | optional,
      HeaderFileExtensions
        | std.contract.any_of [ Array String, String ]
        | doc "File extensions to consider to determine if a given diagnostic is located in a header file."
        | optional,
      HeaderFilterRegex
        | String
        | doc "Regular expression matching the names of the headers to output diagnostics from. Diagnostics from the main file of each translation unit are always displayed. Can be used together with -line-filter."
        | optional,
      ImplementationFileExtensions
        | std.contract.any_of [ Array String, String ]
        | doc "File extensions to consider to determine if a given diagnostic is located in an implementation file."
        | optional,
      InheritParentConfig
        | Bool
        | doc "If this option is true in a config file, the configuration file in the parent directory (if any exists) will be taken and the current config file will be applied on top of the parent one."
        | optional,
      SystemHeaders
        | Bool
        | doc "Display the errors from system headers. This option overrides the 'SystemHeaders' option in .clang-tidy file, if any."
        | optional,
      UseColor
        | Bool
        | doc "Use colors in diagnostics. If not set, colors will be used if the terminal connected to standard output supports colors."
        | optional,
      User
        | String
        | doc "Specifies the name or e-mail of the user running clang-tidy. This option is used, for example, to place the correct user name in TODO() comments in the relevant checks."
        | optional,
      WarningsAsErrors | String | doc "Upgrades warnings to errors." | optional,
      ..
    }