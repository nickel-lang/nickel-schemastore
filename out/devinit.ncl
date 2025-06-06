# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.runObject" =
        {
            additionalOptions
              | js2n.Nullable String
              | doc "Additional Options to be appended to the tool's command line."
              | optional,
            comments
              | js2n.Nullable String
              | doc "Comments for this tool item. For documentation only; ignored by the tool."
              | optional,
            input
              | js2n.Nullable String
              | doc "The input varies by tool. For example, the required version number, the package-id, the input source file or source directory."
              | optional,
            tool
              | std.enum.TagOrString
              | [|
                'wsl-install,
                'winget-install,
                'windowsfeature-list,
                'windowsfeature-enable,
                'windowsfeature-disable,
                'vcpkg-install,
                'set-env,
                'require-winget,
                'require-vscomponent,
                'require-vcpkg,
                'require-psmodule,
                'require-nuget,
                'require-npm,
                'require-nodejs,
                'require-mssql,
                'require-gitsubmodule,
                'require-dotnetframeworksdk,
                'require-dotnetcoresdk,
                'require-choco,
                'require-azurecli,
                'require-azureartifactscredentialprovider,
                'nuget-restore,
                'npm-install,
                'msi-install,
                'enable-iis,
                'dotnet-toolinstall,
                'dotnet-restore,
                'choco-upgrade,
                'choco-install,
                'azurecli-login,
                'apt-get-install
              |]
              | doc "The name of the tool to run.",
          },
    }
    in
  {
      "$schema" | String | optional,
      comments
        | js2n.Nullable String
        | doc "Comments for this file. For documentation only; ignored by the tool."
        | optional,
      run
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            Number,
            String,
            { _ | Dyn },
            Array (
              std.contract.Sequence
                [ refs."definitions.runObject", refs."definitions.runObject" ]
            )
          ]
        | doc "'devinit.exe init' runs this list of tools sequentially. See also 'devinit.exe run'.",
    }