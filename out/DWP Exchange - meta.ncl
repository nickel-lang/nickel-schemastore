# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.Sequence
      [
        js2n.record.DependentFields
          {
            product_gitlab_groups = [ "product_name" ],
            product_name = [ "product_id" ],
          },
        std.contract.any_of
          [
            js2n.record.Required [ "product_name" ],
            js2n.record.Required [ "workspace_gitlab_groups" ]
          ],
        {
          authentication_proxy | Bool | optional,
          onboarding
            | {
              hcs | Bool | optional,
              hosts
                | {
                  non-prod
                    | Array (
                      js2n.string.Matches
                        "^(?:(\\*\\.)?[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*)?$"
                    )
                    | optional,
                  prod
                    | Array (
                      js2n.string.Matches
                        "^(?:(\\*\\.)?[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*)?$"
                    )
                    | optional,
                  ..
                }
                | optional,
              ifdp | js2n.string.Matches "^IFDP-\\d+$" | optional,
              ip_ranges
                | {
                  non-prod
                    | Array (js2n.string.Matches "^\\d+(?:\\.\\d+)+/\\d+$")
                    | optional,
                  prod
                    | Array (js2n.string.Matches "^\\d+(?:\\.\\d+)+/\\d+$")
                    | optional,
                  ..
                }
                | optional,
            }
            | optional,
          product_gitlab_groups | Array String | optional,
          product_id | String | optional,
          product_name
            | js2n.string.MaxLength 60
            | js2n.string.MinLength 2
            | js2n.string.Matches "^(?!-\\s)[a-zA-Z0-9\\s._-]+$"
            | optional,
          workspace
            | js2n.string.MaxLength 60
            | js2n.string.MinLength 2
            | js2n.string.Matches "^(?!-)[a-zA-Z0-9./_-]*$",
          workspace_gitlab_groups
            | Array (js2n.string.Matches "^@dwp/(?:\\w+|-\\w+|/\\w+)+$")
            | doc "This field is deprecated and will be removed in a future version"
            | optional,
        }
      ]