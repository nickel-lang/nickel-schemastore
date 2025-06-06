# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Hcp" =
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
            hcpData
              | {
                hcpRole | String,
                hcpi | String,
                name
                  | {
                    given | String,
                    last | String,
                    title | String | optional,
                  },
                telematik-id | String,
              },
            ownerTestsuite | String | optional,
          },
    }
    in
  { hcps | { _ | refs."definitions.Hcp" } | optional, .. }