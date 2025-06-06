# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.dataType" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                bin-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for bin."
                  | optional,
                bundledDependencies-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for bundledDependencies."
                  | optional,
                config-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for config."
                  | optional,
                cpu-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for cpu."
                  | optional,
                dependencies-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for dependencies."
                  | optional,
                description-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for description."
                  | optional,
                devDependencies-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for devDependencies."
                  | optional,
                directories-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for directories."
                  | optional,
                engines-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for engines."
                  | optional,
                files-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for files."
                  | optional,
                homepage-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for homepage."
                  | optional,
                keywords-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for keywords."
                  | optional,
                license-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for license."
                  | optional,
                main-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for main."
                  | optional,
                man-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for man."
                  | optional,
                name-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for name."
                  | optional,
                optionalDependencies-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for optionalDependencies."
                  | optional,
                os-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for os."
                  | optional,
                peerDependencies-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for peerDependencies."
                  | optional,
                preferGlobal-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for preferGlobal."
                  | optional,
                private-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for private."
                  | optional,
                repository-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for repository."
                  | optional,
                scripts-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for scripts."
                  | optional,
                version-type
                  | refs."definitions.rule"
                  | doc "Ensure the proper data type is used for version."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.dependencies" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                no-absolute-version-dependencies
                  | refs."definitions.rule"
                  | doc "Restrict dependencies from specifying an absolute version."
                  | optional,
                no-absolute-version-devDependencies
                  | refs."definitions.rule"
                  | doc "Restrict devDependencies from specifying an absolute version."
                  | optional,
                no-caret-version-dependencies
                  | refs."definitions.rule"
                  | doc "Restrict dependencies from using caret version syntax."
                  | optional,
                no-caret-version-devDependencies
                  | refs."definitions.rule"
                  | doc "Restrict devDependencies from using caret version syntax."
                  | optional,
                no-restricted-dependencies
                  | refs."definitions.rule"
                  | doc "Restrict a list of dependencies."
                  | optional,
                no-restricted-devDependencies
                  | refs."definitions.rule"
                  | doc "Restrict a list of devDependencies."
                  | optional,
                no-restricted-pre-release-dependencies
                  | refs."definitions.rule"
                  | doc "Restrict listed dependencies from using pre-release versions."
                  | optional,
                no-restricted-pre-release-devDependencies
                  | refs."definitions.rule"
                  | doc "Restrict listed devDependencies from using pre-release versions."
                  | optional,
                no-tilde-version-dependencies
                  | refs."definitions.rule"
                  | doc "Restrict dependencies from using tilde version syntax."
                  | optional,
                no-tilde-version-devDependencies
                  | refs."definitions.rule"
                  | doc "Restrict devDependencies from using tilde version syntax."
                  | optional,
                prefer-absolute-version-dependencies
                  | refs."definitions.rule"
                  | doc "Require all dependencies to use absolute versions."
                  | optional,
                prefer-absolute-version-devDependencies
                  | refs."definitions.rule"
                  | doc "Require all devDependencies to use absolute versions."
                  | optional,
                prefer-alphabetical-bundledDependencies
                  | refs."definitions.rule"
                  | doc "Require bundledDependencies to be listed in alphabetical order."
                  | optional,
                prefer-alphabetical-dependencies
                  | refs."definitions.rule"
                  | doc "Require dependencies to be listed in alphabetical order."
                  | optional,
                prefer-alphabetical-devDependencies
                  | refs."definitions.rule"
                  | doc "Require devDependencies to be listed in alphabetical order."
                  | optional,
                prefer-alphabetical-optionalDependencies
                  | refs."definitions.rule"
                  | doc "Require optionalDependencies to be listed in alphabetical order."
                  | optional,
                prefer-alphabetical-peerDependencies
                  | refs."definitions.rule"
                  | doc "Require peerDependencies to be listed in alphabetical order."
                  | optional,
                prefer-caret-version-dependencies
                  | refs."definitions.rule"
                  | doc "Require all dependencies to use caret version syntax."
                  | optional,
                prefer-caret-version-devDependencies
                  | refs."definitions.rule"
                  | doc "Require all devDependencies to use caret version syntax."
                  | optional,
                prefer-no-version-zero-dependencies
                  | refs."definitions.rule"
                  | doc "Restrict dependencies from specifying version 0.x.x modules."
                  | optional,
                prefer-no-version-zero-devDependencies
                  | refs."definitions.rule"
                  | doc "Restrict devDependencies from specifying version 0.x.x modules."
                  | optional,
                prefer-tilde-version-dependencies
                  | refs."definitions.rule"
                  | doc "Require all dependencies to use tilde version syntax."
                  | optional,
                prefer-tilde-version-devDependencies
                  | refs."definitions.rule"
                  | doc "Require all devDependencies to use tilde version syntax."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.deprecated" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                prefer-no-engineStrict
                  | refs."definitions.rule"
                  | doc "Ensure engineStrict is not present in package.json file."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.format" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                description-format
                  | refs."definitions.rule"
                  | doc "Require description formatting rules, such as: requiring the first letter be capitalized and/or ending with a period."
                  | optional,
                name-format
                  | refs."definitions.rule"
                  | doc "Require name to be lowercase."
                  | optional,
                version-format
                  | refs."definitions.rule"
                  | doc "Require version to follow semver."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.packageJsonProperties" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                prefer-property-order
                  | refs."definitions.rule"
                  | doc "Require all package.json properties to be in a specified order."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.requiredNode" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                require-author
                  | refs."definitions.rule"
                  | doc "Require author property."
                  | optional,
                require-bin
                  | refs."definitions.rule"
                  | doc "Require bin property."
                  | optional,
                require-bugs
                  | refs."definitions.rule"
                  | doc "Require bugs property."
                  | optional,
                require-bundledDependencies
                  | refs."definitions.rule"
                  | doc "Require bundledDependencies property."
                  | optional,
                require-config
                  | refs."definitions.rule"
                  | doc "Require config property."
                  | optional,
                require-contributors
                  | refs."definitions.rule"
                  | doc "Require contributors property."
                  | optional,
                require-cpu
                  | refs."definitions.rule"
                  | doc "Require cpu property."
                  | optional,
                require-dependencies
                  | refs."definitions.rule"
                  | doc "Require dependencies property."
                  | optional,
                require-description
                  | refs."definitions.rule"
                  | doc "Require description property."
                  | optional,
                require-devDependencies
                  | refs."definitions.rule"
                  | doc "Require devDependencies property."
                  | optional,
                require-directories
                  | refs."definitions.rule"
                  | doc "Require directories property."
                  | optional,
                require-engines
                  | refs."definitions.rule"
                  | doc "Require engines property."
                  | optional,
                require-files
                  | refs."definitions.rule"
                  | doc "Require files property."
                  | optional,
                require-homepage
                  | refs."definitions.rule"
                  | doc "Require homepage property."
                  | optional,
                require-keywords
                  | refs."definitions.rule"
                  | doc "Require keywords property."
                  | optional,
                require-license
                  | refs."definitions.rule"
                  | doc "Require license property."
                  | optional,
                require-main
                  | refs."definitions.rule"
                  | doc "Require main property."
                  | optional,
                require-man
                  | refs."definitions.rule"
                  | doc "Require man property."
                  | optional,
                require-module
                  | refs."definitions.rule"
                  | doc "Require module property."
                  | optional,
                require-name
                  | refs."definitions.rule"
                  | doc "Require name property."
                  | optional,
                require-optionalDependencies
                  | refs."definitions.rule"
                  | doc "Require optionalDependencies property."
                  | optional,
                require-os
                  | refs."definitions.rule"
                  | doc "Require os property."
                  | optional,
                require-peerDependencies
                  | refs."definitions.rule"
                  | doc "Require peerDependencies property."
                  | optional,
                require-preferGlobal
                  | refs."definitions.rule"
                  | doc "Require preferGlobal property."
                  | optional,
                require-private
                  | refs."definitions.rule"
                  | doc "Require private property."
                  | optional,
                require-publishConfig
                  | refs."definitions.rule"
                  | doc "Require publishConfig property."
                  | optional,
                require-repository
                  | refs."definitions.rule"
                  | doc "Require repository property."
                  | optional,
                require-scripts
                  | refs."definitions.rule"
                  | doc "Require scripts property."
                  | optional,
                require-version
                  | refs."definitions.rule"
                  | doc "Require version property."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.rule" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'error, 'warning, 'off |] ],
              Array Dyn
            ],
      "definitions.validValues" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                valid-values-author
                  | refs."definitions.rule"
                  | doc "Requires author to equal one of the supplied values."
                  | optional,
                valid-values-engines
                  | refs."definitions.rule"
                  | doc "Requires engines to equal one of the supplied values."
                  | optional,
                valid-values-license
                  | refs."definitions.rule"
                  | doc "Requires license to equal one of the supplied values."
                  | optional,
                valid-values-name-scope
                  | refs."definitions.rule"
                  | doc "Requires the scope used for the name to equal one of the supplied values."
                  | optional,
                valid-values-private
                  | refs."definitions.rule"
                  | doc "Requires private to equal one of the supplied values."
                  | optional,
                valid-values-publishConfig
                  | refs."definitions.rule"
                  | doc "Requires publishConfig to equal one of the supplied values."
                  | optional,
                ..
              },
              Array Dyn
            ],
    }
    in
  {
      extends
        | std.contract.any_of [ String, Array String ]
        | doc "Use the extends property to inherit rules from a shared configuration file/module."
        | optional,
      rules
        | refs."definitions.requiredNode"
        | refs."definitions.dataType"
        | refs."definitions.validValues"
        | refs."definitions.dependencies"
        | refs."definitions.format"
        | refs."definitions.packageJsonProperties"
        | refs."definitions.deprecated"
        | { _ | Dyn }
        | doc "npm-package-json-lint rules are configurable. Use the rules object to specify what rules should be used and what severity level they should follow."
        | optional,
      ..
    }