# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.clientGenerator" =
        {
            baseUrlTokenName | String | optional,
            className | String | optional,
            dateTimeType | String | optional,
            excludedTypeNames | Array String | optional,
            generateClientClasses | Bool | optional,
            generateClientInterfaces | Bool | optional,
            generateCloneMethod | Bool | optional,
            generateConstructorInterface | Bool | optional,
            generateDefaultValues | Bool | optional,
            generateDtoTypes | Bool | optional,
            generateOptionalParameters | Bool | optional,
            generateResponseClasses | Bool | optional,
            handleReferences | Bool | optional,
            importRequiredTypes | String | optional,
            namespace | String | optional,
            operationGenerationMode
              | std.enum.TagOrString
              | [|
                'SingleClientFromPathSegments,
                'SingleClientFromOperationId,
                'MultipleClientsFromPathSegments,
                'MultipleClientsFromOperationId
              |]
              | optional,
            output | js2n.Always | optional,
            responseClass | String | optional,
            wrapDtoExceptions | Bool | optional,
            wrapResponseMethods | Array String | optional,
            wrapResponses | Bool | optional,
            ..
          },
      "definitions.codeGenerators" =
        {
            swaggerToCSharpClient
              | refs."definitions.swaggerToCSharpClient"
              | { _ | Dyn }
              | optional,
            swaggerToCSharpController
              | refs."definitions.swaggerToCSharpController"
              | optional,
            swaggerToTypeScriptClient
              | refs."definitions.swaggerToTypeScriptClient"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.swaggerGenerator" =
        {
            webApiToSwagger
              | refs."definitions.webApiToSwagger"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.swaggerToCSharpClient" =
        std.contract.Sequence
            [ refs."definitions.clientGenerator", { _ | Dyn } ],
      "definitions.swaggerToCSharpController" = js2n.Always,
      "definitions.swaggerToTypeScriptClient" =
        std.contract.Sequence
            [
              refs."definitions.clientGenerator",
              {
                baseUrlTokenName | String | optional,
                clientBaseClass | String | optional,
                configurationClass | String | optional,
                httpClass
                  | std.enum.TagOrString
                  | [| 'HttpClient, 'Http |]
                  | optional,
                importRequiredTypes | Bool | optional,
                injectionTokenType
                  | std.enum.TagOrString
                  | [| 'InjectionToken, 'OpaqueToken |]
                  | optional,
                markOptionalProperties | Bool | optional,
                moduleName | String | optional,
                nullValue | String | optional,
                promiseType
                  | std.enum.TagOrString
                  | [| 'QPromise, 'Promise |]
                  | optional,
                protectedMethods | Array String | optional,
                queryNullValue | String | optional,
                rxJsVersion | Number | optional,
                template
                  | std.enum.TagOrString
                  | [|
                    'Aurelia,
                    'Fetch,
                    'Angular,
                    'AngularJS,
                    'JQueryPromises,
                    'JQueryCallbacks
                  |]
                  | optional,
                typeScriptVersion | Number | optional,
                typeStyle
                  | std.enum.TagOrString
                  | [| 'KnockoutClass, 'Class, 'Interface |]
                  | optional,
                useGetBaseUrlMethod | Bool | optional,
                useSingletonProvider | Bool | optional,
                useTransformOptionsMethod | Bool | optional,
                useTransformResultMethod | Bool | optional,
                wrapDtoExceptions | Bool | optional,
                ..
              }
            ],
      "definitions.webApiToSwagger" =
        {
            addMissingPathParameters | Bool | optional,
            assemblyPaths | Array String | optional,
            controllerNames | Array String | optional,
            defaultEnumHandling
              | std.enum.TagOrString
              | [| 'CamelCaseString, '"String", 'Integer |]
              | optional,
            defaultPropertyNameHandling
              | std.enum.TagOrString
              | [| 'SnakeCase, 'CamelCase, 'Default |]
              | optional,
            defaultUrlTemplate | String | optional,
            flattenInheritanceHierarchy | Bool | optional,
            generateKnownTypes | Bool | optional,
            generateXmlObjects | Bool | optional,
            infoTitle | String | optional,
            infoVersion | String | optional,
            isAspNetCore | Bool | optional,
            output | js2n.Null | optional,
            referencePaths | Array String | optional,
            useNuGetCache | Bool | optional,
            ..
          },
    }
    in
  std.contract.any_of
      [
        js2n.Null,
        Bool,
        Number,
        String,
        {
          codeGenerators | refs."definitions.codeGenerators" | optional,
          swaggerGenerator | refs."definitions.swaggerGenerator" | optional,
          ..
        },
        Array Dyn
      ]