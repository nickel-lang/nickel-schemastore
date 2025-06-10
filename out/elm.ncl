# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Application" =
        {
            dependencies
              | refs."definitions.ApplicationDependenciesGroup"
              | { _ | Dyn },
            elm-version | refs."definitions.Version" | String,
            source-directories | Array String,
            test-dependencies
              | refs."definitions.ApplicationDependenciesGroup"
              | { _ | Dyn },
            type | std.contract.Equal "application",
          },
      "definitions.ApplicationDependencies" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence [ refs."definitions.Version", String ]
              },
              js2n.record.FieldsMatch "^[^/]+/[^/]+$"
            ],
      "definitions.ApplicationDependenciesGroup" =
        {
            direct | refs."definitions.ApplicationDependencies" | { _ | Dyn },
            indirect | refs."definitions.ApplicationDependencies" | { _ | Dyn },
          },
      "definitions.Package" =
        {
            dependencies | refs."definitions.PackageDependencies" | { _ | Dyn },
            elm-version | refs."definitions.Range" | String,
            exposed-modules
              | std.contract.any_of
                [
                  Array String,
                  std.contract.Sequence
                    [ { _ | Array String }, js2n.record.FieldsMatch ".*" ]
                ],
            license
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'UNLICENSED,
                        'MS-PL,
                        '"MPL-2.0",
                        'MIT,
                        '"LGPL-3.0-or-later",
                        '"LGPL-3.0-only",
                        '"LGPL-2.1-or-later",
                        '"LGPL-2.1-only",
                        '"LGPL-2.0-only",
                        'ISC,
                        '"GPL-3.0-only",
                        '"GPL-2.0-only",
                        '"EPL-2.0",
                        '"EPL-1.0",
                        '"CDDL-1.1",
                        '"CDDL-1.0",
                        '"CC0-1.0",
                        '"BSL-1.0",
                        'BSD-3-Clause,
                        'BSD-2-Clause,
                        '"Apache-2.0",
                        '"AGPL-3.0-only"
                      |]
                    ]
                ],
            name | js2n.string.Matches "^[^/]+/[^/]+$",
            summary | String,
            test-dependencies
              | refs."definitions.PackageDependencies"
              | { _ | Dyn },
            type | std.contract.Equal "package",
            version | String,
          },
      "definitions.PackageDependencies" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence [ refs."definitions.Range", String ]
              },
              js2n.record.FieldsMatch "^[^/]+/[^/]+$"
            ],
      "definitions.Range" =
        js2n.string.Matches
            "^[0-9]+\\.[0-9]+\\.[0-9]+ <= v < [0-9]+\\.[0-9]+\\.[0-9]+$",
      "definitions.Version" = js2n.string.Matches "^[0-9]+\\.[0-9]+\\.[0-9]+$",
    }
    in
  std.contract.any_of
      [ refs."definitions.Application", refs."definitions.Package" ]