# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      commands
        | { _ | String }
        | doc m%"
          A hash of runnable commands for `bpkg run`.
          
          See more: https://github.com/bpkg/bpkg#commands-optional
        "%
        | optional,
      commands-description
        | { _ | String }
        | doc m%"
          A hash of descriptions for each command in `commands`.
          
          See more: https://github.com/bpkg/bpkg#commands-description-optional
        "%
        | optional,
      dependencies
        | { _ | String }
        | doc m%"
          Hash of dependencies of this project. Use either a tagged release identifier or `master`.
          
          See more: https://github.com/bpkg/bpkg#dependencies-optional
        "%
        | optional,
      dependencies-dev
        | { _ | String }
        | doc m%"
          Hash of development dependencies of this project. Use either a tagged release identifier or `master`.
          
          See more: https://github.com/bpkg/bpkg#dependencies-dev-optional
        "%
        | optional,
      description
        | String
        | doc m%"
          Human-readable description of the functionality of the package.
          
          See more: https://github.com/bpkg/bpkg#description
        "%,
      files
        | Array String
        | doc "An array of non-script files to install into a project. See more: https://github.com/bpkg/bpkg#files-optional"
        | optional,
      global
        | String
        | doc m%"
          Whether the package is only intended be installed as a global script. Allows the omission of the `--global` flag when installing.
          
          See more: https://github.com/bpkg/bpkg#global
        "%,
      install
        | String
        | doc m%"
          Shell script used to invoke in the install script. Required if package is being installed as a global script.
          
          See more: https://github.com/bpkg/bpkg#install-1
        "%,
      name
        | String
        | doc m%"
          Where the dependency is located in `deps/`.
          
          See more: https://github.com/bpkg/bpkg#name
        "%,
      scripts
        | Array String
        | doc "An array of scripts to install into a project. See more: https://github.com/bpkg/bpkg#scripts",
      version
        | String
        | doc m%"
          The current version of the dependency.
          
          See more: https://github.com/bpkg/bpkg#version-optional
        "%
        | optional,
      ..
    }