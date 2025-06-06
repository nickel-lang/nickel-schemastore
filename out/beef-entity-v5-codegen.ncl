# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.CodeGeneration" =
        {
            authActionCreate | String | doc "Defaults to `Create`." | optional,
            authActionDelete | String | doc "Defaults to `Delete`." | optional,
            authActionRead | String | doc "Defaults to `Read`." | optional,
            authActionUpdate | String | doc "Defaults to `Update`." | optional,
            autoImplement
              | std.enum.TagOrString
              | [|
                'None,
                'HttpAgent,
                'OData,
                'Cosmos,
                'EntityFramework,
                'Database
              |]
              | doc "Defaults to `None`. Indicates that the implementation for the underlying `Operations` will be auto-implemented using the selected data source (unless explicitly overridden). When selected some of the related attributes will also be required (as documented). Additionally, the `AutoImplement` can be further specified/overridden per `Operation`."
              | optional,
            cosmosType
              | String
              | doc "Defaults to `ICosmosDb`. Should be formatted as `Type` + `^` + `Name`; e.g. `ICosmosDb^Cosmos`. Where the `Name` portion is not specified it will be inferred. This can be overridden within the `Entity`(s)."
              | optional,
            databaseMapperEx
              | Bool
              | doc "Defaults to `true`. The `DatabaseMapperEx` essentially replaces the `DatabaseMapper` as it is more performant (extended/explicit); this option can be used where leagcy/existing behavior is required."
              | optional,
            databaseProvider
              | std.enum.TagOrString
              | [| 'Postgres, 'MySQL, 'SqlServer |]
              | doc "Defaults to `SqlServer`. Enables specific database provider functionality/formatting/etc. where applicable."
              | optional,
            databaseSchema | String | doc "Defaults to `dbo`." | optional,
            databaseType
              | String
              | doc "Defaults to `IDatabase`. Should be formatted as `Type` + `^` + `Name`; e.g. `IDatabase^Db`. Where the `Name` portion is not specified it will be inferred. This can be overridden within the `Entity`(s)."
              | optional,
            entities
              | Array (
                std.contract.Sequence [ refs."definitions.Entity", { _ | Dyn } ]
              )
              | optional,
            entityFrameworkType
              | String
              | doc "Defaults to `IEfDb`. Should be formatted as `Type` + `^` + `Name`; e.g. `IEfDb^Ef`. Where the `Name` portion is not specified it will be inferred. This can be overridden within the `Entity`(s)."
              | optional,
            etagDefaultMapperConverter
              | String
              | doc "Defaults to `StringToBase64Converter`."
              | optional,
            etagJsonName
              | std.enum.TagOrString
              | [| 'ETAG, 'ETag, '_eTag, '_etag, 'eTag, 'etag |]
              | doc "Defaults to `etag`. Note that the `JsonName` can be set individually per property where required."
              | optional,
            eventActionFormat
              | std.enum.TagOrString
              | [| 'PastTense, 'None |]
              | doc "Defaults to `None` (no formatting required, i.e. as-is)`."
              | optional,
            eventPublish
              | std.enum.TagOrString
              | [| 'Data, 'DataSvc, 'None |]
              | doc "Defaults to `DataSvc`. Used to enable the sending of messages to the likes of EventHub, ServiceBus, SignalR, etc. This can be overridden within the `Entity`(s)."
              | optional,
            eventSourceKind
              | std.enum.TagOrString
              | [| 'RelativeOrAbsolute, 'Relative, 'Absolute, 'None |]
              | doc "Defaults to `None` (being the event source is not updated)."
              | optional,
            eventSourceRoot
              | String
              | doc "The event source is only updated where an `EventSourceKind` is not `None`. This can be extended within the `Entity`(s)."
              | optional,
            eventSubjectRoot
              | String
              | doc "Used to enable the sending of messages to the likes of EventHub, ServiceBus, SignalR, etc. This can be overridden within the `Entity`(s)."
              | optional,
            eventSubjectSeparator
              | String
              | doc "Defaults to `.`. Used only where the subject is automatically inferred."
              | optional,
            eventTransaction
              | Bool
              | doc "Usage will force a rollback of any underlying data transaction (where the provider supports TransactionScope) on failure, such as an `EventPublish` error. This is by no means implying a Distributed Transaction (DTC) should be invoked; this is only intended for a single data source that supports a TransactionScope to guarantee reliable event publishing. Defaults to `false`. This essentially defaults the `Entity.EventTransaction` where not otherwise specified. This should only be used where `EventPublish` is `DataSvc` and a transactionally-aware data source is being used."
              | optional,
            grpc
              | Bool
              | doc "gRPC support is an explicit opt-in model. Must be set to `true` for any of the subordinate gRPC capabilities to be code-generated. Will require each `Entity`, and corresponding `Property` and `Operation` to be opted-in specifically."
              | optional,
            httpAgentType
              | String
              | doc "Defaults to `IHttpAgent`. Should be formatted as `Type` + `^` + `Name`; e.g. `IHttpAgent^HttpAgent`. Where the `Name` portion is not specified it will be inferred. This can be overridden within the `Entity`(s)."
              | optional,
            jsonSerializer
              | std.enum.TagOrString
              | [| 'Newtonsoft, 'SystemText |]
              | doc "Defaults to `SystemText`. This can be overridden within the `Entity`(s)."
              | optional,
            managerCleanUp
              | Bool
              | doc "This can be overridden within the `Entity`(s) and `Operation`(s)."
              | optional,
            namespaceApi
              | String
              | doc "Defaults to `NamespaceBase` + `.` + `ApiName` (runtime parameter). For example `Beef.Demo.Api`."
              | optional,
            namespaceBase
              | String
              | doc "Defaults to `Company` (runtime parameter) + `.` + `AppName` (runtime parameter). For example `Beef.Demo`."
              | optional,
            namespaceBusiness
              | String
              | doc "Defaults to `NamespaceBase` + `.Business` (literal). For example `Beef.Demo.Business`."
              | optional,
            namespaceCommon
              | String
              | doc "Defaults to `NamespaceBase` + `.Common` (literal). For example `Beef.Demo.Common`."
              | optional,
            odataType
              | String
              | doc "Defaults to `IOData`. Should be formatted as `Type` + `^` + `Name`; e.g. `IOData^OData`. Where the `Name` portion is not specified it will be inferred. This can be overridden within the `Entity`(s)."
              | optional,
            pathApi
              | String
              | doc "Defaults to `PathBase` + `.` + `ApiName` (runtime parameter). For example `Beef.Demo.Api`."
              | optional,
            pathBase
              | String
              | doc "Defaults to `Company` (runtime parameter) + `.` + `AppName` (runtime parameter). For example `Beef.Demo`."
              | optional,
            pathBusiness
              | String
              | doc "Defaults to `PathBase` + `.Business` (literal). For example `Beef.Demo.Business`."
              | optional,
            pathCommon
              | String
              | doc "Defaults to `PathBase` + `.Common` (literal). For example `Beef.Demo.Common`."
              | optional,
            preprocessorDirectives | Bool | optional,
            refDataCodeDataName
              | String
              | doc "Defaults to `Code` (literal)."
              | optional,
            refDataCommonNamespace
              | String
              | doc "Defaults to `Company` + `.` (literal) + AppName + `.Common.Entities` (literal)."
              | optional,
            refDataDataCtorParams
              | Array String
              | doc "Each constructor parameter should be formatted as `Type` + `^` + `Name`; e.g. `IConfiguration^Config`. Where the `Name` portion is not specified it will be inferred. Where the `Type` matches an already inferred value it will be ignored."
              | optional,
            refDataDefaultMapperConverter
              | std.enum.TagOrString
              | [|
                '"ReferenceDataNullableGuidIdConverter<T>",
                '"ReferenceDataNullableGuidIdConverter{T}",
                'ReferenceDataNullableGuidIdConverter,
                '"ReferenceDataGuidIdConverter<T>",
                '"ReferenceDataGuidIdConverter{T}",
                'ReferenceDataGuidIdConverter,
                '"ReferenceDataNullableInt64IdConverter<T>",
                '"ReferenceDataNullableInt64IdConverter{T}",
                'ReferenceDataNullableInt64IdConverter,
                '"ReferenceDataInt64IdConverter<T>",
                '"ReferenceDataInt64IdConverter{T}",
                'ReferenceDataInt64IdConverter,
                '"ReferenceDataNullableInt32IdConverter<T>",
                '"ReferenceDataNullableInt32IdConverter{T}",
                'ReferenceDataNullableInt32IdConverter,
                '"ReferenceDataInt32IdConverter<T>",
                '"ReferenceDataInt32IdConverter{T}",
                'ReferenceDataInt32IdConverter,
                '"ReferenceDataIdConverter<T, Guid?>",
                '"ReferenceDataIdConverter{T, Guid?}",
                '"ReferenceDataIdConverter<T, Guid>",
                '"ReferenceDataIdConverter{T, Guid}",
                '"ReferenceDataIdConverter<T, long?>",
                '"ReferenceDataIdConverter{T, long?}",
                '"ReferenceDataIdConverter<T, long>",
                '"ReferenceDataIdConverter{T, long}",
                '"ReferenceDataIdConverter<T, int?>",
                '"ReferenceDataIdConverter{T, int?}",
                '"ReferenceDataIdConverter<T, int>",
                '"ReferenceDataIdConverter{T, int}",
                '"ReferenceDataCodeConverter<T>",
                '"ReferenceDataCodeConverter{T}",
                'ReferenceDataCodeConverter
              |]
              | doc "Defaults to `ReferenceDataCodeConverter<T>`. Where this value is suffixed by `<T>` or `{T}` this will automatically be set to the `Type`."
              | optional,
            refDataETagDataName
              | String
              | doc "Defaults to `RowVersion` (literal)."
              | optional,
            refDataIsActiveDataName
              | String
              | doc "Defaults to `IsActive` (literal)."
              | optional,
            refDataNamespace
              | String
              | doc "Defaults to `Company` + `.` (literal) + AppName + `.Business.Entities` (literal)."
              | optional,
            refDataSortOrderDataName
              | String
              | doc "Defaults to `SortOrder` (literal)."
              | optional,
            refDataText
              | Bool
              | doc "This is used where serializing within the Web API `Controller` and the `ExecutionContext.IsRefDataTextSerializationEnabled` is set to `true` (which is automatically set where the url contains `$text=true`). This can be further configured on the `Entity` and for each `Property`."
              | optional,
            refDataTextDataName
              | String
              | doc "Defaults to `Text` (literal)."
              | optional,
            refDataType
              | std.enum.TagOrString
              | [| 'string, 'Guid, 'long, 'int |]
              | doc "Required to identify an entity as being Reference Data. Specifies the underlying .NET Type used for the Reference Data identifier. Results in all underlying entities becoming Reference Data."
              | optional,
            refDataWebApiRoute | String | optional,
            usingNamespace1
              | String
              | doc "Typically used where referening a `Type` from a Namespace that is not generated by default."
              | optional,
            usingNamespace2
              | String
              | doc "Typically used where referening a `Type` from a Namespace that is not generated by default."
              | optional,
            usingNamespace3
              | String
              | doc "Typically used where referening a `Type` from a Namespace that is not generated by default."
              | optional,
            validationFramework
              | std.enum.TagOrString
              | [| 'FluentValidation, 'CoreEx |]
              | doc "Defaults to `CoreEx` (literal). This can be overridden within the `Entity`(s), `Operation`(s) and `Parameter`(s)."
              | optional,
            webApiAuthorize
              | String
              | doc "This can be overridden within the `Entity`(s) and/or their corresponding `Operation`(s)."
              | optional,
            webApiAutoLocation
              | Bool
              | doc "This will automatically set the `Operation.WebApiLocation` for an `Operation` named `Create` where there is a corresponding named `Get`. This can be overridden within the `Entity`(s)."
              | optional,
            webApiRoutePrefix | String | optional,
            webApiTags
              | Array String
              | doc "This can be overridden within the `Entity`(s) and/or their corresponding `Operation`(s)."
              | optional,
            withResult
              | Bool
              | doc "Defaults to `true`. This can be overridden within the `Entity`(s) and/or `Operation`(s)."
              | optional,
            ..
          },
      "definitions.Const" =
        {
            name | String,
            text
              | String
              | doc "By default the `Text` will be the `Name` reformatted as sentence casing. It will be formatted as: `Represents a {text} constant value.` To create a `<see cref=\"XXX\"/>` within use moustache shorthand (e.g. `{{Xxx}}`). To have the text used as-is prefix with a `+` plus-sign character."
              | optional,
            value
              | String
              | doc "The code generation will ensure the value is delimited properly to output correctly formed (delimited) .NET (C#) code.",
            ..
          },
      "definitions.Entity" =
        {
            abstract | Bool | optional,
            argumentName
              | String
              | doc "Overrides the `Name` to be used for argument parameters. By default reformatted from `Name`; e.g. `FirstName` as `firstName`."
              | optional,
            authEntity | String | optional,
            authPermission | String | optional,
            authRole
              | String
              | doc "Used where not overridden specifically for an `Operation`; i.e. acts as the default."
              | optional,
            autoImplement
              | std.enum.TagOrString
              | [|
                'None,
                'HttpAgent,
                'OData,
                'Cosmos,
                'EntityFramework,
                'Database
              |]
              | doc "Defaults to `CodeGeneration.AutoImplement` (where `RefDataType` or `EntityFrameworkModel` or `CosmosModel` or `HttpAgent` is not null; otherwise, `None`. Indicates that the implementation for the underlying `Operations` will be auto-implemented using the selected data source (unless explicitly overridden). When selected some of the related attributes will also be required (as documented). Additionally, the `AutoImplement` can be further specified/overridden per `Operation`."
              | optional,
            behavior
              | String
              | doc "Value may only specifiy one or more of the `CGRUDBAQ` characters (in any order) to define the automatically generated behavior (operations); for example: `CRUPD` or `CRUP` or `rba` (case insensitive). This is shorthand for setting one or more of the following properties: `Get`, `GetByArgs`, `GetAll`, 'Create', `Update`, `Patch` and `Delete`. Where one of these properties is set to either `true` or `false` this will take precedence over the value set for `Behavior`."
              | optional,
            collection | Bool | optional,
            collectionInherits
              | String
              | doc "Defaults to `EntityBaseCollection` or `EntityBaseKeyedCollection` depending on `CollectionKeyed`. For Reference Data it will default to `ReferenceDataCollectionBase`."
              | optional,
            collectionResult
              | Bool
              | doc "Enables the likes of additional paging state to be stored with the underlying collection."
              | optional,
            collectionResultInherits
              | String
              | doc "Defaults to `EntityCollectionResult`."
              | optional,
            collectionType
              | std.enum.TagOrString
              | [| 'Dictionary, 'Keyed, 'Standard |]
              | optional,
            constType
              | std.enum.TagOrString
              | [| 'string, 'Guid, 'long, 'int |]
              | doc "The .NET Type to be used for the `const` values. Defaults to `string`."
              | optional,
            consts
              | Array (
                std.contract.Sequence [ refs."definitions.Const", { _ | Dyn } ]
              )
              | optional,
            cosmosContainerId | String | optional,
            cosmosCustomMapper
              | Bool
              | doc "Otherwise, by default, a `Mapper` will be generated."
              | optional,
            cosmosMapperBase | String | optional,
            cosmosModel | String | optional,
            cosmosPartitionKey
              | String
              | doc "The value `PartitionKey.None` can be specified. Literals will need to be quoted."
              | optional,
            cosmosType
              | String
              | doc "Defaults to the `CodeGeneration.CosmosName` configuration property (its default value is `ICosmosDb`). Should be formatted as `Type` + `^` + `Name`."
              | optional,
            cosmosValueContainer | Bool | optional,
            create | Bool | optional,
            dataCtor
              | std.enum.TagOrString
              | [| 'Protected, 'Private, 'Public |]
              | doc "Defaults to `Public`."
              | optional,
            dataCtorCustom | Bool | optional,
            dataCtorParams
              | Array String
              | doc "Each constructor parameter should be formatted as `Type` + `^` + `Name`; e.g. `IConfiguration^Config`. Where the `Name` portion is not specified it will be inferred. Where the `Type` matches an already inferred value it will be ignored."
              | optional,
            dataExtensions
              | Bool
              | doc "This can be overridden using `Operation.DataExtensions`."
              | optional,
            dataModel
              | Bool
              | doc "The model will be generated with `OmitEntityBase = true`. Any reference data properties will be defined using their `RefDataType` intrinsic `Type` versus their corresponding (actual) reference data `Type`."
              | optional,
            dataModelInherits | String | optional,
            dataSvcCaching | Bool | doc "Defaults to `true`." | optional,
            dataSvcCtor
              | std.enum.TagOrString
              | [| 'Protected, 'Private, 'Public |]
              | doc "Defaults to `Public`."
              | optional,
            dataSvcCtorCustom | Bool | optional,
            dataSvcCtorParams
              | Array String
              | doc "Each constructor parameter should be formatted as `Type` + `^` + `Name`; e.g. `IConfiguration^Config`. Where the `Name` portion is not specified it will be inferred. Where the `Type` matches an already inferred value it will be ignored."
              | optional,
            dataSvcCustom
              | std.enum.TagOrString
              | [| 'None, 'Partial, 'Full |]
              | doc "`Full` indicates the logic is fully customized (only invocation is code-generated). `Partial` indicates combination of surrounding code-generation with final custom invocation versus data-layer. `None` indicates data-layer invocation with _no_ custom invocation (default)."
              | optional,
            dataSvcExtensions
              | Bool
              | doc "This can be overridden using `Operation.DataSvcExtensions`."
              | optional,
            databaseCustomMapper
              | Bool
              | doc "Otherwise, by default, a `Mapper` will be generated."
              | optional,
            databaseMapperEx
              | Bool
              | doc "Defaults to `CodeGeneration.DatabaseMapperEx` (its default value is `true`). The `DatabaseMapperEx` essentially replaces the `DatabaseMapper` as it is more performant; this option can be used where leagcy/existing behavior is required."
              | optional,
            databaseMapperInheritsFrom | String | optional,
            databaseSchema | String | doc "Defaults to `dbo`." | optional,
            databaseType
              | String
              | doc "Defaults to the `CodeGeneration.DatabaseName` configuration property (its default value is `IDatabase`). Should be formatted as `Type` + `^` + `Name`."
              | optional,
            delete | Bool | optional,
            entityFrameworkCustomMapper
              | Bool
              | doc "Otherwise, by default, a `Mapper` will be generated."
              | optional,
            entityFrameworkMapperBase | String | optional,
            entityFrameworkModel | String | optional,
            entityFrameworkType
              | String
              | doc "Defaults to `CodeGeneration.EntityFrameworkName`. Should be formatted as `Type` + `^` + `Name`."
              | optional,
            eventPublish
              | std.enum.TagOrString
              | [| 'Data, 'DataSvc, 'None |]
              | doc "Defaults to the `CodeGeneration.EventPublish` configuration property (inherits) where not specified. Used to enable the sending of messages to the likes of EventGrid, Service Broker, SignalR, etc. This can be overridden within the `Operation`(s)."
              | optional,
            eventSource
              | String
              | doc "Defaults to `Name` (as lowercase) appended with the `/{$key}` placeholder. Note: when used in code-generation the `CodeGeneration.EventSourceRoot` will be prepended where specified. To include the entity id/key include a `{$key}` placeholder (`Create`, `Update` or `Delete` operation only); for example: `person/{$key}`. This can be overridden for the `Operation`."
              | optional,
            eventTransaction
              | Bool
              | doc "Usage will force a rollback of any underlying data transaction (where the provider supports TransactionScope) on failure, such as an `EventPublish` error. This is by no means implying a Distributed Transaction (DTC) should be invoked; this is only intended for a single data source that supports a TransactionScope to guarantee reliable event publishing. Defaults to `CodeGeneration.EventTransaction`. This essentially defaults the `Operation.DataSvcTransaction` where not otherwise specified. This should only be used where a transactionally-aware data source is being used."
              | optional,
            excludeAll
              | Bool
              | doc "Is a shorthand means for setting all of the other `Exclude*` properties (with the exception of `ExcludeEntity`) to exclude."
              | optional,
            excludeData
              | std.enum.TagOrString
              | [| 'RequiresMapper, 'Exclude, 'Include |]
              | doc "Defaults to `Include` indicating _not_ to exclude. A value of `Exclude` indicates to exclude all output; alternatively, `RequiresMapper` indicates to at least output the corresponding `Mapper` class."
              | optional,
            excludeDataSvc | Bool | optional,
            excludeEntity | Bool | optional,
            excludeGrpcAgent | Bool | optional,
            excludeIData | Bool | optional,
            excludeIDataSvc | Bool | optional,
            excludeIManager | Bool | optional,
            excludeManager | Bool | optional,
            excludeWebApi | Bool | optional,
            excludeWebApiAgent | Bool | optional,
            fileName
              | String
              | doc "Overrides the Name as the code-generated file name."
              | optional,
            genericWithT | Bool | optional,
            get | Bool | optional,
            getAll | Bool | optional,
            getByArgs | Bool | optional,
            getByQuery | Bool | optional,
            grpc
              | Bool
              | doc "gRPC support is an explicit opt-in model (see `CodeGeneration.Grpc` configuration); therefore, each corresponding `Property` and `Operation` will also need to be opted-in specifically."
              | optional,
            httpAgentCode
              | String
              | doc "Prepended to `Operation.HttpAgentCode` where specified to enable standardized functionality."
              | optional,
            httpAgentCustomMapper
              | Bool
              | doc "Otherwise, by default, a `Mapper` will be generated."
              | optional,
            httpAgentMapperBase | String | optional,
            httpAgentModel
              | String
              | doc "This can be overridden within the `Operation`(s)."
              | optional,
            httpAgentReturnModel
              | String
              | doc "This can be overridden within the `Operation`(s)."
              | optional,
            httpAgentRoutePrefix
              | String
              | doc "This is the base (prefix) `URI` for the HTTP Agent endpoint and can be further extended when defining the underlying `Operation`(s)."
              | optional,
            httpAgentType
              | String
              | doc "Defaults to `CodeGeneration.HttpAgentName` configuration property (its default value is `IHttpAgent`). Should be formatted as `Type` + `^` + `Name`."
              | optional,
            identifierGenerator | Bool | optional,
            implements | String | optional,
            implementsAutoInfer
              | Bool
              | doc "Will attempt to infer the following: `IIdentifier<Guid>`, `IIdentifier<int>`, `IIdentifier<long>`, `IIdentifier<string>`, `IETag` and `IChangeLog`. Defaults to `true`."
              | optional,
            inherits
              | String
              | doc "Defaults to `EntityBase` for a standard entity. For Reference Data it will default to `ReferenceDataBaseEx<xxx>` depending on the corresponding `RefDataType` value. See `OmitEntityBase` if the desired outcome is to not inherit from any of the aforementioned base classes."
              | optional,
            internalOnly | Bool | optional,
            isInitialOverride
              | Bool
              | doc "Set to either `true` or `false` to override as specified; otherwise, `null` to check each property. Defaults to `null`."
              | optional,
            jsonSerializer
              | std.enum.TagOrString
              | [| 'Newtonsoft, 'SystemText |]
              | doc "Defaults to the `CodeGeneration.JsonSerializer` configuration property where specified; otherwise, `SystemText`."
              | optional,
            managerCleanUp
              | Bool
              | doc "This can be overridden within the `CodeGeneration` and `Operation`(s)."
              | optional,
            managerCtor
              | std.enum.TagOrString
              | [| 'Protected, 'Private, 'Public |]
              | doc "Defaults to `Public`."
              | optional,
            managerCtorCustom | Bool | optional,
            managerCtorParams
              | Array String
              | doc "Each constructor parameter should be formatted as `Type` + `^` + `Name`; e.g. `IConfiguration^Config`. Where the `Name` portion is not specified it will be inferred. Where the `Type` matches an already inferred value it will be ignored."
              | optional,
            managerCustom | Bool | optional,
            managerExtensions
              | Bool
              | doc "This can be overridden using `Operation.ManagerExtensions`."
              | optional,
            name | String,
            namespace
              | String
              | doc "Appended to the end of the standard structure as follows: `{Company}.{AppName}.Business.Entities.{Namespace}`."
              | optional,
            odataCollectionName
              | String
              | doc "The underlying `Simple.OData.Client` will attempt to infer."
              | optional,
            odataCustomMapper
              | Bool
              | doc "Otherwise, by default, a `Mapper` will be generated."
              | optional,
            odataModel | String | optional,
            odataType
              | String
              | doc "Defaults to the `CodeGeneration.ODataName` configuration property (its default value is `IOData`). Should be formatted as `Type` + `^` + `Name`."
              | optional,
            omitEntityBase
              | Bool
              | doc "As such any of the `EntityBase` related capabilites are not supported (are omitted from generation). The intention for this is more for the generation of simple internal entities."
              | optional,
            operations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Operation", { _ | Dyn } ]
              )
              | optional,
            patch | Bool | optional,
            privateName
              | String
              | doc "Overrides the `Name` to be used for private fields. By default reformatted from `Name`; e.g. `FirstName` as `_firstName`."
              | optional,
            properties
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Property", { _ | Dyn } ]
              )
              | optional,
            refDataCodeDataName
              | String
              | doc "Defaults to `Code` (literal)."
              | optional,
            refDataETagDataName
              | String
              | doc "Defaults to `RowVersion` (literal)."
              | optional,
            refDataIdDataName
              | String
              | doc "Defaults to `Name` + `Id` (literal)."
              | optional,
            refDataIsActiveDataName
              | String
              | doc "Defaults to `IsActive` (literal)."
              | optional,
            refDataSortOrder
              | std.enum.TagOrString
              | [| 'Text, 'Code, 'Id, 'SortOrder |]
              | doc "Specifies the default sort order for the underlying Reference Data collection. Defaults to `SortOrder`."
              | optional,
            refDataSortOrderDataName
              | String
              | doc "Defaults to `SortOrder` (literal)."
              | optional,
            refDataStoredProcedureName
              | String
              | doc "Defaults to `sp` (literal) + `Name` + `GetAll` (literal)."
              | optional,
            refDataText
              | Bool
              | doc "This is used where serializing within the Web API`Controller` and the `ExecutionContext.IsRefDataTextSerializationEnabled` is set to `true` (which is automatically set where the url contains `$text=true`). Defaults from `CodeGeneration.RefDataText`."
              | optional,
            refDataTextDataName
              | String
              | doc "Defaults to `Text` (literal)."
              | optional,
            refDataType
              | std.enum.TagOrString
              | [| 'string, 'Guid, 'long, 'int |]
              | doc "Required to identify an entity as being Reference Data. Specifies the underlying .NET Type used for the Reference Data identifier."
              | optional,
            text
              | String
              | doc "Overrides the Name (as sentence text) for the summary comments. It will be formatted as: `Represents the {Text} entity.`. To create a `<see cref=\"XXX\"/>` within use moustache shorthand (e.g. {{Xxx}}). To have the text used as-is prefix with a `+` plus-sign character."
              | optional,
            update | Bool | optional,
            validationFramework
              | std.enum.TagOrString
              | [| 'FluentValidation, 'CoreEx |]
              | doc "Defaults to `CodeGeneration.ValidationFramework`. This can be overridden within the `Operation`(s) and `Parameter`(s)."
              | optional,
            validator
              | String
              | doc "Only used for defaulting the `Create` and `Update` operation types (`Operation.Type`) where not specified explicitly."
              | optional,
            webApiAuthorize
              | String
              | doc "Defaults to the `CodeGeneration.WebApiAuthorize` configuration property (inherits) where not specified; can be overridden at the `Operation` level also."
              | optional,
            webApiAutoLocation
              | Bool
              | doc "This will automatically set the `Operation.WebApiLocation` for an `Operation` named `Create` where there is a corresponding named `Get`. This is defaulted from the `CodeGen.WebApiAutoLocation`."
              | optional,
            webApiConcurrency
              | Bool
              | doc "This provides an alternative where the underlying data source does not natively support optimistic concurrency (native support should always be leveraged as a priority). Where the `Operation.Type` is `Update` or `Patch`, the request ETag will be matched against the response for a corresponding `Get` operation to verify no changes have been made prior to updating. For this to function correctly the .NET response Type for the `Get` must be the same as that returned from the corresponding `Create`, `Update` and `Patch` (where applicable) as the generated ETag is a SHA256 hash of the resulting JSON. This defaults the `Operation.WebApiConcurrency`."
              | optional,
            webApiCtor
              | std.enum.TagOrString
              | [| 'Protected, 'Private, 'Public |]
              | doc "Defaults to `Public`."
              | optional,
            webApiCtorParams
              | Array String
              | doc "Each constructor parameter should be formatted as `Type` + `^` + `Name`; e.g. `IConfiguration^Config`. Where the `Name` portion is not specified it will be inferred. Where the `Type` matches an already inferred value it will be ignored."
              | optional,
            webApiGetOperation
              | String
              | doc "Defaults to `Get`. Specify either just the method name (e.g. `OperationName`) or, interface and method name (e.g. `IXxxManager.OperationName`) to be invoked where in a different `YyyManager.OperationName`."
              | optional,
            webApiRoutePrefix
              | String
              | doc "This is the base (prefix) `URI` for the entity and can be further extended when defining the underlying `Operation`(s). The `CodeGeneration.WebApiRoutePrefix` will be prepended where specified. Where not specified will automatically default to the pluralized `Name` (as lowercase)."
              | optional,
            webApiTags | Array String | optional,
            withResult
              | Bool
              | doc "Defaults to `CodeGeneration.WithResult`. This can be overridden within the Operation`(s)."
              | optional,
            ..
          },
      "definitions.Operation" =
        {
            authAction | String | optional,
            authEntity | String | optional,
            authPermission | String | optional,
            authRole | String | optional,
            autoImplement
              | std.enum.TagOrString
              | [|
                'None,
                'HttpAgent,
                'OData,
                'Cosmos,
                'EntityFramework,
                'Database
              |]
              | doc "Defaults to `Entity.AutoImplement`. The corresponding `Entity.AutoImplement` must be defined for this to be enacted. Auto-implementation is applicable for all `Operation.Type` options with the exception of `Custom`."
              | optional,
            cosmosContainerId
              | String
              | doc "Overrides the `Entity.CosmosContainerId`."
              | optional,
            cosmosModel
              | String
              | doc "Overrides the `Entity.CosmosModel`."
              | optional,
            cosmosPartitionKey
              | String
              | doc "Overrides the `Entity.CosmosPartitionKey`."
              | optional,
            dataEntityMapper
              | String
              | doc "Used where the default generated `Mapper` is not applicable."
              | optional,
            dataExtensions
              | Bool
              | doc "Defaults to `Entity.DataExtensions`."
              | optional,
            dataInvoker
              | Bool
              | doc "Where `Dataransaction` or `EventPublish` is `Data` then orchestration will default to `true`."
              | optional,
            dataSvcCustom
              | std.enum.TagOrString
              | [| 'None, 'Partial, 'Full |]
              | doc "`Full` indicates the logic is fully customized (only invocation is code-generated). `Partial` indicates combination of surrounding code-generation with final custom invocation versus data-layer. `None` indicates data-layer invocation with _no_ custom invocation (default)."
              | optional,
            dataSvcExtensions
              | Bool
              | doc "Defaults to `Entity.ManagerExtensions`."
              | optional,
            dataSvcInvoker
              | Bool
              | doc "Where `DataSvcTransaction` or `EventPublish` is `DataSvc` then the orchestration will default to `true`."
              | optional,
            dataSvcTransaction | Bool | optional,
            dataTransaction
              | Bool
              | doc "Where using an `EventOutbox` this is ignored as it is implied through its usage."
              | optional,
            databaseStoredProc
              | String
              | doc "Defaults to `sp` + `Entity.Name` + `Operation.Name`; e.g. `spPersonCreate`."
              | optional,
            entityFrameworkModel
              | String
              | doc "Overrides the `Entity.EntityFrameworkModel`."
              | optional,
            eventPublish
              | std.enum.TagOrString
              | [| 'Data, 'DataSvc, 'None |]
              | doc "Defaults to the `Entity.EventPublish` configuration property (inherits) where not specified. Used to enable the sending of messages to the likes of EventGrid, Service Broker, SignalR, etc."
              | optional,
            eventSource
              | String
              | doc "Defaults to `Entity.EventSource`. Note: when used in code-generation the `CodeGeneration.EventSourceRoot` will be prepended where specified. To include the entity id/key include a `{$key}` placeholder (`Create`, `Update` or `Delete` operation only); for example: `person/{$key}`. Otherwise, specify the C# string interpolation expression; for example: `person/{r.Id}`."
              | optional,
            eventSubject
              | String
              | doc "The event subject template defaults to `{AppName}.{Entity.Name}`, plus each of the unique key placeholders comma separated; e.g. `Domain.Entity.{id1},{id2}` (depending on whether `Entity.EventSubjectFormat` is `NameAndKey` or `NameOnly`). The event action defaults to `WebApiOperationType` or `Operation.Type` where not specified. Multiple events can be raised by specifying more than one subject/action pair separated by a semicolon. E.g. `Demo.Person.{id}:Create;Demo.Other.{id}:Update`."
              | optional,
            eventValue
              | String
              | doc "The event value is automatically inferred where the `Operation.Type` is `Create`, `Update` or  `Delete`."
              | optional,
            excludeAll
              | Bool
              | doc "Is a shorthand means for setting all of the other `Exclude*` properties to `true`."
              | optional,
            excludeData | Bool | optional,
            excludeDataSvc | Bool | optional,
            excludeGrpcAgent | Bool | optional,
            excludeIData | Bool | optional,
            excludeIDataSvc | Bool | optional,
            excludeIManager | Bool | optional,
            excludeManager | Bool | optional,
            excludeWebApi | Bool | optional,
            excludeWebApiAgent | Bool | optional,
            grpc
              | Bool
              | doc "gRPC support is an explicit opt-in model (see `CodeGeneration.Grpc` configuration); therefore, each corresponding `Entity`, `Property` and `Operation` will also need to be opted-in specifically."
              | optional,
            httpAgentCode
              | String
              | doc "Appended to `Entity.HttpAgentCode` where specified to extend."
              | optional,
            httpAgentMethod
              | std.enum.TagOrString
              | [| 'HttpPatch, 'HttpDelete, 'HttpPut, 'HttpPost, 'HttpGet |]
              | doc "Defaults to `Operation.WebApiMethod`."
              | optional,
            httpAgentModel
              | String
              | doc "This can be overridden within the `Operation`(s)."
              | optional,
            httpAgentReturnModel
              | String
              | doc "Defaults to `Operation.HttpAgentModel` where the `Operation.ReturnType` is equal to `Entity.Name` (same type). This can be overridden within the `Operation`(s)."
              | optional,
            httpAgentRoute
              | String
              | doc "This is appended to the `Entity.HttpAgentRoutePrefix`."
              | optional,
            managerCleanUp
              | Bool
              | doc "This can be overridden within the `CodeGeneration` and `Entity`."
              | optional,
            managerCustom | Bool | optional,
            managerExtensions
              | Bool
              | doc "Defaults to `Entity.ManagerExtensions`."
              | optional,
            managerOperationType
              | std.enum.TagOrString
              | [| 'Unspecified, 'Delete, 'Update, 'Read, 'Create |]
              | doc "The default will be inferred from the `Operation.Type`; however, where the `Operation.Type` is `Custom` it will default to `Unspecified`."
              | optional,
            managerTransaction | Bool | optional,
            name | String,
            odataCollectionName
              | String
              | doc "Overriddes the `Entity.ODataCollectionName`; otherwise, the underlying `Simple.OData.Client` will attempt to infer."
              | optional,
            paging | Bool | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Parameter", { _ | Dyn } ]
              )
              | optional,
            primaryKey
              | Bool
              | doc "This simplifies the specification of these properties as parameters versus having to declare each specifically. Each of the parameters will also be set to be mandatory."
              | optional,
            privateName
              | String
              | doc "Overrides the `Name` to be used for private usage. By default reformatted from `Name`; e.g. `GetByArgs` as `_getByArgs`."
              | optional,
            query | Bool | optional,
            returnText
              | String
              | doc "A default will be created where not specified. To create a `<see cref=\"XXX\"/>` within use moustache shorthand (e.g. {{Xxx}}). To have the text used as-is prefix with a `+` plus-sign character."
              | optional,
            returnType
              | String
              | doc "Defaults to the parent `Entity.Name` where the `Operation.Type` options are `Get`, `GetColl`, `Create` or `Update`; otherwise, defaults to `void`."
              | optional,
            returnTypeNullable
              | Bool
              | doc "Will be inferred where the `ReturnType` is denoted as nullable; i.e. suffixed by a `?`. Additionally a `Type` of `Get` will default to `true` where not specified."
              | optional,
            text
              | String
              | doc "The `Text` will be defaulted for all the `Operation.Type` options with the exception of `Custom`. To create a `<see cref=\"XXX\"/>` within use moustache shorthand (e.g. {{Xxx}}). To have the text used as-is prefix with a `+` plus-sign character."
              | optional,
            type
              | std.enum.TagOrString
              | [|
                'CustomManagerOnly,
                'Custom,
                'Delete,
                'Patch,
                'Update,
                'Create,
                'GetColl,
                'Get
              |]
              | doc "Defaults to `Custom`."
              | optional,
            validationFramework
              | std.enum.TagOrString
              | [| 'FluentValidation, 'CoreEx |]
              | doc "Defaults to `Entity.ValidationFramework`. This can be overridden within the `Parameter`(s)."
              | optional,
            validator
              | String
              | doc "Defaults to the `Entity.Validator` where not specified explicitly (where `Operation.Type` options `Create` or `Update`)."
              | optional,
            valueType
              | String
              | doc "Defaults to the parent `Entity.Name` where the `Operation.Type` options are `Create` or `Update`."
              | optional,
            webApiAlternateStatus
              | std.enum.TagOrString
              | [| 'none, 'NotFound, 'NoContent, 'Created, 'Accepted, 'OK |]
              | doc "The value defaults as follows: `NotFound` for `Operation.Type` of `Get`, `Update`, `Patch`; `NoContent` for `Operation.Type` of `GetColl`; otherwise, `none`. A value of `none` indicates that there is _no_ alternate status."
              | optional,
            webApiAuthorize
              | String
              | doc "Where not specified no attribute output will occur; it will then inherit as supported by .NET."
              | optional,
            webApiConcurrency
              | Bool
              | doc "This provides an alternative where the underlying data source does not natively support optimistic concurrency (native support should always be leveraged as a priority). Where the `Operation.Type` is `Update` or `Patch`, the request ETag will be matched against the response for a corresponding `Get` operation to verify no changes have been made prior to updating. For this to function correctly the .NET response Type for the `Get` must be the same as that returned from the corresponding `Create`, `Update` and `Patch` (where applicable) as the generated ETag is a SHA256 hash of the resulting JSON. Defaults to `Entity.WebApiConcurrency`."
              | optional,
            webApiGetOperation
              | String
              | doc "Defaults to `Get`. Specify either just the method name (e.g. `OperationName`) or, interface and method name (e.g. `IXxxManager.OperationName`) to be invoked where in a different `YyyManager.OperationName`."
              | optional,
            webApiLocation
              | String
              | doc "This uses similar formatting to the `WebApiRoute`. The response value is accessed using `r.` notation to access underlying properties; for example `{r.Id}` or `person/{r.Id}`. The `Entity.WebApiRoutePrefix` will be prepended automatically; however, to disable set the first character to `!`, e.g. `!person/{r.Id}`. The URI can be inferred from another `Operation` by using a lookup `^`; for example `^Get` indicates to infer from the named `Get` operation (where only `^` is specified this is shorthand for `^Get` as this is the most common value). The Location URI will ensure the first character is a `/` so it acts a 'relative URL absolute path'."
              | optional,
            webApiMethod
              | std.enum.TagOrString
              | [| 'HttpDelete, 'HttpPut, 'HttpPost, 'HttpGet |]
              | doc "The value defaults as follows: `HttpGet` for `Operation.Type` value `Get` or `GetColl`, `HttpPost` for `Operation.Type` value `Create` or `Custom`, `HttpPut` for `Operation.Type` value `Update`, and `HttpDelete` for `Operation.Type` value `Delete`. An `Operation.Type` value `Patch` can not be specified and will always default to `HttpPatch`."
              | optional,
            webApiProduces | Array String | optional,
            webApiProducesResponseType
              | String
              | doc "Defaults to the _Common_ type. A value of `None`, `none` or `` will ensure no type is emitted."
              | optional,
            webApiRoute
              | String
              | doc "Where the value is specified with a leading `!` character this indicates that the `Entity.WebApiRoutePrefix` should not be used, and the value should be used as-is (with the `!` removed)."
              | optional,
            webApiStatus
              | std.enum.TagOrString
              | [| 'NotFound, 'NoContent, 'Created, 'Accepted, 'OK |]
              | doc "The value defaults as follows: `OK` for `Operation.Type` value `Get`, `GetColl`, `Update`, `Delete` or `Custom`, `Created` for `Operation.Type` value `Create`."
              | optional,
            webApiTags
              | Array String
              | doc "Overrides the `Entity.WebApiTags`; unless, if the first tag value is a `^` then this indicates that the `Entity.WebApiTags` are to be included (inherited) as a replacement. Otherwise, defaults to `Entity.WebApiTags`."
              | optional,
            webApiUpdateOperation
              | String
              | doc "Defaults to `Update`. Specify either just the method name (e.g. `OperationName`) or, interface and method name (e.g. `IXxxManager.OperationName`) to be invoked where in a different `YyyManager.OperationName`."
              | optional,
            withResult
              | Bool
              | doc "Defaults to `Entity.WilhResult`."
              | optional,
            ..
          },
      "definitions.Parameter" =
        {
            argumentName
              | String
              | doc "Overrides the `Name` to be used for argument parameters. By default reformatted from `Name`; e.g. `FirstName` as `firstName`."
              | optional,
            dataConverter
              | String
              | doc "A `Converter` is used to convert a data source value to/from a .NET `Type` where no standard data conversion can be applied. Where this value is suffixed by `<T>` or `{T}` this will automatically set `Type`."
              | optional,
            "default"
              | String
              | doc "Where the `Type` is `string` then the specified default value will need to be delimited. Any valid value assignment C# code can be used."
              | optional,
            grpcType | String | optional,
            isMandatory | Bool | optional,
            layerPassing
              | std.enum.TagOrString
              | [| 'ToManagerCollSet, 'ToManagerSet, 'All |]
              | doc "Defaults to `All`. To further describe, `All` passes the parameter through all layeys, `ToManagerSet` only passes the parameter to the `Manager` layer and overrides the same named property within the corresponding `value` parameter, `ToManagerCollSet` only passes the parameter to the `Manager` layer and overrides the same named property within the corresponding `value` collection parameter. Where using the `PrimaryKey` option to automatically set `Parameters`, and the `Operation.Type` is `Create` or `Update` it will default to `ToManagerSet`."
              | optional,
            name | String,
            nullable | Bool | optional,
            privateName
              | String
              | doc "Overrides the `Name` to be used for private fields. By default reformatted from `Name`; e.g. `FirstName` as `_firstName`."
              | optional,
            property | String | optional,
            refDataList
              | Bool
              | doc "This is required to enable a list of Reference Data values (as per `RefDataType`) to be passed as an argument for example."
              | optional,
            refDataType
              | std.enum.TagOrString
              | [| 'Guid, 'int, 'string |]
              | doc "Defaults to `string` where not specified and the corresponding `Type` starts with (prefix) `RefDataNamespace.`."
              | optional,
            text
              | String
              | doc "By default the `Text` will be the `Name` reformatted as sentence casing. To have the text used as-is prefix with a `+` plus-sign character."
              | optional,
            type
              | String
              | doc "Defaults to `string`. To reference a Reference Data `Type` always prefix with `RefDataNamespace` (e.g. `RefDataNamespace.Gender`) or shortcut `^` (e.g. `^Gender`). This will ensure that the appropriate Reference Data `using` statement is used. _Shortcut:_ Where the `Type` starts with (prefix) `RefDataNamespace.` or `^`, and the correspondong `RefDataType` attribute is not specified it will automatically default the `RefDataType` to `string.`"
              | optional,
            validationFramework
              | std.enum.TagOrString
              | [| 'FluentValidation, 'CoreEx |]
              | doc "Defaults to `Operation.ValidationFramework`."
              | optional,
            validator | String | optional,
            validatorCode | String | optional,
            webApiFrom
              | std.enum.TagOrString
              | [|
                'AcceptsBody,
                'FromEntityProperties,
                'FromRoute,
                'FromBody,
                'FromQuery
              |]
              | doc "Defaults to `FromQuery`; unless the parameter `Type` has also been defined as an `Entity` within the code-gen config file then it will default to `FromEntityProperties`. Specifies that the parameter will be declared with corresponding `FromQueryAttribute`, `FromBodyAttribute` or `FromRouteAttribute` for the Web API method. The `FromEntityProperties` will declare all properties of the `Entity` as query parameters.An `AcceptsBody` indicates that the _value_ will be passed in the HTTP Request Body and be handled (JSON deserialized) as a `CoreEx.AspNetCore.WebApis.WebWebApiParam` (default behavior for a `Create` or `Update` operation type)."
              | optional,
            webApiText
              | String
              | doc "By default the `WbeApiText` will be the `Name` reformatted as sentence casing. To have the text used as-is prefix with a `+` plus-sign character."
              | optional,
            ..
          },
      "definitions.Property" =
        {
            annotation1 | String | optional,
            annotation2 | String | optional,
            annotation3 | String | optional,
            argumentName
              | String
              | doc "Overrides the `Name` to be used for argument parameters. By default reformatted from `Name`; e.g. `FirstName` as `firstName`."
              | optional,
            autoCreate | Bool | optional,
            cacheKey
              | Bool
              | doc "This will implement `ICacheKey` for the generated entity."
              | optional,
            cosmosMapper
              | std.enum.TagOrString
              | [| 'Flatten, 'Map, 'Ignore, 'Set |]
              | doc "Defaults to `Set`."
              | optional,
            dataAutoGenerated | Bool | optional,
            dataConverter
              | String
              | doc "A `Converter` is used to convert a data source value to/from a .NET `Type` where no standard data conversion can be applied. Where this value is suffixed by `<T>` or `{T}` this will automatically set `Type`."
              | optional,
            dataMapperIgnore
              | Bool
              | doc "All properties are included by default."
              | optional,
            dataModelIgnore
              | Bool
              | doc "All properties are included in the data model by default."
              | optional,
            dataModelSerializationIgnore
              | Bool
              | doc "All properties are included in the data model by default."
              | optional,
            dataName
              | String
              | doc "Defaults to the property `Name`. Represents the column name for a `Database`, or the correspinding property name for the other options."
              | optional,
            dataOperationTypes
              | std.enum.TagOrString
              | [|
                'Delete,
                'Update,
                'Create,
                'Get,
                'AnyExceptGet,
                'AnyExceptUpdate,
                'AnyExceptCreate,
                'Any
              |]
              | doc "Defaults to `Any`."
              | optional,
            databaseDbType
              | String
              | doc "Overrides the inferred database type; i.e. can specify `Date` or `DateTime2`, for .NET Type `System.DateTime`."
              | optional,
            databaseIgnore | Bool | optional,
            databaseMapper
              | String
              | doc "A `Mapper` is used to map a data source value to/from a .NET complex `Type` (i.e. class with one or more properties)."
              | optional,
            dateTimeTransform
              | std.enum.TagOrString
              | [|
                'DateTimeUnspecified,
                'DateTimeUtc,
                'DateTimeLocal,
                'DateOnly,
                'None,
                'UseDefault
              |]
              | doc "Defaults to `UseDefault`. This is only applied where the `Type` is `DateTime`."
              | optional,
            "default"
              | String
              | doc "Where the `Type` is `string` then the specified default value will need to be delimited. Any valid value assignment C# code can be used."
              | optional,
            displayName
              | String
              | doc "Defaults to the `Name` as sentence case."
              | optional,
            entityFrameworkMapper
              | std.enum.TagOrString
              | [| 'Flatten, 'Map, 'Ignore, 'Set |]
              | doc "Defaults to `Set`."
              | optional,
            grpcFieldNo | std.number.Integer | optional,
            grpcType | String | optional,
            httpAgentMapper
              | std.enum.TagOrString
              | [| 'Flatten, 'Map, 'Ignore, 'Set |]
              | doc "Defaults to `Set`."
              | optional,
            immutable | Bool | optional,
            inherited | Bool | optional,
            internalOnly
              | Bool
              | doc "In this instance the `Property` will be excluded from the `Common` entity declaration and `Business` JSON serialization."
              | optional,
            isEntity
              | Bool
              | doc "Will be inferred (default to `true`) where the `Type` is `ChangeLog` or the `Type` is found as another `Entity` within the code-generation configuration file."
              | optional,
            jsonDataModelName
              | String
              | doc "Defaults to `JsonName` where not specified."
              | optional,
            jsonName
              | String
              | doc "Defaults to `ArgumentName` where not specified (i.e. camelCase); however, where the property is `ETag` it will default to the `Config.ETagJsonName`."
              | optional,
            modelText
              | String
              | doc "By default the `ModelText` will be the `Name` reformatted as sentence casing. Depending on whether the `Type` is `bool`, will appear in one of the two generated sentences. Where not `bool` it will be: Gets or sets a value indicating whether {text}.'. Otherwise, it will be: Gets or sets the {text}.'. To create a `<see cref=\"XXX\"/>` within use moustache shorthand (e.g. {{Xxx}}). To have the text used as-is prefix with a `+` plus-sign character."
              | optional,
            name | String,
            nullable | Bool | optional,
            odataMapper
              | std.enum.TagOrString
              | [| 'Skip, 'Ignore, 'Map |]
              | doc "Defaults to `Map` which indicates the property will be explicitly mapped. A value of `Ignore` will explicitly `Ignore`, whilst a value of `Skip` will skip code-generated mapping altogether."
              | optional,
            partitionKey
              | Bool
              | doc "This will implement `IPartitionKey` for the generated entity."
              | optional,
            primaryKey
              | Bool
              | doc "This is also used to simplify the parameter specification for an Entity Operation by inferrence."
              | optional,
            privateName
              | String
              | doc "Overrides the `Name` to be used for private fields. By default reformatted from `Name`; e.g. `FirstName` as `_firstName`."
              | optional,
            refDataList
              | Bool
              | doc "This is required to enable a list of Reference Data values (as per `RefDataType`) to be passed as an argument for example."
              | optional,
            refDataMapping
              | Bool
              | doc "Mapped properties are a special Reference Data property type that ensure value uniqueness; this allows the likes of additional to/from mappings to occur between systems where applicable."
              | optional,
            refDataText
              | std.enum.TagOrString
              | [| 'Never, 'Always, 'Optional |]
              | doc "This is used where serializing within the Web API `Controller` and the `ExecutionContext.IsRefDataTextSerializationEnabled` is set to `true` (which is automatically set where the url contains `$text=true`).`Optional` indicates when `ExecutionContext.IsRefDataTextSerializationEnabled` is set to `true` then a value is output, `Always` indicates that the value is _always_ output, and `Never` indicates that feature is turned off."
              | optional,
            refDataTextName | String | optional,
            refDataType
              | std.enum.TagOrString
              | [| 'Guid, 'int, 'string |]
              | doc "Defaults to `string` (being the `ReferenceDataBase.Code`) where not specified and the corresponding `Type` starts with (prefix) `RefDataNamespace.` or `^`. Note: an `Id` of type `string` is currently not supported; the use of the `Code` is the recommended approach."
              | optional,
            serializationAlwaysInclude | Bool | optional,
            serializationIgnore
              | Bool
              | doc "All properties are serialized by default."
              | optional,
            stringCasing
              | std.enum.TagOrString
              | [| 'Title, 'Upper, 'Lower, 'None, 'UseDefault |]
              | doc "Defaults to `UseDefault`. This is only applied where the `Type` is `string`."
              | optional,
            stringTransform
              | std.enum.TagOrString
              | [| 'EmptyToNull, 'NullToEmpty, 'None, 'UseDefault |]
              | doc "Defaults to `UseDefault`. This is only applied where the `Type` is `string`."
              | optional,
            stringTrim
              | std.enum.TagOrString
              | [| 'Both, 'End, 'Start, 'None, 'UseDefault |]
              | doc "Defaults to `UseDefault`. This is only applied where the `Type` is `string`."
              | optional,
            text
              | String
              | doc "By default the `Text` will be the `Name` reformatted as sentence casing. Depending on whether the `Type` is `bool`, will appear in one of the two generated sentences. Where not `bool` it will be: Gets or sets a value indicating whether {text}.'. Otherwise, it will be: Gets or sets the {text}.'. To create a `<see cref=\"XXX\"/>` within use moustache shorthand (e.g. {{Xxx}}). To have the text used as-is prefix with a `+` plus-sign character."
              | optional,
            type
              | String
              | doc "Defaults to `string`. To reference a Reference Data `Type` always prefix with `RefDataNamespace` (e.g. `RefDataNamespace.Gender`) or shortcut `^` (e.g. `^Gender`). This will ensure that the appropriate Reference Data `using` statement is used. _Shortcut:_ Where the `Type` starts with (prefix) `RefDataNamespace.` or `^`, and the correspondong `RefDataType` attribute is not specified it will automatically default the `RefDataType` to `string.`"
              | optional,
            ..
          },
    }
    in
  refs."definitions.CodeGeneration"