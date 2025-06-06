# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.Sequence
      [
        js2n.OneOf
          [
            std.contract.Sequence
              [
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "nodes" ],
                    Array Dyn,
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "grok" ],
                    Array Dyn,
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "statics" ],
                    Array Dyn
                  ],
                std.contract.not
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "whitelist" ],
                      Array Dyn
                    ])
              ],
            std.contract.Sequence
              [
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "whitelist" ],
                    Array Dyn
                  ],
                std.contract.not
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "statics" ],
                      Array Dyn,
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "pattern_syntax" ],
                      Array Dyn,
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "nodes" ],
                      Array Dyn,
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "onsuccess" ],
                      Array Dyn
                    ])
              ]
          ],
        {
          data
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          debug
            | Bool
            | doc "If true, enables the debug. Default is false."
            | optional,
          description
            | String
            | doc "description of the parser usage"
            | optional,
          filter
            | String
            | doc m%"
              filter must be a valid expr expression that will be evaluated
              against the event.  If filter evaluation returns true or is
              absent, node will be processed.  If filter returns false or a
              non-boolean, node won't be processed.
              
            "%
            | optional,
          format
            | js2n.number.Minimum 1
            | doc m%"
              Non mandatory format version for the parser. configuration
              file. New features, may not be understood by old crowdsec
              version, filling this correctly ensures that crowdsec supports
              all the required parser features.
              
            "%
            | optional,
          grok
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          name
            | String
            | doc m%"
              The mandatory name of the node. If not present, node will be
              skipped at runtime. It is used for example in debug log to help
              you track things.
              
            "%,
          nodes
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | doc m%"
              nodes is a list of parser nodes, allowing you to build
              trees. Each subnode must be valid, and if any of the subnodes
              succeed, the whole node is considered successful.
              
            "%
            | optional,
          onsuccess
            | js2n.string.Matches "^next_stage$"
            | doc "If node is successful and onsuccess equals next_stage, event is moved to the next stage"
            | optional,
          pattern_syntax
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          stash
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          statics
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          whitelist | { _ | Dyn } | optional,
        }
      ]