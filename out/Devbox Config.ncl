# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema"
        | String
        | doc "The schema version of this devbox.json file."
        | optional,
      description
        | String
        | doc "A description of the Devbox development environment."
        | optional,
      env
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { ".*" = String, },
            properties = {},
            required = {},
          }
        | doc "List of additional environment variables to be set in the Devbox environment. Values containing $PATH or $PWD will be expanded. No other variable expansion or command substitution will occur."
        | optional,
      env_from | String | optional,
      include
        | Array String
        | doc "List of additional plugins to activate within your devbox shell"
        | optional,
      name
        | String
        | doc "The name of the Devbox development environment."
        | optional,
      nixpkgs
        | {
          commit
            | String
            | doc "The commit hash of the nixpkgs repository to use"
            | optional,
          ..
        }
        | optional,
      packages
        | std.contract.any_of
          [
            Array String,
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      ".*" =
                        std.contract.any_of
                            [
                              {
                                excluded_platforms
                                  | Array (
                                    std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          'armv7l-linux,
                                          'x86_64-linux,
                                          'x86_64-darwin,
                                          'aarch64-darwin,
                                          'aarch64-linux,
                                          'i686-linux
                                        |]
                                      ]
                                  )
                                  | doc "Names of platforms to exclude the package on"
                                  | optional,
                                glibc_patch
                                  | Bool
                                  | doc "Whether to patch glibc to the latest available version for this package"
                                  | optional,
                                platforms
                                  | Array (
                                    std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          'armv7l-linux,
                                          'x86_64-linux,
                                          'x86_64-darwin,
                                          'aarch64-darwin,
                                          'aarch64-linux,
                                          'i686-linux
                                        |]
                                      ]
                                  )
                                  | doc "Names of platforms to install the package on. This package will be skipped for any platforms not on this list"
                                  | optional,
                                version
                                  | String
                                  | doc "Version of the package"
                                  | optional,
                                ..
                              },
                              String
                            ],
                    },
                properties = {},
                required = {},
              }
          ]
        | doc "Collection of packages to install"
        | optional,
      shell
        | {
          init_hook | std.contract.any_of [ String, Array String ] | optional,
          scripts
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  { ".*" = std.contract.any_of [ String, Array String ], },
                properties = {},
                required = {},
              }
            | doc "List of command/script definitions to run with `devbox run <script_name>`."
            | optional,
        }
        | doc "Definitions of scripts and actions to take when in devbox shell."
        | optional,
    }