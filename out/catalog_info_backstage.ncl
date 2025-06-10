# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "anyOf.0.allOf.0" =
        {
            apiVersion
              | js2n.string.MinLength 1
              | doc "The version of specification format for this particular entity that this is written against.",
            kind
              | js2n.string.MinLength 1
              | doc "The high level entity type being described.",
            metadata
              | {
                annotations
                  | js2n.record.Record
                    {
                      additional = 'Some js2n.Always,
                      patterns =
                        {
                            "^.+$" =
                              std.contract.any_of
                                  [
                                    String,
                                    {
                                      "$json"
                                        | js2n.string.MinLength 1
                                        | optional,
                                      "$text"
                                        | js2n.string.MinLength 1
                                        | optional,
                                      "$yaml"
                                        | js2n.string.MinLength 1
                                        | optional,
                                    }
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                  | doc "Key/value pairs of non-identifying auxiliary information attached to the entity."
                  | optional,
                description
                  | String
                  | doc "A short (typically relatively few words, on one line) description of the entity."
                  | optional,
                etag
                  | js2n.string.MinLength 1
                  | doc "An opaque string that changes for each update operation to any part of the entity, including metadata. This field can not be set by the user at creation time, and the server will reject an attempt to do so. The field will be populated in read operations. The field can (optionally) be specified when performing update or delete operations, and the server will then reject the operation if it does not match the current stored value."
                  | optional,
                generation
                  | std.number.Integer
                  | js2n.number.Minimum 1
                  | doc "A positive nonzero number that indicates the current generation of data for this entity; the value is incremented each time the spec changes. This field can not be set by the user at creation time, and the server will reject an attempt to do so. The field will be populated in read operations."
                  | optional,
                labels
                  | js2n.record.Record
                    {
                      additional = 'Some js2n.Always,
                      patterns = { "^.+$" = String, },
                      properties = {},
                      required = {},
                    }
                  | doc "Key/value pairs of identifying information attached to the entity."
                  | optional,
                links
                  | Array
                    {
                      icon
                        | js2n.string.MinLength 1
                        | doc "A key representing a visual icon to be displayed in the UI."
                        | optional,
                      title
                        | js2n.string.MinLength 1
                        | doc "A user friendly display name for the link."
                        | optional,
                      url
                        | js2n.string.MinLength 1
                        | doc "A url in a standard uri format.",
                      ..
                    }
                  | doc "A list of external hyperlinks related to the entity. Links can provide additional contextual information that may be located outside of Backstage itself. For example, an admin dashboard or external CMS page."
                  | optional,
                name
                  | js2n.string.MinLength 1
                  | doc "The name of the entity. Must be unique within the catalog at any given point in time, for any given namespace + kind pair.",
                namespace
                  | js2n.string.MinLength 1
                  | doc "The namespace that the entity belongs to."
                  | optional,
                tags
                  | Array (js2n.string.MinLength 1)
                  | doc "A list of single-valued strings, to for example classify catalog entities in various ways."
                  | optional,
                title
                  | js2n.string.MinLength 1
                  | doc "A display name of the entity, to be presented in user interfaces instead of the name property, when available."
                  | optional,
                uid
                  | js2n.string.MinLength 1
                  | doc "A globally unique ID for the entity. This field can not be set by the user at creation time, and the server will reject an attempt to do so. The field will be populated in read operations. The field can (optionally) be specified when performing update or delete operations, but the server is free to reject requests that do so in such a way that it breaks semantics."
                  | optional,
                ..
              }
              | doc "Metadata fields common to all versions/kinds of entity.",
            relations
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.entity.properties.relations.items",
                    { _ | Dyn }
                  ]
              )
              | doc "The relations that this entity has with other entities."
              | optional,
            spec
              | { _ | Dyn }
              | doc "The specification data describing the entity itself."
              | optional,
            status
              | refs."definitions.entity.properties.status"
              | { _ | Dyn }
              | optional,
          },
      "definitions.common.definitions.relation.properties.target" =
        {
            kind
              | js2n.string.MinLength 1
              | doc "The kind field of the entity.",
            name
              | js2n.string.MinLength 1
              | doc "The metadata.name field of the entity.",
            namespace
              | js2n.string.MinLength 1
              | doc "The metadata.namespace field of the entity.",
          },
      "definitions.common.definitions.status.properties.items.items" =
        {
            error
              | refs."definitions.common.definitions.statusItem.properties.error"
              | { _ | Dyn }
              | doc "An optional serialized error object related to the status."
              | optional,
            level
              | refs."definitions.common.definitions.statusItem.properties.level"
              | String
              | doc "The status level / severity of the status item.",
            message
              | String
              | doc "A brief message describing the status, intended for human consumption.",
            type | js2n.string.MinLength 1,
            ..
          },
      "definitions.common.definitions.statusItem.properties.error" =
        {
            code
              | String
              | doc "An error code associated with the error"
              | optional,
            message | String | doc "The message of the error",
            name | js2n.string.MinLength 1 | doc "The type name of the error",
            stack | String | doc "An error stack trace" | optional,
            ..
          },
      "definitions.common.definitions.statusItem.properties.level" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'error, 'warning, 'info |] ],
      "definitions.entity.properties.relations.items" =
        {
            target
              | refs."definitions.common.definitions.relation.properties.target"
              | { _ | Dyn },
            type
              | js2n.string.MinLength 1
              | js2n.string.Matches "^\\w+$"
              | doc "The type of relation.",
          },
      "definitions.entity.properties.status" =
        {
            items
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.common.definitions.status.properties.items.items",
                    { _ | Dyn }
                  ]
              )
              | optional,
            ..
          },
    }
    in
  std.contract.any_of
      [
        std.contract.Sequence
          [
            js2n.record.Record
              {
                additional = 'None,
                patterns = {},
                properties =
                  {
                      apiVersion = js2n.string.MinLength 1,
                      kind = js2n.string.MinLength 1,
                      metadata =
                        js2n.record.Record
                            {
                              additional = 'Some js2n.Always,
                              patterns = {},
                              properties =
                                {
                                    annotations =
                                      js2n.record.Record
                                          {
                                            additional = 'Some js2n.Always,
                                            patterns =
                                              {
                                                  "^.+$" =
                                                    std.contract.any_of
                                                        [
                                                          String,
                                                          js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    "$json" =
                                                                      js2n.string.MinLength
                                                                          1,
                                                                    "$text" =
                                                                      js2n.string.MinLength
                                                                          1,
                                                                    "$yaml" =
                                                                      js2n.string.MinLength
                                                                          1,
                                                                  },
                                                              required = {},
                                                            }
                                                        ],
                                                },
                                            properties = {},
                                            required = {},
                                          },
                                    description = String,
                                    etag = js2n.string.MinLength 1,
                                    generation =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Minimum 1
                                          ],
                                    labels =
                                      js2n.record.Record
                                          {
                                            additional = 'Some js2n.Always,
                                            patterns = { "^.+$" = String, },
                                            properties = {},
                                            required = {},
                                          },
                                    links =
                                      js2n.array.ArrayOf
                                          (js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    icon =
                                                      js2n.string.MinLength 1,
                                                    title =
                                                      js2n.string.MinLength 1,
                                                    url =
                                                      js2n.string.MinLength 1,
                                                  },
                                              required = { url = true, },
                                            }),
                                    name = js2n.string.MinLength 1,
                                    namespace = js2n.string.MinLength 1,
                                    tags =
                                      js2n.array.ArrayOf
                                          (js2n.string.MinLength 1),
                                    title = js2n.string.MinLength 1,
                                    uid = js2n.string.MinLength 1,
                                  },
                              required = { name = true, },
                            },
                      relations =
                        js2n.array.ArrayOf
                            refs."definitions.entity.properties.relations.items",
                      spec = { _ | Dyn },
                      status = refs."definitions.entity.properties.status",
                    },
                required =
                  {
                      apiVersion = true,
                      kind = true,
                      metadata = true,
                      spec = true,
                    },
              },
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      apiVersion =
                        std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [|
                                '"backstage.io/v1beta1",
                                '"backstage.io/v1alpha1"
                              |]
                            ],
                      kind =
                        std.contract.Sequence
                            [ std.enum.TagOrString, [| 'API |] ],
                      spec =
                        js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    definition =
                                      std.contract.any_of
                                          [
                                            js2n.string.MinLength 1,
                                            std.contract.Sequence
                                              [
                                                js2n.record.MaxProperties 1,
                                                js2n.record.MinProperties 1,
                                                js2n.record.Record
                                                  {
                                                    additional = 'Some Dyn,
                                                    patterns = {},
                                                    properties =
                                                      {
                                                          "$json" =
                                                            js2n.string.MinLength
                                                                1,
                                                          "$text" =
                                                            js2n.string.MinLength
                                                                1,
                                                          "$yaml" =
                                                            js2n.string.MinLength
                                                                1,
                                                        },
                                                    required = {},
                                                  }
                                              ]
                                          ],
                                    lifecycle = js2n.string.MinLength 1,
                                    owner = js2n.string.MinLength 1,
                                    system = js2n.string.MinLength 1,
                                    type = js2n.string.MinLength 1,
                                  },
                              required =
                                {
                                    definition = true,
                                    lifecycle = true,
                                    owner = true,
                                    type = true,
                                  },
                            },
                    },
                required = { apiVersion = true, kind = true, spec = true, },
              }
          ],
        std.contract.Sequence
          [
            refs."anyOf.0.allOf.0",
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      apiVersion =
                        std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [|
                                '"backstage.io/v1beta1",
                                '"backstage.io/v1alpha1"
                              |]
                            ],
                      kind =
                        std.contract.Sequence
                            [ std.enum.TagOrString, [| 'Component |] ],
                      spec =
                        js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    consumesApis =
                                      js2n.array.ArrayOf
                                          (js2n.string.MinLength 1),
                                    dependsOn =
                                      js2n.array.ArrayOf
                                          (js2n.string.MinLength 1),
                                    lifecycle = js2n.string.MinLength 1,
                                    owner = js2n.string.MinLength 1,
                                    providesApis =
                                      js2n.array.ArrayOf
                                          (js2n.string.MinLength 1),
                                    subcomponentOf = js2n.string.MinLength 1,
                                    system = js2n.string.MinLength 1,
                                    type = js2n.string.MinLength 1,
                                  },
                              required =
                                {
                                    lifecycle = true,
                                    owner = true,
                                    type = true,
                                  },
                            },
                    },
                required = { spec = true, },
              }
          ],
        std.contract.Sequence
          [
            refs."anyOf.0.allOf.0",
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      apiVersion =
                        std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [|
                                '"backstage.io/v1beta1",
                                '"backstage.io/v1alpha1"
                              |]
                            ],
                      kind =
                        std.contract.Sequence
                            [ std.enum.TagOrString, [| 'Domain |] ],
                      spec =
                        js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties = { owner = js2n.string.MinLength 1, },
                              required = { owner = true, },
                            },
                    },
                required = { spec = true, },
              }
          ],
        std.contract.Sequence
          [
            refs."anyOf.0.allOf.0",
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      apiVersion =
                        std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [|
                                '"backstage.io/v1beta1",
                                '"backstage.io/v1alpha1"
                              |]
                            ],
                      kind =
                        std.contract.Sequence
                            [ std.enum.TagOrString, [| 'Group |] ],
                      spec =
                        js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    children =
                                      js2n.array.ArrayOf
                                          (js2n.string.MinLength 1),
                                    members =
                                      js2n.array.ArrayOf
                                          (js2n.string.MinLength 1),
                                    parent = js2n.string.MinLength 1,
                                    profile =
                                      js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  displayName =
                                                    js2n.string.MinLength 1,
                                                  email =
                                                    js2n.string.MinLength 1,
                                                  picture =
                                                    js2n.string.MinLength 1,
                                                },
                                            required = {},
                                          },
                                    type = js2n.string.MinLength 1,
                                  },
                              required = { children = true, type = true, },
                            },
                    },
                required = { spec = true, },
              }
          ],
        std.contract.Sequence
          [
            refs."anyOf.0.allOf.0",
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      apiVersion =
                        std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [|
                                '"backstage.io/v1beta1",
                                '"backstage.io/v1alpha1"
                              |]
                            ],
                      kind =
                        std.contract.Sequence
                            [ std.enum.TagOrString, [| 'Location |] ],
                      spec =
                        js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    target = js2n.string.MinLength 1,
                                    targets =
                                      js2n.array.ArrayOf
                                          (js2n.string.MinLength 1),
                                    type = js2n.string.MinLength 1,
                                  },
                              required = {},
                            },
                    },
                required = { spec = true, },
              }
          ],
        std.contract.Sequence
          [
            refs."anyOf.0.allOf.0",
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      apiVersion =
                        std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [|
                                '"backstage.io/v1beta1",
                                '"backstage.io/v1alpha1"
                              |]
                            ],
                      kind =
                        std.contract.Sequence
                            [ std.enum.TagOrString, [| 'Resource |] ],
                      spec =
                        js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    dependsOn =
                                      js2n.array.ArrayOf
                                          (js2n.string.MinLength 1),
                                    owner = js2n.string.MinLength 1,
                                    system = js2n.string.MinLength 1,
                                    type = js2n.string.MinLength 1,
                                  },
                              required = { owner = true, type = true, },
                            },
                    },
                required = { spec = true, },
              }
          ],
        std.contract.Sequence
          [
            refs."anyOf.0.allOf.0",
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      apiVersion =
                        std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [|
                                '"backstage.io/v1beta1",
                                '"backstage.io/v1alpha1"
                              |]
                            ],
                      kind =
                        std.contract.Sequence
                            [ std.enum.TagOrString, [| 'System |] ],
                      spec =
                        js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    domain = js2n.string.MinLength 1,
                                    owner = js2n.string.MinLength 1,
                                  },
                              required = { owner = true, },
                            },
                    },
                required = { spec = true, },
              }
          ],
        std.contract.Sequence
          [
            refs."anyOf.0.allOf.0",
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      apiVersion =
                        std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [| '"backstage.io/v1beta2" |]
                            ],
                      kind =
                        std.contract.Sequence
                            [ std.enum.TagOrString, [| 'Template |] ],
                      spec =
                        js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    output =
                                      js2n.record.Record
                                          {
                                            additional = 'Some String,
                                            patterns = {},
                                            properties =
                                              {
                                                  links =
                                                    js2n.array.ArrayOf
                                                        (js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some Dyn,
                                                            patterns = {},
                                                            properties =
                                                              {
                                                                  entityRef =
                                                                    js2n.string.MinLength
                                                                        1,
                                                                  icon =
                                                                    js2n.string.MinLength
                                                                        1,
                                                                  title =
                                                                    js2n.string.MinLength
                                                                        1,
                                                                  url =
                                                                    js2n.string.MinLength
                                                                        1,
                                                                },
                                                            required = {},
                                                          }),
                                                },
                                            required = {},
                                          },
                                    owner = js2n.string.MinLength 1,
                                    parameters =
                                      std.contract.any_of
                                          [
                                            { _ | Dyn },
                                            js2n.array.ArrayOf ({ _ | Dyn })
                                          ],
                                    steps =
                                      js2n.array.ArrayOf
                                          (js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    action = String,
                                                    id = String,
                                                    "if" =
                                                      std.contract.any_of
                                                          [ Bool, String ],
                                                    input = { _ | Dyn },
                                                    name = String,
                                                  },
                                              required = { action = true, },
                                            }),
                                    type = js2n.string.MinLength 1,
                                  },
                              required = { steps = true, type = true, },
                            },
                    },
                required = { spec = true, },
              }
          ],
        std.contract.Sequence
          [
            refs."anyOf.0.allOf.0",
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      apiVersion =
                        std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [| '"scaffolder.backstage.io/v1beta3" |]
                            ],
                      kind =
                        std.contract.Sequence
                            [ std.enum.TagOrString, [| 'Template |] ],
                      spec =
                        js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    EXPERIMENTAL_formDecorators =
                                      js2n.array.ArrayOf
                                          (js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    id = String,
                                                    input = { _ | Dyn },
                                                  },
                                              required = {},
                                            }),
                                    EXPERIMENTAL_recovery =
                                      js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  EXPERIMENTAL_strategy =
                                                    String,
                                                },
                                            required = {},
                                          },
                                    output =
                                      js2n.record.Record
                                          {
                                            additional = 'Some String,
                                            patterns = {},
                                            properties =
                                              {
                                                  links =
                                                    js2n.array.ArrayOf
                                                        (js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some Dyn,
                                                            patterns = {},
                                                            properties =
                                                              {
                                                                  entityRef =
                                                                    js2n.string.MinLength
                                                                        1,
                                                                  icon =
                                                                    js2n.string.MinLength
                                                                        1,
                                                                  title =
                                                                    js2n.string.MinLength
                                                                        1,
                                                                  url =
                                                                    js2n.string.MinLength
                                                                        1,
                                                                },
                                                            required = {},
                                                          }),
                                                  text =
                                                    js2n.array.ArrayOf
                                                        (js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some Dyn,
                                                            patterns = {},
                                                            properties =
                                                              {
                                                                  content =
                                                                    String,
                                                                  icon =
                                                                    js2n.string.MinLength
                                                                        1,
                                                                  title =
                                                                    js2n.string.MinLength
                                                                        1,
                                                                },
                                                            required = {},
                                                          }),
                                                },
                                            required = {},
                                          },
                                    owner = js2n.string.MinLength 1,
                                    parameters =
                                      std.contract.any_of
                                          [
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      "backstage:permissions" =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'Some Dyn,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    tags =
                                                                      js2n.array.ArrayOf
                                                                          String,
                                                                  },
                                                              required = {},
                                                            },
                                                    },
                                                required = {},
                                              },
                                            js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'Some Dyn,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        "backstage:permissions" =
                                                          js2n.record.Record
                                                              {
                                                                additional =
                                                                  'Some Dyn,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      tags =
                                                                        js2n.array.ArrayOf
                                                                            String,
                                                                    },
                                                                required = {},
                                                              },
                                                      },
                                                  required = {},
                                                })
                                          ],
                                    presentation =
                                      js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  buttonLabels =
                                                    js2n.record.Record
                                                        {
                                                          additional =
                                                            'Some Dyn,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                backButtonText =
                                                                  String,
                                                                createButtonText =
                                                                  String,
                                                                reviewButtonText =
                                                                  String,
                                                              },
                                                          required = {},
                                                        },
                                                },
                                            required = {},
                                          },
                                    steps =
                                      js2n.array.ArrayOf
                                          (js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    action = String,
                                                    "backstage:permissions" =
                                                      js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some Dyn,
                                                            patterns = {},
                                                            properties =
                                                              {
                                                                  tags =
                                                                    js2n.array.ArrayOf
                                                                        String,
                                                                },
                                                            required = {},
                                                          },
                                                    id = String,
                                                    "if" =
                                                      std.contract.any_of
                                                          [ Bool, String ],
                                                    input = { _ | Dyn },
                                                    name = String,
                                                  },
                                              required = { action = true, },
                                            }),
                                    type = js2n.string.MinLength 1,
                                  },
                              required = { steps = true, type = true, },
                            },
                    },
                required = { spec = true, },
              }
          ],
        std.contract.Sequence
          [
            refs."anyOf.0.allOf.0",
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      apiVersion =
                        std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [|
                                '"backstage.io/v1beta1",
                                '"backstage.io/v1alpha1"
                              |]
                            ],
                      kind =
                        std.contract.Sequence
                            [ std.enum.TagOrString, [| 'User |] ],
                      spec =
                        js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    memberOf =
                                      js2n.array.ArrayOf
                                          (js2n.string.MinLength 1),
                                    profile =
                                      js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  displayName =
                                                    js2n.string.MinLength 1,
                                                  email =
                                                    js2n.string.MinLength 1,
                                                  picture =
                                                    js2n.string.MinLength 1,
                                                },
                                            required = {},
                                          },
                                  },
                              required = { memberOf = true, },
                            },
                    },
                required = { spec = true, },
              }
          ]
      ]