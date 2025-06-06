# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      audio_bucket_url
        | String
        | doc m%"
          Optinal setting to specify the URL of the audio bucket.
          This setting is used if the audio files are to be placed in a different location,
          such as S3 or R2.
          
        "%
        | optional,
      channel
        | {
          artwork
            | String
            | doc m%"
              Artwork for podcast site. Specify either the full URL or a path relative to the site URL.
              
            "%
            | optional,
          author | String | doc "Author of the podcast",
          category
            | std.contract.any_of [ String, Array String ]
            | doc "Category for Apple podcasts. Subcategories are currently not supported.",
          copyright
            | String
            | doc m%"
              Optional setting item for copyright notice. If not set, "© 2024 $author" is used by default.
              
            "%
            | optional,
          description | String | doc "Description of the podcast",
          email | String | doc "Email address of the podcast",
          explicit
            | Bool
            | doc "Explicit content or not. Default is false."
            | optional,
          language
            | String
            | doc m%"
              BCP 47 language tag like ja-JP, zh-CN, en-US describing the language of the podcast
              
            "%,
          link | js2n.string.Matches "^https?://" | doc "URL of the podcast",
          private
            | Bool
            | doc "Private podcast or not. Default is false."
            | optional,
          title | String | doc "Title of the podcast",
          ..
        },
      timezone | String | doc "timezone of the podcast",
      ..
    }