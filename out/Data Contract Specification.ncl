# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "properties.models.additionalProperties.properties.fields.additionalProperties" =
        {
            "$ref"
              | String
              | doc "A reference URI to a definition in the specification, internally or externally. Properties will be inherited from the definition."
              | optional,
            classification
              | String
              | doc "The data class defining the sensitivity level for this field, according to the organization's classification scheme."
              | optional,
            config
              | js2n.record.Record
                {
                  additional =
                    'Some
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            { _ | Dyn },
                            Array Dyn
                          ]),
                  patterns = {},
                  properties =
                    {
                        avroLogicalType = String,
                        avroType = String,
                        bigqueryType = String,
                        databricksType = String,
                        glueType = String,
                        redshiftType = String,
                        snowflakeType = String,
                        sqlserverType = String,
                      },
                  required = {},
                }
              | doc "Additional metadata for field configuration."
              | optional,
            description
              | String
              | doc "An optional string describing the semantic of the data in this field."
              | optional,
            enum
              | js2n.array.UniqueItems
              | Array String
              | doc "A value must be equal to one of the elements in this array value. Only evaluated if the value is not null."
              | optional,
            example
              | String
              | doc "An example value for this field."
              | optional,
            examples
              | Array Dyn
              | doc "A examples value for this field."
              | optional,
            exclusiveMaximum
              | Number
              | doc "A value of a number must less than the value of this. Only evaluated if the value is not null. Only applies to numeric values."
              | optional,
            exclusiveMinimum
              | Number
              | doc "A value of a number must greater than the value of this. Only evaluated if the value is not null. Only applies to numeric values."
              | optional,
            fields
              | { _ | std.contract.Sequence [ js2n.Always, { _ | Dyn } ] }
              | doc "The nested fields (e.g. columns) of the object, record, or struct."
              | optional,
            format
              | String
              | doc "A specific format the value must comply with (e.g., 'email', 'uri', 'uuid')."
              | optional,
            items | js2n.Always | { _ | Dyn } | optional,
            keys | js2n.Always | { _ | Dyn } | optional,
            lineage | js2n.Always | optional,
            links
              | js2n.record.MinProperties 1
              | js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    js2n.string.Matches "^[a-zA-Z0-9_-]+$",
                    { _ | Dyn },
                    Array Dyn
                  ])
              | { _ | String }
              | doc "Links to external resources."
              | optional,
            maxLength
              | std.number.Integer
              | doc "A value must less than, or equal to, the value of this. Only applies to string types."
              | optional,
            maximum
              | Number
              | doc "A value of a number must less than, or equal to, the value of this. Only evaluated if the value is not null. Only applies to numeric values."
              | optional,
            minLength
              | std.number.Integer
              | doc "A value must greater than, or equal to, the value of this. Only applies to string types."
              | optional,
            minimum
              | Number
              | doc "A value of a number must greater than, or equal to, the value of this. Only evaluated if the value is not null. Only applies to numeric values."
              | optional,
            pattern
              | String
              | doc "A regular expression the value must match. Only applies to string types."
              | optional,
            pii
              | Bool
              | doc "An indication, if this field contains Personal Identifiable Information (PII)."
              | optional,
            precision
              | Number
              | doc "The maximum number of digits in a number. Only applies to numeric values. Defaults to 38."
              | optional,
            primary | Bool | optional,
            primaryKey
              | Bool
              | doc "If this field is a primary key."
              | optional,
            quality | Array js2n.Always | optional,
            references
              | String
              | doc "The reference to a field in another model. E.g. use 'orders.order_id' to reference the order_id field of the model orders. Think of defining a foreign key relationship."
              | optional,
            required
              | Bool
              | doc "An indication, if this field must contain a value and may not be null."
              | optional,
            scale
              | Number
              | doc "The maximum number of decimal places in a number. Only applies to numeric values. Defaults to 0."
              | optional,
            tags
              | Array String
              | doc "Custom metadata to provide additional context."
              | optional,
            title
              | String
              | doc "An optional string providing a human readable name for the field. Especially useful if the field name is cryptic or contains abbreviations."
              | optional,
            type | js2n.Always | optional,
            unique
              | Bool
              | doc "An indication, if the value must be unique within the model."
              | optional,
            values | js2n.Always | { _ | Dyn } | optional,
            ..
          },
    }
    in
  {
      dataContractSpecification
        | std.enum.TagOrString
        | [| '"0.9.0", '"0.9.1", '"0.9.2", '"0.9.3", '"1.1.0" |]
        | doc "Specifies the Data Contract Specification being used.",
      definitions
        | js2n.record.PropertyNames
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              js2n.string.Matches "^[a-zA-Z0-9/_-]+$",
              { _ | Dyn },
              Array Dyn
            ])
        | {
          _ | {
            classification
              | String
              | doc "The data class defining the sensitivity level for this field."
              | optional,
            description
              | String
              | doc "Clear and concise explanations related to the domain."
              | optional,
            domain
              | String
              | doc "The domain in which this definition is valid."
              | optional,
            example | String | doc "An example value." | optional,
            examples | Array Dyn | doc "Example value." | optional,
            exclusiveMaximum
              | Number
              | doc "A value of a number must less than the value of this. Only evaluated if the value is not null. Only applies to numeric values."
              | optional,
            exclusiveMinimum
              | Number
              | doc "A value of a number must greater than the value of this. Only evaluated if the value is not null. Only applies to numeric values."
              | optional,
            fields
              | {
                _ | refs."properties.models.additionalProperties.properties.fields.additionalProperties"
              }
              | doc "The nested fields (e.g. columns) of the object, record, or struct."
              | optional,
            format
              | String
              | doc "Specific format requirements for the value (e.g., 'email', 'uri', 'uuid')."
              | optional,
            items
              | refs."properties.models.additionalProperties.properties.fields.additionalProperties"
              | optional,
            keys
              | refs."properties.models.additionalProperties.properties.fields.additionalProperties"
              | optional,
            links
              | js2n.record.MinProperties 1
              | js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    js2n.string.Matches "^[a-zA-Z0-9_-]+$",
                    { _ | Dyn },
                    Array Dyn
                  ])
              | { _ | String }
              | doc "Links to external resources."
              | optional,
            maxLength
              | std.number.Integer
              | doc "A value must be less than or equal to this value. Applies only to string types."
              | optional,
            maximum
              | Number
              | doc "A value of a number must less than, or equal to, the value of this. Only evaluated if the value is not null. Only applies to numeric values."
              | optional,
            minLength
              | std.number.Integer
              | doc "A value must be greater than or equal to this value. Applies only to string types."
              | optional,
            minimum
              | Number
              | doc "A value of a number must greater than, or equal to, the value of this. Only evaluated if the value is not null. Only applies to numeric values."
              | optional,
            name
              | String
              | doc "The technical name of this definition."
              | optional,
            pattern
              | String
              | doc "A regular expression pattern the value must match. Applies only to string types."
              | optional,
            pii
              | Bool
              | doc "Indicates if the field contains Personal Identifiable Information (PII)."
              | optional,
            precision
              | std.number.Integer
              | doc "The maximum number of digits in a number. Only applies to numeric values. Defaults to 38."
              | optional,
            scale
              | std.number.Integer
              | doc "The maximum number of decimal places in a number. Only applies to numeric values. Defaults to 0."
              | optional,
            tags
              | Array String
              | doc "Custom metadata to provide additional context."
              | optional,
            title
              | String
              | doc "The business name of this definition."
              | optional,
            type
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
            values
              | refs."properties.models.additionalProperties.properties.fields.additionalProperties"
              | optional,
            ..
          }
        }
        | doc "Clear and concise explanations of syntax, semantic, and classification of business objects in a given domain."
        | optional,
      id | String | doc "Specifies the identifier of the data contract.",
      info
        | {
          contact
            | {
              email
                | String
                | doc "The email address of the contact person/organization. This MUST be in the form of an email address."
                | optional,
              name
                | String
                | doc "The identifying name of the contact person/organization."
                | optional,
              url
                | String
                | doc "The URL pointing to the contact information. This MUST be in the form of a URL."
                | optional,
              ..
            }
            | doc "Contact information for the data contract."
            | optional,
          description
            | String
            | doc "A description of the data contract."
            | optional,
          owner
            | String
            | doc "The owner or team responsible for managing the data contract and providing the data."
            | optional,
          status
            | String
            | doc "The status of the data contract. Can be proposed, in development, active, retired."
            | optional,
          title | String | doc "The title of the data contract.",
          version
            | String
            | doc "The version of the data contract document (which is distinct from the Data Contract Specification version or the Data Product implementation version).",
          ..
        }
        | doc "Metadata and life cycle information about the data contract.",
      links
        | js2n.record.MinProperties 1
        | js2n.record.PropertyNames
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              js2n.string.Matches "^[a-zA-Z0-9_-]+$",
              { _ | Dyn },
              Array Dyn
            ])
        | { _ | String }
        | doc "Links to external resources."
        | optional,
      models
        | js2n.record.MinProperties 1
        | js2n.record.PropertyNames
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              js2n.string.Matches "^[a-zA-Z0-9_-]+$",
              { _ | Dyn },
              Array Dyn
            ])
        | {
          _ | {
            config
              | js2n.record.Record
                {
                  additional =
                    'Some
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            { _ | Dyn },
                            Array Dyn
                          ]),
                  patterns = {},
                  properties = { avroNamespace = String, },
                  required = {},
                }
              | doc "Additional metadata for model configuration."
              | optional,
            description | String | optional,
            examples | Array Dyn | optional,
            fields
              | {
                _ | {
                  "$ref"
                    | String
                    | doc "A reference URI to a definition in the specification, internally or externally. Properties will be inherited from the definition."
                    | optional,
                  classification
                    | String
                    | doc "The data class defining the sensitivity level for this field, according to the organization's classification scheme."
                    | optional,
                  config
                    | js2n.record.Record
                      {
                        additional =
                          'Some
                              (std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  { _ | Dyn },
                                  Array Dyn
                                ]),
                        patterns = {},
                        properties =
                          {
                              avroLogicalType = String,
                              avroType = String,
                              bigqueryType = String,
                              databricksType = String,
                              glueType = String,
                              redshiftType = String,
                              snowflakeType = String,
                              sqlserverType = String,
                            },
                        required = {},
                      }
                    | doc "Additional metadata for field configuration."
                    | optional,
                  description
                    | String
                    | doc "An optional string describing the semantic of the data in this field."
                    | optional,
                  enum
                    | js2n.array.UniqueItems
                    | Array String
                    | doc "A value must be equal to one of the elements in this array value. Only evaluated if the value is not null."
                    | optional,
                  example
                    | String
                    | doc "An example value for this field."
                    | optional,
                  examples
                    | Array Dyn
                    | doc "A examples value for this field."
                    | optional,
                  exclusiveMaximum
                    | Number
                    | doc "A value of a number must less than the value of this. Only evaluated if the value is not null. Only applies to numeric values."
                    | optional,
                  exclusiveMinimum
                    | Number
                    | doc "A value of a number must greater than the value of this. Only evaluated if the value is not null. Only applies to numeric values."
                    | optional,
                  fields
                    | {
                      _ | refs."properties.models.additionalProperties.properties.fields.additionalProperties"
                    }
                    | doc "The nested fields (e.g. columns) of the object, record, or struct."
                    | optional,
                  format
                    | String
                    | doc "A specific format the value must comply with (e.g., 'email', 'uri', 'uuid')."
                    | optional,
                  items
                    | refs."properties.models.additionalProperties.properties.fields.additionalProperties"
                    | optional,
                  keys
                    | refs."properties.models.additionalProperties.properties.fields.additionalProperties"
                    | optional,
                  lineage
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | optional,
                  links
                    | js2n.record.MinProperties 1
                    | js2n.record.PropertyNames
                      (std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          js2n.string.Matches "^[a-zA-Z0-9_-]+$",
                          { _ | Dyn },
                          Array Dyn
                        ])
                    | { _ | String }
                    | doc "Links to external resources."
                    | optional,
                  maxLength
                    | std.number.Integer
                    | doc "A value must less than, or equal to, the value of this. Only applies to string types."
                    | optional,
                  maximum
                    | Number
                    | doc "A value of a number must less than, or equal to, the value of this. Only evaluated if the value is not null. Only applies to numeric values."
                    | optional,
                  minLength
                    | std.number.Integer
                    | doc "A value must greater than, or equal to, the value of this. Only applies to string types."
                    | optional,
                  minimum
                    | Number
                    | doc "A value of a number must greater than, or equal to, the value of this. Only evaluated if the value is not null. Only applies to numeric values."
                    | optional,
                  pattern
                    | String
                    | doc "A regular expression the value must match. Only applies to string types."
                    | optional,
                  pii
                    | Bool
                    | doc "An indication, if this field contains Personal Identifiable Information (PII)."
                    | optional,
                  precision
                    | Number
                    | doc "The maximum number of digits in a number. Only applies to numeric values. Defaults to 38."
                    | optional,
                  primary | Bool | optional,
                  primaryKey
                    | Bool
                    | doc "If this field is a primary key."
                    | optional,
                  quality
                    | Array (
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ]
                    )
                    | optional,
                  references
                    | String
                    | doc "The reference to a field in another model. E.g. use 'orders.order_id' to reference the order_id field of the model orders. Think of defining a foreign key relationship."
                    | optional,
                  required
                    | Bool
                    | doc "An indication, if this field must contain a value and may not be null."
                    | optional,
                  scale
                    | Number
                    | doc "The maximum number of decimal places in a number. Only applies to numeric values. Defaults to 0."
                    | optional,
                  tags
                    | Array String
                    | doc "Custom metadata to provide additional context."
                    | optional,
                  title
                    | String
                    | doc "An optional string providing a human readable name for the field. Especially useful if the field name is cryptic or contains abbreviations."
                    | optional,
                  type
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | optional,
                  unique
                    | Bool
                    | doc "An indication, if the value must be unique within the model."
                    | optional,
                  values
                    | refs."properties.models.additionalProperties.properties.fields.additionalProperties"
                    | optional,
                  ..
                }
              }
              | doc "Specifies a field in the data model. Use the field name (e.g., the column name) as the key."
              | optional,
            primaryKey
              | Array String
              | doc "The compound primary key of the model."
              | optional,
            quality
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | optional,
            title
              | String
              | doc "An optional string providing a human readable name for the model. Especially useful if the model name is cryptic or contains abbreviations."
              | optional,
            type
              | std.enum.TagOrString
              | [| 'object, 'view, 'table |]
              | doc "The type of the model. Examples: table, view, object. Default: table."
              | optional,
            ..
          }
        }
        | doc "Specifies the logical data model. Use the models name (e.g., the table name) as the key."
        | optional,
      servers
        | {
          _ | std.contract.Sequence
            [
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "bigquery", },
                        required = {},
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
                js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "postgres", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
                js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "s3", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
                js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "sftp", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
                js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "redshift", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
                js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "azure", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
                js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "sqlserver", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
                js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "snowflake", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
                js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "databricks", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
                js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "dataframe", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
                js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "glue", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
                js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "postgres", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
                js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "oracle", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
                js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "kafka", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
                js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "pubsub", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
                js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "kinesis", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
                js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "trino", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
                js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "local", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
                js2n.Always
            ]
        }
        | doc "Information about the servers."
        | optional,
      servicelevels
        | {
          availability
            | {
              description
                | String
                | doc "An optional string describing the availability service level."
                | optional,
              percentage
                | js2n.string.Matches "^\\d+(\\.\\d+)?%$"
                | doc "An optional string describing the guaranteed uptime in percent (e.g., `99.9%`)"
                | optional,
              ..
            }
            | doc "Availability refers to the promise or guarantee by the service provider about the uptime of the system that provides the data."
            | optional,
          backup
            | {
              cron
                | String
                | doc "An optional cron expression when data will be backed up, e.g., `0 0 * * *`."
                | optional,
              description
                | String
                | doc "An optional string describing the backup service level."
                | optional,
              interval
                | String
                | doc "An optional interval that defines how often data will be backed up, e.g., `daily`."
                | optional,
              recoveryPoint
                | String
                | doc "An optional Recovery Point Objective (RPO) defines the maximum acceptable age of files that must be recovered from backup storage for normal operations to resume after a disaster or data loss event. This essentially measures how much data you can afford to lose, measured in time (e.g., 4 hours, 24 hours)."
                | optional,
              recoveryTime
                | String
                | doc "An optional Recovery Time Objective (RTO) specifies the maximum amount of time allowed to restore data from a backup after a failure or loss event (e.g., 4 hours, 24 hours)."
                | optional,
              ..
            }
            | doc "Backup specifies details about data backup procedures."
            | optional,
          frequency
            | {
              cron
                | String
                | doc "Optional. Only for batch: A cron expression when the pipelines is triggered. E.g., `0 0 * * *`."
                | optional,
              description
                | String
                | doc "An optional string describing the frequency service level."
                | optional,
              interval
                | String
                | doc "Optional. Only for batch: How often the pipeline is triggered, e.g., `daily`."
                | optional,
              type
                | std.enum.TagOrString
                | [| 'manual, 'streaming, 'micro-batching, 'batch |]
                | doc "The method of data processing."
                | optional,
              ..
            }
            | doc "Frequency describes how often data is updated."
            | optional,
          freshness
            | {
              description
                | String
                | doc "An optional string describing the freshness service level."
                | optional,
              threshold
                | String
                | doc "An optional maximum age of the youngest entry. Supported formats: Simple duration (e.g., `24 hours`, `5s`) and ISO 8601 duration (e.g., `PT24H`)."
                | optional,
              timestampField
                | String
                | doc "An optional reference to the field that contains the timestamp that the threshold refers to."
                | optional,
              ..
            }
            | doc "The maximum age of the youngest row in a table."
            | optional,
          latency
            | {
              description
                | String
                | doc "An optional string describing the latency service level."
                | optional,
              processedTimestampField
                | String
                | doc "An optional reference to the field that contains the processing timestamp, which denotes when the data is made available to consumers of this data contract."
                | optional,
              sourceTimestampField
                | String
                | doc "An optional reference to the field that contains the timestamp when the data was provided at the source."
                | optional,
              threshold
                | String
                | doc "An optional maximum duration between the source timestamp and the processed timestamp. Supported formats: Simple duration (e.g., `24 hours`, `5s`) and ISO 8601 duration (e.g, `PT24H`)."
                | optional,
              ..
            }
            | doc "Latency refers to the maximum amount of time from the source to its destination."
            | optional,
          retention
            | {
              description
                | String
                | doc "An optional string describing the retention service level."
                | optional,
              period
                | String
                | doc "An optional period of time, how long data is available. Supported formats: Simple duration (e.g., `1 year`, `30d`) and ISO 8601 duration (e.g, `P1Y`)."
                | optional,
              timestampField
                | String
                | doc "An optional reference to the field that contains the timestamp that the period refers to."
                | optional,
              unlimited
                | Bool
                | doc "An optional indicator that data is kept forever."
                | optional,
              ..
            }
            | doc "Retention covers the period how long data will be available."
            | optional,
          support
            | {
              description
                | String
                | doc "An optional string describing the support service level."
                | optional,
              responseTime
                | String
                | doc "An optional string describing the time it takes for the support team to acknowledge a request. This does not mean the issue will be resolved immediately, but it assures users that their request has been received and will be dealt with."
                | optional,
              time
                | String
                | doc "An optional string describing the times when support will be available for contact such as `24/7` or `business hours only`."
                | optional,
              ..
            }
            | doc "Support describes the times when support will be available for contact."
            | optional,
          ..
        }
        | doc "Specifies the service level agreements for the provided data, including availability, data retention policies, latency requirements, data freshness, update frequency, support availability, and backup policies."
        | optional,
      tags
        | Array String
        | doc "Tags to facilitate searching and filtering."
        | optional,
      terms
        | {
          billing
            | String
            | doc "The billing describes the pricing model for using the data, such as whether it's free, having a monthly fee, or metered pay-per-use."
            | optional,
          limitations
            | String
            | doc "The limitations describe the restrictions on how the data can be used, can be technical or restrictions on what the data may not be used for."
            | optional,
          noticePeriod
            | String
            | doc "The period of time that must be given by either party to terminate or modify a data usage agreement. Uses ISO-8601 period format, e.g., 'P3M' for a period of three months."
            | optional,
          policies
            | Array
              {
                description
                  | String
                  | doc "A description of the policy."
                  | optional,
                type | String | doc "The type of the policy." | optional,
                url | String | doc "A URL to the policy document." | optional,
                ..
              }
            | doc "The limitations describe the restrictions on how the data can be used, can be technical or restrictions on what the data may not be used for."
            | optional,
          usage
            | String
            | doc "The usage describes the way the data is expected to be used. Can contain business and technical information."
            | optional,
          ..
        }
        | doc "The terms and conditions of the data contract."
        | optional,
      ..
    }