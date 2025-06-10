# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.execution" =
        Array
            {
              concurrency
                | std.contract.any_of
                  [
                    { local | std.number.Integer | optional, .. },
                    std.number.Integer
                  ]
                | optional,
              executor | String | optional,
              hold-for | String | optional,
              scenario | js2n.string.Matches "[a-zA-Z0-9-_]" | optional,
              throughput
                | { local | std.number.Integer | optional, .. }
                | optional,
              ..
            },
      "definitions.executor" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'wdio,
                'tsung,
                'siege,
                'selenium,
                'rspec,
                'pytest,
                'pbench,
                'nunit,
                'newman,
                'molotov,
                'mocha,
                'locust,
                'junit,
                'jmeter,
                'grinder,
                'gatling,
                'apiritif,
                'ab
              |]
            ],
      "definitions.included-configs" = Array String,
      "definitions.modules" =
        {
            ab | { class | String | optional, .. } | optional,
            android-emulator | { class | String | optional, .. } | optional,
            apiritif | { class | String | optional, .. } | optional,
            appium | { class | String | optional, .. } | optional,
            blazemeter | { class | String | optional, .. } | optional,
            capturehar | { class | String | optional, .. } | optional,
            cloud
              | {
                class | String | optional,
                default-location | String | optional,
                ..
              }
              | optional,
            console
              | {
                class | String | optional,
                disable | Bool | optional,
                screen | String | optional,
                ..
              }
              | optional,
            consolidator
              | {
                class | String | optional,
                percentiles | Array Number | optional,
                ..
              }
              | optional,
            external-results-loader
              | { class | String | optional, .. }
              | optional,
            final-stats | { class | String | optional, .. } | optional,
            final_stats | { class | String | optional, .. } | optional,
            functional-consolidator
              | { class | String | optional, .. }
              | optional,
            gatling
              | {
                class | String | optional,
                java-opts | String | optional,
                properties
                  | {
                    "gatling.data.file.bufferSize"
                      | std.number.Integer
                      | optional,
                    ..
                  }
                  | optional,
                version | String | optional,
                ..
              }
              | optional,
            grinder
              | {
                class | String | optional,
                properties
                  | { "grinder.useConsole" | Bool | optional, .. }
                  | optional,
                ..
              }
              | optional,
            install-checker | { class | String | optional, .. } | optional,
            jmeter
              | {
                class | String | optional,
                plugins | Array String | optional,
                properties
                  | {
                    "jmeter.save.saveservice.autoflush" | String | optional,
                    "jmeter.save.saveservice.connect_time" | String | optional,
                    "jmeterengine.force.system.exit" | String | optional,
                    "summariser.name" | String | optional,
                    ..
                  }
                  | optional,
                protocol-handlers | { http | String | optional, .. } | optional,
                ..
              }
              | optional,
            junit | { class | String | optional, .. } | optional,
            junit-xml | { class | String | optional, .. } | optional,
            local | { class | String | optional, .. } | optional,
            locust | { class | String | optional, .. } | optional,
            mocha | { class | String | optional, .. } | optional,
            molotov | { class | String | optional, .. } | optional,
            monitoring | { class | String | optional, .. } | optional,
            newman | { class | String | optional, .. } | optional,
            nunit | { class | String | optional, .. } | optional,
            passfail | { class | String | optional, .. } | optional,
            pbench | { class | String | optional, .. } | optional,
            proxy2jmx | { class | String | optional, .. } | optional,
            pytest | { class | String | optional, .. } | optional,
            robot | { class | String | optional, .. } | optional,
            rspec | { class | String | optional, .. } | optional,
            screenshoter | { class | String | optional, .. } | optional,
            selenium | { class | String | optional, .. } | optional,
            shellexec | { class | String | optional, .. } | optional,
            siege | { class | String | optional, .. } | optional,
            testng | { class | String | optional, .. } | optional,
            tsung | { class | String | optional, .. } | optional,
            unpacker | { class | String | optional, .. } | optional,
            virtual-display | { class | String | optional, .. } | optional,
            wdio | { class | String | optional, .. } | optional,
            ..
          },
      "definitions.reporting" =
        Array (
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                { _ | Dyn },
                js2n.array.ArrayOf
                  (js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            criteria = js2n.array.ArrayOf String,
                            module =
                              std.contract.Sequence
                                  [
                                    refs."definitions.reporting-modules",
                                    String
                                  ],
                          },
                      required = {},
                    }),
                js2n.array.ArrayOf
                  (std.contract.Sequence
                    [ refs."definitions.reporting-modules", String ])
              ]
          ),
      "definitions.reporting-modules" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'junit-xml, 'blazemeter, 'console, 'final-stats |]
            ],
      "definitions.services" =
        Array
            {
              local
                | Array { metrics | Array String | optional, .. }
                | optional,
              module | String | optional,
              ..
            },
      "definitions.settings" =
        {
            aggregator | std.enum.TagOrString | [| 'consolidator |] | optional,
            artifacts-dir | String | optional,
            check-interval
              | std.contract.any_of [ std.number.Integer, String ]
              | optional,
            check-updates | Bool | optional,
            default-executor | refs."definitions.executor" | String | optional,
            env | { _ | Dyn } | optional,
            proxy
              | {
                address | String | optional,
                password | String | optional,
                ssl-cert | String | optional,
                ssl-client-cert | String | optional,
                username | String | optional,
                ..
              }
              | optional,
            verbose | Bool | optional,
            ..
          },
    }
    in
  {
      execution | refs."definitions.execution" | optional,
      included-configs | refs."definitions.included-configs" | optional,
      modules | refs."definitions.modules" | optional,
      reporting | refs."definitions.reporting" | optional,
      services | refs."definitions.services" | optional,
      settings | refs."definitions.settings" | optional,
      ..
    }