# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      custom
        | { _ | String }
        | doc "Custom fields can be used to add additional information to the data product."
        | optional,
      dataProductSpecification
        | std.enum.TagOrString
        | [| '"0.0.1" |]
        | doc "Specifies the Data Product Specification being used."
        | optional,
      id
        | String
        | doc "An organizational unique technical identifier for this data product, such as an UUID, URN, string, number. Format must be a valid path parameter for GET and DELETE requests, so no URI or '/' allowed.",
      info
        | {
          archetype
            | String
            | doc "The domain data archetype of the data product, such as consumer-aligned, aggregate, source-aligned."
            | optional,
          description | String | optional,
          domain | String | doc "The technical id of the domain" | optional,
          maturity
            | String
            | doc "The maturity level of the data product."
            | optional,
          owner
            | String
            | doc "The technical id of the team that owns the data product",
          status | String | optional,
          title | String | doc "The display name of this data product",
          ..
        }
        | doc "Information about the data product",
      inputPorts
        | Array
          {
            custom
              | { _ | String }
              | doc "Custom fields can be used to add additional information to the input port."
              | optional,
            description
              | String
              | doc "The description for this input port."
              | optional,
            id
              | String
              | doc "A technical identifier for this input port, such as an UUID, URN, string, number.",
            links
              | { _ | String }
              | doc "Links are used to reference external resources, such as schemas or the dataset in a data catalog. You can add any links."
              | optional,
            location
              | String
              | doc "The location with the actual data"
              | optional,
            name | String | doc "The display name for this input port.",
            sourceSystemId
              | String
              | doc "A technical identifier for the source system connected to this input port",
            tags
              | Array String
              | doc "Tags are used to categorize input ports."
              | optional,
            type
              | String
              | doc "The technical type of the output port"
              | optional,
            ..
          }
        | optional,
      links
        | { _ | String }
        | doc "Links are used to reference external resources, such as schemas or the dataset in a data catalog. You can add any links."
        | optional,
      outputPorts
        | Array
          {
            autoApprove
              | Bool
              | doc "Automatically approve requested data usage agreements towards this output port. You might want to use this for public or internal data that is not sensitive."
              | optional,
            containsPii
              | Bool
              | doc "Flag, if this output port contains personally identifiable information (PII)"
              | optional,
            custom
              | { _ | String }
              | doc "Custom fields can be used to add additional information to the output port."
              | optional,
            dataContractId
              | String
              | doc "The technical identifier of the data contract that is implemented by this output port"
              | optional,
            description
              | String
              | doc "The description for this output port."
              | optional,
            id
              | String
              | doc "A technical identifier for this output port, such as an UUID, URN, string, number.",
            links
              | { _ | String }
              | doc "Links are used to reference external resources, such as schemas or the dataset in a data catalog. You can add any links."
              | optional,
            location
              | String
              | doc "DEPRECATED. Use the appropriate fields in server instead."
              | optional,
            name | String | doc "The display name for this output port.",
            server
              | {
                account
                  | String
                  | doc "The account name (snowflake)"
                  | optional,
                additionalProperties | String | optional,
                database
                  | String
                  | doc "The database name (snowflake,postgres)"
                  | optional,
                dataset | String | doc "The dataset name (bigquery)" | optional,
                delimiter | String | doc "The delimiter (s3)" | optional,
                format
                  | String
                  | doc "The format of the data, e.g., csv, json, parquet, delta (s3)"
                  | optional,
                host | String | doc "The host name (kafka)" | optional,
                location | String | doc "The location url (s3)" | optional,
                project | String | doc "The project name (bigquery)" | optional,
                schema
                  | String
                  | doc "The schema name (snowflake,postgres)"
                  | optional,
                share | String | doc "The share name (databricks)" | optional,
                table | String | doc "The table name (postgres)" | optional,
                topic | String | doc "The topic name (kafka)" | optional,
                view | String | doc "The view name (postgres)" | optional,
                ..
              }
              | doc "The server contains all connection details to find the actual data. Depending on the output port type, this might be different attributes. The main ones are listed explicitly, but feel free to add your own server info."
              | optional,
            status
              | String
              | doc "The status of the output port implementation. The allowed status values might be customized for your organization."
              | optional,
            tags
              | Array String
              | doc "Tags are used to categorize output ports."
              | optional,
            type
              | String
              | doc "The technical type of the output port"
              | optional,
            ..
          }
        | optional,
      tags
        | Array String
        | doc "Tags are used to categorize data products."
        | optional,
      ..
    }