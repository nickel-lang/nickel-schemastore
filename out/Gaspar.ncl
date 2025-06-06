# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.Sequence
      [
        js2n.record.MinProperties 1,
        std.contract.any_of
          [
            js2n.record.Required [ "Models" ],
            js2n.record.Required [ "Controllers" ]
          ],
        {
          "$schema" | String | optional,
          Controllers
            | {
              Exclude
                | Array String
                | doc "List of file locations to exclude from the Include list"
                | optional,
              Include
                | Array String
                | doc "List of file locations containing the models or controllers you wish to translate. Optional, if not provided will use all .cs files in the project."
                | optional,
              Output
                | js2n.array.MinItems 1
                | Array (
                  std.contract.Sequence
                    [
                      js2n.IfThenElse
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties = { Type = js2n.Const "CSharp", },
                                required = {},
                              },
                            Array Dyn
                          ])
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              Location | js2n.Always | optional,
                              LoggingReceiver
                                | String
                                | doc "When using your exported service communication endpoint, if there's an error receiving the response or deserializing it, the error will be logged to the console (using Console.WriteLine). If you would like the error to be absorbed by your own logging system you can provide a static logging class name here."
                                | optional,
                              ModelNamespaces
                                | Array String
                                | doc "List of namespaces to include at the top of your exported Service Communication class. This would include the namespaces to custom types in the export, or your serializer and logging tools."
                                | optional,
                              Type | js2n.Always | optional,
                              UrlHandlerFunction
                                | String
                                | doc "If you would like to run your url through a function to ensure it is correct, you can provide the function name here."
                                | optional,
                              UrlPrefix | js2n.Always | optional,
                            },
                            Array Dyn
                          ]) js2n.Always,
                      js2n.IfThenElse
                        (std.contract.any_of
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
                                  { Type = js2n.Const "TypeScript", },
                                required = {},
                              },
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties = { Type = js2n.Const "Angular", },
                                required = {},
                              },
                            Array Dyn
                          ])
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              AddInferredNullables
                                | Bool
                                | doc m%"
                                  Property types that are explicitly nullable (e.g. int?) will always be outputted with null types (e.g. number | null). Set this property to true to add null types to C# types that could be null if unset.
                                  In short, if your C# project doesn't enable "nullable annotation context", set this to true.
                                "%
                                | optional,
                              DefaultErrorMessage
                                | std.enum.TagOrString
                                | [| 'Generic, 'ServerResponse, 'None |]
                                | doc "When using the ErrorHandler (above), this controls what the message parameter contains."
                                | optional,
                              ErrorHandlerPath
                                | String
                                | doc "If an error is received from the requested endpoint, it will be absorbed (although it will always be seen in the browser console). The response will include the error details if you want to handle it from the calling class, but if you always want to show a message to the user (e.g. using a SnackBar), you can provide an error handler."
                                | optional,
                              HelperFile
                                | String
                                | doc "The service communication export requires some extra code to handle the boilerplate requests. This is the name of the file that should be exported. If omitted, the code will be included at the top of the exported service communications file, which may cause issues if you're exporting from multiple projects."
                                | optional,
                              Imports
                                | { _ | String }
                                | doc "List of imports to include at the top of your exported Service Communication class."
                                | optional,
                              Location | js2n.Always | optional,
                              ModelPath
                                | String
                                | doc "Path to a file containing definitions for any custom types used in your service communications (excluding the extension, as is usual for TypeScript includes). Ideally, this is the file exported by the model export part of this application."
                                | optional,
                              NullablesAlsoUndefinded
                                | Bool
                                | doc "If set to true, all nullable properties (those exported with | null) will additional have | undefined added to the type."
                                | optional,
                              Type | js2n.Always | optional,
                              UrlPrefix | js2n.Always | optional,
                            },
                            Array Dyn
                          ]) js2n.Always,
                      js2n.IfThenElse
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties = { Type = js2n.Const "Python", },
                                required = {},
                              },
                            Array Dyn
                          ])
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              HelperFile
                                | String
                                | doc "The service communication export requires some extra code to handle the boilerplate requests. This is the name of the file that should be exported. If omitted, the code will be included at the top of the exported service communications file, which may cause issues if you're exporting from multiple projects."
                                | optional,
                              Imports
                                | { _ | String }
                                | doc "List of imports to include at the top of your exported Service Communication class."
                                | optional,
                              Location | js2n.Always | optional,
                              Type | js2n.Always | optional,
                              UrlPrefix | js2n.Always | optional,
                            },
                            Array Dyn
                          ]) js2n.Always,
                      js2n.IfThenElse
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties = { Type = js2n.Const "Ocelot", },
                                required = {},
                              },
                            Array Dyn
                          ])
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              DefaultScopes
                                | Array String
                                | doc "If specified, the scopes listed here will be outputted into the \"AllowedScopes\" section of \"AuthenticationOptions\" for all routes. Scopes can include {ServiceName}, {ServiceHost} or {ServicePort} to have those placeholders replaced (see the demo file)."
                                | optional,
                              ExcludeScopes
                                | Bool
                                | doc "If true, the \"AllowedScopes\" section of the Ocelot config will not be outputted."
                                | optional,
                              Location | js2n.Always | optional,
                              NoAuth
                                | Bool
                                | doc "If true, the \"AuthenticationOptions\" section of the Ocelot config will not be outputted."
                                | optional,
                              ScopesByHttpMethod
                                | { _ | Array Dyn }
                                | doc "Dictionary keyed on scope names. Each element can contain an array of Http Methods; if the route matches a listed method, the key will be added to the \"AllowedScopes\" section of \"AuthenticationOptions\". Dictionary keys can include {ServiceName}, {ServiceHost} or {ServicePort} to have those placeholders replaced (see the demo file)."
                                | optional,
                              Type | js2n.Always | optional,
                              UrlPrefix | js2n.Always | optional,
                            },
                            Array Dyn
                          ]) js2n.Always,
                      {
                        Location
                          | js2n.string.MinLength 1
                          | doc "The location to output the translated file to (relative to the project root). You can include {ServiceName}, {ServiceHost} or {ServicePort} to have those placeholders replaced (see the demo file).",
                        Type
                          | std.enum.TagOrString
                          | [|
                            'TypeScript,
                            'Python,
                            'Ocelot,
                            'CSharp,
                            'Angular
                          |]
                          | doc "Output for",
                        UrlPrefix
                          | String
                          | doc "When building the service contract, you can prefix the url with this value; e.g. \"http://myservice.com:81\". The service url will be built from this followed by / then the action route. Can include {ServiceName}, {ServiceHost} or {ServicePort} to have those placeholders replaced (see the demo file)."
                          | optional,
                        ..
                      }
                    ]
                )
                | doc "Output options. You must supply at least one of these.",
              ServiceHost
                | String
                | doc "Used by Ocelot Export, and can be used in paths. Typically set to 'http' or 'https'"
                | optional,
              ServiceName
                | js2n.string.MinLength 1
                | doc "Used to name exported items, can also be used in paths.",
              ServicePort
                | std.number.Integer
                | js2n.number.Minimum 1
                | doc "Used by Ocelot Export, and can be used in paths."
                | optional,
            }
            | doc "Options for outputting service communication contracts for Controllers"
            | optional,
          GlobalTypeTranslations
            | { _ | String }
            | doc "For TypeScript, Angular, Swift, Kotlin and Proto, you can override type names to objects the exported language will understand.  These will apply equally to all exports, 'TypeTranslations' may be more useful"
            | optional,
          GroupTypes
            | {
              _ | std.contract.Sequence
                [
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'Kotlin,
                          'Swift,
                          'Python,
                          'Proto,
                          'TypeScript,
                          'Ocelot,
                          'CSharp,
                          'Angular
                        |]
                      ]
                  )
                ]
            }
            | doc "Export names to run multiple outputs under a single name.  e.g. Specify a group type called 'App' and add 'Swift' and 'Kotlin'"
            | optional,
          IgnoreAnnotations
            | Bool
            | doc "Set this to true to export all objects irrespective if they have [ExportFor] or not."
            | optional,
          IgnoreMissingOutputLocations
            | Bool
            | doc "If the file output location cannot be found, you will get a build error; add \"IgnoreMissingOutputLocations\": true to skip the error. This is useful when you need to build in an environment where the output may not be available (e.g. docker); although it would usually be preferable to use dotnet build /p:RunGaspar=False in your scripts."
            | optional,
          Models
            | {
              Exclude
                | Array String
                | doc "List of file locations to exclude from the Include list"
                | optional,
              Include
                | Array String
                | doc "List of file locations containing the models or controllers you wish to translate. Optional, if not provided will use all .cs files in the project."
                | optional,
              Output
                | js2n.array.MinItems 1
                | Array (
                  std.contract.Sequence
                    [
                      js2n.IfThenElse
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties = { Type = js2n.Const "Kotlin", },
                                required = {},
                              },
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties = { Type = js2n.Const "Proto", },
                                required = {},
                              },
                            Array Dyn
                          ])
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              Location | js2n.Always | optional,
                              PackageNamespace
                                | String
                                | doc "Namespace to be used when generating .proto file outputs.",
                              Type | js2n.Always | optional,
                            },
                            Array Dyn
                          ]) js2n.Always,
                      js2n.IfThenElse
                        (std.contract.any_of
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
                                  { Type = js2n.Const "TypeScript", },
                                required = {},
                              },
                            Array Dyn
                          ])
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              AddInferredNullables
                                | Bool
                                | doc m%"
                                  Property types that are explicitly nullable (e.g. int?) will always be outputted with null types (e.g. number | null). Set this property to true to add null types to C# types that could be null if unset.
                                  In short, if your C# project doesn't enable "nullable annotation context", set this to true.
                                "%
                                | optional,
                              Location | js2n.Always | optional,
                              NullablesAlsoUndefinded
                                | Bool
                                | doc "If set to true, all nullable properties (those exported with | null) will additional have | undefined added to the type."
                                | optional,
                              Type | js2n.Always | optional,
                            },
                            Array Dyn
                          ]) js2n.Always,
                      {
                        Location
                          | js2n.string.MinLength 1
                          | doc "The location to output the translated file to (relative to the project root).",
                        Type
                          | std.enum.TagOrString
                          | [| 'Proto, 'Kotlin, 'Swift, 'Angular, 'TypeScript |]
                          | doc "Output for",
                        ..
                      }
                    ]
                )
                | doc "Output options. You must supply at least one of these.",
              StringLiteralTypesInsteadOfEnums
                | Bool
                | doc "For TypeScript, if true will export enums as types instead of TypeScript enums."
                | optional,
              UseEnumValue
                | Bool
                | doc "Enums will be written with their value, either set directly or from an Attribute (e.g. [EnumMember(Value = \"name\")])."
                | optional,
            }
            | doc "Options for outputting Models and Enums"
            | optional,
          TypeTranslations
            | js2n.record.PropertyNames
              (std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| 'Proto, 'Kotlin, 'Swift, 'Angular, 'TypeScript |]
                ])
            | { _ | { _ | String } }
            | doc "For TypeScript, Angular, Swift, Kotlin and Proto, you can override type names to objects each language will understand."
            | optional,
        }
      ]