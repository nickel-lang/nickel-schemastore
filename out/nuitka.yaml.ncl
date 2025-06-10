# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  Array
      {
        anti-bloat
          | Array
            {
              annotations
                | std.enum.TagOrString
                | [| 'no, 'yes, '"default" |]
                | optional,
              append_plain | String | optional,
              append_result | String | optional,
              asserts
                | std.enum.TagOrString
                | [| 'no, 'yes, '"default" |]
                | optional,
              bloat-mode-overrides | { _ | Dyn } | optional,
              change_class | { _ | Dyn } | optional,
              change_function | { _ | Dyn } | optional,
              context | Array String | optional,
              description | String | optional,
              doc_strings
                | std.enum.TagOrString
                | [| 'no, 'yes, '"default" |]
                | optional,
              global_change_function | { _ | Dyn } | optional,
              global_replacements | { _ | String } | optional,
              global_replacements_plain | { _ | String } | optional,
              global_replacements_re | { _ | String } | optional,
              module_code | String | optional,
              no-auto-follow | { _ | Dyn } | optional,
              no-follow | { _ | Dyn } | optional,
              replacements | { _ | String } | optional,
              replacements_plain | { _ | String } | optional,
              replacements_re | { _ | String } | optional,
              when | String | optional,
            }
          | optional,
        constants | { declarations | { _ | String } | optional, } | optional,
        data-files
          | Array
            {
              dest_path | String | optional,
              dirs | Array String | optional,
              empty_dir_structures | Array String | optional,
              empty_dirs | Array String | optional,
              include-metadata | Array String | optional,
              include-pyi-file
                | std.enum.TagOrString
                | [| 'no, 'yes |]
                | optional,
              patterns | Array String | optional,
              raw_dirs | Array String | optional,
              when | String | optional,
            }
          | optional,
        dlls
          | Array
            {
              by_code
                | {
                  executable
                    | std.enum.TagOrString
                    | [| 'no, 'yes |]
                    | optional,
                  filename_code | String | optional,
                  setup_code | String | optional,
                }
                | optional,
              dest_path | String | optional,
              from_filenames
                | {
                  executable
                    | std.enum.TagOrString
                    | [| 'no, 'yes |]
                    | optional,
                  prefixes | Array Dyn,
                  relative_path | String | optional,
                  suffixes
                    | Array (js2n.string.Matches "^[^.]\\w*$")
                    | optional,
                }
                | optional,
              from_sources
                | {
                  dest_names | Array String | optional,
                  source_paths | Array String,
                }
                | optional,
              when | String | optional,
            }
          | optional,
        implicit-imports
          | Array
            {
              depends | Array String | optional,
              post-import-code | Array String | optional,
              pre-import-code | Array String | optional,
              when | String | optional,
            }
          | optional,
        import-hacks
          | Array
            {
              acceptable-missing-dlls | Array String | optional,
              find-dlls-near-module | Array String | optional,
              force-environment-variables | { _ | String } | optional,
              global-sys-path | Array String | optional,
              overridden-environment-variables | { _ | String } | optional,
              package-dirs | Array String | optional,
              package-paths | Array String | optional,
              package-system-dlls
                | std.enum.TagOrString
                | [| 'no, 'yes |]
                | optional,
              when | String | optional,
            }
          | optional,
        module-name | js2n.string.Matches "^[A-Za-z0-9\\.\\_\\-]+$" | optional,
        options
          | {
            checks
              | Array
                {
                  description | String | optional,
                  macos_bundle
                    | std.enum.TagOrString
                    | [| 'recommend, 'no, 'yes |]
                    | optional,
                  macos_bundle_as_onefile
                    | std.enum.TagOrString
                    | [| 'no, 'yes |]
                    | optional,
                  support_info
                    | std.enum.TagOrString
                    | [| 'plugin, 'parameter, 'info, 'warning, 'error |]
                    | optional,
                  when | String | optional,
                }
              | optional,
          }
          | optional,
        parameters
          | Array
            { "default" | String | optional, name | String, values | String, }
          | optional,
        variables
          | {
            declarations | { _ | String } | optional,
            environment | { _ | String } | optional,
            setup_code | Array String | optional,
            when | String | optional,
          }
          | optional,
      }