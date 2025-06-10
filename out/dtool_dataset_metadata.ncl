# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      annotations | { _ | Dyn } | optional,
      base_uri | String | optional,
      created_at | std.contract.any_of [ Number, String ] | optional,
      creator_username | String | optional,
      frozen_at | std.contract.any_of [ Number, String ] | optional,
      manifest
        | {
          dtoolcore_version | String | optional,
          hash_function | String | optional,
          items
            | {
              _ | {
                hash | String | optional,
                relpath | String | optional,
                size_in_bytes | std.number.Integer | optional,
                utc_timestamp | Number | optional,
                ..
              }
            }
            | optional,
          ..
        }
        | optional,
      name | String | optional,
      number_of_items | std.number.Integer | optional,
      readme | std.contract.any_of [ String, {  .. } ] | optional,
      size_in_bytes | std.number.Integer | optional,
      tags | Array String | optional,
      type | String | optional,
      uri | String | optional,
      uuid | String | optional,
      ..
    }