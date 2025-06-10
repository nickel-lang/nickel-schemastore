# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      settings
        | {
          documentationRules
            | {
              companyName
                | String
                | doc "The name of the company which appears in file headers."
                | optional,
              copyrightText
                | String
                | doc "The copyright text which should appear in file headers."
                | optional,
              documentExposedElements
                | Bool
                | doc "Specifies whether exposed elements need to be documented. When true, all publicly-exposed types and members require documentation."
                | optional,
              documentInterfaces
                | Bool
                | doc "Specifies whether interface members need to be documented. When true, all interface members require documentation, regardless of accessibility."
                | optional,
              documentInternalElements
                | Bool
                | doc "Specifies whether internal elements need to be documented. When true, all internally-exposed types and members require documentation."
                | optional,
              documentPrivateElements
                | Bool
                | doc "Specifies whether private elements need to be documented. When true, all types and members except for declared private fields require documentation."
                | optional,
              documentPrivateFields
                | Bool
                | doc "Specifies whether private fields need to be documented. When true, all fields require documentation, regardless of accessibility."
                | optional,
              documentationCulture
                | String
                | doc "The culture that should be used for documentation comments."
                | optional,
              excludeFromPunctuationCheck
                | Array Dyn
                | doc "Specifies the top-level tags within XML documentation that will be excluded from punctuation analysis."
                | optional,
              fileNamingConvention
                | std.enum.TagOrString
                | [| 'metadata, 'stylecop |]
                | doc "Specifies the preferred naming convention for files. The default value \"stylecop\" uses the naming convention defined by StyleCop Classic, while \"metadata\" uses a file naming convention that matches the metadata names of types."
                | optional,
              headerDecoration
                | String
                | doc "The text used as decoration for the copyright header comment."
                | optional,
              variables
                | { _ | String }
                | js2n.record.FieldsMatch "^[a-zA-Z0-9]+$"
                | doc "Replacement variables which may be used in the 'copyrightText' value."
                | optional,
              xmlHeader
                | Bool
                | doc "Determines whether the file header should be wrapped in the StyleCop-standard XML structure."
                | optional,
            }
            | doc "Configuration for documentation rules (SA1600-)"
            | optional,
          indentation
            | {
              indentationSize
                | std.number.Integer
                | js2n.number.Minimum 0
                | doc "Specifies the indentation size."
                | optional,
              tabSize
                | std.number.Integer
                | js2n.number.Minimum 0
                | doc "Specifies the tab width."
                | optional,
              useTabs
                | Bool
                | doc "Specifies whether indentation should use hard tabs instead of spaces."
                | optional,
            }
            | doc "Indentation configuration"
            | optional,
          layoutRules
            | {
              allowConsecutiveUsings
                | Bool
                | doc "Specifies if SA1519 will allow consecutive using statements without braces"
                | optional,
              allowDoWhileOnClosingBrace
                | Bool
                | doc "Specifies if SA1500 will allow the 'while' expression of a 'do'/'while' loop to be on the same line as the closing brace."
                | optional,
              newlineAtEndOfFile
                | std.enum.TagOrString
                | [| 'omit, 'require, 'allow |]
                | doc "Specifies the handling for newline characters which appear at the end of a file\r\nallow: Files are allowed to end with a single newline character, but it is not required\r\nrequire: Files are required to end with a single newline character\r\nomit: Files may not end with a newline character"
                | optional,
            }
            | doc "Configuration for layout rules (SA1500-)"
            | optional,
          maintainabilityRules
            | {
              topLevelTypes
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'enum, 'delegate, 'struct, 'interface, 'class |]
                    ]
                )
                | doc "The set of type kinds which should be placed in separate files according to the type name."
                | optional,
            }
            | doc "Configuration for ordering rules (SA1400-)"
            | optional,
          namingRules
            | {
              allowCommonHungarianPrefixes
                | Bool
                | doc "Determines whether common Hungarian notation prefixes should be allowed."
                | optional,
              allowedHungarianPrefixes
                | Array (js2n.string.Matches "^[a-z]{1,2}$")
                | doc "Allowed Hungarian notation prefixes."
                | optional,
              allowedNamespaceComponents
                | Array String
                | doc "Allowed namespace components, such as ones beginning with a lowercase letter."
                | optional,
              includeInferredTupleElementNames
                | Bool
                | doc "Specifies whether inferred tuple element names will be analyzed as well."
                | optional,
              tupleElementNameCasing
                | std.enum.TagOrString
                | [| 'PascalCase, 'camelCase |]
                | doc "Specifies the casing convention used for tuple element names."
                | optional,
            }
            | doc "Configuration for naming rules (SA1300-)"
            | optional,
          orderingRules
            | {
              blankLinesBetweenUsingGroups
                | std.enum.TagOrString
                | [| 'omit, 'require, 'allow |]
                | doc "Specifies if using groups should be separated by a blank line.\r\nallow: A blank line is allowed, but not required\r\nrequire: A blank line is required\r\nomit: A blank line is not allowed"
                | optional,
              elementOrder
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'readonly, 'static, 'constant, 'kind, 'accessibility |]
                    ]
                )
                | doc "Specifies the traits used for ordering elements within a document, along with their precedence."
                | optional,
              systemUsingDirectivesFirst
                | Bool
                | doc "When true, System using directives should be placed before other using directives."
                | optional,
              usingDirectivesPlacement
                | std.enum.TagOrString
                | [| 'preserve, 'outsideNamespace, 'insideNamespace |]
                | doc "Specifies the desired placement of using directives.\r\ninsideNamespace: Place using directives inside the namespace definition\r\noutsideNamespace: Place using directives outside the namespace definition\r\npreserve: Allow using directives inside or outside the namespace definition"
                | optional,
            }
            | doc "Configuration for ordering rules (SA1200-)"
            | optional,
          readabilityRules
            | {
              allowBuiltInTypeAliases
                | Bool
                | doc "When true, diagnostics will not be reported for using aliases of built-in types."
                | optional,
            }
            | doc "Configuration for readability rules (SA1100-)"
            | optional,
          spacingRules
            | {}
            | doc "Configuration for spacing rules (SA1000-)"
            | optional,
        }
        | doc "The top-level object containing configuration properties for built-in rules."
        | optional,
      ..
    }