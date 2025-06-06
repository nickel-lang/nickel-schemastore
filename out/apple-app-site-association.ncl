# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      appclips
        | {
          apps
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          ..
        }
        | doc "Apple AppClip Config Schema"
        | optional,
      applinks
        | {
          apps
            | std.contract.Equal [  ]
            | doc "Always empty [] for UniversaLink, can be omitted in later versions"
            | optional,
          details
            | js2n.array.MinItems 1
            | Array
              {
                appID
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                appIDs
                  | js2n.array.MinItems 1
                  | js2n.array.UniqueItems
                  | Array (
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                  )
                  | doc "Array of AppIDs"
                  | optional,
                components
                  | js2n.array.MinItems 1
                  | Array (
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                  )
                  | doc "Array of path components to be matched, available in later versions"
                  | optional,
                paths
                  | js2n.array.MinItems 1
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "Array of paths to be matched against"
                  | optional,
              }
            | doc "AppIDs's Universalink URI Matching Configuration",
        }
        | doc "Universalink Configurations Schema",
      webcredentials
        | {
          apps
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          ..
        }
        | doc "Apple Webcredentials Config Schema"
        | optional,
    }