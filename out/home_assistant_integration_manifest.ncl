# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.Sequence
      [
        js2n.IfThenElse
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
                  properties = { integration_type = js2n.Const "virtual", },
                  required = { integration_type = true, },
                },
              Array Dyn
            ])
          (js2n.OneOf
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            domain = js2n.string.Matches "[0-9a-z_]+",
                            integration_type = js2n.Const "virtual",
                            iot_standards =
                              std.contract.Sequence
                                  [
                                    js2n.array.MinItems 1,
                                    js2n.array.ArrayOf
                                      (std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [| 'zwave, 'zigbee, 'homekit |]
                                        ])
                                  ],
                            name = String,
                          },
                      required =
                        {
                            domain = true,
                            integration_type = true,
                            iot_standards = true,
                            name = true,
                          },
                    },
                  Array Dyn
                ],
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            domain = js2n.string.Matches "[0-9a-z_]+",
                            integration_type = js2n.Const "virtual",
                            name = String,
                            supported_by = String,
                          },
                      required =
                        {
                            domain = true,
                            integration_type = true,
                            name = true,
                            supported_by = true,
                          },
                    },
                  Array Dyn
                ]
            ])
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              std.contract.Sequence
                [
                  js2n.record.DependentContracts
                    {
                      mqtt =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "dependencies" ],
                              Array Dyn,
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "after_dependencies" ],
                              Array Dyn
                            ],
                    },
                  {
                    after_dependencies
                      | js2n.array.MinItems 1
                      | js2n.array.UniqueItems
                      | Array String
                      | doc m%"
                        A list of integrations which need to be loaded before this integration is set up when it is configured. The integration will still be set up when the "after_dependencies" are not configured.
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#after-dependencies
                      "%
                      | optional,
                    bluetooth
                      | js2n.array.MinItems 1
                      | js2n.array.UniqueItems
                      | Array
                        {
                          connectable
                            | Bool
                            | doc "Whether the device needs to be connected to or it works with just advertisement data."
                            | optional,
                          local_name
                            | js2n.string.Matches "^([^*]+|[^*]{3,}[*].*)$"
                            | doc "The name or a name pattern of the device to match."
                            | optional,
                          manufacturer_data_start
                            | js2n.array.MinItems 1
                            | Array (
                              std.contract.Sequence
                                [
                                  std.number.Integer,
                                  js2n.number.Maximum 255,
                                  js2n.number.Minimum 0
                                ]
                            )
                            | doc "The start bytes of the manufacturer data to match."
                            | optional,
                          manufacturer_id
                            | std.number.Integer
                            | doc "The Manufacturer ID to match."
                            | optional,
                          service_data_uuid
                            | js2n.string.Matches
                              "0000[0-9a-f]{4}-0000-1000-8000-00805f9b34fb"
                            | doc "The 16-bit service data UUID to match, converted into the corresponding 128-bit UUID by replacing the 3rd and 4th byte of `00000000-0000-1000-8000-00805f9b34fb` with the 16-bit UUID."
                            | optional,
                          service_uuid
                            | js2n.string.Matches
                              "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"
                            | doc "The 128-bit service data UUID to match."
                            | optional,
                        }
                      | doc m%"
                        A list of matchers to find devices discoverable via Bluetooth. In order to be discovered, the device has to match all properties of any of the matchers.
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#bluetooth
                      "%
                      | optional,
                    codeowners
                      | js2n.array.MinItems 0
                      | js2n.array.UniqueItems
                      | Array (js2n.string.Matches "^@.+$")
                      | doc m%"
                        A list of GitHub usernames or GitHub team names of the integration owners.
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#code-owners
                      "%,
                    config_flow
                      | Bool
                      | doc m%"
                        Whether the integration is configurable from the UI.
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#config-flow
                      "%
                      | optional,
                    dependencies
                      | js2n.array.MinItems 1
                      | js2n.array.UniqueItems
                      | Array String
                      | doc m%"
                        A list of integrations which need to be loaded before this integration can be set up.
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#dependencies
                      "%
                      | optional,
                    dhcp
                      | js2n.array.UniqueItems
                      | Array (
                        std.contract.any_of
                          [
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  { registered_devices = js2n.Const true, },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      hostname = String,
                                      macaddress = js2n.string.MaxLength 12,
                                    },
                                required = {},
                              }
                          ]
                      )
                      | doc m%"
                        A list of matchers to find devices discoverable via DHCP. In order to be discovered, the device has to match all properties of any of the matchers.
                        You can specify an item with "registered_devices" set to true to check for devices with MAC addresses specified in the device registry.
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#dhcp
                      "%
                      | optional,
                    disabled
                      | String
                      | doc "The reason for the integration being disabled."
                      | optional,
                    documentation
                      | js2n.string.Matches
                        "^https://www.home-assistant.io/integrations/[0-9a-z_]+$"
                      | doc m%"
                        The website containing the documentation for the integration. It has to be in the format "https://www.home-assistant.io/integrations/[domain]"
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#documentation
                      "%,
                    domain
                      | js2n.string.Matches "[0-9a-z_]+"
                      | doc m%"
                        The domain identifier of the integration.
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#domain
                      "%,
                    homekit
                      | {
                        models
                          | js2n.array.UniqueItems
                          | Array String
                          | doc "The model names to search for.",
                      }
                      | doc m%"
                        A list of model names to find devices which are discoverable via HomeKit. A device is discovered if the model name of the device starts with any of the specified model names.
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#homekit
                      "%
                      | optional,
                    integration_type
                      | std.enum.TagOrString
                      | [|
                        'system,
                        'service,
                        'hub,
                        'helper,
                        'hardware,
                        'entity,
                        'device
                      |]
                      | doc m%"
                        The integration type.
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#integration-type
                      "%
                      | optional,
                    iot_class
                      | std.enum.TagOrString
                      | [|
                        'calculated,
                        'local_push,
                        'local_polling,
                        'cloud_push,
                        'cloud_polling,
                        'assumed_state
                      |]
                      | doc m%"
                        The IoT class of the integration, describing how the integration connects to the device or service.
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#iot-class
                      "%
                      | optional,
                    loggers
                      | js2n.array.MinItems 1
                      | js2n.array.UniqueItems
                      | Array String
                      | doc m%"
                        A list of logger names used by the requirements.
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#loggers
                      "%
                      | optional,
                    mqtt
                      | js2n.array.UniqueItems
                      | Array String
                      | doc m%"
                        A list of topics to subscribe for the discovery of devices via MQTT.
                        This requires to specify "mqtt" in either the "dependencies" or "after_dependencies".
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#mqtt
                      "%
                      | optional,
                    name | String | doc "The friendly name of the integration.",
                    quality_scale
                      | std.enum.TagOrString
                      | [|
                        'legacy,
                        'internal,
                        'platinum,
                        'gold,
                        'silver,
                        'bronze
                      |]
                      | doc m%"
                        The quality scale of the integration.
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#integration-quality-scale
                      "%
                      | optional,
                    requirements
                      | js2n.array.UniqueItems
                      | Array (js2n.string.Matches ".+==.+")
                      | doc m%"
                        The PyPI package requirements for the integration. The package has to be pinned to a specific version.
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#requirements
                      "%
                      | optional,
                    single_config_entry
                      | std.contract.Equal true
                      | doc m%"
                        Whether the integration only supports a single config entry.
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#single-config-entry-only
                      "%
                      | optional,
                    ssdp
                      | js2n.array.MinItems 1
                      | Array (
                        js2n.record.Record
                          {
                            additional = 'Some String,
                            patterns = {},
                            properties =
                              {
                                  deviceType = String,
                                  manufacturer = String,
                                  modelDescription = String,
                                  st = String,
                                },
                            required = {},
                          }
                      )
                      | doc m%"
                        A list of matchers to find devices discoverable via SSDP/UPnP. In order to be discovered, the device has to match all properties of any of the matchers.
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#ssdp
                      "%
                      | optional,
                    usb
                      | js2n.array.UniqueItems
                      | Array
                        {
                          description
                            | String
                            | doc "The USB device description to match."
                            | optional,
                          known_devices | Array String | optional,
                          manufacturer
                            | String
                            | doc "The manufacturer to match."
                            | optional,
                          pid
                            | js2n.string.Matches "[0-9A-F]{4}"
                            | doc "The product ID to match."
                            | optional,
                          serial_number
                            | String
                            | doc "The serial number to match."
                            | optional,
                          vid
                            | js2n.string.Matches "[0-9A-F]{4}"
                            | doc "The vendor ID to match."
                            | optional,
                        }
                      | doc m%"
                        A list of matchers to find devices discoverable via USB. In order to be discovered, the device has to match all properties of any of the matchers.
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#usb
                      "%
                      | optional,
                    zeroconf
                      | js2n.array.MinItems 1
                      | js2n.array.UniqueItems
                      | Array (
                        std.contract.any_of
                          [
                            js2n.string.Matches "^.*\\.local\\.$",
                            {
                              name
                                | String
                                | doc "The name or name pattern of the devices to filter."
                                | optional,
                              properties
                                | { _ | String }
                                | doc "The properties of the Zeroconf advertisement to filter."
                                | optional,
                              type
                                | js2n.string.Matches "^.*\\.local\\.$"
                                | doc "The service domain to search for devices.",
                            }
                          ]
                      )
                      | doc m%"
                        A list containing service domains to search for devices to discover via Zeroconf. Items can either be strings, which discovers all devices in the specific service domain, and/or objects which include filters. (useful for generic service domains like _http._tcp.local.)
                        A device is discovered if it matches one of the items, but inside the individual item all properties have to be matched.
                        https://developers.home-assistant.io/docs/creating_integration_manifest/#zeroconf
                      "%
                      | optional,
                  }
                ],
              Array Dyn
            ]),
        { _ | Dyn }
      ]