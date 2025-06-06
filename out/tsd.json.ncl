# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      bundle
        | String
        | doc "Path to a '.d.ts' bundle file (see below). Change this if you want the bundle to be closer to the actual source files. TSD will create the appropriate relative paths."
        | optional,
      installed | { _ | Dyn } | doc "A list of installed typings." | optional,
      path
        | String
        | doc "Path to the typings directory, the definitions will be installed in the appropriate sub-folders. Change this to have typings in your main code directory, but this is not recommended as the mixed styles used in the definitions it will confuse your inspections and lint-tools.",
      ref
        | String
        | doc "Branch name or other git reference of the repository. Change this to use legacy branches.",
      repo
        | String
        | doc "GitHub user and repo name of the typings repository. Change this if you want to use TSD from a DefinitelyTyped fork.",
      stats
        | Bool
        | doc "Set to 'false' to disable the stats tracking. Keep in mind the stats are anonymous, help us improve TSD & DT and motivate us to spend our time on development."
        | optional,
      version
        | String
        | doc "Tracks config version for future changes (don't change this).",
      ..
    }