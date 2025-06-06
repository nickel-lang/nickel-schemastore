# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.CloneDetectionConfig" =
        {
            identical_clones_only | Bool | optional,
            min_duplicates | std.number.Integer | optional,
            min_lines | std.number.Integer | optional,
          },
      "definitions.GitHubConfig" =
        {
            ignore_labels | Array String | optional,
            labels | Array String | optional,
            request_review
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.RequestReview", { _ | Dyn } ]
                ]
              | optional,
            sourcery_branch | String | optional,
          },
      "definitions.MatchRuleTestConfig" =
        { expect | String | optional, "match" | String, },
      "definitions.MetricsConfig" = { quality_threshold | Number | optional, },
      "definitions.NoMatchRuleTestConfig" = { no-match | String, },
      "definitions.PathsConfig" =
        {
            exclude | Array String | optional,
            include | Array String | optional,
          },
      "definitions.ProxyConfig" =
        {
            no_ssl_verify | Bool | optional,
            ssl_certs_file | String | optional,
            url
              | js2n.string.MaxLength 65536
              | js2n.string.MinLength 1
              | optional,
          },
      "definitions.PythonVersion" =
        { major | std.number.Integer, minor | std.number.Integer, .. },
      "definitions.RequestReview" =
        { forked | String | optional, origin | String | optional, },
      "definitions.RuleConfig" =
        {
            condition | String | optional,
            description | String,
            explanation | String | optional,
            id
              | js2n.string.MaxLength 88
              | js2n.string.Matches "^[A-Za-z][A-Za-z0-9-_/:]*$",
            language | refs."definitions.RuleLanguage" | String | optional,
            paths | refs."definitions.PathsConfig" | { _ | Dyn } | optional,
            pattern | String,
            replacement | String | optional,
            tags
              | Array (
                std.contract.Sequence
                  [
                    js2n.string.MaxLength 88,
                    js2n.string.Matches "^[A-Za-z][A-Za-z0-9-_/:]*$"
                  ]
              )
              | optional,
            tests
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.MatchRuleTestConfig", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.NoMatchRuleTestConfig", { _ | Dyn } ]
                  ]
              )
              | optional,
          },
      "definitions.RuleLanguage" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'typescript, 'javascript, 'java, 'python |]
            ],
      "definitions.RuleSettingsConfig" =
        {
            disable
              | Array String
              | doc "A list of rule IDs Sourcery will never suggest."
              | optional,
            enable | Array String | optional,
            python_version
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.PythonVersion", { _ | Dyn } ]
                ]
              | doc "A string specifying the lowest Python version your project supports. Sourcery will not suggest refactorings requiring a higher Python version."
              | optional,
            rule_types
              | Array (
                std.contract.Sequence [ refs."definitions.RuleType", String ]
              )
              | optional,
          },
      "definitions.RuleType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'hover, 'comment, 'suggestion, 'refactoring |]
            ],
    }
    in
  {
      clone_detection | refs."definitions.CloneDetectionConfig" | optional,
      github | refs."definitions.GitHubConfig" | optional,
      ignore
        | Array String
        | doc "A list of paths or files which Sourcery will ignore."
        | optional,
      metrics | refs."definitions.MetricsConfig" | optional,
      proxy | refs."definitions.ProxyConfig" | optional,
      rule_settings | refs."definitions.RuleSettingsConfig" | optional,
      rule_tags | { _ | Array String } | doc "Additional rule tags." | optional,
      rules
        | Array refs."definitions.RuleConfig"
        | doc "A list of custom rules Sourcery will include in its analysis."
        | optional,
      version
        | String
        | doc "The schema version of this config file"
        | optional,
    }