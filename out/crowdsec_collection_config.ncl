# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      appsec-configs | js2n.Nullable (Array String) | optional,
      appsec-rules | js2n.Nullable (Array String) | optional,
      author
        | String
        | doc m%"
          The name of the author.
          
        "%
        | optional,
      collections | js2n.Nullable (Array String) | optional,
      description | String | doc "description of the parser usage" | optional,
      name
        | String
        | doc m%"
          The mandatory name of the node. If not present, node will be
          skipped at runtime. It is used for example in debug log to help
          you track things.
          
        "%
        | optional,
      parsers | js2n.Nullable (Array String) | optional,
      postoverflows | js2n.Nullable (Array String) | optional,
      scenarios | js2n.Nullable (Array String) | optional,
      tags
        | Array String
        | doc m%"
          List of tags.
          
        "%
        | optional,
    }