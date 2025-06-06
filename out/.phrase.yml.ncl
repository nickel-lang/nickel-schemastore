# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.encoding" = String,
      "definitions.file_format" = String,
      "definitions.format_options" =
        {
            column_separator
              | String
              | doc "Column separator character"
              | optional,
            ..
          },
      "definitions.locale_id" = String,
      "definitions.project_id" = String,
    }
    in
  std.contract.any_of
      [
        js2n.Null,
        Bool,
        Number,
        String,
        {
          phrase
            | {
              access_token
                | String
                | doc "Access Token for authorization. Can be created in the user profile"
                | optional,
              file_format | refs."definitions.file_format" | optional,
              host
                | String
                | doc "API URL. Set to https://api.us.app.phrase.com/v2 when using the US datacenter"
                | optional,
              project_id | refs."definitions.project_id" | optional,
              pull
                | {
                  targets
                    | js2n.array.MinItems 1
                    | Array
                      {
                        file
                          | String
                          | doc "Translation file which will be downloaded. You can either specify a single file or a pattern. The pattern can contain the following placeholders: <locale_name> for the locale name, <locale_code> for the locale code, and <tag>, which will go through the tag list and create a file for each tag. The placeholders will be replaced with the corresponding values."
                          | optional,
                        params
                          | {
                            branch | String | doc "Branch name" | optional,
                            convert_emoji
                              | Bool
                              | doc "Indicates whether Emoji symbols should be converted to actual Emojis"
                              | optional,
                            custom_metadata_filters
                              | { _ | Dyn }
                              | doc "Custom metadata filters. Provide the name of the metadata field and the value to filter by. Only keys with matching metadata will be included in the download"
                              | optional,
                            encoding | refs."definitions.encoding" | optional,
                            exclude_empty_zero_forms
                              | Bool
                              | doc "Indicates whether the upload should exclude empty zero forms"
                              | optional,
                            fallback_locale_id
                              | String
                              | doc "If a key has no translation in the locale being downloaded the translation in the fallback locale will be used. Provide the public ID of the locale that should be used as the fallback. Requires include_empty_translations to be set to true"
                              | optional,
                            file_format
                              | refs."definitions.file_format"
                              | optional,
                            filter_by_prefix
                              | String
                              | doc "Filters keys by prefix. Only keys starting with the given prefix will be included in the download, and the prefix will be removed from the key name in the files"
                              | optional,
                            format_options
                              | refs."definitions.format_options"
                              | optional,
                            include_empty_translations
                              | Bool
                              | doc "Indicates whether keys without translations should be included in the output as well"
                              | optional,
                            include_translated_keys
                              | Bool
                              | doc "Include translated keys in the locale file. Use in combination with include_empty_translations to obtain only untranslated keys"
                              | optional,
                            include_unverified_translations
                              | Bool
                              | doc "Indicates whether unverified translations should be included in the locale file"
                              | optional,
                            keep_notranslate_tags
                              | Bool
                              | doc "Indicates whether [NOTRANSLATE] tags should be kept"
                              | optional,
                            locale_id | refs."definitions.locale_id" | optional,
                            skip_unverified_translations
                              | Bool
                              | doc "Indicates whether the locale file should skip all unverified translations"
                              | optional,
                            tags
                              | String
                              | doc "Limit results to keys tagged with a list of comma separated tag names"
                              | optional,
                            translation_key_prefix
                              | String
                              | doc "If a key name starts with the given prefix, the prefix will be removed from the key name in the files"
                              | optional,
                            use_last_reviewed_version
                              | Bool
                              | doc "If set to true the last reviewed version of a translation is used. This is only available if the review workflow is enabled for the project"
                              | optional,
                            ..
                          }
                          | doc "Locale download parameter"
                          | optional,
                        project_id | refs."definitions.project_id" | optional,
                        ..
                      }
                    | doc "List of files that will be downloaded on pull"
                    | optional,
                  ..
                }
                | optional,
              push
                | {
                  sources
                    | js2n.array.MinItems 1
                    | Array
                      {
                        file
                          | String
                          | doc "Translation file(s) which should be uploaded. You can either specify a single file or a pattern. The glob pattern will be expanded to all files matching the pattern. Besides '*' and '**', you can use the following placeholders: <locale_name> for the locale name and <locale_code> for the locale code"
                          | optional,
                        params
                          | {
                            autotranslate
                              | Bool
                              | doc "If set, translations for the uploaded language will be fetched automatically"
                              | optional,
                            branch | String | doc "Branch name" | optional,
                            convert_emoji
                              | Bool
                              | doc "Indicates whether the file contains Emoji symbols that should be converted"
                              | optional,
                            file_encoding
                              | refs."definitions.encoding"
                              | optional,
                            file_format
                              | refs."definitions.file_format"
                              | optional,
                            format_options
                              | refs."definitions.format_options"
                              | optional,
                            locale_id | refs."definitions.locale_id" | optional,
                            locale_mapping
                              | { _ | Dyn }
                              | doc "Optional, format specific mapping between locale names and the columns the translations to those locales are contained in"
                              | optional,
                            mark_reviewed
                              | Bool
                              | doc "Indicates whether the imported translations should be marked as reviewed"
                              | optional,
                            skip_unverification
                              | Bool
                              | doc "Indicates whether the upload should unverify updated translations"
                              | optional,
                            skip_upload_tags
                              | Bool
                              | doc "Indicates whether the upload should not create upload tags"
                              | optional,
                            tag_only_affected_keys
                              | Bool
                              | doc "Indicates whether only keys affected (created or updated) by the upload should be tagged"
                              | optional,
                            tags
                              | String
                              | doc "List of tags separated by comma to be associated with the new keys contained in the upload"
                              | optional,
                            translation_key_prefix
                              | String
                              | doc "Prefix all the created keys with the given prefix. This can be used to prevent collisions from multiple different sources"
                              | optional,
                            update_descriptions
                              | Bool
                              | doc "Existing key descriptions will be updated with the file content. Empty descriptions overwrite existing descriptions"
                              | optional,
                            update_translations
                              | Bool
                              | doc "Indicates whether existing translations should be updated with the file content"
                              | optional,
                            ..
                          }
                          | doc "Locale upload parameter"
                          | optional,
                        ..
                      }
                    | doc "Source files that will be uploaded on push"
                    | optional,
                  ..
                }
                | optional,
              ..
            }
            | doc "Root element of the Phrase config"
            | optional,
          ..
        },
        Array Dyn
      ]