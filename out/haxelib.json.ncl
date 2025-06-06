# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.dependencyVersion" =
        js2n.OneOf
            [
              std.contract.Sequence [ refs."definitions.semver", String ],
              js2n.string.MaxLength 0
            ],
      "definitions.haxelibTag" =
        std.contract.Sequence
            [
              js2n.string.MinLength 2,
              js2n.string.Matches "^[A-Za-z0-9_.-]{2,}$"
            ],
      "definitions.projectName" =
        std.contract.Sequence
            [
              js2n.string.MinLength 3,
              js2n.string.Matches "^[A-Za-z0-9_.-]{3,}$",
              std.contract.not
                (std.contract.any_of
                  [
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'all, 'haxe |] ],
                    js2n.Null,
                    Bool,
                    Number,
                    js2n.string.Matches "\\.(zip|hxml)$",
                    { _ | Dyn },
                    Array Dyn
                  ])
            ],
      "definitions.semver" =
        js2n.string.Matches
            "^(\\d|[1-9]\\d*)\\.(\\d|[1-9]\\d*)\\.(\\d|[1-9]\\d*)(-(alpha|beta|rc)(\\.(\\d|[1-9]\\d*))?)?$",
      "definitions.userName" =
        std.contract.Sequence
            [
              js2n.string.MinLength 3,
              js2n.string.Matches "^[A-Za-z0-9_.-]{3,}$"
            ],
    }
    in
  {
      classPath
        | String
        | doc "Folder in the package which contains the source files for this project"
        | optional,
      contributors
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array (std.contract.Sequence [ refs."definitions.userName", String ])
        | doc "List of project contributors that are allowed to upload to haxelib",
      dependencies
        | { _ | refs."definitions.dependencyVersion" }
        | js2n.record.FieldsMatch "^[A-Za-z0-9_.-]{3,}$"
        | doc "Project's dependencies"
        | optional,
      description | String | doc "Short description of the project" | optional,
      documentation
        | {
          defines
            | String
            | doc "Relative path to json file describing this project's custom defines"
            | optional,
          metadata
            | String
            | doc "Relative path to json file describing this project's custom metadata"
            | optional,
        }
        | doc "Project's documentation resources"
        | optional,
      license
        | std.enum.TagOrString
        | [| 'Apache, 'MIT, 'Public, 'BSD, 'LGPL, 'GPL |]
        | doc "Open source license under which the project is licensed",
      main
        | String
        | doc m%"
          A class to run on `haxelib run libraryname` command.
          Relative to library root. E.g. to run `tools/Main.hx` the value should be `tools.Main`.
          Default value since Haxe 4: Run
        "%
        | optional,
      name | refs."definitions.projectName" | String,
      releasenote
        | String
        | doc "Short description of changes made in this version",
      tags
        | js2n.array.UniqueItems
        | Array (
          std.contract.Sequence [ refs."definitions.haxelibTag", String ]
        )
        | doc "List of tags for easier finding the project on haxelib"
        | optional,
      url | String | doc "Project's website" | optional,
      version | refs."definitions.semver",
    }