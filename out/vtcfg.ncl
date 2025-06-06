# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Channel" =
        {
            active-values
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ChannelActiveValue", { _ | Dyn } ]
              )
              | doc "A list of activated measurement values."
              | optional,
            comment
              | String
              | doc "User defined comment for this channel."
              | optional,
            name
              | js2n.string.Matches "^[a-zA-Z_][0-9a-zA-Z_]*$"
              | doc "User defined channel name.",
            start-state-enabled
              | Bool
              | doc "A flag indicating if the start state settings are actually applied."
              | optional,
            start-values
              | Array (
                std.contract.Sequence
                  [ refs."definitions.StartValue", { _ | Dyn } ]
              )
              | doc "A list of start value settings."
              | optional,
          },
      "definitions.ChannelActiveValue" =
        {
            cycle-time
              | String
              | doc "Transmission cycle time for this value (e.g. 10ms)."
              | optional,
            integration-time
              | String
              | doc "Integration time of this value (e.g. 10ms)."
              | optional,
            name | String | doc "Name of the value.",
          },
      "definitions.Condition" =
        {
            operand
              | Number
              | doc "The operand that is used for comparison."
              | optional,
            operation
              | std.enum.TagOrString
              | [| 'configured, 'close, 'open |]
              | doc "The operation that is to be constrained."
              | optional,
            operator
              | std.enum.TagOrString
              | [|
                'configured,
                'forbidden,
                'close,
                'open,
                'greater-or-equal,
                'greater-than,
                'not-equal,
                'equal,
                'less-or-equal,
                'less-than
              |]
              | doc "The operator that is used for comparison.",
            sysvar
              | String
              | doc "The system variable that is to be evaluated."
              | optional,
          },
      "definitions.Connector" =
        {
            int-to-ext
              | Bool
              | doc "A flag indicating if the internal voltage is also sent to the external voltage pins.",
            pins
              | Array (
                std.contract.Sequence [ refs."definitions.Pin", { _ | Dyn } ]
              )
              | doc "A list of pin configurations.",
            supply-mode
              | std.enum.TagOrString
              | [| 'external, 'internal |]
              | doc "Defines the supply mode for this VT2710 connector.",
          },
      "definitions.Constraint" =
        {
            channel
              | std.number.Integer
              | doc "The channel number this constraint belongs to (1 ... n).",
            conditions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Condition", { _ | Dyn } ]
              )
              | doc "List of constraint conditions.",
            value | String | doc "The value that shall be constrained.",
          },
      "definitions.DioDirection" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'mixed, 'output, 'input |] ],
      "definitions.GUILabel" =
        {
            name
              | String
              | doc "Name of the label (must match any of the predefined label names).",
            text
              | std.contract.any_of [ Number, String ]
              | doc "User defined text to show in the label.",
          },
      "definitions.Module" =
        {
            channels
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Channel", { _ | Dyn } ]
              )
              | doc "Describes a single channel."
              | optional,
            constraints
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Constraint", { _ | Dyn } ]
              )
              | doc "Describes the constraints for all channels of the module."
              | optional,
            gui-labels
              | Array (
                std.contract.Sequence
                  [ refs."definitions.GUILabel", { _ | Dyn } ]
              )
              | doc "Specifies the labels shown in the VT System Control Window (only for CANoe DE)."
              | optional,
            interface
              | std.number.Integer
              | doc "Interface version of the module's firmware."
              | optional,
            mdid | String | doc "Unique module identifier." | optional,
            module-channel | refs."definitions.ModuleChannel" | { _ | Dyn },
            module-specific-settings
              | refs."definitions.ModuleSpecificSettings"
              | { _ | Dyn }
              | optional,
            type
              | std.number.Integer
              | doc "Type of the VT System Module, e.g. 1004.",
            vdid | String | doc "Unique module identifier." | optional,
            vendor-id
              | std.number.Integer
              | doc "Identifiers the vendor of this VT System module."
              | optional,
          },
      "definitions.ModuleChannel" =
        {
            active-values
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ModuleChannelActiveValue", { _ | Dyn } ]
              )
              | doc "A list of active measurement values."
              | optional,
            comment | String | doc "User defined comment." | optional,
            name
              | js2n.string.Matches "^[a-zA-Z_][0-9a-zA-Z_]*$"
              | doc "User defined channel name.",
            start-state-enabled
              | Bool
              | doc "A flag indicating if the start state is actually applied."
              | optional,
            start-values
              | Array (
                std.contract.Sequence
                  [ refs."definitions.StartValue", { _ | Dyn } ]
              )
              | doc "A list of start values."
              | optional,
          },
      "definitions.ModuleChannelActiveValue" =
        {
            cycle-time
              | String
              | doc "Transmission cycle time of the measurement value (e.g. 10ms)."
              | optional,
            integration-time
              | String
              | doc "Integration time of this value (e.g. 10ms)."
              | optional,
            name | String | doc "Name of the measurement value to activate.",
          },
      "definitions.ModuleSpecificSettings" =
        {
            connectors
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Connector", { _ | Dyn } ]
              )
              | doc "VT2710: List of connector descriptions."
              | optional,
            lvds-connector-usage-1
              | std.enum.TagOrString
              | [| 'canoe, 'fpga |]
              | doc "VT2710: Sets the usage mode for LVDS connector 1."
              | optional,
            lvds-connector-usage-2
              | std.enum.TagOrString
              | [| 'canoe, 'fpga |]
              | doc "VT2710: Sets the usage mode for LVDS connector 2."
              | optional,
            piggy-type
              | std.enum.TagOrString
              | [| 'eth-1000-base-t1, 'eth-100-base-t1, 'psi5-sent, 'none |]
              | doc "VT6306: Type of piggy to use."
              | optional,
            smart-charging-mode
              | std.enum.TagOrString
              | [| 'legacy, 'ev, 'evse |]
              | doc "VT5201: smart charging mode for this module."
              | optional,
            supply-voltage | Number | doc "VT2710: Supply voltage." | optional,
            supply-voltage-lvds
              | Number
              | doc "VT2710: Supply voltage for LVDS."
              | optional,
            supply-voltage-lvds-enabled
              | Bool
              | doc "VT2710: Enables the LVDS supply voltage."
              | optional,
          },
      "definitions.Pin" =
        {
            dio-direction | refs."definitions.DioDirection" | String,
            used-for | refs."definitions.UsedFor" | String,
            user-fpga-mode | refs."definitions.UserFPGAMode" | String,
          },
      "definitions.StartValue" =
        {
            name | String | doc "Name of the start value.",
            value
              | refs."definitions.Value"
              | std.contract.any_of [ Number, String ],
          },
      "definitions.UsedFor" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'fpga, 'uart, 'rs485, 'rs232, 'dio, 'i2c, 'spi |]
            ],
      "definitions.UserFPGAMode" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'rs485, 'rs232, 'i2c, 'dout, 'din |] ],
      "definitions.Value" = std.contract.any_of [ Number, String ],
      "definitions.VtsControlWindow" =
        {
            flip-rack-order
              | Bool
              | doc "Flag to invert the rendering order of racks in the GUI.",
            serialized-config | String | doc "Internal configuration string.",
          },
      "definitions.vtcfg" =
        {
            modules
              | Array (
                std.contract.Sequence [ refs."definitions.Module", { _ | Dyn } ]
              )
              | doc "List of VT System Modules."
              | optional,
            version
              | String
              | doc "Version of the YAML file format, e.g. 19.0.0.",
            vts-control-window
              | refs."definitions.VtsControlWindow"
              | { _ | Dyn }
              | optional,
          },
    }
    in
  refs."definitions.vtcfg"