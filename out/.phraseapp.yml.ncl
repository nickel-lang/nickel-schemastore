# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.encoding" = String,
      "definitions.file_format" = String,
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
          phraseapp
            | {
              access_token
                | String
                | doc "Access Token for authorization. Can be created in the user profile"
                | optional,
              defaults
                | {
                  "keys/list"
                    | {
                      order | String | optional,
                      sort | String | optional,
                      ..
                    }
                    | optional,
                  ..
                }
                | doc "Default configuration for API endpoints"
                | optional,
              file_format | refs."definitions.file_format" | optional,
              host
                | String
                | doc "API host URL. Only needs to be changed for OnPremise usage"
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
                          | doc "Translation file which will be downloaded"
                          | optional,
                        params
                          | {
                            branch | String | doc "Branch name" | optional,
                            convert_emoji
                              | Bool
                              | doc "Indicates whether Emoji symbols should be converted to actual Emojis"
                              | optional,
                            encoding | refs."definitions.encoding" | optional,
                            fallback_locale_id
                              | String
                              | doc "If a key has no translation in the locale being downloaded the translation in the fallback locale will be used. Provide the public ID of the locale that should be used as the fallback. Requires include_empty_translations to be set to true"
                              | optional,
                            file_format
                              | refs."definitions.file_format"
                              | optional,
                            include_empty_translations
                              | Bool
                              | doc "Indicates whether keys without translations should be included in the output as well"
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
                            tag
                              | String
                              | doc "Limit result to keys tagged with the given tag (identified by its name)"
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
                          | doc "Translation file which will be uploaded"
                          | optional,
                        params
                          | {
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
                              | {
                                column_separator
                                  | String
                                  | doc "Column separator character"
                                  | optional,
                                ..
                              }
                              | doc "Additional options available for specific formats. See our format guide for complete list"
                              | optional,
                            locale_id | refs."definitions.locale_id" | optional,
                            skip_unverification
                              | Bool
                              | doc "Indicates whether the upload should unverify updated translations"
                              | optional,
                            skip_upload_tags
                              | Bool
                              | doc "Indicates whether the upload should not create upload tags"
                              | optional,
                            tags
                              | String
                              | doc "List of tags separated by comma to be associated with the new keys contained in the upload"
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
            | doc "Root element of the PhraseApp config"
            | optional,
          ..
        },
        Array Dyn
      ]