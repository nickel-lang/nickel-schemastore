# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Join" =
        {
            alias
              | String
              | doc "Will automatically default where not specified."
              | optional,
            aliasColumns
              | Array String
              | doc "Each alias value should be formatted as `Column` + `^` + `Alias`; e.g. `PCODE^ProductCode`"
              | optional,
            cdcEnable
              | Bool
              | doc "Defaults to `false`. This option can be overridden for each underlying table referenced."
              | optional,
            excludeColumns
              | Array String
              | doc "Where not specified this indicates no `Columns` are to be excluded."
              | optional,
            excludeColumnsFromETag
              | Array String
              | doc "Defaults to `CodeGeneration.CdcExcludeColumnsFromETag`."
              | optional,
            identifierMapping
              | Bool
              | doc "This indicates whether to create a new `GlobalId` property on the _entity_ to house the global mapping identifier to be the reference outside of the specific database realm as a replacement to the existing primary key column(s)."
              | optional,
            identifierName
              | String
              | doc "This indicates whether to create a new `GlobalId` property on the _entity_ to house the global mapping identifier to be the reference outside of the specific database realm as a replacement to the existing primary key column(s)."
              | optional,
            includeColumns
              | Array String
              | doc "Where not specified this indicates that all `Columns` are to be included."
              | optional,
            includeColumnsOnDelete
              | Array String
              | doc "Where a column is not specified in this list its corresponding .NET property will be automatically cleared by the `CdcDataOrchestrator` as the data is technically considered as non-existing."
              | optional,
            joinCardinality
              | std.enum.TagOrString
              | [| 'OneToOne, 'OneToMany |]
              | doc "Defaults to `OneToMany`. This represents the Parent (`JoinTo`) to child (_this_) relationship."
              | optional,
            joinTo | String | doc "Defaults to parent `Table.Name`." | optional,
            mappings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.JoinMapping", { _ | Dyn } ]
              )
              | optional,
            model | String | doc "Defaults to `Name`." | optional,
            name
              | String
              | doc "A unique name is required where the same `Table` is referenced more than once within a logical CDC entity. However, generally, this will represent the unique name of the table within the database.",
            on
              | Array (
                std.contract.Sequence [ refs."definitions.JoinOn", { _ | Dyn } ]
              )
              | optional,
            property
              | String
              | doc "Defaults to `Model` where `JoinCardinality` is `OneToOne`; otherwise, it will be the `Model` pluralized."
              | optional,
            querySizeMultiplier
              | Number
              | doc "Defaults to `1.0`. This is applied to the execute stored procedure `@MaxQuerySize` parameter to allow tailoring on the join query (`TOP`) sizes to optimize selection. Must be greater than zero and less than or equal to 100."
              | optional,
            schema
              | String
              | doc "Defaults to `Cdc.Schema`; i.e. same schema."
              | optional,
            table
              | String
              | doc "Defaults to `Name`. This is used to specify the actual underlying database table name (required where the `Name` has been changed to enable uniqueness)."
              | optional,
            type
              | std.enum.TagOrString
              | [| 'Full, 'Right, 'Left, 'Inner, 'Cdc |]
              | doc "Defaults to `Cdc`. The `Cdc` value indicates this is a related secondary table (within a logical CDC entity) that also has Change Data Capture turned on and equally needs to be monitored for changes."
              | optional,
            ..
          },
      "definitions.JoinMapping" =
        {
            name | String,
            schema
              | String
              | doc "Defaults to the owning (parent) table schema."
              | optional,
            table | String,
            ..
          },
      "definitions.JoinOn" =
        {
            name | String,
            toColumn
              | String
              | doc "Defaults to `Name`; i.e. assumes same name."
              | optional,
            toStatement | String | optional,
            ..
          },
      "definitions.Root" =
        {
            autoDotNetRename
              | std.enum.TagOrString
              | [| 'SnakeKebabToPascalCase, 'PascalCase, 'None |]
              | doc "Defaults to `SnakeKebabToPascalCase` which will remove any underscores or hyphens separating each word and capitalize the first character of each; e.g. `internal-customer_id` would be renamed as `InternalCustomerId`. The `PascalCase` option will capatilize the first character only."
              | optional,
            cdcEnable
              | Bool
              | doc "Defaults to `false`. This option can be overridden for each underlying table referenced."
              | optional,
            cdcSchema
              | String
              | doc "Defaults to `NTangle` (literal)."
              | optional,
            cdcSchemaCreate | Bool | doc "Defaults to `false`." | optional,
            eventActionFormat
              | std.enum.TagOrString
              | [| 'PastTense, 'None |]
              | doc "Defaults to `None` (no formatting required, i.e. as-is)."
              | optional,
            eventSourceFormat
              | std.enum.TagOrString
              | [| 'NameAndTableKey, 'NameAndKey, 'NameOnly |]
              | doc "Defaults to `NameAndTableKey` (being the child `Cdc.ModelName` appended with the corresponding table key)."
              | optional,
            eventSourceKind
              | std.enum.TagOrString
              | [| 'RelativeOrAbsolute, 'Relative, 'Absolute, 'None |]
              | doc "Defaults to `Relative` (being a relative path)."
              | optional,
            eventSourceRoot
              | String
              | doc "The event source is only updated where an `EventSourceKind` is not `None`."
              | optional,
            eventSubjectFormat
              | std.enum.TagOrString
              | [| 'NameAndTableKey, 'NameAndKey, 'NameOnly |]
              | doc "Defaults to `NameOnly`."
              | optional,
            eventSubjectRoot
              | String
              | doc "Used to enable the sending of messages to the likes of EventHubs, Service Broker, Kafka, etc."
              | optional,
            eventTypeRoot
              | String
              | doc "Used to enable the sending of messages to the likes of EventHubs, Service Broker, Kafka, etc. Defaults to `EventSubjectRoot`."
              | optional,
            excludeColumnsFromETag | Array String | optional,
            identifierMapping
              | Bool
              | doc "Where set to `true` each underlying `Table` and corresponding `Join` must set `IdentifierMapping` explicitly."
              | optional,
            identifierMappingStoredProcedure
              | String
              | doc "Defaults to `spIdentifierMappingCreate` (literal)."
              | optional,
            identifierMappingTable
              | String
              | doc "Defaults to `IdentifierMapping` (literal)."
              | optional,
            identifierMappingType
              | std.enum.TagOrString
              | [| 'Guid, 'Long, 'Int, '"String" |]
              | doc "Defaults to `String`."
              | optional,
            isDeletedColumn
              | String
              | doc "Defaults to `IsDeleted`."
              | optional,
            jsonSerializer
              | std.enum.TagOrString
              | [| 'Newtonsoft, 'SystemText |]
              | doc "Defaults to `SystemText`."
              | optional,
            namespaceBase
              | String
              | doc "Defaults to `AppName` (runtime parameter). For example `Avanade.Application`."
              | optional,
            namespaceOutbox
              | String
              | doc "Defaults to `NamespacePublisher`."
              | optional,
            namespacePublisher
              | String
              | doc "Defaults to `NamespaceBase` + `.Publisher` (literal). For example `Avanade.Application.Publisher`."
              | optional,
            outbox | Bool | doc "Defaults to `false`." | optional,
            outboxDequeueStoredProcedure
              | String
              | doc "Defaults to `spEventOutboxDequeue` (literal)."
              | optional,
            outboxEnqueueStoredProcedure
              | String
              | doc "Defaults to `spEventOutboxEnqueue` (literal)."
              | optional,
            outboxSchema
              | String
              | doc "Defaults to `Outbox` (literal)."
              | optional,
            outboxSchemaCreate | Bool | doc "Defaults to `false`." | optional,
            outboxTable
              | String
              | doc "Defaults to `EventOutbox` (literal)."
              | optional,
            pathBase
              | String
              | doc "Defaults to `AppName` (runtime parameter). For example `Avanade.Application`."
              | optional,
            pathDatabase
              | String
              | doc "Defaults to `PathBase` + `.Database` (literal). For example `Avanade.Application.Database`."
              | optional,
            pathDatabaseMigrations
              | String
              | doc "Defaults to `PathDatabase` + `/Migrations` (literal). For example `Avanade.Application.Database/Migrations`."
              | optional,
            pathDatabaseSchema
              | String
              | doc "Defaults to `PathDatabase` + `/Schema` (literal). For example `Avanade.Application.Database/Schema`."
              | optional,
            pathDotNetPublisher
              | String
              | doc "Defaults to `PathBase` + `.Publisher` (literal). For example `Avanade.Application.Publisher`."
              | optional,
            pathSidecarDatabase
              | String
              | doc "Defaults to `PathBase` + `.SidecarDb` (literal). For example `Avanade.Application.SidecarDb`."
              | optional,
            pathSidecarDatabaseMigrations
              | String
              | doc "Defaults to `PathSidecarDatabase` + `/Migrations` (literal). For example `Avanade.Application.SidecarDb/Migrations`."
              | optional,
            pathSidecarDatabaseSchema
              | String
              | doc "Defaults to `PathSidecarDatabase` + `/Schema` (literal). For example `Avanade.Application.SidecarDb/Schema`."
              | optional,
            schema
              | String
              | doc "This is used as the default `Schema` for all child objects. Defaults to `dbo` (literal)."
              | optional,
            service
              | std.enum.TagOrString
              | [| 'Service, 'HostedService, 'None |]
              | doc "Defaults to `None`. A `HostedService` is an `IHostedService` implementation enabling long-running execution; whereas, `Service` is intended for self-managed execution."
              | optional,
            tables
              | Array (
                std.contract.Sequence [ refs."definitions.Table", { _ | Dyn } ]
              )
              | doc "A `Table` object provides the primary database table configuration for Change Data Capture (CDC), including multiple child table joins to form a composite entity."
              | optional,
            versionTrackingTable
              | String
              | doc "Defaults to `VersionTracking` (literal)."
              | optional,
            ..
          },
      "definitions.Table" =
        {
            alias
              | String
              | doc "Will automatically default where not specified; for example a table named `Person` will default to `p`."
              | optional,
            aliasColumns
              | Array String
              | doc "Each alias value should be formatted as `Column` + `^` + `Alias`; e.g. `PCODE^ProductCode`."
              | optional,
            batchTrackingTable
              | String
              | doc "Defaults to `Name` + `BatchTracking` (literal)."
              | optional,
            cdcEnable
              | Bool
              | doc "Defaults to `false`. This option can be overridden for each underlying table referenced."
              | optional,
            cdcSchema | String | doc "Defaults to `Root.CdcSchema`." | optional,
            completeStoredProcedure
              | String
              | doc "Defaults to `sp` (literal) + `Name` + `BatchComplete` (literal); e.g. `spNameBatchComplete`."
              | optional,
            database | String | doc "Defaults to `IDatabase`." | optional,
            eventSource
              | String
              | doc "Defaults to `Schema` + `/` (literal) + `Name` (as lowercase). Note: when used in code-generation the `Root.EventSourceRoot` will be prepended where specified."
              | optional,
            eventSourceFormat
              | std.enum.TagOrString
              | [| 'NameAndTableKey, 'NameAndKey, 'NameOnly |]
              | doc "Defaults to `Root.EventSourceFormat`."
              | optional,
            eventSubject
              | String
              | doc "Defaults to `ModelName`. Note: when used in code-generation the `Root.EventSubjectRoot` will be prepended where specified."
              | optional,
            eventSubjectFormat
              | std.enum.TagOrString
              | [| 'NameAndTableKey, 'NameAndKey, 'NameOnly |]
              | doc "Defaults to `Root.EventSubjectFormat`."
              | optional,
            eventType
              | String
              | doc "Defaults to `ModelName`. Note: when used in code-generation the `Root.EventTypeRoot` will be prepended where specified."
              | optional,
            excludeColumns
              | Array String
              | doc "Where not specified this indicates no `Columns` are to be excluded."
              | optional,
            excludeColumnsFromETag
              | Array String
              | doc "Defaults to `Root.CdcExcludeColumnsFromETag`."
              | optional,
            executeStoredProcedure
              | String
              | doc "Defaults to `sp` (literal) + `Name` + `BatchExecute` (literal); e.g. `spNameBatchExecute`."
              | optional,
            identifierMapping
              | Bool
              | doc "This indicates whether to create a new `GlobalId` property on the _entity_ to house the global mapping identifier to be the reference outside of the specific database realm as a replacement to the existing primary key column(s)."
              | optional,
            identifierName
              | String
              | doc "This indicates whether to create a new `GlobalId` property on the _entity_ to house the global mapping identifier to be the reference outside of the specific database realm as a replacement to the existing primary key column(s)."
              | optional,
            includeColumns
              | Array String
              | doc "Where not specified this indicates that all `Columns` are to be included."
              | optional,
            includeColumnsOnDelete
              | Array String
              | doc "Where a column is not specified in this list its corresponding .NET property will be automatically cleared by the `CdcDataOrchestrator` as the data is technically considered as non-existing."
              | optional,
            isDeletedColumn
              | String
              | doc "Defaults to `Root.ColumnIsDeleted`."
              | optional,
            joins
              | Array (
                std.contract.Sequence [ refs."definitions.Join", { _ | Dyn } ]
              )
              | doc "A `Join` object provides the configuration for a table join."
              | optional,
            mappings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.TableMapping", { _ | Dyn } ]
              )
              | optional,
            model | String | doc "Defaults to `Name`." | optional,
            name | String,
            orchestratorCtorParams
              | Array String
              | doc "Each constructor parameter should be formatted as `Type` + `^` + `Name`; e.g. `IConfiguration^Config`. Where the `Name` portion is not specified it will be inferred."
              | optional,
            partitionKey
              | String
              | doc "A partition key can be specified using either `PartitionKey` or `PartitionKeyColumns`."
              | optional,
            partitionKeyColumns
              | Array String
              | doc "A partition key can be specified using either `PartitionKey` or `PartitionKeyColumns`."
              | optional,
            resetStoredProcedure
              | String
              | doc "Defaults to `sp` (literal) + `Name` + `BatchReset` (literal); e.g. `spNameBatchReset`."
              | optional,
            schema | String | doc "Defaults to `Root.Schema`." | optional,
            service
              | std.enum.TagOrString
              | [| 'Service, 'HostedService, 'None |]
              | doc "Defaults to `Root.Service`. A `HostedService` is an `IHostedService` implementation enabling long-running execution; whereas, `Service` is intended for self-managed execution."
              | optional,
            table
              | String
              | doc "Defaults to `Name`. This is used to specify the actual underlying database table name (required where the `Name` has been changed to enable uniqueness)."
              | optional,
            tenantIdColumns | Array String | optional,
            trackingStoredProcedure
              | String
              | doc "Defaults to `sp` (literal) + `Name` + `BatchTracking` (literal); e.g. `spNameBatchTracking`."
              | optional,
            where
              | Array (
                std.contract.Sequence [ refs."definitions.Where", { _ | Dyn } ]
              )
              | doc "A `Where` object provides the configuration for a table where clause."
              | optional,
            ..
          },
      "definitions.TableMapping" =
        {
            name | String,
            schema
              | String
              | doc "Defaults to the owning (parent) table schema."
              | optional,
            table | String,
            ..
          },
      "definitions.Where" =
        {
            name | String | doc "The column name.",
            nullable
              | std.enum.TagOrString
              | [| 'ISNOTNULL, 'ISNULL |]
              | doc "This enables statements such as `WHERE (COL IS NULL)` or `WHERE (COL IS NULL OR COL = VALUE)` (where ."
              | optional,
            operator
              | std.enum.TagOrString
              | [| 'LIKE, 'GE, 'GT, 'LE, 'LT, 'NE, 'EQ |]
              | doc "Defaults to `EQ` where `Value` is specified."
              | optional,
            value
              | String
              | doc "This must be valid formatted/escaped SQL."
              | optional,
            ..
          },
    }
    in
  refs."definitions.Root"