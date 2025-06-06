# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.BoolDefaultTrue" = Bool,
      "definitions.FormatOptions" = {},
      "definitions.LintOptions" =
        {
            rules
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.LintRules", { _ | Dyn } ])
              | optional,
          },
      "definitions.LintRules" =
        {
            key-empty
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.SeverityLevelDefaultWarn", String ])
              | doc m%"
                Check if the key is empty.
                 ```toml
                 "" = true
                 ```
              "%
              | optional,
          },
      "definitions.LspCompletion" =
        {
            enabled
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.BoolDefaultTrue", Bool ])
              | doc "Whether to enable completion."
              | optional,
          },
      "definitions.LspDiagnostics" =
        {
            enabled
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.BoolDefaultTrue", Bool ])
              | doc "Whether to enable diagnostics."
              | optional,
          },
      "definitions.LspDocumentLink" =
        {
            enabled
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.BoolDefaultTrue", Bool ])
              | doc "Whether to enable document link."
              | optional,
          },
      "definitions.LspFormatting" =
        {
            enabled
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.BoolDefaultTrue", Bool ])
              | doc "Whether to enable formatting."
              | optional,
          },
      "definitions.LspGotoDefinition" =
        {
            enabled
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.BoolDefaultTrue", Bool ])
              | doc "Whether to enable goto definition."
              | optional,
          },
      "definitions.LspHover" =
        {
            enabled
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.BoolDefaultTrue", Bool ])
              | doc "Whether to enable hover."
              | optional,
          },
      "definitions.LspOptions" =
        {
            completion
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.LspCompletion", { _ | Dyn } ])
              | optional,
            diagnostics
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.LspDiagnostics", { _ | Dyn } ])
              | optional,
            document-link
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.LspDocumentLink", { _ | Dyn } ])
              | optional,
            formatting
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.LspFormatting", { _ | Dyn } ])
              | optional,
            goto-declaration
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.LspGotoDefinition", { _ | Dyn } ])
              | optional,
            goto-definition
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.LspGotoDefinition", { _ | Dyn } ])
              | optional,
            goto-type-definition
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.LspGotoDefinition", { _ | Dyn } ])
              | optional,
            hover
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.LspHover", { _ | Dyn } ])
              | optional,
          },
      "definitions.NewSchemaCatalog" =
        {
            paths
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.SchemaCatalogPath", String ]
                ))
              | doc "The catalog is evaluated after the schemas specified by [[schemas]]."
              | optional,
          },
      "definitions.OldSubSchema" =
        {
            include
              | js2n.array.MinItems 1
              | Array String
              | doc m%"
                The file match pattern to include the target to apply the sub schema.
                 Supports glob pattern.
              "%,
            path | String,
            root-keys
              | js2n.Nullable (js2n.string.MinLength 1)
              | doc m%"
                **🚧 Deprecated 🚧**\
                 Please use `schemas[*].root` instead.
              "%
              | optional,
          },
      "definitions.OneOrMany_for_SchemaCatalogPath" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.SchemaCatalogPath", String ],
              Array (
                std.contract.Sequence
                  [ refs."definitions.SchemaCatalogPath", String ]
              )
            ],
      "definitions.RootSchema" =
        {
            include
              | js2n.array.MinItems 1
              | Array String
              | doc m%"
                The file match pattern to include the target to apply the schema.
                 Supports glob pattern.
              "%,
            path | String,
            toml-version
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.TomlVersion", String ])
              | optional,
          },
      "definitions.Schema" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RootSchema", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.SubSchema", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.OldSubSchema", { _ | Dyn } ]
            ],
      "definitions.SchemaCatalog" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.NewSchemaCatalog", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.SchemaCatalogOld", { _ | Dyn } ]
            ],
      "definitions.SchemaCatalogOld" =
        {
            path
              | js2n.Nullable refs."definitions.OneOrMany_for_SchemaCatalogPath"
              | doc m%"
                **🚧 Deprecated 🚧**\
                 Please use `schema.catalog.paths` instead.
              "%
              | optional,
          },
      "definitions.SchemaCatalogPath" = String,
      "definitions.SchemaOptions" =
        {
            catalog | js2n.Nullable refs."definitions.SchemaCatalog" | optional,
            enabled
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.BoolDefaultTrue", Bool ])
              | optional,
            strict
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.BoolDefaultTrue", Bool ])
              | doc m%"
                If `additionalProperties` is not specified in the JSON Schema,
                 the strict mode treats it as `additionalProperties: false`,
                 which is different from the JSON Schema specification.
              "%
              | optional,
          },
      "definitions.SeverityLevel" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'error, 'warn, 'off |] ],
      "definitions.SeverityLevelDefaultWarn" =
        std.contract.Sequence [ refs."definitions.SeverityLevel", String ],
      "definitions.SubSchema" =
        {
            include
              | js2n.array.MinItems 1
              | Array String
              | doc m%"
                The file match pattern to include the target to apply the sub schema.
                 Supports glob pattern.
              "%,
            path | String,
            root | js2n.Nullable (js2n.string.MinLength 1) | optional,
          },
      "definitions.TomlVersion" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| '"v1.1.0-preview", '"v1.0.0" |] ],
    }
    in
  {
      exclude
        | js2n.Nullable
          (std.contract.Sequence [ js2n.array.MinItems 1, Array String ])
        | doc m%"
          The file match pattern to exclude from formatting and linting.
           Supports glob pattern.
        "%
        | optional,
      format | js2n.Nullable refs."definitions.FormatOptions" | optional,
      include
        | js2n.Nullable
          (std.contract.Sequence [ js2n.array.MinItems 1, Array String ])
        | doc m%"
          The file match pattern to include in formatting and linting.
           Supports glob pattern.
        "%
        | optional,
      lint | js2n.Nullable refs."definitions.LintOptions" | optional,
      lsp | js2n.Nullable refs."definitions.LspOptions" | optional,
      schema | js2n.Nullable refs."definitions.SchemaOptions" | optional,
      schemas | js2n.Nullable (Array refs."definitions.Schema") | optional,
      server | js2n.Nullable refs."definitions.LspOptions" | optional,
      toml-version
        | js2n.Nullable refs."definitions.TomlVersion"
        | doc "TOML version to use if not specified in the schema."
        | optional,
    }