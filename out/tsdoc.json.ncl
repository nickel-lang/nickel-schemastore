# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.tsdocTagDefinition" =
        {
            allowMultiple
              | Bool
              | doc "If true, then this tag may appear multiple times in a doc comment. By default, a tag may only appear once."
              | optional,
            syntaxKind
              | std.enum.TagOrString
              | [| 'modifier, 'block, 'inline |]
              | doc "Syntax kind of the custom tag. \"inline\" means that this tag can appear inside other documentation sections (example: {@link}). \"block\" means that this tag starts a new documentation section (example: @remarks). \"modifier\" means that this tag's presence indicates an aspect of the associated API item (example: @internal).",
            tagName
              | String
              | doc "Name of the custom tag. TSDoc tag names start with an at-sign (@) followed by ASCII letters using camelCase capitalization.",
          },
    }
    in
  {
      "$schema"
        | String
        | doc "Part of the JSON Schema standard, this optional keyword declares the URL of the schema that the file conforms to. Editors may download the schema and use it to perform syntax highlighting.",
      extends
        | Array String
        | doc "Optionally specifies one or more JSON config files that will be combined with this file.  This provides a way for standard settings to be shared across multiple projects.  Important: The \"extends\" paths are resolved using NodeJS module resolution, so a path to a local file MUST be prefixed with \"./\"."
        | optional,
      noStandardTags
        | Bool
        | doc "By default, the config file loader will predefine all of the standardized TSDoc tags.  To disable this and start with a completely empty configuration, set \"noStandardTags\"=true."
        | optional,
      reportUnsupportedHtmlElements
        | Bool
        | doc "Whether an error should be reported when an unsupported HTML element is encountered in a doc comment. Defaults to \"true\" if the \"supportedHtmlElements\" field is present in this file, \"false\" if not."
        | optional,
      supportForTags
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { "@[a-zA-Z][a-zA-Z0-9]*$" = Bool, },
            properties = {},
            required = {},
          }
        | doc "A collection of key/value pairs.  The key is a TSDoc tag name (e.g. \"@myTag\") that must be defined in this configuration.  The value is a boolean indicating whether the tag is supported.  The TSDoc parser may report warnings when unsupported tags are encountered.  If \"supportForTags\" is specified for at least one tag, then the \"reportUnsupportedTags\" validation check is enabled by default."
        | optional,
      supportedHtmlElements
        | Array (js2n.string.Matches "^[a-zA-Z0-9-]+$")
        | doc "The HTML element names that are supported in this configuration. Used in conjunction with the \"reportUnsupportedHtmlElements\" setting."
        | optional,
      tagDefinitions
        | Array refs."definitions.tsdocTagDefinition"
        | doc "Additional tags to support when parsing documentation comments with TSDoc."
        | optional,
    }