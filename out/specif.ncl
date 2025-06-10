# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.SpecifAlternativeId" =
        {
            id
              | refs."definitions.SpecifId"
              | String
              | doc "A string with a valid identifier of a model-element",
            project
              | refs."definitions.SpecifId"
              | String
              | doc "A string with a valid project identifier in case the identifier is not globally unique."
              | optional,
            revision
              | refs."definitions.SpecifRevision"
              | String
              | doc "If missing, the latest revision is implied."
              | optional,
          },
      "definitions.SpecifAlternativeIds" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.SpecifAlternativeId", { _ | Dyn } ]
              )
            ],
      "definitions.SpecifCreatedBy" =
        {
            email | String,
            familyName | String | optional,
            givenName | String | optional,
            org | refs."definitions.SpecifOrg" | { _ | Dyn } | optional,
            ..
          },
      "definitions.SpecifDataType" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        changedAt =
                          std.contract.Sequence
                              [ refs."definitions.SpecifDateTime", String ],
                        changedBy = String,
                        description =
                          std.contract.Sequence
                              [
                                refs."definitions.SpecifMultiLanguageText",
                                Array Dyn
                              ],
                        id =
                          std.contract.Sequence
                              [ refs."definitions.SpecifId", String ],
                        replaces =
                          std.contract.Sequence
                              [ refs."definitions.SpecifReplaces", Array Dyn ],
                        revision =
                          std.contract.Sequence
                              [ refs."definitions.SpecifRevision", String ],
                        title =
                          std.contract.Sequence
                              [ refs."definitions.SpecifText", String ],
                        type =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"xs:boolean" |] ],
                      },
                  required =
                    { changedAt = true, id = true, title = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        changedAt =
                          std.contract.Sequence
                              [ refs."definitions.SpecifDateTime", String ],
                        changedBy = String,
                        description =
                          std.contract.Sequence
                              [
                                refs."definitions.SpecifMultiLanguageText",
                                Array Dyn
                              ],
                        enumeration =
                          std.contract.Sequence
                              [
                                refs."definitions.SpecifEnumeratedValues",
                                Array Dyn
                              ],
                        id =
                          std.contract.Sequence
                              [ refs."definitions.SpecifId", String ],
                        multiple = Bool,
                        replaces =
                          std.contract.Sequence
                              [ refs."definitions.SpecifReplaces", Array Dyn ],
                        revision =
                          std.contract.Sequence
                              [ refs."definitions.SpecifRevision", String ],
                        title =
                          std.contract.Sequence
                              [ refs."definitions.SpecifText", String ],
                        type =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  '"xs:anyURI",
                                  '"xs:duration",
                                  '"xs:dateTime"
                                |]
                              ],
                      },
                  required =
                    { changedAt = true, id = true, title = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        changedAt =
                          std.contract.Sequence
                              [ refs."definitions.SpecifDateTime", String ],
                        changedBy = String,
                        description =
                          std.contract.Sequence
                              [
                                refs."definitions.SpecifMultiLanguageText",
                                Array Dyn
                              ],
                        enumeration =
                          std.contract.Sequence
                              [
                                refs."definitions.SpecifEnumeratedValues",
                                Array Dyn
                              ],
                        id =
                          std.contract.Sequence
                              [ refs."definitions.SpecifId", String ],
                        maxInclusive = Number,
                        minInclusive = Number,
                        multiple = Bool,
                        replaces =
                          std.contract.Sequence
                              [ refs."definitions.SpecifReplaces", Array Dyn ],
                        revision =
                          std.contract.Sequence
                              [ refs."definitions.SpecifRevision", String ],
                        title =
                          std.contract.Sequence
                              [ refs."definitions.SpecifText", String ],
                        type =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"xs:integer" |] ],
                      },
                  required =
                    { changedAt = true, id = true, title = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        changedAt =
                          std.contract.Sequence
                              [ refs."definitions.SpecifDateTime", String ],
                        changedBy = String,
                        description =
                          std.contract.Sequence
                              [
                                refs."definitions.SpecifMultiLanguageText",
                                Array Dyn
                              ],
                        enumeration =
                          std.contract.Sequence
                              [
                                refs."definitions.SpecifEnumeratedValues",
                                Array Dyn
                              ],
                        fractionDigits =
                          std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 1 ],
                        id =
                          std.contract.Sequence
                              [ refs."definitions.SpecifId", String ],
                        maxInclusive = Number,
                        minInclusive = Number,
                        multiple = Bool,
                        replaces =
                          std.contract.Sequence
                              [ refs."definitions.SpecifReplaces", Array Dyn ],
                        revision =
                          std.contract.Sequence
                              [ refs."definitions.SpecifRevision", String ],
                        title =
                          std.contract.Sequence
                              [ refs."definitions.SpecifText", String ],
                        type =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"xs:double" |] ],
                      },
                  required =
                    { changedAt = true, id = true, title = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        changedAt =
                          std.contract.Sequence
                              [ refs."definitions.SpecifDateTime", String ],
                        changedBy = String,
                        description =
                          std.contract.Sequence
                              [
                                refs."definitions.SpecifMultiLanguageText",
                                Array Dyn
                              ],
                        enumeration =
                          std.contract.Sequence
                              [
                                refs."definitions.SpecifEnumeratedValues",
                                Array Dyn
                              ],
                        id =
                          std.contract.Sequence
                              [ refs."definitions.SpecifId", String ],
                        maxLength =
                          std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 0 ],
                        multiple = Bool,
                        replaces =
                          std.contract.Sequence
                              [ refs."definitions.SpecifReplaces", Array Dyn ],
                        revision =
                          std.contract.Sequence
                              [ refs."definitions.SpecifRevision", String ],
                        title =
                          std.contract.Sequence
                              [ refs."definitions.SpecifText", String ],
                        type =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"xs:string" |] ],
                      },
                  required =
                    { changedAt = true, id = true, title = true, type = true, },
                }
            ],
      "definitions.SpecifDateTime" = String,
      "definitions.SpecifEnumeratedValue" =
        {
            id | refs."definitions.SpecifId" | String,
            value | refs."definitions.SpecifValue",
            ..
          },
      "definitions.SpecifEnumeratedValues" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.SpecifEnumeratedValue", { _ | Dyn } ]
              )
            ],
      "definitions.SpecifFile" =
        {
            changedAt | refs."definitions.SpecifDateTime" | String,
            changedBy | String | optional,
            description
              | refs."definitions.SpecifMultiLanguageText"
              | Array Dyn
              | optional,
            id | refs."definitions.SpecifId" | String,
            replaces | refs."definitions.SpecifReplaces" | Array Dyn | optional,
            revision | refs."definitions.SpecifRevision" | String | optional,
            title | String | doc "The file's name.",
            type
              | String
              | doc "The file's media type (formerly MIME-type) according to https://www.iana.org/assignments/media-types/media-types.xhtml.",
            url
              | String
              | doc "An absolute or relative URL to the file; will be of format 'uri-reference' in future. If missing, the title applies."
              | optional,
            ..
          },
      "definitions.SpecifIcon" = String,
      "definitions.SpecifId" =
        js2n.string.Matches "^[_a-zA-Z]{1}[_a-zA-Z0-9.-]*$",
      "definitions.SpecifInstantiation" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'user, 'auto |] ]
              )
            ],
      "definitions.SpecifKey" =
        {
            id | refs."definitions.SpecifId" | String,
            revision
              | refs."definitions.SpecifRevision"
              | String
              | doc "If missing, the latest revision is implied."
              | optional,
          },
      "definitions.SpecifKeys" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.SpecifKey", { _ | Dyn } ]
              )
            ],
      "definitions.SpecifMultiLanguageText" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array
                {
                  format
                    | refs."definitions.SpecifTextFormat"
                    | String
                    | doc "By default, the format is assumed 'plain'."
                    | optional,
                  language
                    | String
                    | doc "An IETF language tag such as 'en', 'en-US, 'fr' or 'de'."
                    | optional,
                  text | String | doc "A string containing some text.",
                }
            ],
      "definitions.SpecifNode" =
        {
            changedAt | refs."definitions.SpecifDateTime" | String,
            changedBy | String | optional,
            description
              | refs."definitions.SpecifMultiLanguageText"
              | Array Dyn
              | optional,
            id | refs."definitions.SpecifId" | String,
            nodes
              | refs."definitions.SpecifNodes"
              | Array Dyn
              | doc "The next hierarchy level."
              | optional,
            replaces | refs."definitions.SpecifReplaces" | Array Dyn | optional,
            resource
              | refs."definitions.SpecifKey"
              | { _ | Dyn }
              | doc "The pointer to the resource to be displayed at this position.",
            revision | refs."definitions.SpecifRevision" | String | optional,
            title
              | refs."definitions.SpecifMultiLanguageText"
              | Array Dyn
              | doc "The node's label; if missing, the value of the referenced resource's title property is applied."
              | optional,
            ..
          },
      "definitions.SpecifNodes" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.SpecifNode", { _ | Dyn } ]
              )
            ],
      "definitions.SpecifOrg" = { organizationName | String, .. },
      "definitions.SpecifProperties" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.SpecifProperty", { _ | Dyn } ]
              )
            ],
      "definitions.SpecifProperty" =
        {
            class
              | refs."definitions.SpecifKey"
              | { _ | Dyn }
              | doc "Must be a member of 'propertyClasses'. In addition, it must be listed in the propertyClasses of the respective resource's or statement's (or any of it's parent's) class.",
            values | refs."definitions.SpecifValues" | Array Dyn,
            ..
          },
      "definitions.SpecifPropertyClass" =
        {
            changedAt | refs."definitions.SpecifDateTime" | String,
            changedBy | String | optional,
            dataType
              | refs."definitions.SpecifKey"
              | { _ | Dyn }
              | doc "Must be a member of dataTypes.",
            description
              | refs."definitions.SpecifMultiLanguageText"
              | Array Dyn
              | optional,
            format
              | refs."definitions.SpecifTextFormat"
              | String
              | doc "The default format of a property's text value. Is superseded by a text value's format attribute."
              | optional,
            id | refs."definitions.SpecifId" | String,
            multiple
              | Bool
              | doc "Optional use by all propertyClasses. Indicates whether multiple values can be given. If omitted, the 'multiple' property of the dataType applies; by default the value is 'false'."
              | optional,
            replaces | refs."definitions.SpecifReplaces" | Array Dyn | optional,
            revision | refs."definitions.SpecifRevision" | String | optional,
            title | refs."definitions.SpecifText" | String,
            unit
              | String
              | doc "The unit of a property's numeric value; preferably an SI unit symbol such as 'm^3/kg' (Système international (d'unités)) or a currency symbol."
              | optional,
            values
              | refs."definitions.SpecifValues"
              | Array Dyn
              | doc "An optional list of default values in case the instantiated resource's or statement's property is missing."
              | optional,
          },
      "definitions.SpecifReplaces" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 2,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.SpecifRevision", String ]
              )
            ],
      "definitions.SpecifResource" =
        {
            alternativeIds
              | refs."definitions.SpecifAlternativeIds"
              | Array Dyn
              | optional,
            changedAt | refs."definitions.SpecifDateTime" | String,
            changedBy | String | optional,
            class
              | refs."definitions.SpecifKey"
              | { _ | Dyn }
              | doc "Must be a member of resourceClasses.",
            id | refs."definitions.SpecifId" | String,
            language
              | String
              | doc "An IETF language tag such as 'en', 'en-US, 'fr' or 'de' showing the used language of the resource. Is superseded by a property's language value."
              | optional,
            properties | refs."definitions.SpecifProperties" | Array Dyn,
            replaces | refs."definitions.SpecifReplaces" | Array Dyn | optional,
            revision | refs."definitions.SpecifRevision" | String | optional,
            ..
          },
      "definitions.SpecifResourceClass" =
        {
            changedAt | refs."definitions.SpecifDateTime" | String,
            changedBy | String | optional,
            description
              | refs."definitions.SpecifMultiLanguageText"
              | Array Dyn
              | optional,
            extends
              | refs."definitions.SpecifKey"
              | { _ | Dyn }
              | doc "Must be a member of resourceClasses."
              | optional,
            icon | refs."definitions.SpecifIcon" | String | optional,
            id | refs."definitions.SpecifId" | String,
            instantiation
              | refs."definitions.SpecifInstantiation"
              | Array Dyn
              | optional,
            isHeading | Bool | optional,
            propertyClasses
              | refs."definitions.SpecifKeys"
              | Array Dyn
              | doc "A list of keys referencing propertyClasses; a base resourceClass must have at least one propertyClass, whereas an extending class may have none.",
            replaces | refs."definitions.SpecifReplaces" | Array Dyn | optional,
            revision | refs."definitions.SpecifRevision" | String | optional,
            title | refs."definitions.SpecifText" | String,
          },
      "definitions.SpecifRevision" =
        js2n.string.Matches "^(?:[0-9a-zA-Z]+[.:,;/-])*[0-9a-zA-Z]+$",
      "definitions.SpecifRights" = { title | String, url | String, .. },
      "definitions.SpecifStatement" =
        {
            alternativeIds
              | refs."definitions.SpecifAlternativeIds"
              | Array Dyn
              | optional,
            changedAt | refs."definitions.SpecifDateTime" | String,
            changedBy | String | optional,
            class
              | refs."definitions.SpecifKey"
              | { _ | Dyn }
              | doc "Must be a member of statementClasses.",
            id | refs."definitions.SpecifId" | String,
            language
              | String
              | doc "An IETF language tag such as 'en', 'en-US, 'fr' or 'de' showing the used language of the statement. Is superseded by a property's language value."
              | optional,
            object
              | refs."definitions.SpecifKey"
              | { _ | Dyn }
              | doc "Must be a member of resources or statements.",
            properties
              | refs."definitions.SpecifProperties"
              | Array Dyn
              | doc "If there is no title property, the statementClass' title applies."
              | optional,
            replaces | refs."definitions.SpecifReplaces" | Array Dyn | optional,
            revision | refs."definitions.SpecifRevision" | String | optional,
            subject
              | refs."definitions.SpecifKey"
              | { _ | Dyn }
              | doc "Must be a member of resources or statements.",
            ..
          },
      "definitions.SpecifStatementClass" =
        {
            changedAt | refs."definitions.SpecifDateTime" | String,
            changedBy | String | optional,
            description
              | refs."definitions.SpecifMultiLanguageText"
              | Array Dyn
              | optional,
            extends
              | refs."definitions.SpecifKey"
              | { _ | Dyn }
              | doc "Must be a member of statementClasses."
              | optional,
            icon | refs."definitions.SpecifIcon" | String | optional,
            id | refs."definitions.SpecifId" | String,
            instantiation
              | refs."definitions.SpecifInstantiation"
              | Array Dyn
              | optional,
            isUndirected
              | Bool
              | doc "Indicates that an instance's subject and object are equivalent and can be exchanged without change in meaning."
              | optional,
            objectClasses
              | refs."definitions.SpecifKeys"
              | Array Dyn
              | doc "A list of keys referencing eligible resource and statement classes for a statement's object; if missing, all resource or statement classes are eligible."
              | optional,
            propertyClasses
              | refs."definitions.SpecifKeys"
              | Array Dyn
              | doc "A list of keys referencing propertyClasses; a statementClass may exist without propertyClasses."
              | optional,
            replaces | refs."definitions.SpecifReplaces" | Array Dyn | optional,
            revision | refs."definitions.SpecifRevision" | String | optional,
            subjectClasses
              | refs."definitions.SpecifKeys"
              | Array Dyn
              | doc "A list of keys referencing eligible resource and statement classes for a statement's subject; if missing, all resource or statement classes are eligible."
              | optional,
            title | refs."definitions.SpecifText" | String,
          },
      "definitions.SpecifText" = String,
      "definitions.SpecifTextFormat" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'xhtml, 'plain |] ],
      "definitions.SpecifValue" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ refs."definitions.SpecifMultiLanguageText", Array Dyn ]
            ],
      "definitions.SpecifValues" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array refs."definitions.SpecifValue"
            ],
    }
    in
  {
      "$schema"
        | js2n.string.Matches
          "^https?:\\/\\/(specif\\.de\\/v1\\.1\\/schema|json\\.schemastore\\.org\\/specif-1\\.1)\\.json$"
        | doc "An absolute URL pointing to this SpecIF schema. Supports both specif.de and schemastore.org.",
      createdAt | refs."definitions.SpecifDateTime" | optional,
      createdBy | refs."definitions.SpecifCreatedBy" | optional,
      dataTypes
        | js2n.array.UniqueItems
        | Array refs."definitions.SpecifDataType"
        | doc "The base data types for use by property class definitions.",
      description
        | refs."definitions.SpecifMultiLanguageText"
        | Array Dyn
        | doc "The project's description; if missing, the first hierarchy node's description applies."
        | optional,
      files
        | js2n.array.UniqueItems
        | Array refs."definitions.SpecifFile"
        | doc "A list of files being referenced by a resource's or statement's property of dataType XHTML using an <object> tag. A file should have a media type as defined by IANA (see below)."
        | optional,
      generator | String | optional,
      generatorVersion | String | optional,
      hierarchies
        | refs."definitions.SpecifNodes"
        | Array Dyn
        | doc "A list of hierarchies with pointers to resources; may be nested to build a tree, i.e. a hierarchy of pointers.",
      id | refs."definitions.SpecifId",
      isExtension
        | Bool
        | doc "Indicates that the project is not schema-compliant on its own; by default the value is 'false'. Of course, it is expected that once extended the project is schema-compliant."
        | optional,
      language
        | String
        | doc "An IETF language tag such as 'en', 'en-US, 'fr' or 'de' showing the used language of the project. Is superseded by a resource's, statement's or property's language value. By default, 'en' is assumed."
        | optional,
      propertyClasses
        | js2n.array.UniqueItems
        | Array refs."definitions.SpecifPropertyClass"
        | doc "Class definition of a property for resources or statements. Is a sub-element of the respective resourceClass or statementClass. If no revision or change information is specified, the respective values of the parent element apply.",
      resourceClasses
        | js2n.array.UniqueItems
        | Array refs."definitions.SpecifResourceClass"
        | doc "The class definitions for resources.",
      resources
        | js2n.array.UniqueItems
        | Array refs."definitions.SpecifResource"
        | doc "The resources such as diagrams, model elements or requirements.",
      revision | refs."definitions.SpecifRevision" | optional,
      rights | refs."definitions.SpecifRights" | optional,
      statementClasses
        | js2n.array.UniqueItems
        | Array refs."definitions.SpecifStatementClass"
        | doc "The class definitions for statements in subject-predicate-object statements, where subject and object are resources.",
      statements
        | js2n.array.UniqueItems
        | Array refs."definitions.SpecifStatement"
        | doc "Subject-predicate-Object statements, where subject and object are resources. In other terms, statements are directed relations between two resources building a semantic net.",
      title
        | refs."definitions.SpecifMultiLanguageText"
        | Array Dyn
        | doc "The project's name; if missing, the first hierarchy node's title applies."
        | optional,
      ..
    }