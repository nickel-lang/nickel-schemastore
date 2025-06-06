# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Options" =
        {
            ast
              | Bool
              | doc "Include the AST in the returned object"
              | optional,
            auxiliaryCommentAfter
              | String
              | doc "Attach a comment after all non-user injected code."
              | optional,
            auxiliaryCommentBefore
              | String
              | doc "Attach a comment before all non-user injected code."
              | optional,
            code | Bool | doc "Enable code generation" | optional,
            comments
              | Bool
              | doc "Output comments in generated output."
              | optional,
            compact
              | js2n.Enum [ "auto", true, false ]
              | doc "Do not include superfluous whitespace characters and line terminators. When set to \"auto\" compact is set to true on input sizes of >500KB."
              | optional,
            extends
              | String
              | doc "A path to a .babelrc file to extend"
              | optional,
            filename
              | String
              | doc "Filename for use in errors etc."
              | optional,
            filenameRelative
              | String
              | doc "Filename relative to sourceRoot (defaults to \"filename\")"
              | optional,
            highlightCode
              | Bool
              | doc "ANSI highlight syntax error code frames"
              | optional,
            ignore
              | std.contract.any_of [ String, Array String ]
              | doc "Opposite of the \"only\" option"
              | optional,
            inputSourceMap
              | std.contract.any_of [ Bool, { _ | Dyn } ]
              | doc "If true, attempt to load an input sourcemap from the file itself. If an object is provided, it will be treated as the source map object itself."
              | optional,
            keepModuleIdExtensions
              | Bool
              | doc "Keep extensions in module ids"
              | optional,
            moduleId
              | String
              | doc "Specify a custom name for module ids."
              | optional,
            moduleIds
              | String
              | doc "If truthy, insert an explicit id for modules. By default, all modules are anonymous. (Not available for common modules)"
              | optional,
            moduleRoot
              | String
              | doc "Optional prefix for the AMD module formatter that will be prepend to the filename on module definitions. (defaults to \"sourceRoot\")"
              | optional,
            only
              | std.contract.any_of [ String, Array String ]
              | doc "A glob, regex, or mixed array of both, matching paths to only compile. Can also be an array of arrays containing paths to explicitly match. When attempting to compile a non-matching file it's returned verbatim."
              | optional,
            plugins
              | Array (
                std.contract.any_of
                  [
                    String,
                    js2n.array.Items [ String, { _ | Dyn } ] js2n.Always
                  ]
              )
              | doc "List of plugins to load and use"
              | optional,
            presets
              | Array (
                std.contract.any_of
                  [
                    String,
                    js2n.array.Items [ String, { _ | Dyn } ] js2n.Always
                  ]
              )
              | doc "List of presets (a set of plugins) to load and use"
              | optional,
            retainLines
              | Bool
              | doc "Retain line numbers. This will lead to wacky code but is handy for scenarios where you can't use source maps. NOTE: This will obviously not retain the columns."
              | optional,
            sourceFileName
              | String
              | doc "Set sources[0] on returned source map. (defaults to \"filenameRelative\")"
              | optional,
            sourceMapTarget
              | String
              | doc "Set file on returned source map. (defaults to \"filenameRelative\")"
              | optional,
            sourceMaps
              | js2n.Enum [ "both", "inline", true, false ]
              | doc "If truthy, adds a map property to returned output. If set to \"inline\", a comment with a sourceMappingURL directive is added to the bottom of the returned code. If set to \"both\" then a map property is returned as well as a source map comment appended."
              | optional,
            sourceRoot
              | String
              | doc "The root from which all sources are relative. (defaults to \"moduleRoot\")"
              | optional,
            ..
          },
    }
    in
  std.contract.Sequence
      [
        refs."definitions.Options",
        {
          env
            | { _ | refs."definitions.Options" }
            | doc "This is an object of keys that represent different environments. For example, you may have: `{ env: { production: { /* specific options */ } } }` which will use those options when the environment variable BABEL_ENV is set to \"production\". If BABEL_ENV isn't set then NODE_ENV will be used, if it's not set then it defaults to \"development\""
            | optional,
          ..
        }
      ]