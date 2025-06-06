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
        std.contract.any_of
          [
            js2n.record.Required [ "project" ],
            js2n.record.Required [ "workspace" ],
            js2n.record.Required [ "package" ]
          ],
        {
          "$schema"
            | String
            | doc "The schema identifier for the project's configuration"
            | optional,
          activation
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "The scripts used on the activation of the project"
            | optional,
          build-dependencies
            | js2n.record.PropertyNames
              (std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  js2n.string.MinLength 1,
                  { _ | Dyn },
                  Array Dyn
                ])
            | {
              _ | std.contract.any_of
                [
                  js2n.string.MinLength 1,
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String
                ]
            }
            | doc "The build `conda` dependencies, used in the build process. See https://pixi.sh/latest/build/dependency_types/ for more information."
            | optional,
          dependencies
            | js2n.record.PropertyNames
              (std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  js2n.string.MinLength 1,
                  { _ | Dyn },
                  Array Dyn
                ])
            | {
              _ | std.contract.any_of
                [
                  js2n.string.MinLength 1,
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String
                ]
            }
            | doc "The `conda` dependencies, consisting of a package name and a requirement in [MatchSpec](https://github.com/conda/conda/blob/078e7ee79381060217e1ec7f9b0e9cf80ecc8f3f/conda/models/match_spec.py) format"
            | optional,
          environments
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "^[a-z\\d\\-]+$" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String,
                              js2n.array.ArrayOf (js2n.string.MinLength 1)
                            ],
                    },
                properties = {},
                required = {},
              }
            | doc "The environments of the project, defined as a full object or a list of feature names."
            | optional,
          feature
            | js2n.record.PropertyNames
              (std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  js2n.string.MinLength 1,
                  { _ | Dyn },
                  Array Dyn
                ])
            | {
              _ | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            }
            | doc "The features of the project"
            | optional,
          host-dependencies
            | js2n.record.PropertyNames
              (std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  js2n.string.MinLength 1,
                  { _ | Dyn },
                  Array Dyn
                ])
            | {
              _ | std.contract.any_of
                [
                  js2n.string.MinLength 1,
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String
                ]
            }
            | doc "The host `conda` dependencies, used in the build process. See https://pixi.sh/latest/build/dependency_types/ for more information."
            | optional,
          package
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "The package's metadata information"
            | optional,
          project
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "The project's metadata information"
            | optional,
          pypi-dependencies
            | js2n.record.PropertyNames
              (std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  js2n.string.MinLength 1,
                  { _ | Dyn },
                  Array Dyn
                ])
            | {
              _ | std.contract.any_of
                [
                  js2n.string.MinLength 1,
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String,
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String,
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String,
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String,
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String,
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String
                ]
            }
            | doc "The PyPI dependencies"
            | optional,
          pypi-options
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "Options related to PyPI indexes, on the default feature"
            | optional,
          system-requirements
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "The system requirements of the project"
            | optional,
          target
            | js2n.record.PropertyNames
              (std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  js2n.string.MinLength 1,
                  { _ | Dyn },
                  Array Dyn
                ])
            | {
              _ | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            }
            | doc "The targets of the project"
            | optional,
          tasks
            | js2n.record.PropertyNames
              (std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ])
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "^[^\\s\\$]+$" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String,
                              js2n.array.ArrayOf
                                (std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]),
                              js2n.string.MinLength 1
                            ],
                    },
                properties = {},
                required = {},
              }
            | doc "The tasks of the project"
            | optional,
          tool
            | {  .. }
            | doc "Third-party tool configurations, ignored by pixi"
            | optional,
          workspace
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "The workspace's metadata information"
            | optional,
        }
      ]