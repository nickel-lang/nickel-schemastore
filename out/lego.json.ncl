# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      blocks
        | Array
          {
            file
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | optional,
            files
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | doc "Files making up the block"
              | optional,
            isFile
              | Bool
              | doc "Is this a file? or a folder? False by default."
              | optional,
            path
              | String
              | doc "Path relative to root where the block will be stored",
            type | String | doc "The name of the block type",
            ..
          }
        | doc "An array of your app's blocks.",
      fileFormats
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".*" =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ],
                },
            properties = {},
            required = {},
          }
        | doc "An object mapping file objects to strings"
        | optional,
      ..
    }