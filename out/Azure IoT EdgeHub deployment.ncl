# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.policy" =
        Array
            {
              operations
                | Array (
                  js2n.string.Matches
                    "^mqtt:connect$|^mqtt:subscribe$|^mqtt:publish$"
                )
                | optional,
              resources | Array (js2n.string.Matches "^.+$") | optional,
            },
    }
    in
  {
      "$edgeHub"
        | {
          "properties.desired"
            | {
              mqttBroker
                | {
                  authorizations
                    | Array
                      {
                        allow | refs."definitions.policy" | optional,
                        deny | refs."definitions.policy" | optional,
                        identities
                          | Array (js2n.string.Matches "^.+$")
                          | optional,
                      }
                    | optional,
                  bridges
                    | Array
                      {
                        endpoint | js2n.string.Matches "\\$upstream" | optional,
                        settings
                          | Array
                            {
                              direction
                                | js2n.string.Matches "^in$|^out$"
                                | optional,
                              inPrefix | js2n.string.Matches "^.*$" | optional,
                              outPrefix | js2n.string.Matches "^.*$" | optional,
                              topic | js2n.string.Matches "^.*$" | optional,
                            }
                          | optional,
                      }
                    | optional,
                }
                | optional,
              routes
                | {
                  _ | std.contract.any_of
                    [
                      {
                        "priority"
                          | std.number.Integer
                          | js2n.number.Maximum 9
                          | js2n.number.Minimum 0
                          | optional,
                        route | js2n.string.Matches "^.+$",
                        timeToLiveSecs
                          | std.number.Integer
                          | js2n.number.Maximum 4294967295
                          | js2n.number.Minimum 0
                          | optional,
                      },
                      js2n.string.Matches "^.+$"
                    ]
                }
                | js2n.record.FieldsMatch "^[^\\.\\$# ]+$",
              schemaVersion | js2n.string.Matches "1.2",
              storeAndForwardConfiguration
                | { timeToLiveSecs | std.number.Integer, }
                | optional,
            },
        },
    }