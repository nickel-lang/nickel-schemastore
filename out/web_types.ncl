# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.abstract" = Bool,
      "definitions.base-contribution" =
        {
            abstract | refs."definitions.abstract" | Bool | optional,
            css | refs."definitions.css" | { _ | Dyn } | optional,
            deprecated
              | refs."definitions.deprecated"
              | std.contract.any_of [ Bool, String ]
              | optional,
            deprecated-since
              | refs."definitions.deprecated-since"
              | String
              | optional,
            description | refs."definitions.description" | String | optional,
            description-sections
              | refs."definitions.description-sections"
              | { _ | Dyn }
              | optional,
            doc-url | refs."definitions.doc-url" | String | optional,
            exclusive-contributions
              | refs."definitions.exclusive-contributions"
              | Array Dyn
              | optional,
            experimental
              | refs."definitions.experimental"
              | std.contract.any_of [ Bool, String ]
              | optional,
            extends | refs."definitions.reference" | optional,
            extension | refs."definitions.extension" | Bool | optional,
            html | refs."definitions.html" | { _ | Dyn } | optional,
            icon | refs."definitions.icon" | String | optional,
            js | refs."definitions.js" | { _ | Dyn } | optional,
            name | refs."definitions.name" | String | optional,
            obsolete
              | refs."definitions.obsolete"
              | std.contract.any_of [ Bool, String ]
              | optional,
            obsolete-since
              | refs."definitions.obsolete-since"
              | String
              | optional,
            pattern | refs."definitions.name-pattern-root" | optional,
            "priority" | refs."definitions.priority" | String | optional,
            proximity | refs."definitions.proximity" | Number | optional,
            required-context
              | refs."definitions.required-context"
              | doc "Since 2024.2. Specify contexts, which are required to enable this contribution."
              | optional,
            since | refs."definitions.since" | String | optional,
            source | refs."definitions.source" | { _ | Dyn } | optional,
            virtual | refs."definitions.virtual" | Bool | optional,
            ..
          },
      "definitions.context-config" =
        {
            disable-when
              | refs."definitions.disablement-rules"
              | { _ | Dyn }
              | optional,
            enable-when
              | refs."definitions.enablement-rules"
              | { _ | Dyn }
              | optional,
          },
      "definitions.context-kind-config" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.context-config", { _ | Dyn } ]),
              patterns = {},
              properties =
                {
                    disable-when =
                      std.contract.Sequence
                          [ refs."definitions.disablement-rules", { _ | Dyn } ],
                    enable-when =
                      std.contract.Sequence
                          [ refs."definitions.enablement-rules", { _ | Dyn } ],
                    kind = String,
                  },
              required = {},
            },
      "definitions.contexts-config" =
        {
            _ | std.contract.Sequence
              [ refs."definitions.context-kind-config", { _ | Dyn } ]
          },
      "definitions.css" =
        std.contract.Sequence
            [ refs."definitions.css-contributions-host", { _ | Dyn } ],
      "definitions.css-contributions-host" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^(?!pattern$).*$" =
                      refs."definitions.generic-css-contributions",
                  },
              properties =
                {
                    classes =
                      Array (
                          std.contract.Sequence
                            [ refs."definitions.css-generic-item", { _ | Dyn } ]
                        ),
                    functions =
                      Array (
                          std.contract.Sequence
                            [ refs."definitions.css-generic-item", { _ | Dyn } ]
                        ),
                    parts =
                      Array (
                          std.contract.Sequence
                            [ refs."definitions.css-generic-item", { _ | Dyn } ]
                        ),
                    properties =
                      Array (
                          std.contract.Sequence
                            [ refs."definitions.css-property", { _ | Dyn } ]
                        ),
                    pseudo-classes =
                      Array (
                          std.contract.Sequence
                            [ refs."definitions.css-pseudo-class", { _ | Dyn } ]
                        ),
                    pseudo-elements =
                      Array (
                          std.contract.Sequence
                            [
                              refs."definitions.css-pseudo-element",
                              { _ | Dyn }
                            ]
                        ),
                  },
              required = {},
            },
      "definitions.css-generic-item" =
        std.contract.Sequence
            [
              refs."definitions.base-contribution",
              refs."definitions.css-contributions-host",
              { _ | Dyn }
            ],
      "definitions.css-property" =
        std.contract.Sequence
            [
              refs."definitions.base-contribution",
              refs."definitions.css-contributions-host",
              { values | Array String | optional, .. }
            ],
      "definitions.css-pseudo-class" =
        std.contract.Sequence
            [
              refs."definitions.base-contribution",
              refs."definitions.css-contributions-host",
              {
                arguments
                  | Bool
                  | doc "Specify whether the pseudo-class requires arguments."
                  | optional,
                ..
              }
            ],
      "definitions.css-pseudo-element" =
        std.contract.Sequence
            [
              refs."definitions.base-contribution",
              refs."definitions.css-contributions-host",
              {
                arguments
                  | Bool
                  | doc "Specify whether the pseudo-element requires arguments."
                  | optional,
                ..
              }
            ],
      "definitions.custom-enablement-rules" = Array String,
      "definitions.default" = String,
      "definitions.deprecated" = std.contract.any_of [ Bool, String ],
      "definitions.deprecated-description-markup" =
        std.contract.Sequence [ refs."definitions.description-markup", String ],
      "definitions.deprecated-html-attribute-vue-argument" =
        {
            description | refs."definitions.description" | String | optional,
            doc-url | refs."definitions.doc-url" | String | optional,
            pattern | refs."definitions.name-pattern-root" | optional,
            required
              | Bool
              | doc "Whether directive requires an argument"
              | optional,
          },
      "definitions.deprecated-html-attribute-vue-modifier" =
        {
            description | refs."definitions.description" | String | optional,
            doc-url | refs."definitions.doc-url" | String | optional,
            name | refs."definitions.name" | String,
            pattern | refs."definitions.name-pattern-root" | optional,
          },
      "definitions.deprecated-since" = String,
      "definitions.deprecated-types-syntax" =
        std.contract.Sequence [ refs."definitions.js-types-syntax", String ],
      "definitions.description" = String,
      "definitions.description-markup" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'none, 'markdown, 'html |] ],
      "definitions.description-sections" = { _ | String },
      "definitions.disablement-rules" =
        {
            file-extensions
              | Array String
              | doc "Extensions of files, which should have the framework support disabled"
              | optional,
            file-name-patterns
              | Array refs."definitions.pattern"
              | doc "RegExp patterns to match file names, which should have the framework support disabled"
              | optional,
          },
      "definitions.doc-url" = String,
      "definitions.enablement-rules" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [
                        refs."definitions.custom-enablement-rules",
                        Array Dyn
                      ]),
              patterns = {},
              properties =
                {
                    file-extensions = Array String,
                    file-name-patterns = Array refs."definitions.pattern",
                    ide-libraries = Array String,
                    node-packages = Array String,
                    project-tool-executables = Array String,
                    ruby-gems = Array String,
                  },
              required = {},
            },
      "definitions.exclusive-contributions" =
        Array (js2n.string.Matches "/[^/\\n\\r]+/[^/\\n\\r]+"),
      "definitions.experimental" = std.contract.any_of [ Bool, String ],
      "definitions.extension" = Bool,
      "definitions.framework-config" =
        {
            canonical-names
              | refs."definitions.name-conversion-rules-single"
              | { _ | Dyn }
              | doc "In many frameworks symbols can have multiple versions of a name. Specify canonical name conversion rule for names of particular symbol kinds against which comparisons will be made. Format of the 'canonical-names' property names is '{namespace}/{symbol kind}'. By default symbol names in HTML namespace are converted to lower-case, and in CSS and JS namespaces are left as-is. In case of name patterns, rules are applied to each part of the pattern separately, so even if the symbol with pattern is in HTML namespace, references to JS events will be case-sensitive."
              | optional,
            disable-when
              | refs."definitions.disablement-rules"
              | { _ | Dyn }
              | optional,
            enable-when
              | refs."definitions.enablement-rules"
              | { _ | Dyn }
              | optional,
            match-names
              | refs."definitions.name-conversion-rules-multiple"
              | { _ | Dyn }
              | doc "Provide an array of name conversions, in which particular symbol kinds should be matched against canonical names of symbols. By default symbol names are converted using canonical-names rule."
              | optional,
            name-variants
              | refs."definitions.name-conversion-rules-multiple"
              | { _ | Dyn }
              | doc "Provide an array of name conversions, in which particular symbol kinds should be proposed in auto completion. Format of the 'name-variants' property names is '{namespace}/{symbol kind}'. All symbol kinds are by default provided as-is."
              | optional,
          },
      "definitions.generic-contribution" =
        std.contract.Sequence
            [
              refs."definitions.typed-contribution",
              {
                attribute-value
                  | refs."definitions.html-attribute-value"
                  | { _ | Dyn }
                  | optional,
                "default" | refs."definitions.default" | String | optional,
                required | refs."definitions.required" | Bool | optional,
                ..
              }
            ],
      "definitions.generic-css-contribution" =
        std.contract.Sequence
            [
              refs."definitions.generic-contribution",
              refs."definitions.css-contributions-host",
              { _ | Dyn }
            ],
      "definitions.generic-css-contribution-or-property" =
        std.contract.any_of
            [
              String,
              Number,
              Bool,
              std.contract.Sequence
                [ refs."definitions.generic-css-contribution", { _ | Dyn } ]
            ],
      "definitions.generic-css-contributions" =
        js2n.OneOf
            [
              refs."definitions.generic-css-contribution-or-property",
              js2n.array.ArrayOf
                refs."definitions.generic-css-contribution-or-property"
            ],
      "definitions.generic-html-contribution" =
        std.contract.Sequence
            [
              refs."definitions.generic-contribution",
              refs."definitions.html-contributions-host",
              { _ | Dyn }
            ],
      "definitions.generic-html-contribution-or-property" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.generic-html-contribution", { _ | Dyn } ],
              String,
              Number,
              Bool
            ],
      "definitions.generic-html-contributions" =
        js2n.OneOf
            [
              refs."definitions.generic-html-contribution-or-property",
              js2n.array.ArrayOf
                refs."definitions.generic-html-contribution-or-property"
            ],
      "definitions.generic-js-contribution" =
        std.contract.Sequence
            [
              refs."definitions.generic-contribution",
              refs."definitions.js-contributions-host",
              { _ | Dyn }
            ],
      "definitions.generic-js-contribution-or-property" =
        std.contract.any_of
            [
              String,
              Number,
              Bool,
              std.contract.Sequence
                [ refs."definitions.generic-js-contribution", { _ | Dyn } ]
            ],
      "definitions.generic-js-contributions" =
        js2n.OneOf
            [
              refs."definitions.generic-js-contribution-or-property",
              js2n.array.ArrayOf
                refs."definitions.generic-js-contribution-or-property"
            ],
      "definitions.html" =
        std.contract.Sequence
            [
              refs."definitions.html-contributions-host",
              {
                description-markup
                  | refs."definitions.deprecated-description-markup"
                  | optional,
                tags
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.html-element", { _ | Dyn } ]
                  )
                  | doc "Deprecated, use `elements` property."
                  | optional,
                types-syntax
                  | refs."definitions.deprecated-types-syntax"
                  | optional,
                ..
              }
            ],
      "definitions.html-attribute" =
        std.contract.Sequence
            [
              refs."definitions.base-contribution",
              refs."definitions.html-contributions-host",
              {
                "default" | String | optional,
                required | refs."definitions.required" | Bool | optional,
                value
                  | refs."definitions.html-attribute-value"
                  | { _ | Dyn }
                  | optional,
                vue-argument
                  | refs."definitions.deprecated-html-attribute-vue-argument"
                  | { _ | Dyn }
                  | optional,
                vue-modifiers
                  | Array (
                    std.contract.Sequence
                      [
                        refs."definitions.deprecated-html-attribute-vue-modifier",
                        { _ | Dyn }
                      ]
                  )
                  | doc "Deprecated vue-specific property - contribute Vue directives to /contributions/html/vue-directives"
                  | optional,
                ..
              }
            ],
      "definitions.html-attribute-value" =
        {
            "default" | String | optional,
            kind
              | std.enum.TagOrString
              | [| 'expression, 'plain, 'no-value |]
              | optional,
            required | Bool | optional,
            type | refs."definitions.html-value-type" | optional,
          },
      "definitions.html-contributions-host" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^(?!pattern$).*$" =
                      refs."definitions.generic-html-contributions",
                  },
              properties =
                {
                    attributes =
                      Array (
                          std.contract.Sequence
                            [ refs."definitions.html-attribute", { _ | Dyn } ]
                        ),
                    elements =
                      Array (
                          std.contract.Sequence
                            [ refs."definitions.html-element", { _ | Dyn } ]
                        ),
                    events =
                      Array (
                          std.contract.Sequence
                            [
                              refs."definitions.generic-html-contribution",
                              { _ | Dyn }
                            ]
                        ),
                  },
              required = {},
            },
      "definitions.html-element" =
        std.contract.Sequence
            [
              refs."definitions.base-contribution",
              refs."definitions.html-contributions-host",
              { _ | Dyn }
            ],
      "definitions.html-value-type" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ refs."definitions.type-reference", { _ | Dyn } ],
              Array refs."definitions.type"
            ],
      "definitions.icon" = String,
      "definitions.js" =
        std.contract.Sequence
            [ refs."definitions.js-contributions-host", { _ | Dyn } ],
      "definitions.js-contributions-host" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^(?!pattern$).*$" =
                      refs."definitions.generic-js-contributions",
                  },
              properties =
                {
                    events =
                      Array (
                          std.contract.Sequence
                            [
                              refs."definitions.generic-js-contribution",
                              { _ | Dyn }
                            ]
                        ),
                    properties =
                      Array (
                          std.contract.Sequence
                            [ refs."definitions.js-property", { _ | Dyn } ]
                        ),
                    symbols =
                      Array (
                          std.contract.Sequence
                            [ refs."definitions.js-symbol", { _ | Dyn } ]
                        ),
                  },
              required = {},
            },
      "definitions.js-global" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^(?!pattern$).*$" =
                      refs."definitions.generic-js-contributions",
                  },
              properties =
                {
                    events =
                      Array (
                          std.contract.Sequence
                            [
                              refs."definitions.generic-js-contribution",
                              { _ | Dyn }
                            ]
                        ),
                    symbols =
                      Array (
                          std.contract.Sequence
                            [ refs."definitions.js-symbol", { _ | Dyn } ]
                        ),
                  },
              required = {},
            },
      "definitions.js-property" =
        std.contract.Sequence
            [
              refs."definitions.generic-contribution",
              refs."definitions.js-contributions-host",
              {
                read-only
                  | Bool
                  | doc "Specifies whether the property is read only."
                  | optional,
                ..
              }
            ],
      "definitions.js-symbol" =
        std.contract.Sequence
            [
              refs."definitions.typed-contribution",
              refs."definitions.js-contributions-host",
              {
                kind
                  | std.enum.TagOrString
                  | [|
                    'Module,
                    'Alias,
                    'Enum,
                    'Interface,
                    'Class,
                    'Namespace,
                    'Function,
                    'Variable
                  |]
                  | doc "Kind of the symbol. Default is variable."
                  | optional,
                ..
              }
            ],
      "definitions.js-types-syntax" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'typescript |] ],
      "definitions.list-reference" =
        js2n.OneOf
            [
              refs."definitions.reference",
              js2n.array.ArrayOf refs."definitions.reference"
            ],
      "definitions.name" = String,
      "definitions.name-conversion-rules-multiple" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."definitions.name-converters", Array Dyn ]
              },
              js2n.record.FieldsMatch "^/[^/\\n\\r]+/[^/\\n\\r]+$"
            ],
      "definitions.name-conversion-rules-single" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."definitions.name-converter", String ]
              },
              js2n.record.FieldsMatch "^/[^/\\n\\r]+/[^/\\n\\r]+$"
            ],
      "definitions.name-converter" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'snake_case,
                'kebab-case,
                'UPPERCASE,
                'lowercase,
                'camelCase,
                'PascalCase,
                'as-is
              |]
            ],
      "definitions.name-converters" =
        Array (
            std.contract.Sequence [ refs."definitions.name-converter", String ]
          ),
      "definitions.name-pattern" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            delegate = refs."definitions.reference",
                            deprecated =
                              std.contract.Sequence
                                  [
                                    refs."definitions.deprecated",
                                    std.contract.any_of [ Bool, String ]
                                  ],
                            items = refs."definitions.list-reference",
                            or =
                              std.contract.Sequence
                                  [
                                    refs."definitions.name-pattern-template",
                                    Array Dyn
                                  ],
                            "priority" =
                              std.contract.Sequence
                                  [ refs."definitions.priority", String ],
                            proximity =
                              std.contract.Sequence
                                  [ refs."definitions.proximity", Number ],
                            repeat = Bool,
                            required =
                              std.contract.Sequence
                                  [ refs."definitions.required", Bool ],
                            template =
                              std.contract.Sequence
                                  [
                                    refs."definitions.name-pattern-template",
                                    Array Dyn
                                  ],
                            unique = Bool,
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties = { case-sensitive = Bool, regex = String, },
                      required = { regex = true, },
                    }
                ],
              { _ | Dyn }
            ],
      "definitions.name-pattern-root" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.name-pattern", { _ | Dyn } ],
              String
            ],
      "definitions.name-pattern-template" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.any_of
                  [
                    String,
                    std.contract.Sequence [ js2n.Always, Array Dyn ],
                    std.contract.Sequence
                      [ refs."definitions.name-pattern", { _ | Dyn } ]
                  ]
              )
            ],
      "definitions.obsolete" = std.contract.any_of [ Bool, String ],
      "definitions.obsolete-since" = String,
      "definitions.pattern" =
        std.contract.any_of
            [
              String,
              {
                case-sensitive | Bool | optional,
                regex | String | optional,
                ..
              }
            ],
      "definitions.priority" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'highest, 'high, 'normal, 'low, 'lowest |]
            ],
      "definitions.proximity" = std.number.Integer,
      "definitions.reference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.reference-with-props", { _ | Dyn } ],
              String
            ],
      "definitions.reference-name-conversion" =
        {
            canonical-names
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.name-converter", String ],
                  std.contract.Sequence
                    [
                      refs."definitions.name-conversion-rules-single",
                      { _ | Dyn }
                    ]
                ]
              | doc "Override global canonical name conversion rule against which comparisons are made for the referenced symbols. When only rule name is specified, it applies to the symbols of the same kind as the last segment of the referenced path. Otherwise format of the property names is '{namespace}/{symbol kind}'. Supported by JetBrains IDEs since 2022.1."
              | optional,
            match-names
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.name-converters", Array Dyn ],
                  std.contract.Sequence
                    [
                      refs."definitions.name-conversion-rules-multiple",
                      { _ | Dyn }
                    ]
                ]
              | doc "Override global rules, by which referenced symbols should be matched against their canonical names. When only rule names are specified, they applies to the symbols of the same kind as the last segment of the referenced path. Otherwise format of the property names is '{namespace}/{symbol kind}'. Supported by JetBrains IDEs since 2022.1."
              | optional,
            name-variants
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.name-converters", Array Dyn ],
                  std.contract.Sequence
                    [
                      refs."definitions.name-conversion-rules-multiple",
                      { _ | Dyn }
                    ]
                ]
              | doc "Override global rules, by which referenced symbol names should be proposed in auto completion. When only rule names are specified, they applies to the symbols of the same kind as the last segment of the referenced path. Otherwise format of the property names is '{namespace}/{symbol kind}'. Supported by JetBrains IDEs since 2022.1."
              | optional,
            ..
          },
      "definitions.reference-with-props" =
        {
            filter | String | optional,
            includeAbstract | Bool | optional,
            includeVirtual | Bool | optional,
            name-conversion
              | refs."definitions.reference-name-conversion"
              | { _ | Dyn }
              | doc "Override global name conversion rules for matching symbols under the path."
              | optional,
            path | String,
            ..
          },
      "definitions.required" = Bool,
      "definitions.required-context" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { kind = String, name = String, },
                  required = { kind = true, name = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { anyOf = js2n.array.ArrayOf js2n.Always, },
                  required = { anyOf = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { allOf = js2n.array.ArrayOf js2n.Always, },
                  required = { allOf = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { not = js2n.Always, },
                  required = { not = true, },
                }
            ],
      "definitions.since" = String,
      "definitions.source" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        { file = String, offset = std.number.Integer, },
                      required = { file = true, offset = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties = { module = String, symbol = String, },
                      required = { symbol = true, },
                    }
                ],
              { _ | Dyn }
            ],
      "definitions.type" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.type-reference", { _ | Dyn } ],
              String
            ],
      "definitions.type-list" =
        js2n.OneOf
            [
              refs."definitions.type",
              js2n.array.ArrayOf refs."definitions.type"
            ],
      "definitions.type-reference" =
        {
            module
              | String
              | doc "Name of module, which exports the type. May be omitted, in which case it's assumed to be the name of the library."
              | optional,
            name | String | doc "Name of the symbol to import",
          },
      "definitions.typed-contribution" =
        std.contract.Sequence
            [
              refs."definitions.base-contribution",
              { type | refs."definitions.type-list" | optional, .. }
            ],
      "definitions.virtual" = Bool,
    }
    in
  {
      "$schema" | String | optional,
      context
        | refs."definitions.required-context"
        | doc "Deprecated since 2024.2 because of ambiguous meaning - use \"required-context\" instead."
        | optional,
      contexts-config | refs."definitions.contexts-config" | optional,
      contributions
        | {
          css | refs."definitions.css" | { _ | Dyn } | optional,
          html | refs."definitions.html" | { _ | Dyn } | optional,
          js | refs."definitions.js-global" | optional,
        }
        | doc "Symbol can be contributed to one of the 3 namespaces - HTML, CSS and JS. Within a particular namespace there can be different kinds of symbols. In each of the namespaces, there are several predefined kinds, which integrate directly with IDE, but providers are free to define their own."
        | optional,
      default-icon | refs."definitions.icon" | optional,
      description-markup | refs."definitions.description-markup" | optional,
      framework
        | String
        | doc "Framework, for which the components are provided by the library. If the library is not enabled in a particular context, all symbols from this file will not be available as well. If you want symbols to be always available do not specify framework."
        | optional,
      framework-config | refs."definitions.framework-config" | optional,
      js-types-syntax | refs."definitions.js-types-syntax" | optional,
      name | String | doc "Name of the library.",
      required-context
        | refs."definitions.required-context"
        | doc "Since 2024.2. Specify contexts, which are required to enable contributions from this file."
        | optional,
      version
        | String
        | doc "Version of the library, for which Web-Types are provided.",
    }