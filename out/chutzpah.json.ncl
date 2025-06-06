# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.compilePathMap" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                OutputPath
                  | String
                  | doc "The file/directory that source file/directory is mapped to. Specifying a file OutputPath and a directory for SourcePath indicated the files are being concatenated into one large file"
                  | optional,
                OutputPathType
                  | std.enum.TagOrString
                  | [| 'Folder, 'File |]
                  | doc "The type (file or folder) that the output path refers to. If not specified Chutzpah will try to take a best guess by assuming it is a file if it has a .js extension"
                  | optional,
                SourcePath
                  | String
                  | doc "The source file/directory"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.compileSettings" =
        {
            Arguments
              | js2n.Nullable String
              | doc "The arguments to pass to the command."
              | optional,
            Executable
              | js2n.Nullable String
              | doc "The path to an executable which Chutzpah executes to perform the batch compilation. Chutzpah will try to resolve the path relative to the settings directory. But if can't find the file there you must give it a full path."
              | optional,
            Extensions
              | Array String
              | doc "The extensions of the files which are getting compiled (e.g. .ts)."
              | optional,
            ExtensionsWithNoOutput
              | Array String
              | doc "The extensions of files which take part in compile but have no build output. This is used for cases like TypeScript declaration files which share a .ts extension. They have .d.ts extension and are part of compilation but have no output. You must tell Chutzpah about these if you want the SkipIfUnchanged setting to work. Otherwise Chutzpah will think these are missing output."
              | optional,
            IgnoreMissingFiles
              | Bool
              | doc "Should Chutzpah ignore files it expects to find compiled. If set to true Chutzpah will log an error otherwise it will throw"
              | optional,
            Mode
              | std.enum.TagOrString
              | [| 'External, 'Executable |]
              | doc "Determines how this compile setting is used. By default it is in Executable mode where it will require you provide an executable which Chutzpah will run if it sees it finds missing .js for input file. If you set this to External then Chutzpah will ignore the Executable, Arguments settings and assume you have some external process which is compiling. In this case Chutzpah will use the SourceDirectory and OutDirectory options to try to find your .js files for the input files. If it can't find them it will trace an error but still attempt to proceed."
              | optional,
            Paths
              | Array refs."definitions.compilePathMap"
              | doc " The collection of path mapping from source directory/file to output directory/file."
              | optional,
            SkipIfUnchanged
              | Bool
              | doc "Skips the execution if all files Chutzpah knows about are older than all of the output files. This is defaulted to true but if you hit issues since it is possible Chutzpah might not know about all the files your compilation is using then you can turn this off. Ideally you should tell Chutzpah about these files using the references and tests settings since this setting helps Chutzpah not need to even invoke the executable if it figures out it's not needed."
              | optional,
            Timeout
              | std.number.Integer
              | doc "How long to wait for compile to finish in milliseconds?"
              | optional,
            UseSourceMaps
              | Bool
              | doc "Configures whether .map files should be loaded (if available) to convert under-test JS line numbers to those of their original source files."
              | optional,
            WorkingDirectory
              | String
              | doc "This is the working directory of the process which executes the command."
              | optional,
            ..
          },
      "definitions.engineOptions" =
        {
            ChromeBrowserPath
              | String
              | doc "The path to the chrome/chromium executable on the machine"
              | optional,
            ..
          },
      "definitions.referenceSettings" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                Excludes
                  | Array String
                  | doc "This is an optional array of exclude glob patterns.  Only files not matching the Exclude patterns will be added."
                  | optional,
                IncludeInTestHarness
                  | Bool
                  | doc "This determines if the reference should be injected into the test harness. When referencing files like .d.ts or files that you plan to load using require.js you should set this to false. Defaults to true."
                  | optional,
                Includes
                  | Array String
                  | doc "This is an optional array of include glob patterns. Only files matching the Include pattern will be added."
                  | optional,
                IsTestFrameworkFile
                  | Bool
                  | doc "Indicated that this references should be placed directly after the test framework files in the test harness. This ensures that this file is injected into the test harness before almost all other files. Defaults to false."
                  | optional,
                Path
                  | String
                  | doc "The path to either a file or a folder. If given a folder, it will be scanned recursively. This path can be relative to the location of the chutzpah.json file."
                  | optional,
                TemplateOptions | refs."definitions.templateOptions" | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.serverSettings" =
        {
            DefaultPort
              | Number
              | doc "The default port to use. If this port is taken Chutzpah will try incrementing until it finds an available one."
              | optional,
            Enabled
              | Bool
              | doc "Determines if the web server mode is enabled."
              | optional,
            RootPath
              | String
              | doc "The root path of the server. All file paths are relative to this and should be in a directory below or equal to this. Defaults to drive root."
              | optional,
            ..
          },
      "definitions.templateOptions" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                Id
                  | String
                  | doc "If in script mode what Id to place on the script tag."
                  | optional,
                Mode
                  | std.enum.TagOrString
                  | [| 'Script, 'Raw |]
                  | doc "The way the template is injected into the HTML page."
                  | optional,
                Type
                  | String
                  | doc "If in script mode what Type to place on script tag"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.testSettings" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                Excludes
                  | Array String
                  | doc "This is an optional array of exclude glob patterns.  Only files not matching the Exclude patterns will be added."
                  | optional,
                Includes
                  | Array String
                  | doc "This is an optional array of include glob patterns. Only files matching the Include pattern will be added."
                  | optional,
                Path
                  | String
                  | doc "The path to either a file or a folder. If given a folder, it will be scanned recursively. This path can be relative to the location of the chutzpah.json file."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.transformConfig" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                Name
                  | String
                  | doc "The name of the transform to execute"
                  | optional,
                Path
                  | String
                  | doc "The file for the transform to save its output to."
                  | optional,
                ..
              },
              Array Dyn
            ],
    }
    in
  {
      AMDAppDirectory
        | String
        | doc "Sets the root directory for your AMD paths. This is only needed if your baseUrl is a different location than your source directory. This is common if you are compiling from another language to JavaScript and copying those compiled files to a different folder. For example if you have all your .ts files in /src and you compile them to a /out directory then your AMDBaseUrl is /out and AMDAppDirectory is /src. Defaults to the test harness directory if not set."
        | optional,
      AMDBaseUrl
        | String
        | doc "Set the baseurl for Chutzpah to use when generating the test harness. Defaults to the test harness directory if not set."
        | optional,
      BrowserArguments
        | { _ | Dyn }
        | doc "The dictionary of browser name (keys) to corresponding browser arguments (values), i.e.; { 'chrome': '--allow-file-access-from-files' }."
        | optional,
      CodeCoverageExcludes
        | Array String
        | doc "The collection code coverage file patterns to exclude in coverage. These are in glob format. If you specify none no files are excluded."
        | optional,
      CodeCoverageExecutionMode
        | std.enum.TagOrString
        | [| 'Never, 'Always, 'Manual |]
        | doc "If Always, forces code coverage to run always. If Manual/null/not set, allows code coverage to run if invoked using test adapter, command line or context menu options (default). If Never, forces code coverage to never run."
        | optional,
      CodeCoverageIncludes
        | Array String
        | doc "The collection code coverage file patterns to include in coverage. These are in glob format. If you specify none all files are included."
        | optional,
      CodeCoverageSuccessPercentage
        | Number
        | doc "The percentage of lines needing to be covered to show the coverage output as success or failure. By default this is 60."
        | optional,
      CodeCoverageTimeout
        | std.number.Integer
        | doc "The timeout in milliseconds for how long to wait to instrument each file for code coverage. Defaults to 5000ms."
        | optional,
      Compile | refs."definitions.compileSettings" | optional,
      CustomTestHarnessPath
        | String
        | doc "The CustomTestHarnessPath setting allows you to override the default template Chutzpah uses for the HTML test harness. This is an advanced feature which should only be used as a last resort."
        | optional,
      EnableTestFileBatching
        | Bool
        | doc "Determines if batch all test files for this chutzpah.json file should be batched into one test harness. This will often make your test run much faster."
        | optional,
      EnableTracing
        | Bool
        | doc "Logs tracing information to a log file."
        | optional,
      Engine
        | std.enum.TagOrString
        | [| 'Chrome, 'JSDom, 'Phantom |]
        | doc "The browser engine to use to run the tests. Default is Phantom but JSDOM and Chrome are available. If you choose Chrome you must have an instance of Chrome or Chromium on the machine that Chutzpah can find."
        | optional,
      EngineOptions | refs."definitions.engineOptions" | optional,
      Framework
        | std.enum.TagOrString
        | [| 'mocha, 'jasmine, 'qunit |]
        | doc "Determines what testing framework to use. This will override the other detection methods."
        | optional,
      FrameworkVersion
        | String
        | doc "Tells Chutzpah if it should use a different version of on of the test frameworks than the default one. Currently, the only framework this works for is Jasmine. As of the 3.1.0 release Chutzpah default to Jasmine 2.0 but if you want to use the 1.0 line for Jasmine still pass '1' for FrameworkVersion."
        | optional,
      IgnoreResourceLoadingErrors
        | Bool
        | doc "Suppress errors that are reported when a script request to load a url (e.g. xhr/script/image) fails."
        | optional,
      InheritFromParent
        | Bool
        | doc "Determines if this settings file should inherit and merge with the settings of its parent settings file. The parent is found by recursively walking up the tree."
        | optional,
      MochaInterface
        | std.enum.TagOrString
        | [| 'qunit, 'tdd, 'bdd |]
        | doc "The name of the Mocha interface to use. Overrides the default detection mechanism."
        | optional,
      Parallelism
        | Number
        | doc "Max degree of parallelism for running tests. Defaults to number of CPUs"
        | optional,
      References
        | Array refs."definitions.referenceSettings"
        | doc "The references setting allows you to specify which files/folders to use/scan to find references. This is useful since it replaces the need to the ///<reference comments."
        | optional,
      RootReferencePathMode
        | std.enum.TagOrString
        | [| 'SettingsFileDirectory, 'DriveRoot |]
        | doc "This property determines what directory a rooted reference path refers to."
        | optional,
      Server | refs."definitions.serverSettings" | optional,
      TestFileTimeout
        | std.number.Integer
        | doc "The time to wait for tests in a file to finish in milliseconds."
        | optional,
      TestHarnessDirectory
        | String
        | doc "When TestHarnessLocationMode is set to Custom this is either the relative or absolute path to the directory where to place the test harness."
        | optional,
      TestHarnessLocationMode
        | std.enum.TagOrString
        | [| 'Custom, 'SettingsFileAdjacent, 'TestFileAdjacent |]
        | doc "Determines where to place the generated html test harness files. The default mode is TestFileAdjacent which means the harness is placed in the same directory as the test file. SettingsFileAdjacent means it is placed in the same directory as the chutzpah.json file. Custom mode lets you specify a custom path to the directory."
        | optional,
      TestHarnessReferenceMode
        | std.enum.TagOrString
        | [| 'AMD, 'Normal |]
        | optional,
      TestPattern
        | String
        | doc "When Chutzpah reports test results it also tells you what line they are on. The way this is accomplished is by having a regex for each testing framework which describes where to find the names of your tests."
        | optional,
      Tests
        | Array refs."definitions.testSettings"
        | doc "The references setting allows you to specify which files/folders to use/scan to find references. This is useful since it replaces the need to the ///<reference comments."
        | optional,
      TraceFilePath
        | String
        | doc "The path to write the trace file to. Defaults tp %temp%/chutzpah.log."
        | optional,
      Transforms
        | Array refs."definitions.transformConfig"
        | doc "List of transformers to run after testing to generate output files"
        | optional,
      UserAgent
        | String
        | doc "The user agent to use when making web requests"
        | optional,
      ..
    }