# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.coreProperties" =
        {
            artifactId
              | String
              | doc "Define id of the application artifact. Use it in combination with a groupId for multi-part applications."
              | optional,
            author
              | refs."definitions.person"
              | std.contract.any_of [ { _ | Dyn }, String ]
              | optional,
            contributors
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.person",
                    std.contract.any_of [ { _ | Dyn }, String ]
                  ]
              )
              | doc "A list of people who contributed to this package."
              | optional,
            description
              | String
              | doc "This helps people understand your project as it would be used by tools."
              | optional,
            groupId
              | String
              | doc "Defines a group name that is shared for each application part in case of applications composed of multiple parts. Allows to uniquely identify the parts by concatenating with the artifact id. For example a groupId `com.ibm.wazi` with an artifactId `service` would create the unique application identifier `com.ibm.wazi.service`."
              | optional,
            homepage
              | js2n.OneOf
                [
                  std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
                  std.contract.Sequence [ std.enum.TagOrString, [| '"." |] ]
                ]
              | String
              | doc "The url to the project homepage."
              | optional,
            keywords
              | Array String
              | doc "This helps people discover your project."
              | optional,
            license
              | String
              | doc "You should specify a license for your package so that people know how they are permitted to use it and any restrictions you're placing on it."
              | optional,
            maintainers
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.person",
                    std.contract.any_of [ { _ | Dyn }, String ]
                  ]
              )
              | doc "A list of people who maintain this package."
              | optional,
            name
              | js2n.string.MaxLength 214
              | js2n.string.MinLength 1
              | doc "The name of the Z Project.",
            parentId
              | String
              | doc "In case of a multi-part application defines the name of the parent application part. This zapp will inherit properties such as propertyGroups defined in the parent."
              | optional,
            profiles
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [ refs."definitions.profile", { _ | Dyn } ]
              )
              | doc "Profiles are additional groups of properties that should only become valid under specific conditions such as running in a build job or as part of a debug session."
              | optional,
            propertyGroups
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [ refs."definitions.propertyGroupItem", { _ | Dyn } ]
              )
              | doc "A list of properties defining path names for resolving dependencies."
              | optional,
            version
              | String
              | doc "Version is a string and it must be parsable for managing dependencies."
              | optional,
          },
      "definitions.dbbBuilderSettings" =
        {
            additionalDependencies
              | Array String
              | doc "Lists of GLOB patterns that define the files that should be uploaded to USS for a build. Relative path names are interpreted relative to the location of the ZAPP file that is being used for the build, which is a ZAPP file in the same workspace as the program to be build."
              | optional,
            command
              | String
              | doc "Command that the build script is executed with such as the path to groovyz and it's parameters.",
            lifecycle
              | String
              | doc "Defines named build lifecycles that represent different build scenarios the customer needs to perform and can be executed from the DBB CLI.",
            lifecycleArgs
              | Array String
              | doc "Additional arguments and options for the lifecycle.",
            logFilePatterns
              | Array String
              | doc "Lists of GLOB patterns that define the files that should be downloaded from USS after the build. Relative path names are interpreted relative to the DBB log directory user setting. If not provided then all files of the user setting location will be downloaded."
              | optional,
          },
      "definitions.dbbGroovySettings" =
        {
            additionalDependencies
              | Array String
              | doc "Lists of GLOB patterns that define the files that should be uploaded to USS for a build. Relative path names are interpreted relative to the location of the ZAPP file that is being used for the build, which is a ZAPP file in the same workspace as the program to be build."
              | optional,
            application
              | String
              | doc "Defines the name of the application to build. Will be used to create a folder on USS to upload all files to.",
            buildScriptArgs
              | Array String
              | doc "A list of strings that are the parameters for the build script. Check the documentation for built-in variables, such as the name of the program to build, that can be used here."
              | optional,
            buildScriptPath
              | String
              | doc "The full path of build script on the remote host that should be used with the command."
              | optional,
            command
              | String
              | doc "Command that the build script is executed with such as the path to groovyz and it's parameters.",
            logFilePatterns
              | Array String
              | doc "Lists of GLOB patterns that define the files that should be downloaded from USS after the build. Relative path names are interpreted relative to the DBB log directory user setting. If not provided then all files of the user setting location will be downloaded."
              | optional,
          },
      "definitions.libraryItem" =
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
                        properties =
                          {
                              name =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'proclib, 'jcllib |]
                                    ],
                              type = js2n.Const "mvs",
                            },
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
                    js2n.record.Required [ "name", "type" ],
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "locations", "name", "type" ],
                    Array Dyn
                  ]),
              {
                locations
                  | Array String
                  | doc "An array of include file locations. For 'local' libraries values can be absolute and relative filename paths using GLOB patterns. For 'mvs' libraries value can be data set names. GLOB patterns for data sets are currently not supported."
                  | optional,
                name
                  | String
                  | doc "Name of the library. The default name should be `syslib` if using unnamed libraries.",
                type
                  | std.enum.TagOrString
                  | [| 'local, 'mvs |]
                  | doc "The type of the property group defining where dependencies should be located. Allowed values are 'local' for using a local workspace and 'mvs' for dependencies located in MVS data sets.",
              }
            ],
      "definitions.localPreprocessorSettingsItem" =
        {
            command
              | String
              | doc "The command to run to execute the preprocessor executable.",
            environmentVariables
              | { _ | String }
              | js2n.record.FieldsMatch "[a-zA-Z_][a-zA-Z0-9_]*"
              | doc "Specifies any user defined environment variables to be passed to the preprocessor."
              | optional,
            fileExtension
              | String
              | doc "The desired file extension for the post-processed file.",
            outputPath
              | String
              | doc "Path where preprocessor produces its build output.",
          },
      "definitions.mvsPreprocessorSettingsItem" =
        {
            commandDataSet
              | String
              | doc "Specifies an input listing sequential data set.",
            commandParameters
              | String
              | doc "The parameters for the command being run."
              | optional,
            outputDataSet
              | String
              | doc "Specifies an output listing sequential data set.",
            programDataSet
              | String
              | doc "Specifies the data set where local programs will be uploaded for preprocessing."
              | optional,
            tempDataHLQ
              | String
              | doc "Specifies the high-level qualifier used for data sets created by plug-in requests to export observation files.",
          },
      "definitions.person" =
        std.contract.any_of
            [
              String,
              {
                email | String | optional,
                name | String,
                url | String | optional,
                ..
              }
            ],
      "definitions.profile" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                name = String,
                                settings =
                                  js2n.OneOf
                                      [
                                        std.contract.Sequence
                                          [
                                            refs."definitions.dbbBuilderSettings",
                                            { _ | Dyn }
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."definitions.dbbGroovySettings",
                                            { _ | Dyn }
                                          ]
                                      ],
                                type = js2n.Const "dbb",
                              },
                          required =
                            { name = true, settings = true, type = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                name = String,
                                settings =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.rseapiSettingsItem",
                                        { _ | Dyn }
                                      ],
                                type = js2n.Const "rseapi",
                              },
                          required =
                            { name = true, settings = true, type = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.Sequence
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Record
                            {
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    language = String,
                                    location = String,
                                    name = String,
                                    settings =
                                      js2n.OneOf
                                          [
                                            std.contract.Sequence
                                              [
                                                refs."definitions.localPreprocessorSettingsItem",
                                                { _ | Dyn }
                                              ],
                                            std.contract.Sequence
                                              [
                                                refs."definitions.mvsPreprocessorSettingsItem",
                                                { _ | Dyn }
                                              ]
                                          ],
                                    type = js2n.Const "preprocessor",
                                  },
                              required =
                                {
                                    language = true,
                                    location = true,
                                    name = true,
                                    settings = true,
                                    type = true,
                                  },
                            },
                          Array Dyn
                        ],
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
                                properties = { location = js2n.Const "local", },
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
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      settings =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.localPreprocessorSettingsItem",
                                              { _ | Dyn }
                                            ],
                                    },
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
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      settings =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.mvsPreprocessorSettingsItem",
                                              { _ | Dyn }
                                            ],
                                    },
                                required = {},
                              },
                            Array Dyn
                          ])
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                name = String,
                                settings =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.testSettingsItem",
                                        { _ | Dyn }
                                      ],
                                type = js2n.Const "test",
                              },
                          required =
                            { name = true, settings = true, type = true, },
                        },
                      Array Dyn
                    ]
                ],
              {
                language
                  | std.enum.TagOrString
                  | [| 'pl1, 'cobol |]
                  | doc "If the profile type supports it then it defines a scope for the profile to one specific programming language. For example, a profile that defines preprocessor commands for COBOL."
                  | optional,
                location
                  | std.enum.TagOrString
                  | [| 'local, 'mvs |]
                  | doc "If the profile type supports it then it defines a scope for the profile to a specific location for resources. For example, a profile that defines preprocessor commands to be executed on MVS or local files."
                  | optional,
                name | String | doc "The name of the profile.",
                settings
                  | { _ | Dyn }
                  | doc "Settings objects specific to the type specified for the profile."
                  | optional,
                type
                  | std.enum.TagOrString
                  | [| 'test, 'preprocessor, 'debug, 'rseapi, 'dbb |]
                  | doc "The type of the profile.",
              }
            ],
      "definitions.propertyGroupItem" =
        {
            compilerOptions
              | String
              | doc "Global compiler options separated by a comma that impact the parsing of the programs for the editor. Requires that you specify a language. If there are multiple Property Groups for a language with compiler option then they will be concatenated."
              | optional,
            language
              | std.enum.TagOrString
              | [| 'jcl, 'rexx, 'hlasm, 'pl1, 'cobol |]
              | doc "Limits the property group to one specific language."
              | optional,
            libraries
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [ refs."definitions.libraryItem", { _ | Dyn } ]
              )
              | doc "An array of potential library locations defining the search order for include files. Libraries with the name 'syslib' will be handled as default include locations. The list can contain many entries of the type 'local' or 'mvs'. It can contain items of the same type twice in case, for example, you want to search in remote locations first, then some local location, and if still not found more remote locations."
              | optional,
            name
              | String
              | doc "The name of the property group, which is used in hovers and error messages.",
          },
      "definitions.rseapiSettingsItem" =
        {
            "default.encoding"
              | String
              | doc "The encoding to be used when no mapping can be found. If not provided then either the user or server default will be used.",
            mappings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.rseapiSettingsItemMapping", { _ | Dyn } ]
              )
              | doc "A list of mapping objects that map local file extensions to transfer modes and encodings to MVS data sets that can be specified using wildcards.",
          },
      "definitions.rseapiSettingsItemMapping" =
        {
            encoding
              | String
              | doc "The encoding to be used for text transfer. See the RSE API documentation for the values allowed."
              | optional,
            extension
              | String
              | doc "A local file extension such as cbl or pl1."
              | optional,
            memberMappings
              | Array
                {
                  encoding
                    | String
                    | doc "The encoding to be used for text transfer. See the RSE API documentation for the values allowed."
                    | optional,
                  extension
                    | String
                    | doc "A local file extension such as cbl or pl1."
                    | optional,
                  resource
                    | String
                    | doc "The data set member name to be mapped to. Can use a wildcard such as '**CPY'."
                    | optional,
                  transfer
                    | std.enum.TagOrString
                    | [| 'binary, 'text |]
                    | doc "The transfer mode to be used. Can be 'text' or 'binary'."
                    | optional,
                }
              | doc "A nested mappings array with resource mappings to members of the data sets that were mapped by the parent mapping."
              | optional,
            resource
              | String
              | doc "The data set name to be mapped to. Can use a wildcard such as '**CPY'."
              | optional,
            transfer
              | std.enum.TagOrString
              | [| 'binary, 'text |]
              | doc "The transfer mode to be used. Can be 'text' or 'binary'."
              | optional,
          },
      "definitions.testSettingsItem" =
        {
            unitTest
              | {
                allocateWorkingDs
                  | Bool
                  | doc " If this option is selected, the data set for the working file is allocated automatically with the allocation options."
                  | optional,
                configDS
                  | String
                  | doc "Runner configuration destination container."
                  | optional,
                defaultTestCaseFolder
                  | String
                  | doc "The default local folder to create the test case artifacts."
                  | optional,
                ioDataSetAllocation
                  | {
                    ioHLQ
                      | String
                      | doc "The high-level qualifier for the VSAM or QSAM data files for file I/O simulation. These files are allocated when running a Unit test case."
                      | optional,
                    ioQuant1
                      | std.number.Integer
                      | doc "The amount of DASD space to be used for primary space allocation (PRIMARY)."
                      | optional,
                    ioQuant2
                      | std.number.Integer
                      | doc "The amount of DASD space to be used for secondary space allocation (SECONDARY)."
                      | optional,
                    ioSpaceUnit
                      | std.enum.TagOrString
                      | [| 'CYLINDERS, 'BLOCKS, 'TRACKS |]
                      | doc "The unit of primary and secondary space to be allocated."
                      | optional,
                    ..
                  }
                  | doc "Options to allocate a working file."
                  | optional,
                jobcard
                  | String
                  | doc "The job card to run a unit test"
                  | optional,
                procLib
                  | Array String
                  | doc "Specifies the list of Procedure libraries.",
                resultDS
                  | String
                  | doc "Runner result destination container."
                  | optional,
                userLibraries
                  | Array String
                  | doc "The datat set of the application under test"
                  | optional,
              }
              | doc "Properties to run a unit test case.",
          },
    }
    in
  refs."definitions.coreProperties"