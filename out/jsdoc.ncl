# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      opts
        | {
          access
            | std.enum.TagOrString
            | [| 'undefined, 'public, 'protected, 'private, 'all |]
            | doc "Only display symbols with the given `access` property"
            | optional,
          debug
            | Bool
            | doc "Log information that can help debug issues in JSDoc itself"
            | optional,
          destination
            | String
            | doc "The path to the output folder for the generated documentation"
            | optional,
          encoding
            | String
            | doc "Assume this encoding when reading all source files"
            | optional,
          package
            | String
            | doc "The `package.json` file that contains the project name, version, and other details"
            | optional,
          pedantic
            | Bool
            | doc "Treat errors as fatal errors, and treat warnings as errors"
            | optional,
          readme
            | String
            | doc "The README.md file to include in the generated documentation"
            | optional,
          recurse
            | Bool
            | doc "Recurses to subdirectories when searching input files"
            | optional,
          template
            | String
            | doc "The path to the template to use for generating output"
            | optional,
          test
            | Bool
            | doc "Run JSDoc's test suite, and print the results to the console"
            | optional,
          tutorials
            | String
            | doc "Directory in which JSDoc should search for tutorials"
            | optional,
        }
        | doc "Determines flags that `jsdoc` command will be invoked with"
        | optional,
      plugins | Array Dyn | doc "Enables plugins for JSDoc" | optional,
      recurseDepth
        | std.number.Integer
        | doc "Controls recursion depth for source files and tutorials"
        | optional,
      source
        | {
          exclude
            | Array Dyn
            | doc "An array of paths to exclude from input"
            | optional,
          excludePattern
            | String
            | doc "Forces input filenames to match regular expression"
            | optional,
          include
            | Array Dyn
            | doc "An array of paths to input files"
            | optional,
          includePattern
            | String
            | doc "Forces input filenames to match regular expression"
            | optional,
        }
        | doc "Determines the set of input files"
        | optional,
      sourceType
        | std.enum.TagOrString
        | [| 'script, 'module |]
        | doc "Determines how input files are parsed"
        | optional,
      tags
        | {
          allowUnknownTags
            | std.contract.any_of
              [
                Bool,
                std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
              ]
            | doc "Determines how to handle unrecognized tags"
            | optional,
          dictionaries
            | Array (
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'closure, 'jsdoc |] ]
            )
            | doc "Controls which tags JSDoc recognizes and how they are interpreted"
            | optional,
        }
        | doc "Controls allowed JSDoc tags and their interpretation"
        | optional,
      templates
        | {
          cleverLinks
            | Bool
            | doc "Controls @link tag text rendering"
            | optional,
          "default"
            | std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                {
                  includeDate
                    | Bool
                    | doc "Controls if current date is displayed in the footer of documentation"
                    | optional,
                  layoutFile
                    | String
                    | doc "Path to layout file to use for documentation template"
                    | optional,
                  outputSourceFiles
                    | Bool
                    | doc "Disables pretty-printed source files"
                    | optional,
                  staticFiles
                    | {
                      exclude
                        | Array String
                        | doc "An array of paths that should not be copied to the output directory"
                        | optional,
                      excludePattern
                        | String
                        | doc "A regular expression indicating which files to skip"
                        | optional,
                      include
                        | Array String
                        | doc "An array of paths whose contents should be copied to the output directory"
                        | optional,
                      includePattern
                        | String
                        | doc "A regular expression indicating which files to copy"
                        | optional,
                    }
                    | optional,
                  useLongnameInNav
                    | Bool
                    | doc "Controls if shortened or longhand version of a symbol will be shown in documentation"
                    | optional,
                  ..
                },
                Array Dyn
              ]
            | optional,
          monospaceLinks
            | Bool
            | doc "Controls @link tag text rendering"
            | optional,
          ..
        }
        | doc "Affects the appearance and content of generated documentation"
        | optional,
      ..
    }