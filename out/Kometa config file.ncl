# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.anidb-api" =
        {
            cache_expiration
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "An integer greater than 0 in days"
              | optional,
            client | String | optional,
            language
              | std.enum.TagOrString
              | [|
                'zu,
                'zh,
                'za,
                'yo,
                'yi,
                'xh,
                'wo,
                'wa,
                'vo,
                'vi,
                'uz,
                'ur,
                'uk,
                'ug,
                'tw,
                'tt,
                'ts,
                'tr,
                'to,
                'tn,
                'tl,
                'tk,
                'ti,
                'th,
                'tg,
                'te,
                'ta,
                'sw,
                'sv,
                'su,
                'st,
                'ss,
                'sr,
                'sq,
                'so,
                'sn,
                'sm,
                'sl,
                'sk,
                'si,
                'sg,
                'se,
                'rw,
                'ru,
                'ro,
                'rn,
                'rm,
                'qu,
                'pt,
                'ps,
                'pl,
                'pi,
                'pa,
                'os,
                'or,
                'om,
                'oj,
                'oc,
                'no,
                'nn,
                'nl,
                'ne,
                'nd,
                'nb,
                'mt,
                'ms,
                'mr,
                'mo,
                'mn,
                'ml,
                'mk,
                'mi,
                'mh,
                'mg,
                'lv,
                'lu,
                'lt,
                'lo,
                'ln,
                'li,
                'lg,
                'lb,
                'la,
                'ky,
                'kw,
                'kv,
                'ku,
                'ks,
                'kr,
                'ko,
                'kn,
                'km,
                'kl,
                'kk,
                'kj,
                'ki,
                'kg,
                'ka,
                'jv,
                'ja,
                'iu,
                'it,
                'is,
                'io,
                'ik,
                'ii,
                'ig,
                'ie,
                'id,
                'ia,
                'hz,
                'hy,
                'hu,
                'ht,
                'hr,
                'ho,
                'hi,
                'he,
                'ha,
                'gv,
                'gl,
                'gd,
                'ga,
                'fy,
                'fr,
                'fo,
                'fj,
                'fi,
                'fa,
                'eu,
                'et,
                'es,
                'eo,
                'en,
                'el,
                'ee,
                'dz,
                'de,
                'da,
                'cy,
                'cv,
                'cu,
                'cs,
                'cr,
                'co,
                'ch,
                'ce,
                'ca,
                'bs,
                'br,
                'bo,
                'bn,
                'bm,
                'bi,
                'bh,
                'bg,
                'be,
                'ba,
                'az,
                'ay,
                'av,
                'as,
                'ar,
                'an,
                'am,
                'ak,
                'af,
                'ae,
                'ab,
                'aa
              |]
              | doc "This field can be either null or a valid ISO 639 language code."
              | optional,
            password | String,
            username | String,
            version | std.number.Integer | js2n.number.Minimum 1 | optional,
          },
      "definitions.collection-files" =
        Array (
            std.contract.any_of
              [
                std.contract.Sequence
                  [
                    refs."definitions.legacy-default-collection-path",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [
                    refs."definitions.kometa-default-collection-path",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [ refs."definitions.file-path", { _ | Dyn } ],
                std.contract.Sequence
                  [
                    refs."definitions.file-path-collection-with-template-variables",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [ refs."definitions.folder-path", { _ | Dyn } ],
                std.contract.Sequence
                  [ refs."definitions.url-path", { _ | Dyn } ],
                std.contract.Sequence
                  [
                    refs."definitions.url-path-collection-with-template-variables",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [ refs."definitions.git-path", { _ | Dyn } ],
                std.contract.Sequence
                  [
                    refs."definitions.git-path-collection-with-template-variables",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [ refs."definitions.repo-path", { _ | Dyn } ],
                std.contract.Sequence
                  [
                    refs."definitions.repo-path-collection-with-template-variables",
                    { _ | Dyn }
                  ]
              ]
          ),
      "definitions.file-path" =
        {
            asset_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
                ]
              | optional,
            file | String,
            schedule | String | optional,
          },
      "definitions.file-path-collection-with-template-variables" =
        {
            asset_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
                ]
              | optional,
            file | String,
            schedule | String | optional,
            template_variables
              | refs."definitions.template-variables-collections"
              | { _ | Dyn }
              | optional,
          },
      "definitions.file-path-overlay-with-template-variables" =
        {
            asset_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
                ]
              | optional,
            file | String,
            schedule | String | optional,
            template_variables
              | refs."definitions.template-variables-overlays"
              | { _ | Dyn }
              | optional,
          },
      "definitions.folder-path" =
        {
            asset_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
                ]
              | optional,
            folder | String,
            schedule | String | optional,
          },
      "definitions.git-path" =
        {
            asset_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
                ]
              | optional,
            git | String,
            schedule | String | optional,
          },
      "definitions.git-path-collection-with-template-variables" =
        {
            asset_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
                ]
              | optional,
            git | String,
            schedule | String | optional,
            template_variables
              | refs."definitions.template-variables-collections"
              | { _ | Dyn }
              | optional,
          },
      "definitions.git-path-overlay-with-template-variables" =
        {
            asset_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
                ]
              | optional,
            git | String,
            schedule | String | optional,
            template_variables
              | refs."definitions.template-variables-overlays"
              | { _ | Dyn }
              | optional,
          },
      "definitions.gotify-api" = { token | String, url | String, },
      "definitions.kometa-default-collection-path" =
        {
            asset_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
                ]
              | optional,
            "default"
              | std.enum.TagOrString
              | [|
                'year,
                'writer,
                'venice,
                'universe,
                'trakt,
                'tmdb,
                'tiff,
                'tautulli,
                'sundance,
                'subtitle_language,
                'studio,
                'streaming,
                'spirit,
                'separator_chart,
                'separator_award,
                'seasonal,
                'sag,
                'resolution,
                'region,
                'razzie,
                'producer,
                'pca,
                'other_chart,
                'oscars,
                'nfr,
                'network,
                'myanimelist,
                'letterboxd,
                'imdb,
                'golden,
                'genre,
                'franchise,
                'flixpatrol,
                'emmy,
                'director,
                'decade,
                'country,
                'continent,
                'content_rating_us,
                'content_rating_uk,
                'content_rating_mal,
                'content_rating_nz,
                'content_rating_de,
                'content_rating_cs,
                'content_rating_au,
                'collectionless,
                'choice,
                'cesar,
                'cannes,
                'berlinale,
                'basic,
                'based,
                'bafta,
                'audio_language,
                'aspect,
                'anilist,
                'actor
              |],
            schedule | String | optional,
            template_variables
              | refs."definitions.template-variables-collections"
              | { _ | Dyn }
              | optional,
          },
      "definitions.kometa-default-overlay-path" =
        {
            asset_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
                ]
              | optional,
            "default"
              | std.enum.TagOrString
              | [|
                'video_format,
                'versions,
                'studio,
                'streaming,
                'status,
                'runtimes,
                'ribbon,
                'resolution,
                'ratings,
                'network,
                'mediastinger,
                'languages,
                'flixpatrol,
                'language_count,
                'episode_info,
                'direct_play,
                'content_rating_us_show,
                'content_rating_us_movie,
                'content_rating_uk,
                'content_rating_nz,
                'content_rating_de,
                'content_rating_au,
                'commonsense,
                'audio_codec,
                'aspect
              |]
              | optional,
            reapply_overlay | Bool | optional,
            reapply_overlays | Bool | optional,
            remove_overlays | Bool | optional,
            reset_overlays
              | std.enum.TagOrString
              | [| 'plex, 'tmdb |]
              | optional,
            schedule | String | optional,
            template_variables
              | refs."definitions.template-variables-overlays"
              | { _ | Dyn }
              | optional,
          },
      "definitions.legacy-default-collection-path" =
        {
            asset_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
                ]
              | optional,
            pmm
              | std.enum.TagOrString
              | [|
                'year,
                'writer,
                'venice,
                'universe,
                'trakt,
                'tmdb,
                'tiff,
                'tautulli,
                'sundance,
                'subtitle_language,
                'studio,
                'streaming,
                'spirit,
                'separator_chart,
                'separator_award,
                'seasonal,
                'sag,
                'resolution,
                'region,
                'razzie,
                'producer,
                'pca,
                'other_chart,
                'oscars,
                'nfr,
                'network,
                'myanimelist,
                'letterboxd,
                'imdb,
                'golden,
                'genre,
                'franchise,
                'flixpatrol,
                'emmy,
                'director,
                'decade,
                'country,
                'continent,
                'content_rating_us,
                'content_rating_uk,
                'content_rating_mal,
                'content_rating_nz,
                'content_rating_de,
                'content_rating_cs,
                'content_rating_au,
                'collectionless,
                'choice,
                'cesar,
                'cannes,
                'berlinale,
                'basic,
                'based,
                'bafta,
                'audio_language,
                'aspect,
                'anilist,
                'actor
              |],
            schedule | String | optional,
            template_variables
              | refs."definitions.template-variables-collections"
              | { _ | Dyn }
              | optional,
          },
      "definitions.legacy-default-overlay-path" =
        {
            asset_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
                ]
              | optional,
            pmm
              | std.enum.TagOrString
              | [|
                'video_format,
                'versions,
                'studio,
                'streaming,
                'status,
                'runtimes,
                'ribbon,
                'resolution,
                'ratings,
                'network,
                'mediastinger,
                'languages,
                'flixpatrol,
                'language_count,
                'episode_info,
                'direct_play,
                'content_rating_us_show,
                'content_rating_us_movie,
                'content_rating_uk,
                'content_rating_nz,
                'content_rating_de,
                'content_rating_au,
                'commonsense,
                'audio_codec,
                'aspect
              |],
            reapply_overlay | Bool | optional,
            reapply_overlays | Bool | optional,
            remove_overlays | Bool | optional,
            reset_overlays
              | std.enum.TagOrString
              | [| 'plex, 'tmdb |]
              | optional,
            schedule | String | optional,
            template_variables
              | refs."definitions.template-variables-overlays"
              | { _ | Dyn }
              | optional,
          },
      "definitions.library-section" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^(?!plex|tmdb|tautulli|webhooks|omdb|mdblist|notifiarr|gotify|ntfy|anidb|radarr|sonarr|trakt|mal).+$" =
                      std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              collection_files
                                | refs."definitions.collection-files"
                                | Array Dyn
                                | doc "The collection_files attribute is used to define Collection Files by specifying the path type and path of the files that will be executed against the parent library."
                                | optional,
                              library_name
                                | String
                                | doc m%"
                                  Used to specify the Library's name.
                                  Required only when trying to use multiple servers with the same name. Each library that the user wants Kometa to interact with must be documented with a library attribute. A library attribute is represented by the mapping name (i.e. Movies or TV Shows), this must have a unique name that correlates with a library of the same name within the Plex Media Server. In the situation that two servers are being connected to which both have libraries of the same name, the library_name attribute can be utilized to specify the real Library Name, whilst the library attribute's mapping name can be made into a placeholder.
                                "%
                                | optional,
                              metadata_files
                                | refs."definitions.metadata-files"
                                | Array Dyn
                                | doc "The metadata_files attribute is used to define Metadata Files by specifying the path of the files that will be executed against the parent library."
                                | optional,
                              metadata_path
                                | refs."definitions.metadata-path"
                                | Array Dyn
                                | doc m%"
                                  DEPRECATED! Use: metadata_files.
                                  The metadata_path attribute is used to define Metadata Files by specifying the path of the files that will be executed against the parent library.
                                "%
                                | optional,
                              operations
                                | refs."definitions.operations"
                                | { _ | Dyn }
                                | doc "Used to specify Library Operations to run."
                                | optional,
                              overlay_files
                                | refs."definitions.overlay-files"
                                | Array Dyn
                                | doc "The overlay_files attribute is used to define Overlay Files by specifying the path type and path of the files that will be executed against the parent library."
                                | optional,
                              overlay_path
                                | refs."definitions.overlay-path"
                                | Array Dyn
                                | doc m%"
                                  DEPRECATED! Use: overlay_files.
                                  The overlay_path attribute is used to define Overlay Files by specifying the path type and path of the files that will be executed against the parent library.
                                "%
                                | optional,
                              plex
                                | refs."definitions.plex-server-lib"
                                | { _ | Dyn }
                                | optional,
                              radarr
                                | refs."definitions.radarr-api-lib"
                                | { _ | Dyn }
                                | optional,
                              reapply_overlays
                                | Bool
                                | doc m%"
                                  Used to reapply overlays from this library only. This will reapply overlays to every item in your library.
                                  When set to true, this will reapply all overlays on each run even if there is no need to do so, which will result in image bloat.
                                "%
                                | optional,
                              remove_overlays
                                | Bool
                                | doc m%"
                                  Used to remove overlays from this library only. 
                                  When set to true, this will remove all overlays from your library every run, but will not delete the overlaid images from your system, resulting in image bloat.
                                "%
                                | optional,
                              report_path
                                | String
                                | doc m%"
                                  Location to save the YAML Report file for a library.
                                  The report_path attribute is used to define where to save the YAML Report file. This file is used to store information about what media is added, removed, filtered, and missing from the Plex library compared to what is expected from the Collection, Metadata, Overlay or Playlist file. If your Collection file creates a collection with Movie 1, Movie 2 and Movie 3 but your Plex library only has Movie 1 and Movie 3, then the missing YAML file will be updated to inform the user that Movie 2 was missing from the library.
                                "%
                                | optional,
                              reset_overlays
                                | std.enum.TagOrString
                                | [| 'plex, 'tmdb |]
                                | doc m%"
                                  Used to reset overlays from this library only. This will reset overlays to every item in your library to your source choice. This will use the reset image when overlaying items in your library.
                                  This will reset all posters to the desired source on each run and will reapply all overlays on each run, which will result in image bloat.
                                "%
                                | optional,
                              run_order
                                | js2n.array.UniqueItems
                                | Array (
                                  std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [|
                                        'overlays,
                                        'operations,
                                        'metadata,
                                        'collections
                                      |]
                                    ]
                                )
                                | optional,
                              schedule
                                | String
                                | doc "Used to schedule when a library is run using the schedule options."
                                | optional,
                              settings
                                | refs."definitions.settings"
                                | { _ | Dyn }
                                | optional,
                              sonarr
                                | refs."definitions.sonarr-api-lib"
                                | { _ | Dyn }
                                | optional,
                              tautulli
                                | refs."definitions.tautulli-api"
                                | { _ | Dyn }
                                | optional,
                              template_variables
                                | refs."definitions.template-variables-library"
                                | { _ | Dyn }
                                | optional,
                            },
                            Array Dyn
                          ],
                    "^schedule_.*$" = String,
                  },
              properties = {},
              required = {},
            },
      "definitions.mal-api" =
        { client_id | String, client_secret | String, .. },
      "definitions.mdblist-api" =
        {
            apikey | String,
            cache_expiration
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "An integer greater than 0 in days",
          },
      "definitions.metadata-files" =
        Array (
            std.contract.any_of
              [
                std.contract.Sequence
                  [ refs."definitions.file-path", { _ | Dyn } ],
                std.contract.Sequence
                  [ refs."definitions.folder-path", { _ | Dyn } ],
                std.contract.Sequence
                  [ refs."definitions.url-path", { _ | Dyn } ],
                std.contract.Sequence
                  [ refs."definitions.git-path", { _ | Dyn } ],
                std.contract.Sequence
                  [ refs."definitions.repo-path", { _ | Dyn } ]
              ]
          ),
      "definitions.metadata-path" =
        Array (
            std.contract.any_of
              [
                std.contract.Sequence
                  [
                    refs."definitions.legacy-default-collection-path",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [
                    refs."definitions.kometa-default-collection-path",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [ refs."definitions.file-path", { _ | Dyn } ],
                std.contract.Sequence
                  [
                    refs."definitions.file-path-collection-with-template-variables",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [ refs."definitions.folder-path", { _ | Dyn } ],
                std.contract.Sequence
                  [ refs."definitions.url-path", { _ | Dyn } ],
                std.contract.Sequence
                  [
                    refs."definitions.url-path-collection-with-template-variables",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [ refs."definitions.git-path", { _ | Dyn } ],
                std.contract.Sequence
                  [
                    refs."definitions.git-path-collection-with-template-variables",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [ refs."definitions.repo-path", { _ | Dyn } ],
                std.contract.Sequence
                  [
                    refs."definitions.repo-path-collection-with-template-variables",
                    { _ | Dyn }
                  ]
              ]
          ),
      "definitions.notifiarr-api" = { apikey | String, },
      "definitions.ntfy-api" =
        { token | String, topic | String, url | String, },
      "definitions.omdb-api" =
        {
            apikey | String,
            cache_expiration
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "An integer greater than 0 in days",
          },
      "definitions.operations" =
        {
            assets_for_all | Bool | optional,
            content_rating_mapper
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    { "^.*$" = js2n.Nullable (js2n.string.Matches "^.*$"), },
                  properties = {},
                  required = {},
                }
              | optional,
            delete_collections
              | {
                configured | Bool | optional,
                ignore_empty_smart_collections | Bool | optional,
                less | std.number.Integer | optional,
                managed | Bool | optional,
                ..
              }
              | optional,
            genre_mapper
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    { "^.*$" = js2n.Nullable (js2n.string.Matches "^.*$"), },
                  properties = {},
                  required = {},
                }
              | optional,
            mass_added_at_update
              | std.enum.TagOrString
              | [|
                'reset,
                'remove,
                'unlock,
                'lock,
                'mal,
                'anidb,
                'mdb,
                'omdb,
                'tvdb,
                'tmdb
              |]
              | optional,
            mass_audience_rating_update
              | std.contract.any_of
                [
                  Number,
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'reset,
                        'remove,
                        'unlock,
                        'lock,
                        'mal,
                        'anidb_score,
                        'anidb_average,
                        'anidb_rating,
                        'mdb_myanimelist,
                        'mdb_letterboxd,
                        'mdb_tmdb,
                        'mdb_tomatoesaudience,
                        'mdb_tomatoes,
                        'mdb_trakt,
                        'mdb_metacriticuser,
                        'mdb_metacritic,
                        'mdb_imdb,
                        'mdb_average,
                        'mdb,
                        'omdb,
                        'trakt_user,
                        'imdb,
                        'tmdb
                      |]
                    ],
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'reset,
                                  'remove,
                                  'unlock,
                                  'lock,
                                  'mal,
                                  'anidb_score,
                                  'anidb_average,
                                  'anidb_rating,
                                  'mdb_myanimelist,
                                  'mdb_letterboxd,
                                  'mdb_tmdb,
                                  'mdb_tomatoesaudience,
                                  'mdb_tomatoes,
                                  'mdb_trakt,
                                  'mdb_metacriticuser,
                                  'mdb_metacritic,
                                  'mdb_imdb,
                                  'mdb_average,
                                  'mdb,
                                  'omdb,
                                  'trakt_user,
                                  'imdb,
                                  'tmdb
                                |]
                              ],
                            Number
                          ]
                      )
                    ]
                ]
              | optional,
            mass_background_update
              | std.enum.TagOrString
              | [| 'unlock, 'lock, 'plex, 'tmdb |]
              | optional,
            mass_collection_mode
              | std.enum.TagOrString
              | [| 'show_items, 'hide_items, 'hide, '"default" |]
              | optional,
            mass_content_rating_update
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'reset,
                          'remove,
                          'unlock,
                          'lock,
                          'mal,
                          'omdb,
                          'mdb_commonsense0,
                          'mdb_commonsense,
                          'mdb
                        |]
                      ],
                    js2n.string.Matches ".*"
                  ]
              )
              | optional,
            mass_critic_rating_update
              | std.contract.any_of
                [
                  Number,
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'reset,
                        'remove,
                        'unlock,
                        'lock,
                        'mal,
                        'anidb_score,
                        'anidb_average,
                        'anidb_rating,
                        'mdb_myanimelist,
                        'mdb_letterboxd,
                        'mdb_tmdb,
                        'mdb_tomatoesaudience,
                        'mdb_tomatoes,
                        'mdb_trakt,
                        'mdb_metacriticuser,
                        'mdb_metacritic,
                        'mdb_imdb,
                        'mdb_average,
                        'mdb,
                        'omdb,
                        'trakt_user,
                        'imdb,
                        'tmdb
                      |]
                    ],
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'reset,
                                  'remove,
                                  'unlock,
                                  'lock,
                                  'mal,
                                  'anidb_score,
                                  'anidb_average,
                                  'anidb_rating,
                                  'mdb_myanimelist,
                                  'mdb_letterboxd,
                                  'mdb_tmdb,
                                  'mdb_tomatoesaudience,
                                  'mdb_tomatoes,
                                  'mdb_trakt,
                                  'mdb_metacriticuser,
                                  'mdb_metacritic,
                                  'mdb_imdb,
                                  'mdb_average,
                                  'mdb,
                                  'omdb,
                                  'trakt_user,
                                  'imdb,
                                  'tmdb
                                |]
                              ],
                            Number
                          ]
                      )
                    ]
                ]
              | optional,
            mass_episode_audience_rating_update
              | std.contract.any_of
                [
                  Number,
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'unlock, 'reset, 'remove, 'lock, 'imdb, 'tmdb |]
                    ],
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'unlock,
                                  'reset,
                                  'remove,
                                  'lock,
                                  'imdb,
                                  'tmdb
                                |]
                              ],
                            Number
                          ]
                      )
                    ]
                ]
              | optional,
            mass_episode_critic_rating_update
              | std.contract.any_of
                [
                  Number,
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'unlock, 'reset, 'remove, 'lock, 'imdb, 'tmdb |]
                    ],
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'unlock,
                                  'reset,
                                  'remove,
                                  'lock,
                                  'imdb,
                                  'tmdb
                                |]
                              ],
                            Number
                          ]
                      )
                    ]
                ]
              | optional,
            mass_episode_user_rating_update
              | std.contract.any_of
                [
                  Number,
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'unlock, 'reset, 'remove, 'lock, 'imdb, 'tmdb |]
                    ],
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'unlock,
                                  'reset,
                                  'remove,
                                  'lock,
                                  'imdb,
                                  'tmdb
                                |]
                              ],
                            Number
                          ]
                      )
                    ]
                ]
              | optional,
            mass_genre_update
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'reset,
                        'remove,
                        'unlock,
                        'lock,
                        'mal,
                        'anidb_0_5,
                        'anidb_1_0,
                        'anidb_1_5,
                        'anidb_2_0,
                        'anidb_2_5,
                        'anidb_3_0,
                        'anidb,
                        'omdb,
                        'imdb,
                        'tvdb,
                        'tmdb
                      |]
                    ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'reset,
                              'remove,
                              'unlock,
                              'lock,
                              'mal,
                              'anidb_0_5,
                              'anidb_1_0,
                              'anidb_1_5,
                              'anidb_2_0,
                              'anidb_2_5,
                              'anidb_3_0,
                              'anidb,
                              'omdb,
                              'imdb,
                              'tvdb,
                              'tmdb
                            |]
                          ],
                        Array String
                      ]
                  )
                ]
              | optional,
            mass_imdb_parental_labels
              | std.enum.TagOrString
              | [| 'severe, 'moderate, 'mild, 'none |]
              | optional,
            mass_original_title_update
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'reset,
                          'remove,
                          'unlock,
                          'lock,
                          'mal_japanese,
                          'mal_english,
                          'mal,
                          'anidb_official,
                          'anidb
                        |]
                      ],
                    js2n.string.Matches ".*"
                  ]
              )
              | optional,
            mass_originally_available_update
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'reset,
                        'remove,
                        'unlock,
                        'lock,
                        'mal,
                        'anidb,
                        'mdb,
                        'omdb,
                        'tvdb,
                        'tmdb
                      |]
                    ],
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'reset,
                              'remove,
                              'unlock,
                              'lock,
                              'mal,
                              'anidb,
                              'mdb,
                              'omdb,
                              'tvdb,
                              'tmdb
                            |]
                          ]
                      )
                    ]
                ]
              | optional,
            mass_poster_update
              | std.enum.TagOrString
              | [| 'unlock, 'lock, 'plex, 'tmdb |]
              | optional,
            mass_studio_update
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'reset, 'remove, 'unlock, 'lock, 'tmdb, 'mal, 'anidb |]
                    ],
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'reset,
                              'remove,
                              'unlock,
                              'lock,
                              'tmdb,
                              'mal,
                              'anidb
                            |]
                          ]
                      )
                    ]
                ]
              | optional,
            mass_user_rating_update
              | std.contract.any_of
                [
                  Number,
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'reset,
                        'remove,
                        'unlock,
                        'lock,
                        'mal,
                        'anidb_score,
                        'anidb_average,
                        'anidb_rating,
                        'mdb_myanimelist,
                        'mdb_letterboxd,
                        'mdb_tmdb,
                        'mdb_tomatoesaudience,
                        'mdb_tomatoes,
                        'mdb_trakt,
                        'mdb_metacriticuser,
                        'mdb_metacritic,
                        'mdb_imdb,
                        'mdb_average,
                        'mdb,
                        'omdb,
                        'trakt_user,
                        'imdb,
                        'tmdb
                      |]
                    ],
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'reset,
                                  'remove,
                                  'unlock,
                                  'lock,
                                  'mal,
                                  'anidb_score,
                                  'anidb_average,
                                  'anidb_rating,
                                  'mdb_myanimelist,
                                  'mdb_letterboxd,
                                  'mdb_tmdb,
                                  'mdb_tomatoesaudience,
                                  'mdb_tomatoes,
                                  'mdb_trakt,
                                  'mdb_metacriticuser,
                                  'mdb_metacritic,
                                  'mdb_imdb,
                                  'mdb_average,
                                  'mdb,
                                  'omdb,
                                  'trakt_user,
                                  'imdb,
                                  'tmdb
                                |]
                              ],
                            Number
                          ]
                      )
                    ]
                ]
              | optional,
            metadata_backup
              | {
                add_blank_entries | Bool | optional,
                exclude
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ js2n.array.UniqueItems, Array String ]
                    ]
                  | optional,
                path | String | optional,
                sync_tags | Bool | optional,
                ..
              }
              | optional,
            radarr_add_all | Bool | optional,
            radarr_remove_by_tag | String | optional,
            remove_title_parentheses | Bool | optional,
            sonarr_add_all | Bool | optional,
            sonarr_remove_by_tag | String | optional,
            split_duplicates | Bool | optional,
            update_blank_track_titles | Bool | optional,
          },
      "definitions.overlay-files" =
        Array (
            std.contract.any_of
              [
                std.contract.Sequence
                  [
                    refs."definitions.legacy-default-overlay-path",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [
                    refs."definitions.kometa-default-overlay-path",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [ refs."definitions.file-path", { _ | Dyn } ],
                std.contract.Sequence
                  [
                    refs."definitions.file-path-overlay-with-template-variables",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [ refs."definitions.folder-path", { _ | Dyn } ],
                std.contract.Sequence
                  [ refs."definitions.url-path", { _ | Dyn } ],
                std.contract.Sequence
                  [
                    refs."definitions.url-path-overlay-with-template-variables",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [ refs."definitions.git-path", { _ | Dyn } ],
                std.contract.Sequence
                  [
                    refs."definitions.git-path-overlay-with-template-variables",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [ refs."definitions.repo-path", { _ | Dyn } ],
                std.contract.Sequence
                  [
                    refs."definitions.repo-path-overlay-with-template-variables",
                    { _ | Dyn }
                  ]
              ]
          ),
      "definitions.overlay-path" =
        Array (
            std.contract.any_of
              [
                std.contract.Sequence
                  [
                    refs."definitions.legacy-default-overlay-path",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [
                    refs."definitions.kometa-default-overlay-path",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [ refs."definitions.file-path", { _ | Dyn } ],
                std.contract.Sequence
                  [
                    refs."definitions.file-path-overlay-with-template-variables",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [ refs."definitions.folder-path", { _ | Dyn } ],
                std.contract.Sequence
                  [ refs."definitions.url-path", { _ | Dyn } ],
                std.contract.Sequence
                  [
                    refs."definitions.url-path-overlay-with-template-variables",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [ refs."definitions.git-path", { _ | Dyn } ],
                std.contract.Sequence
                  [
                    refs."definitions.git-path-overlay-with-template-variables",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [ refs."definitions.repo-path", { _ | Dyn } ],
                std.contract.Sequence
                  [
                    refs."definitions.repo-path-overlay-with-template-variables",
                    { _ | Dyn }
                  ]
              ]
          ),
      "definitions.plex-server" =
        {
            clean_bundles
              | Bool
              | doc "true/false - If 'true', cleans metadata bundles on this Plex server"
              | optional,
            db_cache
              | std.contract.any_of
                [ std.number.Integer, js2n.string.Matches "^$" ]
              | doc "Sets DB Cache value for this Plex server in MB"
              | optional,
            empty_trash
              | Bool
              | doc "true/false - If 'true', empties trash on this Plex server"
              | optional,
            optimize
              | Bool
              | doc "true/false - If 'true', optimizes database on this Plex server"
              | optional,
            timeout
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "Connection timeout in seconds for this Plex server"
              | optional,
            token | String | doc "Admin token for this Plex server",
            url
              | js2n.string.Matches "^(https?)://"
              | doc "URL at which Kometa can connect to your plex server. NOT app.plex.tv",
            verify_ssl
              | Bool
              | doc "Turn SSL Verification on or off for only Plex."
              | optional,
          },
      "definitions.plex-server-lib" =
        {
            clean_bundles
              | Bool
              | doc "true/false - If 'true', cleans metadata bundles on this Plex server"
              | optional,
            db_cache
              | std.contract.any_of
                [ std.number.Integer, js2n.string.Matches "^$" ]
              | doc "Sets DB Cache value for this Plex server in MB"
              | optional,
            empty_trash
              | Bool
              | doc "true/false - If 'true', empties trash on this Plex server"
              | optional,
            optimize
              | Bool
              | doc "true/false - If 'true', optimizes database on this Plex server"
              | optional,
            timeout
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "Connection timeout in seconds for this Plex server"
              | optional,
            token | String | doc "Admin token for this Plex server" | optional,
            url
              | js2n.string.Matches "^(https?)://"
              | doc "URL at which Kometa can connect to this plex server.  NOT app.plex.tv"
              | optional,
          },
      "definitions.radarr-api" =
        {
            add_existing | Bool | optional,
            add_missing | Bool | optional,
            availability
              | std.enum.TagOrString
              | [| 'db, 'released, 'cinemas, 'announced |],
            ignore_cache | Bool | optional,
            monitor | Bool | optional,
            monitor_existing | Bool | optional,
            plex_path | js2n.Nullable String | optional,
            quality_profile | String | optional,
            radarr_path | js2n.Nullable String | optional,
            root_folder_path | String,
            search | Bool | optional,
            tag | js2n.Nullable String | optional,
            token | String,
            upgrade_existing | Bool | optional,
            url | js2n.string.Matches "^(https?)://",
          },
      "definitions.radarr-api-lib" =
        {
            add_existing | Bool | optional,
            add_missing | Bool | optional,
            availability
              | std.enum.TagOrString
              | [| 'db, 'released, 'cinemas, 'announced |]
              | optional,
            ignore_cache | Bool | optional,
            monitor | Bool | optional,
            monitor_existing | Bool | optional,
            plex_path | js2n.Nullable String | optional,
            quality_profile | String | optional,
            radarr_path | js2n.Nullable String | optional,
            root_folder_path | String | optional,
            search | Bool | optional,
            tag | js2n.Nullable String | optional,
            token | String | optional,
            upgrade_existing | Bool | optional,
            url | js2n.string.Matches "^(https?)://" | optional,
          },
      "definitions.repo-path" =
        {
            asset_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
                ]
              | optional,
            repo | String,
            schedule | String | optional,
          },
      "definitions.repo-path-collection-with-template-variables" =
        {
            asset_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
                ]
              | optional,
            repo | String,
            schedule | String | optional,
            template_variables
              | refs."definitions.template-variables-collections"
              | { _ | Dyn }
              | optional,
          },
      "definitions.repo-path-overlay-with-template-variables" =
        {
            asset_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
                ]
              | optional,
            repo | String,
            schedule | String | optional,
            template_variables
              | refs."definitions.template-variables-overlays"
              | { _ | Dyn }
              | optional,
          },
      "definitions.settings" =
        {
            asset_depth
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc m%"
                Used to control the depth of search in the asset directory.
                At each asset level, Kometa will look for either medianame.ext [such as Star Wars.png] or a dedicated folder containing poster.ext. i.e. <path_to_assets>/Star Wars/poster.png and <path_to_assets>/Star Wars.png are both asset depth 0, whilst <path_to_assets>/Movies/Star Wars/poster.png and <path_to_assets>/Movies/Star Wars.png are both asset level 1.
              "%
              | optional,
            asset_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
                ]
              | doc m%"
                Used to define where local assets are located.
                Specify the directories where assets (posters, backgrounds, etc) are located.
              "%
              | optional,
            asset_folders
              | Bool
              | doc m%"
                Used to control the asset directory folder structure.
                While true, Kometa will search the asset_directory for a dedicated folder per item vs while false will look for an image.
              "%
              | optional,
            cache
              | Bool
              | doc m%"
                Used to control Kometa's cache database.
                Allow Kometa to create and maintain a local cache database for faster subsequent processing. The cache file is created in the same directory as the configuration file.
              "%
              | optional,
            cache_expiration
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc m%"
                Used to control how long data is cached for.
                Set the number of days before each cache mapping expires and has to be re-cached. An integer greater than 0 in days
              "%
              | optional,
            create_asset_folders
              | Bool
              | doc m%"
                Used to automatically create asset folders when none exist.
                Whilst searching for assets, if an asset folder cannot be found within the asset_directory one will be created. Asset Searches can happen in a number of ways.
              "%
              | optional,
            custom_repo
              | js2n.Nullable String
              | doc m%"
                Used to set up the custom repo file block type.
                Specify where the repo attribute's base is when defining collection_files, metadata_files, playlist_file, and overlay_files.
              "%
              | optional,
            default_collection_order
              | js2n.Enum
                [
                  "added.asc",
                  "added.desc",
                  "alpha",
                  "audience_rating.asc",
                  "audience_rating.desc",
                  "bitrate.asc",
                  "bitrate.desc",
                  "content_rating.asc",
                  "content_rating.desc",
                  "critic_rating.asc",
                  "critic_rating.desc",
                  "custom",
                  "duration.asc",
                  "duration.desc",
                  "originally_available.asc",
                  "originally_available.desc",
                  "plays.asc",
                  "plays.desc",
                  "progress.asc",
                  "progress.desc",
                  "random",
                  "release",
                  "release.asc",
                  "release.desc",
                  "resolution.asc",
                  "resolution.desc",
                  "title.asc",
                  "title.desc",
                  "user_rating.asc",
                  "user_rating.desc",
                  "viewed.asc",
                  "viewed.desc",
                  "year.asc",
                  "year.desc",
                  null
                ]
              | doc m%"
                Used to set the collection_order for every collection run.
                Set the collection_order for every collection run by Kometa unless the collection has a specific collection_order
                TIP: 'custom' cannot be used if more than one builder is being used for the collection (such as imdb_list and trakt_list within the same collection). 
              "%
              | optional,
            delete_below_minimum
              | Bool
              | doc m%"
                Used to delete collections below minimum_items.
                When a collection is run, delete the collection if it is below the minimum number specified by minimum_items.
              "%
              | optional,
            delete_not_scheduled
              | Bool
              | doc m%"
                Used to delete collections not scheduled.
                If a collection is skipped due to it not being scheduled, delete the collection.
              "%
              | optional,
            dimensional_asset_rename
              | Bool
              | doc m%"
                Used to automatically rename asset files based on their dimensions.
                Whilst searching for assets, scan the folders within the asset_directory and if an asset poster (i.e. /ASSET_NAME/poster.ext) was not found, rename the first image found that has a height greater than or equal to its width to poster.ext. If an asset background (i.e. /ASSET_NAME/background.ext), rename the first image found that has a width greater than its height to background.ext.
              "%
              | optional,
            download_url_assets
              | Bool
              | doc m%"
                Used to download url images into the asset directory.
                Whilst searching for assets, download images set within Collection/Metadata/Playlist files( i.e. images set by url_poster or url_background) into the asset folder if none are already present.
              "%
              | optional,
            ignore_ids
              | std.contract.any_of
                [
                  js2n.Null,
                  std.contract.Sequence
                    [ js2n.array.MinItems 1, Array std.number.Integer ],
                  js2n.string.Matches "^\\d{1,8}(\\s*,\\s*\\d{1,8})*$",
                  std.number.Integer
                ]
              | doc m%"
                List of TMDb/TVDb IDs to ignore.
                Set a null, a single TMDb/TVDb ID, or a comma-separated string of TMDb/TVDb IDs to ignore in all collections.
              "%
              | optional,
            ignore_imdb_ids
              | std.contract.any_of
                [
                  js2n.Null,
                  js2n.string.Matches "^(tt\\d{7,8})(,(tt\\d{7,8}))*$",
                  std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      Array (js2n.string.Matches "^tt\\d{7,8}$")
                    ]
                ]
              | doc m%"
                List of IMDb IDs to ignore.
                Set a null, a single IMDb ID, or a comma-separated string of IMDb IDs to ignore in all collections.
              "%
              | optional,
            item_refresh_delay
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc m%"
                Time to wait between each item_refresh.
                Specify the amount of time to wait between each item_refresh of every movie/show in a collection/playlist.
              "%
              | optional,
            minimum_items
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc m%"
                Used to control minimum items requires to build a collection/playlist.
                Set the minimum number of items that must be found in order to build or update a collection/playlist.
              "%
              | optional,
            missing_only_released
              | Bool
              | doc m%"
                Used to filter unreleased items from missing lists.
                Whilst running a collection or playlist, when Kometa handles missing items to either report it to the user, report it to a file, or send it to Radarr/Sonarr all unreleased items will be filtered out.
              "%
              | optional,
            only_filter_missing
              | Bool
              | doc m%"
                Used to have the filter only apply to missing items.
                Only items missing from a collection will be filtered. Only specific filters can filter missing. See Filters for more information.
              "%
              | optional,
            overlay_artwork_filetype
              | std.enum.TagOrString
              | [| 'webp_lossless, 'webp_lossy, 'png, 'jpg |]
              | doc "Used to control the filetype used with overlay images."
              | optional,
            overlay_artwork_quality
              | std.number.Integer
              | js2n.number.Maximum 100
              | js2n.number.Minimum 1
              | doc "Used to control the JPG or Lossy WEBP quality used with overlay images."
              | optional,
            playlist_exclude_users
              | std.contract.any_of
                [
                  js2n.Null,
                  std.contract.Sequence [ js2n.array.MinItems 1, Array String ],
                  js2n.string.Matches "^([^,]+)(,[^,]+)*$"
                ]
              | doc m%"
                Set the default playlist exclude_users.
                Provide a null value, a list of users, or a comma-separated string of users to be excluded in the playlist.
              "%
              | optional,
            playlist_report
              | Bool
              | doc m%"
                Used to print out a playlist report.
                Set playlist_report to true to print out a playlist report at the end of the log.
              "%
              | optional,
            playlist_sync_to_users
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'all |] ],
                  std.contract.Sequence
                    [ js2n.array.MinItems 1, js2n.array.ArrayOf String ],
                  js2n.string.Matches "^([^,]+)(,[^,]+)*$",
                  js2n.Null
                ]
              | doc m%"
                Set the default playlist sync_to_users.
                To Sync a playlist to only yourself, leave playlist_sync_to_users blank/null. Therefore, leaving it blank, 'all', a list of users, or a comma-separated string of users is accepted
              "%
              | optional,
            prioritize_assets
              | Bool
              | doc m%"
                Used to prioritize asset_directory images over all other images types.
                When determining which image to use on an item prioritize the asset_directory over all other images types.
              "%
              | optional,
            run_again_delay
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc m%"
                Used to control the number of minutes to delay running run_again collections.
                Set the number of minutes to delay running run_again collections after daily run is finished. For example, if a collection adds items to Sonarr/Radarr, the library can automatically re-run 'X' amount of time later so that any downloaded items are processed.
              "%
              | optional,
            run_order
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'overlays, 'collections, 'metadata, 'operations |]
                  ]
              )
              | doc m%"
                Used to specify the run order of the library components.
                Specify the run order of the library components [Library Operations, Collection Files and Overlay Files]
              "%
              | optional,
            save_report
              | Bool
              | doc m%"
                Used to save a report YAML file.
                Save a report of the items added, removed, filtered, or missing from collections to a YAML file in the same directory as the file run.
              "%
              | optional,
            show_asset_not_needed
              | Bool
              | doc m%"
                Used to show/hide the update not needed messages.
                Whilst searching for assets, show or hide the update not needed messages.
              "%
              | optional,
            show_filtered
              | Bool
              | doc m%"
                Used to show filtered items.
                List all items which have been filtered out of a collection or playlist (i.e. if it doesn't meet the filter criteria)
              "%
              | optional,
            show_missing
              | Bool
              | doc m%"
                Used to show missing items from collections or playlists.
                While show_missing is true items missing from collections or playlists will be displayed.
              "%
              | optional,
            show_missing_assets
              | Bool
              | doc m%"
                Used to print a message when assets are missing.
                Display missing asset warnings for items, collections, and playlists.
              "%
              | optional,
            show_missing_episode_assets
              | Bool
              | doc m%"
                Used to show any missing episode assets.
                Whilst searching for assets, when scanning for assets for a TV Show, if an Episode Title Card is found (i.e. /ASSET_NAME/S##E##.ext), notify the user of any episodes which do not have an asset image.
              "%
              | optional,
            show_missing_season_assets
              | Bool
              | doc m%"
                 Used to show any missing season assets.
                Whilst searching for assets, when scanning for assets for a TV Show, if Season posters are found (i.e. /ASSET_NAME/Season##.ext), notify the user of any seasons which do not have an asset image.
              "%
              | optional,
            show_options
              | Bool
              | doc m%"
                Used to show attribute options from plex.
                While show_options is true the available options for an attribute when using plex_search, smart_filter or filters will be shown. i.e. a smart_filter on the genre attribute will return all of the attributes within the specified library.
              "%
              | optional,
            show_unconfigured
              | Bool
              | doc m%"
                Used to show collections not in the current run.
                List all collections not configured in the current Kometa run at the end of each run.
              "%
              | optional,
            show_unfiltered
              | Bool
              | doc m%"
                Used to show unfiltered items.
                List all items which make it through a filter into a collection or playlist (i.e. if it MEETS the filter criteria)
              "%
              | optional,
            show_unmanaged
              | Bool
              | doc m%"
                Used to show collections not managed by Kometa.
                List all collections not managed by Kometa at the end of each run.
              "%
              | optional,
            sync_mode
              | std.enum.TagOrString
              | [| 'append, 'sync |]
              | doc m%"
                Used to set the sync_mode for collections and playlists.
                Sets the sync_mode for collections and playlists. Setting the sync_mode directly in a collection or playlist definition will override the sync_mode for that definition.
              "%
              | optional,
            tvdb_language
              | std.enum.TagOrString
              | [|
                'zul,
                'zho,
                'zha,
                'yor,
                'yid,
                'xho,
                'wol,
                'wln,
                'vol,
                'vie,
                'ven,
                'uzb,
                'urd,
                'ukr,
                'uig,
                'twi,
                'tur,
                'tuk,
                'tso,
                'tsn,
                'ton,
                'tir,
                'tha,
                'tgl,
                'tgk,
                'tel,
                'tat,
                'tam,
                'tah,
                'swe,
                'swa,
                'sun,
                'ssw,
                'srp,
                'srd,
                'spa,
                'sot,
                'som,
                'snd,
                'sna,
                'smo,
                'sme,
                'slv,
                'slk,
                'sin,
                'san,
                'sag,
                'rus,
                'run,
                'ron,
                'roh,
                'que,
                'pus,
                'por,
                'pol,
                'pli,
                'pan,
                'oss,
                'orm,
                'ori,
                'oji,
                'oci,
                'nya,
                'nor,
                'nob,
                'nno,
                'nld,
                'nep,
                'ndo,
                'nde,
                'nbl,
                'nav,
                'nau,
                'mya,
                'msa,
                'mri,
                'mon,
                'mlt,
                'mlg,
                'mkd,
                'mar,
                'mal,
                'mah,
                'lug,
                'lub,
                'ltz,
                'lit,
                'lin,
                'lim,
                'lav,
                'lat,
                'lao,
                'kur,
                'kua,
                'kor,
                'kon,
                'kom,
                'kir,
                'kin,
                'kik,
                'khm,
                'kaz,
                'kau,
                'kat,
                'kas,
                'kan,
                'kal,
                'jpn,
                'jav,
                'ita,
                'isl,
                'ipk,
                'ind,
                'ina,
                'ile,
                'iku,
                'iii,
                'ido,
                'ibo,
                'hye,
                'hun,
                'hrv,
                'hmo,
                'hin,
                'her,
                'heb,
                'hau,
                'hat,
                'guj,
                'grn,
                'glv,
                'glg,
                'gle,
                'gla,
                'ful,
                'fry,
                'fra,
                'fin,
                'fij,
                'fas,
                'fao,
                'ewe,
                'eus,
                'est,
                'epo,
                'eng,
                'ell,
                'dzo,
                'div,
                'deu,
                'dan,
                'ces,
                'cre,
                'cos,
                'cor,
                'chv,
                'chu,
                'chi,
                'che,
                'cha,
                'cat,
                'bul,
                'bre,
                'bos,
                'bod,
                'bis,
                'bih,
                'ben,
                'bel,
                'bam,
                'bak,
                'aze,
                'aym,
                'ave,
                'ava,
                'asm,
                'arm,
                'arg,
                'ara,
                'amh,
                'alb,
                'aka,
                'afr,
                'abk,
                'aar
              |]
              | doc m%"
                Specify the language to query TVDb in.
                This field can be either null or a valid ISO 639-2 language code.
              "%
              | optional,
            verify_ssl
              | Bool
              | doc "Turn SSL Verification on or off."
              | optional,
          },
      "definitions.sonarr-api" =
        {
            add_existing | Bool | optional,
            add_missing | Bool | optional,
            cutoff_search | Bool | optional,
            ignore_cache | Bool | optional,
            language_profile | String | optional,
            monitor
              | std.enum.TagOrString
              | [|
                'none,
                'latest,
                'first,
                'pilot,
                'existing,
                'missing,
                'future,
                'all
              |]
              | optional,
            monitor_existing
              | Bool
              | doc m%"
                Ensures all existing shows in collections match your monitor setting.
                Use the sonarr_monitor_existing Sonarr Setting in the collection definition to match the monitor setting per collection.
              "%
              | optional,
            plex_path | js2n.Nullable String | optional,
            quality_profile | String,
            root_folder_path | String,
            search | Bool | optional,
            season_folder | Bool | optional,
            series_type
              | std.enum.TagOrString
              | [| 'anime, 'daily, 'standard |]
              | optional,
            sonarr_path | js2n.Nullable String | optional,
            tag | js2n.Nullable String | optional,
            token | String,
            upgrade_existing | Bool | optional,
            url | js2n.string.Matches "^(https?)://",
          },
      "definitions.sonarr-api-lib" =
        {
            add_existing | Bool | optional,
            add_missing | Bool | optional,
            cutoff_search | Bool | optional,
            ignore_cache | Bool | optional,
            language_profile | String | optional,
            monitor
              | std.enum.TagOrString
              | [|
                'none,
                'latest,
                'first,
                'pilot,
                'existing,
                'missing,
                'future,
                'all
              |]
              | optional,
            monitor_existing
              | Bool
              | doc m%"
                Ensures all existing shows in collections match your monitor setting.
                Use the sonarr_monitor_existing Sonarr Setting in the collection definition to match the monitor setting per collection.
              "%
              | optional,
            plex_path | js2n.Nullable String | optional,
            quality_profile | String | optional,
            root_folder_path | String | optional,
            search | Bool | optional,
            season_folder | Bool | optional,
            series_type
              | std.enum.TagOrString
              | [| 'anime, 'daily, 'standard |]
              | optional,
            sonarr_path | js2n.Nullable String | optional,
            tag | js2n.Nullable String | optional,
            token | String | optional,
            upgrade_existing | Bool | optional,
            url | js2n.string.Matches "^(https?)://" | optional,
          },
      "definitions.tautulli-api" =
        { apikey | String, url | js2n.string.Matches "^(https?)://", },
      "definitions.template-variables-collections" =
        {
            data
              | {
                depth | std.number.Integer | js2n.number.Minimum 1 | optional,
                ending
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [ std.number.Integer, js2n.number.Minimum 1 ],
                      js2n.string.Matches
                        "^(current_year(\\s*-\\s*\\d+)?)$|^(first(\\s*\\+\\s*\\d+)?)$|^(latest(\\s*-\\s*\\d+)?)$"
                    ]
                  | optional,
                increment
                  | std.number.Integer
                  | js2n.number.Minimum 0
                  | optional,
                limit | std.number.Integer | js2n.number.Minimum 1 | optional,
                starting
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [ std.number.Integer, js2n.number.Minimum 0 ],
                      js2n.string.Matches
                        "^(current_year(\\s*-\\s*\\d+)?)$|^(first(\\s*\\+\\s*\\d+)?)$|^(latest(\\s*-\\s*\\d+)?)$"
                    ]
                  | optional,
              }
              | optional,
            style
              | std.enum.TagOrString
              | [|
                'standards,
                '"default",
                'transparent,
                'orig,
                'signature,
                'rainier,
                'diiivoycolor,
                'diiivoy,
                'bw,
                'white,
                'color
              |]
              | optional,
            ..
          },
      "definitions.template-variables-library" =
        {
            collection_mode
              | std.enum.TagOrString
              | [| 'show_items, 'hide_items, 'hide, '"default" |]
              | doc "Controls the collection mode of all collections in a Defaults file."
              | optional,
            language
              | std.enum.TagOrString
              | [|
                'sv,
                'es,
                'nb-no,
                'pt-br,
                'it,
                'de,
                'nl,
                'da,
                'ar,
                'fr,
                'en
              |]
              | doc "Set the language of Collection Names and Summaries that Kometa has been translated to with weblate"
              | optional,
            placeholder_imdb_id
              | js2n.string.Matches "^tt\\d{7,8}$"
              | doc m%"
                Add a placeholder Movie/Show to the Separator to ensure Plex sees a collection with 1 item because 0 item collections can be problematic for Plex.
                Valid for Movie or Show libraries assuming the ID points to an item of the correct type and that its in your library.
              "%
              | optional,
            sep_style
              | std.enum.TagOrString
              | [|
                'tan,
                'stb,
                'sand,
                'salmon,
                'rust,
                'red,
                'purple,
                'plum,
                'pink,
                'orig,
                'orchid,
                'olive,
                'ocean,
                'navy,
                'green,
                'gray,
                'gold,
                'fuchsia,
                'forest,
                'blue,
                'aqua,
                'amethyst
              |]
              | doc "Multiple styles are available for Separators, to match Plex's 'categories' feature."
              | optional,
            ..
          },
      "definitions.template-variables-overlays" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^back_align_.*$" =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'bottom, 'top, 'center, 'right, 'left |]
                          ],
                    "^back_color_.*$" =
                      js2n.string.Matches
                          "^\\#([A-Fa-f0-9]{3}|[A-Fa-f0-9]{4}|[A-Fa-f0-9]{6}|[A-Fa-f0-9]{8})$",
                    "^back_height_.*$" =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.ExclusiveMinimum 0
                          ],
                    "^back_line_color_.*$" =
                      js2n.string.Matches
                          "^\\#([A-Fa-f0-9]{3}|[A-Fa-f0-9]{4}|[A-Fa-f0-9]{6}|[A-Fa-f0-9]{8})$",
                    "^back_line_width_.*$" =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.ExclusiveMinimum 0
                          ],
                    "^back_padding_.*$" =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.ExclusiveMinimum 0
                          ],
                    "^back_radius_.*$" =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.ExclusiveMinimum 0
                          ],
                    "^back_width_.*$" =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.ExclusiveMinimum 0
                          ],
                    "^country_.*$" = js2n.string.Matches "^[A-Z]{2}$",
                    "^file_.*$" = String,
                    "^font_.*$" = String,
                    "^font_color_.*$" =
                      js2n.string.Matches
                          "^\\#([A-Fa-f0-9]{3}|[A-Fa-f0-9]{4}|[A-Fa-f0-9]{6}|[A-Fa-f0-9]{8})$",
                    "^font_size_.*$" =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.ExclusiveMinimum 0
                          ],
                    "^font_style_.*$" =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'Oblique, 'Normal, 'Italic, 'Any |]
                          ],
                    "^git_.*$" = String,
                    "^horizontal_align_.*$" =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'right, 'center, 'left |]
                          ],
                    "^horizontal_offset_.*$" =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 0 ],
                            String
                          ],
                    "^limit_.*$" =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.ExclusiveMinimum 0
                          ],
                    "^location_.*$" =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'zimbabwe,
                              'zambia,
                              'vietnam,
                              'venezuela,
                              'uzbekistan,
                              'uruguay,
                              'united_states,
                              'united_kingdom,
                              'united_arab_emirates,
                              'ukraine,
                              'uganda,
                              'turkmenistan,
                              'turkey,
                              'trinidad_and_tobago,
                              'togo,
                              'thailand,
                              'tanzania,
                              'tajikistan,
                              'taiwan,
                              'switzerland,
                              'sweden,
                              'sri_lanka,
                              'spain,
                              'south_korea,
                              'south_africa,
                              'slovenia,
                              'slovakia,
                              'singapore,
                              'serbia,
                              'senegal,
                              'saudi_arabia,
                              'salvador,
                              'rwanda,
                              'russia,
                              'romania,
                              'qatar,
                              'portugal,
                              'poland,
                              'philippines,
                              'peru,
                              'paraguay,
                              'papua_new_guinea,
                              'panama,
                              'pakistan,
                              'oman,
                              'norway,
                              'north_macedonia,
                              'nigeria,
                              'niger,
                              'nicaragua,
                              'new_zealand,
                              'netherlands,
                              'namibia,
                              'mozambique,
                              'morocco,
                              'montenegro,
                              'mongolia,
                              'moldova,
                              'mexico,
                              'malta,
                              'mali,
                              'maldives,
                              'malaysia,
                              'luxembourg,
                              'lithuania,
                              'lebanon,
                              'latvia,
                              'laos,
                              'kyrgyzstan,
                              'kuwait,
                              'kenya,
                              'kazakhstan,
                              'jordan,
                              'japan,
                              'jamaica,
                              'ivory_coast,
                              'italy,
                              'israel,
                              'ireland,
                              'indonesia,
                              'india,
                              'iceland,
                              'hungary,
                              'hong_kong,
                              'honduras,
                              'haiti,
                              'guinea_bissau,
                              'guatemala,
                              'greece,
                              'ghana,
                              'germany,
                              'gabon,
                              'france,
                              'finland,
                              'estonia,
                              'egypt,
                              'ecuador,
                              'dominican_republic,
                              'denmark,
                              'czech_republic,
                              'cyprus,
                              'croatia,
                              'costa_rica,
                              'colombia,
                              'chile,
                              'canada,
                              'cambodia,
                              'burkina_faso,
                              'bulgaria,
                              'brazil,
                              'botswana,
                              'bosnia_and_herzegovina,
                              'bolivia,
                              'benin,
                              'belize,
                              'belgium,
                              'belarus,
                              'bangladesh,
                              'bahrain,
                              'bahamas,
                              'azerbaijan,
                              'austria,
                              'australia,
                              'armenia,
                              'argentina,
                              'albania,
                              'world
                            |]
                          ],
                    "^rating\\d+_.*$" = String,
                    "^regex_.*$" = String,
                    "^repo_.*$" = String,
                    "^stroke_color_.*$" =
                      js2n.string.Matches
                          "^\\#([A-Fa-f0-9]{3}|[A-Fa-f0-9]{4}|[A-Fa-f0-9]{6}|[A-Fa-f0-9]{8})$",
                    "^stroke_width_.*$" =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.ExclusiveMinimum 0
                          ],
                    "^text_.*$" = String,
                    "^time_window_.*$" =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'last_year,
                              'this_year,
                              'last_month,
                              'this_month,
                              'last_week,
                              'this_week,
                              'yesterday,
                              'today
                            |]
                          ],
                    "^url_.*$" = js2n.string.Matches "^(https?)://",
                    "^use_.*$" = Bool,
                    "^vertical_align_.*$" =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'bottom, 'center, 'top |]
                          ],
                    "^vertical_offset_.*$" =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 0 ],
                            String
                          ],
                    "^weight_.*$" = std.number.Integer,
                  },
              properties =
                {
                    addon_offset =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.ExclusiveMinimum 0
                          ],
                    addon_position =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'right, 'bottom, 'top, 'left |]
                          ],
                    back_align =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'bottom, 'top, 'center, 'right, 'left |]
                          ],
                    back_color =
                      js2n.string.Matches
                          "^\\#([A-Fa-f0-9]{3}|[A-Fa-f0-9]{4}|[A-Fa-f0-9]{6}|[A-Fa-f0-9]{8})$",
                    back_height =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.ExclusiveMinimum 0
                          ],
                    back_line_color =
                      js2n.string.Matches
                          "^\\#([A-Fa-f0-9]{3}|[A-Fa-f0-9]{4}|[A-Fa-f0-9]{6}|[A-Fa-f0-9]{8})$",
                    back_line_width =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.ExclusiveMinimum 0
                          ],
                    back_padding =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.ExclusiveMinimum 0
                          ],
                    back_radius =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.ExclusiveMinimum 0
                          ],
                    back_width =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.ExclusiveMinimum 0
                          ],
                    builder_level =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'episode, 'season, 'show |]
                          ],
                    file = String,
                    final_name = String,
                    flag_alignment =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'right, 'left |] ],
                    font = String,
                    font_color =
                      js2n.string.Matches
                          "^\\#([A-Fa-f0-9]{3}|[A-Fa-f0-9]{4}|[A-Fa-f0-9]{6}|[A-Fa-f0-9]{8})$",
                    font_size =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.ExclusiveMinimum 0
                          ],
                    font_style =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'Oblique, 'Normal, 'Italic, 'Any |]
                          ],
                    git = String,
                    group_alignment =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'vertical, 'horizontal |]
                          ],
                    hide_text = Bool,
                    horizontal_align =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'right, 'center, 'left |]
                          ],
                    horizontal_offset =
                      std.contract.any_of [ std.number.Integer, String ],
                    horizontal_position =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'right2,
                              'right,
                              'center_right,
                              'center_left,
                              'center,
                              'left2,
                              'left
                            |]
                          ],
                    horizontal_spacing = std.number.Integer,
                    initial_horizontal_align =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'right, 'center, 'left |]
                          ],
                    initial_horizontal_offset = std.number.Integer,
                    initial_vertical_align =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'bottom, 'center, 'top |]
                          ],
                    initial_vertical_offset = std.number.Integer,
                    languages =
                      std.contract.Sequence
                          [
                            js2n.array.UniqueItems,
                            Array (js2n.string.Matches "^[a-z]{2}$")
                          ],
                    last =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.ExclusiveMinimum 0
                          ],
                    limit =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.ExclusiveMinimum 0
                          ],
                    location =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'zimbabwe,
                              'zambia,
                              'vietnam,
                              'venezuela,
                              'uzbekistan,
                              'uruguay,
                              'united_states,
                              'united_kingdom,
                              'united_arab_emirates,
                              'ukraine,
                              'uganda,
                              'turkmenistan,
                              'turkey,
                              'trinidad_and_tobago,
                              'togo,
                              'thailand,
                              'tanzania,
                              'tajikistan,
                              'taiwan,
                              'switzerland,
                              'sweden,
                              'sri_lanka,
                              'spain,
                              'south_korea,
                              'south_africa,
                              'slovenia,
                              'slovakia,
                              'singapore,
                              'serbia,
                              'senegal,
                              'saudi_arabia,
                              'salvador,
                              'rwanda,
                              'russia,
                              'romania,
                              'qatar,
                              'portugal,
                              'poland,
                              'philippines,
                              'peru,
                              'paraguay,
                              'papua_new_guinea,
                              'panama,
                              'pakistan,
                              'oman,
                              'norway,
                              'north_macedonia,
                              'nigeria,
                              'niger,
                              'nicaragua,
                              'new_zealand,
                              'netherlands,
                              'namibia,
                              'mozambique,
                              'morocco,
                              'montenegro,
                              'mongolia,
                              'moldova,
                              'mexico,
                              'malta,
                              'mali,
                              'maldives,
                              'malaysia,
                              'luxembourg,
                              'lithuania,
                              'lebanon,
                              'latvia,
                              'laos,
                              'kyrgyzstan,
                              'kuwait,
                              'kenya,
                              'kazakhstan,
                              'jordan,
                              'japan,
                              'jamaica,
                              'ivory_coast,
                              'italy,
                              'israel,
                              'ireland,
                              'indonesia,
                              'india,
                              'iceland,
                              'hungary,
                              'hong_kong,
                              'honduras,
                              'haiti,
                              'guinea_bissau,
                              'guatemala,
                              'greece,
                              'ghana,
                              'germany,
                              'gabon,
                              'france,
                              'finland,
                              'estonia,
                              'egypt,
                              'ecuador,
                              'dominican_republic,
                              'denmark,
                              'czech_republic,
                              'cyprus,
                              'croatia,
                              'costa_rica,
                              'colombia,
                              'chile,
                              'canada,
                              'cambodia,
                              'burkina_faso,
                              'bulgaria,
                              'brazil,
                              'botswana,
                              'bosnia_and_herzegovina,
                              'bolivia,
                              'benin,
                              'belize,
                              'belgium,
                              'belarus,
                              'bangladesh,
                              'bahrain,
                              'bahamas,
                              'azerbaijan,
                              'austria,
                              'australia,
                              'armenia,
                              'argentina,
                              'albania,
                              'world
                            |]
                          ],
                    minimum = std.number.Integer,
                    offset =
                      std.contract.Sequence
                          [ std.number.Integer, js2n.number.Minimum 0 ],
                    originals_only = Bool,
                    overlay_limit =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 5,
                            js2n.number.Minimum 1
                          ],
                    position =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'right, 'left |] ],
                    post_nr_text = String,
                    post_text = String,
                    pre_nr_text = String,
                    pre_text = String,
                    rating1 =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'user, 'audience, 'critic |]
                          ],
                    rating1_font = String,
                    rating1_font_size =
                      std.contract.Sequence
                          [ std.number.Integer, js2n.number.Minimum 1 ],
                    rating1_image =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'star,
                              'mdb,
                              'mal,
                              'trakt,
                              'rt_tomato,
                              'rt_popcorn,
                              'metacritic,
                              'tmdb,
                              'letterboxd,
                              'imdb,
                              'anidb
                            |]
                          ],
                    rating2 =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'user, 'audience, 'critic |]
                          ],
                    rating2_font = String,
                    rating2_font_size =
                      std.contract.Sequence
                          [ std.number.Integer, js2n.number.Minimum 1 ],
                    rating2_image =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'star,
                              'mdb,
                              'mal,
                              'trakt,
                              'rt_tomato,
                              'rt_popcorn,
                              'metacritic,
                              'tmdb,
                              'letterboxd,
                              'imdb,
                              'anidb
                            |]
                          ],
                    rating3 =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'user, 'audience, 'critic |]
                          ],
                    rating3_font = String,
                    rating3_font_size =
                      std.contract.Sequence
                          [ std.number.Integer, js2n.number.Minimum 1 ],
                    rating3_image =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'star,
                              'mdb,
                              'mal,
                              'trakt,
                              'rt_tomato,
                              'rt_popcorn,
                              'metacritic,
                              'tmdb,
                              'letterboxd,
                              'imdb,
                              'anidb
                            |]
                          ],
                    rating_alignment =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'horizontal, 'vertical |]
                          ],
                    reapply_overlays = Bool,
                    region =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'pt-br, 'it, 'fr, 'es, 'de, 'da, 'ca, 'uk, 'us |]
                          ],
                    remove_overlays = Bool,
                    repo = String,
                    reset_overlays =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'plex, 'tmdb |] ],
                    scale_height =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                std.number.Integer,
                                js2n.number.ExclusiveMinimum 1
                              ],
                            String
                          ],
                    scale_width =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                std.number.Integer,
                                js2n.number.ExclusiveMinimum 1
                              ],
                            String
                          ],
                    size =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'big, 'small |] ],
                    stroke_color =
                      js2n.string.Matches
                          "^\\#([A-Fa-f0-9]{3}|[A-Fa-f0-9]{4}|[A-Fa-f0-9]{6}|[A-Fa-f0-9]{8})$",
                    stroke_width =
                      std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.ExclusiveMinimum 0
                          ],
                    style =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'white,
                              'color,
                              'gray,
                              'yellow,
                              'black,
                              'red,
                              'half,
                              'square,
                              'round,
                              'bigger,
                              'standard,
                              'compact
                            |]
                          ],
                    text = String,
                    time_window =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'last_year,
                              'this_year,
                              'last_month,
                              'this_month,
                              'last_week,
                              'this_week,
                              'yesterday,
                              'today
                            |]
                          ],
                    url = js2n.string.Matches "^(https?)://",
                    use_edition = Bool,
                    use_lowercase = Bool,
                    use_resolution = Bool,
                    use_subtitles = Bool,
                    vertical_align =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'bottom, 'center, 'top |]
                          ],
                    vertical_offset =
                      std.contract.any_of [ std.number.Integer, String ],
                    vertical_position =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'bottom3,
                              'bottom2,
                              'bottom,
                              'center_bottom,
                              'center_top,
                              'center,
                              'top3,
                              'top2,
                              'top
                            |]
                          ],
                    vertical_spacing = std.number.Integer,
                  },
              required = {},
            },
      "definitions.tmdb-api" =
        {
            apikey
              | String
              | doc "API Key to connect to TMDb; REQUIRED for the script to run",
            cache_expiration
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "An integer greater than 0 in days"
              | optional,
            language
              | std.enum.TagOrString
              | [|
                'zu,
                'zh,
                'za,
                'yo,
                'yi,
                'xh,
                'wo,
                'wa,
                'vo,
                'vi,
                'uz,
                'ur,
                'uk,
                'ug,
                'tw,
                'tt,
                'ts,
                'tr,
                'to,
                'tn,
                'tl,
                'tk,
                'ti,
                'th,
                'tg,
                'te,
                'ta,
                'sw,
                'sv,
                'su,
                'st,
                'ss,
                'sr,
                'sq,
                'so,
                'sn,
                'sm,
                'sl,
                'sk,
                'si,
                'sg,
                'se,
                'rw,
                'ru,
                'ro,
                'rn,
                'rm,
                'qu,
                'pt,
                'ps,
                'pl,
                'pi,
                'pa,
                'os,
                'or,
                'om,
                'oj,
                'oc,
                'no,
                'nn,
                'nl,
                'ne,
                'nd,
                'nb,
                'mt,
                'ms,
                'mr,
                'mo,
                'mn,
                'ml,
                'mk,
                'mi,
                'mh,
                'mg,
                'lv,
                'lu,
                'lt,
                'lo,
                'ln,
                'li,
                'lg,
                'lb,
                'la,
                'ky,
                'kw,
                'kv,
                'ku,
                'ks,
                'kr,
                'ko,
                'kn,
                'km,
                'kl,
                'kk,
                'kj,
                'ki,
                'kg,
                'ka,
                'jv,
                'ja,
                'iu,
                'it,
                'is,
                'io,
                'ik,
                'ii,
                'ig,
                'ie,
                'id,
                'ia,
                'hz,
                'hy,
                'hu,
                'ht,
                'hr,
                'ho,
                'hi,
                'he,
                'ha,
                'gv,
                'gl,
                'gd,
                'ga,
                'fy,
                'fr,
                'fo,
                'fj,
                'fi,
                'fa,
                'eu,
                'et,
                'es,
                'eo,
                'en,
                'el,
                'ee,
                'dz,
                'de,
                'da,
                'cy,
                'cv,
                'cu,
                'cs,
                'cr,
                'co,
                'ch,
                'ce,
                'ca,
                'bs,
                'br,
                'bo,
                'bn,
                'bm,
                'bi,
                'bh,
                'bg,
                'be,
                'ba,
                'az,
                'ay,
                'av,
                'as,
                'ar,
                'an,
                'am,
                'ak,
                'af,
                'ae,
                'ab,
                'aa
              |]
              | doc "This field can be either null or a valid ISO 639 language code."
              | optional,
            region
              | std.enum.TagOrString
              | [|
                'ZW,
                'ZR,
                'ZM,
                'ZA,
                'YU,
                'YT,
                'YE,
                'XK,
                'XI,
                'XG,
                'XC,
                'WS,
                'WF,
                'VU,
                'VN,
                'VI,
                'VG,
                'VE,
                'VC,
                'VA,
                'UZ,
                'UY,
                'US,
                'UM,
                'UG,
                'UA,
                'TZ,
                'TW,
                'TV,
                'TT,
                'TR,
                'TP,
                'TO,
                'TN,
                'TM,
                'TL,
                'TK,
                'TJ,
                'TH,
                'TG,
                'TF,
                'TD,
                'TC,
                'SZ,
                'SY,
                'SV,
                'SU,
                'ST,
                'SS,
                'SR,
                'SO,
                'SN,
                'SM,
                'SL,
                'SK,
                'SJ,
                'SI,
                'SH,
                'SG,
                'SE,
                'SD,
                'SC,
                'SB,
                'SA,
                'RW,
                'RU,
                'RS,
                'RO,
                'RE,
                'QA,
                'PY,
                'PW,
                'PT,
                'PS,
                'PR,
                'PN,
                'PM,
                'PL,
                'PK,
                'PH,
                'PG,
                'PF,
                'PE,
                'PA,
                'OM,
                'NZ,
                'NU,
                'NR,
                'NP,
                'NO,
                'NL,
                'NI,
                'NG,
                'NF,
                'NE,
                'NC,
                'NA,
                'MZ,
                'MY,
                'MX,
                'MW,
                'MV,
                'MU,
                'MT,
                'MS,
                'MR,
                'MQ,
                'MP,
                'MO,
                'MN,
                'MM,
                'ML,
                'MK,
                'MH,
                'MG,
                'ME,
                'MD,
                'MC,
                'MA,
                'LY,
                'LV,
                'LU,
                'LT,
                'LS,
                'LR,
                'LK,
                'LI,
                'LC,
                'LB,
                'LA,
                'KZ,
                'KY,
                'KW,
                'KR,
                'KP,
                'KN,
                'KM,
                'KI,
                'KH,
                'KG,
                'KE,
                'JP,
                'JO,
                'JM,
                'IT,
                'IS,
                'IR,
                'IQ,
                'IO,
                'IN,
                'IL,
                'IE,
                'ID,
                'HU,
                'HT,
                'HR,
                'HN,
                'HM,
                'HK,
                'GY,
                'GW,
                'GU,
                'GT,
                'GS,
                'GR,
                'GQ,
                'GP,
                'GN,
                'GM,
                'GL,
                'GI,
                'GH,
                'GF,
                'GE,
                'GD,
                'GB,
                'GA,
                'FR,
                'FO,
                'FM,
                'FK,
                'FJ,
                'FI,
                'ET,
                'ES,
                'ER,
                'EH,
                'EG,
                'EE,
                'EC,
                'DZ,
                'DO,
                'DM,
                'DK,
                'DJ,
                'DE,
                'CZ,
                'CY,
                'CX,
                'CV,
                'CU,
                'CS,
                'CR,
                'CO,
                'CN,
                'CM,
                'CL,
                'CK,
                'CI,
                'CH,
                'CG,
                'CF,
                'CD,
                'CC,
                'CA,
                'BZ,
                'BY,
                'BW,
                'BV,
                'BU,
                'BT,
                'BS,
                'BR,
                'BO,
                'BN,
                'BM,
                'BJ,
                'BI,
                'BH,
                'BG,
                'BF,
                'BE,
                'BD,
                'BB,
                'BA,
                'AZ,
                'AW,
                'AU,
                'AT,
                'AS,
                'AR,
                'AQ,
                'AO,
                'AN,
                'AM,
                'AL,
                'AI,
                'AG,
                'AF,
                'AE,
                'AD,
                '""
              |]
              | doc "This field can be either null or a valid ISO 3166-1 Code."
              | optional,
          },
      "definitions.trakt-api" =
        {
            client_id | String,
            client_secret | String,
            pin | js2n.Nullable String | optional,
            ..
          },
      "definitions.url-path" =
        {
            asset_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
                ]
              | optional,
            schedule | String | optional,
            url | js2n.string.Matches "^(https?)://",
          },
      "definitions.url-path-collection-with-template-variables" =
        {
            asset_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
                ]
              | optional,
            schedule | String | optional,
            template_variables
              | refs."definitions.template-variables-collections"
              | { _ | Dyn }
              | optional,
            url | js2n.string.Matches "^(https?)://",
          },
      "definitions.url-path-overlay-with-template-variables" =
        {
            asset_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
                ]
              | optional,
            schedule | String | optional,
            template_variables
              | refs."definitions.template-variables-overlays"
              | { _ | Dyn }
              | optional,
            url | js2n.string.Matches "^(https?)://",
          },
      "definitions.webhooks" =
        {
            changes | js2n.Nullable String | optional,
            delete | js2n.Nullable String | optional,
            error | js2n.Nullable String | optional,
            run_end | js2n.Nullable String | optional,
            run_start | js2n.Nullable String | optional,
            version | js2n.Nullable String | optional,
          },
    }
    in
  std.contract.any_of
      [
        js2n.Null,
        Bool,
        Number,
        String,
        {
          anidb | refs."definitions.anidb-api" | optional,
          gotify | refs."definitions.gotify-api" | optional,
          libraries | refs."definitions.library-section" | optional,
          mal | refs."definitions.mal-api" | optional,
          mdblist | refs."definitions.mdblist-api" | optional,
          notifiarr | refs."definitions.notifiarr-api" | optional,
          ntfy | refs."definitions.ntfy-api" | optional,
          omdb | refs."definitions.omdb-api" | optional,
          plex | refs."definitions.plex-server",
          radarr | refs."definitions.radarr-api" | optional,
          settings | refs."definitions.settings" | optional,
          sonarr | refs."definitions.sonarr-api" | optional,
          tautulli | refs."definitions.tautulli-api" | optional,
          tmdb | refs."definitions.tmdb-api",
          trakt | refs."definitions.trakt-api" | optional,
          webhooks | refs."definitions.webhooks" | optional,
          ..
        },
        Array Dyn
      ]