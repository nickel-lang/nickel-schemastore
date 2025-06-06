# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.babelOptions" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                inputFile
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "\\.(jsx|js|es6)$",
                      { _ | Dyn },
                      Array Dyn
                    ]
                  | optional,
                minify
                  | {
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
                ..
              },
              Array Dyn
            ],
      "definitions.babelOptions.properties.minify" =
        {
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
          },
      "definitions.coffeeScriptOptions" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                inputFile
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "\\.coffee$|\\.litcoffee$",
                      { _ | Dyn },
                      Array Dyn
                    ]
                  | optional,
                minify
                  | refs."definitions.babelOptions.properties.minify"
                  | { _ | Dyn }
                  | optional,
                options
                  | {
                    bare
                      | Bool
                      | doc "CoffeeScript only. Compile the JavaScript without the top-level function safety wrapper."
                      | optional,
                    runtimeMode
                      | std.enum.TagOrString
                      | [| 'window, 'none, 'inline, 'node |]
                      | doc "CoffeeScript only. Specify how the Iced runtime is included in the output JavaScript file."
                      | optional,
                    sourceMap
                      | Bool
                      | doc "Generates a source map file."
                      | optional,
                    ..
                  }
                  | doc "Specify options for the compiler."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.coffeeScriptOptions.properties.options" =
        {
            bare
              | Bool
              | doc "CoffeeScript only. Compile the JavaScript without the top-level function safety wrapper."
              | optional,
            runtimeMode
              | std.enum.TagOrString
              | [| 'window, 'none, 'inline, 'node |]
              | doc "CoffeeScript only. Specify how the Iced runtime is included in the output JavaScript file."
              | optional,
            sourceMap | Bool | doc "Generates a source map file." | optional,
            ..
          },
      "definitions.config" =
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
                      | doc "Set to true to include the output file in the project. Doesn't work in some Visual Studio project types like ASP.NET 5 applications."
                      | optional,
                    inputFile
                      | String
                      | doc "One or more relative file names to bundle.",
                    minify
                      | {
                        enabled | Bool | optional,
                        gzip
                          | Bool
                          | doc "Produce a .gz file after minification."
                          | optional,
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
                      }
                      | doc "Specify options for minification of the output file."
                      | optional,
                    outputFile
                      | js2n.string.MinLength 1
                      | doc "The relative path to the desired output file name.",
                    sourceMap
                      | Bool
                      | doc "DEPRECATED! Use 'options/sourceMap' instead."
                      | optional,
                    ..
                  },
                  Array Dyn
                ],
              js2n.OneOf
                [
                  refs."definitions.lessOptions",
                  refs."definitions.sassOptions",
                  refs."definitions.stylusOptions",
                  refs."definitions.coffeeScriptOptions",
                  refs."definitions.icedCoffeeScriptOptions",
                  refs."definitions.babelOptions",
                  refs."definitions.handlebarsOptions"
                ]
            ],
      "definitions.handlebarsOptions" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                inputFile
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "\\.(hbs|handlebars)$",
                      { _ | Dyn },
                      Array Dyn
                    ]
                  | optional,
                minify
                  | refs."definitions.babelOptions.properties.minify"
                  | { _ | Dyn }
                  | optional,
                options
                  | {
                    amd
                      | Bool
                      | doc "Exports amd style (require.js), this option has priority to commonjs."
                      | optional,
                    commonjs
                      | String
                      | doc "Path to the Handlebars module to export CommonJS style"
                      | optional,
                    enabled | Bool | optional,
                    knownHelpers
                      | String
                      | doc "List of known helpers for a more optimized output (comma separated)"
                      | optional,
                    knownHelpersOnly
                      | Bool
                      | doc "Compile with known helpers only"
                      | optional,
                    namespace | String | doc "Template namespace" | optional,
                    noBOM
                      | Bool
                      | doc "Removes the BOM (Byte Order Mark) from the beginning of the templates."
                      | optional,
                    root
                      | String
                      | doc "Template root. Base value that will be stripped from template names."
                      | optional,
                    ..
                  }
                  | doc "Specify options for the compiler."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.icedCoffeeScriptOptions" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                inputFile
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "\\.iced$",
                      { _ | Dyn },
                      Array Dyn
                    ]
                  | optional,
                minify
                  | refs."definitions.babelOptions.properties.minify"
                  | { _ | Dyn }
                  | optional,
                options
                  | refs."definitions.coffeeScriptOptions.properties.options"
                  | { _ | Dyn }
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.lessOptions" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                inputFile
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "\\.less$",
                      { _ | Dyn },
                      Array Dyn
                    ]
                  | optional,
                minify
                  | {
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
                options
                  | {
                    autoPrefix
                      | String
                      | doc "LESS only. Support for AutoPrefixer by adding a browser string. An empty string means this feature is disabled. Example: 'last 2 versions, > 5%'. See more at https://github.com/ai/browserslist."
                      | optional,
                    cssComb
                      | js2n.OneOf
                        [
                          std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [| 'none, 'yandex, 'zen, 'csscomb |]
                            ],
                          js2n.string.Matches ".+\\.json$"
                        ]
                      | doc "LESS only. CSScomb helps you sort and categorize CSS properties in your code to improve maintenance of your stylesheets. You can specify a relative path to a local .json file as well."
                      | optional,
                    ieCompat
                      | Bool
                      | doc "LESS only. Currently only used for the data-uri function to ensure that images aren't created that are too large for the browser to handle."
                      | optional,
                    math
                      | std.enum.TagOrString
                      | [|
                        'strict-legacy,
                        'strict,
                        'parens,
                        'parens-division,
                        'always
                      |]
                      | doc "LESS only. Specifies which mode Less will use to process the math in your CSS."
                      | optional,
                    relativeUrls
                      | Bool
                      | doc "LESS only. This option allows you to re-write URL's in imported files so that the URL is always relative to the base imported file."
                      | optional,
                    rootPath
                      | String
                      | doc "LESS only. Allows you to add a path to every generated import and URL in your CSS. This does not affect less import statements that are processed, just ones that are left in the output css."
                      | optional,
                    sourceMap
                      | Bool
                      | doc "Generates a base64 encoded source map at the bottom of the output."
                      | optional,
                    sourceMapBasePath
                      | String
                      | doc "Scss only. This is the opposite of the rootpath option, it specifies a path which should be removed from the output paths."
                      | optional,
                    sourceMapRoot
                      | String
                      | doc "LESS only. Base path, will be emitted in source-map as is."
                      | optional,
                    strictMath
                      | Bool
                      | doc "(DEPRECATED: Use 'math' instead) LESS only. Without this option on Less will try and process all maths in your CSS."
                      | optional,
                    strictUnits
                      | Bool
                      | doc "LESS only. Without this option, less attempts to guess at the output unit when it does maths."
                      | optional,
                    ..
                  }
                  | doc "Specify options for the compiler."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.lessOptions.properties.minify" =
        {
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
          },
      "definitions.sassOptions" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                inputFile
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "\\.(scss|sass)$",
                      { _ | Dyn },
                      Array Dyn
                    ]
                  | optional,
                minify
                  | refs."definitions.lessOptions.properties.minify"
                  | { _ | Dyn }
                  | optional,
                options
                  | {
                    includePath
                      | String
                      | doc "Scss only. Path to look for imported files"
                      | optional,
                    indentType
                      | std.enum.TagOrString
                      | [| 'tab, 'space |]
                      | doc "Scss only. Indent type for output CSS."
                      | optional,
                    indentWidth
                      | std.number.Integer
                      | js2n.number.Maximum 10
                      | doc "Scss only. Number of spaces or tabs."
                      | optional,
                    lineFeed
                      | std.enum.TagOrString
                      | [| 'lfcr, 'lf, 'crlf, 'cr |]
                      | doc "Scss only. Linefeed style (cr | crlf | lf | lfcr)."
                      | optional,
                    outputStyle
                      | std.enum.TagOrString
                      | [| 'compressed, 'compact, 'expanded, 'nested |]
                      | doc "Scss only. Determines the output format of the final CSS style."
                      | optional,
                    precision
                      | std.number.Integer
                      | doc "Scss only. Used to determine how many digits after the decimal will be allowed. For instance, if you had a decimal number of 1.23456789 and a precision of 5, the result will be 1.23457 in the final CSS."
                      | optional,
                    relativeUrls
                      | Bool
                      | doc "Scss only. This option allows you to re-write URL's to make them relative to the output file. This doesn't work for imported .scss files."
                      | optional,
                    sourceMap
                      | Bool
                      | doc "Generates a base64 encoded source map at the bottom of the output."
                      | optional,
                    sourceMapRoot
                      | String
                      | doc "Scss only. Base path, will be emitted in source-map as is."
                      | optional,
                    ..
                  }
                  | doc "Specify options for the compiler."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.stylusOptions" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                inputFile
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "\\.styl$",
                      { _ | Dyn },
                      Array Dyn
                    ]
                  | optional,
                minify
                  | refs."definitions.lessOptions.properties.minify"
                  | { _ | Dyn }
                  | optional,
                options
                  | {
                    sourceMap
                      | Bool
                      | doc "Generates a base64 encoded source map at the bottom of the output."
                      | optional,
                    ..
                  }
                  | doc "Specify options for the compiler."
                  | optional,
                ..
              },
              Array Dyn
            ],
    }
    in
  Array refs."definitions.config"