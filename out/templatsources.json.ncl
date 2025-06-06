# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.any_of
      [
        js2n.Null,
        Bool,
        Number,
        String,
        {
          sources
            | Array
              {
                Branch
                  | String
                  | doc "The branch of the source repository containing the template."
                  | optional,
                Enabled
                  | Bool
                  | doc "Indicates whether the source template(s) should be added to Visual Studio."
                  | optional,
                Location
                  | String
                  | doc "The location of the source to be added. This can be on a git repository or local file share."
                  | optional,
                Name | String | doc "The name of the source." | optional,
                ..
              }
            | doc "Includes information regarding all sources that have been added to SideWaffle."
            | optional,
          updateInterval
            | std.enum.TagOrString
            | [| 'Never, 'OnceAMonth, 'OnceAWeek, 'OnceADay, 'Always |]
            | doc "Used by SideWaffle to determine how often Visual Studio will download and install the templates from its source."
            | optional,
          ..
        },
        Array Dyn
      ]