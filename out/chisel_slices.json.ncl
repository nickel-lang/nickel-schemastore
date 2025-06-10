# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      archive
        | String
        | doc "The name of the archive to use for the slice. Archives are defined in the chisel.yaml file."
        | optional,
      essential
        | js2n.array.UniqueItems
        | Array (js2n.string.Matches "^[a-z0-9][a-z0-9+\\-\\._]+$")
        | doc "A list of slices that are a dependency for all slices of this package. Each slice item is formatted as '<slice_name>_<slice_part>'."
        | optional,
      package
        | js2n.string.Matches "^[a-z0-9][a-z0-9+\\-\\.]+$"
        | doc "The name of the package to use for the slice."
        | optional,
      slices
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                    {
                        contents
                          | js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns =
                                {
                                    "^.+$" =
                                      js2n.Nullable
                                          {
                                            arch
                                              | js2n.array.UniqueItems
                                              | Array String
                                              | doc "Only include this file on specific architectures."
                                              | optional,
                                            copy
                                              | String
                                              | doc "Copy this file or directory from this location."
                                              | optional,
                                            make
                                              | Bool
                                              | doc "Make this file or directory if it does not already exist."
                                              | optional,
                                            mode
                                              | std.number.Integer
                                              | doc "File permissions to use."
                                              | optional,
                                            mutable
                                              | Bool
                                              | doc "If true, the file is mutable."
                                              | optional,
                                            symlink
                                              | String
                                              | doc "Make a symlink to this file or directory."
                                              | optional,
                                            text
                                              | String
                                              | doc "The contents of the file."
                                              | optional,
                                            until
                                              | std.enum.TagOrString
                                              | [| 'mutate, '"" |]
                                              | doc "Only keep this file until this stage."
                                              | optional,
                                          },
                                  },
                              properties = {},
                              required = {},
                            }
                          | doc "Files to include in the slice. Supports glob patterns."
                          | optional,
                        essential
                          | js2n.array.UniqueItems
                          | Array (
                            js2n.string.Matches "^[a-z0-9][a-z0-9+\\-\\._]+$"
                          )
                          | doc "The name of the dependency slice part. The slice part is formatted as '<slice_name>_<slice_part>'."
                          | optional,
                        mutate
                          | String
                          | doc "A Starlark expression to modify the file contents."
                          | optional,
                      },
                },
            properties = {},
            required = {},
          }
        | doc "Slice definitions for this package."
        | optional,
    }