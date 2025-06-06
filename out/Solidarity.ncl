# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.cli" =
        {
            binary | String,
            ci | Bool | optional,
            error | String | optional,
            line
              | std.contract.any_of [ std.number.Integer, String ]
              | optional,
            matchIndex | std.number.Integer | optional,
            platform
              | std.enum.TagOrString
              | [|
                'windows,
                'win32,
                'sunos,
                'linux,
                'freebsd,
                'macos,
                'darwin
              |]
              | optional,
            rule | std.enum.TagOrString | [| 'cli |],
            semver | String | optional,
            version | String | optional,
            ..
          },
      "definitions.custom" =
        {
            ci | Bool | optional,
            error | String | optional,
            "match" | String | doc "A regexp to search the output." | optional,
            name | String,
            platform
              | std.enum.TagOrString
              | [|
                'windows,
                'win32,
                'sunos,
                'linux,
                'freebsd,
                'macos,
                'darwin
              |]
              | optional,
            plugin | String,
            rule | std.enum.TagOrString | [| 'custom |],
            ..
          },
      "definitions.dir" =
        std.contract.Sequence
            [
              {
                ci | Bool | optional,
                error | String | optional,
                platform
                  | std.enum.TagOrString
                  | [|
                    'windows,
                    'win32,
                    'sunos,
                    'linux,
                    'freebsd,
                    'macos,
                    'darwin
                  |]
                  | optional,
                rule | std.enum.TagOrString | [| 'directory, 'dir |],
                ..
              },
              js2n.record.Required [ "location" ]
            ],
      "definitions.env" =
        std.contract.Sequence
            [
              {
                ci | Bool | optional,
                error | String | optional,
                platform
                  | std.enum.TagOrString
                  | [|
                    'windows,
                    'win32,
                    'sunos,
                    'linux,
                    'freebsd,
                    'macos,
                    'darwin
                  |]
                  | optional,
                rule | std.enum.TagOrString | [| 'env |],
                ..
              },
              js2n.record.Required [ "variable" ]
            ],
      "definitions.file" =
        std.contract.Sequence
            [
              {
                ci | Bool | optional,
                error | String | optional,
                platform
                  | std.enum.TagOrString
                  | [|
                    'windows,
                    'win32,
                    'sunos,
                    'linux,
                    'freebsd,
                    'macos,
                    'darwin
                  |]
                  | optional,
                rule | std.enum.TagOrString | [| 'file |],
                ..
              },
              js2n.record.Required [ "location" ]
            ],
      "definitions.shell" =
        {
            ci | Bool | optional,
            error | String | optional,
            "match" | String | doc "A regexp to search the output.",
            platform
              | std.enum.TagOrString
              | [|
                'windows,
                'win32,
                'sunos,
                'linux,
                'freebsd,
                'macos,
                'darwin
              |]
              | optional,
            rule | std.enum.TagOrString | [| 'shell |],
            ..
          },
    }
    in
  {
      config
        | {
          output
            | std.enum.TagOrString
            | [| 'silent, 'verbose, 'moderate |]
            | doc "Identify what kind output should happen when a check is called"
            | optional,
          ..
        }
        | optional,
      requirements
        | {
          _ | std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    js2n.OneOf
                      [
                        refs."definitions.cli",
                        std.contract.Sequence
                          [ refs."definitions.dir", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.file", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.env", { _ | Dyn } ],
                        refs."definitions.shell",
                        refs."definitions.custom"
                      ],
                    { _ | Dyn }
                  ]
              )
            ]
        }
        | doc "List of requirement rules for your particular environment",
      ..
    }