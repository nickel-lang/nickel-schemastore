# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.apiDefinition" =
        {
            httpMethod
              | std.enum.TagOrString
              | [| 'patch, 'delete, 'put, 'post, 'get |]
              | doc "Verb of api rest",
            path | js2n.string.MinLength 2 | doc "Path to access api",
            resolverType
              | std.enum.TagOrString
              | [| 'mutation, 'query |]
              | doc "Type of resolver, query or mutation",
            ..
          },
      "definitions.excludedOperationValues" =
        Array (
            std.contract.Sequence
              [
                std.enum.TagOrString,
                [|
                  'upsert,
                  'update,
                  'updateById,
                  'updateAndIncrement,
                  'sum,
                  'rawSql,
                  'paginate,
                  'min,
                  'max,
                  'get,
                  'find,
                  'findById,
                  'delete,
                  'deleteById,
                  'createBatch,
                  'create,
                  'count
                |]
              ]
          ),
      "definitions.front" =
        {
            outlineFontSetIcon
              | js2n.string.MinLength 2
              | doc "Font set outline icon to be used in the front application, example: material-symbols-outlined"
              | optional,
            outlineIcon
              | js2n.string.MinLength 2
              | doc "Outline icon to be used in the front application, example: heroicons_solid:tag"
              | optional,
            solidFontSetIcon
              | js2n.string.MinLength 2
              | doc "Font set solid icon to be used in the front application, example: material-symbols-outlined"
              | optional,
            solidIcon
              | js2n.string.MinLength 2
              | doc "Solid icon to be used in the front application, example: heroicons_solid:tag"
              | optional,
          },
      "definitions.pivotTable" =
        {
            aggregateName
              | js2n.string.MinLength 2
              | doc "The name of the aggregateName, singular in PascalCase"
              | optional,
            aggregateProperties
              | Array (
                std.contract.Sequence
                  [ refs."definitions.property", { _ | Dyn } ]
              )
              | optional,
            boundedContextName
              | js2n.string.MinLength 2
              | doc "The name of the package, singular in kebab-case"
              | optional,
            excludedFiles | Array String | optional,
            excludedOperations
              | refs."definitions.excludedOperationValues"
              | Array Dyn
              | optional,
            hasAuditing
              | Bool
              | doc "Enabled auditing for pivot table"
              | optional,
            hasOAuth
              | Bool
              | doc "Enabled authentication for this pivot table"
              | optional,
            moduleName
              | js2n.string.MinLength 2
              | doc "The name of the module, singular in kebab-case"
              | optional,
            moduleNames
              | js2n.string.MinLength 2
              | doc "The name of the module, plural in kebab-case"
              | optional,
          },
      "definitions.property" =
        {
            arrayOptions
              | {
                enumOptions
                  | Array (js2n.string.MinLength 1)
                  | doc "Values for enum type"
                  | optional,
                length
                  | js2n.number.Minimum 1
                  | doc "Set max length to property"
                  | optional,
                maxLength
                  | js2n.number.Minimum 1
                  | doc "Set max length to property"
                  | optional,
                type
                  | std.enum.TagOrString
                  | [|
                    'varchar,
                    'timestamp,
                    'int,
                    'id,
                    'enum,
                    'decimal,
                    'date,
                    'char
                  |]
                  | doc "The type of property",
                ..
              }
              | doc "Options to define array property"
              | optional,
            autoIncrement
              | Bool
              | doc "Set number property as auto increment"
              | optional,
            decimals
              | Array (js2n.number.Minimum 1)
              | doc "Total digits of the number and length of the decimal places in the back of the number, example: [10, 2]."
              | optional,
            defaultValue
              | std.contract.any_of [ Bool, Number, String ]
              | doc "Default value for property"
              | optional,
            enumOptions
              | Array (js2n.string.MinLength 1)
              | doc "Values for enum type"
              | optional,
            example
              | std.contract.any_of [ Bool, Number, String, Array Dyn ]
              | doc "Example value for property, this value will be used in swagger documentation"
              | optional,
            index
              | std.enum.TagOrString
              | [| 'unique, 'index |]
              | doc "To define property like a index"
              | optional,
            indexFields
              | Array (js2n.string.MinLength 1)
              | doc "Fields to do composite unique index"
              | optional,
            indexName
              | js2n.string.MinLength 2
              | doc "The name of index, if there are various indexes with the same name, they will be grouped"
              | optional,
            isI18n
              | Bool
              | doc "Set property as i18n, this property will be used to translate the entity in the translation table"
              | optional,
            length
              | js2n.number.Minimum 1
              | doc "Set max length to property"
              | optional,
            maxLength
              | js2n.number.Minimum 1
              | doc "Set max length to property"
              | optional,
            name
              | js2n.string.MinLength 2
              | doc "The name of property, in camelCase",
            nullable | Bool | doc "Set property to nullable" | optional,
            primaryKey | Bool | doc "Set property to primary key" | optional,
            relationship
              | refs."definitions.relationship"
              | { _ | Dyn }
              | optional,
            type
              | std.enum.TagOrString
              | [|
                'varchar,
                'timestamp,
                'text,
                'smallint,
                'relationship,
                'password,
                'manyToMany,
                'jsonb,
                'json,
                'int,
                'id,
                'float,
                'enum,
                'decimal,
                'date,
                'char,
                'boolean,
                'blob,
                '"blob.tiny",
                '"blob.medium",
                '"blob.long",
                'bigint,
                'array
              |]
              | doc "The type of property",
            unsigned | Bool | doc "Set property like unsigned" | optional,
            webComponent
              | refs."definitions.webComponent"
              | { _ | Dyn }
              | optional,
          },
      "definitions.relationship" =
        {
            aggregateName
              | js2n.string.MinLength 2
              | doc "Aggregate referring to this relationship, example: LibraryAuthor"
              | optional,
            avoidConstraint
              | Bool
              | doc "Avoid constraint rules for this relationship"
              | optional,
            field
              | js2n.string.MinLength 2
              | doc "Field to obtain the relationship data, example: author"
              | optional,
            isDenormalized
              | Bool
              | doc "Set many-to-many relationship as denormalized, creating a field to store the selected ids"
              | optional,
            key
              | js2n.string.MinLength 2
              | doc "Property key that refers to this relationship, only for many-to-one relationship, example: id"
              | optional,
            modulePath
              | js2n.string.MinLength 2
              | doc "Path to the module that refers to this relationship, example: library/author"
              | optional,
            packageName
              | js2n.string.MinLength 2
              | doc "Path to packageName where is the relationship, example: @aurora-ts/core"
              | optional,
            pivot | refs."definitions.pivotTable" | { _ | Dyn } | optional,
            singularName
              | js2n.string.MinLength 2
              | doc "Singular name of the property referred to in the relationship, only for one-to-many and many-to-many relationship, example: book"
              | optional,
            type
              | std.enum.TagOrString
              | [|
                'one-to-one,
                'one-to-many,
                'none,
                'many-to-one,
                'many-to-many
              |]
              | doc "The type of web component"
              | optional,
          },
      "definitions.webComponent" =
        {
            className
              | js2n.string.MinLength 2
              | doc "CSS class for web component"
              | optional,
            detailSort
              | js2n.number.Minimum 1
              | doc "Web component order on detail view"
              | optional,
            isDetailHidden
              | Bool
              | doc "Set hidden web component on detail view"
              | optional,
            isListHidden
              | Bool
              | doc "Set hidden web component on list view"
              | optional,
            listSort
              | js2n.number.Minimum 1
              | doc "Web component order on list view"
              | optional,
            type
              | std.enum.TagOrString
              | [|
                'select,
                'search-select,
                'search-multiple-select,
                'multiple-select,
                'grid-select-multiple-elements,
                'grid-select-element,
                'grid-elements-manager,
                'async-search-select,
                'async-search-multiple-select
              |]
              | doc "The type of web component"
              | optional,
          },
    }
    in
  {
      additionalApis | Array refs."definitions.apiDefinition" | optional,
      aggregateName
        | js2n.string.MinLength 2
        | doc "The name of the aggregateName, singular in PascalCase",
      aggregateProperties | Array refs."definitions.property" | optional,
      boundedContextName
        | js2n.string.MinLength 2
        | doc "The name of the package, singular in kebab-case",
      excludedFiles | Array String | optional,
      excludedOperations
        | refs."definitions.excludedOperationValues"
        | optional,
      front | refs."definitions.front" | optional,
      hasAuditing | Bool | doc "Enabled auditing for this module" | optional,
      hasOAuth | Bool | doc "Enabled authentication for this module" | optional,
      hasTenant | Bool | doc "Enabled tenant for this module" | optional,
      moduleName
        | js2n.string.MinLength 2
        | doc "The name of the module, singular in kebab-case",
      moduleNames
        | js2n.string.MinLength 2
        | doc "The name of the module, plural in kebab-case",
      version | js2n.string.MinLength 2 | doc "Schema version" | optional,
    }