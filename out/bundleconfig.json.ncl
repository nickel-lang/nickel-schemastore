# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ajaxminBaseSettings" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                indentSize
                  | std.number.Integer
                  | doc "For the multi-line output feature, how many spaces to use when indenting a block (see outputMode)."
                  | optional,
                outputMode
                  | std.enum.TagOrString
                  | [| 'none, 'singleLine, 'multipleLines |]
                  | doc "SingleLine minifies everything to a single line. MultipleLines breaks the minified code into multiple lines for easier reading."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.bundle" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    includeInProject
                      | Bool
                      | doc "Set to true to include the output file in the project. Doesn't work in some Visual Studio project types like ASP.NET Core applications."
                      | optional,
                    inputFiles
                      | Array String
                      | doc "One or more relative file names or globbing patterns to bundle. Example: \"scripts/**/*.js\"",
                    minify
                      | {
                        enabled | Bool,
                        gzip
                          | Bool
                          | doc "Produce a .gz file after minification."
                          | optional,
                        ..
                      }
                      | doc "Specify options for minification of the output file."
                      | optional,
                    outputFileName
                      | js2n.string.MinLength 1
                      | doc "The relative path to the desired output file name.",
                    ..
                  },
                  Array Dyn
                ],
              js2n.OneOf
                [
                  refs."definitions.jsBundle",
                  refs."definitions.cssBundle",
                  refs."definitions.htmlBundle"
                ]
            ],
      "definitions.cssBundle" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                minify
                  | refs."definitions.ajaxminBaseSettings"
                  | {
                    adjustRelativePaths
                      | Bool
                      | doc "CSS only. Adjust relative paths inside the url() function."
                      | optional,
                    colorNames
                      | std.enum.TagOrString
                      | [| 'strict, 'noSwap, 'major, 'hex |]
                      | doc "CSS only. If no color names are to be used, set this value to 'hex'. If a set of colors recognized by all major browser is okay to use (W3C-strict validation is not required), set this value to 'major'."
                      | optional,
                    commentMode
                      | std.enum.TagOrString
                      | [| 'important, 'hacks, 'all, 'none |]
                      | doc "CSS only. How to treat comments in the code. The default is 'none', which will strip all comments except 'important' comments. 'all' will leave all comments, and 'hacks' will only leave certain known comment-based hacks."
                      | optional,
                    termSemicolons
                      | Bool
                      | doc "Forces all rules to be terminated with semicolons if set to true."
                      | optional,
                    ..
                  }
                  | optional,
                outputFileName
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "\\.css$",
                      { _ | Dyn },
                      Array Dyn
                    ]
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.htmlBundle" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                minify
                  | {
                    collapseBooleanAttributes
                      | Bool
                      | doc "HTML only. Remove values from boolean attributes."
                      | optional,
                    collapseWhitespace
                      | Bool
                      | doc "HTML only. Indicating whether to collapse whitespaces."
                      | optional,
                    isFragmentOnly
                      | Bool
                      | doc "HTML only. Indicating whether the parsing is occurring on an HTML fragment, to avoid creating missing tags (like html, body, head)."
                      | optional,
                    keepOneSpaceWhenCollapsing
                      | Bool
                      | doc "HTML only. Indicating whether to keep one space when collapsing."
                      | optional,
                    minifyEmbeddedCssCode
                      | Bool
                      | doc "HTML only. Minify CSS code in style tags."
                      | optional,
                    minifyEmbeddedJsCode
                      | Bool
                      | doc "HTML only. Minify JS code in script tags."
                      | optional,
                    minifyInlineCssCode
                      | Bool
                      | doc "HTML only. Minify CSS code in style attributes."
                      | optional,
                    preserveCase
                      | Bool
                      | doc "HTML only. Preserve case of tag and attribute names."
                      | optional,
                    removeHtmlComments
                      | Bool
                      | doc "HTML only. Remove all HTML comments except conditional, noindex, Knockout.js containerless comments and Angular.js comment directives."
                      | optional,
                    removeOptionalEndTags
                      | Bool
                      | doc "HTML only. Remove optional end tags."
                      | optional,
                    removeQuotedAttributes
                      | Bool
                      | doc "HTML only. Indicating whether to remove quoted attributes when possible."
                      | optional,
                    ..
                  }
                  | optional,
                outputFileName
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "\\.(html|htm)$",
                      { _ | Dyn },
                      Array Dyn
                    ]
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.jsBundle" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                minify
                  | refs."definitions.ajaxminBaseSettings"
                  | {
                    alwaysEscapeNonAscii
                      | Bool
                      | doc "JavaScript only. Gets or sets a flag indicating whether to always escape non-ASCII characters as \\uXXXX or to let the output encoding object handle that via the JsEncoderFallback object for the specified output encoding format."
                      | optional,
                    evalTreatment
                      | std.enum.TagOrString
                      | [| 'makeImmediateSafe, 'makeAllSafe, 'ignore |]
                      | doc "JavaScript only."
                      | optional,
                    preserveImportantComments
                      | Bool
                      | doc "JavaScript only."
                      | optional,
                    renameLocals
                      | Bool
                      | doc "JavaScript only. Controls if local variables should be shortened."
                      | optional,
                    termSemicolons
                      | Bool
                      | doc "Forces all rules to be terminated with semicolons if set to true."
                      | optional,
                    ..
                  }
                  | optional,
                outputFileName
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "\\.js$",
                      { _ | Dyn },
                      Array Dyn
                    ]
                  | optional,
                sourceMap
                  | Bool
                  | doc "JavaScript only. Set to true to produce a source map."
                  | optional,
                sourceMapRootPath
                  | String
                  | doc "JavaScript only. Sets a root path for source maps."
                  | optional,
                ..
              },
              Array Dyn
            ],
    }
    in
  Array refs."definitions.bundle"