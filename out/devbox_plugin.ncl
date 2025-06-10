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
        | doc "The schema version of this plugin file."
        | optional,
      create_files
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { ".*" = String, },
            properties = {},
            required = {},
          }
        | doc "List of files to create in the user's project directory when the plugin is activated. The key points to the file path where the file will be created. The value points to the default file that should be copied to that location"
        | optional,
      description
        | String
        | doc "A short description of the plugin and how it works. This will automatically display when the user first installs the plugin, or runs `devbox info`",
      env
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { ".*" = String, },
            properties = {},
            required = {},
          }
        | doc "List of additional environment variables to be set in the Devbox environment. These can be overridden by environment variables set in the user's devbox.json"
        | optional,
      include
        | Array String
        | doc "List of additional plugins to activate within your devbox shell"
        | optional,
      name | String | doc "The name of the plugin.",
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
        | { _ | Dyn }
        | doc "Shell specific options and hooks for the plugin."
        | optional,
      version | String | doc "The version of the plugin.",
      ..
    }