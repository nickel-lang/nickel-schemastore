# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  js2n.record.Record
      {
        additional =
          'Some
              {
                description | String | optional,
                "restrict access"
                  | Bool
                  | doc "This should be used for permissions that have inherent security risks across a variety of potential use cases (for example, the \"administer filters\" and \"bypass node access\" permissions provided by Drupal core)."
                  | optional,
                title | String,
              },
        patterns = {},
        properties =
          {
              permission_callbacks =
                std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
            },
        required = {},
      }