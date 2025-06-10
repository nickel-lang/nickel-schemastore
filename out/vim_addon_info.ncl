# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.otherRepository" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  {},
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            script-type =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [|
                                      'patch,
                                      'utility,
                                      'syntax,
                                      'indent,
                                      'game,
                                      'ftplugin,
                                      '"color scheme"
                                    |]
                                  ],
                            type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'archive, '"" |] ],
                            url =
                              std.contract.Sequence
                                  [ refs."definitions.url", String ],
                            vim_script_nr = Number,
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            type =
                              std.contract.Sequence
                                  [ refs."definitions.repoType", String ],
                            url =
                              std.contract.Sequence
                                  [ refs."definitions.url", String ],
                          },
                      required = { type = true, url = true, },
                    }
                ],
              {
                addon-info | js2n.Always | optional,
                homepage
                  | String
                  | doc "Primary homepage of the plugin."
                  | optional,
                ..
              }
            ],
      "definitions.repoType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'bzr, 'svn, 'git, 'hg |] ],
      "definitions.selfRepository" =
        std.contract.Sequence
            [
              js2n.record.DependentFields
                { type = [ "url" ], url = [ "type" ], },
              {
                deprecated
                  | String
                  | doc "For a deprecated plugin, a deprecation message to be shown to any user who installs the plugin."
                  | optional,
                type | refs."definitions.repoType" | String | optional,
                url | refs."definitions.url" | String | optional,
                ..
              }
            ],
      "definitions.url" = String,
    }
    in
  {
      author
        | String
        | doc "Name of the person or organization that created the plugin"
        | optional,
      dependencies
        | {
          _ | std.contract.Sequence
            [ refs."definitions.otherRepository", { _ | Dyn } ]
        }
        | doc "Plugins that are strictly required for the plugin to work, where keys are plugin names and values may describe where plugins can be fetched from."
        | optional,
      description
        | String
        | doc "Short description of the plugin and what it does (a sentence or two)"
        | optional,
      homepage | String | doc "Primary homepage of the plugin." | optional,
      maintainer
        | String
        | doc "Name of the person who maintains the plugin"
        | optional,
      name
        | String
        | doc "The name of the plugin. Used by plugin managers and some introspection tools. Generally corresponds to the name of the repository but without \"vim\" prefix/suffix."
        | optional,
      repository | refs."definitions.selfRepository" | { _ | Dyn } | optional,
      version
        | String
        | doc "Dotted version number of the plugin, generally in semantic versioning scheme."
        | optional,
      ..
    }