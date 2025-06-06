# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ConnectionTypes" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'MOCK, 'GPIB, 'USB, 'TCPIP, 'SOCKET, 'SERIAL, 'REST_API |]
            ],
      "definitions.DMConfigOptions" =
        {
            check_for_updates
              | js2n.Nullable Bool
              | doc m%"
                Indicate if the package should check for updates on creation of the DeviceManager
                https://tm-devices.readthedocs.io/stable/configuration/#check_for_updates
              "%
              | optional,
            default_visa_timeout
              | js2n.Nullable std.number.Integer
              | doc m%"
                The default VISA timeout value (in milliseconds) to use when creating VISA connections
                https://tm-devices.readthedocs.io/stable/configuration/#default_visa_timeout
              "%
              | optional,
            disable_command_verification
              | js2n.Nullable Bool
              | doc m%"
                Indicate if command verification should be disabled for all devices
                https://tm-devices.readthedocs.io/stable/configuration/#disable_command_verification
              "%
              | optional,
            log_colored_output
              | js2n.Nullable Bool
              | doc m%"
                Indicate if colored output should be used for the console logging
                https://tm-devices.readthedocs.io/stable/configuration/#log_colored_output
              "%
              | optional,
            log_console_level
              | js2n.Nullable String
              | doc m%"
                Set the logging level for the console
                https://tm-devices.readthedocs.io/stable/configuration/#log_console_level
              "%
              | optional,
            log_file_directory
              | js2n.Nullable String
              | doc m%"
                Set the directory to save log files to
                https://tm-devices.readthedocs.io/stable/configuration/#log_file_directory
              "%
              | optional,
            log_file_level
              | js2n.Nullable String
              | doc m%"
                Set the logging level for the log file
                https://tm-devices.readthedocs.io/stable/configuration/#log_file_level
              "%
              | optional,
            log_file_name
              | js2n.Nullable String
              | doc m%"
                Set the name of the log file to save the logs to
                https://tm-devices.readthedocs.io/stable/configuration/#log_file_name
              "%
              | optional,
            log_pyvisa_messages
              | js2n.Nullable Bool
              | doc m%"
                Indicate if PyVISA logs should be included in the log file
                https://tm-devices.readthedocs.io/stable/configuration/#log_pyvisa_messages
              "%
              | optional,
            log_uncaught_exceptions
              | js2n.Nullable Bool
              | doc m%"
                Indicate if uncaught exceptions should be logged to the log file with full tracebacks
                https://tm-devices.readthedocs.io/stable/configuration/#log_uncaught_exceptions
              "%
              | optional,
            retry_visa_connection
              | js2n.Nullable Bool
              | doc m%"
                Indicate if the VISA connection attempt should be retried after a failure
                https://tm-devices.readthedocs.io/stable/configuration/#retry_visa_connection
              "%
              | optional,
            setup_cleanup
              | js2n.Nullable Bool
              | doc m%"
                Indicate if a device's `cleanup()` method should be run when opening the connection
                https://tm-devices.readthedocs.io/stable/configuration/#setup_cleanup
              "%
              | optional,
            standalone
              | js2n.Nullable Bool
              | doc m%"
                Indicate if PyVISA-py's pure Python VISA backend should be used
                https://tm-devices.readthedocs.io/stable/configuration/#standalone
              "%
              | optional,
            teardown_cleanup
              | js2n.Nullable Bool
              | doc m%"
                Indicate if a device's `cleanup()` method should be run when closing the connection
                https://tm-devices.readthedocs.io/stable/configuration/#teardown_cleanup
              "%
              | optional,
            verbose_mode
              | js2n.Nullable Bool
              | doc m%"
                Indicate if more verbose output should be printed to stdout instead of just the log file
                https://tm-devices.readthedocs.io/stable/configuration/#verbose_mode
              "%
              | optional,
            verbose_visa
              | js2n.Nullable Bool
              | doc m%"
                Indicate if verbose VISA logging should be printed to stdout instead of just the log file
                https://tm-devices.readthedocs.io/stable/configuration/#verbose_visa
              "%
              | optional,
          },
      "definitions.DeviceConfigEntry" =
        {
            address
              | String
              | doc m%"
                The address to use to connect to the device
                https://tm-devices.readthedocs.io/stable/configuration/#address
              "%,
            alias
              | js2n.Nullable String
              | doc m%"
                An alias used to access the device via the DeviceManager
                https://tm-devices.readthedocs.io/stable/configuration/#alias
              "%
              | optional,
            connection_type
              | refs."definitions.ConnectionTypes"
              | String
              | doc m%"
                The connection type to use to connect with the device
                https://tm-devices.readthedocs.io/stable/configuration/#connection_type
              "%
              | optional,
            device_driver
              | js2n.Nullable String
              | doc m%"
                The name of a specific device driver class to use for the device, only used for REST_API connections
                https://tm-devices.readthedocs.io/stable/configuration/#device_driver
              "%
              | optional,
            device_type
              | refs."definitions.DeviceTypes"
              | String
              | doc m%"
                The specific type of device to connect to
                https://tm-devices.readthedocs.io/stable/configuration/#device_type
              "%,
            gpib_board_number
              | js2n.Nullable std.number.Integer
              | doc m%"
                The GPIB board number to use, only used for GPIB connections
                https://tm-devices.readthedocs.io/stable/configuration/#gpib_board_number
              "%
              | optional,
            lan_device_name
              | js2n.Nullable String
              | doc m%"
                The LAN device name (e.g. 'inst0') to connect via, used for TCPIP connections
                https://tm-devices.readthedocs.io/stable/configuration/#lan_device_name
              "%
              | optional,
            lan_port
              | js2n.Nullable std.number.Integer
              | doc m%"
                The LAN port number to connect on, used for SOCKET/REST_API connections
                https://tm-devices.readthedocs.io/stable/configuration/#lan_port
              "%
              | optional,
            serial_config
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.SerialConfig", { _ | Dyn } ])
              | doc m%"
                The configuration options for SERIAL (ASRL) connections
                https://tm-devices.readthedocs.io/stable/configuration/#serial_config
              "%
              | optional,
          },
      "definitions.DeviceTypes" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'UNSUPPORTED,
                'SS,
                'SMU,
                'SCOPE,
                'PSU,
                'MT,
                'DMM,
                'DAQ,
                'AWG,
                'AFG
              |]
            ],
      "definitions.SerialConfig" =
        {
            baud_rate
              | js2n.Nullable std.number.Integer
              | doc m%"
                The baud rate of the communication, this controls the communication frequency
                https://tm-devices.readthedocs.io/stable/configuration/#serial_config
              "%
              | optional,
            data_bits
              | js2n.Nullable (js2n.Enum [ 5, 6, 7, 8 ])
              | doc m%"
                The number of data bits in each character
                https://tm-devices.readthedocs.io/stable/configuration/#serial_config
              "%
              | optional,
            end_input
              | std.contract.any_of
                [
                  Number,
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'none,
                        'last_bit,
                        'termination_char,
                        'termination_break
                      |]
                    ],
                  js2n.Null
                ]
              | doc m%"
                The specific character(s) that indicate the end of a message transmission
                https://tm-devices.readthedocs.io/stable/configuration/#serial_config
              "%
              | optional,
            flow_control
              | std.contract.any_of
                [
                  Number,
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'rts_cts, 'dtr_dsr, 'xon_xoff, 'none |]
                    ],
                  js2n.Null
                ]
              | doc m%"
                The control for pausing/resuming data streaming between slower devices
                https://tm-devices.readthedocs.io/stable/configuration/#serial_config
              "%
              | optional,
            parity
              | std.contract.any_of
                [
                  Number,
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'space, 'mark, 'even, 'odd, 'none |]
                    ],
                  js2n.Null
                ]
              | doc m%"
                Define if and where a checksum bit should be added to each data character
                https://tm-devices.readthedocs.io/stable/configuration/#serial_config
              "%
              | optional,
            stop_bits
              | std.contract.any_of
                [
                  Number,
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'two, 'one_and_a_half, 'one |] ],
                  js2n.Null
                ]
              | doc m%"
                The number of bits to use to indicate the end of a frame/character
                https://tm-devices.readthedocs.io/stable/configuration/#serial_config
              "%
              | optional,
          },
    }
    in
  {
      devices
        | Array refs."definitions.DeviceConfigEntry"
        | doc m%"
          A list of devices for the DeviceManager to connect to
          https://tm-devices.readthedocs.io/stable/configuration/#device-configuration
        "%
        | optional,
      options
        | refs."definitions.DMConfigOptions"
        | doc m%"
          The options controlling the behavior of the tm_devices package
          https://tm-devices.readthedocs.io/stable/configuration/#general-configuration-options
        "%
        | optional,
    }