# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.BunLockFileBasePackageInfo" =
        {
            bin
              | std.contract.any_of
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = { ".*" = String, },
                      properties = {},
                      required = {},
                    },
                  String
                ]
              | doc "Executable binaries provided by the package."
              | optional,
            binDir
              | String
              | doc "Directory where the package's binaries are located."
              | optional,
            dependencies
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | doc "A map of dependencies required by this package."
              | optional,
            devDependencies
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | doc "A map of development-only dependencies."
              | optional,
            optionalDependencies
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | doc "A map of optional dependencies for this package."
              | optional,
            optionalPeers
              | Array String
              | doc "An array of optional peer dependencies."
              | optional,
            peerDependencies
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | doc "A map of peer dependencies for this package."
              | optional,
            ..
          },
      "definitions.BunLockFilePackageArray" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  js2n.array.MaxItems 4,
                  js2n.array.MinItems 4,
                  js2n.array.Items
                    [
                      String,
                      String,
                      std.contract.Sequence
                        [
                          refs."definitions.BunLockFilePackageInfo",
                          { _ | Dyn }
                        ],
                      String
                    ] js2n.Always
                ],
              std.contract.Sequence
                [
                  js2n.array.MaxItems 2,
                  js2n.array.MinItems 2,
                  js2n.array.Items
                    [
                      String,
                      std.contract.Sequence
                        [
                          refs."definitions.BunLockFilePackageInfo",
                          { _ | Dyn }
                        ]
                    ] js2n.Always
                ],
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.Items [ String ] js2n.Always
                ],
              std.contract.Sequence
                [
                  js2n.array.MaxItems 3,
                  js2n.array.MinItems 3,
                  js2n.array.Items
                    [
                      String,
                      std.contract.Sequence
                        [
                          refs."definitions.BunLockFilePackageInfo",
                          { _ | Dyn }
                        ],
                      String
                    ] js2n.Always
                ],
              std.contract.Sequence
                [
                  js2n.array.MaxItems 2,
                  js2n.array.MinItems 2,
                  js2n.array.Items
                    [
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                bin =
                                  std.contract.any_of
                                      [
                                        js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = { ".*" = String, },
                                            properties = {},
                                            required = {},
                                          },
                                        String
                                      ],
                                binDir = String,
                              },
                          required = {},
                        }
                    ] js2n.Always
                ]
            ],
      "definitions.BunLockFilePackageInfo" =
        std.contract.Sequence
            [
              refs."definitions.BunLockFileBasePackageInfo",
              {
                bundled
                  | js2n.Enum [ true ]
                  | doc "Indicates if the package is bundled."
                  | optional,
                cpu
                  | std.contract.any_of [ String, Array String ]
                  | doc "Specifies CPU architectures supported by this package."
                  | optional,
                os
                  | std.contract.any_of [ String, Array String ]
                  | doc "Specifies operating systems supported by this package."
                  | optional,
                ..
              }
            ],
      "definitions.BunLockFileWorkspacePackage" =
        std.contract.Sequence
            [
              refs."definitions.BunLockFileBasePackageInfo",
              {
                name
                  | String
                  | doc "The name of the workspace package."
                  | optional,
                version
                  | String
                  | doc "The version of the workspace package."
                  | optional,
                ..
              }
            ],
    }
    in
  {
      lockfileVersion
        | std.number.Integer
        | js2n.Enum [ 0, 1 ]
        | doc "Specifies the version of the lockfile format. Currently only sypporting 0 or 1.",
      overrides
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { ".*" = String, },
            properties = {},
            required = {},
          }
        | doc "Defines custom dependency resolutions for specific packages."
        | optional,
      packages
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { ".*" = refs."definitions.BunLockFilePackageArray", },
            properties = {},
            required = {},
          }
        | doc "Contains information about all the packages used in the project.",
      patchedDependencies
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { ".*" = String, },
            properties = {},
            required = {},
          }
        | doc "Lists dependencies that have been patched to modify their behavior."
        | optional,
      trustedDependencies
        | Array String
        | doc "An array of dependencies explicitly marked as trusted."
        | optional,
      workspaces
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".*" =
                    std.contract.Sequence
                        [
                          refs."definitions.BunLockFileWorkspacePackage",
                          { _ | Dyn }
                        ],
                },
            properties = {},
            required = {},
          }
        | doc "Defines the project workspaces and their corresponding packages.",
      ..
    }