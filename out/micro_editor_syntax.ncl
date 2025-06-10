# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.rules" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                js2n.record.Record
                  {
                    additional = 'Some refs."definitions.string-or-region",
                    patterns = {},
                    properties =
                      {
                          comment = refs."definitions.string-or-region",
                          "comment.block" = refs."definitions.string-or-region",
                          "comment.line" = refs."definitions.string-or-region",
                          constant = refs."definitions.string-or-region",
                          "constant.bool" = refs."definitions.string-or-region",
                          "constant.bool.false" =
                            refs."definitions.string-or-region",
                          "constant.bool.true" =
                            refs."definitions.string-or-region",
                          "constant.number" =
                            refs."definitions.string-or-region",
                          "constant.number.complex" =
                            refs."definitions.string-or-region",
                          "constant.number.float" =
                            refs."definitions.string-or-region",
                          "constant.number.integer" =
                            refs."definitions.string-or-region",
                          "constant.string" =
                            refs."definitions.string-or-region",
                          "constant.string.builtin" =
                            refs."definitions.string-or-region",
                          "constant.string.escape" =
                            refs."definitions.string-or-region",
                          "constant.string.format" =
                            refs."definitions.string-or-region",
                          "constant.string.url" =
                            refs."definitions.string-or-region",
                          identifier = refs."definitions.string-or-region",
                          "identifier.builtin" =
                            refs."definitions.string-or-region",
                          "identifier.callable" =
                            refs."definitions.string-or-region",
                          "identifier.callable.builtin" =
                            refs."definitions.string-or-region",
                          "identifier.macro" =
                            refs."definitions.string-or-region",
                          "identifier.macro.builtin" =
                            refs."definitions.string-or-region",
                          "identifier.null" =
                            refs."definitions.string-or-region",
                          "identifier.type" =
                            refs."definitions.string-or-region",
                          "identifier.type.builtin" =
                            refs."definitions.string-or-region",
                          "identifier.var" =
                            refs."definitions.string-or-region",
                          "identifier.var.builtin" =
                            refs."definitions.string-or-region",
                          include = String,
                          preproc = refs."definitions.string-or-region",
                          "preproc.shebang" =
                            refs."definitions.string-or-region",
                          statement = refs."definitions.string-or-region",
                          symbol = refs."definitions.string-or-region",
                          "symbol.brackets" =
                            refs."definitions.string-or-region",
                          "symbol.operator" =
                            refs."definitions.string-or-region",
                          "symbol.tag" = refs."definitions.string-or-region",
                          todo = refs."definitions.string-or-region",
                          type = refs."definitions.string-or-region",
                          "type.builtin" = refs."definitions.string-or-region",
                          "type.keyword" = refs."definitions.string-or-region",
                        },
                    required = {},
                  }
              )
            ],
      "definitions.string-or-region" =
        std.contract.any_of
            [
              js2n.string.MinLength 1,
              {
                end
                  | js2n.string.MinLength 1
                  | doc m%"
                    A region end
                    https://github.com/zyedidia/micro/blob/master/runtime/help/colors.md#syntax-rules
                  "%
                  | optional,
                rules | refs."definitions.rules" | Array Dyn | optional,
                skip
                  | js2n.string.MinLength 1
                  | doc m%"
                    Ignored region sequences
                    https://github.com/zyedidia/micro/blob/master/runtime/help/colors.md#syntax-rules
                  "%
                  | optional,
                start
                  | js2n.string.MinLength 1
                  | doc m%"
                    A region start
                    https://github.com/zyedidia/micro/blob/master/runtime/help/colors.md#syntax-rules
                  "%
                  | optional,
              }
            ],
    }
    in
  {
      detect
        | {
          filename
            | js2n.string.MinLength 1
            | doc m%"
              A file name
              https://github.com/zyedidia/micro/blob/master/runtime/help/colors.md#detect-definition
            "%
            | optional,
          header
            | js2n.string.MinLength 1
            | doc m%"
              A file header
              https://github.com/zyedidia/micro/blob/master/runtime/help/colors.md#detect-definition
            "%
            | optional,
        }
        | doc m%"
          Detection options
          https://github.com/zyedidia/micro/blob/master/runtime/help/colors.md#detect-definition
        "%
        | optional,
      filetype
        | js2n.string.MinLength 1
        | doc m%"
          A file type
          https://github.com/zyedidia/micro/blob/master/runtime/help/colors.md#filetype-definition
        "%
        | optional,
      rules | refs."definitions.rules" | Array Dyn | optional,
    }