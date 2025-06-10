# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.captures" =
        std.contract.Sequence
            [
              {
                _ | {
                  name | refs."definitions.name" | String | optional,
                  patterns
                    | Array (
                      std.contract.Sequence
                        [ refs."definitions.pattern", { _ | Dyn } ]
                    )
                    | optional,
                }
              },
              js2n.record.FieldsMatch "^[0-9]+$"
            ],
      "definitions.grammar" =
        {
            patterns
              | Array (
                std.contract.Sequence
                  [ refs."definitions.pattern", { _ | Dyn } ]
              ),
            repository
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.pattern", { _ | Dyn } ]
              }
              | doc "a dictionary (i.e. key/value pairs) of rules which can be included from other places in the grammar. The key is the name of the rule and the value is the actual rule. Further explanation (and example) follow with the description of the include rule key."
              | optional,
            ..
          },
      "definitions.name" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    '"variable.parameter",
                    '"variable.other",
                    '"variable.name",
                    '"variable.language",
                    'variable,
                    '"support.variable",
                    '"support.type.property-name.scss",
                    '"support.type.property-name.less",
                    '"support.type.property-name.css",
                    '"support.type.property-name",
                    '"support.type",
                    '"support.property-value",
                    '"support.other",
                    '"support.function.git-rebase",
                    '"support.function",
                    '"support.constant",
                    '"support.class",
                    'support,
                    'strong,
                    '"string.yaml",
                    '"string.xml",
                    '"string.unquoted",
                    '"string.regexp",
                    '"string.quoted.triple",
                    '"string.quoted.single",
                    '"string.quoted.other",
                    '"string.quoted.double",
                    '"string.quoted",
                    '"string.other",
                    '"string.jade",
                    '"string.interpolated",
                    '"string.html",
                    'string,
                    '"storage.type.java",
                    '"storage.type.cs",
                    '"storage.type",
                    '"storage.modifier.package.java",
                    '"storage.modifier.import.java",
                    '"storage.modifier",
                    'storage,
                    '"metatag.php",
                    '"meta.type.name",
                    '"meta.type.annotation",
                    '"meta.tag",
                    '"meta.structure.dictionary.key.python",
                    '"meta.selector",
                    '"meta.return-type",
                    '"meta.preprocessor.string",
                    '"meta.preprocessor.numeric",
                    '"meta.preprocessor",
                    '"meta.parameter.type.variable",
                    '"meta.cast",
                    'meta,
                    '"markup.underline.link",
                    '"markup.underline",
                    '"markup.raw",
                    '"markup.quote",
                    '"markup.punctuation.quote.beginning",
                    '"markup.punctuation.list.beginning",
                    '"markup.other",
                    '"markup.list.unnumbered",
                    '"markup.list.numbered",
                    '"markup.list",
                    '"markup.italic",
                    '"markup.inserted",
                    '"markup.inline.raw",
                    '"markup.heading",
                    '"markup.deleted",
                    '"markup.changed",
                    '"markup.bold",
                    'markup,
                    '"keyword.other.unit",
                    '"keyword.other",
                    '"keyword.operator.new",
                    '"keyword.operator",
                    '"keyword.control.less",
                    '"keyword.control",
                    'keyword,
                    '"invalid.illegal",
                    '"invalid.deprecated",
                    'invalid,
                    'header,
                    '"entity.other.inherited-class",
                    '"entity.other.attribute-name",
                    '"entity.other",
                    '"entity.name.type",
                    '"entity.name.tag",
                    '"entity.name.selector",
                    '"entity.name.section",
                    '"entity.name.method",
                    '"entity.name.function",
                    '"entity.name.class",
                    '"entity.name",
                    'entity,
                    'emphasis,
                    '"constant.sha.git-rebase",
                    '"constant.rgb-value",
                    '"constant.regexp",
                    '"constant.other",
                    '"constant.numeric",
                    '"constant.language",
                    '"constant.character.escape",
                    '"constant.character",
                    'constant,
                    '"comment.line.percentage",
                    '"comment.line.number-sign",
                    '"comment.line.double-slash",
                    '"comment.line.double-dash",
                    '"comment.line",
                    '"comment.block.documentation",
                    '"comment.block",
                    'comment
                  |]
                ]
            ],
      "definitions.pattern" =
        std.contract.Sequence
            [
              js2n.record.DependentFields
                {
                  applyEndPatternLast = [ "end" ],
                  end = [ "begin" ],
                  endCaptures = [ "begin", "end" ],
                  while = [ "begin" ],
                  whileCaptures = [ "begin", "while" ],
                },
              js2n.record.DependentContracts
                {
                  begin =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "end" ],
                          Array Dyn,
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "while" ],
                          Array Dyn
                        ],
                  beginCaptures =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "begin", "end" ],
                          Array Dyn,
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "begin", "while" ],
                          Array Dyn
                        ],
                  contentName =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "begin", "end" ],
                          Array Dyn,
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "begin", "while" ],
                          Array Dyn
                        ],
                },
              {
                applyEndPatternLast
                  | std.number.Integer
                  | js2n.number.Maximum 1
                  | js2n.number.Minimum 0
                  | optional,
                begin
                  | String
                  | doc "these keys allow matches which span several lines and must both be mutually exclusive with the match key. Each is a regular expression pattern. begin is the pattern that starts the block and end is the pattern which ends the block. Captures from the begin pattern can be referenced in the end pattern by using normal regular expression back-references. This is often used with here-docs. A begin/end rule can have nested patterns using the patterns key."
                  | optional,
                beginCaptures
                  | refs."definitions.captures"
                  | { _ | Dyn }
                  | doc "allows you to assign attributes to the captures of the begin pattern. Using the captures key for a begin/end rule is short-hand for giving both beginCaptures and endCaptures with same values."
                  | optional,
                captures
                  | refs."definitions.captures"
                  | { _ | Dyn }
                  | doc "allows you to assign attributes to the captures of the match pattern. Using the captures key for a begin/end rule is short-hand for giving both beginCaptures and endCaptures with same values."
                  | optional,
                comment | String | optional,
                contentName
                  | refs."definitions.name"
                  | String
                  | doc "this key is similar to the name key but only assigns the name to the text between what is matched by the begin/end patterns."
                  | optional,
                disabled
                  | std.number.Integer
                  | js2n.number.Maximum 1
                  | js2n.number.Minimum 0
                  | doc "set this property to 1 to disable the current pattern"
                  | optional,
                end
                  | String
                  | doc "these keys allow matches which span several lines and must both be mutually exclusive with the match key. Each is a regular expression pattern. begin is the pattern that starts the block and end is the pattern which ends the block. Captures from the begin pattern can be referenced in the end pattern by using normal regular expression back-references. This is often used with here-docs. A begin/end rule can have nested patterns using the patterns key."
                  | optional,
                endCaptures
                  | refs."definitions.captures"
                  | { _ | Dyn }
                  | doc "allows you to assign attributes to the captures of the end pattern. Using the captures key for a begin/end rule is short-hand for giving both beginCaptures and endCaptures with same values."
                  | optional,
                include
                  | String
                  | doc "this allows you to reference a different language, recursively reference the grammar itself or a rule declared in this file's repository."
                  | optional,
                "match"
                  | String
                  | doc "a regular expression which is used to identify the portion of text to which the name should be assigned. Example: '\\b(true|false)\\b'."
                  | optional,
                name
                  | refs."definitions.name"
                  | String
                  | doc "the name which gets assigned to the portion matched. This is used for styling and scope-specific settings and actions, which means it should generally be derived from one of the standard names."
                  | optional,
                patterns
                  | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
                  | doc "applies to the region between the begin and end matches"
                  | optional,
                while
                  | String
                  | doc "these keys allow matches which span several lines and must both be mutually exclusive with the match key. Each is a regular expression pattern. begin is the pattern that starts the block and while continues it."
                  | optional,
                whileCaptures
                  | refs."definitions.captures"
                  | { _ | Dyn }
                  | doc "allows you to assign attributes to the captures of the while pattern. Using the captures key for a begin/while rule is short-hand for giving both beginCaptures and whileCaptures with same values."
                  | optional,
                ..
              }
            ],
      "definitions.root" =
        std.contract.Sequence
            [
              refs."definitions.grammar",
              {
                fileTypes
                  | Array String
                  | doc "this is an array of file type extensions that the grammar should (by default) be used with. This is referenced when TextMate does not know what grammar to use for a file the user opens. If however the user selects a grammar from the language pop-up in the status bar, TextMate will remember that choice."
                  | optional,
                firstLineMatch | String | optional,
                foldingStartMarker
                  | String
                  | doc "regular expressions that lines (in the document) are matched against. If a line matches one of the patterns (but not both), it becomes a folding marker (see the foldings section for more info)."
                  | optional,
                foldingStopMarker
                  | String
                  | doc "regular expressions that lines (in the document) are matched against. If a line matches one of the patterns (but not both), it becomes a folding marker (see the foldings section for more info)."
                  | optional,
                name | String | optional,
                scopeName
                  | js2n.string.Matches "^(text|source)(\\.[\\w0-9-]+)+$"
                  | doc "this should be a unique name for the grammar, following the convention of being a dot-separated name where each new (left-most) part specializes the name. Normally it would be a two-part name where the first is either text or source and the second is the name of the language or document type. But if you are specializing an existing type, you probably want to derive the name from the type you are specializing. For example Markdown is text.html.markdown and Ruby on Rails (rhtml files) is text.html.rails. The advantage of deriving it from (in this case) text.html is that everything which works in the text.html scope will also work in the text.html.«something» scope (but with a lower precedence than something specifically targeting text.html.«something»).",
                uuid | String | optional,
                ..
              }
            ],
    }
    in
  std.contract.Sequence [ refs."definitions.root", { _ | Dyn } ]