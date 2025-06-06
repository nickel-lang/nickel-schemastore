# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.charPair" =
        std.contract.Sequence
            [
              js2n.array.MinItems 2,
              js2n.array.Items [ String, String ] js2n.Never
            ],
      "definitions.regexp" =
        { flags | String | optional, pattern | String, .. },
    }
    in
  {
      autoCloseBefore
        | String
        | doc "What characters must be after the cursor for bracket or quote autoclosing to occur."
        | optional,
      autoClosingPairs
        | Array (
          std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.charPair", Array Dyn ],
              {
                close | String,
                notIn | Array String | optional,
                open | String,
                ..
              }
            ]
        )
        | doc "The language's auto closing pairs. The 'close' character is automatically inserted with the 'open' character is typed."
        | optional,
      brackets
        | Array (
          std.contract.Sequence [ refs."definitions.charPair", Array Dyn ]
        )
        | doc "The language's brackets."
        | optional,
      comments
        | {
          blockComment
            | refs."definitions.charPair"
            | Array Dyn
            | doc "The block comment character pair, like `/* block comment *&#47;`"
            | optional,
          lineComment
            | String
            | doc "The line comment token, like `// this is a comment`."
            | optional,
          ..
        }
        | doc "The language's comment settings."
        | optional,
      folding
        | {
          markers
            | {
              end
                | std.contract.any_of [ String, refs."definitions.regexp" ]
                | optional,
              start
                | std.contract.any_of [ String, refs."definitions.regexp" ]
                | optional,
              ..
            }
            | doc "Region markers used by the language."
            | optional,
          ..
        }
        | doc "The language's folding rules."
        | optional,
      indentationRules
        | {
          decreaseIndentPattern
            | std.contract.any_of [ String, refs."definitions.regexp" ]
            | doc "If a line matches this pattern, then all the lines after it should be unindented once (until another rule matches).",
          increaseIndentPattern
            | std.contract.any_of [ String, refs."definitions.regexp" ]
            | doc "If a line matches this pattern, then all the lines after it should be indented once (until another rule matches).",
          indentNextLinePattern
            | std.contract.any_of [ String, refs."definitions.regexp" ]
            | doc "If a line matches this pattern, then only the next line after it should be indented once."
            | optional,
          unIndentedLinePattern
            | std.contract.any_of [ String, refs."definitions.regexp" ]
            | doc "If a line matches this pattern, then its indentation should not be changed and it should not be evaluated against the other rules."
            | optional,
          ..
        }
        | doc "The language's indentation settings."
        | optional,
      onEnterRules
        | Array
          {
            action
              | {
                appendText | String | optional,
                indent
                  | std.enum.TagOrString
                  | [| 'outdent, 'indentOutdent, 'indent, 'none |],
                removeText
                  | std.number.Integer
                  | js2n.number.Minimum 1
                  | optional,
                ..
              },
            afterText
              | std.contract.any_of [ String, refs."definitions.regexp" ]
              | optional,
            beforeText
              | std.contract.any_of [ String, refs."definitions.regexp" ],
            previousLineText
              | std.contract.any_of [ String, refs."definitions.regexp" ]
              | optional,
            ..
          }
        | doc "The language's rules to be evaluated when pressing Enter."
        | optional,
      surroundingPairs
        | Array (
          std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.charPair", Array Dyn ],
              { close | String, open | String, .. }
            ]
        )
        | doc "The language's surrounding pairs. When the 'open' character is typed on a selection, the selected string is surrounded by the open and close characters."
        | optional,
      wordPattern
        | std.contract.any_of [ String, refs."definitions.regexp" ]
        | doc "The language's word definition."
        | optional,
      ..
    }