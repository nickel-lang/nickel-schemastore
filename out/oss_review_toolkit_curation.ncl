# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.hash" = { algorithm | String, value | String, .. },
      "definitions.vcsMatcher" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "type" ],
                  js2n.record.Required [ "url" ],
                  js2n.record.Required [ "revision" ],
                  js2n.record.Required [ "path" ]
                ],
              {
                path | String | optional,
                revision | String | optional,
                type | String | optional,
                url | String | optional,
                ..
              }
            ],
    }
    in
  Array
      {
        curations
          | {
            authors | js2n.array.Items [ String ] js2n.Always | optional,
            binary_artifact
              | { hash | refs."definitions.hash", url | String, .. }
              | optional,
            comment | String | optional,
            concluded_license | String | optional,
            cpe | String | optional,
            declared_license_mapping | { _ | Dyn } | optional,
            description | String | optional,
            homepage_url | String | optional,
            is_metadata_only | Bool | optional,
            is_modified | Bool | optional,
            purl | String | optional,
            source_artifact
              | { hash | refs."definitions.hash", url | String, .. }
              | optional,
            vcs | refs."definitions.vcsMatcher" | { _ | Dyn } | optional,
            ..
          },
        id | String,
        ..
      }