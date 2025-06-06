# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.link" =
        {
            href | String | optional,
            properties | refs."definitions.property" | { _ | Dyn } | optional,
            rel | String | optional,
            template | String | optional,
            titles
              | js2n.record.Record
                {
                  additional = 'Some String,
                  patterns = {},
                  properties = { "default" = String, },
                  required = {},
                }
              | optional,
            type | String | optional,
            ..
          },
      "definitions.property" = { _ | js2n.Nullable String },
    }
    in
  {
      aliases | Array String | optional,
      expires | String | optional,
      links | Array refs."definitions.link" | optional,
      properties | refs."definitions.property" | optional,
      subject | String,
      ..
    }