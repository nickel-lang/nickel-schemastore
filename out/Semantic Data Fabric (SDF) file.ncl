# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Cardinality" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'zero-or-more, 'one, 'zero-or-one |] ],
      "definitions.CasingPolicy" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'to-lower, 'to-upper, 'preserve |] ],
      "definitions.CheckColsSpec" =
        std.contract.any_of
            [
              {
                cols
                  | Array (
                    std.contract.Sequence [ refs."definitions.String", String ]
                  ),
              },
              std.contract.Sequence [ std.enum.TagOrString, [| 'all |] ]
            ],
      "definitions.Classifier" =
        {
            cardinality
              | refs."definitions.Cardinality"
              | String
              | doc "Cardinality of the classifier: zero-or-one, one or zero-or-many"
              | optional,
            description
              | String
              | doc "A description of this classifier type"
              | optional,
            labels
              | Array (
                std.contract.Sequence [ refs."definitions.Label", { _ | Dyn } ]
              )
              | doc "Named classifier labels"
              | optional,
            name | String | doc "The name of the classifier type",
            propagate
              | Bool
              | doc "Does the classifier propagate from scope to scope or is it a one scope marker"
              | optional,
            scope
              | refs."definitions.Scope"
              | String
              | doc "Scope of the classifier: table or column"
              | optional,
            source-locations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FilePath", { _ | Dyn } ]
              )
              | doc "Classifier defined by these set of .sdf files"
              | optional,
          },
      "definitions.Column" =
        {
            classifiers
              | Array String
              | doc "An array of classifier references"
              | optional,
            datatype
              | js2n.Nullable String
              | doc "The type of this column"
              | optional,
            default-severity
              | refs."definitions.Severity"
              | String
              | doc "The default severity for this tables tests and checks"
              | optional,
            description
              | String
              | doc "A description of this column"
              | optional,
            forward-lineage
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Lineage", { _ | Dyn } ])
              | doc "Forward Lineage, the columns that this column is used to compute"
              | optional,
            lineage
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Lineage", { _ | Dyn } ])
              | doc "Lineage, a tagged array of column references"
              | optional,
            name
              | refs."definitions.String"
              | String
              | doc "The name of the column",
            reclassify
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Reclassify", { _ | Dyn } ]
              )
              | doc "Array of reclassify instructions for changing the attached classifier labels"
              | optional,
            samples
              | Array String
              | doc "An array of representative literals of this column [experimental!]"
              | optional,
            tests
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Constraint", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.CompressionType" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'zstd, 'tar |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'bzip2 |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'gzip |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'none |] ]
            ],
      "definitions.Config" =
        {
            description
              | js2n.Nullable String
              | doc "A description of this configuration section"
              | optional,
            name | String | doc "The name of the configuration section",
            properties | js2n.Nullable ({ _ | String }) | optional,
          },
      "definitions.Constant" =
        std.contract.any_of
            [ js2n.Null, Bool, std.number.Integer, Number, String ],
      "definitions.Constraint" =
        {
            expect
              | String
              | doc "The constraint macro: must have the form lib.macro(args,..), where lib is any of the libs in scope, std is available by default",
            severity
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.Severity", String ])
              | doc "The severity of this constraint"
              | optional,
          },
      "definitions.Credential" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            headless-creds =
                              js2n.Nullable
                                  (std.contract.Sequence
                                    [
                                      refs."definitions.HeadlessCredentials",
                                      { _ | Dyn }
                                    ]),
                            type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'sdf |] ],
                            variant =
                              std.contract.Sequence
                                  [ refs."definitions.SdfAuthVariant", String ],
                          },
                      required = { type = true, variant = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            account-id = String,
                            password = js2n.Nullable String,
                            private-key-passphrase = js2n.Nullable String,
                            private-key-path = js2n.Nullable String,
                            private-key-pem = js2n.Nullable String,
                            role = js2n.Nullable String,
                            type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'snowflake |] ],
                            username = String,
                            warehouse = js2n.Nullable String,
                          },
                      required =
                        { account-id = true, type = true, username = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            client-email = String,
                            private-key = String,
                            project-id = String,
                            type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'bigquery |] ],
                          },
                      required =
                        {
                            client-email = true,
                            private-key = true,
                            project-id = true,
                            type = true,
                          },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            access-key-id = js2n.Nullable String,
                            default-region = js2n.Nullable String,
                            external-id = js2n.Nullable String,
                            profile = js2n.Nullable String,
                            role-arn = js2n.Nullable String,
                            secret-access-key = js2n.Nullable String,
                            session-token = js2n.Nullable String,
                            type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'aws |] ],
                            use-web-identity = js2n.Nullable Bool,
                          },
                      required = { type = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            api-key = String,
                            type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'openai |] ],
                          },
                      required = { api-key = true, type = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'empty |] ],
                          },
                      required = { type = true, },
                    }
                ],
              {
                description
                  | js2n.Nullable String
                  | doc "A description of this credential"
                  | optional,
                name
                  | String
                  | doc "The name of the credential (default = 'default')",
                source-locations
                  | js2n.Nullable
                    (Array (
                      std.contract.Sequence
                        [ refs."definitions.FilePath", { _ | Dyn } ]
                    ))
                  | doc "Credential defined by these set of .sdf files"
                  | optional,
                ..
              }
            ],
      "definitions.DataBucket" =
        {
            region
              | js2n.Nullable String
              | doc "The region of the bucket"
              | optional,
            uri | String | doc "The uri of the bucket",
          },
      "definitions.DataFusionSpec" =
        {
            udf
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.String", String ])
              | doc "The name attribute of the implementing UDF. None indicates the UDF is named the same as the function."
              | optional,
          },
      "definitions.DbtConfig" =
        {
            auto-parse
              | Bool
              | doc "Automatically Run Parse in-between commands (default: true)"
              | optional,
            disable-introspection
              | Bool
              | doc "Disable introspection (default: false)"
              | optional,
            enabled
              | Bool
              | doc "Whether the dbt integration is enabled"
              | optional,
            profile
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.String", String ])
              | doc "The dbt profile to use"
              | optional,
            profile-dir
              | js2n.Nullable String
              | doc "The directory where dbt profiles are stored"
              | optional,
            project-dir
              | js2n.Nullable String
              | doc "Dbt Project Directory"
              | optional,
            target
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.String", String ])
              | doc "The dbt target for the profile"
              | optional,
            target-dir
              | js2n.Nullable String
              | doc "The dbt target directory for the project"
              | optional,
          },
      "definitions.Defaults" =
        {
            casing-policy
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.CasingPolicy", String ])
              | doc "Case normalization policy for names"
              | optional,
            catalog
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.String", String ])
              | doc "Defines a default catalog. If not set, defaults to the (catalog/workspace) name in an outer scope"
              | optional,
            creation-flag
              | js2n.Nullable refs."definitions.TableCreationFlags"
              | doc "Defines table creation flags, defaults to  if not set"
              | optional,
            csv-compression
              | js2n.Nullable refs."definitions.CompressionType"
              | doc "Json or CSV data is compressed with this method [only for external tables]"
              | optional,
            csv-delimiter
              | js2n.Nullable String
              | doc "CSV data is separated by this delimiter [only for external tables]"
              | optional,
            csv-has-header
              | js2n.Nullable Bool
              | doc "CSV data has a header [only for external tables]"
              | optional,
            dialect
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.Dialect", String ])
              | doc "The dialect of this environment. If not set, defaults to trino"
              | optional,
            environment
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.String", String ])
              | doc "The default environment (can only be set on the level of the workspace)"
              | optional,
            include-type
              | js2n.Nullable refs."definitions.IncludeType"
              | doc "The default index for this tables"
              | optional,
            index-method
              | js2n.Nullable refs."definitions.IndexMethod"
              | doc "The default index for this tables"
              | optional,
            linter
              | js2n.Nullable String
              | doc "The named lint rule set, uses defaults (from sdftarget/<environment>/lint.sdf.yml) if not set"
              | optional,
            materialization
              | js2n.Nullable refs."definitions.Materialization"
              | doc "Defines the default materialization, if not set defaults to materialization in outer scope, if not set defaults to base-table"
              | optional,
            materialization-lib
              | js2n.Nullable String
              | doc "The default materialization library, if set overrides sdf_materialization"
              | optional,
            preprocessor
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.PreprocessorType", String ])
              | doc "The preprocessor for this environment. If not set, defaults to local"
              | optional,
            schema
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.String", String ])
              | doc "Defines a default schema,  If not set, defaults to the schema name in an outer scope, if not set, defaults to 'pub'"
              | optional,
            severity
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.Severity", String ])
              | doc "The default severity for this tables tests and checks"
              | optional,
            sync-method
              | js2n.Nullable refs."definitions.SyncType"
              | doc "The default index for this tables"
              | optional,
            test-lib
              | js2n.Nullable String
              | doc "The default test library, if set overrides sdf_test"
              | optional,
            utils-lib
              | js2n.Nullable String
              | doc "The default utils library, if set overrides sdf_utils"
              | optional,
          },
      "definitions.Dependency" =
        {
            branch
              | js2n.Nullable String
              | doc "the Git branch (choose only one of the fields: rev, branch, tag)"
              | optional,
            environment
              | js2n.Nullable String
              | doc "The chosen workspace environment (none means default)"
              | optional,
            git | js2n.Nullable String | doc "The Git repo" | optional,
            imports
              | Array String
              | doc "Which models, reports, tests, checks etc. to include from the dependency"
              | optional,
            name | refs."definitions.String" | String,
            path
              | js2n.Nullable String
              | doc "The relative path from this workspace to the referenced workspace, for a Git repo, from the root of the depot to the workspace"
              | optional,
            rev
              | js2n.Nullable String
              | doc "the Git revision (choose only one of the fields: rev, branch, tag)"
              | optional,
            tag
              | js2n.Nullable String
              | doc "the Git tag (choose only one of the fields: rev, branch, tag)"
              | optional,
            target
              | js2n.Nullable String
              | doc "The chosen workspace target (none means default)"
              | optional,
          },
      "definitions.Dialect" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'databricks,
                'sdf,
                'spark-lp,
                'redshift,
                'bigquery,
                'trino,
                'snowflake
              |]
            ],
      "definitions.Environment" =
        {
            dbt
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.DbtConfig", { _ | Dyn } ])
              | doc "Configuration for dbt integration"
              | optional,
            defaults
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Defaults", { _ | Dyn } ])
              | doc "Defaults for this workspace"
              | optional,
            dependencies
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Dependency", { _ | Dyn } ]
              )
              | doc "Dependencies of the workspace to other workspaces or to cloud database providers"
              | optional,
            description
              | String
              | doc "A description of this workspace"
              | optional,
            excludes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ExcludePath", { _ | Dyn } ]
              )
              | doc "An array of directories and filenames to be skipped when resolving includes"
              | optional,
            includes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IncludePath", { _ | Dyn } ]
              )
              | doc "An array of directories and filenames containing .sql and .sdf.yml files"
              | optional,
            integrations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Integration", { _ | Dyn } ]
              )
              | doc "The integrations for this environment"
              | optional,
            name
              | refs."definitions.String"
              | String
              | doc "The name of this workspace (defaults to the workspace directory name if not given) Name must be set for deployment.",
            preprocessor
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.PreprocessorType", String ])
              | doc "Experimental: This project has jinja"
              | optional,
            repository
              | String
              | doc "The URL of the workspace source repository (defaults to 'none' if no repository is given)"
              | optional,
            source-locations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FilePath", { _ | Dyn } ]
              )
              | doc "Workspace defined by these set of files"
              | optional,
            vars
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.Constant",
                    std.contract.any_of [ js2n.Null, Bool, Number, String ]
                  ]
              }
              | doc "A map of named values for setting SQL variables from your environment Ex. -dt: dt, used in SQL as @dt, and in Jinja as "
              | optional,
          },
      "definitions.Example" =
        {
            input
              | String
              | doc "The sql string corresponding to the input of this example",
            output
              | String
              | doc "The output corresponding to running the input string",
          },
      "definitions.ExcludePath" =
        {
            exclude-type
              | js2n.Nullable refs."definitions.ExcludeType"
              | doc "Type of excluded artifacts"
              | optional,
            path | String | doc "A filepath",
          },
      "definitions.ExcludeType" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'content |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'path |] ]
            ],
      "definitions.FileFormat" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'json, 'csv, 'parquet |] ],
      "definitions.FilePath" =
        {
            path | String | doc "A filepath",
            time
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.SystemTime", { _ | Dyn } ])
              | doc "Last modified of the file"
              | optional,
          },
      "definitions.Function" =
        {
            binds
              | Array (
                std.contract.Sequence
                  [ refs."definitions.TypeBound", { _ | Dyn } ]
              )
              | doc "The generic type bounds"
              | optional,
            constraints
              | { _ | String }
              | doc "The constraints on generic type bounds"
              | optional,
            cross-link
              | String
              | doc "cross-link - link to existing documentation, for example: https://trino.io/docs/current/functions/datetime.html#date_trunc"
              | optional,
            description
              | String
              | doc "A description of this function"
              | optional,
            dialect
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.Dialect", String ])
              | doc "The dialect that provides this function"
              | optional,
            examples
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Example", { _ | Dyn } ]
              )
              | doc "example - Example use of the function (tuple with input/output)"
              | optional,
            implemented-by
              | js2n.Nullable refs."definitions.FunctionImplSpec"
              | optional,
            kind
              | refs."definitions.FunctionKind"
              | String
              | doc "The function kind"
              | optional,
            name
              | refs."definitions.String"
              | String
              | doc "The name of the function [syntax: [[catalog.]schema].function]",
            optional-parameters
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.OptionalParameter", { _ | Dyn } ]
                ))
              | doc "The arguments of this function"
              | optional,
            parameters
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.Parameter", { _ | Dyn } ]
                ))
              | doc "The arguments of this function"
              | optional,
            reclassify
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Reclassify", { _ | Dyn } ]
              )
              | doc "Array of reclassify instructions for changing the attached classifier labels"
              | optional,
            returns
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Parameter", { _ | Dyn } ])
              | doc "The results of this function (can be a tuple)"
              | optional,
            section | String | doc "The function category" | optional,
            source-locations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FilePath", { _ | Dyn } ]
              )
              | doc "Function defined by these set of .sdf files"
              | optional,
            special
              | Bool
              | doc "Function can be called without parentheses, e.g. as if it were a constant, e.g. current_date"
              | optional,
            variadic
              | refs."definitions.Variadic"
              | doc "Arbitrary number of arguments of an common type out of a list of valid types"
              | optional,
            volatility
              | refs."definitions.Volatility"
              | doc "volatility - The volatility of the function."
              | optional,
          },
      "definitions.FunctionImplSpec" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'builtin |] ],
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        rust =
                          std.contract.Sequence
                              [
                                refs."definitions.RustFunctionSpec",
                                { _ | Dyn }
                              ],
                      },
                  required = { rust = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        datafusion =
                          std.contract.Sequence
                              [
                                refs."definitions.DataFusionSpec",
                                { _ | Dyn }
                              ],
                      },
                  required = { datafusion = true, },
                },
              std.contract.Sequence [ std.enum.TagOrString, [| 'sql |] ]
            ],
      "definitions.FunctionKind" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'table, 'window, 'aggregate, 'scalar |]
            ],
      "definitions.HeadlessCredentials" =
        { access_key | String, secret_key | String, .. },
      "definitions.IncludePath" =
        {
            defaults
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Defaults", { _ | Dyn } ])
              | doc "Defaults for files on this path"
              | optional,
            index
              | refs."definitions.IndexMethod"
              | doc "Index method for this include path: scan | table | schema-table | catalog-schema-table"
              | optional,
            path | String | doc "A filepath",
            type
              | refs."definitions.IncludeType"
              | doc "Type of included artifacts: model | test | stats | metadata | resource"
              | optional,
          },
      "definitions.IncludeType" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'model |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'test |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'check |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'report |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'stat |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'resource |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'metadata |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'spec |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'macro |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'seed |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'slt |] ]
            ],
      "definitions.IncrementalOptions" =
        {
            compact-mode-warehouse
              | js2n.Nullable String
              | doc "Warehouse to use in the incremental mode"
              | optional,
            merge-exclude-columns
              | Array (
                std.contract.Sequence [ refs."definitions.String", String ]
              )
              | doc "List of column names to exclude from updating as part of Merge strategy; Only one of merge_update_columns or merge_exclude_columns may be specified"
              | optional,
            merge-update-columns
              | Array (
                std.contract.Sequence [ refs."definitions.String", String ]
              )
              | doc "List of column names to be updated as part of Merge strategy; Only one of merge_update_columns or merge_exclude_columns may be specified"
              | optional,
            on-schema-change
              | js2n.Nullable refs."definitions.OnSchemaChange"
              | doc "Method for reacting to changing schema in the source of the incremental table Possible values are `fail`, `append`, and `sync`. If left unspecified, the default behavior is to ignore the change and possibly error out if the schema change is incompatible. `fail` causes a failure whenever any deviation in the schema of the source is detected; `append` adds new columns but does not delete the columns removed from the source; `sync` adds new columns and deletess the columns removed from the source;"
              | optional,
            strategy
              | refs."definitions.IncrementalStrategy"
              | String
              | doc "Incremental strategy; may be one of `append`, `merge`, or `delete+insert`",
            unique-key
              | js2n.Nullable String
              | doc "Expression used for identifying records in Merge and Delete+Insert strategies; May be a column name or an expression combining multiple columns. If left unspecified, Merge and Delete+Insert strategies behave the same as Append"
              | optional,
          },
      "definitions.IncrementalStrategy" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| '"delete+insert", '"merge", 'append |] ],
      "definitions.IndexMethod" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'scan-dbt |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'none |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'table-name |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'schema-table-name |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'catalog-schema-table-name |] ]
            ],
      "definitions.Integration" =
        {
            batch-size
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "The size of the batch when querying the provider"
              | optional,
            buckets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DataBucket", { _ | Dyn } ]
              )
              | doc "A list of remote buckets to target"
              | optional,
            cluster-identifier
              | js2n.Nullable String
              | doc "The cluster identifier for redshift server"
              | optional,
            credential
              | js2n.Nullable String
              | doc "Credential identifier for this provider"
              | optional,
            output-location
              | js2n.Nullable String
              | doc "The remote output location of the integration"
              | optional,
            provider
              | refs."definitions.ProviderType"
              | String
              | doc "The type of the provider [e.g.: snowflake, redshift, s3]",
            sources
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SourcePattern", { _ | Dyn } ]
              )
              | doc "A list of (possibly remote) sources to read, matched in order, so write specific pattern before more general patterns"
              | optional,
            targets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.TargetPattern", { _ | Dyn } ]
              )
              | doc "A list of (possibly remote) targets to build,  matched in order, so write specific pattern before more general patterns, source patterns are excluded"
              | optional,
            type
              | refs."definitions.IntegrationType"
              | String
              | doc "The type of the integration [e.g.: database, metadata, data]"
              | optional,
          },
      "definitions.IntegrationType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'database, 'metadata, 'data |] ],
      "definitions.Label" =
        {
            description
              | js2n.Nullable String
              | doc "A description of this classifier element"
              | optional,
            name
              | String
              | doc "The name of the label, use \"*\" to allow arbitrary strings as labels",
          },
      "definitions.Lineage" =
        {
            apply
              | Array (
                std.contract.Sequence [ refs."definitions.String", String ]
              )
              | doc "These functions were used to produce the output column"
              | optional,
            copy
              | Array (
                std.contract.Sequence [ refs."definitions.String", String ]
              )
              | doc "The output column is computed by copying these upstream columns"
              | optional,
            modify
              | Array (
                std.contract.Sequence [ refs."definitions.String", String ]
              )
              | doc "The output column is computed by transforming these upstream columns"
              | optional,
            scan
              | Array (
                std.contract.Sequence [ refs."definitions.String", String ]
              )
              | doc "These upstream columns are indirectly used to produce the output (e.g. in WHERE or GROUP BY)"
              | optional,
          },
      "definitions.Materialization" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'table |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'transient-table |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'temporary-table |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'external-table |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'view |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'materialized-view |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'incremental-table |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'snapshot-table |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'recursive-table |] ],
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { other = String, },
                  required = { other = true, },
                }
            ],
      "definitions.OnSchemaChange" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'fail |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'append |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'sync |] ]
            ],
      "definitions.OptionalParameter" =
        {
            classifier
              | js2n.Nullable (Array String)
              | doc "An array of classifier references"
              | optional,
            constant
              | js2n.Nullable String
              | doc "The required constant value of this parameter"
              | optional,
            datatype | String | doc "The datatype of this parameter",
            description
              | js2n.Nullable String
              | doc "A description of this parameter"
              | optional,
            identifiers
              | js2n.Nullable (Array String)
              | doc "The parameter may appear as identifier, without quote"
              | optional,
            name
              | refs."definitions.String"
              | String
              | doc "The name of the parameter",
          },
      "definitions.Parameter" =
        {
            classifier
              | js2n.Nullable (Array String)
              | doc "An array of classifier references"
              | optional,
            constant
              | js2n.Nullable String
              | doc "The required constant value of this parameter"
              | optional,
            datatype
              | js2n.Nullable String
              | doc "The datatype of this parameter"
              | optional,
            description
              | js2n.Nullable String
              | doc "A description of this parameter"
              | optional,
            identifiers
              | js2n.Nullable (Array String)
              | doc "The parameter may appear as identifier, without quote"
              | optional,
            name
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.String", String ])
              | doc "The name of the parameter"
              | optional,
          },
      "definitions.Partition" =
        {
            description
              | js2n.Nullable String
              | doc "A description of the partition column"
              | optional,
            format
              | js2n.Nullable String
              | doc "The format of the partition column [use strftime format for date/time] See (guide)[https://docs.sdf.com/guide/schedules]"
              | optional,
            name
              | refs."definitions.String"
              | String
              | doc "The name of the partition column",
          },
      "definitions.PreprocessorType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'all, 'sql-vars, 'jinja, 'none |] ],
      "definitions.ProviderType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'sdf, 's3, 'bigquery, 'snowflake, 'redshift, 'glue |]
            ],
      "definitions.Reclassify" =
        {
            from
              | js2n.Nullable String
              | doc "Expected source classifier"
              | optional,
            to | js2n.Nullable String | doc "Target classifier" | optional,
          },
      "definitions.RustFunctionSpec" =
        {
            name
              | js2n.Nullable String
              | doc "The name attribute of the implementing UDF. None indicates the UDF is named the same as the function."
              | optional,
          },
      "definitions.Scope" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'table, 'column |] ],
      "definitions.SdfAuthVariant" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'id_token_from_file, 'headless, 'interactive |]
            ],
      "definitions.Severity" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'error, 'warning |] ],
      "definitions.SnapshotOptions" =
        {
            check-cols
              | js2n.Nullable refs."definitions.CheckColsSpec"
              | doc "Specification of which columns to check for change (may be a list of column names or `all`) This option is only required for the `check` snapshot strategy"
              | optional,
            compact-mode-warehouse
              | js2n.Nullable String
              | doc "Warehouse to use in the snapshot mode"
              | optional,
            strategy
              | refs."definitions.SnapshotStrategy"
              | String
              | doc "Snapshot strategy; may be one of `timestamp` (default), or `check`",
            unique-key
              | String
              | doc "Expression used for identifying records that will be updated according to the snapshot strategiy; May be a column name or an expression combining multiple columns",
            updated-at
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.String", String ])
              | doc "Name of the timestamp column used to identify the last update time This option is only required for the `timestamp` snapshot strategy"
              | optional,
          },
      "definitions.SnapshotStrategy" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'check, 'timestamp |] ],
      "definitions.SourcePattern" =
        {
            pattern
              | String
              | doc "A source that can be read. Sources must be a three part names with globs, eg. *.*.* matches all catalogs, schema and table in scope",
            preload
              | js2n.Nullable Bool
              | doc "Whether to preload the source"
              | optional,
            rename-from
              | js2n.Nullable String
              | doc "Renames sources when searching in the remote, the ith ${i} matches the ith * of the name, so to prepend all catalogs,schema,table with _, use \"_${1}._${2}._${3}\""
              | optional,
            time-travel-qualifier
              | js2n.Nullable String
              | doc "Time travel qualifier expression (e.g. `AT (TIMESTAMP => {{ SOME_TIMESTAMP }})``)"
              | optional,
          },
      "definitions.String" = String,
      "definitions.SyncType" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'always |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'on-pull |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'on-push |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'never |] ]
            ],
      "definitions.SystemTime" =
        {
            nanos_since_epoch | std.number.Integer | js2n.number.Minimum 0,
            secs_since_epoch | std.number.Integer | js2n.number.Minimum 0,
            ..
          },
      "definitions.Table" =
        {
            casing-policy
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.CasingPolicy", String ])
              | doc "Case normalization policy for names specified in this table"
              | optional,
            classifiers
              | Array String
              | doc "An array of classifier references"
              | optional,
            columns
              | Array (
                std.contract.Sequence [ refs."definitions.Column", { _ | Dyn } ]
              )
              | doc "The columns of the schema: name, type, metadata"
              | optional,
            compression
              | js2n.Nullable refs."definitions.CompressionType"
              | doc "Json or CSV data is compressed with this method [only for external tables]"
              | optional,
            creation-flags
              | js2n.Nullable refs."definitions.TableCreationFlags"
              | doc "Defines the table creation options, defaults to none if not set"
              | optional,
            cycle-cut-point
              | js2n.Nullable Bool
              | doc "If this table is part of a cyclic dependency then cut the cycle here"
              | optional,
            delimiter
              | js2n.Nullable String
              | doc "CSV data is separated by this delimiter [only for external tables]"
              | optional,
            depended-on-by
              | Array (
                std.contract.Sequence [ refs."definitions.String", String ]
              )
              | doc "All tables that depend on this table (syntax: catalog.schema.table)"
              | optional,
            dependencies
              | Array (
                std.contract.Sequence [ refs."definitions.String", String ]
              )
              | doc "All tables that this table depends on (syntax: catalog.schema.table)"
              | optional,
            description
              | js2n.Nullable String
              | doc "A description of this table"
              | optional,
            dialect
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.Dialect", String ])
              | doc "The dialect of this table, defaults to `trino`"
              | optional,
            exists-remotely
              | js2n.Nullable Bool
              | doc "Whether the table exists in the remote DB (used for is_incremental macro)"
              | optional,
            file-format
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.FileFormat", String ])
              | doc "Store table in this format [only for external tables]"
              | optional,
            incremental-options
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.IncrementalOptions", { _ | Dyn } ])
              | doc "Options governing incremental table evaluation (only for incremental tables)"
              | optional,
            lineage
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Lineage", { _ | Dyn } ])
              | doc "Lineage, a tagged array of column references"
              | optional,
            location
              | js2n.Nullable String
              | doc "Data is at this location"
              | optional,
            materialization
              | js2n.Nullable refs."definitions.Materialization"
              | doc "The table-type of this table (new version)"
              | optional,
            meta | { _ | String } | doc "Metadata for this table" | optional,
            name
              | refs."definitions.String"
              | String
              | doc m%"
                The name of the table (syntax: [[catalog.]schema].table)
                
                Note: this field is typed as a [QualifiedName] for serialization. In almost all cases you should use the [Self::fqn()] method to get the fully qualified [TableName] instead of accessing this field directly.
              "%,
            origin
              | refs."definitions.TableOrigin"
              | String
              | doc "The origin of this table <remote> or <local>"
              | optional,
            partitioned-by
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Partition", { _ | Dyn } ]
              )
              | doc "The partitioning format of the table"
              | optional,
            purpose
              | js2n.Nullable refs."definitions.TablePurpose"
              | doc "Specify what kind of table or view this is"
              | optional,
            reclassify
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Reclassify", { _ | Dyn } ]
              )
              | doc "Array of reclassify instructions for changing the attached classifier labels"
              | optional,
            schedule
              | String
              | doc "The schedule of the table [expressed as cron]"
              | optional,
            sealed
              | js2n.Nullable Bool
              | doc "This table is either backed by a create table ddl or by a table definition in yml that is the table's complete schema"
              | optional,
            severity
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.Severity", String ])
              | doc "The default severity for this tables tests and checks"
              | optional,
            snapshot-options
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.SnapshotOptions", { _ | Dyn } ])
              | doc "Options governing snapshot table evaluation (only for snapshot tables)"
              | optional,
            source-locations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FilePath", { _ | Dyn } ]
              )
              | doc "Table is defined by these .sql and/or .sdf files"
              | optional,
            starting
              | String
              | doc "The first date of the table [expressed by prefixes of RFC 33]"
              | optional,
            table-location
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.TableLocation", String ])
              | doc "Specify table ,location, defaults to none if not set"
              | optional,
            tests
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Constraint", { _ | Dyn } ]
              )
              | optional,
            warehouse
              | js2n.Nullable String
              | doc "The warehouse where this table is computed"
              | optional,
            with-header
              | js2n.Nullable Bool
              | doc "CSV data has a header [only for external tables]"
              | optional,
          },
      "definitions.TableCreationFlags" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'create-new |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'drop-if-exists |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'skip-if-exists |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'create-or-replace |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'create-if-not-exists |] ]
            ],
      "definitions.TableLocation" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'intrinsic, 'remote, 'local, 'mirror |]
            ],
      "definitions.TableOrigin" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'remote, 'local |] ],
      "definitions.TablePurpose" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'report |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'model |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'check |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'test |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'stat |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'slt |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'system |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'external-system |] ]
            ],
      "definitions.TargetPattern" =
        {
            pattern
              | js2n.Nullable String
              | doc "A pattern must be a three part names with globs, eg. *.*.* matches all catalogs, schema and table in scope"
              | optional,
            patterns
              | Array String
              | doc "A list of patterns. A pattern must be a three part names with globs, eg. *.*.* matches all catalogs, schema and table in scope"
              | optional,
            preload
              | js2n.Nullable Bool
              | doc "Whether to preload the target"
              | optional,
            rename-as
              | js2n.Nullable String
              | doc "Renames targets, the ith ${i} matches the ith * of the name, so to prepend all catalogs,schema,table with _, use \"_${1}._${2}._${3}\""
              | optional,
          },
      "definitions.TypeBound" =
        {
            datatypes | Array String,
            type-variable | refs."definitions.String" | String,
          },
      "definitions.Variadic" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'non-uniform |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'uniform |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'even-odd |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'any |] ]
            ],
      "definitions.Volatility" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'pure |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'stable |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'volatile |] ]
            ],
      "definitions.Workspace" =
        {
            dbt
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.DbtConfig", { _ | Dyn } ])
              | doc "Configuration for dbt integration"
              | optional,
            defaults
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Defaults", { _ | Dyn } ])
              | doc "Defaults for this workspace"
              | optional,
            dependencies
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Dependency", { _ | Dyn } ]
              )
              | doc "Dependencies of the workspace to other workspaces or to cloud database providers"
              | optional,
            description
              | String
              | doc "A description of this workspace"
              | optional,
            edition
              | String
              | doc "The SDF edition, should always be 1.3 (1.2 is deprecated)",
            excludes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ExcludePath", { _ | Dyn } ]
              )
              | doc "An array of directories and filenames to be skipped when resolving includes"
              | optional,
            includes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IncludePath", { _ | Dyn } ]
              )
              | doc "An array of directories and filenames containing .sql and .sdf.yml files"
              | optional,
            integrations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Integration", { _ | Dyn } ]
              )
              | doc "The integrations for this environment"
              | optional,
            is-tablename-case-sensitive
              | Bool
              | doc m%"
                Whether table names are treated as case sensitive in this workspace Applies globally to the entire project, and is non-overridable. Defaults to false
                
                Note: this setting is *only* effective when set on the root workspace file, if set on included workspaces it will be ignored
              "%
              | optional,
            name
              | String
              | doc "The name of this workspace (defaults to the workspace directory name if not given) Name must be set for deployment.",
            repository
              | String
              | doc "The URL of the workspace source repository (defaults to 'none' if no repository is given)"
              | optional,
            source-locations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FilePath", { _ | Dyn } ]
              )
              | doc "Workspace defined by these set of files"
              | optional,
            vars
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.Constant",
                    std.contract.any_of [ js2n.Null, Bool, Number, String ]
                  ]
              }
              | doc "A map of named values for setting SQL variables from your environment Ex. -dt: dt, used in SQL as @dt, and in Jinja as "
              | optional,
          },
    }
    in
  {
      classifier
        | js2n.Nullable refs."definitions.Classifier"
        | doc "A classifier definition"
        | optional,
      config
        | js2n.Nullable refs."definitions.Config"
        | doc "A config definition"
        | optional,
      credential
        | js2n.Nullable
          (std.contract.Sequence [ refs."definitions.Credential", { _ | Dyn } ])
        | doc "A credential definition"
        | optional,
      environment
        | js2n.Nullable refs."definitions.Environment"
        | doc "A environment definition"
        | optional,
      function
        | js2n.Nullable refs."definitions.Function"
        | doc "A function definition"
        | optional,
      sdf-args
        | js2n.Nullable ({ _ | String })
        | doc "A config definition"
        | optional,
      table
        | js2n.Nullable refs."definitions.Table"
        | doc "A table definition"
        | optional,
      workspace
        | js2n.Nullable refs."definitions.Workspace"
        | doc "A workspace definition"
        | optional,
    }