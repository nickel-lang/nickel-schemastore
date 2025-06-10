# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.identifier" =
        js2n.string.Matches "^[A-Za-z0-9][A-Za-z0-9-]+$",
      "definitions.install_to" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| 'Scenarios, 'Tutorial, 'GameRoot, 'Ships, 'GameData |]
                ],
              js2n.string.Matches "^GameData/",
              js2n.string.Matches "^Ships/(SPH|VAB|Script)$",
              js2n.string.Matches "^Ships/@thumbs/(SPH|VAB)$",
              js2n.string.Matches "^Missions",
              std.contract.Sequence
                [ std.enum.TagOrString, [| '"GameData/Mods" |] ],
              js2n.string.Matches "^GameData/Mods/",
              js2n.string.Matches "^BepInEx/plugins$"
            ],
      "definitions.ksp_version" =
        js2n.string.Matches "^(any|[0-9]+(\\.[0-9]+(\\.[0-9]+)?)?)$",
      "definitions.license" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'unknown,
                'unrestricted,
                'restricted,
                'open-source,
                'Zope,
                'Zlib,
                'WTFPL,
                'W3C,
                'Unlicense,
                '"QPL-1.0",
                '"Python-2.0",
                'Perl,
                'Ms-RL,
                'Ms-PL,
                '"MPL-2.0",
                '"MPL-1.1",
                '"MPL-1.0",
                '"LPPL-1.3c",
                '"LPPL-1.2",
                '"LPPL-1.1",
                '"LPPL-1.0",
                '"GFDL-NIV-1.3",
                '"GFDL-NIV-1.2",
                '"GFDL-NIV-1.1",
                '"GFDL-NIV-1.0",
                '"GFDL-1.3",
                '"GFDL-1.2",
                '"GFDL-1.1",
                '"GFDL-1.0",
                '"LGPL-3.0",
                '"LGPL-2.1",
                '"LGPL-2.0",
                '"GPL-3.0",
                '"GPL-2.0",
                '"GPL-1.0",
                'MIT,
                'Expat,
                '"EFL-2.0",
                '"EFL-1.0",
                'CPL,
                'CDDL,
                'CC0,
                '"CC-BY-ND-4.0",
                '"CC-BY-ND-3.0",
                '"CC-BY-ND-2.5",
                '"CC-BY-ND-2.0",
                '"CC-BY-ND-1.0",
                'CC-BY-ND,
                '"CC-BY-NC-ND-4.0",
                '"CC-BY-NC-ND-3.0",
                '"CC-BY-NC-ND-2.5",
                '"CC-BY-NC-ND-2.0",
                '"CC-BY-NC-ND-1.0",
                'CC-BY-NC-ND,
                '"CC-BY-NC-SA-4.0",
                '"CC-BY-NC-SA-3.0",
                '"CC-BY-NC-SA-2.5",
                '"CC-BY-NC-SA-2.0",
                '"CC-BY-NC-SA-1.0",
                'CC-BY-NC-SA,
                '"CC-BY-NC-4.0",
                '"CC-BY-NC-3.0",
                '"CC-BY-NC-2.5",
                '"CC-BY-NC-2.0",
                '"CC-BY-NC-1.0",
                'CC-BY-NC,
                '"CC-BY-SA-4.0",
                '"CC-BY-SA-3.0",
                '"CC-BY-SA-2.5",
                '"CC-BY-SA-2.0",
                '"CC-BY-SA-1.0",
                'CC-BY-SA,
                '"CC-BY-4.0",
                '"CC-BY-3.0",
                '"CC-BY-2.5",
                '"CC-BY-2.0",
                '"CC-BY-1.0",
                'CC-BY,
                'ISC,
                'BSD-4-clause,
                'BSD-3-clause,
                'BSD-2-clause,
                '"Artistic-2.0",
                '"Artistic-1.0",
                'Artistic,
                '"APSL-2.0",
                '"Apache-2.0",
                '"Apache-1.0",
                'Apache,
                '"AGPL-3.0",
                '"AFL-3.0",
                'public-domain
              |]
            ],
      "definitions.licenses" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.license", String ],
              std.contract.Sequence
                [
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.Sequence [ refs."definitions.license", String ]
                  )
                ]
            ],
      "definitions.one_or_more_strings" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
            ],
      "definitions.relationship" =
        Array (
            js2n.OneOf
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          choice_help_text = String,
                          max_version =
                            std.contract.Sequence
                                [ refs."definitions.version", String ],
                          min_version =
                            std.contract.Sequence
                                [ refs."definitions.version", String ],
                          name =
                            std.contract.Sequence
                                [ refs."definitions.identifier", String ],
                          suppress_recommendations = Bool,
                          version =
                            std.contract.Sequence
                                [ refs."definitions.version", String ],
                        },
                    required = { name = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          any_of =
                            std.contract.Sequence [ js2n.Always, Array Dyn ],
                          choice_help_text = String,
                        },
                    required = { any_of = true, },
                  }
              ]
          ),
      "definitions.version" = String,
    }
    in
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
                js2n.record.Required [ "download" ],
                Array Dyn
              ],
            std.contract.Sequence
              [
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
                              kind =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'dlc, 'metapackage |]
                                    ],
                            },
                        required = { kind = true, },
                      },
                    Array Dyn
                  ],
                std.contract.not
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "download" ],
                      Array Dyn
                    ])
              ]
          ],
        {
          abstract | String | doc "Short description of the mod",
          author
            | std.contract.any_of
              [
                String,
                std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
              ]
            | doc "Author, or list of authors",
          comment
            | String
            | doc "Free-form comment. Not displayed to users"
            | optional,
          conflicts
            | refs."definitions.relationship"
            | doc "Optional list of conflicting mods"
            | optional,
          depends
            | refs."definitions.relationship"
            | doc "Optional list of dependencies"
            | optional,
          description | String | doc "Longer description of the mod" | optional,
          download
            | std.contract.any_of
              [
                String,
                std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
              ]
            | doc "URL where mod can be downloaded by tools"
            | optional,
          download_content_type
            | String
            | doc "The content type of the download"
            | optional,
          download_hash
            | {
              sha1 | String | doc "SHA1 hash of the file" | optional,
              sha256 | String | doc "SHA256 hash of the file" | optional,
              ..
            }
            | doc "A object of hashes of the downloaded file"
            | optional,
          download_size
            | std.number.Integer
            | doc "The size of the download in bytes"
            | optional,
          identifier
            | refs."definitions.identifier"
            | doc "Unique identifier for this mod",
          install
            | Array (
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
                          js2n.record.Required [ "find" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "find_regexp" ],
                          Array Dyn
                        ]
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "filter", "include_only" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required
                          [ "filter", "include_only_regexp" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required
                          [ "filter_regexp", "include_only" ],
                        Array Dyn,
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required
                          [ "filter_regexp", "include_only_regexp" ],
                        Array Dyn
                      ]),
                  {
                    as
                      | js2n.string.Matches "^[^\\\\/]+$"
                      | doc "The name to give the matching directory or file when installed"
                      | optional,
                    file | String | doc "Path to file to install" | optional,
                    filter
                      | refs."definitions.one_or_more_strings"
                      | doc "List of files and directories that should be filtered from the install"
                      | optional,
                    filter_regexp
                      | refs."definitions.one_or_more_strings"
                      | doc "List of regexps that should filter files from this install"
                      | optional,
                    find
                      | String
                      | doc "A directory to find for installation"
                      | optional,
                    find_matches_files
                      | Bool
                      | doc "If true, find directives match files as well as directories"
                      | optional,
                    find_regexp
                      | String
                      | doc "A regexp that matches the directory to install"
                      | optional,
                    include_only
                      | refs."definitions.one_or_more_strings"
                      | doc "List of files and directories that should not be excluded from the install"
                      | optional,
                    include_only_regexp
                      | refs."definitions.one_or_more_strings"
                      | doc "List of regexps that should include files in this install"
                      | optional,
                    install_to
                      | refs."definitions.install_to"
                      | doc "Where file should be installed to",
                    ..
                  }
                ]
            )
            | doc "List of install directives"
            | optional,
          install_size
            | std.number.Integer
            | doc "The size of the installed files"
            | optional,
          kind
            | std.enum.TagOrString
            | [| 'dlc, 'metapackage, 'package |]
            | doc "Package type, defaults to package"
            | optional,
          ksp_version
            | refs."definitions.ksp_version"
            | doc "Optional target game version"
            | optional,
          ksp_version_max
            | refs."definitions.ksp_version"
            | doc "Optional maximum game version"
            | optional,
          ksp_version_min
            | refs."definitions.ksp_version"
            | doc "Optional minimum game version"
            | optional,
          ksp_version_strict
            | Bool
            | doc "Optional enforcement of strict version checks (defaults to false)"
            | optional,
          license
            | refs."definitions.licenses"
            | doc "Machine readable license, or array of licenses",
          localizations
            | js2n.array.UniqueItems
            | Array String
            | doc "A list of locale strings for which this mod includes localizations"
            | optional,
          name | String | doc "Human readable name of the mod",
          provides
            | js2n.array.UniqueItems
            | Array refs."definitions.identifier"
            | doc "A list of virtual packages this mod provides"
            | optional,
          recommends
            | refs."definitions.relationship"
            | doc "Optional list of recommended mods"
            | optional,
          release_date
            | String
            | doc "Optional timestamp when the described version of the mod was released"
            | optional,
          release_status
            | std.enum.TagOrString
            | [| 'development, 'testing, 'stable |]
            | doc "Optional release status"
            | optional,
          replaced_by
            | {
              min_version
                | refs."definitions.version"
                | doc "Optional minimum version"
                | optional,
              name
                | refs."definitions.identifier"
                | doc "Identifier of the mod",
              version
                | refs."definitions.version"
                | doc "Optional version"
                | optional,
              ..
            }
            | doc "Optional pointer to mod that should be selected instead and treated as an update to this mod"
            | optional,
          resources
            | {
              bugtracker | String | doc "Mod bugtracker" | optional,
              ci | String | doc "Continuous Integration" | optional,
              curse | String | doc "Project on Curse" | optional,
              discussions | String | doc "Mod discussions" | optional,
              homepage | String | doc "Mod homepage" | optional,
              license | String | doc "Mod license" | optional,
              manual | String | doc "Mod's manual" | optional,
              metanetkan | String | doc "Mod's remote hosted netkan" | optional,
              remote-avc
                | String
                | doc "Mod's remote hosted version file"
                | optional,
              remote-swinfo
                | String
                | doc "Mod's remote hosted swinfo file"
                | optional,
              repository | String | doc "Mod repository" | optional,
              spacedock | String | doc "Project on SpaceDock" | optional,
              steamstore | String | doc "Purchase DLC on Steam here" | optional,
              store | String | doc "Purchase DLC here" | optional,
              ..
            }
            | doc "Additional resources"
            | optional,
          spec_version
            | std.contract.any_of
              [
                std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 1,
                    js2n.number.Minimum 1
                  ],
                js2n.string.Matches "^v[0-9]+\\.[0-9]+$"
              ]
            | doc "Version of the CKAN spec this document uses",
          suggests
            | refs."definitions.relationship"
            | doc "Optional list of recommended, but not essential mods"
            | optional,
          supports
            | refs."definitions.relationship"
            | doc "Optional list of supported mods"
            | optional,
          tags
            | Array (js2n.string.Matches "^[a-z0-9-]+$")
            | doc "A series of descriptive keywords to provide quick filtering and organization"
            | optional,
          version | refs."definitions.version" | doc "Version of the mod",
          ..
        }
      ]