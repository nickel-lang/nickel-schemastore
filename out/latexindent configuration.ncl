# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      backupExtension
        | String
        | doc "when the -w, --overwrite switch is active, a back-up file is created with this extension"
        | optional,
      commandCodeBlocks
        | {
          commandNameSpecial
            | std.contract.any_of
              [
                std.number.Integer,
                Array (
                  std.contract.any_of
                    [
                      String,
                      {
                        amalgamate
                          | std.number.Integer
                          | js2n.Enum [ 0, 1 ]
                          | doc "optional: 0/1, binary switch to add to/overwrite previously loaded items. Default is 1 if not specified"
                          | optional,
                        ..
                      }
                    ]
                )
              ]
            | doc "there are some particular commands that need individual attention"
            | optional,
          roundParenthesesAllowed
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to not allow/allow round parenthesis () between arguments"
            | optional,
          stringsAllowedBetweenArguments
            | std.contract.any_of
              [
                std.number.Integer,
                Array (
                  std.contract.any_of
                    [
                      String,
                      {
                        amalgamate
                          | std.number.Integer
                          | js2n.Enum [ 0, 1 ]
                          | doc "optional: 0/1, binary switch to add to/overwrite previously loaded items. Default is 1 if not specified"
                          | optional,
                        ..
                      }
                    ]
                )
              ]
            | doc "strings allowed between arguments"
            | optional,
          ..
        }
        | doc "command code blocks need some particular attention"
        | optional,
      cycleThroughBackUps
        | std.number.Integer
        | js2n.Enum [ 0, 1 ]
        | doc "when the -w, --overwrite switch is active, back-up files can be overwritten in order; see also maxNumberOfBackUps"
        | optional,
      defaultIndent
        | String
        | doc "default indentation, needs to be specified as horizontal space"
        | optional,
      dos2unixlinebreaks
        | std.number.Integer
        | js2n.Enum [ 0, 1 ]
        | doc "0/1, binary switch to convert dos line breaks to unix line breaks"
        | optional,
      fileContentsEnvironments
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".*" =
                    std.contract.Sequence
                        [ std.number.Integer, js2n.Enum [ 0, 1 ] ],
                },
            properties = {},
            required = {},
          }
        | doc "specify the names of *filecontents* in this field"
        | optional,
      fileExtensionPreference
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { ".*" = std.number.Integer, },
            properties = {},
            required = {},
          }
        | doc "calling latexindent.pl to operate on myfile (without extension) is fine, and in which case the file extensions from this field will be used in order"
        | optional,
      fineTuning
        | {
          UnNamedGroupingBracesBrackets
            | {
              follow
                | String
                | doc "regular expression for what UN named grouping braces follow"
                | optional,
              ..
            }
            | doc "fine tuning, for UnNamedGroupingBracesBrackets"
            | optional,
          arguments
            | {
              before
                | String
                | doc "regular expression for what can come BEFORE arguments"
                | optional,
              between
                | String
                | doc "regular expression for what can come BETWEEN arguments"
                | optional,
              ..
            }
            | doc "fine tuning, for arguments"
            | optional,
          commands
            | {
              name
                | String
                | doc "regular expression for commands name"
                | optional,
              ..
            }
            | doc "fine tuning, for commands"
            | optional,
          environments
            | {
              name
                | String
                | doc "regular expression for environment name"
                | optional,
              ..
            }
            | doc "fine tuning, for environments"
            | optional,
          ifElseFi
            | {
              name
                | String
                | doc "regular expression for ifElseFi name"
                | optional,
              ..
            }
            | doc "fine tuning, for ifElseFi"
            | optional,
          items
            | {
              canBeFollowedBy
                | String
                | doc "regular expression for what can follow items"
                | optional,
              ..
            }
            | doc "fine tuning, for items"
            | optional,
          keyEqualsValuesBracesBrackets
            | {
              follow
                | String
                | doc "regular expression for what key = values follow"
                | optional,
              name
                | String
                | doc "regular expression for key = value name"
                | optional,
              ..
            }
            | doc "fine tuning, for keyEqualsValuesBracesBrackets"
            | optional,
          modifyLineBreaks
            | {
              betterFullStop
                | String
                | doc "regular expression for the 'better full stop' in the one-sentence-per-line routine"
                | optional,
              comma
                | String
                | doc "regular expression for the comma used in the comma-based poly-switches"
                | optional,
              doubleBackSlash
                | String
                | doc "regular expression for the double back slash used in the DBS poly-switches"
                | optional,
              ..
            }
            | doc "fine tuning for some of the -m switch based features"
            | optional,
          namedGroupingBracesBrackets
            | {
              follow
                | String
                | doc "regular expression for what named grouping braces follow"
                | optional,
              name
                | String
                | doc "regular expression for named grouping braces name"
                | optional,
              ..
            }
            | doc "fine tuning, for namedGroupingBracesBrackets"
            | optional,
          trailingComments
            | {
              afterComment
                | String
                | doc "regular expression for what can come after %"
                | optional,
              notPrecededBy
                | String
                | doc "regular expression for what can NOT come before %, for example \\%"
                | optional,
              notPreceededBy
                | String
                | doc "please use notPrecededBy instead"
                | optional,
              ..
            }
            | doc "fine tuning, for trailing comments"
            | optional,
          ..
        }
        | doc "fine tuning, proceed with caution!"
        | optional,
      indentAfterHeadings
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".*" =
                    {
                        indentAfterThisHeading
                          | std.number.Integer
                          | js2n.Enum [ 0, 1 ]
                          | doc "0/1, binary switch to look for heading or not"
                          | optional,
                        level
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "level of the heading (minimum is 1)"
                          | optional,
                        ..
                      },
                },
            properties = {},
            required = {},
          }
        | doc "indentation after headings"
        | optional,
      indentAfterItems
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".*" =
                    std.contract.Sequence
                        [ std.number.Integer, js2n.Enum [ 0, 1 ] ],
                },
            properties = {},
            required = {},
          }
        | doc "specify the names of environments that contain items"
        | optional,
      indentPreamble
        | std.number.Integer
        | js2n.Enum [ 0, 1 ]
        | doc "0/1, binary switch to instruct latexindent.pl to operate on preamble or not"
        | optional,
      indentRules
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { ".*" = String, },
            properties = {},
            required = {},
          }
        | doc "per-code block indentation rule"
        | optional,
      indentRulesGlobal
        | {
          UnNamedGroupingBracesBrackets
            | std.contract.any_of [ std.number.Integer, String ]
            | doc "indentation rules per *type* of code block"
            | optional,
          afterHeading
            | std.contract.any_of [ std.number.Integer, String ]
            | doc "indentation rules per *type* of code block"
            | optional,
          commands
            | std.contract.any_of [ std.number.Integer, String ]
            | doc "indentation rules per *type* of code block"
            | optional,
          environments
            | std.contract.any_of [ std.number.Integer, String ]
            | doc "indentation rules per *type* of code block"
            | optional,
          filecontents
            | std.contract.any_of [ std.number.Integer, String ]
            | doc "indentation rules per *type* of code block"
            | optional,
          ifElseFi
            | std.contract.any_of [ std.number.Integer, String ]
            | doc "indentation rules per *type* of code block"
            | optional,
          items
            | std.contract.any_of [ std.number.Integer, String ]
            | doc "indentation rules per *type* of code block"
            | optional,
          keyEqualsValuesBracesBrackets
            | std.contract.any_of [ std.number.Integer, String ]
            | doc "indentation rules per *type* of code block"
            | optional,
          mandatoryArguments
            | std.contract.any_of [ std.number.Integer, String ]
            | doc "indentation rules per *type* of code block"
            | optional,
          namedGroupingBracesBrackets
            | std.contract.any_of [ std.number.Integer, String ]
            | doc "indentation rules per *type* of code block"
            | optional,
          optionalArguments
            | std.contract.any_of [ std.number.Integer, String ]
            | doc "indentation rules per *type* of code block"
            | optional,
          specialBeginEnd
            | std.contract.any_of [ std.number.Integer, String ]
            | doc "indentation rules per *type* of code block"
            | optional,
          ..
        }
        | doc "*types* of code blocks indentation rules"
        | optional,
      itemNames
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".*" =
                    std.contract.Sequence
                        [ std.number.Integer, js2n.Enum [ 0, 1 ] ],
                },
            properties = {},
            required = {},
          }
        | doc "names of items"
        | optional,
      logFilePreferences
        | {
          Dumper
            | {
              Deparse | std.number.Integer | js2n.Enum [ 0, 1 ] | optional,
              Indent | std.number.Integer | js2n.Enum [ 0, 1 ] | optional,
              Pair | String | optional,
              Quotekeys | std.number.Integer | js2n.Enum [ 0, 1 ] | optional,
              Sortkeys | std.number.Integer | js2n.Enum [ 0, 1 ] | optional,
              Terse | std.number.Integer | js2n.Enum [ 0, 1 ] | optional,
              Useqq | std.number.Integer | js2n.Enum [ 0, 1 ] | optional,
              ..
            }
            | doc "options to be passed to the Dumper module; most helpful when -t, -tt active."
            | optional,
          endLogFileWith
            | String
            | doc "string decoration to finish indent.log"
            | optional,
          showAmalgamatedSettings
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to show the overall/amalgamated settings in indent.log"
            | optional,
          showDecorationFinishCodeBlockTrace
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to show decorations at *finish* of code block in indent.log when -t, -tt switches active"
            | optional,
          showDecorationStartCodeBlockTrace
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to show decorations at *start* of code block in indent.log when -t, -tt switches active"
            | optional,
          showEveryYamlRead
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to show every YAML file's settings in indent.log"
            | optional,
          showGitHubInfoFooter
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to show GitHub information in footer of indent.log"
            | optional,
          ..
        }
        | doc "latexindent.pl will write logging information to indent.log; the appearance of some of the information can be customised"
        | optional,
      lookForAlignDelims
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".*" =
                    std.contract.any_of
                        [
                          std.number.Integer,
                          {
                            alignContentAfterDoubleBackSlash
                              | std.number.Integer
                              | js2n.Enum [ 0, 1 ]
                              | doc "0/1, binary switch to align content after \\\\"
                              | optional,
                            alignDoubleBackSlash
                              | std.number.Integer
                              | js2n.Enum [ 0, 1 ]
                              | doc "0/1, binary switch to align the \\\\"
                              | optional,
                            alignFinalDoubleBackSlash
                              | std.number.Integer
                              | js2n.Enum [ 0, 1 ]
                              | doc "0/1, binary switch to align final \\\\"
                              | optional,
                            alignRowsWithoutMaxDelims
                              | std.number.Integer
                              | js2n.Enum [ 0, 1 ]
                              | doc "0/1, binary switch to align rows without the maximum number of delimiters"
                              | optional,
                            delimiterJustification
                              | std.enum.TagOrString
                              | [| 'right, 'left |]
                              | doc "delimiter justification"
                              | optional,
                            delimiterRegEx
                              | String
                              | doc "delimiter regex. NOTE: the capturing ()"
                              | optional,
                            delims
                              | std.number.Integer
                              | js2n.Enum [ 0, 1 ]
                              | doc "0/1, binary switch to look for delimiters"
                              | optional,
                            dontMeasure
                              | std.contract.any_of
                                [
                                  std.number.Integer,
                                  String,
                                  Array (
                                    std.contract.any_of
                                      [
                                        String,
                                        {
                                          applyTo
                                            | std.enum.TagOrString
                                            | [| 'row, 'cell |]
                                            | doc "detail cell or row"
                                            | optional,
                                          regex
                                            | String
                                            | doc "regular expression to match cell or row"
                                            | optional,
                                          this
                                            | String
                                            | doc "string containing the cell *not* to be measured"
                                            | optional,
                                          ..
                                        }
                                      ]
                                  )
                                ]
                              | doc "entries not to be measured in the alignment routine; can also be set to 'largest'"
                              | optional,
                            justification
                              | std.enum.TagOrString
                              | [| 'right, 'left |]
                              | doc "justification of cell"
                              | optional,
                            lookForChildCodeBlocks
                              | std.number.Integer
                              | js2n.Enum [ 0, 1 ]
                              | doc "0/1, binary switch to look for child code blocks"
                              | optional,
                            multiColumnGrouping
                              | std.number.Integer
                              | js2n.Enum [ 0, 1 ]
                              | doc "0/1, binary switch to group alignment under \\multicolumn command"
                              | optional,
                            spacesAfterAmpersand
                              | std.number.Integer
                              | js2n.number.Minimum 0
                              | doc "integer detailing number of spaces *after* delimiter"
                              | optional,
                            spacesAfterDoubleBackSlash
                              | std.number.Integer
                              | js2n.number.Minimum 0
                              | doc "integer detailing number of spaces to be placed *after* \\\\ when alignContentAfterDoubleBackSlash is active"
                              | optional,
                            spacesBeforeAmpersand
                              | std.number.Integer
                              | js2n.number.Minimum 0
                              | doc "integer detailing number of spaces *before* delimiter"
                              | optional,
                            spacesBeforeDoubleBackSlash
                              | std.number.Integer
                              | js2n.number.Minimum 0
                              | doc "integer detailing number of spaces *before* \\\\"
                              | optional,
                            ..
                          }
                        ],
                },
            properties = {},
            required = {},
          }
        | doc "list of names of code blocks detailing that latexindent.pl should align at delimiters"
        | optional,
      lookForPreamble
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".*" =
                    std.contract.Sequence
                        [ std.number.Integer, js2n.Enum [ 0, 1 ] ],
                },
            properties = {},
            required = {},
          }
        | doc "list of extensions detailing which files latexindent.pl should look for preamble"
        | optional,
      maxNumberOfBackUps
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc "when the -w, --overwrite switch is active, the default is to create a back-up file for each call to latexindent.pl. This field sets the maximum number of back-up files"
        | optional,
      maximumIndentation
        | std.contract.any_of [ std.number.Integer, String ]
        | doc "maximum value of indentation; specify as horizontal space"
        | optional,
      modifyLineBreaks
        | {
          commands
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "^(?!(CommandStartsOnOwnLine|CommandNameFinishesWithLineBreak)$).*" =
                        {
                            CommandNameFinishesWithLineBreak
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break after end of commands (PER-NAME)"
                              | optional,
                            CommandStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before beginning of commands (PER-NAME)"
                              | optional,
                            ..
                          },
                    },
                properties =
                  {
                      CommandNameFinishesWithLineBreak =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      CommandStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                    },
                required = {},
              }
            | doc "poly-switches for commands (GLOBAL)"
            | optional,
          condenseMultipleBlankLinesInto
            | std.number.Integer
            | js2n.number.Minimum 0
            | doc "condense multiple blank lines into this many blank lines"
            | optional,
          environments
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "^(?!(BeginStartsOnOwnLine|BodyStartsOnOwnLine|EndStartsOnOwnLine|EndFinishesWithLineBreak)$).*" =
                        {
                            BeginStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before beginning of environments (PER-NAME)"
                              | optional,
                            BodyStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before body of environments (PER-NAME)"
                              | optional,
                            EndFinishesWithLineBreak
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break after end of environments (PER-NAME)"
                              | optional,
                            EndStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before end of environments (PER-NAME)"
                              | optional,
                            ..
                          },
                    },
                properties =
                  {
                      BeginStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      BodyStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      EndFinishesWithLineBreak =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      EndStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                    },
                required = {},
              }
            | doc "poly-switches for environments (GLOBAL)"
            | optional,
          ifElseFi
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "^(?!(IfStartsOnOwnLine|BodyStartsOnOwnLine|OrStartsOnOwnLine|OrFinishesWithLineBreak|ElseStartsOnOwnLine|ElseFinishesWithLineBreak|FiStartsOnOwnLine|FiFinishesWithLineBreak)$).*" =
                        {
                            BodyStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before body of ifElseFi (PER-NAME)"
                              | optional,
                            ElseFinishesWithLineBreak
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break after else statement of ifElseFi (PER-NAME)"
                              | optional,
                            ElseStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before else statement of ifElseFi (PER-NAME)"
                              | optional,
                            FiFinishesWithLineBreak
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break after end of ifElseFi (PER-NAME)"
                              | optional,
                            FiStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before end of ifElseFi (PER-NAME)"
                              | optional,
                            IfStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before beginning of ifElseFi (PER-NAME)"
                              | optional,
                            OrFinishesWithLineBreak
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break after or statement of ifElseFi (PER-NAME)"
                              | optional,
                            OrStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before or statement of ifElseFi (PER-NAME)"
                              | optional,
                            ..
                          },
                    },
                properties =
                  {
                      BodyStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      ElseFinishesWithLineBreak =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      ElseStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      FiFinishesWithLineBreak =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      FiStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      IfStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      OrFinishesWithLineBreak =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      OrStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                    },
                required = {},
              }
            | doc "poly-switches for ifElseFi (GLOBAL)"
            | optional,
          items
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "^(?!(ItemStartsOnOwnLine|ItemFinishesWithLineBreak)$).*" =
                        {
                            ItemFinishesWithLineBreak
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break after end of items (PER-NAME)"
                              | optional,
                            ItemStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before beginning of items (PER-NAME)"
                              | optional,
                            ..
                          },
                    },
                properties =
                  {
                      ItemFinishesWithLineBreak =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      ItemStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                    },
                required = {},
              }
            | doc "poly-switches for items (GLOBAL)"
            | optional,
          keyEqualsValuesBracesBrackets
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "^(?!(KeyStartsOnOwnLine|EqualsStartsOnOwnLine|EqualsFinishesWithLineBreak)$).*" =
                        {
                            EqualsFinishesWithLineBreak
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break after = of key equals value (PER-NAME)"
                              | optional,
                            EqualsStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before = of key equals value (PER-NAME)"
                              | optional,
                            KeyStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before beginning of key equals value (PER-NAME)"
                              | optional,
                            ..
                          },
                    },
                properties =
                  {
                      EqualsFinishesWithLineBreak =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      EqualsStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      KeyStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                    },
                required = {},
              }
            | doc "poly-switches for key equals value (GLOBAL)"
            | optional,
          mandatoryArguments
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "^(?!(LCuBStartsOnOwnLine|MandArgBodyStartsOnOwnLine|RCuBStartsOnOwnLine|RCuBFinishesWithLineBreak)$).*" =
                        {
                            LCuBStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before beginning of mandatory arguments (PER-NAME)"
                              | optional,
                            MandArgBodyStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before body of mandatory arguments (PER-NAME)"
                              | optional,
                            RCuBFinishesWithLineBreak
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break after end of mandatory arguments (PER-NAME)"
                              | optional,
                            RCuBStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before end of mandatory arguments (PER-NAME)"
                              | optional,
                            ..
                          },
                    },
                properties =
                  {
                      LCuBStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      MandArgBodyStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      RCuBFinishesWithLineBreak =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      RCuBStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                    },
                required = {},
              }
            | doc "poly-switches for mandatory arguments (GLOBAL)"
            | optional,
          namedGroupingBracesBrackets
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "^(?!(NameStartsOnOwnLine|NameFinishesWithLineBreak)$).*" =
                        {
                            NameFinishesWithLineBreak
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break after end of namedGroupingBracesBrackets (GLOBAL)"
                              | optional,
                            NameStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before beginning of namedGroupingBracesBrackets (GLOBAL)"
                              | optional,
                            ..
                          },
                    },
                properties =
                  {
                      NameFinishesWithLineBreak =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      NameStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                    },
                required = {},
              }
            | doc "poly-switches for namedGroupingBracesBrackets (GLOBAL)"
            | optional,
          oneSentencePerLine
            | std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                {
                  manipulateSentences
                    | std.number.Integer
                    | js2n.Enum [ 0, 1 ]
                    | doc "0/1, binary switch to perform one sentence per line routine or not"
                    | optional,
                  multipleSpacesToSingle
                    | std.number.Integer
                    | js2n.Enum [ 0, 1 ]
                    | doc "0/1, binary switch to convert multiple spaces into single spaces or not"
                    | optional,
                  removeSentenceLineBreaks
                    | std.number.Integer
                    | js2n.Enum [ 0, 1 ]
                    | doc "0/1, binary switch to remove line breaks from within sentences or not"
                    | optional,
                  sentenceIndent
                    | String
                    | doc "horizontal space representing indentation within sentences"
                    | optional,
                  sentencesBeginWith
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        {
                          A-Z
                            | std.number.Integer
                            | js2n.Enum [ 0, 1 ]
                            | doc "0/1, binary switch to determine if sentences can begin upper case letters or not"
                            | optional,
                          a-z
                            | std.number.Integer
                            | js2n.Enum [ 0, 1 ]
                            | doc "0/1, binary switch to determine if sentences can begin lower case letters or not"
                            | optional,
                          other
                            | std.contract.any_of [ std.number.Integer, String ]
                            | doc "regular expression detailing what else sentences can begin with"
                            | optional,
                          ..
                        },
                        Array Dyn
                      ]
                    | doc "things that sentences can begin with"
                    | optional,
                  sentencesDoNOTcontain
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        {
                          other
                            | std.contract.any_of [ std.number.Integer, String ]
                            | doc "regular expression detailing what sentences cannot contain. Can be turned off by setting 0"
                            | optional,
                          ..
                        },
                        Array Dyn
                      ]
                    | doc "things that sentences cannot contain"
                    | optional,
                  sentencesEndWith
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        {
                          basicFullStop
                            | std.number.Integer
                            | js2n.Enum [ 0, 1 ]
                            | doc "0/1, binary switch to determine if sentences can end with basic full stop (period) or not"
                            | optional,
                          betterFullStop
                            | std.number.Integer
                            | js2n.Enum [ 0, 1 ]
                            | doc "0/1, binary switch to determine if sentences can end with better full stop (period) or not (RECOMMENDED)"
                            | optional,
                          exclamationMark
                            | std.number.Integer
                            | js2n.Enum [ 0, 1 ]
                            | doc "0/1, binary switch to determine if sentences can end with ! or not"
                            | optional,
                          other
                            | std.contract.any_of [ std.number.Integer, String ]
                            | doc "regular expression detailing what else sentences can end with"
                            | optional,
                          questionMark
                            | std.number.Integer
                            | js2n.Enum [ 0, 1 ]
                            | doc "0/1, binary switch to determine if sentences can end with ? or not"
                            | optional,
                          ..
                        },
                        Array Dyn
                      ]
                    | doc "things that sentences can end with"
                    | optional,
                  sentencesFollow
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        {
                          blankLine
                            | std.number.Integer
                            | js2n.Enum [ 0, 1 ]
                            | doc "0/1, binary switch to determine if sentences can follow blank lines or not"
                            | optional,
                          commentOnPreviousLine
                            | std.number.Integer
                            | js2n.Enum [ 0, 1 ]
                            | doc "0/1, binary switch to determine if sentences can follow % on previous line or not"
                            | optional,
                          exclamationMark
                            | std.number.Integer
                            | js2n.Enum [ 0, 1 ]
                            | doc "0/1, binary switch to determine if sentences can follow ! or not"
                            | optional,
                          fullStop
                            | std.number.Integer
                            | js2n.Enum [ 0, 1 ]
                            | doc "0/1, binary switch to determine if sentences can follow blank lines or not"
                            | optional,
                          other
                            | std.contract.any_of [ std.number.Integer, String ]
                            | doc "regular expression detailing what else sentences can follow"
                            | optional,
                          par
                            | std.number.Integer
                            | js2n.Enum [ 0, 1 ]
                            | doc "0/1, binary switch to determine if sentences can follow \\par or not"
                            | optional,
                          questionMark
                            | std.number.Integer
                            | js2n.Enum [ 0, 1 ]
                            | doc "0/1, binary switch to determine if sentences can follow ? or not"
                            | optional,
                          rightBrace
                            | std.number.Integer
                            | js2n.Enum [ 0, 1 ]
                            | doc "0/1, binary switch to determine if sentences can follow } or not"
                            | optional,
                          ..
                        },
                        Array Dyn
                      ]
                    | doc "things that sentences can follow"
                    | optional,
                  textWrapSentences
                    | std.number.Integer
                    | js2n.Enum [ 0, 1 ]
                    | doc "0/1, binary switch to text wrap sentences or not"
                    | optional,
                  ..
                },
                Array Dyn
              ]
            | optional,
          optionalArguments
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "^(?!(LSqBStartsOnOwnLine|OptArgBodyStartsOnOwnLine|RSqBStartsOnOwnLine|RSqBFinishesWithLineBreak)$).*" =
                        {
                            LSqBStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before beginning of optional arguments (PER-NAME)"
                              | optional,
                            OptArgBodyStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before body of optional arguments (PER-NAME)"
                              | optional,
                            RSqBFinishesWithLineBreak
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break after end of optional arguments (PER-NAME)"
                              | optional,
                            RSqBStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before end of optional arguments (PER-NAME)"
                              | optional,
                            ..
                          },
                    },
                properties =
                  {
                      LSqBStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      OptArgBodyStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      RSqBFinishesWithLineBreak =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      RSqBStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                    },
                required = {},
              }
            | doc "poly-switches for optional arguments (GLOBAL)"
            | optional,
          preserveBlankLines
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to preserve blank lines or not"
            | optional,
          specialBeginEnd
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "^(?!(SpecialBeginStartsOnOwnLine|SpecialBodyStartsOnOwnLine|SpecialEndStartsOnOwnLine|SpecialEndFinishesWithLineBreak)$).*" =
                        {
                            SpecialBeginStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before beginning of specialBeginEnd (PER-NAME)"
                              | optional,
                            SpecialBodyStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before body of specialBeginEnd (PER-NAME)"
                              | optional,
                            SpecialEndFinishesWithLineBreak
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break after end of specialBeginEnd (PER-NAME)"
                              | optional,
                            SpecialEndStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before end of specialBeginEnd (PER-NAME)"
                              | optional,
                            ..
                          },
                    },
                properties =
                  {
                      SpecialBeginStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      SpecialBodyStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      SpecialEndFinishesWithLineBreak =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      SpecialEndStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                    },
                required = {},
              }
            | doc "poly-switches for specialBeginEnd (GLOBAL)"
            | optional,
          textWrapOptions
            | {
              blocksBeginWith
                | {
                  "0-9"
                    | std.number.Integer
                    | js2n.Enum [ 0, 1 ]
                    | doc "0/1, binary switch to determine whether text wrap block can begin with a digit or not"
                    | optional,
                  A-Z
                    | std.number.Integer
                    | js2n.Enum [ 0, 1 ]
                    | doc "0/1, binary switch to determine whether text wrap block can begin with an uppercase letter or not"
                    | optional,
                  a-z
                    | std.number.Integer
                    | js2n.Enum [ 0, 1 ]
                    | doc "0/1, binary switch to determine whether text wrap block can begin with a lowercase letter or not"
                    | optional,
                  other
                    | std.contract.any_of [ std.number.Integer, String ]
                    | doc "regular expression detailing what text wrap blocks can begin with. Can be turned off by setting 0. Default is 0 if not specified"
                    | optional,
                  ..
                }
                | doc "field containing switches that text wrap blocks *begin with*"
                | optional,
              blocksEndBefore
                | {
                  commentOnOwnLine
                    | std.number.Integer
                    | js2n.Enum [ 0, 1 ]
                    | doc "0/1, binary switch to determine whether text wrap block should end before a comment on its own line or not"
                    | optional,
                  filecontents
                    | std.number.Integer
                    | js2n.Enum [ 0, 1 ]
                    | doc "0/1, binary switch to determine whether text wrap block should end before a filecontents environment or not"
                    | optional,
                  other
                    | String
                    | doc "regular expression detailing what text wrap blocks should end before. Can be turned off by setting 0. The default value corresponds to begin statements, display math, and end statements"
                    | optional,
                  verbatim
                    | std.number.Integer
                    | js2n.Enum [ 0, 1 ]
                    | doc "0/1, binary switch to determine whether text wrap block should end before a verbatim environment or not"
                    | optional,
                  ..
                }
                | doc "field containing switches that text wrap blocks *end before*"
                | optional,
              blocksFollow
                | {
                  blankLine
                    | std.number.Integer
                    | js2n.Enum [ 0, 1 ]
                    | doc "0/1, binary switch to instruct latexindent to find text wrap blocks after a blank line or not"
                    | optional,
                  commentOnPreviousLine
                    | std.number.Integer
                    | js2n.Enum [ 0, 1 ]
                    | doc "0/1, binary switch to instruct latexindent to find text wrap blocks after a comment on its own line or not"
                    | optional,
                  filecontents
                    | std.number.Integer
                    | js2n.Enum [ 0, 1 ]
                    | doc "0/1, binary switch to instruct latexindent to find text wrap blocks after a filecontents environment or not"
                    | optional,
                  headings
                    | std.number.Integer
                    | js2n.Enum [ 0, 1 ]
                    | doc "0/1, binary switch to instruct latexindent to find text wrap blocks after the fields listed in indentAfterHeading (regardless of the value of indentAfterThisHeading or level) or not. The heading command can, optionally, be followed by a label command"
                    | optional,
                  other
                    | String
                    | doc "regular expression detailing what text wrap blocks should follow. Can be turned off by setting 0. The default value corresponds to the end of display math or an item command"
                    | optional,
                  par
                    | std.number.Integer
                    | js2n.Enum [ 0, 1 ]
                    | doc "0/1, binary switch to instruct latexindent to find text wrap blocks after \\par or not"
                    | optional,
                  verbatim
                    | std.number.Integer
                    | js2n.Enum [ 0, 1 ]
                    | doc "0/1, binary switch to instruct latexindent to find text wrap blocks after a verbatim block or not"
                    | optional,
                  ..
                }
                | doc "field containing switches that text wrap blocks *follow*"
                | optional,
              break
                | String
                | doc "passed to Perl's Text::Wrap module"
                | optional,
              columns
                | std.number.Integer
                | js2n.number.Minimum (-1)
                | doc "integer > 0 sets the number of columns for the text wrap routine, or if -1 then text wrap blocks simply have line breaks removed"
                | optional,
              comments
                | {
                  inheritLeadingSpace
                    | std.number.Integer
                    | js2n.Enum [ 0, 1 ]
                    | doc "0/1, binary switch to determine whether comments should inherit leading spaces"
                    | optional,
                  wrap
                    | std.number.Integer
                    | js2n.Enum [ 0, 1 ]
                    | doc "0/1, binary switch to determine whether comments should be combined and wrapped"
                    | optional,
                  ..
                }
                | doc "instructions for wrapping comments"
                | optional,
              huge
                | std.enum.TagOrString
                | [| 'die, 'wrap, 'overflow |]
                | doc "WARNING: I don't recommend changing this from overflow; passed to Perl's Text::Wrap module"
                | optional,
              multipleSpacesToSingle
                | std.number.Integer
                | js2n.Enum [ 0, 1 ]
                | doc "0/1, binary switch to determine whether text wrap should convert multiple spaces to single space"
                | optional,
              removeBlockLineBreaks
                | std.number.Integer
                | js2n.Enum [ 0, 1 ]
                | doc "0/1, binary switch to determine whether text wrap should convert multiple spaces to single space"
                | optional,
              separator
                | String
                | doc "passed to Perl's Text::Wrap module"
                | optional,
              separator2
                | String
                | doc "passed to Perl's Text::Wrap module"
                | optional,
              tabstop
                | std.number.Integer
                | doc "passed to Perl's Text::Wrap module"
                | optional,
              unexpand
                | std.number.Integer
                | js2n.Enum [ 0, 1 ]
                | doc "passed to Perl's Text::Wrap module"
                | optional,
              when
                | std.enum.TagOrString
                | [| 'after, 'before |]
                | doc "optional: string specifying whether text wrapping should be made before/after code blocks have been found. Default is 'before' if not specified"
                | optional,
              ..
            }
            | doc "options for the text wrap routine"
            | optional,
          verbatim
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "^(?!(VerbatimBeginStartsOnOwnLine|VerbatimEndFinishesWithLineBreak)$).*" =
                        {
                            VerbatimBeginStartsOnOwnLine
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break before beginning of verbatim (GLOBAL)"
                              | optional,
                            VerbatimEndFinishesWithLineBreak
                              | std.number.Integer
                              | js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                              | doc "poly-switch for line break after end of verbatim (GLOBAL)"
                              | optional,
                            ..
                          },
                    },
                properties =
                  {
                      VerbatimBeginStartsOnOwnLine =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                      VerbatimEndFinishesWithLineBreak =
                        std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.Enum [ -1, 0, 1, 2, 3, 4 ]
                            ],
                    },
                required = {},
              }
            | doc "poly-switches for verbatim (GLOBAL)"
            | optional,
          ..
        }
        | doc "when -m switch active, latexindent.pl has ability to modify line breaks"
        | optional,
      noAdditionalIndent
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".*" =
                    std.contract.Sequence
                        [ std.number.Integer, js2n.Enum [ 0, 1 ] ],
                },
            properties = {},
            required = {},
          }
        | doc "names of code blocks to not have additional indentation"
        | optional,
      noAdditionalIndentGlobal
        | {
          UnNamedGroupingBracesBrackets
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to mean *type* of code block does not have/has additional indentation"
            | optional,
          afterHeading
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to mean *type* of code block does not have/has additional indentation"
            | optional,
          commands
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to mean *type* of code block does not have/has additional indentation"
            | optional,
          environments
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to mean *type* of code block does not have/has additional indentation"
            | optional,
          filecontents
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to mean *type* of code block does not have/has additional indentation"
            | optional,
          ifElseFi
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to mean *type* of code block does not have/has additional indentation"
            | optional,
          items
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to mean *type* of code block does not have/has additional indentation"
            | optional,
          keyEqualsValuesBracesBrackets
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to mean *type* of code block does not have/has additional indentation"
            | optional,
          mandatoryArguments
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to mean *type* of code block does not have/has additional indentation"
            | optional,
          namedGroupingBracesBrackets
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to mean *type* of code block does not have/has additional indentation"
            | optional,
          optionalArguments
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to mean *type* of code block does not have/has additional indentation"
            | optional,
          specialBeginEnd
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to mean *type* of code block does not have/has additional indentation"
            | optional,
          ..
        }
        | doc "*types* of code blocks to not have additional indentation"
        | optional,
      noIndentBlock
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".*" =
                    std.contract.Sequence
                        [ std.number.Integer, js2n.Enum [ 0, 1 ] ],
                },
            properties = {},
            required = {},
          }
        | doc "specify the names of *noIndentBlock* in this field"
        | optional,
      onlyOneBackUp
        | std.number.Integer
        | js2n.Enum [ 0, 1 ]
        | doc "when the -w, --overwrite switch is active, the default is to create a back-up file for each call to latexindent.pl. Changing onlyOneBackUp to 1 means that only one back-up file is created"
        | optional,
      preambleCommandsBeforeEnvironments
        | std.number.Integer
        | js2n.Enum [ 0, 1 ]
        | doc "0/1, binary switch to instruct latexindent.pl to search for commands before environments in preamble"
        | optional,
      removeTrailingWhitespace
        | {
          afterProcessing
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to remove horizontal space *after* indenting"
            | optional,
          beforeProcessing
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | doc "0/1, binary switch to remove horizontal space *before* indenting"
            | optional,
          ..
        }
        | doc "remove horizontal space at the *end* of lines"
        | optional,
      replacements
        | Array
          {
            amalgamate
              | std.number.Integer
              | js2n.Enum [ 0, 1 ]
              | doc "optional: 0/1, binary switch to add to/overwrite previously loaded items. Default is 1 if not specified"
              | optional,
            lookForThis
              | std.number.Integer
              | js2n.Enum [ 0, 1 ]
              | doc "optional: 0/1, binary switch detailing look for this or not. Default is 1 if not specified"
              | optional,
            substitution
              | String
              | doc "regular expression of the form 's/regex/replacement/modifiers; works only if 'this' is blank"
              | optional,
            that | String | doc "string to replace with" | optional,
            this | String | doc "string to be replaced" | optional,
            when
              | std.enum.TagOrString
              | [| 'after, 'before |]
              | doc "optional: string specifying whether replacement should be made before/after indentation. Default is 'before' if not specified"
              | optional,
            ..
          }
        | doc "replacements to be made; requires -r, -rr or -rv switch"
        | optional,
      specialBeginEnd
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "^(?!specialBeforeCommand$).*" =
                    {
                        begin
                          | String
                          | doc "regular expression containing the *beginning* part"
                          | optional,
                        body
                          | String
                          | doc "optional: regular expression containing the body of the block"
                          | optional,
                        end
                          | String
                          | doc "regular expression containing the *ending* part"
                          | optional,
                        lookForThis
                          | std.number.Integer
                          | js2n.Enum [ 0, 1 ]
                          | doc "optional: 0/1, binary switch detailing look for this or not. Default is 1 if not specified"
                          | optional,
                        middle
                          | std.contract.any_of [ String, Array String ]
                          | doc "optional: one or more regular expressions for the *middle* part"
                          | optional,
                        ..
                      },
                },
            properties =
              {
                  specialBeforeCommand =
                    std.contract.Sequence
                        [ std.number.Integer, js2n.Enum [ 0, 1 ] ],
                },
            required = {},
          }
        | doc "special code blocks have begin, end, and optionally 'middle' specified as regular expressions"
        | optional,
      verbatimCommands
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".*" =
                    std.contract.Sequence
                        [ std.number.Integer, js2n.Enum [ 0, 1 ] ],
                },
            properties = {},
            required = {},
          }
        | doc "specify the names of verbatim *commands* in this field"
        | optional,
      verbatimEnvironments
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".*" =
                    std.contract.Sequence
                        [ std.number.Integer, js2n.Enum [ 0, 1 ] ],
                },
            properties = {},
            required = {},
          }
        | doc "specify the names of verbatim environments in this field"
        | optional,
      ..
    }