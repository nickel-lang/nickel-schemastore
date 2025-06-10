# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.author-data" =
        { homepage | String | optional, name | String, },
    }
    in
  {
      "$schema"
        | js2n.Null
        | doc "Hugo will not recognize the theme config file if it is JSON or YAML format. Please use theme.toml file."
        | optional,
      author
        | refs."definitions.author-data"
        | doc "For themes that have single author"
        | optional,
      authors
        | js2n.array.MinItems 2
        | Array refs."definitions.author-data"
        | doc "For themes that have multiple authors"
        | optional,
      description
        | String
        | doc "This info is used by Hugo theme store: https://themes.gohugo.io"
        | optional,
      features | Array String | optional,
      homepage
        | String
        | doc "This info is used by Hugo theme store: https://themes.gohugo.io"
        | optional,
      license | String | doc "Reference: https://choosealicense.com" | optional,
      licenselink | String | optional,
      min_version
        | js2n.string.MinLength 5
        | js2n.string.Matches "^[0-9]+\\.[0-9]+\\.[0-9]+$"
        | doc "Since the version **0.54.0**, Hugo started using full semver. Therefore, it is required to be `X.Y.Z` format. For instance: `0.54` is incorrect, `0.54.0` is correct.",
      name
        | String
        | doc "This info is used by Hugo theme store: https://themes.gohugo.io",
      original
        | {
          author | String,
          homepage | String | optional,
          repo | String | doc "Link to source code of original theme",
        }
        | doc "For themes that port an existing theme"
        | optional,
      tags
        | Array String
        | doc "This info is used by Hugo theme store: https://themes.gohugo.io"
        | optional,
    }