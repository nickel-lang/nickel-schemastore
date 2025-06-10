# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.artifact" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                generation | Number | doc "The artifact generation",
                id | String | doc "The artifact id",
                ..
              },
              Array Dyn
            ],
      "definitions.eventHorizonConfiguration" =
        {
            application
              | String
              | doc "The application id of the application which the bounded context you want to communicate belongs to",
            boundedContext
              | String
              | doc "The bounded context id you wish to penetrate to",
            events
              | Array refs."definitions.artifact"
              | doc "An array of event artifacts that this bounded context is interested in",
            url
              | String
              | doc "The url where the other bounded context's event horizon lives",
            ..
          },
    }
    in
  Array refs."definitions.eventHorizonConfiguration"