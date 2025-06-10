# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Workflow" =
        {
            defaultRetryPolicy
              | refs."definitions.yawl.RetryPolicy"
              | {}
              | optional,
            start | String,
            steps
              | js2n.record.MinProperties 1
              | {
                _ | std.contract.Sequence [ refs."definitions.yawl.Step", {} ]
              },
            yawl | js2n.string.Matches "^0.1$",
          },
      "definitions.yawl.AIAgent" =
        {
            agentConfig | refs."definitions.yawl.AIAgentConfig" | {},
            catch
              | Array (
                std.contract.Sequence
                  [ refs."definitions.yawl.CatchRule", { _ | Dyn } ]
              )
              | optional,
            input | String | optional,
            next | String | optional,
            output | String | optional,
            retryPolicy | refs."definitions.yawl.RetryPolicy" | {} | optional,
            tasks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.yawl.AIAgentTask", { _ | Dyn } ]
              ),
            timeout
              | js2n.string.Matches "^([0-9]+\\.?[0-9]*|\\.[0-9]+)s$"
              | optional,
          },
      "definitions.yawl.AIAgentConfig" =
        {
            backstory | String,
            goal | String,
            model | refs."definitions.yawl.AIAgentModel" | {} | optional,
            role | String,
          },
      "definitions.yawl.AIAgentModel" =
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
                      js2n.record.Required [ "name" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "uri" ],
                      Array Dyn
                    ]
                ],
              { name | String | optional, uri | String | optional, }
            ],
      "definitions.yawl.AIAgentTask" =
        { description | String, result | String, },
      "definitions.yawl.Branch" =
        {
            start | String,
            steps
              | js2n.record.MinProperties 1
              | {
                _ | std.contract.Sequence [ refs."definitions.yawl.Step", {} ]
              },
          },
      "definitions.yawl.CatchRule" =
        {
            errorList
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'YDB_CALL_SERVICE_UNAVAILABLE,
                      'CONTAINER_CALL_526,
                      'CONTAINER_CALL_525,
                      'CONTAINER_CALL_524,
                      'CONTAINER_CALL_523,
                      'CONTAINER_CALL_522,
                      'CONTAINER_CALL_521,
                      'CONTAINER_CALL_520,
                      'CONTAINER_CALL_511,
                      'CONTAINER_CALL_510,
                      'CONTAINER_CALL_509,
                      'CONTAINER_CALL_508,
                      'CONTAINER_CALL_507,
                      'CONTAINER_CALL_506,
                      'CONTAINER_CALL_504,
                      'CONTAINER_CALL_503,
                      'CONTAINER_CALL_502,
                      'CONTAINER_CALL_505,
                      'CONTAINER_CALL_501,
                      'CONTAINER_CALL_500,
                      'CONTAINER_CALL_499,
                      'CONTAINER_CALL_451,
                      'CONTAINER_CALL_449,
                      'CONTAINER_CALL_431,
                      'CONTAINER_CALL_429,
                      'CONTAINER_CALL_428,
                      'CONTAINER_CALL_427,
                      'CONTAINER_CALL_426,
                      'CONTAINER_CALL_425,
                      'CONTAINER_CALL_424,
                      'CONTAINER_CALL_423,
                      'CONTAINER_CALL_422,
                      'CONTAINER_CALL_421,
                      'CONTAINER_CALL_420,
                      'CONTAINER_CALL_419,
                      'CONTAINER_CALL_418,
                      'CONTAINER_CALL_417,
                      'CONTAINER_CALL_416,
                      'CONTAINER_CALL_415,
                      'CONTAINER_CALL_414,
                      'CONTAINER_CALL_413,
                      'CONTAINER_CALL_412,
                      'CONTAINER_CALL_411,
                      'CONTAINER_CALL_410,
                      'CONTAINER_CALL_409,
                      'CONTAINER_CALL_408,
                      'CONTAINER_CALL_407,
                      'CONTAINER_CALL_406,
                      'CONTAINER_CALL_405,
                      'CONTAINER_CALL_404,
                      'CONTAINER_CALL_403,
                      'CONTAINER_CALL_402,
                      'CONTAINER_CALL_401,
                      'CONTAINER_CALL_400,
                      'FUNCTION_CALL_INVALID_RESPONSE,
                      'GRPC_CALL_INVALID_REFLECTION_SERVER_RESPONSE,
                      'GRPC_CALL_INVALID_OPTIONS,
                      'GRPC_CALL_UNAUTHENTICATED,
                      'GRPC_CALL_RESOURCE_EXHAUSTED,
                      'GRPC_CALL_INTERNAL,
                      'GRPC_CALL_UNKNOWN,
                      'GRPC_CALL_UNAVAILABLE,
                      'GRPC_CALL_UNIMPLEMENTED,
                      'GRPC_CALL_DEADLINE_EXCEEDED,
                      'GRPC_CALL_CANCELLED,
                      'HTTP_CALL_526,
                      'HTTP_CALL_525,
                      'HTTP_CALL_524,
                      'HTTP_CALL_523,
                      'HTTP_CALL_522,
                      'HTTP_CALL_521,
                      'HTTP_CALL_520,
                      'HTTP_CALL_511,
                      'HTTP_CALL_510,
                      'HTTP_CALL_509,
                      'HTTP_CALL_508,
                      'HTTP_CALL_507,
                      'HTTP_CALL_506,
                      'HTTP_CALL_504,
                      'HTTP_CALL_503,
                      'HTTP_CALL_502,
                      'HTTP_CALL_505,
                      'HTTP_CALL_501,
                      'HTTP_CALL_500,
                      'HTTP_CALL_499,
                      'HTTP_CALL_451,
                      'HTTP_CALL_449,
                      'HTTP_CALL_431,
                      'HTTP_CALL_429,
                      'HTTP_CALL_428,
                      'HTTP_CALL_427,
                      'HTTP_CALL_426,
                      'HTTP_CALL_425,
                      'HTTP_CALL_424,
                      'HTTP_CALL_423,
                      'HTTP_CALL_422,
                      'HTTP_CALL_421,
                      'HTTP_CALL_420,
                      'HTTP_CALL_419,
                      'HTTP_CALL_418,
                      'HTTP_CALL_417,
                      'HTTP_CALL_416,
                      'HTTP_CALL_415,
                      'HTTP_CALL_414,
                      'HTTP_CALL_413,
                      'HTTP_CALL_412,
                      'HTTP_CALL_411,
                      'HTTP_CALL_410,
                      'HTTP_CALL_409,
                      'HTTP_CALL_408,
                      'HTTP_CALL_407,
                      'HTTP_CALL_406,
                      'HTTP_CALL_405,
                      'HTTP_CALL_404,
                      'HTTP_CALL_403,
                      'HTTP_CALL_402,
                      'HTTP_CALL_401,
                      'HTTP_CALL_400,
                      'STEP_FAILED_PRECONDITION,
                      'STEP_QUOTA_EXCEEDED,
                      'STEP_INVALID_ARGUMENT,
                      'STEP_FAIL,
                      'STEP_INVALID_TEMPLATE_EXPRESSION,
                      'STEP_INTERNAL,
                      'STEP_INVALID_OUTPUT,
                      'STEP_TIMEOUT,
                      'STEP_PERMISSION_DENIED,
                      'STEP_NO_CHOICE_MATCHED,
                      'STEP_DATA_LIMIT_EXCEEDED,
                      'TIMEOUT,
                      'TERMINATED,
                      'CANCELLED,
                      'INVALID_INPUT,
                      'ALL
                    |]
                  ]
              ),
            errorListMode
              | std.enum.TagOrString
              | [| 'EXCLUDE, 'INCLUDE |]
              | optional,
            next | String,
            output | String,
          },
      "definitions.yawl.Choice" = { condition | String, next | String, },
      "definitions.yawl.ContainerCall" =
        {
            body | String | optional,
            catch
              | Array (
                std.contract.Sequence
                  [ refs."definitions.yawl.CatchRule", { _ | Dyn } ]
              )
              | optional,
            containerId | String,
            headers | { _ | String } | optional,
            input | String | optional,
            method
              | std.enum.TagOrString
              | [|
                'CONNECT,
                'TRACE,
                'DELETE,
                'PATCH,
                'PUT,
                'POST,
                'HEAD,
                'GET,
                'OPTIONS
              |]
              | optional,
            next | String | optional,
            output | String | optional,
            path | String | optional,
            query | { _ | String } | optional,
            retryPolicy | refs."definitions.yawl.RetryPolicy" | {} | optional,
            timeout
              | js2n.string.Matches "^([0-9]+\\.?[0-9]*|\\.[0-9]+)s$"
              | optional,
          },
      "definitions.yawl.Default" = { next | String, },
      "definitions.yawl.Disk" =
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
                      js2n.record.Required [ "upload" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "download" ],
                      Array Dyn
                    ]
                ],
              {
                catch
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.yawl.CatchRule", { _ | Dyn } ]
                  )
                  | optional,
                download | refs."definitions.yawl.DiskDownload" | {} | optional,
                input | String | optional,
                next | String | optional,
                oauthToken | String,
                output | String | optional,
                path | String,
                retryPolicy
                  | refs."definitions.yawl.RetryPolicy"
                  | {}
                  | optional,
                sharedDiskId | String | optional,
                timeout
                  | js2n.string.Matches "^([0-9]+\\.?[0-9]*|\\.[0-9]+)s$"
                  | optional,
                upload | refs."definitions.yawl.DiskUpload" | {} | optional,
              }
            ],
      "definitions.yawl.DiskDownload" =
        {
            contentType
              | std.enum.TagOrString
              | [| 'CSV, 'EXCEL, 'TEXT, 'JSON, 'BINARY |]
              | doc "Used for Object Storage and Yandex Disk downloads"
              | optional,
          },
      "definitions.yawl.DiskUpload" =
        {
            content | String,
            contentType
              | std.enum.TagOrString
              | [| 'CSV, 'EXCEL, 'TEXT, 'JSON, 'BINARY |]
              | doc "Used for Object Storage and Yandex Disk downloads"
              | optional,
          },
      "definitions.yawl.Fail" = { errorMessage | String, },
      "definitions.yawl.Foreach" =
        {
            concurrency | std.number.Integer | optional,
            do | refs."definitions.yawl.ForeachDo" | {},
            input | String,
            next | String | optional,
            output | String,
          },
      "definitions.yawl.ForeachDo" =
        {
            start | String,
            steps
              | js2n.record.MinProperties 1
              | {
                _ | std.contract.Sequence [ refs."definitions.yawl.Step", {} ]
              },
          },
      "definitions.yawl.FoundationModelsCall" =
        {
            catch
              | Array (
                std.contract.Sequence
                  [ refs."definitions.yawl.CatchRule", { _ | Dyn } ]
              )
              | optional,
            generate | refs."definitions.yawl.FoundationModelsGenerate" | {},
            input | String | optional,
            modelUrl | String,
            next | String | optional,
            output | String | optional,
            retryPolicy | refs."definitions.yawl.RetryPolicy" | {} | optional,
            timeout
              | js2n.string.Matches "^([0-9]+\\.?[0-9]*|\\.[0-9]+)s$"
              | optional,
          },
      "definitions.yawl.FoundationModelsGenerate" =
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
                      js2n.record.Required [ "json" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "messages" ],
                      Array Dyn
                    ]
                ],
              {
                json | String | optional,
                maxTokens | std.number.Integer,
                messages
                  | refs."definitions.yawl.FoundationModelsGenerate.Messages"
                  | {}
                  | optional,
                temperature | Number,
              }
            ],
      "definitions.yawl.FoundationModelsGenerate.Message" =
        { role | String, text | String, },
      "definitions.yawl.FoundationModelsGenerate.Messages" =
        {
            messages
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.yawl.FoundationModelsGenerate.Message",
                    { _ | Dyn }
                  ]
              ),
          },
      "definitions.yawl.FunctionCall" =
        {
            catch
              | Array (
                std.contract.Sequence
                  [ refs."definitions.yawl.CatchRule", { _ | Dyn } ]
              )
              | optional,
            functionId | String,
            input | String | optional,
            next | String | optional,
            output | String | optional,
            retryPolicy | refs."definitions.yawl.RetryPolicy" | {} | optional,
            tag | String | optional,
            timeout
              | js2n.string.Matches "^([0-9]+\\.?[0-9]*|\\.[0-9]+)s$"
              | optional,
          },
      "definitions.yawl.GRPCCall" =
        {
            body | String | optional,
            catch
              | Array (
                std.contract.Sequence
                  [ refs."definitions.yawl.CatchRule", { _ | Dyn } ]
              )
              | optional,
            endpoint | String,
            headers | { _ | String } | optional,
            input | String | optional,
            method | String,
            next | String | optional,
            output | String | optional,
            retryPolicy | refs."definitions.yawl.RetryPolicy" | {} | optional,
            timeout
              | js2n.string.Matches "^([0-9]+\\.?[0-9]*|\\.[0-9]+)s$"
              | optional,
            useServiceAccount | Bool | optional,
          },
      "definitions.yawl.HTTPCall" =
        {
            body | String | optional,
            catch
              | Array (
                std.contract.Sequence
                  [ refs."definitions.yawl.CatchRule", { _ | Dyn } ]
              )
              | optional,
            headers | { _ | String } | optional,
            input | String | optional,
            method
              | std.enum.TagOrString
              | [|
                'CONNECT,
                'TRACE,
                'DELETE,
                'PATCH,
                'PUT,
                'POST,
                'HEAD,
                'GET,
                'OPTIONS
              |]
              | optional,
            next | String | optional,
            output | String | optional,
            query | { _ | String } | optional,
            retryPolicy | refs."definitions.yawl.RetryPolicy" | {} | optional,
            timeout
              | js2n.string.Matches "^([0-9]+\\.?[0-9]*|\\.[0-9]+)s$"
              | optional,
            url | String,
            useServiceAccount | Bool | optional,
          },
      "definitions.yawl.InterpolatableMap" =
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
                      js2n.record.Required [ "json" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "plainValue" ],
                      Array Dyn
                    ]
                ],
              {
                json | String | optional,
                plainValue | refs."definitions.yawl.MapValue" | {} | optional,
              }
            ],
      "definitions.yawl.MapValue" = { pairs | { _ | String } | optional, },
      "definitions.yawl.NoOp" = { next | String, output | String, },
      "definitions.yawl.ObjectStorage" =
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
                      js2n.record.Required [ "put" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "get" ],
                      Array Dyn
                    ]
                ],
              {
                bucket | String,
                catch
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.yawl.CatchRule", { _ | Dyn } ]
                  )
                  | optional,
                get | refs."definitions.yawl.ObjectStorageGet" | {} | optional,
                input | String | optional,
                next | String | optional,
                object | String,
                output | String | optional,
                put | refs."definitions.yawl.ObjectStoragePut" | {} | optional,
                retryPolicy
                  | refs."definitions.yawl.RetryPolicy"
                  | {}
                  | optional,
                timeout
                  | js2n.string.Matches "^([0-9]+\\.?[0-9]*|\\.[0-9]+)s$"
                  | optional,
              }
            ],
      "definitions.yawl.ObjectStorageGet" =
        {
            contentType
              | std.enum.TagOrString
              | [| 'CSV, 'EXCEL, 'TEXT, 'JSON, 'BINARY |]
              | doc "Used for Object Storage and Yandex Disk downloads"
              | optional,
          },
      "definitions.yawl.ObjectStoragePut" =
        {
            content | String,
            contentType
              | std.enum.TagOrString
              | [| 'CSV, 'EXCEL, 'TEXT, 'JSON, 'BINARY |]
              | doc "Used for Object Storage and Yandex Disk downloads"
              | optional,
          },
      "definitions.yawl.Organization" =
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
                      js2n.record.Required [ "yandexOrganizationId" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "cloudOrganizationId" ],
                      Array Dyn
                    ]
                ],
              {
                cloudOrganizationId | String | optional,
                yandexOrganizationId | String | optional,
              }
            ],
      "definitions.yawl.Parallel" =
        {
            branches
              | js2n.record.MinProperties 1
              | {
                _ | std.contract.Sequence [ refs."definitions.yawl.Branch", {} ]
              },
            concurrency | std.number.Integer | optional,
            input | String | optional,
            next | String | optional,
            output | String | optional,
          },
      "definitions.yawl.Postbox" =
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
                      js2n.record.Required [ "simple" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "raw" ],
                      Array Dyn
                    ]
                ],
              {
                catch
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.yawl.CatchRule", { _ | Dyn } ]
                  )
                  | optional,
                destination | refs."definitions.yawl.PostboxDestination" | {},
                fromAddress | String,
                input | String | optional,
                next | String | optional,
                output | String | optional,
                raw | refs."definitions.yawl.PostboxRawMessage" | {} | optional,
                retryPolicy
                  | refs."definitions.yawl.RetryPolicy"
                  | {}
                  | optional,
                simple
                  | refs."definitions.yawl.PostboxSimpleMessage"
                  | {}
                  | optional,
                timeout
                  | js2n.string.Matches "^([0-9]+\\.?[0-9]*|\\.[0-9]+)s$"
                  | optional,
              }
            ],
      "definitions.yawl.PostboxBody" =
        {
            html | refs."definitions.yawl.PostboxMessageData" | {},
            text | refs."definitions.yawl.PostboxMessageData" | {},
          },
      "definitions.yawl.PostboxDestination" =
        { ccAddresses | String | optional, toAddresses | String, },
      "definitions.yawl.PostboxMessageData" =
        {
            charset
              | std.enum.TagOrString
              | [| 'SHIFT_JIS, 'ISO_8859_1, 'UTF_8, 'CHARSET_UNSPECIFIED |],
            data | String,
          },
      "definitions.yawl.PostboxRawMessage" = { data | String, },
      "definitions.yawl.PostboxSimpleMessage" =
        {
            body | refs."definitions.yawl.PostboxBody" | {},
            subject | refs."definitions.yawl.PostboxMessageData" | {},
          },
      "definitions.yawl.RetryPolicy" =
        {
            backoffRate | Number | optional,
            errorList
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'YDB_CALL_SERVICE_UNAVAILABLE,
                      'CONTAINER_CALL_526,
                      'CONTAINER_CALL_525,
                      'CONTAINER_CALL_524,
                      'CONTAINER_CALL_523,
                      'CONTAINER_CALL_522,
                      'CONTAINER_CALL_521,
                      'CONTAINER_CALL_520,
                      'CONTAINER_CALL_511,
                      'CONTAINER_CALL_510,
                      'CONTAINER_CALL_509,
                      'CONTAINER_CALL_508,
                      'CONTAINER_CALL_507,
                      'CONTAINER_CALL_506,
                      'CONTAINER_CALL_504,
                      'CONTAINER_CALL_503,
                      'CONTAINER_CALL_502,
                      'CONTAINER_CALL_505,
                      'CONTAINER_CALL_501,
                      'CONTAINER_CALL_500,
                      'CONTAINER_CALL_499,
                      'CONTAINER_CALL_451,
                      'CONTAINER_CALL_449,
                      'CONTAINER_CALL_431,
                      'CONTAINER_CALL_429,
                      'CONTAINER_CALL_428,
                      'CONTAINER_CALL_427,
                      'CONTAINER_CALL_426,
                      'CONTAINER_CALL_425,
                      'CONTAINER_CALL_424,
                      'CONTAINER_CALL_423,
                      'CONTAINER_CALL_422,
                      'CONTAINER_CALL_421,
                      'CONTAINER_CALL_420,
                      'CONTAINER_CALL_419,
                      'CONTAINER_CALL_418,
                      'CONTAINER_CALL_417,
                      'CONTAINER_CALL_416,
                      'CONTAINER_CALL_415,
                      'CONTAINER_CALL_414,
                      'CONTAINER_CALL_413,
                      'CONTAINER_CALL_412,
                      'CONTAINER_CALL_411,
                      'CONTAINER_CALL_410,
                      'CONTAINER_CALL_409,
                      'CONTAINER_CALL_408,
                      'CONTAINER_CALL_407,
                      'CONTAINER_CALL_406,
                      'CONTAINER_CALL_405,
                      'CONTAINER_CALL_404,
                      'CONTAINER_CALL_403,
                      'CONTAINER_CALL_402,
                      'CONTAINER_CALL_401,
                      'CONTAINER_CALL_400,
                      'FUNCTION_CALL_INVALID_RESPONSE,
                      'GRPC_CALL_INVALID_REFLECTION_SERVER_RESPONSE,
                      'GRPC_CALL_INVALID_OPTIONS,
                      'GRPC_CALL_UNAUTHENTICATED,
                      'GRPC_CALL_RESOURCE_EXHAUSTED,
                      'GRPC_CALL_INTERNAL,
                      'GRPC_CALL_UNKNOWN,
                      'GRPC_CALL_UNAVAILABLE,
                      'GRPC_CALL_UNIMPLEMENTED,
                      'GRPC_CALL_DEADLINE_EXCEEDED,
                      'GRPC_CALL_CANCELLED,
                      'HTTP_CALL_526,
                      'HTTP_CALL_525,
                      'HTTP_CALL_524,
                      'HTTP_CALL_523,
                      'HTTP_CALL_522,
                      'HTTP_CALL_521,
                      'HTTP_CALL_520,
                      'HTTP_CALL_511,
                      'HTTP_CALL_510,
                      'HTTP_CALL_509,
                      'HTTP_CALL_508,
                      'HTTP_CALL_507,
                      'HTTP_CALL_506,
                      'HTTP_CALL_504,
                      'HTTP_CALL_503,
                      'HTTP_CALL_502,
                      'HTTP_CALL_505,
                      'HTTP_CALL_501,
                      'HTTP_CALL_500,
                      'HTTP_CALL_499,
                      'HTTP_CALL_451,
                      'HTTP_CALL_449,
                      'HTTP_CALL_431,
                      'HTTP_CALL_429,
                      'HTTP_CALL_428,
                      'HTTP_CALL_427,
                      'HTTP_CALL_426,
                      'HTTP_CALL_425,
                      'HTTP_CALL_424,
                      'HTTP_CALL_423,
                      'HTTP_CALL_422,
                      'HTTP_CALL_421,
                      'HTTP_CALL_420,
                      'HTTP_CALL_419,
                      'HTTP_CALL_418,
                      'HTTP_CALL_417,
                      'HTTP_CALL_416,
                      'HTTP_CALL_415,
                      'HTTP_CALL_414,
                      'HTTP_CALL_413,
                      'HTTP_CALL_412,
                      'HTTP_CALL_411,
                      'HTTP_CALL_410,
                      'HTTP_CALL_409,
                      'HTTP_CALL_408,
                      'HTTP_CALL_407,
                      'HTTP_CALL_406,
                      'HTTP_CALL_405,
                      'HTTP_CALL_404,
                      'HTTP_CALL_403,
                      'HTTP_CALL_402,
                      'HTTP_CALL_401,
                      'HTTP_CALL_400,
                      'STEP_FAILED_PRECONDITION,
                      'STEP_QUOTA_EXCEEDED,
                      'STEP_INVALID_ARGUMENT,
                      'STEP_FAIL,
                      'STEP_INVALID_TEMPLATE_EXPRESSION,
                      'STEP_INTERNAL,
                      'STEP_INVALID_OUTPUT,
                      'STEP_TIMEOUT,
                      'STEP_PERMISSION_DENIED,
                      'STEP_NO_CHOICE_MATCHED,
                      'STEP_DATA_LIMIT_EXCEEDED,
                      'TIMEOUT,
                      'TERMINATED,
                      'CANCELLED,
                      'INVALID_INPUT,
                      'ALL
                    |]
                  ]
              ),
            errorListMode
              | std.enum.TagOrString
              | [| 'EXCLUDE, 'INCLUDE |]
              | optional,
            initialDelay
              | js2n.string.Matches "^([0-9]+\\.?[0-9]*|\\.[0-9]+)s$"
              | optional,
            maxDelay
              | js2n.string.Matches "^([0-9]+\\.?[0-9]*|\\.[0-9]+)s$"
              | optional,
            retryCount | std.number.Integer | optional,
          },
      "definitions.yawl.StartWorkflow" =
        {
            catch
              | Array (
                std.contract.Sequence
                  [ refs."definitions.yawl.CatchRule", { _ | Dyn } ]
              )
              | optional,
            executionInput | String | optional,
            input | String | optional,
            next | String | optional,
            output | String | optional,
            retryPolicy | refs."definitions.yawl.RetryPolicy" | {} | optional,
            timeout
              | js2n.string.Matches "^([0-9]+\\.?[0-9]*|\\.[0-9]+)s$"
              | optional,
            workflowId | String,
          },
      "definitions.yawl.Step" =
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
                      js2n.record.Required [ "switch" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "foreach" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "parallel" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "success" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "fail" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "noOp" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "functionCall" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "containerCall" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "httpCall" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "grpcCall" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "ydbDocument" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "yds" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "ymq" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "foundationModelsCall" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "objectStorage" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "tracker" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "postbox" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "wait" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "disk" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "workflow" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "while" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "aiAgent" ],
                      Array Dyn
                    ]
                ],
              {
                aiAgent | refs."definitions.yawl.AIAgent" | {} | optional,
                containerCall
                  | refs."definitions.yawl.ContainerCall"
                  | {}
                  | optional,
                description | String | optional,
                disk | refs."definitions.yawl.Disk" | {} | optional,
                fail | refs."definitions.yawl.Fail" | {} | optional,
                foreach | refs."definitions.yawl.Foreach" | {} | optional,
                foundationModelsCall
                  | refs."definitions.yawl.FoundationModelsCall"
                  | {}
                  | optional,
                functionCall
                  | refs."definitions.yawl.FunctionCall"
                  | {}
                  | optional,
                grpcCall | refs."definitions.yawl.GRPCCall" | {} | optional,
                httpCall | refs."definitions.yawl.HTTPCall" | {} | optional,
                noOp | refs."definitions.yawl.NoOp" | {} | optional,
                objectStorage
                  | refs."definitions.yawl.ObjectStorage"
                  | {}
                  | optional,
                parallel | refs."definitions.yawl.Parallel" | {} | optional,
                postbox | refs."definitions.yawl.Postbox" | {} | optional,
                success | refs."definitions.yawl.Success" | {} | optional,
                switch | refs."definitions.yawl.Switch" | {} | optional,
                title | String | optional,
                tracker | refs."definitions.yawl.Tracker" | {} | optional,
                wait | refs."definitions.yawl.Wait" | {} | optional,
                while | refs."definitions.yawl.While" | {} | optional,
                workflow
                  | refs."definitions.yawl.StartWorkflow"
                  | {}
                  | optional,
                ydbDocument
                  | refs."definitions.yawl.YDBDocument"
                  | {}
                  | optional,
                yds | refs."definitions.yawl.YDS" | {} | optional,
                ymq | refs."definitions.yawl.YMQ" | {} | optional,
              }
            ],
      "definitions.yawl.Success" = {},
      "definitions.yawl.Switch" =
        {
            choices
              | Array (
                std.contract.Sequence
                  [ refs."definitions.yawl.Choice", { _ | Dyn } ]
              ),
            "default" | refs."definitions.yawl.Default" | {} | optional,
            input | String | optional,
          },
      "definitions.yawl.Tracker" =
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
                      js2n.record.Required [ "getIssue" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "createIssue" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "updateIssue" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "listIssues" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "linkIssues" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "updateIssueStatus" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "createComment" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "updateComment" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "listComments" ],
                      Array Dyn
                    ]
                ],
              {
                catch
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.yawl.CatchRule", { _ | Dyn } ]
                  )
                  | optional,
                createComment
                  | refs."definitions.yawl.TrackerCreateComment"
                  | {}
                  | optional,
                createIssue
                  | refs."definitions.yawl.TrackerCreateIssue"
                  | {}
                  | optional,
                endpoint | String | optional,
                getIssue
                  | refs."definitions.yawl.TrackerGetIssue"
                  | {}
                  | optional,
                input | String | optional,
                linkIssues
                  | refs."definitions.yawl.TrackerLinkIssues"
                  | {}
                  | optional,
                listComments
                  | refs."definitions.yawl.TrackerListComments"
                  | {}
                  | optional,
                listIssues
                  | refs."definitions.yawl.TrackerListIssues"
                  | {}
                  | optional,
                next | String | optional,
                oauthToken | String,
                organization
                  | refs."definitions.yawl.Organization"
                  | {}
                  | optional,
                output | String | optional,
                retryPolicy
                  | refs."definitions.yawl.RetryPolicy"
                  | {}
                  | optional,
                timeout
                  | js2n.string.Matches "^([0-9]+\\.?[0-9]*|\\.[0-9]+)s$"
                  | optional,
                updateComment
                  | refs."definitions.yawl.TrackerUpdateComment"
                  | {}
                  | optional,
                updateIssue
                  | refs."definitions.yawl.TrackerUpdateIssue"
                  | {}
                  | optional,
                updateIssueStatus
                  | refs."definitions.yawl.TrackerUpdateIssueStatus"
                  | {}
                  | optional,
              }
            ],
      "definitions.yawl.TrackerCreateComment" =
        { key | String, mentions | String | optional, text | String, },
      "definitions.yawl.TrackerCreateIssue" =
        {
            additionalProperties | { _ | String } | optional,
            assignee | String | optional,
            author | String | optional,
            description | String | optional,
            followers | String | optional,
            parent | String | optional,
            "priority" | String | optional,
            queue | String,
            sprints | String | optional,
            title | String,
            type | String | optional,
          },
      "definitions.yawl.TrackerGetIssue" = { key | String, },
      "definitions.yawl.TrackerLinkIssues" =
        { key | String, linkKey | String, relationship | String, },
      "definitions.yawl.TrackerListComments" =
        {
            key | String,
            lastCommentId | String | optional,
            pageSize | String | optional,
          },
      "definitions.yawl.TrackerListIssues" =
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
                      js2n.record.Required [ "queue" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "keys" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "filter" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "query" ],
                      Array Dyn
                    ]
                ],
              {
                filter
                  | refs."definitions.yawl.TrackerListIssues.SearchOptionsFilter"
                  | {}
                  | optional,
                keys | String | optional,
                pageNumber | String | optional,
                pageSize | String | optional,
                query | String | optional,
                queue | String | optional,
              }
            ],
      "definitions.yawl.TrackerListIssues.SearchOptionsFilter" =
        {
            issueProperties | { _ | String } | optional,
            order | String | optional,
          },
      "definitions.yawl.TrackerUpdateComment" =
        { id | String, issueKey | String, text | String, },
      "definitions.yawl.TrackerUpdateIssue" =
        {
            additionalProperties
              | refs."definitions.yawl.TrackerUpdateIssue.AdditionalProperties"
              | {}
              | optional,
            description | String | optional,
            followers
              | refs."definitions.yawl.TrackerUpdateIssue.Action"
              | {}
              | optional,
            key | String,
            parent | String | optional,
            "priority" | String | optional,
            sprints
              | refs."definitions.yawl.TrackerUpdateIssue.Action"
              | {}
              | optional,
            title | String | optional,
            type | String | optional,
          },
      "definitions.yawl.TrackerUpdateIssue.Action" =
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
                      js2n.record.Required [ "setValue" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "addValuesList" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "removeValuesList" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "replaceValuesMap" ],
                      Array Dyn
                    ]
                ],
              {
                addValuesList | String | optional,
                removeValuesList | String | optional,
                replaceValuesMap
                  | refs."definitions.yawl.InterpolatableMap"
                  | {}
                  | optional,
                setValue | String | optional,
              }
            ],
      "definitions.yawl.TrackerUpdateIssue.AdditionalProperties" =
        {
            pairs
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.yawl.TrackerUpdateIssue.Action", {} ]
              }
              | optional,
          },
      "definitions.yawl.TrackerUpdateIssueStatus" =
        {
            additionalProperties
              | refs."definitions.yawl.MapValue"
              | {}
              | optional,
            key | String,
            transition | String,
          },
      "definitions.yawl.Wait" =
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
                      js2n.record.Required [ "duration" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "until" ],
                      Array Dyn
                    ]
                ],
              {
                duration | String | optional,
                next | String | optional,
                until | String | optional,
              }
            ],
      "definitions.yawl.While" =
        {
            condition | String | optional,
            do | refs."definitions.yawl.WhileDo" | {},
            input | String | optional,
            maxIterations | std.number.Integer | optional,
            next | String | optional,
            output | String | optional,
          },
      "definitions.yawl.WhileDo" =
        {
            start | String,
            steps
              | js2n.record.MinProperties 1
              | {
                _ | std.contract.Sequence [ refs."definitions.yawl.Step", {} ]
              },
          },
      "definitions.yawl.YDBDocument" =
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
                      js2n.record.Required [ "get" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "put" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "update" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "scan" ],
                      Array Dyn
                    ]
                ],
              {
                catch
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.yawl.CatchRule", { _ | Dyn } ]
                  )
                  | optional,
                database | String,
                get | refs."definitions.yawl.YDBDocumentGet" | {} | optional,
                input | String | optional,
                next | String | optional,
                output | String | optional,
                put | refs."definitions.yawl.YDBDocumentPut" | {} | optional,
                retryPolicy
                  | refs."definitions.yawl.RetryPolicy"
                  | {}
                  | optional,
                scan | refs."definitions.yawl.YDBDocumentScan" | {} | optional,
                tableName | String,
                timeout
                  | js2n.string.Matches "^([0-9]+\\.?[0-9]*|\\.[0-9]+)s$"
                  | optional,
                update
                  | refs."definitions.yawl.YDBDocumentUpdate"
                  | {}
                  | optional,
              }
            ],
      "definitions.yawl.YDBDocumentGet" = { key | String, },
      "definitions.yawl.YDBDocumentPut" = { item | String, },
      "definitions.yawl.YDBDocumentScan" =
        { exclusiveStartKey | String, limit | String, },
      "definitions.yawl.YDBDocumentUpdate" =
        {
            expression | String,
            expressionAttributeValues | String | optional,
            key | String,
          },
      "definitions.yawl.YDS" =
        {
            catch
              | Array (
                std.contract.Sequence
                  [ refs."definitions.yawl.CatchRule", { _ | Dyn } ]
              )
              | optional,
            database | String,
            input | String | optional,
            next | String | optional,
            output | String | optional,
            put | refs."definitions.yawl.YDSPut" | {},
            retryPolicy | refs."definitions.yawl.RetryPolicy" | {} | optional,
            timeout
              | js2n.string.Matches "^([0-9]+\\.?[0-9]*|\\.[0-9]+)s$"
              | optional,
            topic | String,
          },
      "definitions.yawl.YDSPut" =
        { body | String | optional, partitionKey | String | optional, },
      "definitions.yawl.YMQ" =
        {
            catch
              | Array (
                std.contract.Sequence
                  [ refs."definitions.yawl.CatchRule", { _ | Dyn } ]
              )
              | optional,
            input | String | optional,
            next | String | optional,
            output | String | optional,
            put | refs."definitions.yawl.YMQPut" | {},
            queueArn | String,
            retryPolicy | refs."definitions.yawl.RetryPolicy" | {} | optional,
            timeout
              | js2n.string.Matches "^([0-9]+\\.?[0-9]*|\\.[0-9]+)s$"
              | optional,
          },
      "definitions.yawl.YMQPut" = { body | String | optional, },
    }
    in
  refs."definitions.Workflow"