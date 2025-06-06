# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      apiVersion
        | std.enum.TagOrString
        | [| '"v2.2.0", '"v2.2.1", '"v2.2.2", '"v3.0.0", '"v3.0.1", '"v3.0.2" |]
        | doc "Version of the standard used to build data contract. Default value is v3.0.2.",
      authoritativeDefinitions
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      contractCreatedTs
        | String
        | doc "Timestamp in UTC of when the data contract was created."
        | optional,
      customProperties
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      dataProduct | String | doc "The name of the data product." | optional,
      description
        | {
          authoritativeDefinitions
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          customProperties
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          limitations | String | doc "Limitations of the dataset." | optional,
          purpose | String | doc "Purpose of the dataset." | optional,
          usage | String | doc "Intended usage of the dataset." | optional,
          ..
        }
        | doc "High level description of the dataset."
        | optional,
      domain | String | doc "Name of the logical data domain." | optional,
      id
        | String
        | doc "A unique identifier used to reduce the risk of dataset name collisions, such as a UUID.",
      kind
        | std.enum.TagOrString
        | [| 'DataContract |]
        | doc "The kind of file this is. Valid value is `DataContract`.",
      name | String | doc "Name of the data contract." | optional,
      price
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      roles
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "A list of roles that will provide user access to the dataset."
        | optional,
      schema
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "A list of elements within the schema to be cataloged."
        | optional,
      servers
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "List of servers where the datasets reside."
        | optional,
      slaDefaultElement
        | String
        | doc "Element (using the element path notation) to do the checks on."
        | optional,
      slaProperties
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "A list of key/value pairs for SLA specific properties. There is no limit on the type of properties (more details to come)."
        | optional,
      status | String | doc "Current status of the dataset.",
      support
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      tags
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      team
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | optional,
      tenant
        | String
        | doc "Indicates the property the data is primarily associated with. Value is case insensitive."
        | optional,
      version | String | doc "Current version of the data contract.",
    }