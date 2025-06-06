# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      author
        | String
        | doc "Creator of the rule. (can be a name, nickname, twitter handle, etc.)"
        | optional,
      date
        | js2n.string.Matches
          "^\\d{4}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$"
        | doc "Creation date of the rule. Use the ISO 8601 format YYYY-MM-DD"
        | optional,
      description
        | js2n.string.MaxLength 65535
        | doc "A short description of the rule and the malicious activity that can be detected"
        | optional,
      detection
        | js2n.record.Record
          {
            additional =
              'Some
                  (std.contract.any_of
                    [
                      Array (
                        std.contract.any_of
                          [ String, std.number.Integer, { _ | Dyn } ]
                      ),
                      { _ | Dyn }
                    ]),
            patterns = {},
            properties = { condition = String, },
            required = { condition = true, },
          }
        | doc "A set of search-identifiers that represent properties of searches on log data",
      falsepositives
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 2)
        | doc "A list of known false positives that may occur"
        | optional,
      fields
        | js2n.array.UniqueItems
        | Array String
        | doc "A list of log fields that could be interesting in further analysis of the event and should be displayed to the analyst"
        | optional,
      id
        | String
        | doc "A globally unique identifier for the Sigma rule. This is recommended to be a UUID v4, but not mandatory."
        | optional,
      level
        | js2n.OneOf
          [
            js2n.Const "informational",
            js2n.Const "low",
            js2n.Const "medium",
            js2n.Const "high",
            js2n.Const "critical"
          ]
        | String
        | doc "The criticality of a triggered rule"
        | optional,
      license
        | String
        | doc "License of the rule according the SPDX ID specification (https://spdx.dev/ids/)"
        | optional,
      logsource
        | {
          category
            | String
            | doc "Group of products, like firewall or process_creation"
            | optional,
          definition
            | String
            | doc "can be used to describe the log source"
            | optional,
          product | String | doc "A certain product, like windows" | optional,
          service
            | String
            | doc "A subset of a product's logs, like sshd"
            | optional,
          ..
        }
        | doc "The log source that the rule is supposed to detect malicious activity in.",
      modified
        | js2n.string.Matches
          "^\\d{4}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$"
        | doc "Last modification date of the rule. Use the ISO 8601 format YYYY-MM-DD"
        | optional,
      name
        | js2n.string.MaxLength 256
        | doc "a unique human-readable name that can be used instead of the id as a reference in correlation rules"
        | optional,
      references
        | js2n.array.UniqueItems
        | Array String
        | doc "References to the source that the rule was derived from. These could be blog articles, technical papers, presentations or even tweets"
        | optional,
      related
        | Array
          {
            id
              | String
              | doc "A globally unique identifier for the Sigma rule. This is recommended to be a UUID v4, but not mandatory.",
            type
              | js2n.OneOf
                [
                  js2n.Const "derived",
                  js2n.Const "obsolete",
                  js2n.Const "merged",
                  js2n.Const "renamed",
                  js2n.Const "similar"
                ]
              | String,
            ..
          }
        | doc "A list of related Sigma rules to keep track of the relationships between detections. This can be used to indicate that a rule is derived from another rule, or that a rule has been obsoleted by another rule."
        | optional,
      scope
        | Array (js2n.string.MinLength 2)
        | doc "A list of intended scope of the rule"
        | optional,
      status
        | js2n.OneOf
          [
            js2n.Const "stable",
            js2n.Const "test",
            js2n.Const "experimental",
            js2n.Const "deprecated",
            js2n.Const "unsupported"
          ]
        | String
        | optional,
      tags
        | js2n.array.UniqueItems
        | Array (js2n.string.Matches "^[a-z0-9_-]+\\.[a-z0-9._-]+$")
        | doc "Tags to categorize a Sigma rule."
        | optional,
      taxonomy
        | js2n.string.MaxLength 256
        | doc "Defines the taxonomy used in the Sigma rule"
        | optional,
      title
        | js2n.string.MaxLength 256
        | doc "A brief title for the rule that should contain what the rules is supposed to detect",
      ..
    }