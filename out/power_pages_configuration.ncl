# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      compiledPath
        | String
        | doc "The path of the compiled output directory relative to powerpages.config.json file"
        | optional,
      defaultLandingPage
        | js2n.string.Matches "^[\\w.-]+\\.html$"
        | doc "The default HTML page to load when opening the website"
        | optional,
      siteName | String | doc "The name of the website" | optional,
      ..
    }