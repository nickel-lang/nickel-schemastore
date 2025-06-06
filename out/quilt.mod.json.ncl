# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.Sequence
      [
        js2n.record.PropertyNames
          (std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]),
        { schema_version | std.contract.Equal 1 | optional, .. },
        { schema_version | js2n.Enum [ 1 ], .. },
        js2n.record.Record
          {
            additional =
              'Some
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      { _ | Dyn },
                      Array Dyn
                    ]),
            patterns = {},
            properties =
              {
                  access_widener = std.contract.any_of [ String, Array String ],
                  minecraft = { _ | Dyn },
                  mixin =
                    js2n.OneOf
                        [
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                          js2n.array.ArrayOf
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                { _ | Dyn },
                                Array Dyn,
                                Number,
                                String
                              ])
                        ],
                  quilt_loader =
                    {
                        breaks
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]
                          | doc "An array of dependency objects. Defines mods that this mod either breaks or is broken by."
                          | optional,
                        depends
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]
                          | doc "An array of dependency objects. Defines mods that this mod will not function without."
                          | optional,
                        entrypoints
                          | {
                            _ | js2n.OneOf
                              [
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ],
                                js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          adapter = String,
                                          value =
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
                                    required = { value = true, },
                                  }
                              ]
                          }
                          | doc "A collection of key: value pairs, where each key is the type of the entrypoints specified and each values is either a single entrypoint or an array of entrypoints."
                          | optional,
                        group
                          | js2n.string.Matches "^[a-zA-Z0-9-_.]+$"
                          | doc "A unique identifier for the organization behind or developers of the mod.",
                        id
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]
                          | doc "A unique identifier for the mod or library defined by this file, matching the ^[a-z][a-z0-9-_]{1,63}$ regular expression. Best practice is that mod ID's are in snake_case.",
                        intermediate_mappings
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [|
                                    '"net.fabricmc:intermediary",
                                    '"org.quiltmc:hashed"
                                  |]
                                ],
                              js2n.string.Matches
                                "^[a-zA-Z0-9-_.]+:[a-zA-Z0-9-_.]+$"
                            ]
                          | doc "The intermediate mappings used for this mod. The intermediate mappings string must be a valid maven coordinate and match the \"^[a-zA-Z0-9-_.]+:[a-zA-Z0-9-_.]+$\" regular expression. This field currently only officially supports \"org.quiltmc:hashed\" and \"net.fabricmc:intermediary\"."
                          | optional,
                        jars
                          | Array String
                          | doc "A list of paths to nested JAR files to load, relative to the root directory inside of the mods JAR."
                          | optional,
                        language_adapters
                          | { _ | String }
                          | doc "A collection of key: value pairs, where each key is the namespace of a language adapter and the value is an implementation of the LanguageAdapter interface."
                          | optional,
                        load_type
                          | std.enum.TagOrString
                          | [| 'if_required, 'if_possible, 'always |]
                          | doc "Influences whether or not a mod candidate should be loaded or not."
                          | optional,
                        metadata
                          | {
                            contact
                              | {
                                email
                                  | String
                                  | doc "Valid e-mail address for the organization/developers."
                                  | optional,
                                homepage
                                  | String
                                  | doc "Valid HTTP/HTTPS address for the project or the organization/developers behind it."
                                  | optional,
                                issues
                                  | String
                                  | doc "Valid HTTP/HTTPS address for the project issue tracker."
                                  | optional,
                                sources
                                  | String
                                  | doc "Valid HTTP/HTTPS address for a source code repository."
                                  | optional,
                                ..
                              }
                              | doc "A collection of key: value pairs denoting various contact information for the people behind this mod, with all values being strings"
                              | optional,
                            contributors
                              | {
                                _ | std.contract.any_of [ String, Array String ]
                              }
                              | doc m%"
                                A collection of key: value pairs denoting the persons or organizations that contributed to this project. The key should be the name of the person or organization, while the value can be either a string representing a single role or an array of strings each one representing a single role.
                                A role can be any valid string. The "Owner" role is defined as being the person(s) or organization in charge of the project.
                              "%
                              | optional,
                            description
                              | String
                              | doc "A human-readable description of this mod. This description should be plain text, with the exception of line breaks, which can be represented with the newline character \\n."
                              | optional,
                            icon
                              | std.contract.any_of [ { _ | Dyn }, String ]
                              | doc "One or more paths to a square .PNG file. If an object is provided, the keys must be the resolution of the corresponding file"
                              | optional,
                            license
                              | js2n.OneOf
                                [
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                                  js2n.array.ArrayOf
                                    (std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ])
                                ]
                              | doc "The license or array of licenses this project operates under."
                              | optional,
                            name
                              | String
                              | doc "A human-readable name for this mod."
                              | optional,
                            ..
                          }
                          | doc "Optional metadata that can be used by mods to display information about the mods installed."
                          | optional,
                        plugins
                          | Array (
                            js2n.OneOf
                              [
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ],
                                js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          adapter = String,
                                          value =
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
                                    required = { value = true, },
                                  }
                              ]
                          )
                          | doc "An array of loader plugins."
                          | optional,
                        provides
                          | Array (
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                { _ | Dyn },
                                Array Dyn,
                                Number,
                                String
                              ]
                          )
                          | doc "An array of ProvidesObjects describing other mods/APIs that this package provides."
                          | optional,
                        repositories
                          | Array String
                          | doc "A list of Maven repository url strings where dependencies can be looked for in addition to Quilt's central repository."
                          | optional,
                        version
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]
                          | doc "Must conform to the Semantic Versioning 2.0.0 specification. In a development environment, the value ${version} can be used as a placeholder by quilt-gradle to be replaced on building the resulting JAR.",
                        ..
                      },
                  schema_version =
                    std.contract.Sequence
                        [ std.number.Integer, std.contract.Equal 1 ],
                },
            required = { quilt_loader = true, schema_version = true, },
          }
      ]