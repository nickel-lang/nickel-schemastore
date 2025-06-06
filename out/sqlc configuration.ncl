# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      cloud
        | {
          hostname | String | optional,
          organization | String | optional,
          project | String | optional,
          ..
        }
        | optional,
      overrides
        | {
          go
            | {
              overrides
                | Array
                  {
                    column | String | optional,
                    db_type | String | optional,
                    engine
                      | std.enum.TagOrString
                      | [| 'sqlite, 'mysql, 'postgresql |]
                      | optional,
                    go_struct_tag | String | optional,
                    go_type
                      | std.contract.any_of
                        [
                          {
                            builtin | Bool | optional,
                            "import" | String | optional,
                            package | String | optional,
                            pointer | Bool | optional,
                            slice | Bool | optional,
                            spec | String | optional,
                            type | String | optional,
                            ..
                          },
                          String
                        ]
                      | optional,
                    nullable | Bool | optional,
                    unsigned | Bool | optional,
                    ..
                  }
                | optional,
              rename
                | js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = { ".*" = String, },
                    properties = {},
                    required = {},
                  }
                | optional,
              ..
            }
            | optional,
          ..
        }
        | doc "https://docs.sqlc.dev/en/latest/reference/config.html#global-overrides"
        | optional,
      plugins
        | Array
          {
            env | Array String | optional,
            name | js2n.string.MinLength 1 | doc "The name of this plugin.",
            process
              | {
                cmd
                  | String
                  | doc "The executable to call when using this plugin"
                  | optional,
                ..
              }
              | optional,
            wasm
              | {
                sha256
                  | String
                  | doc "The SHA256 checksum for the downloaded file."
                  | optional,
                url
                  | String
                  | doc "The URL to fetch the WASM file. Supports the https:// or file:// schemes."
                  | optional,
                ..
              }
              | doc "wasm: A mapping with a two keys url and sha256"
              | optional,
            ..
          }
        | optional,
      project | { id | String | optional, .. } | optional,
      rules
        | Array
          {
            message
              | String
              | doc "An optional message shown when this rule evaluates to true."
              | optional,
            name | String | doc "The name of this rule. (Required)" | optional,
            rule
              | String
              | doc "A Common Expression Language (CEL) expression. Required."
              | optional,
            ..
          }
        | optional,
      sql
        | js2n.array.MinItems 1
        | Array
          {
            codegen
              | Array
                {
                  options
                    | { _ | Dyn }
                    | doc "A mapping of plugin-specific options."
                    | optional,
                  out
                    | String
                    | doc "Output directory for generated code."
                    | optional,
                  plugin
                    | String
                    | doc "The name of the plugin. Must be defined in the plugins collection."
                    | optional,
                  ..
                }
              | doc "A collection of mappings to configure code generators. See codegen for the supported keys."
              | optional,
            database
              | { uri | String | doc "Database connection URI" | optional, .. }
              | doc m%"
                A mapping to configure database connections. See database for the supported keys.
                
                
              "%
              | optional,
            engine
              | std.enum.TagOrString
              | [| 'sqlite, 'mysql, 'postgresql |]
              | doc "One of postgresql, mysql or sqlite.",
            gen
              | {
                go
                  | {
                    emit_all_enum_values
                      | Bool
                      | doc "If true, emit a function per enum type that returns all valid enum values."
                      | optional,
                    emit_db_tags
                      | Bool
                      | doc "If true, add DB tags to generated structs. Defaults to false."
                      | optional,
                    emit_empty_slices
                      | Bool
                      | doc "If true, slices returned by :many queries will be empty instead of nil. Defaults to false."
                      | optional,
                    emit_enum_valid_method
                      | Bool
                      | doc "If true, generate a Valid method on enum types, indicating whether a string is a valid enum value."
                      | optional,
                    emit_exact_table_names
                      | Bool
                      | doc "If true, struct names will mirror table names. Otherwise, sqlc attempts to singularize plural table names. Defaults to false."
                      | optional,
                    emit_exported_queries
                      | Bool
                      | doc "If true, autogenerated SQL statement can be exported to be accessed by another package."
                      | optional,
                    emit_interface
                      | Bool
                      | doc "If true, output a Querier interface in the generated package. Defaults to false."
                      | optional,
                    emit_json_tags
                      | Bool
                      | doc "If true, add JSON tags to generated structs. Defaults to false."
                      | optional,
                    emit_methods_with_db_argument
                      | Bool
                      | doc "If true, generated methods will accept a DBTX argument instead of storing a DBTX on the *Queries struct. Defaults to false."
                      | optional,
                    emit_params_struct_pointers
                      | Bool
                      | doc "If true, parameters are passed as pointers to structs. Defaults to false."
                      | optional,
                    emit_pointers_for_null_types | Bool | optional,
                    emit_prepared_queries
                      | Bool
                      | doc "If true, include support for prepared queries. Defaults to false."
                      | optional,
                    emit_result_struct_pointers
                      | Bool
                      | doc "If true, query results are returned as pointers to structs. Queries returning multiple results are returned as slices of pointers. Defaults to false."
                      | optional,
                    inflection_exclude_table_names | Array String | optional,
                    json_tags_case_style
                      | String
                      | doc "camel for camelCase, pascal for PascalCase, snake for snake_case or none to use the column name in the DB. Defaults to none."
                      | optional,
                    json_tags_id_uppercase
                      | Bool
                      | doc "If true, “Id” in json tags will be uppercase. If false, will be camelcase. Defaults to false"
                      | optional,
                    omit_unused_structs
                      | Bool
                      | doc "If true, sqlc won’t generate table and enum structs that aren’t used in queries for a given package. Defaults to false."
                      | optional,
                    out
                      | String
                      | doc "Output directory for generated code."
                      | optional,
                    output_batch_file_name
                      | String
                      | doc "Customize the name of the batch file. Defaults to batch.go."
                      | optional,
                    output_db_file_name
                      | String
                      | doc "Customize the name of the db file. Defaults to db.go."
                      | optional,
                    output_files_suffix
                      | String
                      | doc "If specified the suffix will be added to the name of the generated files."
                      | optional,
                    output_models_file_name
                      | String
                      | doc "Customize the name of the models file. Defaults to models.go."
                      | optional,
                    output_querier_file_name
                      | String
                      | doc "Customize the name of the querier file. Defaults to querier.go."
                      | optional,
                    overrides
                      | Array
                        {
                          column
                            | String
                            | doc "In case the type overriding should be done on specific a column of a table instead of a type. column should be of the form table.column but you can be even more specific by specifying schema.table.column or catalog.schema.table.column. Can’t be used if the db_type key is defined."
                            | optional,
                          db_type
                            | String
                            | doc "The PostgreSQL or MySQL type to override. Find the full list of supported types in postgresql_type.go or mysql_type.go. Note that for Postgres you must use the pg_catalog prefixed names where available. Can’t be used if the column key is defined."
                            | optional,
                          engine
                            | std.enum.TagOrString
                            | [| 'sqlite, 'mysql, 'postgresql |]
                            | optional,
                          go_struct_tag
                            | String
                            | doc "A reflect-style struct tag to use in the generated code, e.g. a:\"b\" x:\"y,z\". If you want general json/db tags for all fields, use emit_db_tags and/or emit_json_tags instead."
                            | optional,
                          go_type
                            | std.contract.any_of
                              [
                                {
                                  builtin | Bool | optional,
                                  "import"
                                    | String
                                    | doc "The import path for the package where the type is defined."
                                    | optional,
                                  package
                                    | String
                                    | doc "The package name where the type is defined. This should only be necessary when your import path doesn’t end with the desired package name."
                                    | optional,
                                  pointer
                                    | Bool
                                    | doc "If set to true, generated code will use pointers to the type rather than the type itself."
                                    | optional,
                                  slice
                                    | Bool
                                    | doc "If set to true, generated code will use a slice of the type rather than the type itself."
                                    | optional,
                                  spec | String | optional,
                                  type
                                    | String
                                    | doc "The type name itself, without any package prefix."
                                    | optional,
                                  ..
                                },
                                String
                              ]
                            | doc "A fully qualified name to a Go type to use in the generated code."
                            | optional,
                          nullable
                            | Bool
                            | doc "If true, use this type when a column is nullable. Defaults to false."
                            | optional,
                          unsigned | Bool | optional,
                          ..
                        }
                      | doc "https://docs.sqlc.dev/en/stable/reference/config.html#type-overriding"
                      | optional,
                    package
                      | String
                      | doc "The package name to use for the generated code. Defaults to out basename."
                      | optional,
                    query_parameter_limit
                      | std.number.Integer
                      | doc "The number of positional arguments that will be generated for Go functions. To always emit a parameter struct, set this to 0. Defaults to 1."
                      | optional,
                    rename
                      | js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = { ".*" = String, },
                          properties = {},
                          required = {},
                        }
                      | doc "https://docs.sqlc.dev/en/stable/reference/config.html#renaming-fields"
                      | optional,
                    sql_driver | String | optional,
                    sql_package
                      | String
                      | doc "Either pgx/v4, pgx/v5 or database/sql. Defaults to database/sql."
                      | optional,
                    ..
                  }
                  | optional,
                json
                  | {
                    filename
                      | String
                      | doc "Filename for the generated JSON document. Defaults to codegen_request.json."
                      | optional,
                    indent
                      | String
                      | doc "Indent string to use in the JSON document. Defaults to two spaces."
                      | optional,
                    out
                      | String
                      | doc "Output directory for the generated JSON."
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | doc "A mapping to configure built-in code generators. See gen for the supported keys."
              | optional,
            queries
              | std.contract.any_of [ String, Array String ]
              | doc "Directory of SQL queries or path to single SQL file; or a list of paths."
              | optional,
            rules
              | Array String
              | doc "A collection of rule names to run via sqlc vet. See rules for configuration options."
              | optional,
            schema
              | std.contract.any_of [ String, Array String ]
              | doc "Directory of SQL migrations or path to single SQL file; or a list of paths."
              | optional,
            strict_function_checks
              | Bool
              | doc "If true, return an error if a called SQL function does not exist. Defaults to false."
              | optional,
            strict_order_by | Bool | optional,
            ..
          }
        | optional,
      version | std.contract.Equal "2",
      ..
    }