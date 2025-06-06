# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      browser
        | std.contract.any_of [ String, { _ | Dyn } ]
        | doc "A string, or map of paths, to override during resolution. See spec: https://github.com/defunctzombie/package-browser-field-spec"
        | optional,
      dependencies
        | { _ | String }
        | doc "A map of dependencies required by the project."
        | optional,
      devDependencies
        | { _ | String }
        | doc "A map of dependencies required by the project during development."
        | optional,
      files
        | Array String
        | doc "Used as an alternative or to complement `main`, specify an array of files that are exported but aren't already part of the resolution from `main`."
        | optional,
      global
        | Bool
        | doc "Denote that this definition _must_ be installed as global."
        | optional,
      globalDependencies
        | { _ | String }
        | doc "A map of global dependencies required by the project."
        | optional,
      globalDevDependencies
        | { _ | String }
        | doc "A map of global dependencies required by the project during development."
        | optional,
      homepage | String | doc "Homepage url of the source package" | optional,
      main
        | String
        | doc "The entry point to the definition (canonical to `\"main\"` in NPM's `package.json`)."
        | optional,
      name | String | doc "The name of the definition" | optional,
      peerDependencies
        | { _ | String }
        | doc "A map of dependencies expected in the parent project for this dependency to work."
        | optional,
      postmessage
        | String
        | doc "A message to emit to users after typings installation."
        | optional,
      resolution
        | std.contract.any_of [ String, { _ | Dyn } ]
        | doc "Map of resolutions to install"
        | optional,
      version
        | String
        | doc "The semver range this definition is typed for"
        | optional,
      ..
    }