# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.iisBindingContent" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                applicationUrl
                  | String
                  | doc "The URL of the web site."
                  | optional,
                sslPort
                  | std.number.Integer
                  | js2n.number.Maximum 65535
                  | js2n.number.Minimum 0
                  | doc "The SSL port to use for the web site."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.iisSettingContent" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                anonymousAuthentication
                  | Bool
                  | doc "Set to true to enable anonymous authentication for your site in IIS and IIS Express."
                  | optional,
                iis
                  | refs."definitions.iisBindingContent"
                  | { _ | Dyn }
                  | doc "Site settings to use with IIS profiles."
                  | optional,
                iisExpress
                  | refs."definitions.iisBindingContent"
                  | { _ | Dyn }
                  | doc "Site settings to use with IISExpress profiles."
                  | optional,
                windowsAuthentication
                  | Bool
                  | doc "Set to true to enable windows authentication for your site in IIS and IIS Express."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.profile" =
        std.contract.Sequence
            [
              refs."definitions.profileContent",
              js2n.record.Required [ "commandName" ]
            ],
      "definitions.profileContent" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                ancmHostingModel
                  | std.enum.TagOrString
                  | [| 'OutOfProcess, 'InProcess |]
                  | doc "Specifies the hosting model to use when running ASP.NET core projects in IIS and IIS Express."
                  | optional,
                applicationUrl
                  | String
                  | doc "A semi-colon delimited list of URL(s) to configure for the web server."
                  | optional,
                authenticationMode
                  | std.enum.TagOrString
                  | [| 'Windows, 'None |]
                  | doc "The authentication scheme to use when connecting to the remote computer."
                  | optional,
                commandLineArgs
                  | String
                  | doc "The arguments to pass to the target being run."
                  | optional,
                commandName
                  | js2n.string.MinLength 1
                  | std.enum.TagOrString
                  | [|
                    'WSL2,
                    'SdkContainer,
                    'MsixPackage,
                    'DockerCompose,
                    'Docker,
                    'DebugRoslynComponent,
                    'IISExpress,
                    'IIS,
                    'Project,
                    'Executable
                  |]
                  | doc "Identifies the debug target to run."
                  | optional,
                dotnetRunMessages
                  | Bool
                  | doc "Set to true to display a message when the project is building."
                  | optional,
                environmentVariables
                  | { _ | String }
                  | doc "Set the environment variables as key/value pairs."
                  | optional,
                executablePath
                  | String
                  | doc "An absolute or relative path to the executable."
                  | optional,
                externalUrlConfiguration
                  | Bool
                  | doc "Set to true to disable configuration of the site when running the Asp.Net Core Project profile."
                  | optional,
                hotReloadEnabled
                  | Bool
                  | doc "Set to true to enable applying code changes to the running application."
                  | optional,
                httpPort
                  | std.number.Integer
                  | js2n.number.Maximum 65535
                  | js2n.number.Minimum 0
                  | doc "The HTTP port to use for the web site."
                  | optional,
                inspectUri
                  | String
                  | doc "The url to enable debugging on a Blazor WebAssembly application."
                  | optional,
                jsWebView2Debugging
                  | Bool
                  | doc "Set to true to enable the JavaScript debugger for Microsoft Edge (Chromium) based WebView2."
                  | optional,
                launchBrowser
                  | Bool
                  | doc "Set to true if the browser should be launched."
                  | optional,
                launchUrl
                  | String
                  | doc "The relative URL to launch in the browser."
                  | optional,
                leaveRunningOnClose
                  | Bool
                  | doc "Set to true to leave the IIS application pool running when the project is closed."
                  | optional,
                nativeDebugging
                  | Bool
                  | doc "Set to true to enable native code debugging."
                  | optional,
                publishAllPorts
                  | Bool
                  | doc "Publish all exposed ports to random ports in Docker (-P)."
                  | optional,
                remoteDebugEnabled
                  | Bool
                  | doc "Set to true to have the debugger attach to a process on a remote computer."
                  | optional,
                remoteDebugMachine
                  | String
                  | doc "The name and port number of the remote machine in name:port format."
                  | optional,
                sqlDebugging
                  | Bool
                  | doc "Set to true to enable debugging of SQL scripts and stored procedures."
                  | optional,
                sslPort
                  | std.number.Integer
                  | js2n.number.Maximum 65535
                  | js2n.number.Minimum 0
                  | doc "The SSL port to use for the web site."
                  | optional,
                targetProject
                  | String
                  | doc "A relative or absolute path to the .NET project file on which Roslyn component should be executed. Relative to the current project's folder."
                  | optional,
                use64Bit
                  | Bool
                  | doc "Set to true to run the 64 bit version of IIS Express, false to run the x86 version."
                  | optional,
                useSSL
                  | Bool
                  | doc "Set to true to bind the SSL port."
                  | optional,
                workingDirectory
                  | String
                  | doc "Sets the working directory of the command."
                  | optional,
                ..
              },
              Array Dyn
            ],
    }
    in
  {
      iisSettings
        | refs."definitions.iisSettingContent"
        | { _ | Dyn }
        | doc "IIS and IIS Express settings"
        | optional,
      profiles
        | {
          _ | std.contract.Sequence [ refs."definitions.profile", { _ | Dyn } ]
        }
        | doc "A list of debug profiles"
        | optional,
      ..
    }