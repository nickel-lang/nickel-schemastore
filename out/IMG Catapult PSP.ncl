# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      platform
        | {
          buildConfig
            | js2n.string.Matches "^([A-Z]|[0-9]|_)+$"
            | doc "Value of the PLATFORM macro definition used during build",
          coreDescriptionFile
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "File containing description of core using IMG proprietary YAML format",
          description | String | doc "Full description of support pack",
          documentationFile
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "Documentation file(s) - can be HTML or PDF",
          fpgaBitFile
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "Bitfile for programming FPGA"
            | optional,
          fpgaProgConfigFile
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "OpenOCD config file for programming FPGA"
            | optional,
          gdbAutoRunCommandString
            | String
            | doc "String with additional gdb commands to run to initiate connection to target"
            | optional,
          headersDirectory
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "Directory containing header files for use with the platform"
            | optional,
          isPlatformFPGA | Bool | doc "True only for FPGA platforms" | optional,
          launchConfig
            | js2n.string.Matches
              "^(Alpine Model|Catapult Model|OpenOCD|Whisper|RemoteLinux)$"
            | doc "Launch configuration for platform",
          libsDirectory
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "Directory containing library files for use with the platform"
            | optional,
          license | String | doc "License text",
          name
            | js2n.string.MaxLength 30
            | doc "Name of platform - used to identify platform in IDE",
          networkPortNumberForOCDConnections
            | String
            | doc "TCP/IP port number for OpenOCD connections.  Set to \"auto\" to automatically use any free port"
            | optional,
          openOCDConfigurationFile
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "File containing OpenOCD configuration (see https://openocd.org/doc-release/html/Config-File-Guidelines.html#Config-File-Guidelines)"
            | optional,
          peripheralRegisterDescriptionFile
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "File containing peripheral register information using CMSIS SVD XML format (see https://www.keil.com/pack/doc/CMSIS/SVD/html/svd_Format_pg.html)"
            | optional,
          remoteHost
            | String
            | doc "Hostname or IP address for debug connection to remote machines"
            | optional,
          remoteUsername
            | String
            | doc "Username for debug connection to remote machines"
            | optional,
          traceSettingsString
            | String
            | doc "String with processor trace encoder settings required by the decoder"
            | optional,
          vendor | String | doc "Platform/device vendor name",
          version | String | doc "Support pack version",
        }
        | doc "Catapult platform support file contents",
    }