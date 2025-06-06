# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.behavior" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'noAuth, 'allow, 'block |] ],
      "definitions.rule" =
        {
            allowData
              | Bool
              | doc "Determines if data is allowed at this path."
              | optional,
            path | String | doc "Relative path to resource." | optional,
            regex
              | String
              | doc "A regular expression for identifying paths to resources."
              | optional,
            types
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'other,
                      'xhr,
                      'script,
                      'stylesheet,
                      'image,
                      'navigation
                    |]
                  ]
              )
              | optional,
            ..
          },
    }
    in
  {
      defaultNavBehavior | refs."definitions.behavior" | optional,
      defaultResBehavior | refs."definitions.behavior" | optional,
      maxAge
        | std.number.Integer
        | doc "Set the max age HTTP cache expiration."
        | optional,
      reportUrl | String | optional,
      rules | Array refs."definitions.rule",
      site | String | doc "A fully qualified URL of your website." | optional,
      ..
    }