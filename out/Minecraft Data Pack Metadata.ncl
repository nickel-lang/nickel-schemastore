# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      filter
        | {
          _ | {
            namespace
              | String
              | doc m%"
                A namespace regular expression for the current pack
                https://minecraft.wiki/w/Data_pack
              "%
              | optional,
            path
              | String
              | doc m%"
                A path regular expression for the current pack
                https://minecraft.wiki/w/Data_pack
              "%
              | optional,
          }
        }
        | doc m%"
          Filter options for the current pack
          https://minecraft.wiki/w/Data_pack
        "%
        | optional,
      fusion
        | {
          overrides_folder
            | js2n.string.MinLength 1
            | doc m%"
              Folder which contains files which should override regular files when Fusion is loaded
              https://github.com/SuperMartijn642/Fusion/wiki/Optional-Fusion-Overwrites
            "%
            | optional,
        }
        | doc m%"
          Fusion options for the current pack
          https://github.com/SuperMartijn642/Fusion/wiki
        "%
        | optional,
      pack
        | {
          description
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc m%"
              A description for the current pack
              https://minecraft.wiki/w/Data_pack#Contents
            "%
            | optional,
          pack_format
            | std.number.Integer
            | js2n.number.Maximum 48
            | js2n.number.Minimum 1
            | doc m%"
              A version for the current pack
              https://minecraft.wiki/w/Data_pack#Contents
            "%
            | optional,
        }
        | doc m%"
          Options for the current pack
          https://minecraft.wiki/w/Data_pack#Contents
        "%
        | optional,
    }