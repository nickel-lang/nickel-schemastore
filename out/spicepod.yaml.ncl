# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Acceleration" =
        {
            enabled | Bool | optional,
            engine | js2n.Nullable String | optional,
            indexes
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.IndexType", String ]
              }
              | optional,
            metrics
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Metrics", { _ | Dyn } ])
              | optional,
            mode | refs."definitions.Mode2" | String | optional,
            on_conflict
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.OnConflictBehavior", String ]
              }
              | optional,
            on_zero_results | refs."definitions.ZeroResultsAction" | optional,
            params
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Params", { _ | Dyn } ])
              | optional,
            primary_key | js2n.Nullable String | optional,
            ready_state
              | js2n.Nullable refs."definitions.ReadyState"
              | optional,
            refresh_append_overlap | js2n.Nullable String | optional,
            refresh_check_interval | js2n.Nullable String | optional,
            refresh_data_window | js2n.Nullable String | optional,
            refresh_jitter_enabled | Bool | optional,
            refresh_jitter_max | js2n.Nullable String | optional,
            refresh_mode
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.RefreshMode", String ])
              | optional,
            refresh_on_startup | refs."definitions.RefreshOnStartup" | optional,
            refresh_retry_enabled | Bool | optional,
            refresh_retry_max_attempts
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | optional,
            refresh_sql | js2n.Nullable String | optional,
            retention_check_enabled | Bool | optional,
            retention_check_interval | js2n.Nullable String | optional,
            retention_period | js2n.Nullable String | optional,
          },
      "definitions.ApiKey" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ReadOnly =
                          js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties = { key = String, },
                                required = { key = true, },
                              },
                      },
                  required = { ReadOnly = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ReadWrite =
                          js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties = { key = String, },
                                required = { key = true, },
                              },
                      },
                  required = { ReadWrite = true, },
                }
            ],
      "definitions.ApiKeyAuth" =
        { enabled | Bool | optional, keys | Array refs."definitions.ApiKey", },
      "definitions.Auth" =
        {
            api_key
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.ApiKeyAuth", { _ | Dyn } ])
              | optional,
          },
      "definitions.CacheKeyType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'sql, 'plan |] ],
      "definitions.Catalog" =
        {
            dataset_params
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Params", { _ | Dyn } ])
              | optional,
            dependsOn | Array String | optional,
            description | js2n.Nullable String | optional,
            from | String,
            include | Array String | optional,
            metadata | {  .. } | optional,
            metrics
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Metrics", { _ | Dyn } ])
              | optional,
            name | String,
            params
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Params", { _ | Dyn } ])
              | optional,
            ..
          },
      "definitions.Column" =
        {
            description
              | js2n.Nullable String
              | doc "Optional semantic details about the column"
              | optional,
            embeddings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ColumnLevelEmbeddingConfig", { _ | Dyn } ]
              )
              | optional,
            name | String,
            ..
          },
      "definitions.ColumnEmbeddingConfig" =
        {
            chunking
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.EmbeddingChunkConfig", { _ | Dyn } ])
              | optional,
            column | String,
            column_pk | js2n.Nullable (Array String) | optional,
            use | String | optional,
            ..
          },
      "definitions.ColumnLevelEmbeddingConfig" =
        {
            chunking
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.EmbeddingChunkConfig", { _ | Dyn } ])
              | optional,
            from | String | optional,
            row_id | js2n.Nullable (Array String) | optional,
            ..
          },
      "definitions.ComponentOrReference_for_Catalog" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.Catalog", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.ComponentReference", { _ | Dyn } ]
            ],
      "definitions.ComponentOrReference_for_Dataset" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.Dataset", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.ComponentReference", { _ | Dyn } ]
            ],
      "definitions.ComponentOrReference_for_Embeddings" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.Embeddings", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.ComponentReference", { _ | Dyn } ]
            ],
      "definitions.ComponentOrReference_for_Eval" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.Eval", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.ComponentReference", { _ | Dyn } ]
            ],
      "definitions.ComponentOrReference_for_Model" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.Model", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.ComponentReference", { _ | Dyn } ]
            ],
      "definitions.ComponentOrReference_for_Tool" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.Tool", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.ComponentReference", { _ | Dyn } ]
            ],
      "definitions.ComponentOrReference_for_View" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.View", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.ComponentReference", { _ | Dyn } ]
            ],
      "definitions.ComponentOrReference_for_Worker" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.Worker", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.ComponentReference", { _ | Dyn } ]
            ],
      "definitions.ComponentReference" =
        { dependsOn | Array String | optional, ref | String, .. },
      "definitions.CorsConfig" =
        {
            allowed_origins | Array String | optional,
            enabled | Bool | optional,
          },
      "definitions.Dataset" =
        {
            acceleration
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Acceleration", { _ | Dyn } ])
              | optional,
            columns
              | Array (
                std.contract.Sequence [ refs."definitions.Column", { _ | Dyn } ]
              )
              | optional,
            dependsOn | Array String | optional,
            description | js2n.Nullable String | optional,
            embeddings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ColumnEmbeddingConfig", { _ | Dyn } ]
              )
              | optional,
            from | String | optional,
            has_metadata_table | js2n.Nullable Bool | optional,
            metadata | {  .. } | optional,
            metrics
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Metrics", { _ | Dyn } ])
              | optional,
            mode | refs."definitions.Mode" | String | optional,
            name | String,
            params
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Params", { _ | Dyn } ])
              | optional,
            ready_state | refs."definitions.ReadyState" | optional,
            replication
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Replication", { _ | Dyn } ])
              | optional,
            time_column | js2n.Nullable String | optional,
            time_format
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.TimeFormat", String ])
              | optional,
            time_partition_column | js2n.Nullable String | optional,
            time_partition_format
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.TimeFormat", String ])
              | optional,
            unsupported_type_action
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.UnsupportedTypeAction", String ])
              | optional,
          },
      "definitions.EmbeddingChunkConfig" =
        {
            enabled | Bool | optional,
            overlap_size
              | std.number.Integer
              | js2n.number.Minimum 0
              | optional,
            target_chunk_size
              | std.number.Integer
              | js2n.number.Minimum 0
              | optional,
            trim_whitespace | Bool | optional,
            ..
          },
      "definitions.Embeddings" =
        {
            datasets | Array String | optional,
            dependsOn | Array String | optional,
            files
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ModelFile", { _ | Dyn } ]
              )
              | optional,
            from | String,
            metrics
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Metrics", { _ | Dyn } ])
              | optional,
            name | String,
            params | { _ | String } | optional,
            ..
          },
      "definitions.Eval" =
        {
            dataset | String,
            dependsOn | Array String | optional,
            description | js2n.Nullable String | optional,
            metrics
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Metrics", { _ | Dyn } ])
              | optional,
            name | String,
            scorers | Array String,
            ..
          },
      "definitions.Extension" =
        { enabled | Bool | optional, params | { _ | String } | optional, .. },
      "definitions.Flight" =
        { max_message_size | js2n.Nullable String | optional, .. },
      "definitions.HashingAlgorithm" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'ahash, 'siphash |] ],
      "definitions.IndexType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'unique, 'enabled |] ],
      "definitions.Metric" = { enabled | Bool | optional, name | String, .. },
      "definitions.Metrics" =
        {
            metrics
              | Array (
                std.contract.Sequence [ refs."definitions.Metric", { _ | Dyn } ]
              ),
            ..
          },
      "definitions.Mode" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'read_write, 'read |] ],
      "definitions.Mode2" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'file, 'memory |] ],
      "definitions.Model" =
        {
            datasets | Array String | optional,
            dependsOn | Array String | optional,
            description | js2n.Nullable String | optional,
            files
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ModelFile", { _ | Dyn } ]
              )
              | optional,
            from | String,
            metadata | {  .. } | optional,
            metrics
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Metrics", { _ | Dyn } ])
              | optional,
            name | String,
            params | {  .. } | optional,
            ..
          },
      "definitions.ModelFile" =
        {
            name | js2n.Nullable String | optional,
            params | js2n.Nullable ({ _ | String }) | optional,
            path | String,
            type
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.ModelFileType", String ])
              | doc "Should use [`Self::file_type`] to access."
              | optional,
            ..
          },
      "definitions.ModelFileType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'generationConfig,
                'tokenizerConfig,
                'tokenizer,
                'config,
                'weights
              |]
            ],
      "definitions.OnConflictBehavior" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'upsert, 'drop |] ],
      "definitions.Params" = { _ | Dyn },
      "definitions.ReadyState" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'on_load |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'on_registration |] ]
            ],
      "definitions.RefreshMode" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'changes, 'append, 'full |] ],
      "definitions.RefreshOnStartup" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'always |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'auto |] ]
            ],
      "definitions.Replication" = { enabled | Bool | optional, .. },
      "definitions.ResultsCache" =
        {
            cache_key_type
              | refs."definitions.CacheKeyType"
              | String
              | optional,
            cache_max_size | js2n.Nullable String | optional,
            enabled | Bool | optional,
            eviction_policy | js2n.Nullable String | optional,
            hashing_algorithm
              | refs."definitions.HashingAlgorithm"
              | String
              | optional,
            item_ttl | js2n.Nullable String | optional,
            ..
          },
      "definitions.RouterConfig" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        from = String,
                        order =
                          std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 0 ],
                      },
                  required = { from = true, order = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        from = String,
                        weight =
                          std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 0 ],
                      },
                  required = { from = true, weight = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { from = String, },
                  required = { from = true, },
                }
            ],
      "definitions.Runtime" =
        {
            auth
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.Auth", { _ | Dyn } ])
              | optional,
            cors | refs."definitions.CorsConfig" | { _ | Dyn } | optional,
            dataset_load_parallelism
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | optional,
            flight
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Flight", { _ | Dyn } ])
              | optional,
            memory_limit
              | js2n.Nullable String
              | doc "Specifies the runtime memory limit. When configured, will spill to disk for supported queries larger than memory."
              | optional,
            params | { _ | String } | optional,
            results_cache
              | refs."definitions.ResultsCache"
              | { _ | Dyn }
              | optional,
            shutdown_timeout
              | js2n.Nullable String
              | doc "Configures how long the runtime waits for connections to be gracefully drained and components to shut down cleanly during runtime termination"
              | optional,
            task_history
              | refs."definitions.TaskHistory"
              | { _ | Dyn }
              | optional,
            telemetry
              | refs."definitions.TelemetryConfig"
              | { _ | Dyn }
              | optional,
            temp_directory
              | js2n.Nullable String
              | doc "Configures where the runtime will store temporary files needed for operations like spilling to disk for queries & accelerations that are larger than memory."
              | optional,
            tls
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.TlsConfig", { _ | Dyn } ])
              | doc "If set, the runtime will configure all endpoints to use TLS"
              | optional,
            tracing
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.TracingConfig", { _ | Dyn } ])
              | optional,
          },
      "definitions.Secret" =
        {
            description | js2n.Nullable String | optional,
            from | String,
            name | String,
            params
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Params", { _ | Dyn } ])
              | optional,
            ..
          },
      "definitions.SpicepodKind" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'Spicepod |] ],
      "definitions.SpicepodVersion" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'v1, 'v1beta1 |] ],
      "definitions.TaskHistory" =
        {
            captured_output | String | optional,
            enabled | Bool | optional,
            retention_check_interval | String | optional,
            retention_period | String | optional,
          },
      "definitions.TelemetryConfig" =
        {
            enabled | Bool | optional,
            properties | { _ | String } | optional,
            user_agent_collection
              | refs."definitions.UserAgentCollection"
              | String
              | optional,
          },
      "definitions.TimeFormat" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'date,
                'ISO8601,
                'unix_millis,
                'unix_seconds,
                'timestamptz,
                'timestamp
              |]
            ],
      "definitions.TlsConfig" =
        {
            certificate
              | js2n.Nullable String
              | doc "A PEM encoded certificate"
              | optional,
            certificate_file
              | js2n.Nullable String
              | doc "A filesystem path to a file containing the PEM encoded certificate"
              | optional,
            enabled
              | Bool
              | doc "If set, the runtime will configure all endpoints to use TLS",
            key
              | js2n.Nullable String
              | doc "A PEM encoded private key"
              | optional,
            key_file
              | js2n.Nullable String
              | doc "A filesystem path to a file containing the PEM encoded private key"
              | optional,
          },
      "definitions.Tool" =
        {
            dependsOn | Array String | optional,
            description | js2n.Nullable String | optional,
            env | { _ | String } | optional,
            from | String,
            metrics
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Metrics", { _ | Dyn } ])
              | optional,
            name | String,
            params | { _ | String } | optional,
            ..
          },
      "definitions.TracingConfig" =
        {
            zipkin_enabled | Bool,
            zipkin_endpoint | js2n.Nullable String | optional,
          },
      "definitions.UnsupportedTypeAction" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'string, 'ignore, 'warn, 'error |] ],
      "definitions.UserAgentCollection" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'disabled, 'full |] ],
      "definitions.View" =
        {
            acceleration
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Acceleration", { _ | Dyn } ])
              | optional,
            columns
              | Array (
                std.contract.Sequence [ refs."definitions.Column", { _ | Dyn } ]
              )
              | optional,
            dependsOn | Array String | optional,
            description | js2n.Nullable String | optional,
            metadata | {  .. } | optional,
            name | String,
            ready_state | refs."definitions.ReadyState" | optional,
            sql
              | js2n.Nullable String
              | doc "Inline SQL that describes a view."
              | optional,
            sql_ref
              | js2n.Nullable String
              | doc "Reference to a SQL file that describes a view."
              | optional,
            ..
          },
      "definitions.Worker" =
        {
            description | js2n.Nullable String | optional,
            models
              | Array (
                std.contract.Sequence
                  [ refs."definitions.RouterConfig", { _ | Dyn } ]
              )
              | optional,
            name | String,
            params | {  .. } | optional,
            ..
          },
      "definitions.ZeroResultsAction" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'return_empty |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'use_source |] ]
            ],
    }
    in
  {
      catalogs
        | Array refs."definitions.ComponentOrReference_for_Catalog"
        | optional,
      datasets
        | Array refs."definitions.ComponentOrReference_for_Dataset"
        | optional,
      dependencies | Array String | optional,
      embeddings
        | Array refs."definitions.ComponentOrReference_for_Embeddings"
        | optional,
      evals | Array refs."definitions.ComponentOrReference_for_Eval" | optional,
      extensions
        | { _ | refs."definitions.Extension" }
        | doc "Optional extensions configuration"
        | optional,
      kind | refs."definitions.SpicepodKind" | doc "The kind of Spicepod",
      metadata | {  .. } | optional,
      models
        | Array refs."definitions.ComponentOrReference_for_Model"
        | optional,
      name | String | doc "The name of the Spicepod",
      runtime
        | refs."definitions.Runtime"
        | doc "Optional runtime configuration"
        | optional,
      secrets
        | Array refs."definitions.Secret"
        | doc "Optional spicepod secrets configuration Default value is: ```yaml secrets: - from: env name: env ```"
        | optional,
      tools | Array refs."definitions.ComponentOrReference_for_Tool" | optional,
      version
        | refs."definitions.SpicepodVersion"
        | doc "The version of the Spicepod",
      views | Array refs."definitions.ComponentOrReference_for_View" | optional,
      workers
        | Array refs."definitions.ComponentOrReference_for_Worker"
        | optional,
      ..
    }