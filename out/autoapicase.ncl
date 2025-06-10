# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.provider_data" =
        {
            api_id | String | optional,
            provider_db | String | optional,
            provider_sql | String | optional,
            provider_type | String | optional,
            request_body
              | refs."definitions.request_body"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.provider_datas" =
        Array (
            std.contract.Sequence
              [ refs."definitions.provider_data", { _ | Dyn } ]
          ),
      "definitions.ready_data" =
        { content | String | optional, type | String | optional, .. },
      "definitions.request_body" = { _ | Dyn },
    }
    in
  {
      api
        | {
          header | String | optional,
          host | String | optional,
          method | String | optional,
          uri | String | optional,
          ..
        }
        | optional,
      cases
        | Array
          {
            assert | { _ | Dyn } | optional,
            case_id | String | optional,
            describe | String | optional,
            provider_data | refs."definitions.provider_datas" | optional,
            request_body | refs."definitions.request_body" | optional,
            set_up | refs."definitions.ready_data" | optional,
            sleep
              | std.number.Integer
              | doc "sleep after the case execution"
              | optional,
            tear_down | refs."definitions.ready_data" | optional,
            ..
          }
        | optional,
      template
        | {
          headers | { authorization | String | optional, .. } | optional,
          provider_data | refs."definitions.provider_datas" | optional,
          request_body | refs."definitions.request_body" | optional,
          ..
        }
        | optional,
      ..
    }