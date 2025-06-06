# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.CodeGeneration" =
        {
            appBasedAgentArgs | Bool | optional,
            cosmosName
              | String
              | doc "Defaults to 'ICosmosDb'. This can be overridden within the 'Entity'(s)."
              | optional,
            cosmosUsingNamespace | String | optional,
            dataUsingNamespace | String | optional,
            databaseName
              | String
              | doc "Defaults to 'IDatabase'. This can be overridden within the 'Entity'(s)."
              | optional,
            databaseSchema | String | doc "Defaults to 'dbo'." | optional,
            databaseUsingNamespace | String | optional,
            entities
              | Array (
                std.contract.Sequence [ refs."definitions.Entity", { _ | Dyn } ]
              )
              | optional,
            entityFrameworkName
              | String
              | doc "Defaults to 'IEfDb'. This can be overridden within the 'Entity'(s)."
              | optional,
            entityFrameworkUsingNamespace | String | optional,
            entityScope
              | std.enum.TagOrString
              | [| 'Autonomous, 'Business, 'Common |]
              | doc "Defaults to 'Common' for backwards compatibility; 'Autonomous' is **recommended**. Determines where the entity is scoped/defined, being 'Common' or 'Business' (i.e. not externally visible). Additionally, there is the special case of 'Autonomous' where both a 'Common' and 'Business' entity are generated (where only the latter inherits from 'EntityBase', etc)."
              | optional,
            entityUsing
              | std.enum.TagOrString
              | [| 'None, 'All, 'Business, 'Common |]
              | doc "Defaults to 'Common' (unless 'EntityScope' is 'Autonomous' and then it will default to 'Business') which will add '.Common.Entities'. Additionally, 'Business' to add '.Business.Entities', 'All' to add both, and 'None' to exclude any. This can be overridden for each 'Entity'."
              | optional,
            etagJsonName
              | std.enum.TagOrString
              | [| 'ETAG, 'ETag, '_eTag, '_etag, 'eTag, 'etag |]
              | doc "Defaults to 'etag'. Note that the 'JsonName' can be set individually per property where required."
              | optional,
            eventActionFormat
              | std.enum.TagOrString
              | [| 'PastTense, 'None |]
              | doc "Defaults to 'None' (no formatting required, i.e. as-is)'."
              | optional,
            eventCasing
              | std.enum.TagOrString
              | [| 'Upper, 'Lower, 'None |]
              | doc "Defaults to 'None' (no casing required, i.e. as-is)'."
              | optional,
            eventOutbox
              | std.enum.TagOrString
              | [| 'Database, 'None |]
              | doc "Defaults to 'None'. A value of 'Database' will result in the 'DatabaseEventOutboxInvoker' being used to orchestrate."
              | optional,
            eventPublish
              | std.enum.TagOrString
              | [| 'Data, 'DataSvc, 'None |]
              | doc "Defaults to 'DataSvc'; unless the 'EventOutbox' is not 'None' where it will default to 'Data'. Used to enable the sending of messages to the likes of EventHub, Service Broker, SignalR, etc. This can be overridden within the 'Entity'(s)."
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
              | doc "Used to enable the sending of messages to the likes of EventHub, Service Broker, SignalR, etc. This can be overridden within the 'Entity'(s)."
              | optional,
            eventSubjectSeparator
              | String
              | doc "Defaults to '.'. Used only where the subject is automatically inferred."
              | optional,
            eventTransaction
              | Bool
              | doc "Usage will force a rollback of any underlying data transaction (where the provider supports TransactionScope) on failure, such as an 'EventPublish' error. This is by no means implying a Distributed Transaction (DTC) should be invoked; this is only intended for a single data source that supports a TransactionScope to guarantee reliable event publishing. Defaults to 'false'. This essentially defaults the 'Entity.EventTransaction' where not otherwise specified. This should only be used where 'EventPublish' is 'DataSvc' and a transactionally-aware data source is being used."
              | optional,
            grpc
              | Bool
              | doc "gRPC support is an explicit opt-in model. Must be set to 'true' for any of the subordinate gRPC capabilities to be code-generated. Will require each 'Entity', and corresponding 'Property' and 'Operation' to be opted-in specifically."
              | optional,
            httpAgentName
              | String
              | doc "Defaults to 'IHttpAgent'. This can be overridden within the 'Entity'(s)."
              | optional,
            jsonSerializer
              | std.enum.TagOrString
              | [| 'Newtonsoft, 'None |]
              | doc "Defaults to 'Newtonsoft'. This can be overridden within the 'Entity'(s)."
              | optional,
            namespaceApi
              | String
              | doc "Defaults to 'NamespaceBase' + '.' + 'ApiName' (runtime parameter). For example 'Beef.Demo.Api'."
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
            odataName
              | String
              | doc "Defaults to 'IOData'. This can be overridden within the 'Entity'(s)."
              | optional,
            odataUsingNamespace | String | optional,
            pathApi
              | String
              | doc "Defaults to 'PathBase' + '.' + 'ApiName' (runtime parameter). For example 'Beef.Demo.Api'."
              | optional,
            pathBase
              | String
              | doc "Defaults to 'Company' (runtime parameter) + '.' + 'AppName' (runtime parameter). For example 'Beef.Demo'."
              | optional,
            pathBusiness
              | String
              | doc "Defaults to 'PathBase' + '.Business' (literal). For example 'Beef.Demo.Business'."
              | optional,
            pathCommon
              | String
              | doc "Defaults to 'PathBase' + '.Common' (literal). For example 'Beef.Demo.Common'."
              | optional,
            refDataAppendToNamespace
              | String
              | doc "Defaults to 'null'; being nothing to append."
              | optional,
            refDataBusNamespace | String | optional,
            refDataCache
              | std.enum.TagOrString
              | [| 'ReferenceDataMultiTenantCache, 'ReferenceDataCache |]
              | doc "Defaults to 'ReferenceDataCache'. A value of 'ReferenceDataCache' specifies a single-tenant cache; otherwise, 'ReferenceDataMultiTenantCache' for a multi-tenant cache leverageing the 'ExecutionContext.TenantId'."
              | optional,
            refDataCommonNamespace
              | String
              | doc "Defaults to 'Company' + '.' (literal) + AppName + '.Common.Entities' (literal)."
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
                '"ReferenceDataCodeConverter<T>",
                '"ReferenceDataCodeConverter{T}",
                'ReferenceDataCodeConverter
              |]
              | doc "Defaults to 'ReferenceDataCodeConverter<T>'. Where this value is suffixed by '<T>' or '{T}' this will automatically set 'Property.DataConverterIsGeneric' to 'true'."
              | optional,
            refDataNamespace
              | String
              | doc "Defaults to 'Company' + '.' (literal) + AppName + '.' (literal) + 'EntityUsing' + '.Entities' (literal)."
              | optional,
            refDataText
              | Bool
              | doc "This is used where serializing within the Web API 'Controller' and the 'ExecutionContext.IsRefDataTextSerializationEnabled' is set to 'true' (which is automatically set where the url contains '$text=true')."
              | optional,
            refDataWebApiRoute | String | optional,
            usingNamespace1
              | String
              | doc "Typically used where referening a 'Type' from a Namespace that is not generated by default."
              | optional,
            usingNamespace2
              | String
              | doc "Typically used where referening a 'Type' from a Namespace that is not generated by default."
              | optional,
            usingNamespace3
              | String
              | doc "Typically used where referening a 'Type' from a Namespace that is not generated by default."
              | optional,
            validatorLayer
              | std.enum.TagOrString
              | [| 'Common, 'Business |]
              | doc "Defaults to 'Business'. A value of 'Business' indicates that the Validators will be defined within the 'Business' namespace/assembly; otherwise, defined within the 'Common' namespace/assembly."
              | optional,
            webApiAuthorize
              | String
              | doc "This can be overridden within the 'Entity'(s) and/or their corresponding 'Operation'(s)."
              | optional,
            webApiAutoLocation
              | Bool
              | doc "This will automatically set the 'Operation.WebApiLocation' for an 'Operation' named 'Create' where there is a corresponding named 'Get'. This can be overridden within the 'Entity'(s)."
              | optional,
            webApiRoutePrefix
              | String
              | doc "This is the base (prefix) 'URI' prepended to all entity and underlying 'Operation'(s)."
              | optional,
            ..
          },
      "definitions.Const" =
        {
            name | String,
            text
              | String
              | doc "By default the 'Text' will be the 'Name' reformatted as sentence casing. It will be formatted as: 'Represents a {text} constant value.' To create a '<see cref=\"XXX\"/>' within use moustache shorthand (e.g. '{{Xxx}}')."
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
              | doc "Overrides the 'Name' to be used for argument parameters. By default reformatted from 'Name'; e.g. 'FirstName' as 'firstName'."
              | optional,
            authRole
              | String
              | doc "Used where not overridden specifically for an 'Operation'; i.e. acts as the default."
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
              | doc "Defaults to 'None'. Indicates that the implementation for the underlying 'Operations' will be auto-implemented using the selected data source (unless explicity overridden). When selected some of the related attributes will also be required (as documented). Additionally, the 'AutoImplement' indicator must be selected for each underlying 'Operation' that is to be auto-implemented."
              | optional,
            collection | Bool | optional,
            collectionInherits
              | String
              | doc "Defaults to 'EntityBaseCollection' or 'EntityBaseKeyedCollection' depending on 'CollectionKeyed'. For Reference Data it will default to 'ReferenceDataCollectionBase'."
              | optional,
            collectionKeyed | Bool | optional,
            collectionResult
              | Bool
              | doc "Enables the likes of additional paging state to be stored with the underlying collection."
              | optional,
            collectionResultInherits
              | String
              | doc "Defaults to 'EntityCollectionResult'."
              | optional,
            constType
              | std.enum.TagOrString
              | [| 'string, 'Guid, 'long, 'int |]
              | doc "The .NET Type to be used for the 'const' values. Defaults to 'string'."
              | optional,
            consts
              | Array (
                std.contract.Sequence [ refs."definitions.Const", { _ | Dyn } ]
              )
              | optional,
            cosmosContainerId | String | optional,
            cosmosCustomMapper
              | Bool
              | doc "Otherwise, by default, a 'Mapper' will be generated."
              | optional,
            cosmosMapperInheritsFrom | String | optional,
            cosmosModel | String | optional,
            cosmosName
              | String
              | doc "Defaults to the 'CodeGeneration.CosmosName' configuration property (its default value is 'ICosmosDb')."
              | optional,
            cosmosPartitionKey
              | String
              | doc "Defaults to 'PartitionKey.None'."
              | optional,
            cosmosValueContainer | Bool | optional,
            create | Bool | optional,
            dataCtor
              | std.enum.TagOrString
              | [| 'Protected, 'Private, 'Public |]
              | doc "Defaults to 'Public'."
              | optional,
            dataCtorParams
              | Array String
              | doc "Each constructor parameter should be formatted as 'Type' + '^' + 'Name'; e.g. 'IConfiguration^Config'. Where the 'Name' portion is not specified it will be inferred. Where the 'Type' matches an already inferred value it will be ignored."
              | optional,
            dataExtensions
              | Bool
              | doc "This can be overridden using 'Operation.DataExtensions'."
              | optional,
            dataModel
              | Bool
              | doc "The model will be generated with 'OmitEntityBase = true'. Any reference data properties will be defined using their 'RefDataType' intrinsic 'Type' versus their corresponding (actual) reference data 'Type'."
              | optional,
            dataSvcCaching | Bool | doc "Defaults to 'true'." | optional,
            dataSvcCtor
              | std.enum.TagOrString
              | [| 'Protected, 'Private, 'Public |]
              | doc "Defaults to 'Public'."
              | optional,
            dataSvcCtorParams
              | Array String
              | doc "Each constructor parameter should be formatted as 'Type' + '^' + 'Name'; e.g. 'IConfiguration^Config'. Where the 'Name' portion is not specified it will be inferred. Where the 'Type' matches an already inferred value it will be ignored."
              | optional,
            dataSvcExtensions
              | Bool
              | doc "This can be overridden using 'Operation.DataSvcExtensions'."
              | optional,
            databaseCustomerMapper
              | Bool
              | doc "Otherwise, by default, a 'Mapper' will be generated."
              | optional,
            databaseMapperInheritsFrom | String | optional,
            databaseName
              | String
              | doc "Defaults to the 'CodeGeneration.DatabaseName' configuration property (its default value is 'IDatabase')."
              | optional,
            databaseSchema | String | doc "Defaults to 'dbo'." | optional,
            delete | Bool | optional,
            entityFrameworkCustomMapper
              | Bool
              | doc "Otherwise, by default, a 'Mapper' will be generated."
              | optional,
            entityFrameworkMapperInheritsFrom
              | String
              | doc "Defaults to 'Model.{Name}'; i.e. an entity with the same name in the 'Model' namespace."
              | optional,
            entityFrameworkModel | String | optional,
            entityFrameworkName
              | String
              | doc "Defaults to the 'CodeGeneration.EntityFrameworkName' configuration property (its default value is 'IEfDb')."
              | optional,
            entityScope
              | std.enum.TagOrString
              | [| 'Autonomous, 'Business, 'Common |]
              | doc "Defaults to the 'CodeGeneration.EntityScope'. Determines where the entity is scoped/defined, being 'Common' or 'Business' (i.e. not externally visible). Additionally, there is a special case of 'Autonomous' where both a 'Common' and 'Business' entity are generated (where only the latter inherits from 'EntityBase', etc)."
              | optional,
            entityUsing
              | std.enum.TagOrString
              | [| 'None, 'All, 'Business, 'Common |]
              | doc "Defaults to 'EntityScope' ('Autonomous' will result in 'Business'). A value of 'Common' will add '.Common.Entities', 'Business' will add '.Business.Entities', 'All' to add both, and 'None' to exclude any."
              | optional,
            eventCasing
              | std.enum.TagOrString
              | [| 'Upper, 'Lower, 'None |]
              | doc "Defaults to 'CodeGeneration.EventCasing'."
              | optional,
            eventOutbox
              | std.enum.TagOrString
              | [| 'Database, 'None |]
              | doc "Defaults to 'CodeGeneration.EventOutbox' configuration property (inherits) where not specified. A value of 'Database' will result in the 'DatabaseEventOutboxInvoker' being used to orchestrate."
              | optional,
            eventPublish
              | std.enum.TagOrString
              | [| 'Data, 'DataSvc, 'None |]
              | doc "Defaults to the 'CodeGeneration.EventPublish' configuration property (inherits) where not specified. Used to enable the sending of messages to the likes of EventGrid, Service Broker, SignalR, etc. This can be overridden within the 'Operation'(s)."
              | optional,
            eventSource
              | String
              | doc "Defaults to 'Name' (as lowercase) appended with the '/{$key}' placeholder. Note: when used in code-generation the 'CodeGeneration.EventSourceRoot' will be prepended where specified. To include the entity id/key include a '{$key}' placeholder ('Create', 'Update' or 'Delete' operation only); for example: 'person/{$key}'. This can be overridden for the 'Operation'."
              | optional,
            eventSubjectFormat
              | std.enum.TagOrString
              | [| 'NameAndKey, 'NameOnly |]
              | doc "Defaults to 'CodeGeneration.EventSubjectFormat'."
              | optional,
            eventTransaction
              | Bool
              | doc "Usage will force a rollback of any underlying data transaction (where the provider supports TransactionScope) on failure, such as an 'EventPublish' error. This is by no means implying a Distributed Transaction (DTC) should be invoked; this is only intended for a single data source that supports a TransactionScope to guarantee reliable event publishing. Defaults to 'CodeGeneration.EventTransaction'. This essentially defaults the 'Operation.DataSvcTransaction' where not otherwise specified. This should only be used where 'EventPublish' is 'DataSvc' and a transactionally-aware data source is being used."
              | optional,
            excludeAll
              | Bool
              | doc "Is a shorthand means for setting all of the other 'Exclude*' properties (with the exception of 'ExcludeEntity') to exclude."
              | optional,
            excludeData
              | std.enum.TagOrString
              | [| 'RequiresMapper, 'Exclude, 'Include |]
              | doc "Defaults to 'Include' indicating _not_ to exlude. A value of 'Exclude' indicates to exclude all output; alternatively, 'RequiresMapper' indicates to at least output the corresponding 'Mapper' class."
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
            grpc
              | Bool
              | doc "gRPC support is an explicit opt-in model (see 'CodeGeneration.Grpc' configuration); therefore, each corresponding 'Property' and 'Operation' will also need to be opted-in specifically."
              | optional,
            httpAgentModel
              | String
              | doc "This can be overridden within the 'Operation'(s)."
              | optional,
            httpAgentName
              | String
              | doc "Defaults to 'CodeGeneration.HttpAgentName' configuration property (its default value is 'IHttpAgent')."
              | optional,
            httpAgentReturnModel
              | String
              | doc "This can be overridden within the 'Operation'(s)."
              | optional,
            httpAgentRoutePrefix
              | String
              | doc "This is the base (prefix) 'URI' for the HTTP Agent endpoint and can be further extended when defining the underlying 'Operation'(s)."
              | optional,
            iValidator
              | String
              | doc "Only used for defaulting the 'Create' and 'Update' operation types ('Operation.Type') where not specified explicitly."
              | optional,
            implements | String | optional,
            implementsAutoInfer
              | Bool
              | doc "Will attempt to infer the following: 'IGuidIdentifier', 'IInt32Identifier', 'IInt64Identifier', 'IStringIdentifier', 'IETag' and 'IChangeLog'. Defaults to 'true'."
              | optional,
            inherits
              | String
              | doc "Defaults to 'EntityBase' for a standard entity. For Reference Data it will default to 'ReferenceDataBaseXxx' depending on the corresponding 'RefDataType' value. See 'OmitEntityBase' if the desired outcome is to not inherit from any of the aforementioned base classes."
              | optional,
            isInitialOverride
              | Bool
              | doc "Set to either 'true' or 'false' to override as specified; otherwise, 'null' to check each property. Defaults to 'null'."
              | optional,
            jsonSerializer
              | std.enum.TagOrString
              | [| 'Newtonsoft, 'None |]
              | doc "Defaults to the 'CodeGeneration.JsonSerializer' configuration property where specified; otherwise, 'Newtonsoft'."
              | optional,
            managerCtor
              | std.enum.TagOrString
              | [| 'Protected, 'Private, 'Public |]
              | doc "Defaults to 'Public'."
              | optional,
            managerCtorParams
              | Array String
              | doc "Each constructor parameter should be formatted as 'Type' + '^' + 'Name'; e.g. 'IConfiguration^Config'. Where the 'Name' portion is not specified it will be inferred. Where the 'Type' matches an already inferred value it will be ignored."
              | optional,
            managerExtensions
              | Bool
              | doc "This can be overridden using 'Operation.ManagerExtensions'."
              | optional,
            name | String,
            namespace
              | String
              | doc "Appended to the end of the standard structure as follows: '{Company}.{AppName}.Common.Entities.{Namespace}'."
              | optional,
            odataCollectionName
              | String
              | doc "The underlying 'Simple.OData.Client' will attempt to infer."
              | optional,
            odataCustomMapper
              | Bool
              | doc "Otherwise, by default, a 'Mapper' will be generated."
              | optional,
            odataMapperInheritsFrom | String | optional,
            odataModel | String | optional,
            odataName
              | String
              | doc "Defaults to the 'CodeGeneration.ODataName' configuration property (its default value is 'IOData')."
              | optional,
            omitEntityBase
              | Bool
              | doc "As such any of the 'EntityBase' related capabilites are not supported (are omitted from generation). The intention for this is more for the generation of simple internal entities."
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
              | doc "Overrides the 'Name' to be used for private fields. By default reformatted from 'Name'; e.g. 'FirstName' as '_firstName'."
              | optional,
            properties
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Property", { _ | Dyn } ]
              )
              | optional,
            refDataSortOrder
              | std.enum.TagOrString
              | [| 'Text, 'Code, 'Id, 'SortOrder |]
              | doc "Specifies the default sort order for the underlying Reference Data collection. Defaults to 'SortOrder'."
              | optional,
            refDataStringFormat
              | String
              | doc "The string format supports the standard composite formatting; where the following indexes are used: '{0}' for 'Id', '{1}' for 'Code' and '{2}' for 'Text'. Defaults to '{2}'."
              | optional,
            refDataText
              | Bool
              | doc "This is used where serializing within the Web API'Controller' and the 'ExecutionContext.IsRefDataTextSerializationEnabled' is set to 'true' (which is automatically set where the url contains '$text=true')."
              | optional,
            refDataType
              | std.enum.TagOrString
              | [| 'string, 'Guid, 'long, 'int |]
              | doc "Required to identify an entity as being Reference Data. Specifies the underlying .NET Type used for the Reference Data identifier."
              | optional,
            text
              | String
              | doc "Overrides the Name (as sentence text) for the summary comments. It will be formatted as: 'Represents the {Text} entity.'. To create a '<see cref=\"XXX\"/>' within use moustache shorthand (e.g. {{Xxx}})."
              | optional,
            update | Bool | optional,
            validator
              | String
              | doc "Only used for defaulting the 'Create' and 'Update' operation types ('Operation.Type') where not specified explicitly."
              | optional,
            webApiAuthorize
              | String
              | doc "Defaults to the 'CodeGeneration.WebApiAuthorize' configuration property (inherits) where not specified; can be overridden at the 'Operation' level also."
              | optional,
            webApiAutoLocation
              | Bool
              | doc "This will automatically set the 'Operation.WebApiLocation' for an 'Operation' named 'Create' where there is a corresponding named 'Get'. This is defaulted from the 'CodeGen.WebApiAutoLocation'."
              | optional,
            webApiConcurrency
              | Bool
              | doc "This provides an alternative where the underlying data source does not natively support optimistic concurrency (native support should always be leveraged as a priority). Where the 'Operation.Type' is 'Update' or 'Patch', the request ETag will be matched against the response for a corresponding 'Get' operation to verify no changes have been made prior to updating. For this to function correctly the .NET response Type for the 'Get' must be the same as that returned from the corresponding 'Create', 'Update' and 'Patch' (where applicable) as the generated ETag is a SHA256 hash of the resulting JSON. This defaults the 'Operation.WebApiConcurrency'."
              | optional,
            webApiCtor
              | std.enum.TagOrString
              | [| 'Protected, 'Private, 'Public |]
              | doc "Defaults to 'Public'."
              | optional,
            webApiCtorParams
              | Array String
              | doc "Each constructor parameter should be formatted as 'Type' + '^' + 'Name'; e.g. 'IConfiguration^Config'. Where the 'Name' portion is not specified it will be inferred. Where the 'Type' matches an already inferred value it will be ignored."
              | optional,
            webApiGetOperation
              | String
              | doc "Defaults to 'Get'. Specify either just the method name (e.g. 'OperationName') or, interface and method name (e.g. 'IXxxManager.OperationName') to be invoked where in a different 'YyyManager.OperationName'."
              | optional,
            webApiRoutePrefix
              | String
              | doc "This is the base (prefix) 'URI' for the entity and can be further extended when defining the underlying 'Operation'(s). The 'CodeGeneration.WebApiRoutePrefix' will be prepended where specified."
              | optional,
            ..
          },
      "definitions.Operation" =
        {
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
              | doc "Defaults to 'Entity.AutoImplement'. The corresponding 'Entity.AutoImplement' must be defined for this to be enacted. Auto-implementation is applicable for all 'Operation.Type' options with the exception of 'Custom'."
              | optional,
            cosmosContainerId
              | String
              | doc "Overrides the 'Entity.CosmosContainerId'."
              | optional,
            cosmosPartitionKey
              | String
              | doc "Overrides the 'Entity.CosmosPartitionKey'."
              | optional,
            dataEntityMapper
              | String
              | doc "Used where the default generated 'Mapper' is not applicable."
              | optional,
            dataExtensions
              | Bool
              | doc "Defaults to 'Entity.DataExtensions'."
              | optional,
            dataSvcCustom | Bool | optional,
            dataSvcExtensions
              | Bool
              | doc "Defaults to 'Entity.ManagerExtensions'."
              | optional,
            dataSvcTransaction | Bool | optional,
            dataTransaction
              | Bool
              | doc "Where using an 'EventOutbox' this is ignored as it is implied through its usage."
              | optional,
            databaseStoredProc
              | String
              | doc "Defaults to 'sp' + 'Entity.Name' + 'Operation.Name'; e.g. 'spPersonCreate'."
              | optional,
            eventOutbox
              | std.enum.TagOrString
              | [| 'Database, 'None |]
              | doc "Defaults to 'Entity.EventOutbox' configuration property (inherits) where not specified and 'EventPublish' is 'Data'; otherwise, 'None'. A value of 'Database' will result in the 'DatabaseEventOutboxInvoker' being used to orchestrate."
              | optional,
            eventPublish
              | std.enum.TagOrString
              | [| 'Data, 'DataSvc, 'None |]
              | doc "Defaults to the 'Entity.EventPublish' configuration property (inherits) where not specified. Used to enable the sending of messages to the likes of EventGrid, Service Broker, SignalR, etc."
              | optional,
            eventSource
              | String
              | doc "Defaults to 'Entity.EventSource'. Note: when used in code-generation the 'CodeGeneration.EventSourceRoot' will be prepended where specified. To include the entity id/key include a '{$key}' placeholder ('Create', 'Update' or 'Delete' operation only); for example: 'person/{$key}'."
              | optional,
            eventSubject
              | String
              | doc "The event subject template defaults to '{AppName}.{Entity.Name}', plus each of the unique key placeholders comma separated; e.g. 'Domain.Entity.{id1},{id2}' (depending on whether 'Entity.EventSubjectFormat' is 'NameAndKey' or 'NameOnly'). The event action defaults to 'WebApiOperationType' or 'Operation.Type' where not specified. Multiple events can be raised by specifying more than one subject/action pair separated by a semicolon. E.g. 'Demo.Person.{id}:Create;Demo.Other.{id}:Update'."
              | optional,
            excludeAll
              | Bool
              | doc "Is a shorthand means for setting all of the other 'Exclude*' properties to 'true'."
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
              | doc "gRPC support is an explicit opt-in model (see 'CodeGeneration.Grpc' configuration); therefore, each corresponding 'Entity', 'Property' and 'Operation' will also need to be opted-in specifically."
              | optional,
            httpAgentMethod
              | std.enum.TagOrString
              | [| 'HttpPatch, 'HttpDelete, 'HttpPut, 'HttpPost, 'HttpGet |]
              | doc "Defaults to 'Operation.WebApiMethod'."
              | optional,
            httpAgentModel
              | String
              | doc "This can be overridden within the 'Operation'(s)."
              | optional,
            httpAgentReturnModel
              | String
              | doc "Defaults to 'Operation.HttpAgentModel' where the 'Operation.ReturnType' is equal to 'Entity.Name' (same type). This can be overridden within the 'Operation'(s)."
              | optional,
            httpAgentRoute
              | String
              | doc "This is appended to the 'Entity.HttpAgentRoutePrefix'."
              | optional,
            iValidator
              | String
              | doc "Defaults to the 'Entity.IValidator' where specified; otherwise, defaults to 'IValidator<{Type}>' where the '{Type}' is 'ValueType'. Only used 'Operation.Type' options 'Create' or 'Update'."
              | optional,
            managerCustom | Bool | optional,
            managerExtensions
              | Bool
              | doc "Defaults to 'Entity.ManagerExtensions'."
              | optional,
            managerOperationType
              | std.enum.TagOrString
              | [| 'Unspecified, 'Delete, 'Update, 'Read, 'Create |]
              | doc "The default will be inferred from the 'Operation.Type'; however, where the 'Operation.Type' is 'Custom' it will default to 'Unspecified'."
              | optional,
            managerTransaction | Bool | optional,
            name | String,
            odataCollectionName
              | String
              | doc "Overriddes the 'Entity.ODataCollectionName'; otherwise, the underlying 'Simple.OData.Client' will attempt to infer."
              | optional,
            paging | Bool | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Parameter", { _ | Dyn } ]
              )
              | optional,
            privateName
              | String
              | doc "Overrides the 'Name' to be used for private usage. By default reformatted from 'Name'; e.g. 'GetByArgs' as '_getByArgs'."
              | optional,
            returnText
              | String
              | doc "A default will be created where not specified. To create a '<see cref=\"XXX\"/>' within use moustache shorthand (e.g. {{Xxx}})."
              | optional,
            returnType
              | String
              | doc "Defaults to the parent 'Entity.Name' where the 'Operation.Type' options are 'Get', 'GetColl', 'Create' or 'Update'; otherwise, defaults to 'void'."
              | optional,
            returnTypeNullable
              | Bool
              | doc "This is only applicable for an 'Operation.Type' of 'Custom'. Will be inferred where the 'ReturnType' is denoted as nullable; i.e. suffixed by a '?'."
              | optional,
            text
              | String
              | doc "The 'Text' will be defaulted for all the 'Operation.Type' options with the exception of 'Custom'. To create a '<see cref=\"XXX\"/>' within use moustache shorthand (e.g. {{Xxx}})."
              | optional,
            type
              | std.enum.TagOrString
              | [| 'Custom, 'Delete, 'Patch, 'Update, 'Create, 'GetColl, 'Get |]
              | optional,
            uniqueKey
              | Bool
              | doc "This simplifies the specification of these properties versus having to declare each specifically."
              | optional,
            validator
              | String
              | doc "Defaults to the 'Entity.Validator' where not specified explicitly. Only used for 'Operation.Type' options 'Create' or 'Update'."
              | optional,
            valueType
              | String
              | doc "Defaults to the parent 'Entity.Name' where the 'Operation.Type' options are 'Create' or 'Update'."
              | optional,
            webApiAlternateStatus
              | std.enum.TagOrString
              | [|
                'ThrowException,
                'NotFound,
                'NoContent,
                'Created,
                'Accepted,
                'OK
              |]
              | doc "The value defaults as follows: 'NotFound' for 'Operation.Type' value 'Get', 'NoContent' for 'Operation.Type' value 'GetColl', 'Create', 'Update' or 'Patch'; otherwise, 'ThrowException' which will result in an 'InvalidOperationException'."
              | optional,
            webApiAuthorize
              | String
              | doc "Where not specified no attribute output will occur; it will then inherit as supported by .NET."
              | optional,
            webApiConcurrency
              | Bool
              | doc "This provides an alternative where the underlying data source does not natively support optimistic concurrency (native support should always be leveraged as a priority). Where the 'Operation.Type' is 'Update' or 'Patch', the request ETag will be matched against the response for a corresponding 'Get' operation to verify no changes have been made prior to updating. For this to function correctly the .NET response Type for the 'Get' must be the same as that returned from the corresponding 'Create', 'Update' and 'Patch' (where applicable) as the generated ETag is a SHA256 hash of the resulting JSON. Defaults to 'Entity.WebApiConcurrency'."
              | optional,
            webApiGetOperation
              | String
              | doc "Defaults to 'Get'. Specify either just the method name (e.g. 'OperationName') or, interface and method name (e.g. 'IXxxManager.OperationName') to be invoked where in a different 'YyyManager.OperationName'."
              | optional,
            webApiLocation
              | String
              | doc "This uses similar formatting to the 'WebApiRoute'. The response value is accessed using 'r.' notation to access underlying properties; for example '{r.Id}' or 'person/{r.Id}'. The 'Entity.WebApiRoutePrefix' will be prepended automatically; however, to disable set the first character to '!', e.g. '!person/{r.Id}'. The URI can be inferred from another 'Operation' by using a lookup '^'; for example '^Get' indicates to infer from the named 'Get' operation (where only '^' is specified this is shorthand for '^Get' as this is the most common value). The Location URI will ensure the first character is a '/' so it acts a 'relative URL absolute path'."
              | optional,
            webApiMethod
              | std.enum.TagOrString
              | [| 'HttpDelete, 'HttpPut, 'HttpPost, 'HttpGet |]
              | doc "The value defaults as follows: 'HttpGet' for 'Operation.Type' value 'Get' or 'GetColl', 'HttpPost' for 'Operation.Type' value 'Create' or 'Custom', 'HttpPut' for 'Operation.Type' value 'Update', and 'HttpDelete' for 'Operation.Type' value 'Delete'. An 'Operation.Type' value 'Patch' can not be specified and will always default to 'HttpPatch'."
              | optional,
            webApiRoute | String | optional,
            webApiStatus
              | std.enum.TagOrString
              | [| 'NotFound, 'NoContent, 'Created, 'Accepted, 'OK |]
              | doc "The value defaults as follows: 'OK' for 'Operation.Type' value 'Get', 'GetColl', 'Update', 'Delete' or 'Custom', 'Created' for 'Operation.Type' value 'Create'."
              | optional,
            webApiUpdateOperation
              | String
              | doc "Defaults to 'Update'. Specify either just the method name (e.g. 'OperationName') or, interface and method name (e.g. 'IXxxManager.OperationName') to be invoked where in a different 'YyyManager.OperationName'."
              | optional,
            ..
          },
      "definitions.Parameter" =
        {
            argumentName
              | String
              | doc "Overrides the 'Name' to be used for argument parameters. By default reformatted from 'Name'; e.g. 'FirstName' as 'firstName'."
              | optional,
            dataConverter
              | String
              | doc "A 'Converter' is used to convert a data source value to/from a .NET 'Type' where the standard data type conversion is not applicable."
              | optional,
            dataConverterIsGeneric | Bool | optional,
            "default"
              | String
              | doc "Where the 'Type' is 'string' then the specified default value will need to be delimited. Any valid value assignment C# code can be used."
              | optional,
            grpcType | String | optional,
            iValidator
              | String
              | doc "Defaults to 'IValidator<{Type}>' where the '{Type}' is 'Type'."
              | optional,
            isMandatory | Bool | optional,
            layerPassing
              | std.enum.TagOrString
              | [| 'ToManagerCollSet, 'ToManagerSet, 'All |]
              | doc "Defaults to 'All'. To further describe, 'All' passes the parameter through all layeys, 'ToManagerSet' only passes the parameter to the 'Manager' layer and overrides the same named property within the corresponding 'value' parameter, 'ToManagerCollSet' only passes the parameter to the 'Manager' layer and overrides the same named property within the corresponding 'value' collection parameter. Where using the 'UniqueKey' option to automatically set 'Parameters', and the 'Operation.Type' is 'Create' or 'Update' it will default to 'ToManagerSet'."
              | optional,
            name | String,
            nullable | Bool | optional,
            privateName
              | String
              | doc "Overrides the 'Name' to be used for private fields. By default reformatted from 'Name'; e.g. 'FirstName' as '_firstName'."
              | optional,
            property | String | optional,
            refDataList
              | Bool
              | doc "This is required to enable a list of Reference Data values (as per 'RefDataType') to be passed as an argument for example."
              | optional,
            refDataType
              | std.enum.TagOrString
              | [| 'Guid, 'int, 'string |]
              | doc "Defaults to 'string' where not specified and the corresponding 'Type' starts with (prefix) 'RefDataNamespace.'."
              | optional,
            text
              | String
              | doc "By default the 'Text' will be the 'Name' reformatted as sentence casing."
              | optional,
            type
              | String
              | doc "Defaults to 'string'. To reference a Reference Data 'Type' always prefix with 'RefDataNamespace' (e.g. 'RefDataNamespace.Gender') or shortcut '^' (e.g. '^Gender'). This will ensure that the appropriate Reference Data 'using' statement is used. _Shortcut:_ Where the 'Type' starts with (prefix) 'RefDataNamespace.' or '^', and the correspondong 'RefDataType' attribute is not specified it will automatically default the 'RefDataType' to 'string.'"
              | optional,
            validator | String | optional,
            validatorCode | String | optional,
            webApiFrom
              | std.enum.TagOrString
              | [| 'FromEntityProperties, 'FromRoute, 'FromBody, 'FromQuery |]
              | doc "Defaults to 'FromQuery'; unless the parameter 'Type' has also been defined as an 'Entity' within the code-gen config file then it will default to 'FromEntityProperties'. Specifies that the parameter will be declared with corresponding 'FromQueryAttribute', 'FromBodyAttribute' or 'FromRouteAttribute' for the Web API method. The 'FromEntityProperties' will declare all properties of the 'Entity' as query parameters."
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
              | doc "Overrides the 'Name' to be used for argument parameters. By default reformatted from 'Name'; e.g. 'FirstName' as 'firstName'."
              | optional,
            autoCreate | Bool | optional,
            bubblePropertyChanges
              | Bool
              | doc "Note that the 'IsEntity' property is also required to enable."
              | optional,
            cosmosMapper
              | std.enum.TagOrString
              | [| 'Skip, 'Ignore, 'Map |]
              | doc "Defaults to 'Map' which indicates the property will be explicitly mapped. A value of 'Ignore' will explicitly 'Ignore', whilst a value of 'Skip' will skip code-generated mapping altogether."
              | optional,
            dataAutoGenerated | Bool | optional,
            dataConverter
              | String
              | doc "A 'Converter' is used to convert a data source value to/from a .NET 'Type' where no standard data conversion can be applied. Where this value is suffixed by '<T>' or '{T}' this will automatically set 'DataConverterIsGeneric' to 'true'."
              | optional,
            dataConverterIsGeneric | Bool | optional,
            dataMapperIgnore
              | Bool
              | doc "All properties are included by default."
              | optional,
            dataModelJsonName
              | String
              | doc "Defaults to 'JsonName' where not specified."
              | optional,
            dataName
              | String
              | doc "Defaults to the property 'Name'. Represents the column name for a 'Database', or the correspinding property name for the other options."
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
              | doc "Defaults to 'Any'."
              | optional,
            databaseDbType
              | String
              | doc "Overrides the inferred database type; i.e. can specify 'Date' or 'DateTime2', for .NET Type 'System.DateTime'."
              | optional,
            databaseIgnore | Bool | optional,
            databaseMapper
              | String
              | doc "A 'Mapper' is used to map a data source value to/from a .NET complex 'Type' (i.e. class with one or more properties)."
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
              | doc "Defaults to 'UseDefault'. This is only applied where the 'Type' is 'DateTime'."
              | optional,
            "default"
              | String
              | doc "Where the 'Type' is 'string' then the specified default value will need to be delimited. Any valid value assignment C# code can be used."
              | optional,
            displayName
              | String
              | doc "Defaults to the 'Name' as sentence case."
              | optional,
            entityFrameworkMapper
              | std.enum.TagOrString
              | [| 'Skip, 'Ignore, 'Map |]
              | doc "Defaults to 'Map' which indicates the property will be explicitly mapped. A value of 'Ignore' will explicitly 'Ignore', whilst a value of 'Skip' will skip code-generated mapping altogether."
              | optional,
            excludeCleanup | Bool | optional,
            grpcFieldNo | std.number.Integer | optional,
            grpcType | String | optional,
            httpAgentMapper
              | std.enum.TagOrString
              | [| 'Skip, 'Ignore, 'Map |]
              | doc "Defaults to 'Map' which indicates the property will be explicitly mapped. A value of 'Ignore' will explicitly 'Ignore', whilst a value of 'Skip' will skip code-generated mapping altogether."
              | optional,
            identifierGenerator
              | String
              | doc "Should be formatted as 'Type' + '^' + 'Name'; e.g. 'IGuidIdentifierGenerator^GuidIdGen'. Where the 'Name' portion is not specified it will be inferred. Where the 'Type' matches an already inferred value it will be ignored. See 'Beef.Entities.IInt32IdentifierGenerator', 'Beef.Entities.IInt64IdentifierGenerator', 'Beef.Entities.IGuidIdentifierGenerator' or 'Beef.Entities.IStringIdentifierGenerator' for underlying implementation requirements."
              | optional,
            immutable | Bool | optional,
            inherited | Bool | optional,
            internalOnly
              | Bool
              | doc "This is only applicable where the 'Entity.EntityScope' is 'Autonomous'. In this instance the 'Property' will be excluded from the 'Common' entity declaration."
              | optional,
            isEntity
              | Bool
              | doc "Will be inferred (default to 'true') where the 'Type' is 'ChangeLog' or the 'Type' is found as another 'Entity' within the code-generation configuration file."
              | optional,
            jsonDataModelName
              | String
              | doc "Defaults to 'JsonName' where not specified."
              | optional,
            jsonName
              | String
              | doc "Defaults to 'ArgumentName' where not specified (i.e. camelCase); however, where the property is 'ETag' it will default to the 'Config.ETagJsonName'."
              | optional,
            modelText
              | String
              | doc "By default the 'ModelText' will be the 'Name' reformatted as sentence casing. Depending on whether the 'Type' is 'bool', will appear in one of the two generated sentences. Where not 'bool' it will be: Gets or sets a value indicating whether {text}.'. Otherwise, it will be: Gets or sets the {text}.'. To create a '<see cref=\"XXX\"/>' within use moustache shorthand (e.g. {{Xxx}})."
              | optional,
            name | String,
            nullable | Bool | optional,
            odataMapper
              | std.enum.TagOrString
              | [| 'Skip, 'Ignore, 'Map |]
              | doc "Defaults to 'Map' which indicates the property will be explicitly mapped. A value of 'Ignore' will explicitly 'Ignore', whilst a value of 'Skip' will skip code-generated mapping altogether."
              | optional,
            partitionKey
              | Bool
              | doc "This will implement 'IPartitionKey' for the generated entity."
              | optional,
            privateName
              | String
              | doc "Overrides the 'Name' to be used for private fields. By default reformatted from 'Name'; e.g. 'FirstName' as '_firstName'."
              | optional,
            refDataList
              | Bool
              | doc "This is required to enable a list of Reference Data values (as per 'RefDataType') to be passed as an argument for example."
              | optional,
            refDataMapping
              | Bool
              | doc "Mapped properties are a special Reference Data property type that ensure value uniqueness; this allows the likes of additional to/from mappings to occur between systems where applicable."
              | optional,
            refDataText
              | Bool
              | doc "This is used where serializing within the Web API 'Controller' and the 'ExecutionContext.IsRefDataTextSerializationEnabled' is set to 'true' (which is automatically set where the url contains '$text=true')."
              | optional,
            refDataType
              | std.enum.TagOrString
              | [| 'Guid, 'int, 'string |]
              | doc "Defaults to 'string' (being the 'ReferenceDataBase.Code') where not specified and the corresponding 'Type' starts with (prefix) 'RefDataNamespace.' or '^'. Note: an 'Id' of type 'string' is currently not supported; the use of the 'Code' is the recommended approach."
              | optional,
            secondaryPropertyChanged | String | optional,
            serializationEmitDefault | Bool | optional,
            serializationIgnore
              | Bool
              | doc "All properties are serialized by default."
              | optional,
            stringTransform
              | std.enum.TagOrString
              | [| 'EmptyToNull, 'NullToEmpty, 'None, 'UseDefault |]
              | doc "Defaults to 'UseDefault'. This is only applied where the 'Type' is 'string'."
              | optional,
            stringTrim
              | std.enum.TagOrString
              | [| 'Both, 'End, 'Start, 'None, 'UseDefault |]
              | doc "Defaults to 'UseDefault'. This is only applied where the 'Type' is 'string'."
              | optional,
            text
              | String
              | doc "By default the 'Text' will be the 'Name' reformatted as sentence casing. Depending on whether the 'Type' is 'bool', will appear in one of the two generated sentences. Where not 'bool' it will be: Gets or sets a value indicating whether {text}.'. Otherwise, it will be: Gets or sets the {text}.'. To create a '<see cref=\"XXX\"/>' within use moustache shorthand (e.g. {{Xxx}})."
              | optional,
            type
              | String
              | doc "Defaults to 'string'. To reference a Reference Data 'Type' always prefix with 'RefDataNamespace' (e.g. 'RefDataNamespace.Gender') or shortcut '^' (e.g. '^Gender'). This will ensure that the appropriate Reference Data 'using' statement is used. _Shortcut:_ Where the 'Type' starts with (prefix) 'RefDataNamespace.' or '^', and the correspondong 'RefDataType' attribute is not specified it will automatically default the 'RefDataType' to 'string.'"
              | optional,
            uniqueKey
              | Bool
              | doc "This is also used to simplify the parameter specification for an Entity Operation by inferrence."
              | optional,
            webApiQueryStringConverter | String | optional,
            ..
          },
    }
    in
  refs."definitions.CodeGeneration"