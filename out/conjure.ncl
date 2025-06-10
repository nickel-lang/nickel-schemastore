# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AliasDefinition" =
        {
            alias
              | refs."definitions.ConjureType"
              | doc "The Conjure type to be aliased.",
            docs | refs."definitions.DocString" | String | optional,
            package | String | optional,
            safety | refs."definitions.LogSafety" | String | optional,
          },
      "definitions.ArgumentDefinition" =
        {
            docs | refs."definitions.DocString" | String | optional,
            markers | js2n.array.UniqueItems | Array String | optional,
            param-id | String | optional,
            param-type
              | refs."definitions.ArgumentDefinitionParamType"
              | String
              | optional,
            safety | refs."definitions.LogSafety" | String | optional,
            tags | js2n.array.UniqueItems | Array String | optional,
            type | refs."definitions.ConjureType",
          },
      "definitions.ArgumentDefinitionParamType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'query, 'header, 'body, 'path, 'auto |]
            ],
      "definitions.AuthDefinition" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'header, 'none |] ],
              js2n.string.Matches "^cookie:[a-zA-Z0-9]+$"
            ],
      "definitions.BuiltIn" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'uuid,
                'string,
                'safelong,
                'rid,
                'integer,
                'double,
                'datetime,
                'boolean,
                'binary,
                'bearertoken,
                'any
              |]
            ],
      "definitions.ConjureType" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.TypeName", String ],
              std.contract.Sequence
                [ refs."definitions.ContainerType", String ],
              std.contract.Sequence [ refs."definitions.BuiltIn", String ]
            ],
      "definitions.ContainerType" =
        js2n.string.Matches "^(optional|list|set|map)<.*>$",
      "definitions.DocString" = String,
      "definitions.EndpointDefinition" =
        {
            args
              | {
                _ | js2n.OneOf
                  [
                    std.contract.Sequence
                      [ refs."definitions.ArgumentDefinition", { _ | Dyn } ],
                    refs."definitions.ConjureType"
                  ]
              }
              | optional,
            auth | refs."definitions.AuthDefinition" | optional,
            deprecated | refs."definitions.DocString" | String | optional,
            docs | refs."definitions.DocString" | String | optional,
            errors
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.TypeName", String ],
                    std.contract.Sequence
                      [ refs."definitions.EndpointError", { _ | Dyn } ]
                  ]
              )
              | optional,
            http | js2n.string.Matches "^(GET|DELETE|POST|PUT) .*$",
            returns | refs."definitions.ConjureType" | optional,
            tags | js2n.array.UniqueItems | Array String | optional,
          },
      "definitions.EndpointError" =
        {
            docs | refs."definitions.DocString" | String | optional,
            error | refs."definitions.TypeName" | String,
          },
      "definitions.EnumTypeDefinition" =
        {
            docs | refs."definitions.DocString" | String | optional,
            package | String | optional,
            values
              | js2n.array.UniqueItems
              | Array (
                std.contract.any_of
                  [
                    refs."definitions.UpperCase",
                    std.contract.Sequence
                      [ refs."definitions.EnumValueDefinition", { _ | Dyn } ]
                  ]
              ),
          },
      "definitions.EnumValueDefinition" =
        {
            deprecated | refs."definitions.DocString" | String | optional,
            docs | refs."definitions.DocString" | String | optional,
            package | String | optional,
            value | refs."definitions.UpperCase",
          },
      "definitions.ErrorCode" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'CUSTOM_SERVER,
                'CUSTOM_CLIENT,
                'TIMEOUT,
                'INTERNAL,
                'FAILED_PRECONDITION,
                'REQUEST_ENTITY_TOO_LARGE,
                'CONFLICT,
                'NOT_FOUND,
                'INVALID_ARGUMENT,
                'PERMISSION_DENIED
              |]
            ],
      "definitions.ErrorDefinition" =
        {
            code | refs."definitions.ErrorCode" | String,
            docs | refs."definitions.DocString" | String | optional,
            namespace | refs."definitions.PascalCase" | String,
            package | String | optional,
            safe-args
              | {
                _ | js2n.OneOf
                  [
                    std.contract.Sequence
                      [ refs."definitions.FieldDefinition", { _ | Dyn } ],
                    refs."definitions.ConjureType"
                  ]
              }
              | optional,
            unsafe-args
              | {
                _ | js2n.OneOf
                  [
                    std.contract.Sequence
                      [ refs."definitions.FieldDefinition", { _ | Dyn } ],
                    refs."definitions.ConjureType"
                  ]
              }
              | optional,
          },
      "definitions.ExternalImportDefinition" =
        { java | String | doc "The fully qualified Java type." | optional, },
      "definitions.ExternalTypeDefinition" =
        {
            base-type
              | refs."definitions.ConjureType"
              | doc "A base-type is provided as a hint to generators for how to handle this type when no external type reference is provided. Note that the serialization format of the base-type fallback should match the format of the imported type. If the imported type is a non-primitive JSON object, then a base-type of any should be used."
              | optional,
            external
              | refs."definitions.ExternalImportDefinition"
              | { _ | Dyn }
              | doc "The external types to reference."
              | optional,
          },
      "definitions.FieldDefinition" =
        {
            deprecated | refs."definitions.DocString" | String | optional,
            docs | refs."definitions.DocString" | String | optional,
            package | String | optional,
            safety | refs."definitions.LogSafety" | String | optional,
            type | refs."definitions.ConjureType",
          },
      "definitions.LogSafety" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'do-not-log, 'unsafe, 'safe |] ],
      "definitions.NamedTypesDefinition" =
        {
            default-package | String | optional,
            errors
              | js2n.record.PropertyNames
                (std.contract.Sequence [ refs."definitions.TypeName", String ])
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.ErrorDefinition", { _ | Dyn } ]
              }
              | js2n.record.FieldsMatch ""
              | optional,
            objects
              | js2n.record.PropertyNames
                (std.contract.Sequence [ refs."definitions.TypeName", String ])
              | {
                _ | js2n.OneOf
                  [
                    std.contract.Sequence
                      [ refs."definitions.AliasDefinition", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.ObjectTypeDefinition", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.UnionTypeDefinition", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.EnumTypeDefinition", { _ | Dyn } ]
                  ]
              }
              | js2n.record.FieldsMatch ""
              | optional,
          },
      "definitions.ObjectTypeDefinition" =
        {
            docs | refs."definitions.DocString" | String | optional,
            fields
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    _ | std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.FieldDefinition", { _ | Dyn } ],
                        refs."definitions.ConjureType"
                      ]
                  },
                  Array Dyn
                ],
            package | String | optional,
          },
      "definitions.PascalCase" =
        js2n.string.Matches "^[A-Z][a-z0-9]+([A-Z][a-z0-9]+)*$",
      "definitions.PathString" = String,
      "definitions.ServiceDefinition" =
        {
            base-path | refs."definitions.PathString" | String | optional,
            default-auth | refs."definitions.AuthDefinition" | optional,
            docs | refs."definitions.DocString" | String | optional,
            endpoints
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.EndpointDefinition", { _ | Dyn } ]
              },
            name | String | optional,
            package | String,
          },
      "definitions.TypeName" =
        js2n.string.Matches "^([a-zA-Z]+[.])?[A-Z][a-z0-9]+([A-Z][a-z0-9]+)*$",
      "definitions.TypesDefinition" =
        {
            conjure-imports
              | { _ | String }
              | js2n.record.FieldsMatch "^[_a-zA-Z][_a-zA-Z0-9]*$"
              | doc "A map between a namespace and a relative path to a Conjure definition file."
              | optional,
            definitions
              | refs."definitions.NamedTypesDefinition"
              | { _ | Dyn }
              | doc "The types specified in this definition."
              | optional,
            imports
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.ExternalTypeDefinition", { _ | Dyn } ]
              }
              | doc "A map between a type alias and its external definition. Type aliases MUST be in PascalCase."
              | optional,
          },
      "definitions.UnionTypeDefinition" =
        {
            docs | refs."definitions.DocString" | String | optional,
            package | String | optional,
            union
              | {
                _ | js2n.OneOf
                  [
                    std.contract.Sequence
                      [ refs."definitions.FieldDefinition", { _ | Dyn } ],
                    refs."definitions.ConjureType"
                  ]
              },
          },
      "definitions.UpperCase" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              js2n.string.Matches "^[A-Z][A-Z0-9]*(_[A-Z0-9]+)*$",
              { _ | Dyn },
              Array Dyn
            ],
    }
    in
  {
      services | { _ | refs."definitions.ServiceDefinition" } | optional,
      types | refs."definitions.TypesDefinition" | optional,
    }