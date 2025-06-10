# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.configType" =
        {
            dependencies
              | refs."definitions.dependencies"
              | { _ | Dyn }
              | optional,
            imports | String | optional,
            ..
          },
      "definitions.dependencies" =
        {
            _ | std.contract.any_of
              [
                String,
                {
                  type
                    | std.enum.TagOrString
                    | [| 'build, '"default" |]
                    | optional,
                  version | String | optional,
                  ..
                }
              ]
          },
    }
    in
  {
      dependencies | refs."definitions.dependencies" | optional,
      frameworks
        | { _ | refs."definitions.configType" }
        | doc "The frameworks on which your project will run."
        | optional,
      runtimes
        | {
          "centos.7-x64" | { _ | Dyn } | optional,
          "debian.8-x64" | { _ | Dyn } | optional,
          "fedora.23-x64" | { _ | Dyn } | optional,
          "fedora.24-x64" | { _ | Dyn } | optional,
          "linuxmint.17-x64" | { _ | Dyn } | optional,
          "linuxmint.17.1-x64" | { _ | Dyn } | optional,
          "linuxmint.17.2-x64" | { _ | Dyn } | optional,
          "linuxmint.17.3-x64" | { _ | Dyn } | optional,
          "linuxmint.18-x64" | { _ | Dyn } | optional,
          "ol.7.0-x64" | { _ | Dyn } | optional,
          "ol.7.1-x64" | { _ | Dyn } | optional,
          "ol.7.2-x64" | { _ | Dyn } | optional,
          "opensuse.13.2-x64" | { _ | Dyn } | optional,
          "opensuse.42.1-x64" | { _ | Dyn } | optional,
          "osx.10.10-x64" | { _ | Dyn } | optional,
          "osx.10.11-x64" | { _ | Dyn } | optional,
          "osx.10.12-x64" | { _ | Dyn } | optional,
          "rhel.7.0-x64" | { _ | Dyn } | optional,
          "rhel.7.1-x64" | { _ | Dyn } | optional,
          "rhel.7.2-x64" | { _ | Dyn } | optional,
          "ubuntu.14.04-x64" | { _ | Dyn } | optional,
          "ubuntu.14.10-x64" | { _ | Dyn } | optional,
          "ubuntu.15.04-x64" | { _ | Dyn } | optional,
          "ubuntu.15.10-x64" | { _ | Dyn } | optional,
          "ubuntu.16.04-x64" | { _ | Dyn } | optional,
          "ubuntu.16.10-x64" | { _ | Dyn } | optional,
          win | { _ | Dyn } | optional,
          win-x64 | { _ | Dyn } | optional,
          win-x86 | { _ | Dyn } | optional,
          win10-arm | { _ | Dyn } | optional,
          win10-arm-aot | { _ | Dyn } | optional,
          win10-x64 | { _ | Dyn } | optional,
          win10-x64-aot | { _ | Dyn } | optional,
          win10-x86 | { _ | Dyn } | optional,
          win10-x86-aot | { _ | Dyn } | optional,
          win7 | { _ | Dyn } | optional,
          win7-x64 | { _ | Dyn } | optional,
          win7-x86 | { _ | Dyn } | optional,
          win8 | { _ | Dyn } | optional,
          win8-arm | { _ | Dyn } | optional,
          win8-x64 | { _ | Dyn } | optional,
          win8-x86 | { _ | Dyn } | optional,
          win81 | { _ | Dyn } | optional,
          win81-arm | { _ | Dyn } | optional,
          win81-x64 | { _ | Dyn } | optional,
          win81-x86 | { _ | Dyn } | optional,
          ..
        }
        | doc "The Operating System and Architectures on which your application will be running."
        | optional,
      supports
        | { _ | { _ | Dyn } }
        | doc "A list of supported target frameworks."
        | optional,
      ..
    }