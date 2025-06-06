# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      pagesRepository | String | optional,
      platform
        | js2n.OneOf
          [
            std.contract.Sequence [ std.enum.TagOrString, [| 'linux |] ],
            String
          ]
        | optional,
      repository | String | optional,
      skipUpdateWhenPageNotFound | Bool | optional,
      theme | String | optional,
      themes
        | {
          _ | {
            commandName | String | optional,
            exampleCode | String | optional,
            exampleDescription | String | optional,
            exampleToken | String | optional,
            mainDescription | String | optional,
            ..
          }
        }
        | optional,
    }