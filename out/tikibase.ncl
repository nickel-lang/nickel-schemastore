# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema"
        | js2n.Nullable String
        | doc "link to the JSON-Schema definition for this file"
        | optional,
      bidiLinks
        | js2n.Nullable Bool
        | doc "enables bi-directional links"
        | optional,
      ignore
        | js2n.Nullable (Array String)
        | doc "Names of filesystem entries to ignore in this directory."
        | optional,
      sections
        | js2n.Nullable (Array String)
        | doc "the allowed section titles"
        | optional,
      standaloneDocs
        | js2n.Nullable Bool
        | doc "whether documents without links are allowed"
        | optional,
      titleRegEx
        | js2n.Nullable String
        | doc "regex with a single capture group to extract a shorter title for links to notes"
        | optional,
    }