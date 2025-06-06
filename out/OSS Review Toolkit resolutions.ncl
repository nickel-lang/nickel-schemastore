# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.issueResolutionReason" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'SCANNER_ISSUE, 'CANT_FIX_ISSUE, 'BUILD_TOOL_ISSUE |]
            ],
      "definitions.ruleViolationResolutionReason" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'PATENT_GRANT_EXCEPTION,
                'NOT_MODIFIED_EXCEPTION,
                'LICENSE_ACQUIRED_EXCEPTION,
                'EXAMPLE_OF_EXCEPTION,
                'DYNAMIC_LINKAGE_EXCEPTION,
                'CANT_FIX_EXCEPTION
              |]
            ],
      "definitions.vulnerabilityResolutionReason" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'WORKAROUND_FOR_VULNERABILITY,
                'WILL_NOT_FIX_VULNERABILITY,
                'NOT_A_VULNERABILITY,
                'MITIGATED_VULNERABILITY,
                'INVALID_MATCH_VULNERABILITY,
                'INEFFECTIVE_VULNERABILITY,
                'CANT_FIX_VULNERABILITY
              |]
            ],
    }
    in
  std.contract.Sequence
      [
        std.contract.any_of
          [
            js2n.record.Required [ "issues" ],
            js2n.record.Required [ "rule_violations" ],
            js2n.record.Required [ "vulnerabilities" ]
          ],
        {
          issues
            | Array
              {
                comment | String | optional,
                message | String,
                reason | refs."definitions.issueResolutionReason",
                ..
              }
            | optional,
          rule_violations
            | Array
              {
                comment | String | optional,
                message | String,
                reason | refs."definitions.ruleViolationResolutionReason",
                ..
              }
            | optional,
          vulnerabilities
            | Array
              {
                comment | String | optional,
                id | String,
                reason | refs."definitions.vulnerabilityResolutionReason",
                ..
              }
            | optional,
          ..
        }
      ]