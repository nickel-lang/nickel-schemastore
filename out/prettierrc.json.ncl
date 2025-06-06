# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.optionsDefinition" =
        {
            arrowParens
              | js2n.OneOf
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'always |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'avoid |] ]
                ]
              | doc "Include parentheses around a sole arrow function parameter."
              | optional,
            bracketSameLine
              | Bool
              | doc "Put > of opening tags on the last line instead of on a new line."
              | optional,
            bracketSpacing
              | Bool
              | doc "Print spaces between brackets."
              | optional,
            cursorOffset
              | std.number.Integer
              | doc "Print (to stderr) where a cursor at the given position would move to after formatting."
              | optional,
            embeddedLanguageFormatting
              | js2n.OneOf
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'auto |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'off |] ]
                ]
              | doc "Control how Prettier formats quoted code embedded in the file."
              | optional,
            endOfLine
              | js2n.OneOf
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'lf |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'crlf |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'cr |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'auto |] ]
                ]
              | doc "Which end of line characters to apply."
              | optional,
            experimentalOperatorPosition
              | js2n.OneOf
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'start |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'end |] ]
                ]
              | doc "Where to print operators when binary expressions wrap lines."
              | optional,
            experimentalTernaries
              | Bool
              | doc "Use curious ternaries, with the question mark after the condition."
              | optional,
            filepath
              | String
              | doc "Specify the input filepath. This will be used to do parser inference."
              | optional,
            htmlWhitespaceSensitivity
              | js2n.OneOf
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'css |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'strict |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'ignore |] ]
                ]
              | doc "How to handle whitespaces in HTML."
              | optional,
            insertPragma
              | Bool
              | doc "Insert @format pragma into file's first docblock comment."
              | optional,
            jsxSingleQuote | Bool | doc "Use single quotes in JSX." | optional,
            objectWrap
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'preserve |] ],
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'collapse |] ]
                ]
              | doc "How to wrap object literals."
              | optional,
            parser
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'flow |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'babel |] ],
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'babel-flow |] ],
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'babel-ts |] ],
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'typescript |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'acorn |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'espree |] ],
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'meriyah |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'css |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'less |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'scss |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'json |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'json5 |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'jsonc |] ],
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'json-stringify |] ],
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'graphql |] ],
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'markdown |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'mdx |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'vue |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'yaml |] ],
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'glimmer |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'html |] ],
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'angular |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'lwc |] ],
                  String
                ]
              | doc "Which parser to use."
              | optional,
            plugins
              | Array String
              | doc "Add a plugin. Multiple plugins can be passed as separate `--plugin`s."
              | optional,
            printWidth
              | std.number.Integer
              | doc "The line length where Prettier will try wrap."
              | optional,
            proseWrap
              | js2n.OneOf
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'always |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'never |] ],
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'preserve |] ]
                ]
              | doc "How to wrap prose."
              | optional,
            quoteProps
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'as-needed |] ],
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'consistent |] ],
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'preserve |] ]
                ]
              | doc "Change when properties in objects are quoted."
              | optional,
            rangeEnd
              | std.number.Integer
              | doc m%"
                Format code ending at a given character offset (exclusive).
                The range will extend forwards to the end of the selected statement.
              "%
              | optional,
            rangeStart
              | std.number.Integer
              | doc m%"
                Format code starting at a given character offset.
                The range will extend backwards to the start of the first line containing the selected statement.
              "%
              | optional,
            requirePragma
              | Bool
              | doc m%"
                Require either '@prettier' or '@format' to be present in the file's first docblock comment
                in order for it to be formatted.
              "%
              | optional,
            semi | Bool | doc "Print semicolons." | optional,
            singleAttributePerLine
              | Bool
              | doc "Enforce single attribute per line in HTML, Vue and JSX."
              | optional,
            singleQuote
              | Bool
              | doc "Use single quotes instead of double quotes."
              | optional,
            tabWidth
              | std.number.Integer
              | doc "Number of spaces per indentation level."
              | optional,
            trailingComma
              | js2n.OneOf
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'all |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'es5 |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'none |] ]
                ]
              | doc "Print trailing commas wherever possible when multi-line."
              | optional,
            useTabs
              | Bool
              | doc "Indent with tabs instead of spaces."
              | optional,
            vueIndentScriptAndStyle
              | Bool
              | doc "Indent script and style tags in Vue files."
              | optional,
            ..
          },
      "definitions.overridesDefinition" =
        {
            overrides
              | Array
                {
                  excludeFiles
                    | std.contract.any_of [ String, Array String ]
                    | doc "Exclude these files from this override."
                    | optional,
                  files
                    | std.contract.any_of [ String, Array String ]
                    | doc "Include these files in this override.",
                  options
                    | refs."definitions.optionsDefinition"
                    | { _ | Dyn }
                    | doc "The options to apply for this override."
                    | optional,
                }
              | doc "Provide a list of patterns to override prettier configuration."
              | optional,
            ..
          },
    }
    in
  std.contract.any_of
      [
        std.contract.Sequence
          [
            refs."definitions.optionsDefinition",
            refs."definitions.overridesDefinition"
          ],
        String
      ]