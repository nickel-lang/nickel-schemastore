# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      description
        | String
        | doc "A description of the program that may be used by user interfaces"
        | optional,
      disabled
        | Bool
        | doc "Disable the auto-start of the script on system boot"
        | optional,
      envvars
        | { _ | String }
        | doc "Name/Value pairs that can be used to set configuration of a program"
        | optional,
      id
        | js2n.string.Matches "^[a-zA-z0-9_-]+$"
        | doc "Globally unique program ID, special characters are not allowed",
      provider
        | std.enum.TagOrString
        | [| 'python, 'javascript, 'groovy |]
        | doc "The language the program is written in",
      scope
        | js2n.string.Matches "^[a-zA-z0-9_\\.-]*$"
        | doc "The scope (location) to which the script belongs. Leave blank for global scope"
        | optional,
      script
        | String
        | doc "The file name of the main entry point of the program. Defaults to index.<extension>"
        | optional,
      ..
    }