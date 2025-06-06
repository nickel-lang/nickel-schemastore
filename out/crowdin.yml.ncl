# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      api_token | String | optional,
      api_token_env | String | optional,
      append_commit_message
        | Bool
        | doc "Replace the default commit message with the one specified in commit_message."
        | optional,
      base_path | String | optional,
      base_path_env | String | optional,
      base_url | String | optional,
      base_url_env | String | optional,
      commit_message | String | optional,
      export_languages
        | Array String
        | doc "Specify a list of specific languages to export."
        | optional,
      files
        | Array
          {
            content_segmentation
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc "Defines whether to split long texts into smaller text segments."
              | optional,
            dest | String | optional,
            escape_quotes
              | js2n.number.Maximum 3
              | js2n.number.Minimum 0
              | doc "Defines whether a single quote should be escaped by another single quote or backslash in exported translations."
              | optional,
            escape_special_characters
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc "Defines whether any special characters (=, :, ! and #) should be escaped by backslash in exported translations."
              | optional,
            excluded_target_languages | Array String | optional,
            export_only_approved | Bool | optional,
            first_line_contains_header | Bool | optional,
            ignore | Array String | optional,
            labels | Array String | optional,
            languages_mapping
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    android_code
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { _ | String },
                          Array Dyn
                        ]
                      | optional,
                    two_letters_code
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { _ | String },
                          Array Dyn
                        ]
                      | optional,
                    ..
                  },
                  Array Dyn
                ]
              | optional,
            scheme | String | optional,
            skip_untranslated_files | Bool | optional,
            skip_untranslated_strings | Bool | optional,
            source | String | optional,
            translatable_elements
              | Array String
              | doc "An array of strings, where each item is the XPaths to DOM element that should be imported. "
              | optional,
            translate_attributes
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc "Defines whether to translate tags' attributes."
              | optional,
            translate_content
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc "Defines whether to translate texts placed inside the tags."
              | optional,
            translation | String | optional,
            translation_replace
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | String }, Array Dyn ]
              | optional,
            type | String | optional,
            update_option
              | std.enum.TagOrString
              | [| 'update_without_changes, 'update_as_unapproved |]
              | optional,
            ..
          }
        | optional,
      preserve_hierarchy | Bool | optional,
      project_id | String | optional,
      project_id_env | String | optional,
      ..
    }