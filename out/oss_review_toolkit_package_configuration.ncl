# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.licenseFindingCurationReason" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'REFERENCE,
                'NOT_DETECTED,
                'INCORRECT,
                'DOCUMENTATION_OF,
                'DATA_OF,
                'CODE
              |]
            ],
      "definitions.licenseFindingCurations" =
        {
            comment | String | optional,
            concluded_license | String,
            detected_license | String | optional,
            line_count | std.number.Integer | optional,
            path | String,
            reason | refs."definitions.licenseFindingCurationReason" | String,
            start_lines
              | std.contract.any_of [ std.number.Integer, String ]
              | optional,
            ..
          },
      "definitions.pathExcludeReason" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'TEST_TOOL_OF,
                'TEST_OF,
                'PROVIDED_BY,
                'OTHER,
                'OPTIONAL_COMPONENT_OF,
                'EXAMPLE_OF,
                'DOCUMENTATION_OF,
                'DATA_FILE_OF,
                'BUILD_TOOL_OF
              |]
            ],
      "definitions.vcsMatcher" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "type" ],
                  js2n.record.Required [ "url" ],
                  js2n.record.Required [ "revision" ],
                  js2n.record.Required [ "path" ]
                ],
              {
                path | String | optional,
                revision | String | optional,
                type | String | optional,
                url | String | optional,
                ..
              }
            ],
    }
    in
  std.contract.Sequence
      [
        js2n.OneOf
          [
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "vcs" ],
                Array Dyn
              ],
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "source_artifact_url" ],
                Array Dyn
              ]
          ],
        {
          id | String,
          license_finding_curations
            | Array refs."definitions.licenseFindingCurations"
            | optional,
          path_excludes
            | Array
              {
                comment | String | optional,
                pattern | String,
                reason | refs."definitions.pathExcludeReason",
                ..
              }
            | optional,
          source_artifact_url | String | optional,
          vcs | refs."definitions.vcsMatcher" | { _ | Dyn } | optional,
          ..
        }
      ]