# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      optimizations
        | js2n.array.MinItems 1
        | Array
          {
            excludes
              | Array (js2n.string.MinLength 1)
              | doc "An array of globbing patterns of files/folders to exclude in the optimization"
              | optional,
            includes
              | Array (js2n.string.MinLength 1)
              | doc "An array of globbing patterns of files/folders to include in the optimization",
            lossy
              | Bool
              | doc "When set to true, images are compressed a lot more but with a slight quality loss that may not be visible to the human eye."
              | optional,
            ..
          }
        | doc "An array of optimization rules"
        | optional,
      ..
    }