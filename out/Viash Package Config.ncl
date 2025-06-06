# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      authors
        | Array
          {
            email | String | doc "E-mail of the author." | optional,
            info
              | { _ | Dyn }
              | doc "Structured information. Can be any shape: a string, vector, map or even nested map."
              | optional,
            name
              | String
              | doc "Full name of the author, usually in the name of FirstName MiddleName LastName.",
            roles | std.contract.any_of [ String, Array String ] | optional,
          }
        | doc "The authors of the package."
        | optional,
      config_mods | std.contract.any_of [ String, Array String ] | optional,
      description
        | String
        | doc "A description of the package. This is only used for documentation. Multiline descriptions are supported."
        | optional,
      info
        | { _ | Dyn }
        | doc "Structured information. Can be any shape: a string, vector, map or even nested map."
        | optional,
      keywords | Array String | doc "The keywords of the package." | optional,
      label
        | String
        | doc "A clean version of the package name. This is only used for documentation."
        | optional,
      license | String | doc "The license of the package." | optional,
      links
        | {
          docker_registry | String | doc "Docker registry url." | optional,
          documentation | String | doc "Documentation website url." | optional,
          homepage | String | doc "Homepage website url." | optional,
          issue_tracker | String | doc "Issue tracker url." | optional,
          repository | String | doc "Source repository url." | optional,
        }
        | doc "External links of the package."
        | optional,
      name | String | doc "The name of the package." | optional,
      organization | String | doc "The organization of the package." | optional,
      references
        | {
          bibtex | std.contract.any_of [ String, Array String ] | optional,
          doi | std.contract.any_of [ String, Array String ] | optional,
        }
        | doc "References to external resources related to the package."
        | optional,
      repositories
        | Array (
          js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        name = String,
                        path = String,
                        tag = String,
                        type = js2n.Const "git",
                        uri = String,
                      },
                  required = { name = true, type = true, uri = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        name = String,
                        path = String,
                        repo = String,
                        tag = String,
                        type = js2n.Const "github",
                      },
                  required = { name = true, repo = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        name = String,
                        path = String,
                        tag = String,
                        type = js2n.Const "local",
                      },
                  required = { name = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        name = String,
                        path = String,
                        repo = String,
                        tag = String,
                        type = js2n.Const "viashhub",
                      },
                  required = { name = true, repo = true, type = true, },
                }
            ]
        )
        | doc "Common repository definitions for component dependencies."
        | optional,
      source
        | String
        | doc "Which source directory to use for the `viash ns` commands."
        | optional,
      summary
        | String
        | doc "A one-sentence summary of the package. This is only used for documentation."
        | optional,
      target
        | String
        | doc "Which target directory to use for `viash ns build`."
        | optional,
      version | String | doc "The version of the package." | optional,
      viash_version | String | doc "Which version of Viash to use." | optional,
    }