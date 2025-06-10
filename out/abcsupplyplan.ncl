# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ABCMaterialState" =
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
                              timeDependentPlanningParameters =
                                js2n.Const false,
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
                      minimumInventories
                        | js2n.array.MaxItems 1
                        | js2n.array.MinItems 1
                        | optional,
                      planningFrequencies
                        | js2n.array.MaxItems 1
                        | js2n.array.MinItems 1
                        | optional,
                      shelfLives
                        | js2n.array.MaxItems 1
                        | js2n.array.MinItems 1
                        | optional,
                      stopshipBuffers
                        | js2n.array.MaxItems 1
                        | js2n.array.MinItems 1
                        | optional,
                      targetMFCs
                        | js2n.array.MaxItems 1
                        | js2n.array.MinItems 1
                        | optional,
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
                              timeDependentPlanningParameters = js2n.Const true,
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
                      minimumInventories | js2n.array.MinItems 1 | optional,
                      planningFrequencies | js2n.array.MinItems 1 | optional,
                      shelfLives | js2n.array.MinItems 1 | optional,
                      stopshipBuffers | js2n.array.MinItems 1 | optional,
                      targetMFCs | js2n.array.MinItems 1 | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              {
                abcMaterialName
                  | js2n.string.MinLength 1
                  | doc "The name of the material.",
                actuals
                  | refs."definitions.PositiveDateMap"
                  | { _ | Dyn }
                  | doc "Map of actual quantities, corresponding to real data collected.",
                currency
                  | js2n.string.MinLength 1
                  | doc "The currency used for monetary calculations of the material.",
                decimalPrecision
                  | std.number.Integer
                  | js2n.number.Maximum 5
                  | js2n.number.Minimum 0
                  | doc "The precision of decimal places allowed for numerical entries related to the material.",
                demand
                  | refs."definitions.PositiveDateMap"
                  | { _ | Dyn }
                  | doc "Map of Demand values with specific dates as keys.",
                doExpiryCarryover
                  | Bool
                  | doc "Indicates whether to carry over the expiry information for the material.",
                expiryAdjustments
                  | refs."definitions.NegativeDateMap"
                  | { _ | Dyn }
                  | doc "Adjustments made to account for expired materials, reducing quantities.",
                expiryAnalysisType
                  | std.enum.TagOrString
                  | [| 'Stopship, 'Expiration |]
                  | doc "Determines the type of analysis to be performed on expiry data, focusing on expiration or stopship scenarios.",
                firmOrders
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.FirmOrder", { _ | Dyn } ]
                  )
                  | doc "List of Firm Orders with their respective quantities and dates.",
                firmingPeriod
                  | std.number.Integer
                  | js2n.number.Minimum 0
                  | doc "Time during which no Planned Orders are allowed.  Format: non-negative integer.",
                initialInventories
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.InitialInventory", { _ | Dyn } ]
                  )
                  | doc "List of Initial Inventory records, each associated with specific lot and dates.",
                inventoryMethod
                  | std.enum.TagOrString
                  | [| 'MinimumInventory, 'TargetMFC |]
                  | doc "The method used for managing inventory levels, either target months forward coverage or minimum inventory.",
                inventorySystemLocationName
                  | js2n.Nullable String
                  | doc "For pulling inventory from the inventory management system into Initial Inventory and Firm Orders & Releases and filtering it by location",
                inventorySystemMaterialNumber
                  | js2n.Nullable String
                  | doc "For pulling inventory from the inventory management system into Initial Inventory and Firm Orders & Releases",
                isCapacityConstraintNode
                  | Bool
                  | doc "Determines if the material is a node where capacity constraints are applied.",
                leadTime
                  | std.number.Integer
                  | js2n.number.Minimum 0
                  | doc "Delay between Manufacture Date and Release Date.  Format: non-negative integer.",
                lotSize
                  | std.number.Integer
                  | js2n.number.Minimum 1
                  | doc "Batch size for orders. Must be greater than 0 to plan, etc.",
                manufacturingCost
                  | js2n.number.Minimum 0
                  | doc "The direct manufacturing cost per unit of the material.",
                materialColor | refs."definitions.Color" | String,
                materialShape
                  | std.enum.TagOrString
                  | [|
                    'hexagon,
                    'pentagon,
                    'triangle,
                    'trapezoid,
                    'parallelogram,
                    'rectangle,
                    'diamond,
                    'square,
                    'circle
                  |]
                  | doc "The shape of the material represented graphically.",
                minimumInventories
                  | refs."definitions.NonNegativeIntegerTimeDependentValues"
                  | Array Dyn
                  | doc "List of Minimum Inventory values, each defined for a specific period of time. Minimum Inventory denotes the lowest stock level to prevent outages, triggering restock.",
                ordering
                  | Number
                  | doc "Numeric value representing the order or sequence of the material.",
                otherDemand
                  | refs."definitions.PositiveDateMap"
                  | { _ | Dyn }
                  | doc "Map of other types of demand not included in the primary demand values.",
                otherDemandAnnotation
                  | refs."definitions.AnnotationMap"
                  | { _ | Dyn }
                  | doc "Annotations related to other demand entries, providing additional context.",
                plannedOrders
                  | refs."definitions.PositiveDateMap"
                  | { _ | Dyn }
                  | doc "Map of planned order quantities, anticipated ahead of time.",
                planningFrequencies
                  | refs."definitions.PositiveIntegerTimeDependentValues"
                  | Array Dyn
                  | doc "List of Planning Frequency values, each defined for a specific period of time.",
                salesPrice
                  | js2n.number.Minimum 0
                  | doc "The sales price per unit of the material.",
                shelfLives
                  | refs."definitions.NonNegativeIntegerTimeDependentValues"
                  | Array Dyn
                  | doc "List of Shelf Life values, each defined for a specific period of time.",
                showQuantitiesAs
                  | std.enum.TagOrString
                  | [| 'Monetary, 'Lots, 'Units |]
                  | doc "Defines how quantities are represented, e.g., in units, lots, or monetary value.",
                standardCost
                  | js2n.number.Minimum 0
                  | doc "The standard cost per unit including overhead of the material.",
                stopshipBuffers
                  | refs."definitions.NonNegativeIntegerTimeDependentValues"
                  | Array Dyn
                  | doc "Buffers to account for Stopship scenarios, listed for different periods.",
                targetMFCs
                  | refs."definitions.NonNegativeIntegerTimeDependentValues"
                  | Array Dyn
                  | doc "Target Months Forward Coverage refers to a dynamic safety stock level—a buffer quantity of inventory designed to mitigate the risk of stock-outs caused by variability in Demand. In essence, it represents the number of months of Demand that could be satisfied assuming no additional material is manufactured. Each value is defined for a specific period of time.",
                timeAggregateType
                  | std.enum.TagOrString
                  | [| 'Monthly, 'Quarterly, 'Annual |]
                  | doc "The aggregation level for planning and reporting, e.g., annual, quarterly, or monthly.",
                timeDependentPlanningParameters
                  | Bool
                  | doc "Indicates whether planning parameters are dependent on time, necessitating different values at different periods.",
                uom
                  | js2n.string.MinLength 1
                  | doc "The unit of measure used for the material.",
                x
                  | Number
                  | doc "The X coordinate position of the material in a graphical representation.",
                y
                  | Number
                  | doc "The Y coordinate position of the material in a graphical representation.",
              }
            ],
      "definitions.AnnotationMap" =
        std.contract.Sequence
            [
              { _ | String },
              js2n.record.FieldsMatch "^\\d{4}-(0[1-9]|1[0-2])-01$"
            ],
      "definitions.Color" = String,
      "definitions.FirmOrder" =
        {
            expirationDate
              | String
              | doc "The expiration date of the product. Must be the last day of the month and within valid date range.",
            firmOrderName
              | String
              | doc "The name or identifier of the firm order.",
            firmOrderQuantity
              | js2n.number.Minimum 0
              | doc "The quantity specified in the firm order. Must be a non-negative value.",
            manufactureDate
              | String
              | doc "The date the goods are scheduled to be manufactured. Must be the first day of the month and within valid date range.",
            releaseDate
              | String
              | doc "The date the goods are scheduled to be released. Must be the first day of the month and within valid date range.",
          },
      "definitions.InitialInventory" =
        {
            expirationDate
              | String
              | doc "The date the item will expire. This date must be the last day of a month and fall within a valid date range.",
            initialInventoryQuantity
              | js2n.number.Minimum 0
              | doc "The quantity of the inventory item when first recorded. This must be a non-negative number.",
            lotNumber
              | js2n.string.MinLength 1
              | doc "The identifier for the lot number of the inventory item. It must be at least 1 character in length.",
            manufactureDate
              | String
              | doc "The date the item was manufactured. This date must be the first day of a month and fall within a valid date range.",
          },
      "definitions.NegativeDateMap" =
        std.contract.Sequence
            [
              { _ | js2n.number.Maximum 0 },
              js2n.record.FieldsMatch "^\\d{4}-(0[1-9]|1[0-2])-01$"
            ],
      "definitions.NonNegativeIntegerConstraints" =
        {
            timeDependentValue
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "An integer value that cannot be negative, typically representing quantities or counts in a time-dependent context.",
            ..
          },
      "definitions.NonNegativeIntegerTimeDependentValue" =
        std.contract.Sequence
            [
              refs."definitions.TemplateTimeDependentValue",
              refs."definitions.NonNegativeIntegerConstraints",
              { _ | Dyn }
            ],
      "definitions.NonNegativeIntegerTimeDependentValues" =
        Array (
            std.contract.Sequence
              [
                refs."definitions.NonNegativeIntegerTimeDependentValue",
                { _ | Dyn }
              ]
          ),
      "definitions.NonNegativeNumberConstraints" =
        {
            timeDependentValue
              | js2n.number.Minimum 0
              | doc "A non-negative number, used in various contexts to represent quantities or counts.",
            ..
          },
      "definitions.NonNegativeNumberTimeDependentValue" =
        std.contract.Sequence
            [
              refs."definitions.TemplateTimeDependentValue",
              refs."definitions.NonNegativeNumberConstraints",
              { _ | Dyn }
            ],
      "definitions.NonNegativeNumberTimeDependentValues" =
        Array (
            std.contract.Sequence
              [
                refs."definitions.NonNegativeNumberTimeDependentValue",
                { _ | Dyn }
              ]
          ),
      "definitions.PercentTimeDependentValue" =
        std.contract.Sequence
            [
              refs."definitions.TemplateTimeDependentValue",
              refs."definitions.PercentValueConstraints",
              { _ | Dyn }
            ],
      "definitions.PercentTimeDependentValues" =
        Array (
            std.contract.Sequence
              [ refs."definitions.PercentTimeDependentValue", { _ | Dyn } ]
          ),
      "definitions.PercentValueConstraints" =
        {
            timeDependentValue
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc "During a particular period of time for this recipe, how much of the downstream consumption is allocated to the upstream material.  Format: 0-1 which correspond to 0%-100%.",
            ..
          },
      "definitions.PositiveDateMap" =
        std.contract.Sequence
            [
              { _ | js2n.number.Minimum 0 },
              js2n.record.FieldsMatch "^\\d{4}-(0[1-9]|1[0-2])-01$"
            ],
      "definitions.PositiveIntegerConstraints" =
        {
            timeDependentValue
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "An integer value that must be positive, typically representing quantities or counts in contexts where zero is not a valid value.",
            ..
          },
      "definitions.PositiveIntegerTimeDependentValue" =
        std.contract.Sequence
            [
              refs."definitions.TemplateTimeDependentValue",
              refs."definitions.PositiveIntegerConstraints",
              { _ | Dyn }
            ],
      "definitions.PositiveIntegerTimeDependentValues" =
        Array (
            std.contract.Sequence
              [
                refs."definitions.PositiveIntegerTimeDependentValue",
                { _ | Dyn }
              ]
          ),
      "definitions.RecipeState" =
        {
            allocationMethod
              | std.enum.TagOrString
              | [| 'PriorityAllocation, 'PercentAllocation |]
              | doc "Method for allocating downstream consumption to upstream materials.",
            percentAllocations
              | refs."definitions.PercentTimeDependentValues"
              | Array Dyn
              | doc "Percentage allocations of materials to the recipe over different periods.",
            percentYield
              | js2n.number.Minimum 0
              | doc "The yield percentage of the recipe, indicating efficiency.",
            priorityAllocations
              | refs."definitions.NonNegativeNumberTimeDependentValues"
              | Array Dyn
              | doc "Priority allocations of materials to the recipe over different periods.",
            recipe
              | js2n.number.ExclusiveMinimum 0
              | doc "Unique identifier of the recipe.",
          },
      "definitions.TemplateTimeDependentValue" =
        {
            endDate
              | js2n.Nullable String
              | doc "The end date for the time-dependent value. Must be the last day of a month and within a valid date range.",
            startDate
              | js2n.Nullable String
              | doc "The start date for the time-dependent value. Must be the first day of a month and within a valid date range.",
            ..
          },
    }
    in
  {
      "$schema"
        | std.enum.TagOrString
        | [| '"https://json.schemastore.org/abc-supply-plan-9.0.0.json" |]
        | doc "Link to https://json.schemastore.org/abc-supply-plan-9.0.0.json",
      abcMaterialsMap
        | {
          _ | std.contract.Sequence
            [ refs."definitions.ABCMaterialState", { _ | Dyn } ]
        }
        | js2n.record.FieldsMatch "^\\d+$"
        | doc "A mapping of material IDs to their respective states within the ABC system.",
      analytics
        | {
          items
            | Array (
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            excludeMonthsFromBeginning = Number,
                            excludeMonthsFromEnd = Number,
                            id = String,
                            metrics =
                              js2n.array.ArrayOf
                                  (std.contract.Sequence
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
                                                      metricType =
                                                        js2n.Const "mfc",
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
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      showQuantitiesAs =
                                                        js2n.Null,
                                                    },
                                                required = {},
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
                                                      metricType =
                                                        js2n.Const
                                                            "otherDemand",
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
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      showQuantitiesAs =
                                                        js2n.Null,
                                                    },
                                                required = {},
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
                                                      metricType =
                                                        js2n.Const "moh",
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
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      showQuantitiesAs =
                                                        js2n.Null,
                                                    },
                                                required = {},
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
                                                      metricType =
                                                        js2n.Const
                                                            "capacityUtilization",
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
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      showQuantitiesAs =
                                                        js2n.Null,
                                                    },
                                                required = {},
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
                                                      metricType =
                                                        js2n.Const "demand",
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
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      showQuantitiesAs =
                                                        std.contract.Sequence
                                                            [
                                                              std.enum.TagOrString,
                                                              [|
                                                                'Monetary,
                                                                'Units
                                                              |]
                                                            ],
                                                    },
                                                required = {},
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
                                                      metricType =
                                                        js2n.Const "actuals",
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
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      showQuantitiesAs =
                                                        std.contract.Sequence
                                                            [
                                                              std.enum.TagOrString,
                                                              [|
                                                                'Monetary,
                                                                'Units
                                                              |]
                                                            ],
                                                    },
                                                required = {},
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
                                                      metricType =
                                                        js2n.Const
                                                            "firmRelease",
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
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      showQuantitiesAs =
                                                        std.contract.Sequence
                                                            [
                                                              std.enum.TagOrString,
                                                              [|
                                                                'Lots,
                                                                'Units
                                                              |]
                                                            ],
                                                    },
                                                required = {},
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
                                                      metricType =
                                                        js2n.Const
                                                            "plannedRelease",
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
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      showQuantitiesAs =
                                                        std.contract.Sequence
                                                            [
                                                              std.enum.TagOrString,
                                                              [|
                                                                'Lots,
                                                                'Units
                                                              |]
                                                            ],
                                                    },
                                                required = {},
                                              },
                                            Array Dyn
                                          ]) js2n.Always,
                                      js2n.record.Record
                                        {
                                          additional = 'None,
                                          patterns = {},
                                          properties =
                                            {
                                                abcMaterialIDs =
                                                  js2n.array.ArrayOf String,
                                                color = String,
                                                comparisonPlanID =
                                                  js2n.Nullable String,
                                                label = String,
                                                metricType =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [|
                                                          'mfc,
                                                          'inventory,
                                                          'expiryAdjustments,
                                                          'plannedRelease,
                                                          'firmRelease,
                                                          'plannedOrders,
                                                          'firmOrders,
                                                          'otherDemand,
                                                          'actuals,
                                                          'consumption,
                                                          'demand
                                                        |]
                                                      ],
                                                showQuantitiesAs =
                                                  js2n.Nullable
                                                      (std.contract.Sequence
                                                        [
                                                          std.enum.TagOrString,
                                                          [|
                                                            'Monetary,
                                                            'Lots,
                                                            'Units
                                                          |]
                                                        ]),
                                                visualization =
                                                  std.contract.Sequence
                                                      [
                                                        js2n.OneOf
                                                          [
                                                            std.contract.any_of
                                                              [
                                                                js2n.Null,
                                                                Bool,
                                                                Number,
                                                                String,
                                                                js2n.record.Record
                                                                  {
                                                                    additional =
                                                                      'None,
                                                                    patterns =
                                                                      {},
                                                                    properties =
                                                                      {
                                                                          dotFill =
                                                                            String,
                                                                          dotSize =
                                                                            js2n.number.Minimum
                                                                                0,
                                                                          strokeDasharray =
                                                                            String,
                                                                          strokeWidth =
                                                                            Number,
                                                                          type =
                                                                            std.contract.Sequence
                                                                                [
                                                                                  std.enum.TagOrString,
                                                                                  [|
                                                                                    'line
                                                                                  |]
                                                                                ],
                                                                        },
                                                                    required =
                                                                      {
                                                                          dotFill =
                                                                            true,
                                                                          dotSize =
                                                                            true,
                                                                          strokeDasharray =
                                                                            true,
                                                                          strokeWidth =
                                                                            true,
                                                                          type =
                                                                            true,
                                                                        },
                                                                  },
                                                                Array Dyn
                                                              ],
                                                            std.contract.any_of
                                                              [
                                                                js2n.Null,
                                                                Bool,
                                                                Number,
                                                                String,
                                                                js2n.record.Record
                                                                  {
                                                                    additional =
                                                                      'None,
                                                                    patterns =
                                                                      {},
                                                                    properties =
                                                                      {
                                                                          barWidth =
                                                                            Number,
                                                                          radius =
                                                                            Number,
                                                                          showAsPercent =
                                                                            Bool,
                                                                          stackId =
                                                                            String,
                                                                          type =
                                                                            std.contract.Sequence
                                                                                [
                                                                                  std.enum.TagOrString,
                                                                                  [|
                                                                                    'bar
                                                                                  |]
                                                                                ],
                                                                        },
                                                                    required =
                                                                      {
                                                                          barWidth =
                                                                            true,
                                                                          radius =
                                                                            true,
                                                                          showAsPercent =
                                                                            true,
                                                                          stackId =
                                                                            true,
                                                                          type =
                                                                            true,
                                                                        },
                                                                  },
                                                                Array Dyn
                                                              ],
                                                            std.contract.any_of
                                                              [
                                                                js2n.Null,
                                                                Bool,
                                                                Number,
                                                                String,
                                                                js2n.record.Record
                                                                  {
                                                                    additional =
                                                                      'None,
                                                                    patterns =
                                                                      {},
                                                                    properties =
                                                                      {
                                                                          fillOpacity =
                                                                            Number,
                                                                          showAsPercent =
                                                                            Bool,
                                                                          stackId =
                                                                            String,
                                                                          strokeWidth =
                                                                            Number,
                                                                          type =
                                                                            std.contract.Sequence
                                                                                [
                                                                                  std.enum.TagOrString,
                                                                                  [|
                                                                                    'area
                                                                                  |]
                                                                                ],
                                                                        },
                                                                    required =
                                                                      {
                                                                          fillOpacity =
                                                                            true,
                                                                          showAsPercent =
                                                                            true,
                                                                          stackId =
                                                                            true,
                                                                          strokeWidth =
                                                                            true,
                                                                          type =
                                                                            true,
                                                                        },
                                                                  },
                                                                Array Dyn
                                                              ]
                                                          ],
                                                        { _ | Dyn }
                                                      ],
                                                yAxisIndex = Number,
                                                zIndex = Number,
                                              },
                                          required =
                                            {
                                                abcMaterialIDs = true,
                                                color = true,
                                                comparisonPlanID = true,
                                                label = true,
                                                metricType = true,
                                                showQuantitiesAs = true,
                                                visualization = true,
                                                yAxisIndex = true,
                                                zIndex = true,
                                              },
                                        }
                                    ]),
                            name = String,
                            subtitle = String,
                            timeAggregateType =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'Monthly, 'Quarterly, 'Annual |]
                                  ],
                            type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'TIME_SERIES |] ],
                          },
                      required =
                        {
                            excludeMonthsFromBeginning = true,
                            excludeMonthsFromEnd = true,
                            id = true,
                            metrics = true,
                            name = true,
                            subtitle = true,
                            timeAggregateType = true,
                            type = true,
                          },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            backgroundColor = String,
                            id = String,
                            imageUrl = String,
                            name = String,
                            subtitle = String,
                            text =
                              js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          color = String,
                                          content = String,
                                          fontFamily = String,
                                          fontSize = Number,
                                          horizontalAlignment =
                                            std.contract.Sequence
                                                [
                                                  std.enum.TagOrString,
                                                  [| 'right, 'center, 'left |]
                                                ],
                                          verticalAlignment =
                                            std.contract.Sequence
                                                [
                                                  std.enum.TagOrString,
                                                  [| 'bottom, 'center, 'top |]
                                                ],
                                        },
                                    required =
                                      {
                                          color = true,
                                          content = true,
                                          fontFamily = true,
                                          fontSize = true,
                                          horizontalAlignment = true,
                                          verticalAlignment = true,
                                        },
                                  },
                            type =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'ANALYTICS_NOTE |]
                                  ],
                          },
                      required =
                        {
                            id = true,
                            name = true,
                            subtitle = true,
                            text = true,
                            type = true,
                          },
                    }
                ]
            ),
          layouts
            | Array
              {
                contentId | String,
                h | js2n.number.Minimum 1 | doc "Height in grid units",
                isDraggable
                  | Bool
                  | doc "Whether the item can be dragged"
                  | optional,
                isResizable
                  | Bool
                  | doc "Whether the item can be resized"
                  | optional,
                maxH
                  | js2n.number.Minimum 1
                  | doc "Maximum height in grid units"
                  | optional,
                maxW
                  | js2n.number.Minimum 1
                  | doc "Maximum width in grid units"
                  | optional,
                minH
                  | js2n.number.Minimum 1
                  | doc "Minimum height in grid units"
                  | optional,
                minW
                  | js2n.number.Minimum 1
                  | doc "Minimum width in grid units"
                  | optional,
                w
                  | js2n.number.Maximum 12
                  | js2n.number.Minimum 1
                  | doc "Width in grid units (1-12)",
                x
                  | js2n.number.Maximum 11
                  | js2n.number.Minimum 0
                  | doc "Grid column position (0-11 for 12-column grid)",
                y | js2n.number.Minimum 0 | doc "Grid row position",
              },
        },
      planDate
        | String
        | doc "The start date for the plan.  Format: first day of a month.",
      planNotes
        | String
        | doc "Notes or comments about the plan in a specified format.  Since there is no JSON Schema for draft-js, the underlying component for mui-rte, format abc-draft-js_RawDraftContentState is enforced by calling https://draftjs.org/docs/api-reference-data-conversion/#convertfromraw.  see also: https://github.com/facebookarchive/draft-js/issues/2071 and https://github.com/facebookarchive/draft-js/issues/1544",
      recipeMap
        | { _ | refs."definitions.RecipeState" }
        | js2n.record.FieldsMatch "^\\d+-\\d+$"
        | doc "A mapping of recipes, representing the acyclic relationships among materials. abcAreAllocationMethodsHomogeneous requires no mixing of Allocation Methods.  A downstream material cannot have mixed upstream recipes.  An upstream material cannot have mixed downstream recipes.",
    }