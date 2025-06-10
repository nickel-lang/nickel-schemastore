# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      sets
        | js2n.array.UniqueItems
        | Array (
          std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "associatedSites" ],
                  js2n.record.Required [ "serviceSites" ],
                  js2n.record.Required [ "ccTLDs" ]
                ],
              {
                associatedSites
                  | js2n.array.UniqueItems
                  | Array String
                  | optional,
                ccTLDs | { _ | Array String } | optional,
                contact | String,
                primary | String,
                rationaleBySite | { _ | String } | optional,
                serviceSites | js2n.array.UniqueItems | Array String | optional,
              }
            ]
        )
        | optional,
    }