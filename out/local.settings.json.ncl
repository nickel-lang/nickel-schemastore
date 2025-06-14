# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      ConnectionStrings
        | { _ | Dyn }
        | doc "A collection. Don't use this collection for the connection strings used by your function bindings. This collection is used only by frameworks that typically get connection strings from the ConnectionStrings section of a configuration file, like Entity Framework. Connection strings in this object are added to the environment with the provider type of System.Data.SqlClient. Items in this collection aren't published to Azure with other app settings. You must explicitly add these values to the Connection strings collection of your function app settings. If you're creating a SqlConnection in your function code, you should store the connection string value with your other connections in Application Settings in the portal."
        | optional,
      Host
        | {
          CORS
            | String
            | doc "Defines the origins allowed for cross-origin resource sharing (CORS). Origins are supplied as a comma-separated list with no spaces. The wildcard value (*) is supported, which allows requests from any origin."
            | optional,
          CORSCredentials
            | Bool
            | doc "When set to true, allows withCredentials requests."
            | optional,
          LocalHttpPort
            | std.number.Integer
            | doc "Settings in this section customize the Functions host process when you run projects locally. These settings are separate from the host.json settings, which also apply when you run projects in Azure."
            | optional,
          ..
        }
        | doc "Settings in this section customize the Functions host process when you run projects locally. These settings are separate from the host.json settings, which also apply when you run projects in Azure."
        | optional,
      IsEncrypted
        | Bool
        | doc "When this setting is set to true, all values are encrypted with a local machine key. Used with func settings commands. Default value is false. You might want to encrypt the local.settings.json file on your local computer when it contains secrets, such as service connection strings. The host automatically decrypts settings when it runs. Use the func settings decrypt command before trying to read locally encrypted settings."
        | optional,
      Values
        | {
          AzureWebJobsDashboard
            | String
            | doc "DEPRECATED. Legacy Storage connection string for storing logs. May impact performance and increase Storage transactions/costs."
            | optional,
          AzureWebJobsStorage
            | String
            | doc "Contains the connection string for an Azure storage account. Required when using triggers other than HTTP. For more information, see the AzureWebJobsStorage reference. When you have the Azure storage emulator installed locally and you set AzureWebJobsStorage to UseDevelopmentStorage=true, Core Tools uses the emulator. The emulator is useful during development, but you should test with an actual storage connection before deployment."
            | optional,
          FUNCTIONS_WORKER_RUNTIME
            | std.enum.TagOrString
            | [|
              'python,
              'powershell,
              'java,
              'node,
              'dotnet-isolated,
              'dotnet,
              'custom
            |]
            | doc "Indicates the targeted language of the Functions runtime. Required for version 2.x and higher of the Functions runtime. This setting is generated for your project by Core Tools. To learn more, see the FUNCTIONS_WORKER_RUNTIME reference."
            | optional,
          FUNCTIONS_WORKER_RUNTIME_VERSION
            | String
            | doc "Indicates that PowerShell 7 be used when running locally. If not set, then PowerShell Core 6 is used. This setting is only used when running locally. When running in Azure, the PowerShell runtime version is determined by the powerShellVersion site configuration setting, which can be set in the portal."
            | optional,
          ..
        }
        | doc "Application settings and connection strings used when a project is running locally. These key-value (string-string) pairs correspond to application settings in your function app in Azure, like AzureWebJobsStorage. Many triggers and bindings have a property that refers to a connection string app setting, like Connection for the Blob storage trigger. For these properties, you need an application setting defined in the Values array. See the subsequent table for a list of commonly used settings. Values must be strings and not JSON objects or arrays. Setting names can't include a colon (:) or a double underline (__). Double underline characters are reserved by the runtime, and the colon is reserved to support dependency injection."
        | optional,
      ..
    }