# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.DatabaseBackupOptions" =
        {
            "// files" | String,
            "// hours" | String,
            "// path" | String,
            "// period" | String,
            disabled | Bool,
            files
              | Number
              | doc "Minimal number of backup files, after the deletion will be executed according to backupTime settings",
            hours
              | Number
              | doc "All backups older than configured hours will be deleted. But only if the number of files is greater than of backupNumber",
            path
              | String
              | doc "Absolute path to back-up directory or empty to back-up in data directory",
            period
              | Number
              | doc "By default backup every 2 hours. Time is in minutes. To disable backup set the value to 0",
          },
      "definitions.IoBJson" =
        {
            "// dataDir" | String,
            "// dnsResolution" | String,
            dataDir | String | doc "Always relative to iobroker.js-controller/",
            dnsResolution
              | std.enum.TagOrString
              | [| 'ipv4first, 'verbatim |]
              | doc "Use 'verbatim' for ipv6 first, else use 'ipv4first'",
            log
              | {
                level | refs."definitions.global.ioBroker.LogLevel" | String,
                maxDays | Number,
                noStdout | Bool,
                transport | { _ | Dyn },
              },
            multihostService
              | {
                enabled | Bool,
                password | String,
                persist | Bool,
                secure | Bool,
              },
            objects | refs."definitions.ObjectsDatabaseOptions" | { _ | Dyn },
            plugins | { _ | { enabled | Bool, .. } },
            states | refs."definitions.StatesDatabaseOptions" | { _ | Dyn },
            system
              | {
                "// allowShellCommands" | String,
                "// checkDiskInterval" | String,
                "// compact" | String,
                "// memLimitError" | String,
                "// memLimitWarn" | String,
                "// statisticsInterval" | String,
                allowShellCommands
                  | Bool
                  | doc "Allow execution of \"shell\" sendToHost commands",
                checkDiskInterval
                  | Number
                  | doc "Interval how often the disk size will be checked in ms",
                compact
                  | Bool
                  | doc "Controller will try to start the instances as a part of the same process. No spawn will be done. Only by adapters that support it and have flag compact flag in io-package.json",
                hostname | String | doc "If empty, determine use real hostname",
                instanceStartInterval
                  | Number
                  | doc "Interval to wait between multiple instances starts",
                memLimitError
                  | Number
                  | doc "If the available RAM is below this threshold on adapter start, an error will be logged.",
                memLimitWarn
                  | Number
                  | doc "If the available RAM is below this threshold on adapter start, a warning will be logged.",
                memoryLimitMB
                  | Number
                  | doc "Do not use more than memory limit mb by ioB process (0 to deactivate)",
                statisticsInterval
                  | Number
                  | doc "Interval how often the counters for input/output in adapters and controller will be updated in ms",
              },
          },
      "definitions.JsonlOptions" =
        {
            "// autoCompress (1)" | String,
            "// autoCompress (2)" | String,
            "// autoCompress (3)" | String,
            "// ignoreReadErrors" | String,
            "// throttleFS (1)" | String,
            "// throttleFS (2)" | String,
            autoCompress
              | { sizeFactor | Number, sizeFactorMinimumSize | Number, }
              | doc "The JSONL DB is append-only and will contain unnecessary entries after a while. It will be compressed when the uncompressed size is >= size * sizeFactor AND >= sizeFactorMinimumSize Note that too low values here will cause the DB to be rewritten often.",
            ignoreReadErrors
              | std.contract.Equal true
              | doc "If single lines in the DB are corrupted, they can be ignored without losing the whole DB.",
            throttleFS
              | {
                "// intervalMs" | String,
                "// maxBufferedCommands" | String,
                intervalMs
                  | Number
                  | doc "Write to the database file no more than every intervalMs milliseconds.",
                maxBufferedCommands
                  | Number
                  | doc "Force writing of buffered commands after so many changes. This reduces memory consumption and data loss in case of a crash.",
              }
              | doc "By default, the database immediately writes to the database file. Write access can be reduced using the throttleFS option. Be aware that buffered changes will be lost in case the process crashes",
          },
      "definitions.ObjectsDatabaseOptions" =
        {
            "// type" | String,
            backup | refs."definitions.DatabaseBackupOptions" | { _ | Dyn },
            connectTimeout | Number,
            dataDir | String,
            host | String,
            jsonlOptions | refs."definitions.JsonlOptions" | { _ | Dyn },
            noFileCache | Bool,
            options
              | {
                auth_pass | String,
                db | Number,
                family | Number,
                retry_max_count | Number,
                retry_max_delay | Number,
                tls
                  | {
                    ca | String | doc "The certificate content" | optional,
                    cert | String | doc "The cert file content" | optional,
                    key | String | doc "The key file content" | optional,
                    rejectUnauthorized
                      | Bool
                      | doc "Needs to be false with self-signed certs"
                      | optional,
                  }
                  | doc "As soon as the tls property is defined, redis will try to connect via tls (currently only for redis)"
                  | optional,
              },
            port | Number,
            type
              | std.enum.TagOrString
              | [| 'redis, 'file, 'jsonl |]
              | doc "Possible values: 'file' - [port 9001], 'jsonl' - [port 9001], 'redis' - [port 6379 or 26379 for sentinel].",
            writeFileInterval | Number,
          },
      "definitions.StatesDatabaseOptions" =
        {
            "// type" | String,
            backup | refs."definitions.DatabaseBackupOptions" | { _ | Dyn },
            connectTimeout | Number,
            dataDir | String,
            host | String,
            jsonlOptions | refs."definitions.JsonlOptions" | { _ | Dyn },
            maxQueue
              | Number
              | doc "Limit maximum number of log entries in the list (only read by adapter.ts from the config file)",
            options
              | {
                auth_pass | String,
                db | Number,
                family | Number,
                retry_max_count | Number,
                retry_max_delay | Number,
                tls
                  | {
                    ca | String | doc "The certificate content" | optional,
                    cert | String | doc "The cert file content" | optional,
                    key | String | doc "The key file content" | optional,
                    rejectUnauthorized
                      | Bool
                      | doc "Needs to be false with self-signed certs"
                      | optional,
                  }
                  | doc "As soon as the tls property is defined, redis will try to connect via tls (currently only for redis)"
                  | optional,
              },
            port | Number,
            type
              | std.enum.TagOrString
              | [| 'redis, 'file, 'jsonl |]
              | doc "Possible values: 'file' - [port 9001], 'jsonl' - [port 9001], 'redis' - [port 6379 or 26379 for sentinel].",
            writeFileInterval | Number,
          },
      "definitions.global.ioBroker.LogLevel" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'error, 'warn, 'info, 'debug, 'silly |]
            ],
    }
    in
  refs."definitions.IoBJson"