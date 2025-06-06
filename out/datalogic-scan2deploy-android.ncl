# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      blobs
        | Array
          {
            content
              | String
              | doc "Base64 representation of the actual file content",
            file
              | String
              | doc "Path to the file to be created. Can be either absolute or relative to the global/target-path parameter value. During file de-serialization, any required (parent) path is automatically created.",
            ..
          }
        | doc "Section used to transfer binary data to newly created file on device"
        | optional,
      deployment
        | {
          check-timeout
            | std.number.Integer
            | doc "The timeout value used when attempting to reach the host server"
            | optional,
          fetch-timeout
            | std.number.Integer
            | doc "The timeout value used when fetching resource from host"
            | optional,
          host
            | String
            | doc "Host-name or internet-protocol address of the server from which the resource is to be fetched",
          path
            | String
            | doc "Path to the server resource to download, complete with query string if needed"
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
          skip-inflation
            | Bool
            | doc "Instructs the application not to inflate the deployment archive once downloaded, can be useful to speed the OTA update process up"
            | optional,
          working-archive
            | String
            | doc "String representation of the archive path-file name, once downloaded"
            | optional,
          ..
        }
        | doc "Section can be used to download a ZIP archive from a server and inflate it to the 'target-path' folder"
        | optional,
      global
        | {
          action
            | std.enum.TagOrString
            | [| 'reset, 'factory-reset, 'enterprise-reset, 'close, 'none |]
            | doc "Specifies the final action performed by the application at the end of the staging process."
            | optional,
          auto-scan
            | Bool
            | doc "Enables/Disables the auto-update of APKs and OTA packages"
            | optional,
          backup-to-enterprise
            | Bool
            | doc "Activates the enterprise backup persistence for the staging data, resulting in both the staging script and archive being copied to the enterprise partition"
            | optional,
          download-preinstalled
            | Bool
            | doc "Used to force the downgrade of pre-installed application (even System app), if required"
            | optional,
          install-path
            | String
            | doc "Folder where the application expects auto-installed/auto-updated APKs to be found. Default is value specified in 'target path'."
            | optional,
          purge-target-path
            | Bool
            | doc "Indicates if target specified in 'target-path' needs to be purged (deleted) prior to inflation of the deployment archive"
            | optional,
          script
            | std.contract.any_of [ String, Array String ]
            | doc "A string specifying the absolute/relative path of a file, or a JSON array of strings describing the file content line-by-line. The script file will be interpreted last in staging process."
            | optional,
          target-path
            | String
            | doc "Base destination folder where any archive/fill will be inflated/written. Default is device internal SD-card root"
            | optional,
          update-path
            | String
            | doc "Folder where the application expects auto-updated OTA packages to be found. Default is value specified in 'target path'."
            | optional,
          ..
        }
        | doc "Section used to configure application scoped settings"
        | optional,
      layout
        | {
          description | js2n.string.MaxLength 350 | optional,
          enroll | Bool | optional,
          ..
        }
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
          eap-anonymous-identity
            | String
            | doc "Indicates the EAP anonymous identity, used as the unencrypted identity with certain EAP types"
            | optional,
          eap-certificate
            | String
            | doc "Base64 representation of the EAP certificate to use"
            | optional,
          eap-identity | String | doc "Indicates the EAP identity" | optional,
          eap-method
            | std.enum.TagOrString
            | [| 'aka-prime, 'aka, 'sim, 'pwd, 'ttls, 'tls, 'peap, 'none |]
            | doc "Configures the EAP authentication method"
            | optional,
          eap-password | String | doc "EAP password, if needed" | optional,
          eap-password-encrypted
            | Bool
            | doc "Indicates if the 'eap-password' is encrypted with a custom encryption algorithm"
            | optional,
          eap-phase2
            | std.enum.TagOrString
            | [| 'gtc, 'mschapv2, 'mschap, 'pap, 'none |]
            | doc "Configures the EAP phase 2 authentication method"
            | optional,
          ephemeral
            | Bool
            | doc "If true, wireless connection profile will be used during staging process, then deleted after staging. If false, wireless connection profile will still be present after staging process."
            | optional,
          essid | String | doc "Wireless network ESSID" | optional,
          frequency-band
            | std.enum.TagOrString
            | [| '"2ghz", '"5ghz", 'auto |]
            | doc "Controls the frequency bands supported by the device"
            | optional,
          hidden
            | Bool
            | doc "Indicates if the wireless network is using a hidden ESSID"
            | optional,
          mode
            | std.enum.TagOrString
            | [|
              'wpa2-eap,
              'wpa-eap,
              'wpa2-psk,
              'wpa-psk,
              'wep-104,
              'wep-40,
              'open
            |]
            | doc "Wireless connection mode"
            | optional,
          mode-key | String | doc "Wireless network key, if needed" | optional,
          mode-key-encrypted
            | Bool
            | doc "Indicates if 'mode-key' is written in plain-text or encrypted with a custom encryption algorithm"
            | optional,
          proxy-host
            | String
            | doc "Server name or IP address of the proxy to be used for HTTP/HTTPS communications"
            | optional,
          proxy-port
            | std.number.Integer
            | js2n.number.Maximum 65535
            | js2n.number.Minimum 0
            | doc "Server IP port of the proxy for HTTP/HTTPS communications"
            | optional,
          purge
            | Bool
            | doc "Indicates if any currently configured wireless network needs to be removed. Can be useful to avoid profile roaming."
            | optional,
          reconfigure
            | Bool
            | doc "If true, will reconfigure any existing and matching network. If false, will leave existing network untouched. Setting used when 'purge' is set to false."
            | optional,
          save-to-file
            | String
            | doc "Absolute path to the file where the current network configuration will be saved, empty string indicates network configuration won't be serialized to a file"
            | optional,
          sleep-policy
            | std.number.Integer
            | js2n.number.Maximum 2
            | js2n.number.Minimum 0
            | doc "Wireless sleep policy for Android's Settings.Global parameter (0-WIFI_SLEEP_POLICY_DEFAULT, 1-WIFI_SLEEP_POLICY_NEVER_WHILE_PLUGGED, 2-WIFI_SLEEP_POLICY_NEVER)"
            | optional,
          wait-for-connection
            | Bool
            | doc "Indicates whether a valid Wi-Fi connection has to be waited once the network configuration is complete. Can be useful when device needs to be configured but a valid Wi-Fi connection is not ready yet."
            | optional,
          ..
        }
        | doc "Section used to configure the device Wi-Fi network"
        | optional,
      padlock
        | {
          hide-from-launcher
            | Bool
            | doc "Indicates if Scan2Deploy should be disabled after staging is complete. Once disabled, factory reset required to re-enable."
            | optional,
          key
            | String
            | doc "Padlock key to be used. If value doesn't match the device, the barcode is rejected. Empty string means no key."
            | optional,
          state
            | std.enum.TagOrString
            | [| 'unlocked, 'locked |]
            | doc "Configures the padlock state"
            | optional,
          valid-until
            | String
            | doc "Specifies the expiration date of the barcode sequence. Device date must be synchronized/configured for expiration date to work properly."
            | optional,
          ..
        }
        | doc "Section used to configure the staging locking feature"
        | optional,
      settings
        | {
          auto-time
            | Bool
            | doc "Controls the 'Date & Time' automatic date-time adjustment setting"
            | optional,
          auto-time-server
            | String
            | doc "Address of the NTP server to be used for date-time synchronization"
            | optional,
          auto-time-zone
            | Bool
            | doc "Controls the 'Date & Time' automatic time-zone adjustment setting"
            | optional,
          charge-threshold
            | std.number.Integer
            | js2n.number.Maximum 100
            | js2n.number.Minimum 0
            | doc "Indicates the charge threshold a battery exhausted device needs to reach to automatically boot when recharging"
            | optional,
          date-time
            | String
            | doc "String representation in RFC-1123 format of the date to be set"
            | optional,
          debug-bridge
            | Bool
            | doc "Controls the state of 'Android Debug Bridge'"
            | optional,
          lock-screen
            | Bool
            | doc "Controls the state of Android's lock-screen, requiring the user to swipe the display to unlock the device"
            | optional,
          navigation-bar
            | Bool
            | doc "Controls the display of the bottom navigation-bar"
            | optional,
          status-bar
            | Bool
            | doc "Controls the display of the top status-bar. Note: hiding the status-bar will make notification disappear."
            | optional,
          usb-function
            | std.enum.TagOrString
            | [| 'CHARGING, 'PTP, 'MTP |]
            | doc "USB communication function in use"
            | optional,
          usb-profile
            | std.enum.TagOrString
            | [| 'CHARGE, 'DATA, 'BOTH, 'NONE |]
            | doc "USB communication profile in use"
            | optional,
          ..
        }
        | doc "Section used to control inner device settings that typically need to be changed from the Android defaults"
        | optional,
      ..
    }