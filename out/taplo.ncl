# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.OptionsIncomplete" =
        {
            align_comments
              | js2n.Nullable Bool
              | doc m%"
                Align consecutive comments after entries and items vertically.
                
                This applies to comments that are after entries or array items.
              "%
              | optional,
            align_entries
              | js2n.Nullable Bool
              | doc m%"
                Align entries vertically.
                
                Entries that have table headers, comments, or blank lines between them are not aligned.
              "%
              | optional,
            align_single_comments
              | js2n.Nullable Bool
              | doc "If `align_comments` is true, apply the alignment in cases where there's only one comment."
              | optional,
            allowed_blank_lines
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "The maximum amount of consecutive blank lines allowed."
              | optional,
            array_auto_collapse
              | js2n.Nullable Bool
              | doc m%"
                Automatically collapse arrays if they fit in one line.
                
                The array won't be collapsed if it contains a comment.
              "%
              | optional,
            array_auto_expand
              | js2n.Nullable Bool
              | doc "Automatically expand arrays to multiple lines once they exceed the configured `column_width`."
              | optional,
            array_trailing_comma
              | js2n.Nullable Bool
              | doc "Put trailing commas for multiline arrays."
              | optional,
            column_width
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc m%"
                Target maximum column width after which arrays are expanded into new lines.
                
                This is best-effort and might not be accurate.
              "%
              | optional,
            compact_arrays
              | js2n.Nullable Bool
              | doc "Omit whitespace padding inside single-line arrays."
              | optional,
            compact_entries
              | js2n.Nullable Bool
              | doc "Omit whitespace around `=`."
              | optional,
            compact_inline_tables
              | js2n.Nullable Bool
              | doc "Omit whitespace padding inside inline tables."
              | optional,
            crlf | js2n.Nullable Bool | doc "Use CRLF line endings" | optional,
            indent_entries
              | js2n.Nullable Bool
              | doc "Indent entries under tables."
              | optional,
            indent_string
              | js2n.Nullable String
              | doc "Indentation to use, should be tabs or spaces but technically could be anything."
              | optional,
            indent_tables
              | js2n.Nullable Bool
              | doc "Indent subtables if they come in order."
              | optional,
            inline_table_expand
              | js2n.Nullable Bool
              | doc "Expand values (e.g.) inside inline tables where possible."
              | optional,
            reorder_arrays
              | js2n.Nullable Bool
              | doc "Alphabetically reorder array values that are not separated by blank lines."
              | optional,
            reorder_keys
              | js2n.Nullable Bool
              | doc "Alphabetically reorder keys that are not separated by blank lines."
              | optional,
            trailing_newline
              | js2n.Nullable Bool
              | doc "Add trailing newline to the source."
              | optional,
            ..
          },
      "definitions.Plugin" =
        {
            settings
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "Optional settings for the plugin."
              | optional,
            ..
          },
      "definitions.Rule" =
        {
            exclude
              | js2n.Nullable (Array String)
              | doc m%"
                Files that are excluded from this rule.
                
                A list of Unix-like [glob](https://en.wikipedia.org/wiki/Glob_(programming)) path patterns.
                
                Relative paths are **not** relative to the configuration file, but rather depends on the tool using the configuration.
                
                This has priority over `include`.
              "%
              | optional,
            formatting
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.OptionsIncomplete", { _ | Dyn } ])
              | doc "Formatting options."
              | optional,
            include
              | js2n.Nullable (Array String)
              | doc m%"
                Files this rule is valid for.
                
                A list of Unix-like [glob](https://en.wikipedia.org/wiki/Glob_(programming)) path patterns.
                
                Relative paths are **not** relative to the configuration file, but rather depends on the tool using the configuration.
                
                Omitting this property includes all files, **however an empty array will include none**.
              "%
              | optional,
            keys
              | js2n.Nullable (Array String)
              | doc m%"
                Keys the rule is valid for in a document.
                
                A list of Unix-like [glob](https://en.wikipedia.org/wiki/Glob_(programming)) dotted key patterns.
                
                This allows enabling the rule for specific paths in the document.
                
                For example:
                
                - `package.metadata` will enable the rule for everything inside the `package.metadata` table, including itself.
                
                If omitted, the rule will always be valid for all keys.
              "%
              | optional,
            name
              | js2n.Nullable String
              | doc m%"
                The name of the rule.
                
                Used in `taplo::<name>` comments.
              "%
              | optional,
            schema
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.SchemaOptions", { _ | Dyn } ])
              | doc "Schema validation options."
              | optional,
          },
      "definitions.SchemaOptions" =
        {
            enabled
              | js2n.Nullable Bool
              | doc m%"
                Whether the schema should be enabled or not.
                
                Defaults to true if omitted.
              "%
              | optional,
            path
              | js2n.Nullable String
              | doc m%"
                A local file path to the schema, overrides `url` if set.
                
                URLs are also accepted here, but it's not a guarantee and might change in newer releases. Please use the `url` field instead whenever possible.
              "%
              | optional,
            url
              | js2n.Nullable String
              | doc m%"
                A full absolute URL to the schema.
                
                The url of the schema, supported schemes are `http`, `https`, `file` and `taplo`.
              "%
              | optional,
          },
    }
    in
  {
      exclude
        | js2n.Nullable (Array String)
        | doc m%"
          Files to exclude (ignore).
          
          A list of Unix-like [glob](https://en.wikipedia.org/wiki/Glob_(programming)) path patterns. Globstars (`**`) are supported.
          
          Relative paths are **not** relative to the configuration file, but rather depends on the tool using the configuration.
          
          This has priority over `include`.
        "%
        | optional,
      formatting
        | js2n.Nullable refs."definitions.OptionsIncomplete"
        | doc "Formatting options."
        | optional,
      include
        | js2n.Nullable (Array String)
        | doc m%"
          Files to include.
          
          A list of Unix-like [glob](https://en.wikipedia.org/wiki/Glob_(programming)) path patterns. Globstars (`**`) are supported.
          
          Relative paths are **not** relative to the configuration file, but rather depends on the tool using the configuration.
          
          Omitting this property includes all files, **however an empty array will include none**.
        "%
        | optional,
      plugins | js2n.Nullable ({ _ | refs."definitions.Plugin" }) | optional,
      rule
        | Array refs."definitions.Rule"
        | doc "Rules are used to override configurations by path and keys."
        | optional,
      schema
        | js2n.Nullable refs."definitions.SchemaOptions"
        | doc "Schema validation options."
        | optional,
    }