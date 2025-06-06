# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      labels
        | Array String
        | doc "Sets the labels if \"first-timers-only\" is not what you are looking for."
        | optional,
      repository
        | String
        | doc "Specify a different repository than where the problem is. The bot must be installed on the configured repository."
        | optional,
      template
        | String
        | doc "The path to your template, relative from the repository root."
        | optional,
    }