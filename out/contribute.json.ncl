# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      bugs
        | {
          list | String | optional,
          mentored | String | optional,
          report | String | optional,
          ..
        }
        | optional,
      description | String,
      keywords | Array String | optional,
      name | String,
      participate
        | {
          chat
            | { contacts | Array String | optional, url | String, .. }
            | optional,
          docs | String,
          home | String | optional,
          irc | String | optional,
          irc-contacts | Array String | optional,
          mailing-list | String | optional,
          ..
        }
        | optional,
      repository
        | {
          clone | String | optional,
          license | String,
          tests | String | optional,
          type | String | optional,
          url | String,
          ..
        },
      urls
        | {
          dev | String | optional,
          prod | String | optional,
          stage | String | optional,
          ..
        }
        | optional,
      ..
    }