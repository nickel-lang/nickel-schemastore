# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      excludeFiles
        | Array String
        | doc "An array of globs which indicate the files that should be completely unavailable to guests when you share (e.g. secrets)."
        | optional,
      gitignore
        | std.enum.TagOrString
        | [| 'exclude, 'hide, 'none |]
        | doc "Indicates how .gitignore files should be treated with respects to excluding/hiding files from guests."
        | optional,
      hideFiles
        | Array String
        | doc "An array of globs which indicate the files that should be hidden from guest's file trees, but still accessible (e.g. when following the host)."
        | optional,
      ..
    }