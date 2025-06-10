# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.addressConfigDef" =
        {
            dataType | refs."definitions.dataTypeDef" | String,
            originAccessType | refs."definitions.originAccessTypeDef" | String,
            originAddress | refs."definitions.originAddressDef" | String,
            originDataType | refs."definitions.originDataTypeDef" | String,
            originType | refs."definitions.originTypeDef" | String,
            pollingGroup | refs."definitions.pollingGroupDef" | String,
            receiveMode | refs."definitions.receiveModeDef" | String,
          },
      "definitions.alertConfigDef" =
        {
            evaluations
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [
                            refs."definitions.evaluationForLogsDef",
                            { _ | Dyn }
                          ])
                    ],
                  std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [
                            refs."definitions.evaluationForAlarmsDef",
                            { _ | Dyn }
                          ])
                    ]
                ],
          },
      "definitions.auditedDef" = Bool,
      "definitions.broadcastDef" = Bool,
      "definitions.calcConfig" =
        { expression | refs."definitions.expressionDef" | String, },
      "definitions.commonConfigDef" =
        {
            additionalProperties | js2n.Never | optional,
            alias
              | js2n.string.MaxLength 80
              | js2n.string.MinLength 1
              | doc "Alias name for the datapoint, used as representation label"
              | optional,
            datapointId | refs."definitions.datapointIdDef" | String,
            datapointType | refs."definitions.datapointTypeDef" | String,
            description
              | js2n.string.MaxLength 1200
              | js2n.string.MinLength 0
              | doc "Detailed information about the datapoint"
              | optional,
            syntaxInfo
              | js2n.string.MaxLength 1200
              | js2n.string.MinLength 0
              | doc "Description about the syntax of this datapoints values"
              | optional,
            ..
          },
      "definitions.convConfigDef" =
        { expression | refs."definitions.expressionDef" | String, },
      "definitions.dataTypeDef" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'OBJECT,
                'LONG_ARRAY,
                'FLOAT_ARRAY,
                'BOOLEAN_ARRAY,
                'DOUBLE_ARRAY,
                'STRING_ARRAY,
                'INTEGER_ARRAY,
                'ARRAY,
                'DATE,
                'BOOLEAN,
                'STRING,
                'DOUBLE,
                'FLOAT,
                'LONG,
                'INTEGER,
                'BYTE
              |]
            ],
      "definitions.datapointConfigDef" =
        std.contract.Sequence
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
                        properties =
                          {
                              commonConfig =
                                js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        {
                                            datapointType =
                                              js2n.Const "#TIMEPOINT",
                                          },
                                      required = {},
                                    },
                            },
                        required = { commonConfig = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      addressConfig
                        | refs."definitions.addressConfigDef"
                        | { _ | Dyn },
                      commonConfig
                        | refs."definitions.commonConfigDef"
                        | { _ | Dyn },
                    },
                    Array Dyn
                  ]) js2n.Always,
              std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required
                            [ "addressConfig", "commonConfig" ],
                          Array Dyn
                        ],
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "calcConfig" ],
                            Array Dyn
                          ])
                    ],
                  std.contract.Sequence
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "calcConfig", "commonConfig" ],
                          Array Dyn
                        ],
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "addressConfig" ],
                            Array Dyn
                          ])
                    ],
                  std.contract.Sequence
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required
                            [ "commonConfig", "defaultValueConfig" ],
                          Array Dyn
                        ],
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required
                              [ "addressConfig", "calcConfig" ],
                            Array Dyn
                          ])
                    ],
                  std.contract.Sequence
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required
                            [
                              "commonConfig",
                              "defaultValueConfig, addressConfig"
                            ],
                          Array Dyn
                        ],
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "calcConfig" ],
                            Array Dyn
                          ])
                    ],
                  std.contract.Sequence
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required
                            [
                              "calcConfig",
                              "commonConfig",
                              "defaultValueConfig"
                            ],
                          Array Dyn
                        ],
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "addressConfig" ],
                            Array Dyn
                          ])
                    ]
                ],
              js2n.record.Record
                {
                  additional = 'Some ({ _ | Dyn }),
                  patterns = {},
                  properties =
                    {
                        addressConfig =
                          std.contract.Sequence
                              [
                                refs."definitions.addressConfigDef",
                                { _ | Dyn }
                              ],
                        alertConfig =
                          std.contract.Sequence
                              [
                                refs."definitions.alertConfigDef",
                                { _ | Dyn }
                              ],
                        calcConfig =
                          std.contract.Sequence
                              [ refs."definitions.calcConfig", { _ | Dyn } ],
                        commonConfig =
                          std.contract.Sequence
                              [
                                refs."definitions.commonConfigDef",
                                { _ | Dyn }
                              ],
                        convConfig =
                          std.contract.Sequence
                              [ refs."definitions.convConfigDef", { _ | Dyn } ],
                        defaultValueConfig =
                          std.contract.Sequence
                              [
                                refs."definitions.defaultValueConfigDef",
                                { _ | Dyn }
                              ],
                        rowFilterConfig =
                          std.contract.Sequence
                              [
                                refs."definitions.rowFilterConfigDef",
                                { _ | Dyn }
                              ],
                        unitsConfig =
                          std.contract.Sequence
                              [
                                refs."definitions.unitsConfigDef",
                                { _ | Dyn }
                              ],
                        valueMapConfig =
                          std.contract.Sequence
                              [
                                refs."definitions.valueMapConfigDef",
                                { _ | Dyn }
                              ],
                      },
                  required = {},
                }
            ],
      "definitions.datapointIdDef" =
        js2n.string.Matches "^[a-zA-Z0-9#&_-]{1,80}$",
      "definitions.datapointSetConfigDef" =
        std.contract.Sequence
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
                        properties =
                          {
                              datapointSetType =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'tableDynamic, 'tableStatic |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "tableAddress" ],
                    Array Dyn
                  ]) js2n.Always,
              {
                alias
                  | js2n.string.MaxLength 80
                  | js2n.string.MinLength 1
                  | doc "Alias name for the datapointSet, used as representation label",
                broadcast | refs."definitions.broadcastDef" | Bool | optional,
                datapointSetId | refs."definitions.datapointSetIdDef" | String,
                datapointSetType
                  | refs."definitions.datapointSetTypeDef"
                  | String,
                datapoints
                  | js2n.array.MinItems 1
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.datapointConfigDef", { _ | Dyn } ]
                  )
                  | doc "Array of datapoints for this datapoint set",
                description
                  | js2n.string.MaxLength 1200
                  | js2n.string.MinLength 0
                  | doc "Detailed information about the datapoint set",
                routing
                  | refs."definitions.routingDef"
                  | { _ | Dyn }
                  | optional,
                tableAddress
                  | refs."definitions.tableAddressDef"
                  | { _ | Dyn }
                  | optional,
              }
            ],
      "definitions.datapointSetIdDef" =
        js2n.string.Matches "^[a-zA-Z0-9_-]{1,40}$",
      "definitions.datapointSetTypeDef" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'tableDynamic, 'tableStatic, 'map |] ],
      "definitions.datapointTypeDef" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                '"#TIMEPOINT",
                '"#DATAPOINT",
                '"@TIMEPOINT",
                '"@DATAPOINT",
                'DATAPOINT,
                'TIMEPOINT,
                'SIMPLE
              |]
            ],
      "definitions.defaultValueConfigDef" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "isDefault", "rawValue", "value" ],
                  js2n.record.Required [ "isDefault", "value" ],
                  js2n.record.Required [ "isDefault", "rawValue" ]
                ],
              {
                isDefault
                  | Bool
                  | doc "Flag to indicate that the value is used as substitution value"
                  | optional,
                rawValue
                  | refs."definitions.valueDef"
                  | std.contract.any_of
                    [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | doc "Value to be assigned to rawValue field"
                  | optional,
                value
                  | refs."definitions.valueDef"
                  | std.contract.any_of
                    [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | doc "Value to be assigned to value field"
                  | optional,
              }
            ],
      "definitions.descriptionDef" =
        std.contract.Sequence
            [ js2n.string.MaxLength 800, js2n.string.MinLength 1 ],
      "definitions.evaluationForAlarmsDef" =
        {
            audited | refs."definitions.auditedDef" | Bool,
            broadcast | refs."definitions.broadcastDef" | Bool,
            expressions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.expressionLogicObjectDef", { _ | Dyn } ]
              )
              | doc "Array of logical expression than should return a boolean value",
            facility | refs."definitions.facilityDef" | Number,
            hidden | refs."definitions.hiddenDef" | Bool,
            logic | refs."definitions.logicDef" | String,
            onStartup
              | Bool
              | doc "Indicates wether the alert must be sent when the conditions are met from the beginning",
            routing | refs."definitions.routingDef" | { _ | Dyn } | optional,
            severity | refs."definitions.severityForAlarmsDef" | Number,
            text
              | refs."definitions.textDef"
              | String
              | doc "Alarm/event descriptive text",
            textHelp
              | refs."definitions.textDef"
              | String
              | doc "Descriptive information that help to understand the alarm",
            ..
          },
      "definitions.evaluationForLogsDef" =
        {
            audited | refs."definitions.auditedDef" | Bool,
            broadcast | refs."definitions.broadcastDef" | Bool,
            expressions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.expressionLogicObjectDef", { _ | Dyn } ]
              )
              | doc "Array of logical expression than should return a boolean value",
            facility | refs."definitions.facilityDef" | Number,
            hidden | refs."definitions.hiddenDef" | Bool,
            logic | refs."definitions.logicDef" | String,
            onStartup
              | Bool
              | doc "Indicates wether the alert must be sent when the conditions are met from the beginning",
            routing | refs."definitions.routingDef" | { _ | Dyn } | optional,
            severity | refs."definitions.severityForLogsDef" | Number,
            text
              | refs."definitions.textDef"
              | String
              | doc "Alarm/event descriptive text",
            textHelp
              | refs."definitions.textDef"
              | String
              | doc "Descriptive information that help to understand the alarm",
            ..
          },
      "definitions.expressionDef" =
        std.contract.Sequence
            [ js2n.string.MaxLength 800, js2n.string.MinLength 1 ],
      "definitions.expressionLogicObjectDef" =
        {
            expression | refs."definitions.expressionDef" | String,
            symbol | refs."definitions.symbolDef" | String,
          },
      "definitions.facilityDef" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 255,
              js2n.number.Minimum (-1)
            ],
      "definitions.hiddenDef" = Bool,
      "definitions.logicDef" =
        std.contract.Sequence
            [ js2n.string.MaxLength 80, js2n.string.MinLength 1 ],
      "definitions.originAccessTypeDef" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'not-accessible, 'read-write, 'write-only, 'read-only |]
            ],
      "definitions.originAddressDef" =
        js2n.string.Matches "^[\\w\\d_&#:$.-]{1,80}$",
      "definitions.originDataTypeDef" =
        js2n.string.Matches "^[a-zA-Z0-9-_]{1,80}$",
      "definitions.originDef" =
        js2n.string.Matches
            "^\\/\\{[a-zA-Z0-9-_.]{1,80}\\}\\/$|^[a-zA-Z0-9-_.]{1,80}$",
      "definitions.originTypeConfigDef" =
        { originType | refs."definitions.originTypeDef" | String, .. },
      "definitions.originTypeDef" = js2n.string.Matches "^[a-zA-Z0-9-]{1,80}$",
      "definitions.pollingGroupDef" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                '"1d",
                '"12h",
                '"6h",
                '"4h",
                '"1h",
                '"30m",
                '"15m",
                '"10m",
                '"5m",
                '"1m",
                '"30s",
                '"10s",
                '"5s"
              |]
            ],
      "definitions.rangerFilterDef" =
        {
            description
              | js2n.string.MaxLength 800
              | js2n.string.MinLength 1
              | doc "Regular expression for SNMP sysDescr OID (1.3.6.1.2.1.1.1) device description"
              | optional,
            deviceID
              | String
              | doc "Regular expression for PROFINET device identification field in hexadecimal format"
              | optional,
            vendorID
              | String
              | doc "Regular expression for PROFINET manufacturer identification field in hexadecimal format"
              | optional,
            ..
          },
      "definitions.receiveModeDef" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'subscription, 'singleQuery, 'polling |]
            ],
      "definitions.representationCommonConfigDef" =
        {
            firstColumn
              | std.number.Integer
              | js2n.number.Maximum 8
              | js2n.number.Minimum 1
              | doc "Define de position of the widget, first column",
            firstRow
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "Define de position of the widget, first row",
            widgetHeight
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "Define de size of the widget, height",
            widgetTitle
              | js2n.string.MaxLength 800
              | js2n.string.MinLength 1
              | doc "Text for widget title",
            widgetType
              | std.enum.TagOrString
              | [| 'gauge, 'metric, 'table, 'map |]
              | doc "Select widget type",
            widgetWidth
              | std.number.Integer
              | js2n.number.Maximum 8
              | js2n.number.Minimum 1
              | doc "Define de size of the widget, width",
            ..
          },
      "definitions.representationDataDef" =
        js2n.string.Matches
            "^device\\[[a-zA-Z0-9_-]{1,40}((\\.[0-9]+)?\\.[a-zA-Z0-9#&_-]{1,80})?\\]$",
      "definitions.representationDef" =
        std.contract.Sequence
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
                        properties =
                          {
                              commonConfig =
                                js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        { widgetType = js2n.Const "map", },
                                      required = {},
                                    },
                            },
                        required = { commonConfig = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      commonConfig
                        | refs."definitions.representationCommonConfigDef"
                        | { _ | Dyn },
                      data | refs."definitions.representationDataDef" | String,
                      specificConfig
                        | refs."definitions.representationMapConfigDef"
                        | { _ | Dyn },
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties =
                          {
                              commonConfig =
                                js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        { widgetType = js2n.Const "table", },
                                      required = {},
                                    },
                            },
                        required = {},
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      commonConfig
                        | refs."definitions.representationCommonConfigDef"
                        | { _ | Dyn },
                      data | refs."definitions.representationDataDef" | String,
                      specificConfig
                        | refs."definitions.representationTableConfigDef"
                        | { _ | Dyn },
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties =
                          {
                              commonConfig =
                                js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        { widgetType = js2n.Const "metric", },
                                      required = {},
                                    },
                            },
                        required = {},
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      commonConfig
                        | refs."definitions.representationCommonConfigDef"
                        | { _ | Dyn },
                      data | refs."definitions.representationDataDef" | String,
                      specificConfig
                        | refs."definitions.representationMetricConfigDef"
                        | { _ | Dyn },
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties =
                          {
                              commonConfig =
                                js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        { widgetType = js2n.Const "gauge", },
                                      required = {},
                                    },
                            },
                        required = { commonConfig = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      commonConfig
                        | refs."definitions.representationCommonConfigDef"
                        | { _ | Dyn },
                      data | refs."definitions.representationDataDef" | String,
                      specificConfig
                        | refs."definitions.representationGaugeConfigDef"
                        | { _ | Dyn },
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              {
                commonConfig
                  | refs."definitions.representationCommonConfigDef"
                  | { _ | Dyn }
                  | optional,
                data
                  | refs."definitions.representationDataDef"
                  | String
                  | optional,
                ..
              }
            ],
      "definitions.representationGaugeConfigDef" =
        {
            format
              | js2n.array.MinItems 1
              | Array
                {
                  color | String | doc "Color to display the value" | optional,
                  datapoint | refs."definitions.datapointIdDef" | String,
                  units | String | doc "Color to display the value" | optional,
                  ..
                }
              | doc "Representation for each gauge value",
            maxValue | Number | doc "Define the gauge maximum value",
            minValue | Number | doc "Define the gauge minimum value",
            ranges
              | Array
                {
                  from | std.number.Integer | doc "First value of the range",
                  severity | std.number.Integer | doc "Severity of the range",
                  to | std.number.Integer | doc "Last value of the range",
                }
              | doc "Value ranges representation"
              | optional,
            ..
          },
      "definitions.representationMapConfigDef" =
        {
            format
              | js2n.array.MinItems 1
              | Array
                {
                  alias
                    | js2n.string.MaxLength 80
                    | js2n.string.MinLength 1
                    | doc "Text to display",
                  datapoint | refs."definitions.datapointIdDef" | String,
                  fieldType
                    | std.enum.TagOrString
                    | [| 'severity, 'date, 'numeric, 'boolean, 'string |]
                    | doc "Format for row value"
                    | optional,
                  order
                    | std.number.Integer
                    | js2n.number.Minimum 0
                    | doc "Number of the row",
                  utc | Bool | doc "Format date to UTC time" | optional,
                }
              | doc "Representation for each row",
          },
      "definitions.representationMetricConfigDef" =
        {
            lastUpdateEnabled
              | Bool
              | doc "Indicate if timestamp should be shown"
              | optional,
            titleEnabled
              | Bool
              | doc "Indicate if tittle should be shown"
              | optional,
            url | String | doc "Define url to opened on click event" | optional,
            urlEnabled
              | Bool
              | doc "Indicate if event click must be enable"
              | optional,
          },
      "definitions.representationTableConfigDef" =
        {
            filterable
              | Bool
              | doc "Indicates if the columns should have filters"
              | optional,
            format
              | js2n.array.MinItems 1
              | Array
                {
                  alias
                    | js2n.string.MaxLength 80
                    | js2n.string.MinLength 1
                    | doc "Text to display",
                  datapoint | refs."definitions.datapointIdDef" | String,
                  fieldGroup
                    | std.enum.TagOrString
                    | [| 'advanced, 'basic |]
                    | doc "Indicates if the column should be shown on basic or advance mode"
                    | optional,
                  fieldType
                    | std.enum.TagOrString
                    | [| 'severity, 'date, 'numeric, 'boolean, 'string |]
                    | doc "Format for column value"
                    | optional,
                  filterType
                    | std.enum.TagOrString
                    | [| 'severity, 'date, 'numeric, 'boolean, 'string |]
                    | doc "Format for column filter"
                    | optional,
                  filterable
                    | Bool
                    | doc "Indicates if the column is filterable"
                    | optional,
                  minScreenSize
                    | std.enum.TagOrString
                    | [| 'l, 'm, 's, 'xs |]
                    | doc "Column minimun screen size"
                    | optional,
                  order
                    | std.number.Integer
                    | js2n.number.Minimum 0
                    | doc "Number of the column",
                  utc | Bool | doc "Format date to UTC time" | optional,
                  width
                    | std.number.Integer
                    | js2n.number.Minimum 1
                    | doc "Column initial width"
                    | optional,
                }
              | doc "Representation for each column",
            pageSize
              | js2n.number.Maximum 10
              | js2n.number.Minimum 2
              | doc "Rows number for each page"
              | optional,
            ..
          },
      "definitions.routingDef" =
        {
            service
              | js2n.string.MaxLength 80
              | doc "Define the service that should consume the information"
              | optional,
            serviceConfig
              | {  .. }
              | doc "Object to define the specific configuration of the service"
              | optional,
            topic
              | js2n.string.MaxLength 80
              | doc "Define the topic that should be used to transport the data",
            ..
          },
      "definitions.rowFilterConfigDef" =
        {
            expressions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.expressionLogicObjectDef", { _ | Dyn } ]
              )
              | doc "Array of logical expression than should return a boolean value"
              | optional,
            logic | refs."definitions.logicDef" | String | optional,
            ..
          },
      "definitions.schemaVersionDef" =
        js2n.string.Matches
            "(?<=^v?|\\sv?)(?:(?:0|[1-9][0-9]*).){2}(?:0|[1-9][0-9]*)(?:-(?:0|[1-9][0-9]*|[0-9a-z-]*[a-z-][0-9a-z-]*)(?:.(?:0|[1-9][0-9]*|[0-9a-z-]*[a-z-][0-9a-z-]*))*)?(?:\\+[0-9a-z-]+(?:.[0-9a-z-]+)*)?\\b",
      "definitions.severityForAlarmsDef" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 1000,
              js2n.number.Minimum 201
            ],
      "definitions.severityForLogsDef" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 200,
              js2n.number.Minimum 1
            ],
      "definitions.symbolDef" = js2n.string.MinLength 1,
      "definitions.tableAddressDef" =
        {
            indexes
              | Array (js2n.string.Matches "^[a-zA-Z0-9#&_-]{1,80}$")
              | doc "Array of datapointIds that will act as table indexes, this means columns that acts as keys of the table"
              | optional,
            rootAddress
              | js2n.string.MaxLength 240
              | doc "Main address for the table, this information is specific for each kind of driver"
              | optional,
            ..
          },
      "definitions.templateIdDef" =
        js2n.string.Matches "^[a-zA-Z0-9-_ ]{1,80}$",
      "definitions.templateVersionDef" =
        js2n.string.Matches
            "(?<=^v?|\\sv?)(?:(?:0|[1-9][0-9]*).){2}(?:0|[1-9][0-9]*)(?:-(?:0|[1-9][0-9]*|[0-9a-z-]*[a-z-][0-9a-z-]*)(?:.(?:0|[1-9][0-9]*|[0-9a-z-]*[a-z-][0-9a-z-]*))*)?(?:\\+[0-9a-z-]+(?:.[0-9a-z-]+)*)?\\b",
      "definitions.textDef" =
        std.contract.Sequence
            [ js2n.string.MaxLength 800, js2n.string.MinLength 1 ],
      "definitions.unitsConfigDef" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "from", "to" ],
                          Array Dyn
                        ],
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "exclude", "toBest" ],
                            Array Dyn
                          ])
                    ],
                  std.contract.Sequence
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "from", "toBest" ],
                          Array Dyn
                        ],
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "to" ],
                            Array Dyn
                          ])
                    ]
                ],
              {
                exclude
                  | Array String
                  | doc "Array of excluded measure units, when toBest is enabled"
                  | optional,
                from | String | doc "Actual measure units" | optional,
                to | String | doc "Desired measure units" | optional,
                toBest
                  | Bool
                  | doc "Select the measure unit that best fit"
                  | optional,
                units
                  | Bool
                  | doc "Flag to indicate that the unit of measure must indicated"
                  | optional,
              }
            ],
      "definitions.valueDef" =
        std.contract.any_of [ Bool, { _ | Dyn }, Array Dyn, Number, String ],
      "definitions.valueMapConfigDef" =
        {
            map
              | Array
                {
                  key
                    | std.contract.any_of [ Bool, Number, String ]
                    | doc "Entry key"
                    | optional,
                  value
                    | js2n.OneOf [ String, Number, Bool, std.number.Integer ]
                    | doc "Entry value"
                    | optional,
                  ..
                }
              | doc "Key/Value map with the conversion options",
          },
    }
    in
  {
      alias
        | js2n.string.MaxLength 80
        | js2n.string.MinLength 1
        | doc "Alias name for the template"
        | optional,
      datapointSets
        | js2n.array.MinItems 1
        | Array (
          std.contract.Sequence
            [ refs."definitions.datapointSetConfigDef", { _ | Dyn } ]
        ),
      description | refs."definitions.descriptionDef" | String,
      origin | refs."definitions.originDef",
      originTypes
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array refs."definitions.originTypeConfigDef"
        | doc "Origin types (drivers)"
        | optional,
      rangerFilter | refs."definitions.rangerFilterDef" | optional,
      representation
        | js2n.array.MinItems 1
        | Array (
          std.contract.Sequence
            [ refs."definitions.representationDef", { _ | Dyn } ]
        )
        | optional,
      schemaVersion | refs."definitions.schemaVersionDef" | optional,
      templateId | refs."definitions.templateIdDef",
      templateVersion | refs."definitions.templateVersionDef",
    }