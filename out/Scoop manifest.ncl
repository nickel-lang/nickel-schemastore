# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.architecture" =
        {
            bin
              | refs."definitions.stringOrArrayOfStringsOrAnArrayOfArrayOfStrings"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            checkver
              | refs."definitions.checkver"
              | std.contract.any_of [ { _ | Dyn }, String ]
              | optional,
            env_add_path
              | refs."definitions.stringOrArrayOfStrings"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            env_set | { _ | Dyn } | optional,
            extract_dir
              | refs."definitions.stringOrArrayOfStrings"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            hash | refs."definitions.hash" | optional,
            installer | refs."definitions.installer" | { _ | Dyn } | optional,
            post_install
              | refs."definitions.stringOrArrayOfStrings"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            post_uninstall
              | refs."definitions.stringOrArrayOfStrings"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            pre_install
              | refs."definitions.stringOrArrayOfStrings"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            pre_uninstall
              | refs."definitions.stringOrArrayOfStrings"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            shortcuts
              | refs."definitions.shortcutsArray"
              | Array Dyn
              | optional,
            uninstaller
              | refs."definitions.uninstaller"
              | { _ | Dyn }
              | optional,
            url
              | refs."definitions.uriOrArrayOfUris"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
          },
      "definitions.autoupdate" =
        {
            architecture
              | {
                "32bit"
                  | refs."definitions.autoupdateArch"
                  | { _ | Dyn }
                  | optional,
                "64bit"
                  | refs."definitions.autoupdateArch"
                  | { _ | Dyn }
                  | optional,
                arm64
                  | refs."definitions.autoupdateArch"
                  | { _ | Dyn }
                  | optional,
              }
              | optional,
            bin
              | refs."definitions.stringOrArrayOfStringsOrAnArrayOfArrayOfStrings"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            env_add_path
              | refs."definitions.stringOrArrayOfStrings"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            env_set | { _ | Dyn } | optional,
            extract_dir
              | refs."definitions.stringOrArrayOfStrings"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            hash
              | refs."definitions.hashExtractionOrArrayOfHashExtractions"
              | optional,
            installer | { file | String | optional, } | optional,
            license | refs."definitions.license" | optional,
            notes
              | refs."definitions.stringOrArrayOfStrings"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            persist
              | refs."definitions.stringOrArrayOfStringsOrAnArrayOfArrayOfStrings"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            psmodule | { name | String | optional, } | optional,
            shortcuts
              | refs."definitions.shortcutsArray"
              | Array Dyn
              | optional,
            url
              | refs."definitions.autoupdateUriOrArrayOfAutoupdateUris"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
          },
      "definitions.autoupdateArch" =
        {
            bin
              | refs."definitions.stringOrArrayOfStringsOrAnArrayOfArrayOfStrings"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            env_add_path
              | refs."definitions.stringOrArrayOfStrings"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            env_set | { _ | Dyn } | optional,
            extract_dir
              | refs."definitions.stringOrArrayOfStrings"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            hash
              | refs."definitions.hashExtractionOrArrayOfHashExtractions"
              | optional,
            installer | { file | String | optional, } | optional,
            shortcuts
              | refs."definitions.shortcutsArray"
              | Array Dyn
              | optional,
            url
              | refs."definitions.autoupdateUriOrArrayOfAutoupdateUris"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
          },
      "definitions.autoupdateUriOrArrayOfAutoupdateUris" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ js2n.array.MinItems 1, js2n.array.UniqueItems, Array String ]
            ],
      "definitions.checkver" =
        std.contract.any_of
            [
              String,
              {
                github | String | optional,
                jp
                  | refs."definitions.jsonPathPattern"
                  | String
                  | doc "Same as 'jsonpath'"
                  | optional,
                jsonpath
                  | refs."definitions.jsonPathPattern"
                  | String
                  | optional,
                re | String | doc "Same as 'regex'" | optional,
                regex | String | optional,
                replace
                  | String
                  | doc "Allows rearrange the regexp matches"
                  | optional,
                reverse
                  | Bool
                  | doc "Reverse the order of regex matches"
                  | optional,
                script
                  | refs."definitions.stringOrArrayOfStrings"
                  | std.contract.any_of [ Array Dyn, String ]
                  | doc "Custom PowerShell script to retrieve application version using more complex approach."
                  | optional,
                sourceforge
                  | std.contract.any_of
                    [
                      String,
                      { path | String | optional, project | String | optional, }
                    ]
                  | optional,
                url | String | optional,
                useragent | String | optional,
                xpath | String | optional,
              }
            ],
      "definitions.hash" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.hashPattern", String ],
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.hashPattern", String ]
                  )
                ]
            ],
      "definitions.hashExtraction" =
        {
            find | String | doc "Same as 'regex'" | optional,
            jp
              | refs."definitions.jsonPathPattern"
              | String
              | doc "Same as 'jsonpath'"
              | optional,
            jsonpath | refs."definitions.jsonPathPattern" | String | optional,
            mode
              | std.enum.TagOrString
              | [|
                'sourceforge,
                'fosshub,
                'metalink,
                'rdf,
                'xpath,
                'json,
                'extract,
                'download
              |]
              | optional,
            regex | String | optional,
            type
              | std.enum.TagOrString
              | [| 'sha512, 'sha256, 'sha1, 'md5 |]
              | doc "Deprecated, hash type is determined automatically"
              | optional,
            url
              | std.contract.any_of
                [
                  String,
                  js2n.string.Matches "^(\\$url|\\$baseurl).[\\w\\d]+$",
                  js2n.string.Matches "^.*(\\$url|\\$baseurl).*$"
                ]
              | optional,
            xpath | String | optional,
          },
      "definitions.hashExtractionOrArrayOfHashExtractions" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.hashExtraction", { _ | Dyn } ],
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.hashExtraction", { _ | Dyn } ]
                  )
                ]
            ],
      "definitions.hashPattern" =
        js2n.string.Matches
            "^([a-fA-F0-9]{64}|(sha1|sha256|sha512|md5):([a-fA-F0-9]{32}|[a-fA-F0-9]{40}|[a-fA-F0-9]{64}|[a-fA-F0-9]{128}))$",
      "definitions.installer" =
        {
            _comment
              | String
              | doc "Undocumented: only used in scoop-extras/oraclejdk* and scoop-extras/appengine-go"
              | optional,
            args
              | refs."definitions.stringOrArrayOfStrings"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            file | String | optional,
            keep | Bool | optional,
            script
              | refs."definitions.stringOrArrayOfStrings"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
          },
      "definitions.jsonPathPattern" = js2n.string.Matches "^\\$[.\\[].*$",
      "definitions.license" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.licenseIdentifiers", String ],
              {
                identifier | refs."definitions.licenseIdentifiers" | String,
                url | String | optional,
              }
            ],
      "definitions.licenseIdentifiers" = String,
      "definitions.shortcutsArray" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ js2n.array.MaxItems 4, js2n.array.MinItems 2, Array String ]
              )
            ],
      "definitions.stringOrArrayOfStrings" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence [ js2n.array.MinItems 1, Array String ]
            ],
      "definitions.stringOrArrayOfStringsOrAnArrayOfArrayOfStrings" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.stringOrArrayOfStrings",
                        std.contract.any_of [ Array Dyn, String ]
                      ]
                  )
                ]
            ],
      "definitions.uninstaller" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "file" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "script" ],
                      Array Dyn
                    ]
                ],
              {
                args
                  | refs."definitions.stringOrArrayOfStrings"
                  | std.contract.any_of [ Array Dyn, String ]
                  | optional,
                file | String | optional,
                script
                  | refs."definitions.stringOrArrayOfStrings"
                  | std.contract.any_of [ Array Dyn, String ]
                  | optional,
                ..
              }
            ],
      "definitions.uriOrArrayOfUris" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        js2n.string.Matches "(\\$)",
                        { _ | Dyn },
                        Array Dyn
                      ]),
                  String
                ],
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.Sequence
                      [
                        std.contract.not
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              js2n.string.Matches "(\\$)",
                              { _ | Dyn },
                              Array Dyn
                            ]),
                        String
                      ]
                  )
                ]
            ],
    }
    in
  std.contract.Sequence
      [
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        architecture =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          "32bit" =
                                            std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  Number,
                                                  String,
                                                  js2n.record.Record
                                                    {
                                                      additional = 'Some Dyn,
                                                      patterns = {},
                                                      properties =
                                                        { url = js2n.Never, },
                                                      required = {},
                                                    },
                                                  Array Dyn
                                                ],
                                          "64bit" =
                                            std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  Number,
                                                  String,
                                                  js2n.record.Record
                                                    {
                                                      additional = 'Some Dyn,
                                                      patterns = {},
                                                      properties =
                                                        { url = js2n.Never, },
                                                      required = {},
                                                    },
                                                  Array Dyn
                                                ],
                                          arm64 =
                                            std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  Number,
                                                  String,
                                                  js2n.record.Record
                                                    {
                                                      additional = 'Some Dyn,
                                                      patterns = {},
                                                      properties =
                                                        { url = js2n.Never, },
                                                      required = {},
                                                    },
                                                  Array Dyn
                                                ],
                                        },
                                    required = {},
                                  },
                                Array Dyn
                              ],
                      },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Required [ "url" ],
              Array Dyn
            ]) js2n.Always,
        {
          "##"
            | refs."definitions.stringOrArrayOfStrings"
            | doc "A comment."
            | optional,
          "$schema" | String | optional,
          _comment
            | refs."definitions.stringOrArrayOfStrings"
            | doc "Deprecated. Use ## instead."
            | optional,
          architecture
            | {
              "32bit" | refs."definitions.architecture" | optional,
              "64bit" | refs."definitions.architecture" | optional,
              arm64 | refs."definitions.architecture" | optional,
            }
            | optional,
          autoupdate | refs."definitions.autoupdate" | optional,
          bin
            | refs."definitions.stringOrArrayOfStringsOrAnArrayOfArrayOfStrings"
            | optional,
          checkver | refs."definitions.checkver" | optional,
          cookie
            | { _ | Dyn }
            | doc "Undocumented: Found at https://github.com/se35710/scoop-java/search?l=JSON&q=cookie"
            | optional,
          depends | refs."definitions.stringOrArrayOfStrings" | optional,
          description | String | optional,
          env_add_path | refs."definitions.stringOrArrayOfStrings" | optional,
          env_set | { _ | Dyn } | optional,
          extract_dir | refs."definitions.stringOrArrayOfStrings" | optional,
          extract_to | refs."definitions.stringOrArrayOfStrings" | optional,
          hash | refs."definitions.hash" | optional,
          homepage | String,
          innosetup
            | Bool
            | doc "True if the installer InnoSetup based. Found in https://github.com/ScoopInstaller/Main/search?l=JSON&q=innosetup"
            | optional,
          installer | refs."definitions.installer" | optional,
          license | refs."definitions.license",
          notes | refs."definitions.stringOrArrayOfStrings" | optional,
          persist
            | refs."definitions.stringOrArrayOfStringsOrAnArrayOfArrayOfStrings"
            | optional,
          post_install | refs."definitions.stringOrArrayOfStrings" | optional,
          post_uninstall | refs."definitions.stringOrArrayOfStrings" | optional,
          pre_install | refs."definitions.stringOrArrayOfStrings" | optional,
          pre_uninstall | refs."definitions.stringOrArrayOfStrings" | optional,
          psmodule | { name | String | optional, } | optional,
          shortcuts | refs."definitions.shortcutsArray" | Array Dyn | optional,
          suggest
            | { _ | refs."definitions.stringOrArrayOfStrings" }
            | js2n.record.FieldsMatch "^(.*)$"
            | optional,
          uninstaller | refs."definitions.uninstaller" | { _ | Dyn } | optional,
          url | refs."definitions.uriOrArrayOfUris" | optional,
          version | js2n.string.Matches "^[\\w\\.\\-+_]+$",
        }
      ]