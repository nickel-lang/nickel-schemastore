# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Detection" = { name | String, url | String, .. },
      "definitions.ExampleUseCase" =
        {
            code | String | optional,
            description | String,
            name | String,
            tactics
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'Impact,
                      '"Command and Control",
                      'Exfiltration,
                      'Collection,
                      '"Lateral Movement",
                      'Discovery,
                      '"Credential Access",
                      '"Defense Evasion",
                      '"Privilege Escalation",
                      'Persistence,
                      'Execution,
                      '"Initial Access",
                      '"Resource Development",
                      'Reconnaissance
                    |]
                  ]
              )
              | optional,
            tags | Array String | optional,
            ..
          },
      "definitions.Resource" = { name | String, url | String, .. },
    }
    in
  {
      acknowledgements
        | Array String
        | doc "Acknowledgements for the LOOBin"
        | optional,
      author | String | doc "Author of the LOOBin",
      created | String | doc "Date the LOOBin was created",
      detections
        | Array refs."definitions.Detection"
        | doc "A list of detections for the LOOBin",
      example_use_cases
        | Array refs."definitions.ExampleUseCase"
        | doc "A list of example use cases for the LOOBin",
      full_description
        | String
        | doc "A full description of the LOOBin.This will display on the LOOBin's single page.",
      name | String | doc "Name of the LOOBin",
      paths | Array String | doc "A list of paths to the LOOBin",
      resources
        | Array refs."definitions.Resource"
        | doc "A list of useful resources for the LOOBin"
        | optional,
      short_description
        | String
        | doc "A short description of the LOOBin.This will display in the LOOBin card list and the LOOBins website search results.",
    }