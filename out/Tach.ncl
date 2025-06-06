# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      cache
        | {
          backend
            | std.enum.TagOrString
            | [| 'local |]
            | doc "Cache backend type (currently not configurable, 'local' only)"
            | optional,
          env_dependencies
            | Array String
            | doc "List of environment variables that trigger cache invalidation"
            | optional,
          file_dependencies
            | Array String
            | doc "List of files that trigger cache invalidation"
            | optional,
        }
        | optional,
      disable_logging
        | Bool
        | doc "Disable anonymized usage logging"
        | optional,
      exact
        | Bool
        | doc "Disallow listed dependencies that are not used in the project"
        | optional,
      exclude
        | Array String
        | doc "List of paths to exclude from the project; relative to the project root"
        | optional,
      external
        | {
          exclude
            | Array String
            | doc "List of external dependency names to ignore during checks"
            | optional,
        }
        | optional,
      forbid_circular_dependencies
        | Bool
        | doc "Cause `tach check` to fail if any circular dependencies are detected"
        | optional,
      ignore_type_checking_imports
        | Bool
        | doc "Ignore type-checking imports when checking module boundaries"
        | optional,
      interfaces
        | Array
          {
            data_types
              | String
              | doc "The data types allowed to cross the interface"
              | optional,
            exclusive
              | Bool
              | doc "Whether this interface is exclusive"
              | optional,
            expose
              | Array String
              | doc "List of regex patterns that match paths to expose in this interface"
              | optional,
            from
              | Array String
              | doc "List of regex patterns that match modules which adopt this interface"
              | optional,
            visibility
              | Array String
              | doc "List of visibility patterns"
              | optional,
          }
        | doc "List of interface configurations"
        | optional,
      layers
        | Array (
          std.contract.any_of
            [
              String,
              {
                closed
                  | Bool
                  | doc "Whether this layer is closed. Closed layers prevent modules in higher layers from importing modules in lower layers."
                  | optional,
                name | String | doc "Layer name",
              }
            ]
        )
        | doc "List of layers in hierarchical order (highest to lowest). Each layer can be specified as a string (shorthand) or an object with name and optional closed property."
        | optional,
      modules
        | Array (
          std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                cannot_depend_on = js2n.array.ArrayOf String,
                                cannot_depend_on_external =
                                  js2n.array.ArrayOf String,
                                depends_on =
                                  js2n.array.ArrayOf
                                      (std.contract.any_of
                                        [
                                          String,
                                          js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    deprecated = Bool,
                                                    path = String,
                                                  },
                                              required = { path = true, },
                                            }
                                        ]),
                                depends_on_external = js2n.array.ArrayOf String,
                                layer = String,
                                path = String,
                                strict = Bool,
                                unchecked = Bool,
                                utility = Bool,
                                visibility = js2n.array.ArrayOf String,
                              },
                          required = { path = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                cannot_depend_on = js2n.array.ArrayOf String,
                                cannot_depend_on_external =
                                  js2n.array.ArrayOf String,
                                depends_on =
                                  js2n.array.ArrayOf
                                      (std.contract.any_of
                                        [
                                          String,
                                          js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    deprecated = Bool,
                                                    path = String,
                                                  },
                                              required = { path = true, },
                                            }
                                        ]),
                                depends_on_external = js2n.array.ArrayOf String,
                                layer = String,
                                paths = js2n.array.ArrayOf String,
                                strict = Bool,
                                unchecked = Bool,
                                utility = Bool,
                                visibility = js2n.array.ArrayOf String,
                              },
                          required = { paths = true, },
                        },
                      Array Dyn
                    ]
                ],
              { _ | Dyn }
            ]
        )
        | doc "List of module configurations"
        | optional,
      plugins
        | {
          django
            | {
              settings_module
                | String
                | doc "The settings module to use for Django"
                | optional,
            }
            | optional,
        }
        | optional,
      respect_gitignore
        | Bool
        | doc "Exclude files and directories matched by '.gitignore'"
        | optional,
      root_module
        | String
        | doc "How to treat code outside of explicitly listed modules"
        | optional,
      rules
        | {
          local_imports
            | std.enum.TagOrString
            | [| 'off, 'warn, 'error |]
            | doc "How to handle imports that are not at the global scope (e.g. within a function, class, or control structure)"
            | optional,
          require_ignore_directive_reasons
            | std.enum.TagOrString
            | [| 'off, 'warn, 'error |]
            | doc "How to handle require ignore directive reasons"
            | optional,
          unused_external_dependencies
            | std.enum.TagOrString
            | [| 'off, 'warn, 'error |]
            | doc "How to handle unused external dependencies"
            | optional,
          unused_ignore_directives
            | std.enum.TagOrString
            | [| 'off, 'warn, 'error |]
            | doc "How to handle unused ignore directives"
            | optional,
        }
        | optional,
      source_roots
        | Array String
        | doc "Root directories of Python source code; relative to the project root"
        | optional,
    }