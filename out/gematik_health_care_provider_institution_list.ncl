# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Hcpi" =
        {
            cards
              | Array
                {
                  expiryDate
                    | js2n.string.Matches
                      "^\\d{4}-(0?[1-9]|1[012])-(0?[1-9]|[12][0-9]|3[01])$"
                    | optional,
                  iccsn | String,
                  type | String,
                },
            hcpiData
              | { hcpiRole | String, name | String, telematik-id | String, },
            ownerTestsuite | String | optional,
          },
    }
    in
  { hcpis | { _ | refs."definitions.Hcpi" } | optional, .. }