# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      deployment
        | {
          host
            | String
            | doc "Host name or internet protocol address of the server from which the resource is to be fetched",
          path
            | String
            | doc "Path to server resource to download, complete with query string if needed"
            | optional,
          port
            | std.number.Integer
            | js2n.number.Maximum 65535
            | js2n.number.Minimum 0
            | doc "TCP/IP port to be used to contact the server"
            | optional,
          scheme
            | std.enum.TagOrString
            | [| 'https, 'http |]
            | doc "Deployment download scheme to use"
            | optional,
          ..
        }
        | doc "Section used to download a ZIP archive from a server and inflate it to the 'target-path' folder"
        | optional,
      global
        | {
          action
            | std.enum.TagOrString
            | [| 'clean-boot, 'cold-boot, 'warm-boot, 'close, 'stay |]
            | doc "Specifies final action performed by the application at the end of the staging process"
            | optional,
          ping-timeout
            | std.number.Integer
            | js2n.number.Maximum 4000
            | js2n.number.Minimum 1
            | doc "The timeout value used when attempting to reach the host server"
            | optional,
          target-path
            | String
            | doc "Base destination folder where archive/folder will be inflated"
            | optional,
          ..
        }
        | doc "Section used to configure application scoped settings"
        | optional,
      layout
        | { description | js2n.string.MaxLength 350 | optional, .. }
        | optional,
      network
        | js2n.IfThenElse
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
                        mode =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| 'wep-104, 'wep-40, 'wpa2-psk, 'wpa-psk |]
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
              js2n.record.Required [ "mode-key" ],
              Array Dyn
            ]) js2n.Always
        | {
          auto-pac
            | Bool
            | doc "Indicates if automatic PAC provisioning is used for an EAP-FAST network"
            | optional,
          connect-to-server
            | Bool
            | doc "Indicates if only the servers listed in the 'connect-to-server-names' list should be connected to"
            | optional,
          connect-to-server-names
            | String
            | doc "Semi-colon separated list of servers that are valid to connect to during server certificate validation"
            | optional,
          credentials-source
            | std.enum.TagOrString
            | [| 'unknown, 'auto, 'profile, 'logon, 'user |]
            | doc "Indicates the EAP credentials source"
            | optional,
          credentials-type
            | std.enum.TagOrString
            | [| 'unknown, 'certificate, 'token, 'password |]
            | doc "Indicates the EAP credentials type"
            | optional,
          eap-method
            | std.enum.TagOrString
            | [| 'leap, 'fast, 'ttls, 'tls, 'peap, 'none |]
            | doc "Configures the EAP authentication method"
            | optional,
          eap-password | String | doc "Password for EAP method" | optional,
          eap-username | String | doc "Username for the EAP method" | optional,
          essid | String | doc "Wireless network ESSID" | optional,
          fast-reconnect
            | Bool
            | doc "Indicate if fast reconnect should be enabled"
            | optional,
          index
            | std.number.Integer
            | js2n.number.Maximum 4
            | js2n.number.Minimum 1
            | doc "Wireless network key index for 'wep-40' and 'wep-104' networks"
            | optional,
          inner-method
            | std.enum.TagOrString
            | [| 'eap-gtc, 'eap-MsChapV2, 'eap-tls |]
            | doc "Inner EAP authentication method to use"
            | optional,
          mode
            | std.enum.TagOrString
            | [|
              'wpa2-aes,
              'wpa-tkip,
              'wpa2-psk,
              'wpa-psk,
              'wep-104,
              'wep-40,
              'open
            |]
            | doc "Wireless connection mode"
            | optional,
          mode-key
            | js2n.string.MaxLength 63
            | js2n.string.MinLength 5
            | doc "Wireless network key for 'wep-40', 'wep-104', 'wpa-psk', and 'wpa2-psk' networks"
            | optional,
          outer-identity
            | String
            | doc "The outer-identity of the EAP method"
            | optional,
          pac-aid-info
            | String
            | doc "PAC authority identity (AID) information used to select PAC from a list of PACs on the device"
            | optional,
          pac-file-path
            | String
            | doc "Full path to the PAC file for manual PAC provisioning"
            | optional,
          profile
            | String
            | doc "\"Friendly\" name to associate with the network connection"
            | optional,
          server-cert-name
            | String
            | doc "\"Friendly\" name of the server digital certificate that should be validated"
            | optional,
          validate-server
            | Bool
            | doc "Indicates if the server certificate should be validated"
            | optional,
          ..
        }
        | doc "Section used to configure device Wi-Fi network"
        | optional,
      settings
        | {
          usb-function
            | std.enum.TagOrString
            | [| 'mass-storage, 'usblan, 'active-sync-com, 'active-sync-usb |]
            | doc "USB communication function to use"
            | optional,
          ..
        }
        | doc "Section used to configure inner device settings"
        | optional,
      shell
        | {
          cmds
            | Array
              {
                app-name
                  | String
                  | doc "Full path to the application to be executed",
                args | String | doc "Command line arguments" | optional,
                ..
              }
            | doc "Each object in 'cmds' is a shell command to execute in the final phase of staging",
          ..
        }
        | doc "Section for executable shell commands to be performed in the final staging phase"
        | optional,
      ..
    }