# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.BaseRowClass" =
        {
            ClassName | js2n.string.MinLength 1 | doc "The class name",
            Fields
              | js2n.array.UniqueItems
              | Array (js2n.string.MinLength 1)
              | doc "The base class fields that should exists in a table for this base class to be used",
          },
      "definitions.Connection" =
        {
            ConnectionString
              | js2n.string.MinLength 1
              | doc "Connection string"
              | optional,
            Dialect
              | js2n.string.MinLength 1
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'Firebird,
                        'MySql,
                        'Oracle12c,
                        'Oracle,
                        'Postgres,
                        'Sqlite,
                        'SqlServer2000,
                        'SqlServer2005,
                        'SqlServer2008,
                        'SqlServer2012,
                        'SqlServer
                      |]
                    ],
                  String
                ]
              | doc "Dialect"
              | optional,
            Key | js2n.string.MinLength 1 | doc "Key of connection",
            ProviderName
              | js2n.string.MinLength 1
              | doc "Provider name"
              | optional,
            Tables
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence [ refs."definitions.Table", { _ | Dyn } ]
              )
              | doc "Generated table information"
              | optional,
          },
      "definitions.Table" =
        {
            Identifier
              | js2n.string.MinLength 1
              | doc "Row identifier without Row suffix",
            Module | js2n.string.MinLength 1 | doc "Module name",
            PermissionKey | js2n.string.MinLength 1 | doc "Permission key",
            Tablename | js2n.string.MinLength 1 | doc "Table name",
          },
    }
    in
  {
      AppSettingFiles
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc "The list of appsettings.json files in order. Default is appsettings.json, appsettings.machine.json"
        | optional,
      BaseRowClasses
        | js2n.array.UniqueItems
        | Array refs."definitions.BaseRowClass"
        | doc "List of base row classes to be used instead of Row. They are matched by list of base properties"
        | optional,
      ClientTypes
        | {
          OutDir
            | js2n.string.MinLength 1
            | doc "The output directory for generated client types .cs files"
            | optional,
          SourceGenerator
            | Bool
            | doc "If false, the client types source generator in Serenity.Pro.Coder will be disabled"
            | optional,
        }
        | doc "Client types code generation related configuration"
        | optional,
      Connections
        | js2n.array.UniqueItems
        | Array refs."definitions.Connection"
        | doc "List of connections. It is only needed when it is desired to work / generated code based on a connection string that is not in appsettings.json"
        | optional,
      CustomGenerate
        | { _ | js2n.string.MinLength 1 }
        | doc "The relative paths of custom generated files"
        | optional,
      CustomSettings
        | { _ | Dyn }
        | doc "Custom settings to be passed to and used in custom templates"
        | optional,
      CustomTemplates
        | js2n.string.MinLength 1
        | doc m%"
          The location of custom templates folder. The files in this folder will override the default scriban templates in Sergen. You may also include additional files to be generated. Their names must match the names at 
          https://github.com/serenity-is/Serenity/tree/master/src/Serenity.Net.CodeGenerator/Templates 
          You may also include additional files to be generated
        "%
        | optional,
      DeclareJoinConstants
        | Bool
        | doc "If true, generated code will declare and use jFKTable type of constants for expressions in entities"
        | optional,
      EnableGenerateFields
        | Bool
        | doc "If this is true, it allows the use of [GenerateFields] attributes on rows, which automatically generates the fields using a source generator. This should only be used when Serenity.Pro.Coder is enabled in the project"
        | optional,
      EnableRowTemplates
        | Bool
        | doc "If true, enables RowTemplate class generation. This should only be used when Serenity.Pro.Coder is enabled in the project. Has no effect when EnableGenerateFields is true. EnableGenerateFields should be preferred over this as RowTemplate might cause some issues"
        | optional,
      EndOfLine
        | std.enum.TagOrString
        | [| 'CRLF, 'LF |]
        | doc "End of line character to use in generated files. If not specified, it will be auto detected from the environment. It is recommended to have \"lf\" for multi platform projects"
        | optional,
      ExcludeGlobalUsings
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc "If specified, generated code will assume these usings are not in global using scope even if they are in global using scope"
        | optional,
      Extends
        | js2n.string.MinLength 1
        | std.contract.any_of
          [
            js2n.string.Matches "\\.json$",
            std.contract.Sequence
              [ std.enum.TagOrString, [| '"defaults@6.6.0" |] ]
          ]
        | doc m%"
          If specified, the settings in this file extends settings in a base file similar to tsconfig.json
          You can also use Sergen defaults by specifying this like "defaults@x.y.z"
        "%
        | optional,
      FileScopedNamespaces
        | Bool
        | doc "If true, generated code will use file scoped namespaces"
        | optional,
      ForeignFieldSelection
        | std.enum.TagOrString
        | [| 'NameOnly, 'All, 'None |]
        | doc m%"
          The set of foreign fields to generate, default is NameOnly.
          
          None: Don't generate any foreign view fields except the ones explicitly included via IncludeForeignFields
          All: Generate all the foreign view fields, except ones excluded explicitly via RemoveForeignFields
          NameOnly: Don't generate any foreign view fields except the Name property of the target row and ones explicitly included via IncludeForeignFields
        "%
        | optional,
      IncludeForeignFields
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc "A list of foreign fields to include in generated code. This could be used to include some additional fields This could be used to include some additional fields. Not so useful if ForeignFieldSelection is All"
        | optional,
      IncludeGlobalUsings
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc "If specified, generated code will assume these usings are in global using scope"
        | optional,
      KDiff3Path
        | js2n.string.MinLength 1
        | doc "Path to KDiff3 executable. If not specified, it will be auto detected from the environment. (deprecated)"
        | optional,
      MVC
        | {
          OutDir
            | js2n.string.MinLength 1
            | doc "The output directory for MVC.cs"
            | optional,
          SearchViewPaths
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc "View paths to search for, defaults to \"Modules\" and \"Views\". \"ProjectName\" is used instead of \"Modules\" if Razor SDK is used for the project, e.g. a Razor class library"
            | optional,
          SourceGenerator
            | Bool
            | doc "If false, the view paths source generator in Serenity.Pro.Coder will be disabled"
            | optional,
          StripViewPaths
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc "Strip view paths from generated files. Defaults to \"Modules\", \"Views\". E.g. a subclass for Modules and Views won't be generated"
            | optional,
          UseRootNamespace
            | Bool
            | doc "If true, generated MVC views will be placed under the root namespace of the project"
            | optional,
        }
        | doc "MVC (e.g. view locations) related configuration"
        | optional,
      OmitDefaultSchema
        | Bool
        | doc "If true, the default schema name, e.g. \"dbo\" for SQL Server won't be emitted in generated field expressions in Row.cs files. This is true by default only for MySql as in MySql schema names are actually database names"
        | optional,
      ParseGlobalUsings
        | Bool
        | doc "If true, generated code will parse global usings from the current project"
        | optional,
      RemoveForeignFields
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc "A list of foreign fields to omit from generated code. This could be used to disable generating code for join fields like CreatedBy, ModifiedBy etc, so properties like CustomerCreatedBy, CustomerModifiedBy etc. won't be generated in OrderRow. Not so useful if ForeignFieldSelection is None or NameOnly"
        | optional,
      Restore
        | {
          Exclude
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc "List of files (git ignore like) to exclude while restoring"
            | optional,
          Include
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc "List of files (git ignore like) to include while restoring"
            | optional,
          Typings
            | Bool
            | doc "Set false to disable namespace typings restore to typings/ folder"
            | optional,
        }
        | doc "Sergen restore command related configuration. Deprecated as Sergen no longer supports restoring static content"
        | optional,
      RootNamespace
        | js2n.string.MinLength 1
        | doc "The root namespace for the target project. It is recommended to have this in sergen.json. If not there, it will be auto calculated from root namespace in CSPROJ file, or derived from project file name by removing .Web suffix. Generated code will be placed under this namespace and project's own types are assumed to be under this namespace as well"
        | optional,
      SaveGeneratedTables
        | Bool
        | doc "If true, generated table options like Identity, Module etc. will be saved to the Connections array in sergen.json after code generation. Default is true"
        | optional,
      ServerTypings
        | {
          Assemblies
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc "Assemblies for server typings generation. Specify only if Sergen can't auto determine your project output file"
            | optional,
          LocalTexts
            | Bool
            | doc "If true, local texts will be generated"
            | optional,
          ModuleReExports
            | Bool
            | doc "If true, module re-exports will be generated. Defaults to true"
            | optional,
          ModuleTypings
            | Bool
            | doc "If true, module typings will be generated. Defaults to true if you have \"module\" defined in tsconfig.json. Deprecated as only ES modules style code generation is supported now"
            | optional,
          NamespaceTypings
            | Bool
            | doc "If true, namespace typings will be generated. Defaults to true if you don't have \"module\" defined in tsconfig.json. Deprecated as only ES modules style code generation is supported now"
            | optional,
          OutDir
            | js2n.string.MinLength 1
            | doc "The output directory for generated server typings files. Not used for modules"
            | optional,
          PreferRelativePaths
            | Bool
            | doc "If true, generated typings will use relative paths instead of paths from tsconfig.json, e.g. \"../ServerTypes/\" instead of \"@/ServerTypes/\""
            | optional,
          SourceGenerator
            | Bool
            | doc "If false, the server typings source generator in Serenity.Pro.Coder will be disabled"
            | optional,
        }
        | doc "Server typings code generation related configuration"
        | optional,
      TSBuild
        | {
          EntryPoints
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc "List of entry point globs, default is \"Modules/**/*Page.ts\", \"Modules/**/*Page.tsx\", \"Modules/**/ScriptInit.ts\""
            | optional,
          SourceGenerator
            | Bool
            | doc "Should the list of entry points, e.g. ESM be generated, only available with Serenity.Pro.Coder"
            | optional,
          ..
        }
        | optional,
      TSCPath
        | js2n.string.MinLength 1
        | doc "Full path to TypeScript compiler. It is assumed to be in path if not specified. (deprecated)"
        | optional,
      UpgradeInfo
        | {
          AppliedUpgrades
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc "List of already applied upgrades if any"
            | optional,
          InitialType
            | std.enum.TagOrString
            | [| 'Premium, 'Community |]
            | doc "Initial type of project. Available options are \"Community\" e.g. Serene, \"Premium\" e.g. StartSharp"
            | optional,
          InitialVersion
            | js2n.string.MinLength 1
            | js2n.string.Matches "^(\\d+.)?(\\d+.)?(\\d+.)?(\\d+)?$"
            | doc "Version this project is created from. Used to determine which migrations should be applied to project (starting from)"
            | optional,
        }
        | doc "The upgrade / migration related information used by stargen to determine the base version of template used, and already applied upgrades"
        | optional,
      UseOriginAttribute
        | Bool
        | doc "If true, instead of using [Expression] attributes for foreign view fields, it will use Origin(nameof(jFK), nameof(FKRow.ViewField)) if the FKRow is already generated in the project. It will also use ForeignKey(typeof(FKRow)) type of foreign keys instead of strings"
        | optional,
    }