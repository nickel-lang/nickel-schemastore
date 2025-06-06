# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.actions" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\$.*$" =
                      std.contract.any_of
                          [ Bool, Number, String, { _ | Dyn }, Array Dyn ],
                  },
              properties =
                {
                    arrayType =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'array_br, 'array |] ],
                    changeExtension = String,
                    conditions =
                      std.contract.any_of
                          [
                            String,
                            Array (
                              std.contract.Sequence
                                [
                                  refs."definitions.conditions",
                                  std.contract.any_of [ Array Dyn, String ]
                                ]
                            )
                          ],
                    excludeKeys = Array String,
                    filterArrays = Bool,
                    filterPlurals = Bool,
                    filterStrings = Bool,
                    forceArrayType = Bool,
                    forcePluralType = Bool,
                    group = String,
                    includeKeys = Array String,
                    keySeparator = String,
                    langAliases = {  .. },
                    langExpansions = {  .. },
                    output = String,
                    params = {  .. },
                    pluralType =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'plural_br,
                              'plural_array,
                              'plural_icu,
                              'plural_object,
                              'plural_i18next,
                              'plural_postfix_cc,
                              'plural_postfix_us,
                              'plural_postfix_dd,
                              'plural_postfix_sd,
                              'plural_postfix_br
                            |]
                          ],
                    replacements = {  .. },
                    stop = Bool,
                    type =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'yaml-rails,
                              'yaml-multilingual,
                              'yaml,
                              'xliff20,
                              'xliff12,
                              'xcstrings,
                              'toml-multilingual,
                              'toml,
                              'tmx,
                              'resx,
                              'po,
                              'php-multilingual,
                              'php,
                              'ods-multilingual,
                              'ods,
                              'neon-multilingual,
                              'neon,
                              'mo,
                              'json-multilingual,
                              'json-mozilla,
                              'json,
                              'ios-stringsdict,
                              'ios-strings,
                              'ini-multilingual,
                              'ini,
                              'excel-multilingual,
                              'excel,
                              'csv-multilingual,
                              'csv,
                              'arb,
                              'android
                            |]
                          ],
                  },
              required = {},
            },
      "definitions.conditions" = std.contract.any_of [ String, Array String ],
      "definitions.features" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                '"encoding=ansi",
                '"encoding=utf16be",
                '"encoding=utf16le",
                '"encoding=utf16",
                '"encoding=utf8",
                '"encoding=auto",
                '"encoding=iso-8859-1",
                '"encoding=win-1252",
                '"lang_format=android",
                '"lang_format=android_noscript",
                '"lang_format=bcp",
                '"lang_format=locale_name",
                '"lang_format=ll+scrp+rr",
                '"lang_format=ll+rr+scrp",
                '"lang_format=ll_scrp_rr",
                '"lang_format=ll_rr_scrp",
                '"lang_format=ll-scrp_rr",
                '"lang_format=ll-scrp-rr",
                '"lang_format=ll-rr-scrp",
                '"lang_format=ll-rr#scrp",
                '"included_langs=",
                '"columns=",
                'dont_use_full_path,
                'dont_skip_placeholders,
                'keep_comments,
                'omit_extraction,
                'omit_state,
                'use_key_for_source,
                'line_r,
                'line_n,
                'line_nr,
                'line_rn,
                'quote_backslash,
                'quote_single,
                'delimiter_semicolon,
                'delimiter_tab,
                'no_header,
                'prefer_message_id,
                'include_source,
                'prefer_source_as_key,
                'source_is_content,
                'force_escaping,
                'latin1,
                'force_quotes,
                'output_json,
                'preserve_comments,
                'use_blank_content,
                'skip_source,
                'ignore_blank_content,
                'force_key_for_content,
                'use_key_for_content,
                'empty_untranslated,
                'output_mo,
                'lang_root,
                'encode_output,
                'decode_tags,
                'ignore_extras,
                'ignore_id,
                'ignore_original,
                'store_attrs,
                'decode_html_entities,
                'omit_id_for_source_is_key,
                'parse_plurals_icu,
                'parse_plurals_ios,
                'use_unicode,
                'dont_fuzzy_match_lang,
                'use_defined_lang_for_target,
                'use_defined_lang_for_source,
                'use_project_lang,
                'dont_parse_target,
                'dont_parse_source,
                'output_entities,
                'skip_plurals,
                'parse_others,
                'parse_plurals,
                'parse_array,
                'add_bom,
                'arb_dont_export_metadata,
                'skip_empty,
                'source_is_key,
                'arb_locale_full,
                'arb_locale_lang,
                'arb_metadata,
                'plural_icu,
                'plural_object,
                'plural_i18next,
                'plural_pipeline,
                'plural_postfix_br,
                'plural_postfix_cc,
                'plural_postfix_us,
                'plural_postfix_sd,
                'plural_postfix_dd,
                'plural_array,
                'array_br,
                'array,
                'filter_untranslated,
                'multilingual,
                'requirejs,
                'content_as_object,
                'content_as_array,
                'escape_new_lines
              |]
            ],
      "definitions.files" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence [ refs."definitions.subtype", { _ | Dyn } ]
            ],
      "definitions.files_2" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ refs."definitions.subtype_1", { _ | Dyn } ]
            ],
      "definitions.subtype" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\$.*$" =
                      std.contract.any_of
                          [ Bool, Number, String, { _ | Dyn }, Array Dyn ],
                  },
              properties =
                {
                    buildType = String,
                    conditions =
                      std.contract.any_of
                          [
                            String,
                            Array (
                              std.contract.Sequence
                                [
                                  refs."definitions.conditions",
                                  std.contract.any_of [ Array Dyn, String ]
                                ]
                            )
                          ],
                    excludes = Array String,
                    features =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [ refs."definitions.features", String ],
                            Array (
                              std.contract.Sequence
                                [ refs."definitions.features", String ]
                            )
                          ],
                    file = String,
                    group = String,
                    lang = String,
                    library = String,
                    module = String,
                    path = String,
                    pattern = String,
                    productFlavors = String,
                    remap =
                      js2n.record.Record
                          {
                            additional = 'None,
                            patterns =
                              {
                                  "^\\$.*$" =
                                    std.contract.any_of
                                        [
                                          Bool,
                                          Number,
                                          String,
                                          { _ | Dyn },
                                          Array Dyn
                                        ],
                                },
                            properties =
                              {
                                  array = String,
                                  flatten = String,
                                  nest = String,
                                  plural = String,
                                  type =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [|
                                            'api,
                                            'xcstrings,
                                            'tmx,
                                            'ods-multilingual,
                                            'ods,
                                            'excel-multilingual,
                                            'excel,
                                            'toml-multilingual,
                                            'toml,
                                            'neon-multilingual,
                                            'neon,
                                            'csv-multilingual,
                                            'csv,
                                            'qt-ts,
                                            'php-multilingual,
                                            'php,
                                            'ini-multilingual,
                                            'ini,
                                            'properties,
                                            'js-multilingual,
                                            'js,
                                            'hjson-multilingual,
                                            'hjson,
                                            'json5-multilingual,
                                            'json5,
                                            'po,
                                            'yaml-multilingual,
                                            'yaml-rails,
                                            'yaml,
                                            'resx,
                                            'ios-stringsdict,
                                            'ios-plist,
                                            'ios-strings,
                                            'json-mozzila,
                                            'require-js,
                                            'arb,
                                            'json-multilingual,
                                            'json,
                                            'android
                                          |]
                                        ],
                                },
                            required = {},
                          },
                    type =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'framemaker,
                              'ispring,
                              'captivate,
                              'copy,
                              'xcstrings,
                              'tmx,
                              'srt,
                              'ods,
                              'excel,
                              'toml,
                              'neon,
                              'csv,
                              'text,
                              'qt-ts,
                              'php,
                              'ini,
                              'properties,
                              'js,
                              'hjson,
                              'json5,
                              'pot,
                              'po,
                              'yaml,
                              'resx,
                              'xliff,
                              'ios-stringsdict,
                              'ios-plist,
                              'ios-strings,
                              'arb,
                              'json,
                              'android
                            |]
                          ],
                  },
              required = {},
            },
      "definitions.subtype_1" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\$.*$" =
                      std.contract.any_of
                          [ Bool, Number, String, { _ | Dyn }, Array Dyn ],
                  },
              properties =
                {
                    conditions =
                      std.contract.any_of
                          [
                            String,
                            Array (
                              std.contract.Sequence
                                [
                                  refs."definitions.conditions",
                                  std.contract.any_of [ Array Dyn, String ]
                                ]
                            )
                          ],
                    group = String,
                    output = String,
                    stop = Bool,
                  },
              required = {},
            },
      "definitions.transformations" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\$.*$" =
                      std.contract.any_of
                          [ Bool, Number, String, { _ | Dyn }, Array Dyn ],
                  },
              properties =
                {
                    name = String,
                    operations = std.contract.any_of [ String, Array String ],
                    source = String,
                  },
              required = {},
            },
    }
    in
  js2n.record.Record
      {
        additional = 'None,
        patterns =
          {
              "^\\$.*$" =
                std.contract.any_of
                    [ Bool, Number, String, { _ | Dyn }, Array Dyn ],
            },
        properties =
          {
              "$schema" = String,
              branch = String,
              community =
                js2n.record.Record
                    {
                      additional = 'None,
                      patterns =
                        {
                            "^\\$.*$" =
                              std.contract.any_of
                                  [
                                    Bool,
                                    Number,
                                    String,
                                    { _ | Dyn },
                                    Array Dyn
                                  ],
                          },
                      properties =
                        {
                            author = String,
                            company = String,
                            description = String,
                            email = String,
                            tags = Array String,
                            website = String,
                          },
                      required = {},
                    },
              conversion =
                js2n.record.Record
                    {
                      additional = 'None,
                      patterns =
                        {
                            "^\\$.*$" =
                              std.contract.any_of
                                  [
                                    Bool,
                                    Number,
                                    String,
                                    { _ | Dyn },
                                    Array Dyn
                                  ],
                          },
                      properties =
                        {
                            actions =
                              std.contract.any_of
                                  [
                                    Array refs."definitions.actions",
                                    refs."definitions.actions"
                                  ],
                            excludedLangs = Array String,
                            folder = String,
                          },
                      required = {},
                    },
              download =
                js2n.record.Record
                    {
                      additional = 'None,
                      patterns =
                        {
                            "^\\$.*$" =
                              std.contract.any_of
                                  [
                                    Bool,
                                    Number,
                                    String,
                                    { _ | Dyn },
                                    Array Dyn
                                  ],
                          },
                      properties =
                        {
                            excludedLangs =
                              std.contract.any_of [ Array String, String ],
                            files =
                              std.contract.any_of
                                  [
                                    String,
                                    Array refs."definitions.files_2",
                                    refs."definitions.subtype_1"
                                  ],
                            folder = String,
                            includeSourceLang = Bool,
                            langAliases = {  .. },
                            langExpansions = {  .. },
                            metadataFileJs = String,
                            metadataFileJson = String,
                            metadataFileTs = String,
                            metadataVersion = String,
                          },
                      required = {},
                    },
              readKey = String,
              transformations =
                std.contract.any_of
                    [
                      Array refs."definitions.transformations",
                      refs."definitions.transformations"
                    ],
              upload =
                js2n.record.Record
                    {
                      additional = 'None,
                      patterns =
                        {
                            "^\\$.*$" =
                              std.contract.any_of
                                  [
                                    Bool,
                                    Number,
                                    String,
                                    { _ | Dyn },
                                    Array Dyn
                                  ],
                          },
                      properties =
                        {
                            allowDuplicateKeys = Bool,
                            appVersion = Number,
                            deprecate =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'none, 'project, 'file |]
                                  ],
                            deprecateMissing = Bool,
                            excludeKeys = Array String,
                            features =
                              std.contract.any_of
                                  [
                                    refs."definitions.features",
                                    Array refs."definitions.features"
                                  ],
                            files =
                              std.contract.any_of
                                  [
                                    String,
                                    Array refs."definitions.files",
                                    refs."definitions.subtype"
                                  ],
                            filterSource = Bool,
                            folder = String,
                            forceCurrent = Bool,
                            forceSource = Bool,
                            importAsNew = Bool,
                            includeKeys = Array String,
                            keySeparator = String,
                            skipFailedAutodetection = Bool,
                            type =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [|
                                      'framemaker,
                                      'ispring,
                                      'captivate,
                                      'copy,
                                      'xcstrings,
                                      'tmx,
                                      'srt,
                                      'ods,
                                      'excel,
                                      'toml,
                                      'neon,
                                      'csv,
                                      'text,
                                      'qt-ts,
                                      'php,
                                      'ini,
                                      'properties,
                                      'js,
                                      'hjson,
                                      'json5,
                                      'pot,
                                      'po,
                                      'yaml,
                                      'resx,
                                      'xliff,
                                      'ios-stringsdict,
                                      'ios-plist,
                                      'ios-strings,
                                      'arb,
                                      'json,
                                      'android
                                    |]
                                  ],
                          },
                      required = {},
                    },
              writeKey = String,
            },
        required = {},
      }