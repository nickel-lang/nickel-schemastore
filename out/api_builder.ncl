# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.annotation" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^[a-zA-Z0-9_]*$" =
                      {
                          deprecation
                            | refs."definitions.deprecation"
                            | { _ | Dyn }
                            | optional,
                          description
                            | String
                            | doc "Describes what the annotation is used for."
                            | optional,
                        },
                  },
              properties = {},
              required = {},
            },
      "definitions.apidoc" =
        {
            version
              | String
              | doc "Specifies the version of the API Builder specification that this file is written for. The latest version can be found by visiting /apicollective/apibuilder-spec.",
          },
      "definitions.attribute" =
        {
            description | String | optional,
            name | String | doc "the name and identifier of the attribute.",
            value
              | { _ | Dyn }
              | doc "a JSON object that is usually utilized by a downstream Generator.",
          },
      "definitions.body" =
        {
            attributes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.attribute", { _ | Dyn } ]
              )
              | doc "JSON Array defining additional meta data about this body for use by generators."
              | optional,
            deprecation
              | refs."definitions.deprecation"
              | { _ | Dyn }
              | optional,
            description
              | String
              | doc "Optional description for what this body provides. Supports GFM."
              | optional,
            type
              | String
              | doc "Specifies the type of this body. Acceptable values include the name of either an enum, a model, or a (primitive type). To specify a List, the type name can be wrapped with \"[]\". For example, to specify that the type is a collection of strings, use \"[string]\". To specify a Map, the type name can be prefixed with \"map[type]\". For example, to specify that the type is a Map of string to long, use \"map[long]\". Note that for map, the keys must be strings (per the JSON specification).",
          },
      "definitions.contact" =
        {
            email
              | String
              | doc "Email address of the contact person/organization"
              | optional,
            name
              | String
              | doc "Identifying name of the contact person/organization"
              | optional,
            url
              | String
              | doc "URL pointing to the contact information"
              | optional,
          },
      "definitions.deprecation" =
        {
            description
              | String
              | doc "Optional, but recommended to contain notes for what the user is supposed to do now that this property is deprecated. Supports GFM."
              | optional,
          },
      "definitions.enum" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^[a-zA-Z0-9_]*$" =
                      {
                          attributes
                            | Array (
                              std.contract.Sequence
                                [ refs."definitions.attribute", { _ | Dyn } ]
                            )
                            | doc "JSON Array defining additional meta data about this enum for use by generators."
                            | optional,
                          deprecation
                            | refs."definitions.deprecation"
                            | { _ | Dyn }
                            | optional,
                          description
                            | String
                            | doc "Optional longer description for this enum."
                            | optional,
                          plural
                            | String
                            | doc "Specifies the optional, plural form of the name. By default, we will pluralize the name using a basic set of english heuristics. The plural is used as a default in cases where it is more natural to specify web services. For example, the default path for a resource will be the plural."
                            | optional,
                          values
                            | Array (
                              std.contract.Sequence
                                [ refs."definitions.enumvalues", { _ | Dyn } ]
                            )
                            | doc "JSON Array of EnumValue objects. Each element defines a valid value and an optional description.",
                        },
                  },
              properties = {},
              required = {},
            },
      "definitions.enumvalues" =
        {
            attributes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.attribute", { _ | Dyn } ]
              )
              | doc "JSON Array defining additional meta data about this enum value for use by generators."
              | optional,
            deprecation
              | refs."definitions.deprecation"
              | { _ | Dyn }
              | optional,
            description
              | String
              | doc "Optional description for what this enum value provides. Supports GFM."
              | optional,
            name
              | String
              | doc "The name of the value. Names must start with a letter.",
            value
              | String
              | doc "The actual string representation of this value when serializing. If not specified, defaults to 'name'."
              | optional,
          },
      "definitions.field" =
        {
            annotations
              | Array String
              | doc "JSON Array of type string where each value indicates the name of a declared annotation (optional),"
              | optional,
            attributes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.attribute", { _ | Dyn } ]
              )
              | doc "JSON Array defining additional meta data about this field for use by generators."
              | optional,
            "default"
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "Optional default value. The value must be valid for the type specified for this field. For example, if you specify a field named 'limit' with type 'integer', an acceptable default would be 10."
              | optional,
            deprecation
              | refs."definitions.deprecation"
              | { _ | Dyn }
              | optional,
            description
              | String
              | doc "Optional description for what this field provides. Supports GFM."
              | optional,
            example
              | String
              | doc "Optional - an example value for this field used only in the produced documentation"
              | optional,
            maximum
              | std.number.Integer
              | doc "Optional - For a string, refers to the maximum length. For an array, the maximum number of elements in the array. For example, a value of 1 for an array would indicate the array must have at most 1 element."
              | optional,
            minimum
              | std.number.Integer
              | doc "Optional - For a string, refers to the minimum length. For an array, the minimum number of elements in the array. For example, a value of 1 for an array would indicate the array must have at least 1 element."
              | optional,
            name
              | js2n.string.Matches "^[a-zA-Z0-9_]*$"
              | doc "Specifies the name of the field. Names must be alphanumeric and start with a letter. Valid characters are a-z, A-Z, 0-9 and _ characters.",
            required
              | Bool
              | doc "By default, all fields are considered required. To make a field optional, set \"required\" to false. When a field is marked as required, it must be present in any form of a model for that form to be valid. In client-server scenario, this means that any defaults that are present in the model must be applied by the client. If you want a default to be applied by the receiver, you should mark the field as \"required\": false"
              | optional,
            type
              | String
              | doc "Specifies the type of this field. Acceptable values include the name of either an enum, a model, or a (primitive type). To specify a List, the type name can be wrapped with \"[]\". For example, to specify that the type is a collection of strings, use \"[string]\". To specify a Map, the type name can be prefixed with \"map[type]\". For example, to specify that the type is a Map of string to long, use \"map[long]\". Note that for map, the keys must be strings (per the JSON specification).",
          },
      "definitions.header" =
        {
            attributes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.attribute", { _ | Dyn } ]
              )
              | doc "JSON Array defining additional meta data about this header for use by generators."
              | optional,
            "default"
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "The default value for this header. If specified, generated clients will automatically include this header in all requests. Default values must be specified as strings."
              | optional,
            deprecation
              | refs."definitions.deprecation"
              | { _ | Dyn }
              | optional,
            description
              | String
              | doc "Optional description for what this header provides. Supports GFM."
              | optional,
            name | String | doc "The name of the header.",
            required
              | Bool
              | doc "boolean: true|false. By default, all headers are considered required. To make a parameter optional, set \"required\" to false."
              | optional,
            type
              | String
              | doc "The type of this header. Acceptable values are either the name of an enum or string. To specify a collection (meaning multiple values for this header can be provided), the type name can be wrapped with \"[]\". For example, to specify that the type is a collection of strings, use \"[string]\".",
          },
      "definitions.import" =
        {
            uri
              | String
              | doc "The complete URI to the service specification that we are importing. Within API Builder, you can find the URL to the service specification by clicking on the \"service.json\" link for a service.",
          },
      "definitions.info" =
        {
            contact
              | refs."definitions.contact"
              | { _ | Dyn }
              | doc "Specifies contact information for this service."
              | optional,
            license
              | refs."definitions.license"
              | { _ | Dyn }
              | doc "Specifies the license under which this service is released."
              | optional,
          },
      "definitions.interface" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^[a-zA-Z0-9_]*$" =
                      {
                          attributes
                            | Array (
                              std.contract.Sequence
                                [ refs."definitions.attribute", { _ | Dyn } ]
                            )
                            | doc "JSON Array defining additional meta data about this model for use by generators."
                            | optional,
                          deprecation
                            | refs."definitions.deprecation"
                            | { _ | Dyn }
                            | optional,
                          description
                            | String
                            | doc "Optional description for what this model provides. Supports GFM."
                            | optional,
                          fields
                            | Array (
                              std.contract.Sequence
                                [ refs."definitions.field", { _ | Dyn } ]
                            )
                            | doc "JSON Array of 0 or more Fields."
                            | optional,
                          plural
                            | String
                            | doc "Specifies the optional, plural form of the name. By default, we will pluralize the name using a basic set of english heuristics. The plural is used as a default in cases where it is more natural to specify web services. For example, the default path for a resource will be the plural."
                            | optional,
                        },
                  },
              properties = {},
              required = {},
            },
      "definitions.license" =
        {
            name | String | doc "Name of the license - e.g. MIT",
            url | String | doc "URL of the license itself" | optional,
          },
      "definitions.model" =
        std.contract.Sequence
            [
              {
                _ | {
                  attributes
                    | Array (
                      std.contract.Sequence
                        [ refs."definitions.attribute", { _ | Dyn } ]
                    )
                    | optional,
                  deprecation
                    | refs."definitions.deprecation"
                    | { _ | Dyn }
                    | optional,
                  description
                    | String
                    | doc "Description for what this model provides."
                    | optional,
                  fields
                    | Array (
                      std.contract.Sequence
                        [ refs."definitions.field", { _ | Dyn } ]
                    )
                    | optional,
                  interfaces
                    | Array String
                    | doc "JSON Array of type string where each value indicates the name of a declared interface"
                    | optional,
                  plural
                    | String
                    | doc "Specifies the optional, plural form of the name. By default, we will pluralize the name using a basic set of english heuristics. The plural is used as a default in cases where it is more natural to specify web services. For example, the default path for a resource will be the plural."
                    | optional,
                  ..
                }
              },
              js2n.record.FieldsMatch "^[a-zA-Z0-9_]*$"
            ],
      "definitions.operation" =
        {
            attributes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.attribute", { _ | Dyn } ]
              )
              | doc "JSON array defining additional meta data about this operation for use by generators."
              | optional,
            body
              | refs."definitions.body"
              | { _ | Dyn }
              | doc "Optional specification for the type of the body of this request. For all operations that support bodies (e.g. POST, PUT, PATCH), allows you to specify the type of the body."
              | optional,
            deprecation
              | refs."definitions.deprecation"
              | { _ | Dyn }
              | optional,
            description
              | String
              | doc "Optional description for what this operation provides. Supports GFM."
              | optional,
            method | String | doc "The HTTP method for this operation",
            parameters
              | Array (
                std.contract.Sequence
                  [ refs."definitions.parameter", { _ | Dyn } ]
              )
              | doc "Optional JSON Array of the parameters to this method. By default, for GET methods, parameters are assumed to be in the path or in the query. For other methods, parameters are assumed to be in the path or form body, unless you have explicitly specified a body in which case parameters can be provided in the path or the query."
              | optional,
            path
              | String
              | doc "Optional path for this particular operation. If not provided, defaults to no additional path. Path parameters can be specified by prefixing a path element with ':'. For example, a path of '/:guid' would imply that this operation is available at /resource_path/:guid. Path parameter types are inferred by looking for a field with that name on the model associated with this resource. If not found, the datatype of any path parameter will be string."
              | optional,
            responses
              | refs."definitions.response"
              | { _ | Dyn }
              | doc "Optional JSON Object of HTTP Response Code to Response. If not provided, an HTTP NoContent response is assumed. Only responses for HTTP status codes that are interesting should be documented."
              | optional,
          },
      "definitions.parameter" =
        {
            attributes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.attribute", { _ | Dyn } ]
              )
              | doc "JSON array defining additional meta data about this parameter for use by generators."
              | optional,
            "default"
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "Optional default value. The value must be valid for the type specified for this parameter. For example, if you specify a parameter named 'limit' with type 'integer', an acceptable default would be 10"
              | optional,
            deprecation
              | refs."definitions.deprecation"
              | { _ | Dyn }
              | optional,
            description
              | String
              | doc "Optional description for what this parameter provides. Supports GFM."
              | optional,
            example
              | String
              | doc "Optional - an example value for this parameter used only in the produced documentation"
              | optional,
            location
              | String
              | doc "One of: path, query, form, header. Defines the location of this parameter. Default location varies based on the context of the parameter (e.g. if the operation method is a POST, the default will be Form; if a GET, the default will be Query)"
              | optional,
            maximum
              | std.number.Integer
              | doc "Optional - For a string, refers to the maximum length. For an array, the maximum number of elements in the array. For example, a value of 1 for an array would indicate the array must have at most 1 element."
              | optional,
            minimum
              | std.number.Integer
              | doc "Optional - For a string, refers to the minimum length. For an array, the minimum number of elements in the array. For example, a value of 1 for an array would indicate the array must have at least 1 element."
              | optional,
            name
              | js2n.string.Matches "^[a-zA-Z0-9_]*$"
              | doc "The name of the parameter. Names must be alphanumeric and must start with a letter. Valid characters are a-z, A-Z, 0-9 and _ characters.",
            required
              | Bool
              | doc "By default all parameters are considered required. To make a parameter optional, set \"required\" to false."
              | optional,
            type
              | String
              | doc "Specifies the type of this parameter. Acceptable values include the name of either an enum, a model, or a (primitive type). To specify a List, the type name can be wrapped with \"[]\". For example, to specify that the type is a collection of strings, use \"[string]\". To specify a Map, the type name can be prefixed with \"map[type]\". For example, to specify that the type is a Map of string to long, use \"map[long]\". Note that for map, the keys must be strings (per the JSON specification).",
          },
      "definitions.resource" =
        std.contract.Sequence
            [
              {
                _ | {
                  attributes
                    | Array (
                      std.contract.Sequence
                        [ refs."definitions.attribute", { _ | Dyn } ]
                    )
                    | doc "JSON Array defining additional meta data about this resource for use by generators."
                    | optional,
                  deprecation
                    | refs."definitions.deprecation"
                    | { _ | Dyn }
                    | optional,
                  description
                    | String
                    | doc "Optional description for what this resource provides. Supports GFM."
                    | optional,
                  operations
                    | Array (
                      std.contract.Sequence
                        [ refs."definitions.operation", { _ | Dyn } ]
                    )
                    | doc "One or more operations is required.",
                  path
                    | String
                    | doc "Optional path where this resource is located. If not provided, defaults to the plural of the typeName, with some assumptions of formatting for web (e.g. lower case, dash separated). Path parameters can be specified by prefixing a path element with ':'. For example, a path of '/:guid' would imply that all operations for this path will require a parameter named 'guid' of type 'string'"
                    | optional,
                }
              },
              js2n.record.FieldsMatch "^[a-zA-Z0-9_.]*$"
            ],
      "definitions.response" =
        std.contract.Sequence
            [
              {
                _ | {
                  attributes
                    | Array (
                      std.contract.Sequence
                        [ refs."definitions.attribute", { _ | Dyn } ]
                    )
                    | doc "JSON Array defining additional meta data about this service. Attributes are used to add custom extensions to API Builder and are typically used by generators to enable advanced code generation."
                    | optional,
                  deprecation
                    | refs."definitions.deprecation"
                    | { _ | Dyn }
                    | optional,
                  description
                    | String
                    | doc "Optional description for what this response provides. Supports GFM."
                    | optional,
                  headers
                    | Array (
                      std.contract.Sequence
                        [ refs."definitions.header", { _ | Dyn } ]
                    )
                    | optional,
                  type
                    | String
                    | doc "Specifies the type of this response. Acceptable values include the name of either an enum, a model, or a (primitive type). To specify a List, the type name can be wrapped with \"[]\". For example, to specify that the type is a collection of strings, use \"[string]\". To specify a Map, the type name can be prefixed with \"map[type]\". For example, to specify that the type is a Map of string to long, use \"map[long]\". Note that for map, the keys must be strings (per the JSON specification).",
                }
              },
              js2n.record.FieldsMatch "^[0-9]*$"
            ],
      "definitions.union" =
        std.contract.Sequence
            [
              {
                _ | {
                  attributes
                    | Array (
                      std.contract.Sequence
                        [ refs."definitions.attribute", { _ | Dyn } ]
                    )
                    | doc "JSON Array defining additional meta data about this union for use by generators."
                    | optional,
                  deprecation
                    | refs."definitions.deprecation"
                    | { _ | Dyn }
                    | optional,
                  description
                    | String
                    | doc "Optional description for what this union provides. Supports GFM."
                    | optional,
                  discriminator
                    | String
                    | doc "Specifies an optional, but recommended, name for a type discriminator field which can then be used in serialization / deserialization to identify the type of object. For example, if not specified, a code generator may serialize the union type into a JSON structure of { \"type\" => object }. If a discriminator is provided, the same code generator can flatten the JSON representation to, for example: { \"discriminator\" => \"xxx\", \"field1\" => \"yyy\" }. If provided, the name of the discriminator field must be unique across all of the fields across all of the types of this union."
                    | optional,
                  interfaces
                    | Array String
                    | doc "JSON Array of type string where each value indicates the name of a declared interface"
                    | optional,
                  plural
                    | String
                    | doc "Specifies the optional, plural form of the name. By default, we will pluralize the name using a basic set of english heuristics. The plural is used as a default in cases where it is more natural to specify web services. For example, the default path for a resource will be the plural."
                    | optional,
                  types
                    | Array (
                      std.contract.Sequence
                        [ refs."definitions.uniontype", { _ | Dyn } ]
                    )
                    | doc "Specifies the individual types that are part of this union type.",
                }
              },
              js2n.record.FieldsMatch "^[a-zA-Z0-9_]*$"
            ],
      "definitions.uniontype" =
        {
            attributes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.attribute", { _ | Dyn } ]
              )
              | doc "JSON Array defining additional meta data about this union type for use by generators."
              | optional,
            "default"
              | Bool
              | doc "If true, indicates that this type should be used as the default when deserializing union types. This field is only used by union types that require a discriminator and sets the default value for that discriminator during deserialization."
              | optional,
            deprecation
              | refs."definitions.deprecation"
              | { _ | Dyn }
              | optional,
            description | String | optional,
            discriminator_value
              | String
              | doc "The discriminator value defines the string to use in the discriminator field to identify this type. If not specified, the discriminator value will default to the name of the type itself."
              | optional,
            type
              | String
              | doc m%"
                Specifies the type to include in this union type. Acceptable values include the name of either an enum, a model, or a (primitive type).
                description optional description for what this type provides. Supports GFM.
              "%,
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
          "$schema" | String | doc "A JSON schema URL" | optional,
          annotations
            | refs."definitions.annotation"
            | doc "JSON object defining all of the annotations in this API. The key of each object is the annotation name."
            | optional,
          apidoc
            | refs."definitions.apidoc"
            | doc "Optionally specify the specific version of API Builder for which your service is written. If not provided, we automatically default to the current production version."
            | optional,
          attributes
            | Array refs."definitions.attribute"
            | doc "JSON Array defining additional meta data about this service. Attributes are used to add custom extensions to API Builder and are typically used by generators to enable advanced code generation."
            | optional,
          base_url
            | String
            | doc "The base URL where this service is hosted. Must start with http."
            | optional,
          description
            | String
            | doc "optional description for what this service provides. Supports GFM."
            | optional,
          enums
            | refs."definitions.enum"
            | doc "JSON object defining all of the enums in this API. The key of each object is the enum name."
            | optional,
          headers
            | Array refs."definitions.header"
            | doc "JSON Array defining any HTTP Headers that the service understands or expects."
            | optional,
          imports
            | Array refs."definitions.import"
            | doc "JSON Array defining any other services whose schema definitions we would like to import into our service."
            | optional,
          info
            | refs."definitions.info"
            | doc "Optionally specify additional metadata about this service (e.g. contact info, license)."
            | optional,
          interfaces | refs."definitions.interface" | optional,
          models
            | refs."definitions.model"
            | doc "JSON object defining all of the models in this API. The key of each object is the model name."
            | optional,
          name
            | String
            | doc "The human readable name of this service. Used for display, and as the basis for generating a unique key for URL.",
          namespace
            | String
            | doc "Specifies the namespace for this service. Namespace is primarily used when other services import definitions from your service and in the code generators when defining things like package names. If not specified, we will automatically generate a namespace based on [organization namespace].[formatted service name].[major version number]. Note that by default API Builder includes the major version number in the package name which allows service authors and clients to interact with multiple versions of the service where changes have been made in a non backwards compatible way."
            | optional,
          resources
            | refs."definitions.resource"
            | doc "JSON object defining all of the resources in this API. The key of each object is the name of a type that this resource represents. The type must be the name of a model or an enum."
            | optional,
          unions | refs."definitions.union" | optional,
        },
        Array Dyn
      ]