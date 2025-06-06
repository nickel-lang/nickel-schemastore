# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.addAutoIncrement" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            columnDataType
              | String
              | doc "Current data type of the column to make auto-increment"
              | optional,
            columnName | String | doc "Name of the column",
            defaultOnNull
              | Bool
              | doc "When using generationType 'BY DEFAULT' then defaultOnNull = true allows the identity to be used if the identity column is referenced, but a value of NULL is specified."
              | optional,
            generationType
              | std.enum.TagOrString
              | [| '"BY DEFAULT", 'ALWAYS |]
              | doc "Type of the generation in 'GENERATED %s AS IDENTITY'. ALWAYS | BY DEFAULT"
              | optional,
            incrementBy
              | std.number.Integer
              | doc "Integer value the increment increments at each call"
              | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            startWith
              | std.number.Integer
              | doc "Initial integer value of the increment"
              | optional,
            tableName | refs."definitions.tableName" | String,
            ..
          },
      "definitions.addColumn" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            columns | refs."definitions.columns" | Array Dyn,
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            ..
          },
      "definitions.addDefaultValue" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            columnDataType
              | String
              | doc "The current data type of the column for which to add a default value."
              | optional,
            columnName
              | String
              | doc "The name of the column for which to add a default value.",
            defaultValue
              | String
              | doc "The default value. Either this property or one of the other defaultValue* properties are required."
              | optional,
            defaultValueBoolean
              | Bool
              | doc "The attribute that sets the default value for a column of a boolean type."
              | optional,
            defaultValueComputed
              | String
              | doc "The attribute that sets the default value for a column using a function which returns value of the same type as the column has."
              | optional,
            defaultValueConstraintName
              | String
              | doc "The attribute that sets a unique name for default constraint used for a specific column. It works only along with any of defaultValue* attributes listed."
              | optional,
            defaultValueDate
              | String
              | doc "The attribute that sets the default value for a column of a date type. For example: timestamp, datetime, date, and others."
              | optional,
            defaultValueNumeric
              | Number
              | doc "The attribute that sets the default value for a column of a numeric type. For example: integer, bigint, bigdecimal, and others."
              | optional,
            defaultValueSequenceNext
              | String
              | doc "The attribute that sets value for a specified column by using the value of the existing sequence. With every new input, the next value of the sequence will be taken."
              | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            ..
          },
      "definitions.addForeignKeyConstraint" =
        {
            baseColumnNames
              | String
              | doc "Name of column(s) to place the foreign key constraint on. Comma-separate if multiple",
            baseTableCatalogName
              | String
              | doc "Catalog name of the base table"
              | optional,
            baseTableName
              | String
              | doc "Name of the table containing the column to constraint",
            baseTableSchemaName
              | String
              | doc "Schema name of the base table"
              | optional,
            constraintName
              | String
              | doc "Name of the new foreign key constraint",
            deferrable | Bool | doc "Is the foreign key deferrable" | optional,
            deleteCascade | Bool | optional,
            initiallyDeferred
              | Bool
              | doc "Is the foreign key initially deferred"
              | optional,
            onDelete
              | String
              | doc "ON DELETE functionality. Possible values: 'CASCADE', 'SET NULL', 'SET DEFAULT', 'RESTRICT', 'NO ACTION'"
              | optional,
            onUpdate
              | String
              | doc "ON UPDATE functionality. Possible values: 'CASCADE', 'SET NULL', 'SET DEFAULT', 'RESTRICT', 'NO ACTION'"
              | optional,
            referencedColumnNames
              | String
              | doc "Column(s) the foreign key points to. Comma-separate if multiple",
            referencedTableCatalogName
              | String
              | doc "Schema name of the referenced table"
              | optional,
            referencedTableName
              | String
              | doc "Name of the table the foreign key points to",
            referencedTableSchemaName
              | String
              | doc "Schema name of the referenced table"
              | optional,
            referencesUniqueColumn | Bool | optional,
            validate
              | Bool
              | doc "Shall be true if the foreign key should 'ENABLE VALIDATE' set, or false if the foreign key should 'ENABLE NOVALIDATE' set."
              | optional,
            ..
          },
      "definitions.addLookupTable" =
        {
            constraintName
              | String
              | doc "Name of the foreign-key constraint to create between the existing table and the lookup table"
              | optional,
            existingColumnName
              | String
              | doc "Name of the column in the new table to create",
            existingTableCatalogName | String | optional,
            existingTableName
              | String
              | doc "Name of the table containing the data to extract",
            existingTableSchemaName | String | optional,
            newColumnDataType
              | String
              | doc "Data type of the new table column"
              | optional,
            newColumnName
              | String
              | doc "Name of the column in the new table to create",
            newTableCatalogName | String | optional,
            newTableName | String | doc "Name of lookup table to create",
            newTableSchemaName | String | optional,
            ..
          },
      "definitions.addNotNullConstraint" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            columnDataType
              | String
              | doc "The current data type of the column."
              | optional,
            columnName
              | String
              | doc "The name of the column for which to add the constraint.",
            constraintName
              | String
              | doc "The created constraint name (if database supports names for NOT NULL constraints)."
              | optional,
            defaultNullValue
              | String
              | doc "The value for which you can set all values that currently equal null in a column. If null values exist and if defaultNullValue is not set, the change will fail."
              | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            validate
              | Bool
              | doc "The attribute which is true if the NOT NULL constraint has 'ENABLE VALIDATE' set, or which is false if the NOT NULL constrain has 'ENABLE NOVALIDATE' set."
              | optional,
            ..
          },
      "definitions.addPrimaryKey" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            clustered | Bool | optional,
            columnNames
              | String
              | doc "Name of the column(s) to create the primary key on. Comma separated if multiple",
            constraintName
              | String
              | doc "Name of primary key constraint"
              | optional,
            forIndexCatalogName | String | optional,
            forIndexName | String | optional,
            forIndexSchemaName | String | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            tablespace | String | optional,
            validate
              | Bool
              | doc "This is true if the primary key has 'ENABLE VALIDATE' set, or false if the primary key has 'ENABLE NOVALIDATE' set."
              | optional,
            ..
          },
      "definitions.addUniqueConstraint" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            clustered
              | Bool
              | doc "Whether create a clustered index"
              | optional,
            columnNames
              | String
              | doc "Name of the column(s) to create the unique constraint on. Comma separated if multiple",
            constraintName
              | String
              | doc "Name of the unique constraint"
              | optional,
            deferrable
              | Bool
              | doc "True if this constraint is deferrable, False otherwise"
              | optional,
            disabled
              | Bool
              | doc "True if this constraint is disabled, False otherwise"
              | optional,
            forIndexCatalogName | String | optional,
            forIndexName | String | optional,
            forIndexSchemaName | String | optional,
            initiallyDeferred
              | Bool
              | doc "True if this constraint is initially deferred, False otherwise"
              | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            tablespace
              | String
              | doc "'Tablespace' to create the index in. Corresponds to file group in mssql"
              | optional,
            validate
              | Bool
              | doc "Should be true if the unique constraint shall 'ENABLE VALIDATE' set, or false if the 'ENABLE NOVALIDATE' shall."
              | optional,
            ..
          },
      "definitions.alterSequence" =
        {
            cacheSize
              | std.number.Integer
              | doc "Change the cache size"
              | optional,
            catalogName | refs."definitions.catalogName" | String | optional,
            cycle
              | Bool
              | doc "Can the sequence cycle when it hits the max value?"
              | optional,
            dataType | String | doc "Data type of the sequence" | optional,
            incrementBy
              | std.number.Integer
              | doc "New amount the sequence should increment by"
              | optional,
            maxValue
              | std.number.Integer
              | doc "New maximum value for the sequence"
              | optional,
            minValue
              | std.number.Integer
              | doc "New minimum value for the sequence"
              | optional,
            ordered
              | Bool
              | doc "Does the sequence need to be guaranteed to be generated in the order of request?"
              | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            sequenceName | String | doc "Name of the sequence to alter",
            ..
          },
      "definitions.catalogName" = String,
      "definitions.changes" =
        Array
            {
              addAutoIncrement
                | refs."definitions.addAutoIncrement"
                | { _ | Dyn }
                | optional,
              addColumn | refs."definitions.addColumn" | { _ | Dyn } | optional,
              addDefaultValue
                | refs."definitions.addDefaultValue"
                | { _ | Dyn }
                | optional,
              addForeignKeyConstraint
                | refs."definitions.addForeignKeyConstraint"
                | { _ | Dyn }
                | optional,
              addLookupTable
                | refs."definitions.addLookupTable"
                | { _ | Dyn }
                | optional,
              addNotNullConstraint
                | refs."definitions.addNotNullConstraint"
                | { _ | Dyn }
                | optional,
              addPrimaryKey
                | refs."definitions.addPrimaryKey"
                | { _ | Dyn }
                | optional,
              addUniqueConstraint
                | refs."definitions.addUniqueConstraint"
                | { _ | Dyn }
                | optional,
              alterSequence
                | refs."definitions.alterSequence"
                | { _ | Dyn }
                | optional,
              createIndex
                | refs."definitions.createIndex"
                | { _ | Dyn }
                | optional,
              createProcedure
                | refs."definitions.createProcedure"
                | { _ | Dyn }
                | optional,
              createSequence
                | refs."definitions.createSequence"
                | { _ | Dyn }
                | optional,
              createTable
                | refs."definitions.createTable"
                | { _ | Dyn }
                | optional,
              createView
                | refs."definitions.createView"
                | { _ | Dyn }
                | optional,
              customChange
                | refs."definitions.customChange"
                | { _ | Dyn }
                | optional,
              delete | refs."definitions.delete" | { _ | Dyn } | optional,
              dropAllForeignKeyConstraints
                | refs."definitions.dropAllForeignKeyConstraints"
                | { _ | Dyn }
                | optional,
              dropColumn
                | refs."definitions.dropColumn"
                | { _ | Dyn }
                | optional,
              dropDefaultValue
                | refs."definitions.dropDefaultValue"
                | { _ | Dyn }
                | optional,
              dropForeignKeyConstraint
                | refs."definitions.dropForeignKeyConstraint"
                | { _ | Dyn }
                | optional,
              dropIndex | refs."definitions.dropIndex" | { _ | Dyn } | optional,
              dropNotNullConstraint
                | refs."definitions.dropNotNullConstraint"
                | { _ | Dyn }
                | optional,
              dropPrimaryKey
                | refs."definitions.dropPrimaryKey"
                | { _ | Dyn }
                | optional,
              dropProcedure
                | refs."definitions.dropProcedure"
                | { _ | Dyn }
                | optional,
              dropSequence
                | refs."definitions.dropSequence"
                | { _ | Dyn }
                | optional,
              dropTable | refs."definitions.dropTable" | { _ | Dyn } | optional,
              dropUniqueConstraint
                | refs."definitions.dropUniqueConstraint"
                | { _ | Dyn }
                | optional,
              dropView | refs."definitions.dropView" | { _ | Dyn } | optional,
              empty | refs."definitions.empty" | { _ | Dyn } | optional,
              executeCommand
                | refs."definitions.executeCommand"
                | { _ | Dyn }
                | optional,
              insert | refs."definitions.insert" | { _ | Dyn } | optional,
              loadData | refs."definitions.loadData" | { _ | Dyn } | optional,
              loadUpdateData
                | refs."definitions.loadUpdateData"
                | { _ | Dyn }
                | optional,
              mergeColumns
                | refs."definitions.mergeColumns"
                | { _ | Dyn }
                | optional,
              modifyDataType
                | refs."definitions.modifyDataType"
                | { _ | Dyn }
                | optional,
              modifySql | refs."definitions.modifySql" | { _ | Dyn } | optional,
              output | refs."definitions.output" | { _ | Dyn } | optional,
              renameColumn
                | refs."definitions.renameColumn"
                | { _ | Dyn }
                | optional,
              renameSequence
                | refs."definitions.renameSequence"
                | { _ | Dyn }
                | optional,
              renameTable
                | refs."definitions.renameTable"
                | { _ | Dyn }
                | optional,
              renameView
                | refs."definitions.renameView"
                | { _ | Dyn }
                | optional,
              setColumnRemarks
                | refs."definitions.setColumnRemarks"
                | { _ | Dyn }
                | optional,
              setTableRemarks
                | refs."definitions.setTableRemarks"
                | { _ | Dyn }
                | optional,
              sql | refs."definitions.sql" | { _ | Dyn } | optional,
              sqlFile | refs."definitions.sqlFile" | { _ | Dyn } | optional,
              stop | refs."definitions.stop" | { _ | Dyn } | optional,
              tagDatabase
                | refs."definitions.tagDatabase"
                | { _ | Dyn }
                | optional,
              update | refs."definitions.update" | { _ | Dyn } | optional,
              ..
            },
      "definitions.column" =
        {
            afterColumn
              | String
              | doc "The attribute that allows you to control where in the table column order the new column goes if it is used in an addColumn command. Only one of beforeColumn, afterColumn, or position is allowed. Since 3.1"
              | optional,
            autoIncrement
              | Bool
              | doc "The auto-increment column. Ignored on databases that do not support the autoincrement/identity functionality."
              | optional,
            beforeColumn
              | String
              | doc "The attribute that allows you to control where in the table column order the new column goes if it is used in an addColumn command. Only one of beforeColumn, afterColumn, or position is allowed. Since 3.1"
              | optional,
            computed
              | Bool
              | doc "The attribute which is used if the value in name isn't actually a column name but a function. Since 3.3.0"
              | optional,
            constraints
              | {
                checkConstraint
                  | String
                  | doc "The attribute that defines whether to validate the defined check constraint."
                  | optional,
                deferrable
                  | Bool
                  | doc "The attribute that defines whether constraints are deferrable."
                  | optional,
                deleteCascade
                  | Bool
                  | doc "The attribute that sets delete cascade."
                  | optional,
                foreignKeyName
                  | String
                  | doc "The foreign key name."
                  | optional,
                initiallyDeferred
                  | Bool
                  | doc "The attribute that defines whether constraints are initially deferred."
                  | optional,
                notNullConstraintName
                  | String
                  | doc "The not null constraint name."
                  | optional,
                nullable
                  | Bool
                  | doc "The attribute that defines whether the column is nullable."
                  | optional,
                primaryKey
                  | Bool
                  | doc "The attribute that defines whether the column is a primary key."
                  | optional,
                primaryKeyName
                  | String
                  | doc "The primary key name Since 1.6."
                  | optional,
                primaryKeyTablespace
                  | String
                  | doc "The tablespace to use for the defined primary key."
                  | optional,
                referencedColumnNames
                  | String
                  | doc "The name of the column."
                  | optional,
                referencedTableCatalogName
                  | String
                  | doc "The name of the catalog."
                  | optional,
                referencedTableName
                  | String
                  | doc "The name of the table."
                  | optional,
                referencedTableSchemaName
                  | String
                  | doc "The name of the schema."
                  | optional,
                references
                  | String
                  | doc "The foreign key definition."
                  | optional,
                unique
                  | Bool
                  | doc "The attribute that defines whether a unique clause should be applied."
                  | optional,
                uniqueConstraintName
                  | String
                  | doc "The unique constraint name."
                  | optional,
                validateForeignKey
                  | Bool
                  | doc "The attribute that defines whether to validate the defined foreign key constraint."
                  | optional,
                validateNullable
                  | Bool
                  | doc "The attribute that defines whether to validate the defined not null constraint."
                  | optional,
                validatePrimaryKey
                  | Bool
                  | doc "The attribute that defines whether to validate the defined primary key constraint."
                  | optional,
                validateUnique
                  | Bool
                  | doc "The attribute that defines whether to validate the defined unique constraint."
                  | optional,
                ..
              }
              | doc "Constraint definitions"
              | optional,
            defaultOnNull | Bool | optional,
            defaultValue
              | String
              | doc "The default value for column."
              | optional,
            defaultValueBoolean
              | Bool
              | doc "The default boolean value for column."
              | optional,
            defaultValueComputed
              | String
              | doc "The default value that is returned from a function or procedure call. This attribute will contain the function to call."
              | optional,
            defaultValueConstraintName | String | optional,
            defaultValueDate
              | String
              | doc "The default date and time value for column. The value is specified in one of the following forms: YYYY-MM-DD, hh:mm:ss, or YYYY-MM-DDThh:mm:ss."
              | optional,
            defaultValueNumeric
              | Number
              | doc "The default numeric value for column."
              | optional,
            defaultValueSequenceCurrent | String | optional,
            defaultValueSequenceNext | String | optional,
            descending
              | Bool
              | doc "The boolean attribute which allows you to specify that a column should be used in a descending order in the index if it is used in a createIndex command. Default value is false (in an ascending order) Since 3.4"
              | optional,
            encoding
              | String
              | doc "The name of the encoding (specified in java.nio.Charset javadoc, e.g. \"UTF-8\") of the CLOB file (specified in valueClobFile) contents."
              | optional,
            generationType | String | optional,
            header
              | String
              | doc "Name of the column in the CSV file from which the value for the column will be taken if its different from the column name. Ignored if index is also defined."
              | optional,
            incrementBy
              | std.number.Integer
              | doc "The value of each step by auto-increment. Ignored on databases that do not support autoincrement/identity functionality."
              | optional,
            index
              | std.number.Integer
              | doc "Index of the column in the CSV file from which the value for the column will be taken."
              | optional,
            name | String | doc "The name of the column.",
            position
              | Number
              | doc "The attribute that allows you to control where in the table column order the new column goes if it is used in an addColumn command. Only one of beforeColumn, afterColumn, or position is allowed. Uses one based index. Since 3.1"
              | optional,
            remarks
              | String
              | doc "A short description of the column (column comment)."
              | optional,
            startWith
              | std.number.Integer
              | doc "The value auto-increment start. Ignored on databases that do not support autoincrement/identity functionality."
              | optional,
            type | String | doc "The column data type." | optional,
            value
              | String
              | doc "The value for which to set the column. The value will be surrounded by quote marks and nested quote marks will be escaped."
              | optional,
            valueBlobFile
              | String
              | doc m%"
                The path to a file, whose contents will be written as a BLOB (i.e. chunk of binary data).
                
                The path to the changelog file location must be either absolute or relative. An example of an absolute path is: /usr/local/somefile.dat on Unix or c:\Directory\somefile.dat on Windows.
              "%
              | optional,
            valueBoolean
              | Bool
              | doc "The boolean value to set the column to. The actual value string inserted will depend on the database implementation."
              | optional,
            valueClobFile
              | String
              | doc m%"
                The path to a file, whose contents will be written as a CLOB (i.e. chunk of character data).
                The path to the changelog file location must be either absolute or relative. An example of an absolute path is: /usr/local/somefile.dat on Unix or c:\Directory\somefile.dat on Windows.
              "%
              | optional,
            valueComputed
              | String
              | doc "The value that is returned from a function or procedure call. This attribute will contain the function to call."
              | optional,
            valueDate
              | String
              | doc "The date and time value to set the column to. The value is specified in one of the following forms: YYYY-MM-DD, hh:mm:ss, or YYYY-MM-DDThh:mm:ss."
              | optional,
            valueNumeric
              | Number
              | doc "The numeric value to set the column to. The value will not be escaped and will not be nested in quote marks."
              | optional,
            valueSequenceCurrent
              | String
              | doc "The name of the sequence in which the current value is used."
              | optional,
            valueSequenceNext
              | String
              | doc "The name of the sequence in which the next value is used."
              | optional,
            ..
          },
      "definitions.columns" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array
                {
                  column | refs."definitions.column" | { _ | Dyn } | optional,
                  modifySql
                    | refs."definitions.modifySql"
                    | { _ | Dyn }
                    | optional,
                  ..
                }
            ],
      "definitions.createIndex" =
        {
            associatedWith | String | optional,
            catalogName | refs."definitions.catalogName" | String | optional,
            clustered
              | Bool
              | doc "The attribute that creates a clustered index."
              | optional,
            column | refs."definitions.column" | { _ | Dyn } | optional,
            columns | refs."definitions.columns" | Array Dyn | optional,
            indexName
              | String
              | doc "The name of the index to create."
              | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            tablespace
              | String
              | doc "The tablespace in which you create the index."
              | optional,
            unique | Bool | doc "The unique values in the index." | optional,
            ..
          },
      "definitions.createProcedure" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            comments
              | String
              | doc "The comments you can specify in the changeset."
              | optional,
            dbms | refs."definitions.dbms" | String | optional,
            encoding
              | String
              | doc "The encoding used in the file defined in the `path` attribute"
              | optional,
            path
              | String
              | doc "The file containing the procedure text. Either this attribute or a nested procedure text is required.",
            procedureName
              | String
              | doc "The name of the procedure. It is required if replaceIfExists= true"
              | optional,
            procedureText
              | String
              | doc "The SQL creating the procedure. You need to define either this attribute or the path attribute. The procedureText attribute is not supported in the XML format; however, you can specify the procedure SQL within <createProcedure></<createProcedure> tags. See the XML example.",
            relativeToChangelogFile
              | Bool
              | doc "Defines whether the file path is relative to the root changelog file rather than to the classpath."
              | optional,
            replaceIfExists
              | Bool
              | doc "If the stored procedure defined by procedureName already exits, alter it instead of creating it."
              | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            ..
          },
      "definitions.createSequence" =
        {
            cacheSize
              | std.number.Integer
              | doc "Number of values to fetch per query"
              | optional,
            catalogName | refs."definitions.catalogName" | String | optional,
            cycle
              | Bool
              | doc "Can the sequence cycle when it hits the max value?"
              | optional,
            dataType | String | doc "Data type of the sequence" | optional,
            incrementBy
              | std.number.Integer
              | doc "Interval between sequence numbers"
              | optional,
            maxValue
              | std.number.Integer
              | doc "The maximum value of the sequence"
              | optional,
            minValue
              | std.number.Integer
              | doc "The minimum value of the sequence"
              | optional,
            ordered
              | Bool
              | doc "Does the sequence need to be guaranteed to be generated in the order of request?"
              | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            sequenceName | String | doc "Name of the sequence to create",
            startValue
              | std.number.Integer
              | doc "The first sequence number to be generated."
              | optional,
            ..
          },
      "definitions.createTable" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            columns | refs."definitions.columns" | Array Dyn,
            remarks | refs."definitions.remarks" | String | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            tablespace
              | String
              | doc "The name of the tablespace in which the table is created"
              | optional,
            ..
          },
      "definitions.createView" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            encoding
              | String
              | doc "Encoding used in the file defined in the `path` attribute"
              | optional,
            fullDefinition
              | Bool
              | doc "Set to true if selectQuery is the entire view definition. False if the CREATE VIEW header should be added."
              | optional,
            path
              | String
              | doc "Path to file containing view definition"
              | optional,
            relativeToChangelogFile
              | Bool
              | doc "Whether the file path relative to the root changelog file rather than to the classpath."
              | optional,
            remarks | refs."definitions.remarks" | String | optional,
            replaceIfExists
              | Bool
              | doc "Use 'create or replace' syntax"
              | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            selectQuery | String | doc "SQL for generating the view" | optional,
            viewName | String | doc "Name of the view to create" | optional,
            ..
          },
      "definitions.customChange" = { class | String, .. },
      "definitions.dbms" = String,
      "definitions.delete" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            where | refs."definitions.where" | String | optional,
            whereParams | refs."definitions.whereParams" | Array Dyn | optional,
            ..
          },
      "definitions.dropAllForeignKeyConstraints" =
        {
            baseTableCatalogName
              | String
              | doc "Catalog name of the table containing columns constrained by foreign keys"
              | optional,
            baseTableName
              | String
              | doc "Name of the table containing columns constrained by foreign keys",
            baseTableSchemaName
              | String
              | doc "Schema name of the table containing columns constrained by foreign keys"
              | optional,
            ..
          },
      "definitions.dropColumn" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            columnName
              | String
              | doc "Name of the column to drop, if dropping a single column. Ignored if nested 'column's are defined"
              | optional,
            columns | refs."definitions.columns" | Array Dyn | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            ..
          },
      "definitions.dropDefaultValue" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            columnDataType | String | optional,
            columnName
              | String
              | doc "Name of column to drop the default value from",
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            ..
          },
      "definitions.dropForeignKeyConstraint" =
        {
            baseTableCatalogName | String | optional,
            baseTableName
              | String
              | doc "Name of the table containing the column constrained by the foreign key",
            baseTableSchemaName | String | optional,
            constraintName
              | String
              | doc "Name of the foreign key constraint to drop",
            ..
          },
      "definitions.dropIndex" =
        {
            associatedWith | String | optional,
            catalogName | refs."definitions.catalogName" | String | optional,
            indexName | String | doc "The name of the index to drop.",
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String | optional,
            ..
          },
      "definitions.dropNotNullConstraint" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            columnDataType
              | String
              | doc "Current data type of the column"
              | optional,
            columnName
              | String
              | doc "Name of the column to drop the constraint from",
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            ..
          },
      "definitions.dropPrimaryKey" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            constraintName
              | String
              | doc "The name of the primary key."
              | optional,
            dropIndex | Bool | doc "The index to drop." | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            ..
          },
      "definitions.dropProcedure" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            procedureName | String | doc "Name of the stored procedure to drop",
            schemaName | refs."definitions.schemaName" | String | optional,
            ..
          },
      "definitions.dropSequence" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            sequenceName | String | doc "Name of the sequence to drop",
            ..
          },
      "definitions.dropTable" =
        {
            cascadeConstraints
              | Bool
              | doc "Add the `CASCADE CONSTRAINTS` to the statement"
              | optional,
            catalogName | refs."definitions.catalogName" | String | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            ..
          },
      "definitions.dropUniqueConstraint" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            constraintName | String | doc "Name of unique constraint to drop",
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            uniqueColumns | String | optional,
            ..
          },
      "definitions.dropView" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            viewName | String | doc "Name of the view to drop",
            ..
          },
      "definitions.empty" = {  .. },
      "definitions.executeCommand" =
        {
            arg
              | {
                value
                  | String
                  | doc "The value of the attribute (for example: '-param')"
                  | optional,
                ..
              }
              | doc "Arguments for the executable"
              | optional,
            args
              | Array
                {
                  value
                    | String
                    | doc "The value of the attribute (for example: '-param')"
                    | optional,
                  ..
                }
              | doc "Arguments for the executable"
              | optional,
            executable | String | doc "The name of the executable to run",
            os
              | String
              | doc "The list of operating systems on which to execute the command (taken from the os.name Java system property)"
              | optional,
            timeout
              | String
              | doc "The timeout value for executable to run"
              | optional,
            ..
          },
      "definitions.insert" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            columns | refs."definitions.columns" | Array Dyn | optional,
            dbms | refs."definitions.dbms" | String | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            ..
          },
      "definitions.loadData" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            column | refs."definitions.column" | { _ | Dyn } | optional,
            columns | refs."definitions.columns" | Array Dyn | optional,
            commentLineStartsWith
              | String
              | doc "Lines starting with this are treated as comment and ignored."
              | optional,
            encoding
              | String
              | doc "Encoding of the CSV file (defaults to UTF-8)."
              | optional,
            file | String | doc "CSV file to load.",
            quotchar
              | String
              | doc "The quote character for string fields containing the separator character."
              | optional,
            relativeToChangelogFile
              | Bool
              | doc "Whether the file path relative to the root changelog file rather than to the classpath."
              | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            separator
              | String
              | doc "Character separating the fields."
              | optional,
            tableName | refs."definitions.tableName" | String,
            usePreparedStatements
              | Bool
              | doc "Use prepared statements instead of insert statement strings if the database supports it."
              | optional,
            ..
          },
      "definitions.loadUpdateData" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            column | refs."definitions.column" | { _ | Dyn } | optional,
            columns | refs."definitions.columns" | Array Dyn | optional,
            commentLineStartsWith
              | String
              | doc "Lines starting with this are treated as comment and ignored."
              | optional,
            encoding
              | String
              | doc "Encoding of the CSV file (defaults to UTF-8)"
              | optional,
            file | String | doc "CSV file to load",
            onlyUpdate
              | Bool
              | doc "If true, records with no matching database record should be ignored"
              | optional,
            primaryKey
              | String
              | doc "Comma delimited list of the columns for the primary key",
            quotchar
              | String
              | doc "The quote character for string fields containing the separator character."
              | optional,
            relativeToChangelogFile
              | Bool
              | doc "Whether the file path relative to the root changelog file rather than to the classpath."
              | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            separator
              | String
              | doc "Character separating the fields."
              | optional,
            tableName | refs."definitions.tableName" | String,
            usePreparedStatements
              | Bool
              | doc "Use prepared statements instead of insert statement strings if the DB supports it."
              | optional,
            ..
          },
      "definitions.mergeColumns" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            column1Name
              | String
              | doc "The name of the column containing the first half of the data",
            column2Name
              | String
              | doc "The name of the column containing the second half of the data",
            finalColumnName | String | doc "The name of the column to create",
            finalColumnType
              | String
              | doc "The data type of the column to create",
            joinString
              | String
              | doc "The string to place between the values from column1 and column2 (may be empty)"
              | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            ..
          },
      "definitions.modifyDataType" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            columnName | String | doc "Name of the column",
            newDataType | String,
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            ..
          },
      "definitions.modifySql" =
        {
            append
              | { value | String | optional, .. }
              | doc "Adds SQL to the end of the statement."
              | optional,
            applyToRollback
              | Bool
              | doc "Defines whether the SQL modification should be applied to rollback statements. The default value is false. Since 2.0"
              | optional,
            context
              | String
              | doc "Specifies the list of Contexts in which to run the SQL modification. If you do not specify any context, every changeset will be applied. Since 2.0"
              | optional,
            dbms | refs."definitions.dbms" | String | optional,
            labels | String | optional,
            prepend
              | { value | String | optional, .. }
              | doc "Adds SQL to the beginning of the statement."
              | optional,
            regExpReplace
              | { replace | String | optional, with | String | optional, .. }
              | doc "Replaces all instances of the regular expression specified."
              | optional,
            replace
              | { replace | String | optional, with | String | optional, .. }
              | doc "Replaces all instances of the text specified."
              | optional,
            ..
          },
      "definitions.output" =
        {
            message | String | doc "Message to output" | optional,
            target
              | std.enum.TagOrString
              | [| 'DEBUG, 'INFO, 'WARN, 'FATAL, 'STDERR, 'STDOUT |]
              | doc "Target for message. Possible values: STDOUT, STDERR, FATAL, WARN, INFO, DEBUG. Default value: STDERR"
              | optional,
            ..
          },
      "definitions.preConditions" =
        Array
            {
              and | js2n.Always | Array Dyn | optional,
              changeLogPropertyDefined
                | {
                  property
                    | String
                    | doc "The name of the property to check. (required)",
                  value
                    | String
                    | doc "The required value for a given property."
                    | optional,
                  ..
                }
                | doc "Checks whether given changelog attribute is present. It fails if the value is not the same as given."
                | optional,
              changeSetExecuted
                | {
                  author | String | doc "The changeset author. (required)",
                  changeLogFile
                    | String
                    | doc "The file name (including classpath relative path) of the changeset. (required)",
                  id | String | doc "The changeset id. (required)",
                  ..
                }
                | doc "Defines if the specified changeset has already been executed."
                | optional,
              columnExists
                | {
                  columnName
                    | String
                    | doc "The name of the column. (required)",
                  schemaName
                    | String
                    | doc "The name of the table's schema."
                    | optional,
                  tableName
                    | String
                    | doc "The name of the column's table. (required)",
                  ..
                }
                | doc "Defines if the specified column exists in the database."
                | optional,
              customPrecondition
                | {
                  className
                    | String
                    | doc "The name of the custom precondition class. (required)",
                  ..
                }
                | doc m%"
                  Can be created by adding a class that implements the liquibase.precondition.CustomPrecondition interface. Parameters on custom classes are set through reflection based on the <param> sub-tags. Pass parameters as strings to the custom precondition.
                  
                  The customPrecondition sub-tags:
                  param - the parameter to pass to the custom precondition.
                  name - the name of the parameter to set. (required)
                  value - a string value to set parameter to. (required)
                "%
                | optional,
              dbms
                | {
                  type
                    | String
                    | doc "The type of database expected. Multiple dbms values can be specified using comma-separated values. (required)",
                  ..
                }
                | doc "Defines if the database executed against matches the type specified."
                | optional,
              foreignKeyConstraintExists
                | {
                  foreignKeyName
                    | String
                    | doc "The name of the foreign key. (required)",
                  schemaName
                    | String
                    | doc "The name of the foreign key's schema."
                    | optional,
                  ..
                }
                | doc "Defines if the specified foreign key exists in the database."
                | optional,
              indexExists
                | {
                  columnName
                    | String
                    | doc "The name of the column."
                    | optional,
                  indexName | String | doc "The name of the index." | optional,
                  schemaName
                    | String
                    | doc "The name of the index's schema."
                    | optional,
                  tableName | String | doc "The name of the table." | optional,
                  ..
                }
                | doc m%"
                  Defines if the specified index exists in the database. You can either specify the indexName attribute or tableName and columnName attributes.
                  Note: There are a few databases where the indexName is not unique, that's why both indexName and tableName can be used.
                "%
                | optional,
              not | js2n.Always | Array Dyn | optional,
              onError
                | js2n.OneOf
                  [
                    js2n.Const "HALT",
                    js2n.Const "CONTINUE",
                    js2n.Const "MARK_RAN",
                    js2n.Const "WARN"
                  ]
                | String
                | doc "Controls what happens if there is an error checking whether the precondition passed or not."
                | optional,
              onErrorMessage
                | String
                | doc "Provides a custom message to output when preconditions fail. Since 2.0"
                | optional,
              onFail
                | js2n.OneOf
                  [
                    js2n.Const "HALT",
                    js2n.Const "CONTINUE",
                    js2n.Const "MARK_RAN",
                    js2n.Const "WARN"
                  ]
                | String
                | doc "Controls what happens if the preconditions check fails."
                | optional,
              onFailMessage
                | String
                | doc "Provides a custom message to output when preconditions fail. Since 2.0"
                | optional,
              onSqlOutput
                | js2n.OneOf
                  [ js2n.Const "TEST", js2n.Const "FAIL", js2n.Const "IGNORE" ]
                | String
                | doc "Controls what to do in the updateSQL mode. Since 1.9.5"
                | optional,
              or | js2n.Always | Array Dyn | optional,
              primaryKeyExists
                | {
                  primaryKeyName
                    | String
                    | doc "The name of the primary key."
                    | optional,
                  schemaName
                    | String
                    | doc "The name of the primary key's schema."
                    | optional,
                  tableName
                    | String
                    | doc "The name of the table containing primary key."
                    | optional,
                  ..
                }
                | doc m%"
                  Defines if the specified primary key exists in the database.
                  (tableName or primaryKeyName is required)
                "%
                | optional,
              runningAs
                | {
                  username
                    | String
                    | doc "The database user script which is expected to run as. (required)",
                  ..
                }
                | doc "Defines if the database user executed under matches the username specified."
                | optional,
              sequenceExists
                | {
                  schemaName
                    | String
                    | doc "The name of the sequences' schema."
                    | optional,
                  sequenceName
                    | String
                    | doc "The name of the sequence. (required)",
                  ..
                }
                | doc "Defines if the specified sequence exists in the database."
                | optional,
              sqlCheck
                | {
                  expectedResult
                    | std.number.Integer
                    | doc "The value to compare the SQL result to. (required)",
                  sql | String | optional,
                  ..
                }
                | doc m%"
                  Executes an SQL string and checks the returned value. The SQL must return a single row with a single value.
                  
                  To check a number of rows, use the count SQL function.
                  To check for ranges of values, perform the check in the SQL and return a value that can be easily compared against.
                "%
                | optional,
              tableExists
                | {
                  schemaName
                    | String
                    | doc "The name of the table's schema."
                    | optional,
                  tableName | String | doc "The name of the table. (required)",
                  ..
                }
                | doc "Defines if the specified table exists in the database."
                | optional,
              viewExists
                | {
                  schemaName
                    | String
                    | doc "The name of the view's schema."
                    | optional,
                  viewName | String | doc "The name of the view. (required)",
                  ..
                }
                | doc "Defines if the specified view exists in the database."
                | optional,
              ..
            },
      "definitions.remarks" = String,
      "definitions.renameColumn" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            columnDataType | String | doc "Data type of the column" | optional,
            newColumnName | String | doc "Name to rename the column to",
            oldColumnName
              | String
              | doc "Name of the existing column to rename",
            remarks | String | doc "Remarks of the column" | optional,
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            ..
          },
      "definitions.renameSequence" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            newSequenceName | String | doc "New name for the sequence",
            oldSequenceName | String | doc "Name of the sequence to rename",
            schemaName | refs."definitions.schemaName" | String | optional,
            ..
          },
      "definitions.renameTable" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            newTableName | String | doc "New name for the table",
            oldTableName | String | doc "Name of the table to rename",
            schemaName | refs."definitions.schemaName" | String | optional,
            ..
          },
      "definitions.renameView" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            newViewName | String | doc "Name to rename the view to",
            oldViewName | String | doc "Name of the view to rename",
            schemaName | refs."definitions.schemaName" | String | optional,
            ..
          },
      "definitions.schemaName" = String,
      "definitions.setColumnRemarks" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            columnName | String | doc "The name of the column",
            remarks | String | doc "The comment to set on the column",
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            ..
          },
      "definitions.setTableRemarks" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            remarks | String | doc "Comment to set on the table",
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            ..
          },
      "definitions.sql" =
        {
            comment | String | optional,
            dbms | refs."definitions.dbms" | String | optional,
            endDelimiter
              | String
              | doc m%"
                Indicates the end of the SQL statement and prevents incomplete SQL statements from being processed when the SQL files contain statements referencing a ; which Liquibase treats as the default end delimiter. You can use the endDelimiter when the changeset contains SQL to create a stored procedure or function that contains the default ; end delimiter to separate the statements inside the procedure.
                For more information, see The endDelimiter SQL attribute.
              "%
              | optional,
            splitStatements
              | Bool
              | doc "Set to false to not have Liquibase split statements on ;'s and GO's. Defaults to true if not set"
              | optional,
            sql | String | doc "Specifies the SQL to execute",
            stripComments
              | Bool
              | doc "Set to true to remove any comments in the SQL before executing, otherwise false."
              | optional,
            ..
          },
      "definitions.sqlFile" =
        {
            comment | String | optional,
            dbms | refs."definitions.dbms" | String | optional,
            encoding
              | String
              | doc "Specifies encoding used in the file defined in the `path` attribute."
              | optional,
            endDelimiter
              | String
              | doc m%"
                Indicates the end of the SQL statement and prevents incomplete SQL statements from being processed when the SQL files contain statements referencing a ; which Liquibase treats as the default end delimiter. You can use the endDelimiter when the changeset contains SQL to create a stored procedure or function that contains the default ; end delimiter to separate the statements inside the procedure.
                For more information, see The endDelimiter SQL attribute.
              "%
              | optional,
            path
              | String
              | doc "Specifies the file path of the SQL file to load.",
            relativeToChangelogFile
              | Bool
              | doc "Indicates whether the file path is relative to the root changelog file rather than to the classpath."
              | optional,
            splitStatements
              | Bool
              | doc "Set to false to not have Liquibase split statements on ;'s and GO's. Defaults to true if not set."
              | optional,
            stripComments
              | Bool
              | doc "Set to true to remove any comments in the SQL before executing, otherwise false."
              | optional,
            ..
          },
      "definitions.stop" =
        {
            message
              | String
              | doc "Message to output when execution stops"
              | optional,
            ..
          },
      "definitions.tableName" = String,
      "definitions.tagDatabase" = { tag | String | doc "The tag to apply", .. },
      "definitions.update" =
        {
            catalogName | refs."definitions.catalogName" | String | optional,
            columns | refs."definitions.columns" | Array Dyn,
            schemaName | refs."definitions.schemaName" | String | optional,
            tableName | refs."definitions.tableName" | String,
            where | refs."definitions.where" | String | optional,
            whereParams | refs."definitions.whereParams" | Array Dyn | optional,
            ..
          },
      "definitions.where" = String,
      "definitions.whereParams" =
        Array
            {
              param
                | {
                  name | String | optional,
                  value
                    | String
                    | doc m%"
                      Value of the attribute.
                      Note: If not set, then the first valueXXX defined is used in the order they appear.
                    "%
                    | optional,
                  valueBoolean
                    | Bool
                    | doc "boolean value of the attribute."
                    | optional,
                  valueComputed
                    | String
                    | doc "A value that is returned from a function or procedure call. This attribute shall contain the function name to call."
                    | optional,
                  valueDate
                    | String
                    | doc "Date and/or Time value to set the attribute to. The value shall be specified in one of the following forms: \"YYYY-MM-DD\", \"hh:mm:ss\" or \"YYYY-MM-DDThh:mm:ss\"."
                    | optional,
                  valueNumeric
                    | Number
                    | doc "integer value of the attribute."
                    | optional,
                  valueSequenceCurrent
                    | String
                    | doc "Name of the sequence which current value is used"
                    | optional,
                  valueSequenceNext
                    | String
                    | doc "Name of the sequence which next value is used"
                    | optional,
                  ..
                }
                | optional,
              ..
            },
    }
    in
  {
      databaseChangeLog
        | Array
          {
            changeSet
              | {
                author
                  | String
                  | doc "Specifies the creator of the changeset. Required",
                changes | refs."definitions.changes" | optional,
                comment
                  | String
                  | doc "Specifies the description of the changeset. XML comments will provide the same benefit. Future releases of Liquibase may be able to make use of <comment> tag comments to generate documentation."
                  | optional,
                context
                  | String
                  | doc "Controls whether a changeset is executed depending on runtime settings. Any string can be used for the context name and they are checked case-insensitively."
                  | optional,
                created
                  | String
                  | doc "Stores dates, versions, or any other string of value without using remarks (comments) attributes. Since 3.5"
                  | optional,
                dbms | refs."definitions.dbms" | optional,
                failOnError
                  | Bool
                  | doc "Defines whether the migration will fail if an error occurs while executing the changeset. Default value is true."
                  | optional,
                id
                  | String
                  | doc "Specifies an alphanumeric identifier. Required",
                ignore
                  | Bool
                  | doc "Ignores the changeset from the execution. Since 3.6"
                  | optional,
                labels
                  | String
                  | doc "Controls whether a changeset is executed depending on runtime settings. Any string can be used for the label name and they are checked case-insensitively."
                  | optional,
                logicalFilePath
                  | String
                  | doc "Overrides the file name and path when creating the unique identifier of changesets. Required when moving or renaming changelog."
                  | optional,
                modifySql | Array refs."definitions.modifySql" | optional,
                objectQuotingStrategy
                  | String
                  | doc m%"
                    Controls how object names are quoted in the generated SQL or used in calls to the database. Different databases do different things to the names of objects. For example, Oracle converts everything to uppercase (unless quoted). There are three possible values. The default value is LEGACY.
                    LEGACY - the same behavior as in Liquibase 2.0
                    QUOTE_ALL_OBJECTS - every object gets quoted. For example: person becomes "person".
                    QUOTE_ONLY_RESERVED_WORDS - reserved keywords and invalid column names are quoted.
                  "%
                  | optional,
                onValidationFail | String | optional,
                preConditions | refs."definitions.preConditions" | optional,
                rollback
                  | std.contract.any_of
                    [
                      {},
                      refs."definitions.changes",
                      String,
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                changeSetAuthor = String,
                                changeSetId = String,
                                changeSetPath = String,
                              },
                          required =
                            { changeSetAuthor = true, changeSetId = true, },
                        }
                    ]
                  | optional,
                runAlways
                  | Bool
                  | doc "Executes the changeset on every run, even if it has been run before."
                  | optional,
                runInTransaction
                  | Bool
                  | doc "Specifies whether the changeset can be ran as a single transaction (if possible). Default value is true."
                  | optional,
                runOnChange
                  | Bool
                  | doc "Executes the changeset the first time and each time the changeset has been changed."
                  | optional,
                runOrder
                  | String
                  | doc "Overrides the order in the changelog from where the changeset with the runOrder=\"first|last\" will be run. It is typically used when you want a changeset to be always executed after everything else but don't want to keep moving it to the end of the changelog. Setting the runOrder to last will automatically move it in the final changeset order.Since 3.5"
                  | optional,
                runWith | String | optional,
                validCheckSum
                  | Array String
                  | doc "Adds a checksum that is considered valid for this changeset, regardless of what is stored in the database. It is primarily used when you need to change a changeset and don't want errors thrown on databases on which it has already been run (not a recommended procedure). Special value \"1:any\" will match to any checksum and will not execute the changeset on ANY change. Since 1.7"
                  | optional,
                ..
              }
              | doc m%"
                The changeset tag is a unit of change that Liquibase executes on a database and which is used to group database Change Types together. A list of changes created by multiple changesets are tracked in a changelog.
                
                A changeset is uniquely tagged by both an author and an id attributes (author:id), as well as the changelog file path. The id tag is only used as an identifier, it does not direct the order that changes are run and does not have to be an integer. If you do not know or do not want to save the actual author, use a placeholder value such as UNKNOWN. To execute the changeset, you must include both author and id.
              "%
              | optional,
            context | String | optional,
            include
              | {
                author | String | optional,
                context
                  | String
                  | doc "Appends a context (using an AND statement) to all contained changesets."
                  | optional,
                created | String | optional,
                file
                  | String
                  | doc "Name of the file you want to import required."
                  | optional,
                id | String | optional,
                ignore | String | optional,
                labels
                  | String
                  | doc "Appends a label to all contained changesets."
                  | optional,
                relativeToChangelogFile
                  | Bool
                  | doc "File path relative to the changelog file containing the element rather than to the classpath. Default: false"
                  | optional,
                ..
              }
              | doc "The <include> tag is used within your master changelog to reference other changelogs."
              | optional,
            includeAll
              | {
                context
                  | String
                  | doc "Appends a context (using an AND statement) to all contained changesets."
                  | optional,
                errorIfMissingOrEmpty
                  | Bool
                  | doc "Controls what happens if the path listed does not exist or is an empty directory. Default: false. If set to true, the update will fail."
                  | optional,
                filter
                  | String
                  | doc "A class name that allows you to create custom filters."
                  | optional,
                path
                  | String
                  | doc "Name of the path you want to reference."
                  | optional,
                relativeToChangelogFile
                  | Bool
                  | doc "File path relative to the changelog file containing the element rather than to the classpath. Default: false."
                  | optional,
                resourceComparator
                  | String
                  | doc "A string containing the name of the class you want to use for sorting."
                  | optional,
                ..
              }
              | doc "The <includeAll> tag allows you to specify a directory that contains multiple changelog files. It is used within your master changelog file to call on the directory and include all .xml files as changelog files, and all .sql files as individual changes."
              | optional,
            logicalFilePath
              | String
              | doc "Overrides the file name and path when creating the unique identifier of changesets. It is required when you want to move or rename changelogs."
              | optional,
            objectQuotingStrategy
              | String
              | doc m%"
                Controls how object names are quoted in the generated SQL or used in calls to the database. The names of objects are used differently in databases. For example, Oracle converts everything to uppercase (unless quoted). There are three possible values. The default value is LEGACY.
                LEGACY - the same behavior as in Liquibase 2.0
                QUOTE_ALL_OBJECTS - every object gets quoted. For example: person becomes "person".
                QUOTE_ONLY_RESERVED_WORDS - reserved keywords and invalid column names are quoted.
              "%
              | optional,
            preConditions | refs."definitions.preConditions" | optional,
            property
              | {
                context
                  | String
                  | doc "Contexts in which the property is valid. Expected as a comma-separated list."
                  | optional,
                dbms | refs."definitions.dbms" | optional,
                file
                  | String
                  | doc "The name of the file from which the properties should be loaded. It will create a property for all properties in the file. The content of the file must follow the java properties file format."
                  | optional,
                global
                  | Bool
                  | doc "Boolean. Defines whether the property is global or limited to the actual DATABASECHANGELOG. It is given as true or false."
                  | optional,
                labels | String | optional,
                name
                  | String
                  | doc "The name of the parameter. Required if file is not set"
                  | optional,
                target | String | optional,
                value
                  | String
                  | doc "The value of the property. Required if file is not set"
                  | optional,
                ..
              }
              | doc "Liquibase allows a dynamic substitution of properties in your changelog. The tokens to replace in your changelog are described using the ${property-name} syntax."
              | optional,
            ..
          }
        | doc "The root of all Liquibase changes is the changelog file. Liquibase uses a changelog to sequentially list all changes made to your database. Think of it as a ledger. It is a file that contains a record of all your database changes (changesets). Liquibase uses this changelog record to audit your database and execute any changes that are not yet applied to your database.",
      ..
    }