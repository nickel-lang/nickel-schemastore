# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema" | String | optional,
      BlackBoxSettings
        | js2n.Nullable
          {
            AdditionalHttpHeaders
              | js2n.Nullable
                (Array
                  { Key | String | optional, Value | String | optional, .. })
              | doc "Dictionary of additional HTTP headers"
              | optional,
            Authentication
              | js2n.Nullable
                {
                  Cookie
                    | js2n.Nullable
                      {
                        Cookie | String,
                        ValidationAddress | String | doc "Verification address",
                        ValidationTemplate
                          | String
                          | doc "String to search for",
                      }
                    | doc "Cookie authentication options"
                    | optional,
                  Form
                    | js2n.Nullable
                      {
                        FormAddress
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { _ | Dyn },
                              Array Dyn
                            ]
                          | optional,
                        FormDetection
                          | std.enum.TagOrString
                          | [| 'Manual, 'Auto |]
                          | doc "Type of form authentication detection"
                          | optional,
                        FormXPath
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { _ | Dyn },
                              Array Dyn
                            ]
                          | optional,
                        Login
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { _ | Dyn },
                              Array Dyn
                            ]
                          | optional,
                        LoginKey
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { _ | Dyn },
                              Array Dyn
                            ]
                          | optional,
                        Password
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { _ | Dyn },
                              Array Dyn
                            ]
                          | optional,
                        PasswordKey
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { _ | Dyn },
                              Array Dyn
                            ]
                          | optional,
                        ValidationTemplate
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { _ | Dyn },
                              Array Dyn
                            ]
                          | doc "String to search for"
                          | optional,
                      }
                    | std.contract.any_of
                      [
                        js2n.Null,
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = {},
                            properties =
                              {
                                  FormAddress = String,
                                  FormDetection =
                                    std.contract.Sequence
                                        [ std.enum.TagOrString, [| 'Auto |] ],
                                  FormXPath = js2n.Nullable String,
                                  Login = String,
                                  LoginKey = js2n.Nullable String,
                                  Password = String,
                                  PasswordKey = js2n.Nullable String,
                                  ValidationTemplate = String,
                                },
                            required =
                              {
                                  FormAddress = true,
                                  FormDetection = true,
                                  Login = true,
                                  Password = true,
                                  ValidationTemplate = true,
                                },
                          },
                        js2n.Null,
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = {},
                            properties =
                              {
                                  FormAddress = String,
                                  FormDetection =
                                    std.contract.Sequence
                                        [ std.enum.TagOrString, [| 'Manual |] ],
                                  FormXPath = String,
                                  Login = String,
                                  LoginKey = String,
                                  Password = String,
                                  PasswordKey = String,
                                  ValidationTemplate = String,
                                },
                            required =
                              {
                                  FormAddress = true,
                                  FormDetection = true,
                                  FormXPath = true,
                                  Login = true,
                                  LoginKey = true,
                                  Password = true,
                                  PasswordKey = true,
                                  ValidationTemplate = true,
                                },
                          }
                      ]
                    | doc "Form-based authentication options"
                    | optional,
                  Http
                    | js2n.Nullable
                      {
                        Login | String,
                        Password | String,
                        ValidationAddress | String,
                      }
                    | doc "HTTP Basic authentication options"
                    | optional,
                  Type
                    | std.enum.TagOrString
                    | [| 'None, 'RawCookie, 'Http, 'Form |]
                    | optional,
                }
              | js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            Cookie = { _ | Dyn },
                            Type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'RawCookie |] ],
                          },
                      required = { Cookie = true, Type = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            Form = { _ | Dyn },
                            Type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'Form |] ],
                          },
                      required = { Form = true, Type = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            Http = { _ | Dyn },
                            Type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'Http |] ],
                          },
                      required = { Http = true, Type = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            Type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'None |] ],
                          },
                      required = { Type = true, },
                    },
                  js2n.Null
                ]
              | optional,
            BlackListedAddresses
              | js2n.Nullable
                (Array
                  {
                    Address | String | doc "Address value" | optional,
                    Format
                      | std.enum.TagOrString
                      | [| 'RegExp, 'ExactMatch, 'Wildcard |]
                      | doc "Type of address"
                      | optional,
                    ..
                  })
              | doc "Addresses, that was added in black list"
              | optional,
            Level
              | std.enum.TagOrString
              | [| 'Normal, 'Full, 'Fast, 'None |]
              | optional,
            ProxySettings
              | js2n.Nullable
                {
                  Enabled | Bool | optional,
                  Host | js2n.Nullable String | optional,
                  Login | js2n.Nullable String | optional,
                  Password | js2n.Nullable String | optional,
                  Port | std.number.Integer | optional,
                  Type
                    | std.enum.TagOrString
                    | [| 'Socks5, 'Socks4, 'Http |]
                    | optional,
                }
              | doc "Proxy server settings"
              | optional,
            RunAutocheckAfterScan
              | Bool
              | doc "Autocheck vulnerabilities after scanning"
              | optional,
            ScanScope
              | std.enum.TagOrString
              | [| 'Path, 'Folder, 'Domain |]
              | optional,
            Site | String | optional,
            SslCheck | Bool | optional,
            WhiteListedAddresses
              | js2n.Nullable
                (Array
                  {
                    Address | String | doc "Address value" | optional,
                    Format
                      | std.enum.TagOrString
                      | [| 'RegExp, 'ExactMatch, 'Wildcard |]
                      | doc "Type of address"
                      | optional,
                    ..
                  })
              | doc "Addresses, that was added in white list"
              | optional,
          }
        | optional,
      DotNetSettings
        | js2n.Nullable
          {
            CustomParameters
              | js2n.Nullable String
              | doc "Custom DotNet kernel startup parameters"
              | optional,
            DownloadDependencies | js2n.Nullable Bool | optional,
            ProjectType
              | std.enum.TagOrString
              | [| 'WebSite, 'Solution, 'None |]
              | optional,
            SolutionFile
              | js2n.Nullable String
              | doc "Path to a solution or project"
              | optional,
            UsePublicAnalysisMethod | js2n.Nullable Bool | optional,
          }
        | optional,
      GoSettings
        | js2n.Nullable
          {
            CustomParameters
              | js2n.Nullable String
              | doc "Custom Go kernel startup parameters"
              | optional,
            UsePublicAnalysisMethod | js2n.Nullable Bool | optional,
          }
        | optional,
      JavaScriptSettings
        | js2n.Nullable
          {
            CustomParameters
              | js2n.Nullable String
              | doc "Custom JavaScript kernel startup parameters"
              | optional,
            DownloadDependencies | js2n.Nullable Bool | optional,
            UseJsaAnalysis | js2n.Nullable Bool | optional,
            UsePublicAnalysisMethod | js2n.Nullable Bool | optional,
            UseTaintAnalysis | js2n.Nullable Bool | optional,
          }
        | optional,
      JavaSettings
        | js2n.Nullable
          {
            CustomParameters
              | js2n.Nullable String
              | doc "Custom Java kernel startup parameters"
              | optional,
            DependenciesPath
              | js2n.Nullable String
              | doc "Path that the Java kernel will use as a classPath"
              | optional,
            DownloadDependencies | js2n.Nullable Bool | optional,
            Parameters | js2n.Nullable String | optional,
            UnpackUserPackages | Bool | optional,
            UsePublicAnalysisMethod | js2n.Nullable Bool | optional,
            UserPackagePrefixes | js2n.Nullable String | optional,
            Version
              | std.enum.TagOrString
              | [| '"21", '"17", '"11", '"8" |]
              | optional,
          }
        | optional,
      MailingProjectSettings
        | js2n.Nullable
          {
            EmailRecipients | Array String | optional,
            Enabled | Bool | optional,
            MailProfileName | js2n.Nullable String | optional,
          }
        | js2n.OneOf
          [
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      EmailRecipients =
                        std.contract.Sequence
                            [ js2n.array.MaxItems 10, js2n.array.MinItems 1 ],
                      Enabled = js2n.Enum [ true ],
                      MailProfileName = js2n.string.MinLength 1,
                    },
                required =
                  {
                      EmailRecipients = true,
                      Enabled = true,
                      MailProfileName = true,
                    },
              },
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          EmailRecipients =
                            std.contract.Sequence
                                [
                                  js2n.array.MaxItems 10,
                                  js2n.array.MinItems 0
                                ],
                          Enabled = js2n.Enum [ false ],
                          MailProfileName = js2n.Nullable String,
                        },
                    required = { Enabled = true, },
                  },
                Array Dyn
              ]
          ]
        | doc "Report mailing options"
        | optional,
      PhpSettings
        | js2n.Nullable
          {
            CustomParameters
              | js2n.Nullable String
              | doc "Custom Php kernel startup parameters"
              | optional,
            DownloadDependencies | js2n.Nullable Bool | optional,
            UsePublicAnalysisMethod | js2n.Nullable Bool | optional,
          }
        | optional,
      PmTaintSettings
        | js2n.Nullable
          {
            CustomParameters
              | js2n.Nullable String
              | doc "Custom PmTaint kernel startup parameters"
              | optional,
            UsePublicAnalysisMethod | js2n.Nullable Bool | optional,
          }
        | optional,
      ProgrammingLanguages
        | js2n.array.UniqueItems
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'Solidity,
                'Ruby,
                'Sql,
                'Kotlin,
                'Go,
                'CAndCPlusPlus,
                'Swift,
                'ObjectiveC,
                'Python,
                'JavaScript,
                'Php,
                'VB,
                '"CSharp (Windows)",
                '"CSharp (Windows, Linux)",
                'Java
              |]
            ]
        ),
      ProjectName | String,
      PygrepSettings
        | js2n.Nullable
          {
            CustomParameters
              | js2n.Nullable String
              | doc "Custom Pygrep kernel startup parameters"
              | optional,
            RulesDirPath
              | js2n.Nullable String
              | doc "Path to the custom rules directory"
              | optional,
          }
        | optional,
      PythonSettings
        | js2n.Nullable
          {
            CustomParameters
              | js2n.Nullable String
              | doc "Custom Python kernel startup parameters"
              | optional,
            DependenciesPath
              | js2n.Nullable String
              | doc "Path to venv or path to directory with dependencies if venv was not used to restore them"
              | optional,
            DownloadDependencies | js2n.Nullable Bool | optional,
            UsePublicAnalysisMethod | js2n.Nullable Bool | optional,
          }
        | optional,
      RubySettings
        | js2n.Nullable
          {
            CustomParameters
              | js2n.Nullable String
              | doc "Custom Ruby kernel startup parameters"
              | optional,
            UsePublicAnalysisMethod | js2n.Nullable Bool | optional,
          }
        | optional,
      ScaSettings
        | js2n.Nullable
          {
            BuildDependenciesGraph | js2n.Nullable Bool | optional,
            CustomParameters
              | js2n.Nullable String
              | doc "Custom SCA kernel startup parameters"
              | optional,
          }
        | optional,
      ScanModules
        | js2n.array.UniqueItems
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'SoftwareCompositionAnalysis,
                'StaticCodeAnalysis,
                'PatternMatching,
                'BlackBox,
                'Components,
                'Configuration
              |]
            ]
        ),
      SkipGitIgnoreFiles
        | Bool
        | doc "Exclude from scanning the files from the .gitignore file"
        | optional,
      Tags
        | js2n.Nullable
          (std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array
                {
                  Type | std.enum.TagOrString | [| 'Branch, 'Repo |] | optional,
                  Value | String | optional,
                }
            ])
        | optional,
      UseCustomPmRules | Bool | doc "Enable custom PM rules" | optional,
      UseSastRules | Bool | doc "Enable SAST Analysis rules" | optional,
      UseSecurityPolicies
        | Bool
        | doc "Check for compliance with the security policy"
        | optional,
      Version
        | std.enum.TagOrString
        | [| '"1.6", '"1.5", '"1.4", '"1.3", '"1.2", '"1.1", '"1.0" |]
        | optional,
      WindowsDotNetSettings
        | js2n.Nullable
          {
            CustomParameters
              | js2n.Nullable String
              | doc "Custom DotNet kernel startup parameters"
              | optional,
            DownloadDependencies | js2n.Nullable Bool | optional,
            ProjectType
              | std.enum.TagOrString
              | [| 'WebSite, 'Solution, 'None |]
              | optional,
            SolutionFile
              | js2n.Nullable String
              | doc "Path to a solution or project"
              | optional,
            UsePublicAnalysisMethod | js2n.Nullable Bool | optional,
          }
        | optional,
    }