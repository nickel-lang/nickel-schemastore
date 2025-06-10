# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.CodeGeneration" =
        {
            NamespaceCdcPublisher
              | String
              | doc "Defaults to 'NamespaceBase' + '.CdcPublisher' (literal). For example 'Beef.Demo.CdcPublisher'."
              | optional,
            PathCdcPublisher
              | String
              | doc "Defaults to 'PathBase' + '.Cdc' (literal). For example 'Beef.Demo.Cdc'."
              | optional,
            autoDotNetRename
              | std.enum.TagOrString
              | [| 'SnakeKebabToPascalCase, 'PascalCase, 'None |]
              | doc "Defaults 'SnakeKebabToPascalCase' that will remove any underscores or hyphens separating each word and capitalize the first character of each; e.g. 'internal-customer_id' would be renamed as 'InternalCustomerId'. The 'PascalCase' option will capatilize the first character only."
              | optional,
            cdcAuditTableName
              | String
              | doc "Defaults to 'CdcTracking' (literal)."
              | optional,
            cdcExcludeColumnsFromETag | Array String | optional,
            cdcIdentifierMapping | Bool | optional,
            cdcIdentifierMappingStoredProcedureName
              | String
              | doc "Defaults to 'spCreateCdcIdentifierMapping' (literal)."
              | optional,
            cdcIdentifierMappingTableName
              | String
              | doc "Defaults to 'CdcIdentifierMapping' (literal)."
              | optional,
            cdcSchema | String | doc "Defaults to 'XCdc' (literal)." | optional,
            checkUserPermissionSql
              | String
              | doc "Defaults to '[Sec].[spCheckUserHasPermission]'."
              | optional,
            columnNameCreatedBy
              | String
              | doc "Defaults to 'CreatedBy'."
              | optional,
            columnNameCreatedDate
              | String
              | doc "Defaults to 'CreatedDate'."
              | optional,
            columnNameDeletedBy
              | String
              | doc "Defaults to 'UpdatedBy'."
              | optional,
            columnNameDeletedDate
              | String
              | doc "Defaults to 'UpdatedDate'."
              | optional,
            columnNameIsDeleted
              | String
              | doc "Defaults to 'IsDeleted'."
              | optional,
            columnNameOrgUnitId
              | String
              | doc "Defaults to 'OrgUnitId'."
              | optional,
            columnNameRowVersion
              | String
              | doc "Defaults to 'RowVersion'."
              | optional,
            columnNameTenantId
              | String
              | doc "Defaults to 'TenantId'."
              | optional,
            columnNameUpdatedBy
              | String
              | doc "Defaults to 'UpdatedBy'."
              | optional,
            columnNameUpdatedDate
              | String
              | doc "Defaults to 'UpdatedDate'."
              | optional,
            entityScope
              | std.enum.TagOrString
              | [| 'Autonomous, 'Business, 'Common |]
              | doc "Defaults to 'Common' for backwards compatibility; 'Autonomous' is recommended. Determines where the entity is scoped/defined, being 'Common' or 'Business' (i.e. not externally visible)."
              | optional,
            eventActionFormat
              | std.enum.TagOrString
              | [| 'PastTense, 'None |]
              | doc "Defaults to 'None' (no formatting required, i.e. as-is)."
              | optional,
            eventOutbox | Bool | optional,
            eventOutboxTableName
              | String
              | doc "Defaults to 'EventOutbox' (literal)."
              | optional,
            eventSourceFormat
              | std.enum.TagOrString
              | [| 'NameAndGlobalId, 'NameAndKey, 'NameOnly |]
              | doc "Defaults to 'NameAndKey' (being the event subject name appended with the corresponding unique key.)'."
              | optional,
            eventSourceKind
              | std.enum.TagOrString
              | [| 'RelativeOrAbsolute, 'Relative, 'Absolute, 'None |]
              | doc "Defaults to 'None' (being the event source is not updated)."
              | optional,
            eventSourceRoot
              | String
              | doc "The event source is only updated where an 'EventSourceKind' is not 'None'. This can be extended within the 'Entity'(s)."
              | optional,
            eventSubjectFormat
              | std.enum.TagOrString
              | [| 'NameAndKey, 'NameOnly |]
              | doc "Defaults to 'NameAndKey' (being the event subject name appended with the corresponding unique key.)'."
              | optional,
            eventSubjectRoot
              | String
              | doc "Used to enable the sending of messages to the likes of EventHub, Service Broker, SignalR, etc. This can be extended within the 'Entity'(s)."
              | optional,
            getUserPermissionSql
              | String
              | doc "Defaults to '[Sec].[fnGetUserHasPermission]'."
              | optional,
            hasBeefDbo | Bool | doc "Defaults to 'true'." | optional,
            jsonSerializer
              | std.enum.TagOrString
              | [| 'Newtonsoft, 'None |]
              | doc "Defaults to 'Newtonsoft'. This can be overridden within the 'Entity'(s)."
              | optional,
            namespaceBase
              | String
              | doc "Defaults to 'Company' (runtime parameter) + '.' + 'AppName' (runtime parameter). For example 'Beef.Demo'."
              | optional,
            namespaceBusiness
              | String
              | doc "Defaults to 'NamespaceBase' + '.Business' (literal). For example 'Beef.Demo.Business'."
              | optional,
            namespaceCommon
              | String
              | doc "Defaults to 'NamespaceBase' + '.Common' (literal). For example 'Beef.Demo.Common'."
              | optional,
            orgUnitImmutable
              | Bool
              | doc "This is only applicable for stored procedures."
              | optional,
            orgUnitJoinSql
              | String
              | doc "Defaults to '[Sec].[fnGetUserOrgUnits]()'."
              | optional,
            pathBase
              | String
              | doc "Defaults to 'Company' (runtime parameter) + '.' + 'AppName' (runtime parameter). For example 'Beef.Demo'."
              | optional,
            pathBusiness
              | String
              | doc "Defaults to 'PathBase' + '.Business' (literal). For example 'Beef.Demo.Business'."
              | optional,
            pathDatabaseMigrations
              | String
              | doc "Defaults to 'PathBase' + '.Database/Migrations' (literal). For example 'Beef.Demo.Database/Migrations'."
              | optional,
            pathDatabaseSchema
              | String
              | doc "Defaults to 'PathBase' + '.Database/Schema' (literal). For example 'Beef.Demo.Database/Schema'."
              | optional,
            pluralizeCollectionProperties | Bool | optional,
            queries
              | Array (
                std.contract.Sequence [ refs."definitions.Query", { _ | Dyn } ]
              )
              | optional,
            schema
              | String
              | doc "This is used as the default 'Schema' for all child objects."
              | optional,
            tables
              | Array (
                std.contract.Sequence [ refs."definitions.Table", { _ | Dyn } ]
              )
              | optional,
            ..
          },
      "definitions.Execute" =
        {
            location
              | std.enum.TagOrString
              | [| 'After, 'Before |]
              | doc "Defaults to 'After'."
              | optional,
            statement | String,
            ..
          },
      "definitions.OrderBy" =
        {
            name | String,
            order
              | std.enum.TagOrString
              | [| 'Descending, 'Ascending |]
              | doc "Defaults to 'Ascending'."
              | optional,
            ..
          },
      "definitions.Parameter" =
        {
            collection | Bool | optional,
            column | String | doc "Defaults to 'Name'." | optional,
            name | String,
            nullable
              | Bool
              | doc "Note that when the parameter value is 'NULL' it will not be included in the query."
              | optional,
            operator
              | std.enum.TagOrString
              | [| 'LIKE, 'GE, 'GT, 'LE, 'LT, 'NE, 'EQ |]
              | doc "Defaults to 'EQ'."
              | optional,
            sqlType | String | optional,
            treatColumnNullAs | Bool | optional,
            ..
          },
      "definitions.Query" =
        {
            alias
              | String
              | doc "Will automatically default where not specified."
              | optional,
            aliasColumns
              | Array String
              | doc "Each alias value should be formatted as 'Column' + '^' + 'Alias'; e.g. 'PCODE^ProductCode'"
              | optional,
            columnNameCreatedBy
              | String
              | doc "Defaults to 'CodeGeneration.CreatedBy'."
              | optional,
            columnNameCreatedDate
              | String
              | doc "Defaults to 'CodeGeneration.CreatedDate'."
              | optional,
            columnNameDeletedBy
              | String
              | doc "Defaults to 'CodeGeneration.UpdatedBy'."
              | optional,
            columnNameDeletedDate
              | String
              | doc "Defaults to 'CodeGeneration.UpdatedDate'."
              | optional,
            columnNameIsDeleted
              | String
              | doc "Defaults to 'CodeGeneration.IsDeleted'."
              | optional,
            columnNameOrgUnitId
              | String
              | doc "Defaults to 'CodeGeneration.OrgUnitId'."
              | optional,
            columnNameRowVersion
              | String
              | doc "Defaults to 'CodeGeneration.RowVersion'."
              | optional,
            columnNameTenantId
              | String
              | doc "Defaults to 'CodeGeneration.TenantId'."
              | optional,
            columnNameUpdatedBy
              | String
              | doc "Defaults to 'CodeGeneration.UpdatedBy'."
              | optional,
            columnNameUpdatedDate
              | String
              | doc "Defaults to 'CodeGeneration.UpdatedDate'."
              | optional,
            excludeColumns
              | Array String
              | doc "Where not specified this indicates no 'Columns' are to be excluded."
              | optional,
            includeColumns
              | Array String
              | doc "Where not specified this indicates that all 'Columns' are to be included."
              | optional,
            joins
              | Array (
                std.contract.Sequence
                  [ refs."definitions.QueryJoin", { _ | Dyn } ]
              )
              | optional,
            name | String,
            order
              | Array (
                std.contract.Sequence
                  [ refs."definitions.QueryOrder", { _ | Dyn } ]
              )
              | optional,
            permission
              | String
              | doc "The suffix is optional, and where not specified will default to '.READ'."
              | optional,
            schema
              | String
              | doc "Defaults to 'CodeGeneration.dbo'."
              | optional,
            view | Bool | optional,
            viewName
              | String
              | doc "Defaults to 'vw' + 'Name'; e.g. 'vwTableName'."
              | optional,
            viewSchema | String | doc "Defaults to 'Schema'." | optional,
            where
              | Array (
                std.contract.Sequence
                  [ refs."definitions.QueryWhere", { _ | Dyn } ]
              )
              | optional,
            ..
          },
      "definitions.QueryJoin" =
        {
            alias
              | String
              | doc "Will automatically default where not specified."
              | optional,
            aliasColumns
              | Array String
              | doc "Each alias value should be formatted as 'Column' + '^' + 'Alias'; e.g. 'PCODE^ProductCode'"
              | optional,
            columnNameCreatedBy
              | String
              | doc "Defaults to 'CodeGeneration.CreatedBy'."
              | optional,
            columnNameCreatedDate
              | String
              | doc "Defaults to 'CodeGeneration.CreatedDate'."
              | optional,
            columnNameDeletedBy
              | String
              | doc "Defaults to 'CodeGeneration.UpdatedBy'."
              | optional,
            columnNameDeletedDate
              | String
              | doc "Defaults to 'CodeGeneration.UpdatedDate'."
              | optional,
            columnNameIsDeleted
              | String
              | doc "Defaults to 'CodeGeneration.IsDeleted'."
              | optional,
            columnNameOrgUnitId
              | String
              | doc "Defaults to 'CodeGeneration.OrgUnitId'."
              | optional,
            columnNameRowVersion
              | String
              | doc "Defaults to 'CodeGeneration.RowVersion'."
              | optional,
            columnNameTenantId
              | String
              | doc "Defaults to 'CodeGeneration.TenantId'."
              | optional,
            columnNameUpdatedBy
              | String
              | doc "Defaults to 'CodeGeneration.UpdatedBy'."
              | optional,
            columnNameUpdatedDate
              | String
              | doc "Defaults to 'CodeGeneration.UpdatedDate'."
              | optional,
            excludeColumns
              | Array String
              | doc "Where not specified this indicates no 'Columns' are to be excluded."
              | optional,
            includeColumns
              | Array String
              | doc "Where not specified this indicates that all 'Columns' are to be included."
              | optional,
            name | String,
            on
              | Array (
                std.contract.Sequence
                  [ refs."definitions.QueryJoinOn", { _ | Dyn } ]
              )
              | optional,
            schema
              | String
              | doc "Defaults to 'Table.Schema'; i.e. same schema."
              | optional,
            type
              | std.enum.TagOrString
              | [| 'Full, 'Right, 'Left, 'Inner |]
              | doc "Defaults to 'Inner'."
              | optional,
            ..
          },
      "definitions.QueryJoinOn" =
        {
            name | String,
            toColumn
              | String
              | doc "Defaults to 'Name'; i.e. assumes same name. See also 'ToSchema' and 'ToTable' as these all relate."
              | optional,
            toSchema
              | String
              | doc "Defaults to 'Table.Schema'; i.e. same schema. See also 'ToTable' and 'ToColumn' as these all relate."
              | optional,
            toStatement | String | optional,
            toTable
              | String
              | doc "Defaults to 'Table.Name'; i.e. primary table. See also 'ToSchema' and 'ToColumn' as these all relate."
              | optional,
            ..
          },
      "definitions.QueryOrder" =
        {
            name
              | String
              | doc "See also 'Schema' and 'Table' as these all relate.",
            order
              | std.enum.TagOrString
              | [| 'Descending, 'Ascending |]
              | doc "Defaults to 'Ascending'."
              | optional,
            schema | String | doc "Defaults to 'Query.Schema'." | optional,
            table
              | String
              | doc "Defaults to 'Table.Name'; i.e. primary table. See also 'Schema' and 'Column' as these all relate."
              | optional,
            ..
          },
      "definitions.QueryWhere" = { statement | String, .. },
      "definitions.StoredProcedure" =
        {
            excludeColumns
              | Array String
              | doc "Where not specified this indicates no 'Columns' are to be excluded. Only filters the columns where 'Type' is 'Get', 'GetColl', 'Create', 'Update' or 'Upsert'."
              | optional,
            execute
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Execute", { _ | Dyn } ]
              )
              | optional,
            includeColumns
              | Array String
              | doc "Where not specified this indicates that all 'Columns' are to be included. Only filters the columns where 'Type' is 'Get', 'GetColl', 'Create', 'Update' or 'Upsert'."
              | optional,
            intoTempTable
              | Bool
              | doc "A 'Select * from #TempTable' is also performed (code-generated) where the stored procedure operation 'Type' is 'GetColl'."
              | optional,
            mergeOverrideIdentityColumns
              | Array String
              | doc "This is used to override the default behaviour of using the primary key column(s)."
              | optional,
            name
              | String
              | doc "See 'StoredProcedureName' for the actual name used in the database.",
            orderby
              | Array (
                std.contract.Sequence
                  [ refs."definitions.OrderBy", { _ | Dyn } ]
              )
              | optional,
            orgUnitImmutable
              | Bool
              | doc "Defaults to 'Table.OrgUnitImmutable'."
              | optional,
            paging
              | Bool
              | doc "This only applies where the stored procedure operation 'Type' is 'GetColl'."
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Parameter", { _ | Dyn } ]
              )
              | optional,
            permission | String | optional,
            reselectStatement
              | String
              | doc "Defaults to '[{{Table.Schema}}].[sp{{Table.Name}}Get]' passing the primary key column(s)."
              | optional,
            storedProcedureName
              | String
              | doc "Defaults to 'sp' + 'Table.Name' + 'Name'; e.g. 'spTableName' or 'spPersonGet'."
              | optional,
            type
              | std.enum.TagOrString
              | [| 'Merge, 'Delete, 'Upsert, 'Update, 'Create, 'GetColl, 'Get |]
              | doc "Defaults to 'GetColl'."
              | optional,
            where
              | Array (
                std.contract.Sequence [ refs."definitions.Where", { _ | Dyn } ]
              )
              | optional,
            withHints | String | optional,
            ..
          },
      "definitions.Table" =
        {
            alias
              | String
              | doc "Will automatically default where not specified."
              | optional,
            columnNameCreatedBy
              | String
              | doc "Defaults to 'CodeGeneration.CreatedBy'."
              | optional,
            columnNameCreatedDate
              | String
              | doc "Defaults to 'CodeGeneration.CreatedDate'."
              | optional,
            columnNameDeletedBy
              | String
              | doc "Defaults to 'CodeGeneration.UpdatedBy'."
              | optional,
            columnNameDeletedDate
              | String
              | doc "Defaults to 'CodeGeneration.UpdatedDate'."
              | optional,
            columnNameIsDeleted
              | String
              | doc "Defaults to 'CodeGeneration.IsDeleted'."
              | optional,
            columnNameOrgUnitId
              | String
              | doc "Defaults to 'CodeGeneration.OrgUnitId'."
              | optional,
            columnNameRowVersion
              | String
              | doc "Defaults to 'CodeGeneration.RowVersion'."
              | optional,
            columnNameTenantId
              | String
              | doc "Defaults to 'CodeGeneration.TenantId'."
              | optional,
            columnNameUpdatedBy
              | String
              | doc "Defaults to 'CodeGeneration.UpdatedBy'."
              | optional,
            columnNameUpdatedDate
              | String
              | doc "Defaults to 'CodeGeneration.UpdatedDate'."
              | optional,
            create | Bool | optional,
            delete | Bool | optional,
            efModel | Bool | optional,
            efModelName | String | doc "Defaults to 'Name'." | optional,
            entityScope
              | std.enum.TagOrString
              | [| 'Autonomous, 'Business, 'Common |]
              | doc "Defaults to 'CodeGeneration.EntityScope'. Determines where the entity is scoped/defined, being 'Common' or 'Business' (i.e. not externally visible)."
              | optional,
            excludeColumns
              | Array String
              | doc "Where not specified this indicates no 'Columns' are to be excluded."
              | optional,
            get | Bool | optional,
            getAll
              | Bool
              | doc "The 'GetAllOrderBy' is used to specify the 'GetAll' query sort order."
              | optional,
            getAllOrderBy
              | Array String
              | doc "This relates to the 'GetAll' selection."
              | optional,
            includeColumns
              | Array String
              | doc "Where not specified this indicates that all 'Columns' are to be included."
              | optional,
            "merge"
              | Bool
              | doc "This will also require a 'Udt' (SQL User Defined Table) and 'Tvp' (.NET Table-Valued Parameter) to function."
              | optional,
            name | String,
            orgUnitImmutable
              | Bool
              | doc "Defaults to 'CodeGeneration.OrgUnitImmutable'. This is only applicable for stored procedures."
              | optional,
            permission | String | optional,
            schema
              | String
              | doc "Defaults to 'CodeGeneration.Schema'."
              | optional,
            storedProcedures
              | Array (
                std.contract.Sequence
                  [ refs."definitions.StoredProcedure", { _ | Dyn } ]
              )
              | optional,
            tvp | String | optional,
            udt | Bool | optional,
            udtExcludeColumns
              | Array String
              | doc "Where not specified this indicates that no 'Columns' are to be excluded."
              | optional,
            update | Bool | optional,
            upsert | Bool | optional,
            ..
          },
      "definitions.Where" = { statement | String, .. },
    }
    in
  refs."definitions.CodeGeneration"