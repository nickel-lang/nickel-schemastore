# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Card" =
        {
            expiryDate
              | js2n.string.Matches
                "^\\d{4}-(0?[1-9]|1[012])-(0?[1-9]|[12][0-9]|3[01])$"
              | optional,
            iccsn | String,
            type | String,
          },
      "definitions.Patient" =
        {
            alias | js2n.array.UniqueItems | Array String | optional,
            cards
              | Array (
                std.contract.Sequence [ refs."definitions.Card", { _ | Dyn } ]
              )
              | optional,
            ownerTestsuite | String | optional,
            personData
              | {
                address
                  | {
                    city | String | optional,
                    country | String | optional,
                    houseNumber | String | optional,
                    postalCode | String | optional,
                    streetName | String | optional,
                  }
                  | optional,
                birthDate
                  | std.contract.any_of
                    [
                      js2n.string.Matches
                        "^\\d{4}-(0?[1-9]|1[012])-(0?[1-9]|[12][0-9]|3[01])$",
                      std.number.Integer
                    ]
                  | optional,
                deliveryAddress
                  | {
                    city | String | optional,
                    country | String | optional,
                    houseNumber | String | optional,
                    postalCode | String | optional,
                    streetName | String | optional,
                  }
                  | optional,
                gender | std.enum.TagOrString | [| 'x, 'd, 'm, 'w |] | optional,
                insurance | String,
                kvnr | String,
                name
                  | {
                    alt | String | optional,
                    family | String,
                    given | String,
                  },
              },
            services
              | {
                idp | { sectIdp | String | optional, .. } | optional,
                vsdm | { cardUpdate | String | optional, .. } | optional,
                ..
              }
              | optional,
          },
    }
    in
  { patients | { _ | refs."definitions.Patient" } | optional, .. }