# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      analyzers
        | Array String
        | doc "Additional analyzers to run after the Qgoda standard analyzer."
        | optional,
      build-task-timeout
        | js2n.number.Minimum 1
        | doc "Number of seconds to wait before forcibly terminating pre-build or post-build tasks; defaults to 300 seconds."
        | optional,
      case-sensitive
        | Bool
        | doc "Set to true if a case-sensitive file system shoud be assumed."
        | optional,
      compare-output
        | Bool
        | doc "Should existing output files be read and compared to the new version to avoid updating timestamps (default => true)"
        | optional,
      defaults
        | Array
          {
            files
              | Array String
              | doc "Either one single file name pattern or a list of file name patterns.  Files that match will receive the values specified.",
            values
              | { _ | js2n.Always }
              | js2n.record.FieldsMatch ".*"
              | doc "Values that should be set for matching files.",
          }
        | doc "Default values, see http://www.qgoda.net/en/docs/defaults"
        | optional,
      exclude
        | Array String
        | doc "List of additional file name patterns that should be ignored for building the site."
        | optional,
      exclude-watch
        | Array String
        | doc "List of additional file name patterns that should be ignored when changed in watch mode."
        | optional,
      front-matter-placeholder
        | { _ | String }
        | js2n.record.FieldsMatch "(\\*|_[a-zA-Z][_a-zA-Z0-9]*)"
        | doc "An object of valid chain names or '*' that give the frontmatter placeholder string for each configured processor chain."
        | optional,
      generator
        | String
        | doc "Value for the generator meta tag in generated pages."
        | optional,
      helpers
        | { _ | Array String }
        | js2n.record.FieldsMatch ".+"
        | doc "Key-value pairs of command identifiers and the command to run in parallel, when running in watch mode. Default: empty."
        | optional,
      index
        | String
        | doc "Basename of a file that is considered to be the index document of a directory."
        | optional,
      latency
        | js2n.number.Minimum 0
        | doc "Number of seconds to wait until a rebuild is triggered after a file system change in watch mode."
        | optional,
      linguas
        | Array (js2n.string.Matches "[a-zA-Z]{1,8}(-[a-zA-z0-9]{8})?")
        | doc "List of language identifiers complying to RFC4647 section 2.1 but without any asterisk (*) characters."
        | optional,
      link-score
        | js2n.number.Minimum 0
        | doc "By which value should two assets be considered more related if they link to to each other."
        | optional,
      location
        | String
        | doc "Template string for the output location."
        | optional,
      no-scm
        | Array String
        | doc "List of additional file name patterns that should be processed in scm mode, even when not under version control"
        | optional,
      paths
        | {
          plugins | String | doc "Directory for plug-ins.",
          po
            | String
            | doc "Directory for po files and other i18n related files.",
          site
            | String
            | doc "Directory where to store rendered files, defaults to the absolute path to '_site' in the current directory.",
          timestamp
            | String
            | doc "Name of the timestamp file containing the seconds since the epoch since the last write of the site.",
          views | String | doc "Directory where view templates are searched.",
        }
        | doc "Configurable paths."
        | optional,
      permalink | String | doc "Template string for permalinks." | optional,
      po
        | {
          copyright-holder
            | String
            | doc "Copyright information for the original content."
            | optional,
          mdextra
            | Array String
            | doc "List of file name patterns for additional markdown files to translate."
            | optional,
          msgfmt
            | Array String
            | doc "The 'msgfmt' command or an array of the program name plus arguments."
            | optional,
          msgid-bugs-address
            | String
            | doc "Where to report translation problems with the original strings."
            | optional,
          msgmerge
            | Array String
            | doc "The 'msgmerge' command(or an array of the program name plus arguments."
            | optional,
          qgoda
            | Array String
            | doc "The 'qgoda' command or an array of the program name plus arguments."
            | optional,
          reload
            | Bool
            | doc "Whether to throw away the translation before every rebuild, defaults to false."
            | optional,
          textdomain
            | String
            | doc "An identifier for the translation catalog (textdomain), defaults to 'messages'."
            | optional,
          tt2
            | Array String
            | doc "A list of file name patterns or one single pattern, where translatable templates for the Template Toolkit version 2 are stored, defaults to '_views'."
            | optional,
          xgettext
            | Array String
            | doc "The 'xgettext' command or an array of the program name plus arguments."
            | optional,
          xgettext-tt2
            | Array String
            | doc "The 'xgettext-tt2' command or an array of the program name plus arguments."
            | optional,
        }
        | doc "Variables for internationalization (i18n) and the translation workflow."
        | optional,
      post-build
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | optional,
      post-processors
        | {
          modules
            | Array (
              js2n.string.Matches
                "[_a-zA-Z][_a-zA-Z0-9]*(::[_a-zA-Z][_a-zA-Z0-9]*)*"
            )
            | doc "The post-processor modules.",
          options
            | { _ | js2n.Always }
            | js2n.record.FieldsMatch ".*"
            | doc "Additional options for the post-processor plug-ins",
        }
        | doc "Modules to run after each build."
        | optional,
      pre-build
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | optional,
      precious
        | Array String
        | doc "List of file name patterns that should notbe deleted in the output directory."
        | optional,
      private
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "Site-specific variables.  You can also choose the namespace 'site' if you prefer."
        | optional,
      processors
        | {
          chains
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "[_a-zA-Z][a-zA-Z0-9]*" =
                        {
                            modules | Array String | doc "The module names.",
                            suffix
                              | String
                              | doc "An optional suffix if different from original filename."
                              | optional,
                            wrapper
                              | String
                              | doc "An optional wrapper for a second run."
                              | optional,
                          },
                    },
                properties = {},
                required = {},
              }
            | doc "The processor chains.",
          options
            | {  .. }
            | doc "Additional options for the processor plug-ins",
          triggers
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = { ".+" = String, },
                properties = {},
                required = {},
              }
            | doc "Filename extenders that trigger a  particular chain if not specified in front matter or defaults.",
        }
        | doc "The processors to use for generating content."
        | optional,
      scm
        | std.contract.Equal "git"
        | doc "Source code management (SCM) that is in use. If present, only files that are under version control and those matching 'no-scm' are processed. Currently only git is supported."
        | optional,
      site
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "Site-specific variables.  You can also choose the namespace 'private' if you prefer."
        | optional,
      srcdir
        | String
        | doc "The source directory for all assets. Do not set that variable yourself! It will be overwritten at runtime with the absolute path to the current directory."
        | optional,
      taxonomies
        | js2n.record.Record
          {
            additional = 'Some js2n.Always,
            patterns = { ".+" = std.number.Integer, },
            properties = {},
            required = {},
          }
        | doc "Key/value pairs of taxonomy names and their respective weights for the computation of relatedness."
        | optional,
      title
        | String
        | doc "The title of the site. It has no particular semantics."
        | optional,
      track-dependencies
        | Bool
        | doc "Set to true if you want to speed up watch mode by re-processing only assets that have changed or depend on changed files."
        | optional,
      url | String | doc "The main url of the site." | optional,
      view
        | js2n.string.MinLength 1
        | doc "The default view template to use."
        | optional,
    }