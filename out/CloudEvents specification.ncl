# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.datacontenttypedef" =
        js2n.Nullable (js2n.string.MinLength 1),
      "definitions.dataschemadef" = js2n.Nullable (js2n.string.MinLength 1),
      "definitions.iddef" = js2n.string.MinLength 1,
      "definitions.sourcedef" = js2n.string.MinLength 1,
      "definitions.specversiondef" = js2n.string.MinLength 1,
      "definitions.subjectdef" = js2n.Nullable (js2n.string.MinLength 1),
      "definitions.timedef" = js2n.Nullable (js2n.string.MinLength 1),
      "definitions.typedef" = js2n.string.MinLength 1,
    }
    in
  {
      data
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "The event payload."
        | optional,
      data_base64
        | js2n.Nullable String
        | doc "Base64 encoded event payload. Must adhere to RFC4648."
        | optional,
      datacontenttype
        | refs."definitions.datacontenttypedef"
        | doc "Content type of the data value. Must adhere to RFC 2046 format."
        | optional,
      dataschema
        | refs."definitions.dataschemadef"
        | doc "Identifies the schema that data adheres to."
        | optional,
      id | refs."definitions.iddef" | doc "Identifies the event.",
      source
        | refs."definitions.sourcedef"
        | doc "Identifies the context in which an event happened.",
      specversion
        | refs."definitions.specversiondef"
        | doc "The version of the CloudEvents specification which the event uses.",
      subject
        | refs."definitions.subjectdef"
        | doc "Describes the subject of the event in the context of the event producer (identified by source)."
        | optional,
      time
        | refs."definitions.timedef"
        | doc "Timestamp of when the occurrence happened. Must adhere to RFC 3339."
        | optional,
      type
        | refs."definitions.typedef"
        | doc "Describes the type of event related to the originating occurrence.",
      ..
    }