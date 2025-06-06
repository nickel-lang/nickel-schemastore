# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      generators
        | Array
          {
            name | String,
            options | { _ | String } | optional,
            output | String | optional,
          }
        | doc "Which SAMT generators to use"
        | optional,
      plugins
        | Array (
          js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { path = String, type = js2n.Const "local", },
                  required = { path = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        artifactId = String,
                        groupId = String,
                        repository = String,
                        type = js2n.Const "maven",
                        version = String,
                      },
                  required =
                    {
                        artifactId = true,
                        groupId = true,
                        type = true,
                        version = true,
                      },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependency = String,
                        repository = String,
                        type = js2n.Const "gradle",
                      },
                  required = { dependency = true, type = true, },
                }
            ]
        )
        | optional,
      repositories
        | {
          maven
            | String
            | doc "The url to the maven repository to use, defaults to https://repo.maven.apache.org/maven2"
            | optional,
        }
        | doc "The default repositories to use if no repository is specified for a plugin"
        | optional,
      source
        | String
        | doc "Path to the source directory, defaults to ./src"
        | optional,
    }