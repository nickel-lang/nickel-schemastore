# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.duration" = js2n.string.Matches "\\d[msh]$",
      "definitions.loglevel" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'fatal, 'error, 'info, 'debug, 'trace |]
            ],
      "definitions.mode" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'minpv, 'pv, 'now, 'off |] ],
      "definitions.namedObject" =
        { name | String, template | String | optional, type | String, .. },
      "definitions.pollMode" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'connected, 'charging, 'always |] ],
      "definitions.typedObject" = { type | String, .. },
    }
    in
  {
      chargers
        | Array refs."definitions.namedObject"
        | doc "List of chargers"
        | optional,
      database
        | { dsn | String | optional, type | String | optional, .. }
        | doc "Database"
        | optional,
      interval | refs."definitions.duration" | optional,
      levels | { _ | String } | doc "Log levels per area" | optional,
      loadpoints
        | Array
          {
            charger | String,
            disable
              | {
                delay | refs."definitions.duration" | optional,
                threshold | std.number.Integer | optional,
                ..
              }
              | optional,
            enable
              | {
                delay | refs."definitions.duration" | optional,
                threshold | std.number.Integer | optional,
                ..
              }
              | optional,
            guardDuration | refs."definitions.duration" | optional,
            maxCurrent | std.number.Integer | optional,
            meter | String | optional,
            minCurrent | std.number.Integer | optional,
            mode | refs."definitions.mode" | optional,
            phases | std.number.Integer | optional,
            "priority" | std.number.Integer | optional,
            soc
              | {
                estimate | Bool | optional,
                poll
                  | {
                    interval | refs."definitions.duration" | optional,
                    mode | refs."definitions.pollMode" | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            title | String | optional,
            vehicle | String | optional,
            ..
          }
        | doc "List of loadpoints"
        | optional,
      log | refs."definitions.loglevel" | doc "Global log level" | optional,
      meters
        | Array refs."definitions.namedObject"
        | doc "List of meters"
        | optional,
      network
        | {
          host | String | optional,
          port | std.number.Integer | optional,
          schema | String | optional,
          ..
        }
        | doc "Network"
        | optional,
      plant | String | optional,
      site
        | {
          maxGridSupplyWhileBatteryCharging | Number | optional,
          meters
            | {
              aux
                | std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [ js2n.array.UniqueItems, Array String ]
                  ]
                | doc "Auxiliary meters (0 or more)"
                | optional,
              battery
                | std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [
                        js2n.array.MinItems 1,
                        js2n.array.UniqueItems,
                        Array String
                      ]
                  ]
                | doc "Home battery (1 or more)"
                | optional,
              grid | String | optional,
              pv
                | std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [
                        js2n.array.MinItems 1,
                        js2n.array.UniqueItems,
                        Array String
                      ]
                  ]
                | doc "PV inverter/meter (1 or more)"
                | optional,
              ..
            },
          residualPower | Number | optional,
          title | String | optional,
          ..
        }
        | optional,
      sponsortoken | String | optional,
      tariffs
        | {
          currency | String | optional,
          feedin
            | refs."definitions.typedObject"
            | doc "Feed-in tariff"
            | optional,
          grid | refs."definitions.typedObject" | doc "Grid tariff" | optional,
          planner
            | refs."definitions.typedObject"
            | doc "Planner tariff"
            | optional,
          ..
        }
        | doc "Tariffs"
        | optional,
      telemetry | Bool | optional,
      vehicles
        | Array (
          std.contract.Sequence
            [
              refs."definitions.namedObject",
              {
                VIN | String | optional,
                cache | refs."definitions.duration" | optional,
                capacity | Number | optional,
                icon | String | optional,
                identifiers | Array Dyn | optional,
                onIdentify
                  | {
                    maxCurrent | std.number.Integer | optional,
                    minCurrent | std.number.Integer | optional,
                    mode | refs."definitions.mode" | optional,
                    "priority" | std.number.Integer | optional,
                    ..
                  }
                  | optional,
                password | String | optional,
                phases | std.number.Integer | optional,
                title | String | optional,
                user | String | optional,
                ..
              }
            ]
        )
        | doc "List of vehicles"
        | optional,
      ..
    }