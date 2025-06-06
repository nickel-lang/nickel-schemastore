# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Description" = String,
      "definitions.FlexrayClusterParameters" =
        {
            gColdstartAttempts
              | std.number.Integer
              | js2n.number.Maximum 31
              | js2n.number.Minimum 2
              | doc "Number of attempts for a cold start before giving up (range 2-31)"
              | optional,
            gCycleCountMax
              | std.number.Integer
              | js2n.number.Maximum 63
              | js2n.number.Minimum 7
              | doc "Max cycle count value in a given cluster (range 7-63, must be an odd integer)"
              | optional,
            gListenNoise
              | std.number.Integer
              | js2n.number.Maximum 16
              | js2n.number.Minimum 2
              | doc "Upper limit for the startup listen timeout and wakeup listen timeout in the presence of noise; Used as a multiplier of pdListenTimeout (range 2 - 16)"
              | optional,
            gMacroPerCycle
              | std.number.Integer
              | js2n.number.Maximum 16000
              | js2n.number.Minimum 8
              | doc "Number of macroticks per cycle (range 8 - 16000)"
              | optional,
            gMaxWithoutClockCorrectionFatal
              | std.number.Integer
              | js2n.number.Maximum 15
              | js2n.number.Minimum 1
              | doc "Threshold used for testing the vClockCorrectionFailed counter (range 1 - 15)"
              | optional,
            gMaxWithoutClockCorrectionPassive
              | std.number.Integer
              | js2n.number.Maximum 15
              | js2n.number.Minimum 1
              | doc "Threshold used for testing the vClockCorrectionFailed counter (range 1 - 15)"
              | optional,
            gNumberOfMiniSlots
              | std.number.Integer
              | js2n.number.Maximum 7988
              | js2n.number.Minimum 0
              | doc "Number of mini slots (range 0 - 7988)"
              | optional,
            gNumberOfStaticSlots
              | std.number.Integer
              | js2n.number.Maximum 1023
              | js2n.number.Minimum 2
              | doc "Number of static slots in a cycle (range 2 - 1023)"
              | optional,
            gPayloadLengthStatic
              | std.number.Integer
              | js2n.number.Maximum 127
              | js2n.number.Minimum 0
              | doc "Length of the payload of a static frame in 16-Bits words (range 0 - 127)"
              | optional,
            gSyncFrameIDCountMax
              | std.number.Integer
              | js2n.number.Maximum 15
              | js2n.number.Minimum 2
              | doc "Maximum number of distinct sync frame identifiers present in a given cluster (range 2 - 15)"
              | optional,
            gdActionPointOffset
              | std.number.Integer
              | js2n.number.Maximum 63
              | js2n.number.Minimum 1
              | doc "Time offset for a static slot in macroticks (range 1 - 63)"
              | optional,
            gdDynamicSlotIdlePhase
              | std.number.Integer
              | js2n.number.Maximum 2
              | js2n.number.Minimum 0
              | doc "Duration of the idle phase within a dynamic slot in gdMiniSlots (range 0 - 2)"
              | optional,
            gdMiniSlot
              | std.number.Integer
              | js2n.number.Maximum 63
              | js2n.number.Minimum 2
              | doc "Duration of a mini slot in macroticks (2 - 63)"
              | optional,
            gdMiniSlotActionPointOffset
              | std.number.Integer
              | js2n.number.Maximum 31
              | js2n.number.Minimum 1
              | doc "Time offset for a mini slot in macroticks (range 1- 31)"
              | optional,
            gdStaticSlot
              | std.number.Integer
              | js2n.number.Maximum 664
              | js2n.number.Minimum 3
              | doc "Duration of a static slot in macroticks (range 3 - 664)"
              | optional,
            gdSymbolWindow
              | std.number.Integer
              | js2n.number.Maximum 162
              | js2n.number.Minimum 0
              | doc "Duration of the symbol window in macroticks (range 0 - 162)"
              | optional,
            gdSymbolWindowActionPointOffset
              | std.number.Integer
              | js2n.number.Maximum 63
              | js2n.number.Minimum 1
              | doc "Time offset for a static symbol windows in macroticks (range 1 - 63)"
              | optional,
            gdTSSTransmitter
              | std.number.Integer
              | js2n.number.Maximum 15
              | js2n.number.Minimum 1
              | doc "Duration of TSS (Transmission Start Sequence) in gdBits (range 1 - 15)"
              | optional,
            gdWakeupTxActive
              | std.number.Integer
              | js2n.number.Maximum 60
              | js2n.number.Minimum 15
              | doc "Duration of LOW Phase of a wakeup symbol in gdBit (range 15 - 60)"
              | optional,
            gdWakeupTxIdle
              | std.number.Integer
              | js2n.number.Maximum 180
              | js2n.number.Minimum 45
              | doc "Duration of the idle of a wakeup symbol in gdBit (45 - 180)"
              | optional,
            ..
          },
      "definitions.FlexrayController" =
        {
            ClusterParameters
              | refs."definitions.FlexrayClusterParameters"
              | { _ | Dyn }
              | optional,
            Name | refs."definitions.Name" | String,
            Network | refs."definitions.Network" | String | optional,
            NodeParameters
              | refs."definitions.FlexrayNodeParameters"
              | { _ | Dyn }
              | optional,
            Replay | refs."definitions.Replay" | { _ | Dyn } | optional,
            TxBufferConfigurations
              | refs."definitions.FlexrayTxBufferConfigurations"
              | Array Dyn
              | optional,
            UseTraceSinks
              | refs."definitions.UseTraceSinks"
              | Array Dyn
              | optional,
          },
      "definitions.FlexrayControllers" =
        Array (
            std.contract.Sequence
              [ refs."definitions.FlexrayController", { _ | Dyn } ]
          ),
      "definitions.FlexrayNodeParameters" =
        {
            pAllowHaltDueToClock
              | std.number.Integer
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc "Controls the transition to halt state due to clock synchronization errors. (values 0, 1)"
              | optional,
            pAllowPassiveToActive
              | std.number.Integer
              | js2n.number.Maximum 31
              | js2n.number.Minimum 0
              | doc "Required number of consecutive even / odd cycle pairs for normal passive to normal active (range 0 - 31)"
              | optional,
            pChannels
              | std.enum.TagOrString
              | [| 'None, 'AB, 'B, 'A |]
              | doc "Channel(s) to which the controller is connected"
              | optional,
            pClusterDriftDamping
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc "Cluster drift damping factor for rate correction in microticks (range 0 - 10)"
              | optional,
            pKeySlotId
              | std.number.Integer
              | js2n.number.Maximum 1023
              | js2n.number.Minimum 0
              | doc "Slot ID of the key slot (range 0 - 1023; value 0 means that there is no key slot)"
              | optional,
            pKeySlotOnlyEnabled
              | std.number.Integer
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc "Shall the node enter key slot only mode after startup. (values 0, 1) (AUTOSAR pSingleSlotEnabled)"
              | optional,
            pKeySlotUsedForStartup
              | std.number.Integer
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc "Key slot is used for startup (values 0, 1)"
              | optional,
            pKeySlotUsedForSync
              | std.number.Integer
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc "Key slot is used for sync (values 0, 1)"
              | optional,
            pLatestTx
              | std.number.Integer
              | js2n.number.Maximum 7988
              | js2n.number.Minimum 0
              | doc "Last mini slot which can be transmitted (range 0 - 7988)"
              | optional,
            pMacroInitialOffsetA
              | std.number.Integer
              | js2n.number.Maximum 68
              | js2n.number.Minimum 2
              | doc "Initial startup offset for frame reference point on channel A (range 2 - 68 macroticks)"
              | optional,
            pMacroInitialOffsetB
              | std.number.Integer
              | js2n.number.Maximum 68
              | js2n.number.Minimum 2
              | doc "Initial startup offset for frame reference point on channel B (range 2 - 68 macroticks)"
              | optional,
            pMicroInitialOffsetA
              | std.number.Integer
              | js2n.number.Maximum 239
              | js2n.number.Minimum 0
              | doc "Offset between secondary time reference and MT boundary (range 0 - 239 microticks)"
              | optional,
            pMicroInitialOffsetB
              | std.number.Integer
              | js2n.number.Maximum 239
              | js2n.number.Minimum 0
              | doc "Offset between secondary time reference and MT boundary (range 0 - 239 microticks)"
              | optional,
            pMicroPerCycle
              | std.number.Integer
              | js2n.number.Maximum 1280000
              | js2n.number.Minimum 960
              | doc "Nominal number of microticks in the communication cycle (range 960 - 1280000)"
              | optional,
            pOffsetCorrectionOut
              | std.number.Integer
              | js2n.number.Maximum 16082
              | js2n.number.Minimum 15
              | doc "Maximum permissible offset correction value (range 15 - 16082 microticks)"
              | optional,
            pOffsetCorrectionStart
              | std.number.Integer
              | js2n.number.Maximum 15999
              | js2n.number.Minimum 7
              | doc "Start of the offset correction phase within the NIT, (7 - 15999 macroticks)"
              | optional,
            pRateCorrectionOut
              | std.number.Integer
              | js2n.number.Maximum 3846
              | js2n.number.Minimum 3
              | doc "Maximum permissible rate correction value (range 3 - 3846 microticks)"
              | optional,
            pSamplesPerMicrotick
              | std.number.Integer
              | js2n.number.Maximum 2
              | js2n.number.Minimum 1
              | doc "Number of samples per microtick (values 1, 2)"
              | optional,
            pWakeupChannel
              | std.enum.TagOrString
              | [| 'B, 'A |]
              | doc "Channel used by the node to send a wakeup pattern"
              | optional,
            pWakeupPattern
              | std.number.Integer
              | js2n.number.Maximum 63
              | js2n.number.Minimum 0
              | doc "Number of repetitions of the wakeup symbol (range 0 - 63, value 0 or 1 prevents sending of WUP)"
              | optional,
            pdAcceptedStartupRange
              | std.number.Integer
              | js2n.number.Maximum 2743
              | js2n.number.Minimum 29
              | doc "Allowed deviation for startup frames during integration in microticks (range 29 - 2743)"
              | optional,
            pdListenTimeout
              | std.number.Integer
              | js2n.number.Maximum 2567692
              | js2n.number.Minimum 1926
              | doc "Duration of listen phase in microticks (range 1926 - 2567692)"
              | optional,
            pdMicrotick
              | std.enum.TagOrString
              | [| '"50ns", '"25ns", '"12.5ns" |]
              | doc "Duration of a FlexRay microtick"
              | optional,
            ..
          },
      "definitions.FlexrayTxBufferConfigurations" =
        Array
            {
              PPindicator | Bool | doc "Set the PPindicator" | optional,
              channels
                | std.enum.TagOrString
                | [| 'None, 'AB, 'B, 'A |]
                | doc "Channel(s)"
                | optional,
              headerCrc
                | std.number.Integer
                | doc "Header CRC, 11 bits"
                | optional,
              offset
                | std.number.Integer
                | js2n.number.Maximum 63
                | js2n.number.Minimum 0
                | doc "Base offset for cycle multiplexing (values 0 - 63)"
                | optional,
              repetition
                | std.number.Integer
                | js2n.number.Maximum 64
                | js2n.number.Minimum 0
                | doc "Repetition for cycle multiplexing (values 1, 2, 4, 8, 16, 32, 64)"
                | optional,
              slotId
                | std.number.Integer
                | js2n.number.Maximum 65535
                | js2n.number.Minimum 0
                | doc "The slot Id of frame"
                | optional,
              transmissionMode
                | std.enum.TagOrString
                | [| 'Continuous, 'SingleShot |]
                | doc "SingleShot or Continuous transmission mode"
                | optional,
              ..
            },
      "definitions.Logging" =
        {
            FlushLevel
              | std.enum.TagOrString
              | [| 'Off, 'Trace, 'Debug, 'Info, 'Warn, 'Error, 'Critical |]
              | optional,
            LogFromRemotes
              | Bool
              | doc "Enables receiving of remote log messages from other participants"
              | optional,
            Sinks
              | Array
                {
                  Level
                    | std.enum.TagOrString
                    | [|
                      'Off,
                      'Trace,
                      'Debug,
                      'Info,
                      'Warn,
                      'Error,
                      'Critical
                    |]
                    | optional,
                  LogName
                    | String
                    | doc "Log name; Results in the following filename: <LogName>_%y-%m-%dT%h-%m-%s.txt"
                    | optional,
                  Type | std.enum.TagOrString | [| 'Stdout, 'File, 'Remote |],
                },
          },
      "definitions.Name" = String,
      "definitions.Network" = String,
      "definitions.Replay" =
        {
            Direction
              | std.enum.TagOrString
              | [| 'Both, 'Receive, 'Send |]
              | doc "Filter messages to use from the trace source by their direction. May be Send, Receive or Both"
              | optional,
            MdfChannel
              | {
                ChannelName
                  | String
                  | doc "Name of an MDF channel in the trace source"
                  | optional,
                ChannelPath
                  | String
                  | doc "Path of an MDF channel's source information object"
                  | optional,
                ChannelSource
                  | String
                  | doc "Name of an MDF channel's source information object"
                  | optional,
                GroupName
                  | String
                  | doc "Name of an MDF channel group"
                  | optional,
                GroupPath
                  | String
                  | doc "Path of an MDF channel group's source information object"
                  | optional,
                GroupSource
                  | String
                  | doc "Name of an MDF channel group's source information object"
                  | optional,
                ..
              }
              | optional,
            UseTraceSource
              | String
              | doc "Name of a trace source used as a simulation message source for this controller"
              | optional,
            ..
          },
      "definitions.RpcFunctionName" = String,
      "definitions.Topic" = String,
      "definitions.UseTraceSinks" = Array Dyn,
    }
    in
  {
      "$schema" | String | doc "The schema file" | optional,
      CanControllers
        | Array
          {
            Name | refs."definitions.Name",
            Network | refs."definitions.Network" | optional,
            Replay | refs."definitions.Replay" | optional,
            UseTraceSinks | refs."definitions.UseTraceSinks" | optional,
          }
        | doc "Reconfigures the CanControllers of the participant"
        | optional,
      DataPublishers
        | Array
          {
            Name | refs."definitions.Name",
            Topic | refs."definitions.Topic" | optional,
            UseTraceSinks | refs."definitions.UseTraceSinks" | optional,
          }
        | doc "Reconfigures the DataPublishers of the participant"
        | optional,
      DataSubscribers
        | Array
          {
            Name | refs."definitions.Name",
            Topic | refs."definitions.Topic" | optional,
            UseTraceSinks | refs."definitions.UseTraceSinks" | optional,
          }
        | doc "Reconfigures the DataSubscribers of the participant"
        | optional,
      Description | refs."definitions.Description" | optional,
      EthernetControllers
        | Array
          {
            Name | refs."definitions.Name",
            Network | refs."definitions.Network" | optional,
            Replay | refs."definitions.Replay" | optional,
            UseTraceSinks | refs."definitions.UseTraceSinks" | optional,
          }
        | doc "Reconfigures the EthernetControllers of the participant"
        | optional,
      Extensions
        | { SearchPathHints | Array String | optional, }
        | doc "Optional configuration for the extension loading mechanism"
        | optional,
      FlexrayControllers | refs."definitions.FlexrayControllers" | optional,
      HealthCheck
        | {
          HardResponseTimeout
            | std.number.Integer
            | doc "If a simulation step is not finished before this limit, the participant enters error state. Optional; Unit is in milliseconds"
            | optional,
          SoftResponseTimeout
            | std.number.Integer
            | doc "If a simulation step is not finished before this limit, a warning is logged. Optional; Unit is in milliseconds"
            | optional,
        }
        | doc "Node to configure properties to determine the health status of the simulation"
        | optional,
      Includes
        | {
          Files | Array String | optional,
          SearchPathHints | Array String | optional,
          ..
        }
        | doc "Optional configuration to include other participant configurations files"
        | optional,
      LinControllers
        | Array
          {
            Name | refs."definitions.Name",
            Network | refs."definitions.Network" | optional,
            Replay | refs."definitions.Replay" | optional,
            UseTraceSinks | refs."definitions.UseTraceSinks" | optional,
          }
        | doc "Reconfigures the LinControllers of the participant"
        | optional,
      Logging | refs."definitions.Logging" | optional,
      Middleware
        | {
          ConnectAttempts | std.number.Integer | optional,
          RegistryUri | String | optional,
          TcpNoDelay | Bool | optional,
          TcpQuickAck | Bool | optional,
          TcpReceiveBufferSize | std.number.Integer | optional,
          TcpSendBufferSize | std.number.Integer | optional,
        }
        | doc "Optional configuration of the SIL Kit middleware"
        | optional,
      ParticipantName | String | doc "Name of the participant" | optional,
      RpcClients
        | Array
          {
            FunctionName | refs."definitions.RpcFunctionName" | optional,
            Name | refs."definitions.Name",
            UseTraceSinks | refs."definitions.UseTraceSinks" | optional,
          }
        | doc "Reconfigures the RpcClients of the participant"
        | optional,
      RpcServers
        | Array
          {
            FunctionName | refs."definitions.RpcFunctionName" | optional,
            Name | refs."definitions.Name",
            UseTraceSinks | refs."definitions.UseTraceSinks" | optional,
          }
        | doc "Reconfigures the RpcServers of the participant"
        | optional,
      Tracing
        | {
          TraceSinks
            | Array
              {
                Name | String | doc "Name of the trace sink" | optional,
                OutputPath | String | doc "File path of output file" | optional,
                Type
                  | std.enum.TagOrString
                  | [| 'Mdf4File, 'PcapPipe, 'PcapFile |]
                  | doc "File format specifier"
                  | optional,
              }
            | optional,
          TraceSources
            | Array
              {
                InputPath | String | doc "File path of input file" | optional,
                Name | String | doc "Name of the trace source" | optional,
                Type
                  | std.enum.TagOrString
                  | [| 'Mdf4File, 'PcapPipe, 'PcapFile |]
                  | doc "File format specifier"
                  | optional,
              }
            | optional,
          ..
        }
        | doc "Configures the tracing service of the participant"
        | optional,
      schemaVersion
        | std.contract.any_of [ std.number.Integer, String ]
        | doc "Version of the schema used to validate this document"
        | optional,
    }