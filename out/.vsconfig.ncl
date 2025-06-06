# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      components
        | Array (js2n.string.MinLength 1)
        | doc "An array of Visual Studio component names.",
      extensions
        | Array (js2n.string.MinLength 1)
        | doc "An array of Visual Studio extensions. These can be URLs to marketplace extensions or paths to private VSIX files."
        | optional,
      version
        | js2n.string.Matches "^(\\d+\\.)?(\\d+\\.)?(\\d+\\.)?(\\d+)$"
        | doc "The version of the component configuration file format."
        | optional,
      ..
    }