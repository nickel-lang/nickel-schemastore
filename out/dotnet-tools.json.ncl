# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      isRoot
        | Bool
        | doc "Indicates whether this is the root manifest file. If true, dotnet will not continue to search parent directories for additional dotnet-tools.json files.",
      tools
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "^.*$" =
                    {
                        commands
                          | js2n.Nullable (Array (js2n.Nullable String))
                          | doc "Lists all of the available commands provided by this tool. The way to invoke a command depends on the naming format of its executable. If the command is in the format `dotnet-<toolName>`, it should be invoked using 'dotnet <toolName>'. If the command is in the format '<toolName>', it can be directly invoked using just '<toolName>'. If null, no specific commands are specified.",
                        version
                          | js2n.Nullable String
                          | doc "Specifies the version of the NuGet package of the tool. If null, the latest version will be used.",
                        ..
                      },
                },
            properties = {},
            required = {},
          }
        | doc "Mappings of .NET CLI tools that are available locally for the project. Each entry specifies a tool accessible by its NuGet package ID.",
      version
        | std.number.Integer
        | doc "Specifies the version of the local tool manifest file format.",
      ..
    }