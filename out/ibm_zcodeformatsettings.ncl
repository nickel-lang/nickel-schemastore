# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.blockIndent" =
        {
            indentAtEndBlock
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc m%"
                Indent length of AT END block
                Cannot be used if enableIndentation is false
                Cannot be used if indentForAllBlocks is used
              "%
              | optional,
            indentAtEndOfPageBlock
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc m%"
                Indent length of AT END OF PAGE block
                Cannot be used if enableIndentation is false
                Cannot be used if indentForAllBlocks is used
              "%
              | optional,
            indentEndExecPhrase
              | Bool
              | doc m%"
                Indent END-EXEC phrase
                Cannot be used if enableIndentation is false
                END-EXEC phrase will be indented with Exec Block
              "%
              | optional,
            indentExecBlock
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc m%"
                Indent length of EXEC block
                Cannot be used if enableIndentation is false
                Cannot be used if indentForAllBlocks is used
              "%
              | optional,
            indentIfBlock
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc m%"
                Indent length of IF block
                Cannot be used if enableIndentation is false
                Cannot be used if indentForAllBlocks is used
              "%
              | optional,
            indentInvalidKeyBlock
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc m%"
                Indent length of INVALID KEY block
                Cannot be used if enableIndentation is false
                Cannot be used if indentForAllBlocks is used
              "%
              | optional,
            indentNotAtEndBlock
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc m%"
                Indent length of NOT AT END block
                Cannot be used if enableIndentation is false
                Cannot be used if indentForAllBlocks is used
              "%
              | optional,
            indentNotAtEndOfPageBlock
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc m%"
                Indent length of NOT AT END OF PAGE block
                Cannot be used if enableIndentation is false
                Cannot be used if indentForAllBlocks is used
              "%
              | optional,
            indentNotInvalidKeyBlock
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc m%"
                Indent length of INVALID KEY
                Cannot be used if enableIndentation is false
                Cannot be used if indentForAllBlocks is used
              "%
              | optional,
            indentNotOnExceptionBlock
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc m%"
                Indent length of NOT ON EXCEPTION block
                Cannot be used if enableIndentation is false
                Cannot be used if indentForAllBlocks is used
              "%
              | optional,
            indentNotOnOverflowBlock
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc m%"
                Indent length of NOT ON OVERFLOW block
                Cannot be used if enableIndentation is false
                Cannot be used if indentForAllBlocks is used
              "%
              | optional,
            indentNotOnSizeErrorBlock
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc m%"
                Indent length of NOT ON SIZE ERROR block
                Cannot be used if enableIndentation is false
                Cannot be used if indentForAllBlocks is used
              "%
              | optional,
            indentOnExceptionBlock
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc m%"
                Indent length of ON EXCEPTION block
                Cannot be used if enableIndentation is false
                Cannot be used if indentForAllBlocks is used
              "%
              | optional,
            indentOnOverflowBlock
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc m%"
                Indent length of ON OVERFLOW block
                Cannot be used if enableIndentation is false
                Cannot be used if indentForAllBlocks is used
              "%
              | optional,
            indentOnSizeErrorBlock
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc m%"
                Indent length of ON SIZE ERROR block
                Cannot be used if enableIndentation is false
                Cannot be used if indentForAllBlocks is used
              "%
              | optional,
            indentPerformBlock
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc m%"
                Indent length of PERFORM block
                Cannot be used if enableIndentation is false
                Cannot be used if indentForAllBlocks is used
              "%
              | optional,
            indentWhenBlock
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc m%"
                Indent length of WHEN block
                Cannot be used if enableIndentation is false
                Cannot be used if indentForAllBlocks is used
              "%
              | optional,
          },
      "definitions.cobol" =
        {
            commentCase
              | refs."definitions.cobolCapitalizationOptions"
              | String
              | doc "Comment"
              | optional,
            compilerDirectiveCase
              | refs."definitions.cobolCapitalizationOptions"
              | String
              | doc "Compiler directive"
              | optional,
            dataDivision
              | std.contract.any_of
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            enableIndentation = js2n.Const false,
                            indentation = {},
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            enableIndentation = js2n.Const true,
                            indentation =
                              std.contract.Sequence
                                  [
                                    refs."definitions.dataDivIndent",
                                    { _ | Dyn }
                                  ],
                          },
                      required = {},
                    }
                ]
              | {
                alignPictureClauses
                  | Bool
                  | doc "Align PICTURE Clauses"
                  | optional,
                alignValueClauses | Bool | doc "Align VALUE Clauses" | optional,
                enableIndentation
                  | Bool
                  | doc m%"
                    Enable indentation of record descriptions
                    If false, startOfAreaA and indentLength are not allowed
                  "%
                  | optional,
                indentation
                  | refs."definitions.dataDivIndent"
                  | { _ | Dyn }
                  | doc "Indentation objects based on enableIndentation"
                  | optional,
              }
              | optional,
            dateFormatCase
              | refs."definitions.cobolCapitalizationOptions"
              | String
              | doc "Date format"
              | optional,
            endOfAreaB
              | std.number.Integer
              | js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      std.contract.Sequence
                        [ js2n.number.Maximum (-1), js2n.number.Minimum (-1) ],
                      String,
                      { _ | Dyn },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      std.contract.Sequence
                        [ js2n.number.Maximum 100, js2n.number.Minimum 50 ],
                      String,
                      { _ | Dyn },
                      Array Dyn
                    ]
                ]
              | doc m%"
                End of Area B
                
                If -1, will use Margin R as the end of Area B
              "%
              | optional,
            functionCase
              | refs."definitions.cobolCapitalizationOptions"
              | String
              | doc "Function"
              | optional,
            lineWrappingStyle
              | std.enum.TagOrString
              | [|
                'indentPastAreaB,
                'indentToAreaB,
                'noIndent,
                'wrapToNextLine
              |]
              | doc "If indentation moves code beyond Area B"
              | optional,
            procedureDivision
              | std.contract.any_of
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            enableIndentation = js2n.Const false,
                            indentation = {},
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            enableIndentation = js2n.Const true,
                            indentation =
                              std.contract.Sequence
                                  [
                                    refs."definitions.procDivIndent",
                                    { _ | Dyn }
                                  ],
                          },
                      required = {},
                    }
                ]
              | {
                enableIndentation
                  | Bool
                  | doc "Enable indentation of procedure divisions"
                  | optional,
                indentation
                  | refs."definitions.procDivIndent"
                  | { _ | Dyn }
                  | doc "Indentation objects based on enableIndentation"
                  | optional,
              }
              | optional,
            reservedWordCase
              | refs."definitions.cobolCapitalizationOptions"
              | String
              | doc "Reserved words"
              | optional,
            userDefinedWordCase
              | refs."definitions.cobolCapitalizationOptions"
              | String
              | doc "User-defined words"
              | optional,
          },
      "definitions.cobolCapitalizationOptions" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'mixed, 'lower, 'upper, 'none |] ],
      "definitions.copybook" =
        {
            codeCase
              | refs."definitions.copybookCapitalizationOptions"
              | String
              | doc "Format copybook code in uppercase"
              | optional,
            commentCase
              | refs."definitions.copybookCapitalizationOptions"
              | String
              | doc "Format copybook comments in uppercase"
              | optional,
          },
      "definitions.copybookCapitalizationOptions" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'lower, 'upper |] ],
      "definitions.dataDivIndent" =
        {
            indentLength
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc m%"
                Indent Length
                Cannot be used if enableIndentation is false
              "%
              | optional,
            startOfAreaA
              | std.number.Integer
              | js2n.number.Maximum 11
              | js2n.number.Minimum 8
              | doc m%"
                Start of Area A
                Cannot be used if enableIndentation is false
              "%
              | optional,
          },
      "definitions.procDivIndent" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        { blocks = {}, indentForAllBlocks = Number, },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            blocks =
                              std.contract.Sequence
                                  [
                                    refs."definitions.blockIndent",
                                    { _ | Dyn }
                                  ],
                            indentForAllBlocks = js2n.Never,
                          },
                      required = {},
                    }
                ],
              {
                alignLists
                  | Bool
                  | doc m%"
                    Align lists
                    Cannot be used if enableIndentation is false
                  "%
                  | optional,
                blocks
                  | refs."definitions.blockIndent"
                  | { _ | Dyn }
                  | doc "Individual block indent values"
                  | optional,
                indentForAllBlocks
                  | std.number.Integer
                  | js2n.number.Maximum 10
                  | js2n.number.Minimum 0
                  | doc m%"
                    Fixed indent length to use for all blocks
                    Cannot be used if enableIndentation is false
                    Cannot be used with other individual block indent values
                  "%
                  | optional,
                indentMultipleLineStatements
                  | std.number.Integer
                  | js2n.number.Maximum 10
                  | js2n.number.Minimum 0
                  | doc m%"
                    Multiple line statement indent length
                    Cannot be used if enableIndentation is false
                    use -1 to disable
                  "%
                  | optional,
                startOfAreaA
                  | std.number.Integer
                  | js2n.number.Maximum 11
                  | js2n.number.Minimum 8
                  | doc m%"
                    Start of Area A
                    Cannot be used if enableIndentation is false
                  "%
                  | optional,
                startOfAreaB
                  | std.number.Integer
                  | js2n.number.Maximum 16
                  | js2n.number.Minimum 12
                  | doc m%"
                    Start of Area B
                    Cannot be used if enableIndentation is false
                  "%
                  | optional,
              }
            ],
    }
    in
  {
      additionalProperties | js2n.Never | optional,
      cobol | refs."definitions.cobol" | optional,
      copybook | refs."definitions.copybook" | optional,
      ..
    }