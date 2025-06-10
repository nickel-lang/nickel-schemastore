# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Capabilities" =
        js2n.Nullable
            (std.contract.Sequence
              [
                js2n.array.MaxItems 1000,
                js2n.array.UniqueItems,
                Array (
                  std.contract.Sequence
                    [ js2n.string.MaxLength 40, js2n.string.MinLength 1 ]
                )
              ]),
      "definitions.Channel" =
        js2n.Nullable
            (std.contract.Sequence
              [ js2n.string.MaxLength 16, js2n.string.MinLength 1 ]),
      "definitions.Commands" =
        js2n.Nullable
            (std.contract.Sequence
              [
                js2n.array.MaxItems 16,
                js2n.array.UniqueItems,
                Array (
                  std.contract.Sequence
                    [ js2n.string.MaxLength 40, js2n.string.MinLength 1 ]
                )
              ]),
      "definitions.Dependencies" =
        js2n.Nullable
            {
              ExternalDependencies
                | js2n.Nullable
                  (std.contract.Sequence
                    [
                      js2n.array.MaxItems 16,
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [ js2n.string.MaxLength 128, js2n.string.MinLength 1 ]
                      )
                    ])
                | doc "List of external package dependencies"
                | optional,
              PackageDependencies
                | js2n.Nullable
                  (std.contract.Sequence
                    [
                      js2n.array.MaxItems 16,
                      js2n.array.UniqueItems,
                      Array
                        {
                          MinimumVersion
                            | refs."definitions.PackageVersion"
                            | String
                            | optional,
                          PackageIdentifier
                            | refs."definitions.PackageIdentifier"
                            | String,
                          ..
                        }
                    ])
                | doc "List of package dependencies from current source"
                | optional,
              WindowsFeatures
                | js2n.Nullable
                  (std.contract.Sequence
                    [
                      js2n.array.MaxItems 16,
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [ js2n.string.MaxLength 128, js2n.string.MinLength 1 ]
                      )
                    ])
                | doc "List of Windows feature dependencies"
                | optional,
              WindowsLibraries
                | js2n.Nullable
                  (std.contract.Sequence
                    [
                      js2n.array.MaxItems 16,
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [ js2n.string.MaxLength 128, js2n.string.MinLength 1 ]
                      )
                    ])
                | doc "List of Windows library dependencies"
                | optional,
              ..
            },
      "definitions.FileExtensions" =
        js2n.Nullable
            (std.contract.Sequence
              [
                js2n.array.MaxItems 256,
                js2n.array.UniqueItems,
                Array (
                  std.contract.Sequence
                    [
                      js2n.string.MaxLength 40,
                      js2n.string.Matches "^[^\\\\/:\\*\\?\"<>\\|\\x01-\\x1f]+$"
                    ]
                )
              ]),
      "definitions.InstallModes" =
        js2n.Nullable
            (std.contract.Sequence
              [
                js2n.array.MaxItems 3,
                js2n.array.UniqueItems,
                Array (
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'silentWithProgress, 'silent, 'interactive |]
                    ]
                )
              ]),
      "definitions.Installer" =
        {
            Architecture
              | std.enum.TagOrString
              | [| 'neutral, 'arm64, 'arm, 'x64, 'x86 |]
              | doc "The installer target architecture",
            Capabilities
              | refs."definitions.Capabilities"
              | js2n.Nullable (Array Dyn)
              | optional,
            Commands
              | refs."definitions.Commands"
              | js2n.Nullable (Array Dyn)
              | optional,
            Dependencies
              | refs."definitions.Dependencies"
              | js2n.Nullable ({ _ | Dyn })
              | optional,
            FileExtensions
              | refs."definitions.FileExtensions"
              | js2n.Nullable (Array Dyn)
              | optional,
            InstallModes
              | refs."definitions.InstallModes"
              | js2n.Nullable (Array Dyn)
              | optional,
            InstallerLocale
              | refs."definitions.Locale"
              | js2n.Nullable String
              | optional,
            InstallerSha256
              | js2n.string.Matches "^[A-Fa-f0-9]{64}$"
              | doc "Sha256 is required. Sha256 of the installer",
            InstallerSuccessCodes
              | refs."definitions.InstallerSuccessCodes"
              | js2n.Nullable (Array Dyn)
              | optional,
            InstallerSwitches
              | refs."definitions.InstallerSwitches"
              | { _ | Dyn }
              | optional,
            InstallerType
              | refs."definitions.InstallerType"
              | String
              | optional,
            InstallerUrl
              | js2n.string.Matches "^([Hh][Tt][Tt][Pp][Ss]?)://.+$"
              | doc "The installer Url",
            MinimumOSVersion
              | refs."definitions.MinimumOSVersion"
              | js2n.Nullable String
              | optional,
            PackageFamilyName
              | refs."definitions.PackageFamilyName"
              | js2n.Nullable String
              | optional,
            Platform
              | refs."definitions.Platform"
              | js2n.Nullable (Array Dyn)
              | optional,
            ProductCode
              | refs."definitions.ProductCode"
              | js2n.Nullable String
              | optional,
            Protocols
              | refs."definitions.Protocols"
              | js2n.Nullable (Array Dyn)
              | optional,
            RestrictedCapabilities
              | refs."definitions.RestrictedCapabilities"
              | js2n.Nullable (Array Dyn)
              | optional,
            Scope | refs."definitions.Scope" | String | optional,
            SignatureSha256
              | js2n.Nullable (js2n.string.Matches "^[A-Fa-f0-9]{64}$")
              | doc "SignatureSha256 is recommended for appx or msix. It is the sha256 of signature file inside appx or msix. Could be used during streaming install if applicable"
              | optional,
            UpgradeBehavior
              | refs."definitions.UpgradeBehavior"
              | String
              | optional,
            ..
          },
      "definitions.InstallerSuccessCodes" =
        js2n.Nullable
            (std.contract.Sequence
              [
                js2n.array.MaxItems 16,
                js2n.array.UniqueItems,
                Array (
                  std.contract.Sequence
                    [ std.number.Integer, std.contract.not (js2n.Enum [ 0 ]) ]
                )
              ]),
      "definitions.InstallerSwitches" =
        {
            Custom
              | js2n.Nullable
                (std.contract.Sequence
                  [ js2n.string.MaxLength 2048, js2n.string.MinLength 1 ])
              | doc "Custom switches will be passed directly to the installer by winget"
              | optional,
            InstallLocation
              | js2n.Nullable
                (std.contract.Sequence
                  [ js2n.string.MaxLength 512, js2n.string.MinLength 1 ])
              | doc "InstallLocation is the value passed to the installer for custom install location. <INSTALLPATH> token can be included in the switch value so that winget will replace the token with user provided path"
              | optional,
            Interactive
              | js2n.Nullable
                (std.contract.Sequence
                  [ js2n.string.MaxLength 512, js2n.string.MinLength 1 ])
              | doc "Interactive is the value that should be passed to the installer when user chooses an interactive install"
              | optional,
            Log
              | js2n.Nullable
                (std.contract.Sequence
                  [ js2n.string.MaxLength 512, js2n.string.MinLength 1 ])
              | doc "Log is the value passed to the installer for custom log file path. <LOGPATH> token can be included in the switch value so that winget will replace the token with user provided path"
              | optional,
            Silent
              | js2n.Nullable
                (std.contract.Sequence
                  [ js2n.string.MaxLength 512, js2n.string.MinLength 1 ])
              | doc "Silent is the value that should be passed to the installer when user chooses a silent or quiet install"
              | optional,
            SilentWithProgress
              | js2n.Nullable
                (std.contract.Sequence
                  [ js2n.string.MaxLength 512, js2n.string.MinLength 1 ])
              | doc "SilentWithProgress is the value that should be passed to the installer when user chooses a non-interactive install"
              | optional,
            Upgrade
              | js2n.Nullable
                (std.contract.Sequence
                  [ js2n.string.MaxLength 512, js2n.string.MinLength 1 ])
              | doc "Upgrade is the value that should be passed to the installer when user chooses an upgrade"
              | optional,
            ..
          },
      "definitions.InstallerType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'pwa,
                'burn,
                'wix,
                'nullsoft,
                'inno,
                'zip,
                'exe,
                'appx,
                'msi,
                'msix
              |]
            ],
      "definitions.Locale" =
        js2n.Nullable
            (std.contract.Sequence
              [ js2n.string.MaxLength 20, js2n.string.MinLength 1 ]),
      "definitions.MinimumOSVersion" =
        js2n.Nullable
            (js2n.string.Matches
              "^(0|[1-9][0-9]{0,3}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])(\\.(0|[1-9][0-9]{0,3}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])){0,3}$"),
      "definitions.PackageFamilyName" =
        js2n.Nullable
            (std.contract.Sequence
              [
                js2n.string.MaxLength 255,
                js2n.string.Matches
                  "^[A-Za-z0-9][-\\.A-Za-z0-9]+_[A-Za-z0-9]{13}$"
              ]),
      "definitions.PackageIdentifier" =
        std.contract.Sequence
            [
              js2n.string.MaxLength 128,
              js2n.string.Matches
                "^[^\\.\\s\\\\/:\\*\\?\"<>\\|\\x01-\\x1f]{1,32}(\\.[^\\.\\s\\\\/:\\*\\?\"<>\\|\\x01-\\x1f]{1,32}){1,3}$"
            ],
      "definitions.PackageVersion" =
        std.contract.Sequence
            [
              js2n.string.MaxLength 128,
              js2n.string.Matches "^[^\\\\/:\\*\\?\"<>\\|\\x01-\\x1f]+$"
            ],
      "definitions.Platform" =
        js2n.Nullable
            (std.contract.Sequence
              [
                js2n.array.MaxItems 2,
                js2n.array.UniqueItems,
                Array (
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"Windows.Universal", '"Windows.Desktop" |]
                    ]
                )
              ]),
      "definitions.ProductCode" =
        js2n.Nullable
            (std.contract.Sequence
              [ js2n.string.MaxLength 255, js2n.string.MinLength 1 ]),
      "definitions.Protocols" =
        js2n.Nullable
            (std.contract.Sequence
              [
                js2n.array.MaxItems 16,
                js2n.array.UniqueItems,
                Array (
                  std.contract.Sequence
                    [
                      js2n.string.MaxLength 2048,
                      js2n.string.Matches "^[a-z][-a-z0-9\\.\\+]*$"
                    ]
                )
              ]),
      "definitions.RestrictedCapabilities" =
        js2n.Nullable
            (std.contract.Sequence
              [
                js2n.array.MaxItems 1000,
                js2n.array.UniqueItems,
                Array (
                  std.contract.Sequence
                    [ js2n.string.MaxLength 40, js2n.string.MinLength 1 ]
                )
              ]),
      "definitions.Scope" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'machine, 'user |] ],
      "definitions.UpgradeBehavior" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'uninstallPrevious, 'install |] ],
    }
    in
  {
      Capabilities | refs."definitions.Capabilities" | optional,
      Channel | refs."definitions.Channel" | optional,
      Commands | refs."definitions.Commands" | optional,
      Dependencies | refs."definitions.Dependencies" | optional,
      FileExtensions | refs."definitions.FileExtensions" | optional,
      InstallModes | refs."definitions.InstallModes" | optional,
      InstallerLocale | refs."definitions.Locale" | optional,
      InstallerSuccessCodes
        | refs."definitions.InstallerSuccessCodes"
        | optional,
      InstallerSwitches | refs."definitions.InstallerSwitches" | optional,
      InstallerType | refs."definitions.InstallerType" | optional,
      Installers
        | js2n.array.MaxItems 128
        | js2n.array.MinItems 1
        | Array refs."definitions.Installer",
      ManifestType | std.contract.Equal "installer" | doc "The manifest type",
      ManifestVersion
        | js2n.string.Matches
          "^(0|[1-9][0-9]{0,3}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])(\\.(0|[1-9][0-9]{0,3}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])){2}$"
        | doc "The manifest syntax version",
      MinimumOSVersion | refs."definitions.MinimumOSVersion" | optional,
      PackageFamilyName | refs."definitions.PackageFamilyName" | optional,
      PackageIdentifier | refs."definitions.PackageIdentifier" | String,
      PackageVersion | refs."definitions.PackageVersion" | String,
      Platform | refs."definitions.Platform" | optional,
      ProductCode | refs."definitions.ProductCode" | optional,
      Protocols | refs."definitions.Protocols" | optional,
      RestrictedCapabilities
        | refs."definitions.RestrictedCapabilities"
        | optional,
      Scope | refs."definitions.Scope" | optional,
      UpgradeBehavior | refs."definitions.UpgradeBehavior" | optional,
      ..
    }