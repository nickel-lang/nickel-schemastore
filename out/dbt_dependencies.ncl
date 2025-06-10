# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      packages
        | js2n.array.MinItems 1
        | Array (
          std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        install-prerelease = Bool,
                        package =
                          js2n.string.Matches "^[\\w\\-\\.]+/[\\w\\-\\.]+$",
                        version =
                          std.contract.any_of [ Number, String, Array Dyn ],
                      },
                  required = { package = true, version = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        private =
                          js2n.string.Matches "^[\\w\\-\\.]+/[\\w\\-\\.]+$",
                        revision = String,
                        subdirectory = String,
                      },
                  required = { private = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { git = String, revision = String, subdirectory = String, },
                  required = { git = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { name = String, tarball = String, },
                  required = { name = true, tarball = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { local = String, },
                  required = {},
                }
            ]
        )
        | optional,
      projects | Array { name | String, } | optional,
    }