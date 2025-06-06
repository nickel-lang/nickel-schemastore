# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AutoDiscover" =
        {
            addNewBindings
              | Bool
              | doc "Automatically add new bindings discovered from the source."
              | optional,
            evolveIncompatibleCollections
              | Bool
              | doc "Whether to automatically evolve collections and/or materialization bindings to handle changes to collections that would otherwise be incompatible with the existing catalog."
              | optional,
          },
      "definitions.Capture" =
        js2n.string.Matches
            "^[\\p{Letter}\\p{Number}\\-_\\.]+(/[\\p{Letter}\\p{Number}\\-_\\.]+)*$",
      "definitions.CaptureBinding" =
        {
            backfill
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc m%"
                Every increment of this counter will result in a new backfill of this binding from the captured endpoint. For example when capturing from a SQL table, incrementing this counter will cause the table to be re-captured in its entirety from the source database.
                
                Note that a backfill does *not* truncate the target collection, and documents published by a backfilled binding will coexist with (and be ordered after) any documents which were published as part of a preceding backfill.
              "%
              | optional,
            disable
              | Bool
              | doc "Disabled bindings are inactive, and not validated. They can be used to represent discovered resources that are intentionally not being captured."
              | optional,
            resource
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
            target | refs."definitions.Collection" | String,
          },
      "definitions.CaptureDef" =
        {
            autoDiscover
              | refs."definitions.AutoDiscover"
              | { _ | Dyn }
              | optional,
            bindings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CaptureBinding", { _ | Dyn } ]
              ),
            delete
              | Bool
              | doc "When true, a publication will delete this capture."
              | optional,
            endpoint | refs."definitions.CaptureEndpoint",
            expectPubId
              | refs."definitions.Id"
              | String
              | doc "When present, a publication of the capture will fail if the last publication ID in the control plane doesn't match this value."
              | optional,
            interval
              | js2n.Nullable (js2n.string.Matches "^\\d+(s|m|h)$")
              | doc m%"
                Configured intervals are applicable only to connectors which are unable to continuously tail their source, and which instead produce a current quantity of output and then exit. Flow will start the connector again after the given interval of time has passed.
                
                Intervals are relative to the start of an invocation and not its completion. For example, if the interval is five minutes, and an invocation of the capture finishes after two minutes, then the next invocation will be started after three additional minutes.
              "%
              | optional,
            shards | refs."definitions.ShardTemplate" | { _ | Dyn } | optional,
          },
      "definitions.CaptureEndpoint" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        connector =
                          std.contract.Sequence
                              [
                                refs."definitions.ConnectorConfig",
                                { _ | Dyn }
                              ],
                      },
                  required = { connector = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        local =
                          std.contract.Sequence
                              [ refs."definitions.LocalConfig", { _ | Dyn } ],
                      },
                  required = { local = true, },
                }
            ],
      "definitions.Collection" =
        js2n.string.Matches
            "^[\\p{Letter}\\p{Number}\\-_\\.]+(/[\\p{Letter}\\p{Number}\\-_\\.]+)*$",
      "definitions.CollectionDef" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      std.contract.Sequence
                        [
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    readSchema = js2n.Never,
                                    writeSchema = js2n.Never,
                                  },
                              required = {},
                            },
                          js2n.record.Required [ "schema" ]
                        ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      std.contract.Sequence
                        [
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties = { schema = js2n.Never, },
                              required = {},
                            },
                          js2n.record.Required [ "readSchema", "writeSchema" ]
                        ],
                      Array Dyn
                    ]
                ],
              {
                delete
                  | Bool
                  | doc "When true, a publication will delete this collection."
                  | optional,
                derive | refs."definitions.Derivation" | { _ | Dyn } | optional,
                expectPubId
                  | refs."definitions.Id"
                  | String
                  | doc "When present, a publication of the collection will fail if the last publication ID in the control plane doesn't match this value."
                  | optional,
                journals
                  | refs."definitions.JournalTemplate"
                  | { _ | Dyn }
                  | optional,
                key | refs."definitions.CompositeKey" | Array Dyn,
                projections
                  | { _ | refs."definitions.Projection" }
                  | js2n.record.FieldsMatch
                    "^([^/~]|(~[01]))+(/([^/~]|(~[01]))+)*$"
                  | optional,
                readSchema | refs."definitions.Schema" | optional,
                reset
                  | Bool
                  | doc "When true, a publication will reset this collection. Resetting a collection is equivalent to deleting and then re-creating the collection, but is applied as a single publication."
                  | optional,
                schema | refs."definitions.Schema" | optional,
                writeSchema | refs."definitions.Schema" | optional,
              }
            ],
      "definitions.CompositeKey" =
        Array (
            std.contract.Sequence [ refs."definitions.JsonPointer", String ]
          ),
      "definitions.CompressionCodec" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'GZIP_OFFLOAD_DECOMPRESSION,
                'SNAPPY,
                'ZSTANDARD,
                'GZIP,
                'NONE
              |]
            ],
      "definitions.ConnectorConfig" =
        {
            config
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
            image | String,
            ..
          },
      "definitions.DekafConfig" =
        {
            config
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
            variant
              | String
              | doc "Since we support integrating with a bunch of different providers via Dekaf, this allows us to store which of those connector variants this particular Dekaf connector was created as, in order to e.g link to the correct docs URL, show the correct name and logo, etc.",
            ..
          },
      "definitions.Derivation" =
        {
            shards | refs."definitions.ShardTemplate" | { _ | Dyn } | optional,
            shuffleKeyTypes
              | Array (
                std.contract.Sequence [ refs."definitions.ShuffleType", String ]
              )
              | doc "Typically you omit this and Flow infers it from your transform shuffle keys. In some circumstances, Flow may require that you explicitly tell it of your shuffled key types."
              | optional,
            transforms
              | Array (
                std.contract.Sequence
                  [ refs."definitions.TransformDef", { _ | Dyn } ]
              ),
            using | refs."definitions.DeriveUsing",
          },
      "definitions.DeriveUsing" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        connector =
                          std.contract.Sequence
                              [
                                refs."definitions.ConnectorConfig",
                                { _ | Dyn }
                              ],
                      },
                  required = { connector = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        sqlite =
                          std.contract.Sequence
                              [
                                refs."definitions.DeriveUsingSqlite",
                                { _ | Dyn }
                              ],
                      },
                  required = { sqlite = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        typescript =
                          std.contract.Sequence
                              [
                                refs."definitions.DeriveUsingTypescript",
                                { _ | Dyn }
                              ],
                      },
                  required = { typescript = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        local =
                          std.contract.Sequence
                              [ refs."definitions.LocalConfig", { _ | Dyn } ],
                      },
                  required = { local = true, },
                }
            ],
      "definitions.DeriveUsingSqlite" =
        {
            migrations
              | Array (js2n.OneOf [ js2n.string.Matches "^[^ ]+$", String ])
              | doc "Migrations may be provided as an inline string, or as a relative URL to a file containing the migration SQL."
              | optional,
          },
      "definitions.DeriveUsingTypescript" =
        {
            module
              | js2n.OneOf [ js2n.string.Matches "^[^ ]+$", String ]
              | doc "Module is either a relative URL of a TypeScript module file, or is an inline representation of a Typescript module. The module must have a exported Derivation variable which is an instance implementing the corresponding Derivation interface.",
          },
      "definitions.Field" =
        js2n.string.Matches "^([^/~]|(~[01]))+(/([^/~]|(~[01]))+)*$",
      "definitions.FragmentTemplate" =
        {
            compressionCodec
              | refs."definitions.CompressionCodec"
              | String
              | optional,
            flushInterval
              | js2n.Nullable (js2n.string.Matches "^\\d+(s|m|h)$")
              | doc "into cloud storage. Intervals are converted into uniform time segments: 24h will \"roll\" all fragments at midnight UTC every day, 1h at the top of every hour, 15m a :00, :15, :30, :45 past the hour, and so on. If not set, then fragments are not flushed on time-based intervals."
              | optional,
            length
              | std.number.Integer
              | js2n.number.Maximum 4096
              | js2n.number.Minimum 32
              | doc "When a collection journal fragment reaches this threshold, it will be closed off and pushed to cloud storage. If not set, a default of 512MB is used."
              | optional,
            retention
              | js2n.Nullable (js2n.string.Matches "^\\d+(s|m|h)$")
              | doc "If not set, then fragments are retained indefinitely."
              | optional,
          },
      "definitions.FullSource" =
        {
            name | refs."definitions.Collection" | String,
            notAfter
              | js2n.Nullable String
              | doc "Source collection documents published after this date-time are filtered. `notAfter` is *only* a filter. Updating its value will not cause Flow to re-process documents that have already been read. Optional. Default is to process all documents."
              | optional,
            notBefore
              | js2n.Nullable String
              | doc "Source collection documents published before this date-time are filtered. `notBefore` is *only* a filter. Updating its value will not cause Flow to re-process documents that have already been read. Optional. Default is to process all documents."
              | optional,
            partitions
              | refs."definitions.PartitionSelector"
              | { _ | Dyn }
              | optional,
          },
      "definitions.Id" = String,
      "definitions.JournalTemplate" =
        { fragments | refs."definitions.FragmentTemplate" | { _ | Dyn }, },
      "definitions.JsonPointer" = js2n.string.Matches "^(/([^/~]|(~[01]))+)*$",
      "definitions.LocalConfig" =
        {
            command | Array String,
            config
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
            env | { _ | String } | optional,
            protobuf | Bool | optional,
            ..
          },
      "definitions.MaterializationBinding" =
        {
            backfill
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "Every increment of this counter will result in a new backfill of this binding from its source collection to its materialized resource. For example when materializing to a SQL table, incrementing this counter causes the table to be dropped and then rebuilt by re-reading the source collection."
              | optional,
            disable
              | Bool
              | doc "Disabled bindings are inactive, and not validated."
              | optional,
            fields
              | refs."definitions.MaterializationFields"
              | { _ | Dyn }
              | optional,
            onIncompatibleSchemaChange
              | refs."definitions.OnIncompatibleSchemaChange"
              | doc "This setting is used to determine the action to take when a schema change is rejected due to incompatibility with the target resource. By default, the binding will have its `backfill` counter incremented, causing it to be re-materialized from the source collection."
              | optional,
            "priority"
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc m%"
                When all bindings are of equal priority, Flow processes documents according to their associated publishing time, as encoded in the document UUID.
                
                However, when one binding has a higher priority than others, then *all* ready documents are processed through the binding before *any* documents of other bindings are processed.
              "%
              | optional,
            resource
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
            source | refs."definitions.Source",
          },
      "definitions.MaterializationDef" =
        {
            bindings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.MaterializationBinding", { _ | Dyn } ]
              ),
            delete
              | Bool
              | doc "When true, a publication will delete this materialization."
              | optional,
            endpoint | refs."definitions.MaterializationEndpoint",
            expectPubId
              | refs."definitions.Id"
              | String
              | doc "When present, a publication of the materialization will fail if the last publication ID in the control plane doesn't match this value."
              | optional,
            onIncompatibleSchemaChange
              | refs."definitions.OnIncompatibleSchemaChange"
              | doc "This can be overridden on a per-binding basis."
              | optional,
            shards | refs."definitions.ShardTemplate" | { _ | Dyn } | optional,
            source | refs."definitions.SourceType" | optional,
          },
      "definitions.MaterializationEndpoint" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        connector =
                          std.contract.Sequence
                              [
                                refs."definitions.ConnectorConfig",
                                { _ | Dyn }
                              ],
                      },
                  required = { connector = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        local =
                          std.contract.Sequence
                              [ refs."definitions.LocalConfig", { _ | Dyn } ],
                      },
                  required = { local = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dekaf =
                          std.contract.Sequence
                              [ refs."definitions.DekafConfig", { _ | Dyn } ],
                      },
                  required = { dekaf = true, },
                }
            ],
      "definitions.MaterializationFields" =
        {
            exclude
              | Array (
                std.contract.Sequence [ refs."definitions.Field", String ]
              )
              | doc "This removes from recommended projections, where enabled."
              | optional,
            include
              | {  .. }
              | doc m%"
                This supplements any recommended fields, where enabled. Values are passed to and interpreted by the connector, which may use it to customize DDL generation or other behaviors with respect to the field. Consult connector documentation to see what it supports.
                
                Note that this field is in the process of being renamed to `require`, though `include` will continue to be accepted as an alias.
              "%
              | optional,
            recommended | Bool,
          },
      "definitions.OnIncompatibleSchemaChange" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'abort |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'backfill |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'disableBinding |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'disableTask |] ]
            ],
      "definitions.PartitionSelector" =
        {
            exclude
              | { _ | Array js2n.Always }
              | doc "Partition field names and values which are excluded from the source collection. Any documents matching *any one* of the partition values will be excluded."
              | optional,
            include
              | { _ | Array js2n.Always }
              | doc "Partition field names and corresponding values which must be matched from the Source collection. Only documents having one of the specified values across all specified partition names will be matched. For example, source: [App, Web] region: [APAC] would mean only documents of 'App' or 'Web' source and also occurring in the 'APAC' region will be processed."
              | optional,
          },
      "definitions.Projection" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.JsonPointer", String ],
              {
                location | refs."definitions.JsonPointer" | String,
                partition | Bool | optional,
              }
            ],
      "definitions.RelativeUrl" = js2n.string.Matches "^[^ ]+$",
      "definitions.Schema" =
        std.contract.any_of
            [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
      "definitions.ShardTemplate" =
        {
            disable | Bool | optional,
            hotStandbys
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "Hot standbys of a shard actively replicate the shard's state to another machine, and are able to be quickly promoted to take over processing for the shard should its current primary fail. If not set, then no hot standbys are maintained. EXPERIMENTAL: this field MAY be removed."
              | optional,
            logLevel
              | String
              | doc "Log levels may currently be \"error\", \"warn\", \"info\", \"debug\", or \"trace\". If not set, the effective log level is \"info\"."
              | optional,
            maxTxnDuration
              | js2n.Nullable (js2n.string.Matches "^\\d+(s|m|h)$")
              | doc "This duration upper-bounds the amount of time during which a transaction may process documents before it must flush and commit. It may run for less time if there aren't additional ready documents for it to process. If not set, the maximum duration defaults to five minutes for materializations, and one second for captures and derivations. EXPERIMENTAL: this field MAY be removed."
              | optional,
            minTxnDuration
              | js2n.Nullable (js2n.string.Matches "^\\d+(s|m|h)$")
              | doc "This duration lower-bounds the amount of time during which a transaction must process documents before it must flush and commit. It may run for more time if additional documents are available. The default value is zero seconds. Larger values may result in more data reduction, at the cost of more latency. EXPERIMENTAL: this field MAY be removed."
              | optional,
            readChannelSize
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "Larger values are recommended for tasks having more than one shard split and long, bursty transaction durations. If not set, a reasonable default (currently 4,096) is used. EXPERIMENTAL: this field is LIKELY to be removed."
              | optional,
            ringBufferSize
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "The ring buffer is a performance optimization only: catalog tasks will replay portions of journals as needed when messages aren't available in the buffer. It can remain small if upstream task transactions are small, but larger transactions will achieve better performance with a larger ring. If not set, a reasonable default (currently 65,536) is used. EXPERIMENTAL: this field is LIKELY to be removed."
              | optional,
          },
      "definitions.Shuffle" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'any |] ],
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        key =
                          std.contract.Sequence
                              [ refs."definitions.CompositeKey", Array Dyn ],
                      },
                  required = { key = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { lambda = js2n.Always, },
                  required = { lambda = true, },
                }
            ],
      "definitions.ShuffleType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'string, 'integer, 'boolean |] ],
      "definitions.Source" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.FullSource", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.Collection", String ]
            ],
      "definitions.SourceDef" =
        {
            capture
              | refs."definitions.Capture"
              | String
              | doc "Capture name"
              | optional,
            deltaUpdates
              | Bool
              | doc "When adding new bindings from a source capture to a materialization, should the new bindings be marked as delta updates"
              | optional,
            targetNaming
              | refs."definitions.TargetNaming"
              | doc "When adding new bindings from a source capture to a materialization, how should the schema of the materialization binding be set"
              | optional,
          },
      "definitions.SourceType" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.Capture", String ],
              std.contract.Sequence
                [ refs."definitions.SourceDef", { _ | Dyn } ]
            ],
      "definitions.TargetNaming" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'noSchema |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'withSchema |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'prefixSchema |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'prefixNonDefaultSchema |] ]
            ],
      "definitions.TestDef" =
        {
            delete
              | Bool
              | doc "When true, a publication will delete this test."
              | optional,
            description | String | optional,
            expectPubId
              | refs."definitions.Id"
              | String
              | doc "When present, a publication of the test will fail if the last publication ID in the control plane doesn't match this value."
              | optional,
            steps | Array refs."definitions.TestStep",
          },
      "definitions.TestDocuments" =
        std.contract.any_of
            [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
      "definitions.TestStep" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ingest =
                          std.contract.Sequence
                              [
                                refs."definitions.TestStepIngest",
                                { _ | Dyn }
                              ],
                      },
                  required = { ingest = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        verify =
                          std.contract.Sequence
                              [
                                refs."definitions.TestStepVerify",
                                { _ | Dyn }
                              ],
                      },
                  required = { verify = true, },
                }
            ],
      "definitions.TestStepIngest" =
        {
            collection | refs."definitions.Collection" | String,
            description | String | optional,
            documents
              | refs."definitions.TestDocuments"
              | doc "Each document must conform to the collection's schema.",
          },
      "definitions.TestStepVerify" =
        {
            collection | refs."definitions.Source",
            description | String | optional,
            documents
              | refs."definitions.TestDocuments"
              | doc "Each document may contain only a portion of the matched document's properties, and any properties present in the actual document but not in this document fixture are ignored. All other values must match or the test will fail.",
          },
      "definitions.Transform" =
        js2n.string.Matches "^[\\p{Letter}\\p{Number}\\-_\\.]+$",
      "definitions.TransformDef" =
        {
            backfill
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc m%"
                Every increment of this counter will result in a new backfill of this transform. Specifically, the transform's lambda will be re-invoked for every applicable document of its source collection.
                
                Note that a backfill does *not* truncate the derived collection, and documents published by a backfilled transform will coexist with (and be ordered after) any documents which were published as part of a preceding backfill.
              "%
              | optional,
            disable
              | Bool
              | doc "Disabled transforms are completely ignored at runtime and are not validated."
              | optional,
            lambda
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "Lambdas may be provided inline, or as a relative URL to a file containing the lambda."
              | optional,
            name
              | refs."definitions.Transform"
              | String
              | doc "The names of transforms within a derivation must be unique and stable.",
            "priority"
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc m%"
                When all transforms are of equal priority, Flow processes documents according to their associated publishing time, as encoded in the document UUID.
                
                However, when one transform has a higher priority than others, then *all* ready documents are processed through the transform before *any* documents of other transforms are processed.
              "%
              | optional,
            readDelay
              | js2n.Nullable (js2n.string.Matches "^\\d+(s|m|h)$")
              | doc "Delays are applied as an adjustment to the UUID clock encoded within each document, which is then used to impose a relative ordering of all documents read by this derivation. This means that read delays are applied in a consistent way, even when back-filling over historical documents. When caught up and tailing the source collection, delays also \"gate\" documents such that they aren't processed until the current wall-time reflects the delay."
              | optional,
            shuffle | refs."definitions.Shuffle",
            source | refs."definitions.Source",
          },
    }
    in
  {
      "$schema" | String | optional,
      captures
        | { _ | refs."definitions.CaptureDef" }
        | js2n.record.FieldsMatch
          "^[\\p{Letter}\\p{Number}\\-_\\.]+(/[\\p{Letter}\\p{Number}\\-_\\.]+)*$"
        | optional,
      collections
        | {
          _ | std.contract.Sequence
            [ refs."definitions.CollectionDef", { _ | Dyn } ]
        }
        | js2n.record.FieldsMatch
          "^[\\p{Letter}\\p{Number}\\-_\\.]+(/[\\p{Letter}\\p{Number}\\-_\\.]+)*$"
        | optional,
      "import"
        | Array refs."definitions.RelativeUrl"
        | doc "By importing another Flow catalog source, its collections, schemas, and derivations are bundled into the publication context of this specification. Imports are relative or absolute URLs, relative to this specification's location."
        | optional,
      materializations
        | { _ | refs."definitions.MaterializationDef" }
        | js2n.record.FieldsMatch
          "^[\\p{Letter}\\p{Number}\\-_\\.]+(/[\\p{Letter}\\p{Number}\\-_\\.]+)*$"
        | optional,
      tests
        | { _ | refs."definitions.TestDef" }
        | js2n.record.FieldsMatch
          "^[\\p{Letter}\\p{Number}\\-_\\.]+(/[\\p{Letter}\\p{Number}\\-_\\.]+)*$"
        | optional,
    }