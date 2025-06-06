# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      exports
        | std.contract.any_of
          [
            js2n.string.Matches "^\\./.*$",
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = { "^\\.(/.*)?$" = js2n.string.Matches "^\\./.*$", },
                properties = {},
                required = {},
              }
          ],
      license | String | doc "The license of this JSR package." | optional,
      name | String | doc "The name of this JSR package. Must be scoped",
      publish
        | {
          exclude
            | Array String
            | doc "List of files, directories or globs that will be excluded from the published package."
            | optional,
          include
            | Array String
            | doc "List of files, directories or globs that will be included in the published package."
            | optional,
          ..
        }
        | optional,
      version | String | doc "The version of this JSR package." | optional,
      ..
    }