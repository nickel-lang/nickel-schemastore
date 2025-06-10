# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.action" =
        std.contract.Sequence
            [
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "apply" ],
                    Array Dyn
                  ])
                (std.contract.not
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "applyExternal" ],
                      Array Dyn
                    ])) js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "applyExternal" ],
                    Array Dyn
                  ])
                (std.contract.Sequence
                  [
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        {
                          applyExternal
                            | {
                              args
                                | Array (
                                  std.contract.Sequence
                                    [ refs."definitions.arg", { _ | Dyn } ]
                                )
                                | optional,
                              invoke | String,
                              type | String,
                            },
                          ..
                        },
                        Array Dyn
                      ],
                    std.contract.not
                      (std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "apply" ],
                          Array Dyn
                        ])
                  ]) js2n.Always,
              {
                apply | String | optional,
                applyExternal | { _ | Dyn } | optional,
                args
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.arg", { _ | Dyn } ]
                  )
                  | optional,
                chain | Bool | optional,
                element | String | optional,
                matcher | refs."definitions.matcher" | { _ | Dyn } | optional,
                returnAll | Bool | optional,
                returnType | String | optional,
              }
            ],
      "definitions.arg" =
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                name = String,
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          'argumentReference,
                                          'frame,
                                          'rootPageObject,
                                          'pageObject,
                                          'locator,
                                          'number,
                                          'boolean,
                                          'string
                                        |]
                                      ],
                              },
                          required = { name = true, type = true, },
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          'rootPageObject,
                                          'pageObject,
                                          'elementReference,
                                          'locator
                                        |]
                                      ],
                                value =
                                  std.contract.any_of
                                      [
                                        Bool,
                                        std.number.Integer,
                                        String,
                                        std.contract.Sequence
                                          [
                                            refs."definitions.selector",
                                            { _ | Dyn }
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."definitions.pageObjectType",
                                            { _ | Dyn }
                                          ]
                                      ],
                              },
                          required = { value = true, },
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
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                name = String,
                                predicate =
                                  js2n.array.ArrayOf
                                      (std.contract.Sequence
                                        [
                                          refs."definitions.action",
                                          { _ | Dyn }
                                        ]),
                                type = js2n.Const "function",
                              },
                          required = { predicate = true, type = true, },
                        },
                      Array Dyn
                    ]
                ],
              {
                args
                  | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
                  | doc "element reference can have nested literal args (hardcoded values for its getter)"
                  | optional,
                description | String | optional,
                name | String | optional,
                predicate | Array Dyn | optional,
                type
                  | std.enum.TagOrString
                  | [|
                    'rootPageObject,
                    'pageObject,
                    'frame,
                    'locator,
                    'function,
                    'argumentReference,
                    'elementReference,
                    'number,
                    'boolean,
                    'string
                  |]
                  | optional,
                value
                  | std.contract.any_of
                    [ Bool, std.number.Integer, String, { _ | Dyn } ]
                  | optional,
              }
            ],
      "definitions.composeMethod" =
        {
            args
              | Array (
                std.contract.Sequence [ refs."definitions.arg", { _ | Dyn } ]
              )
              | optional,
            compose
              | Array (
                std.contract.Sequence [ refs."definitions.action", { _ | Dyn } ]
              ),
            description
              | refs."definitions.methodDescription"
              | std.contract.any_of [ { _ | Dyn }, String ]
              | optional,
            name | String,
          },
      "definitions.element" =
        {
            description
              | refs."definitions.methodDescription"
              | std.contract.any_of [ { _ | Dyn }, String ]
              | optional,
            elements | refs."definitions.elementsArray" | Array Dyn | optional,
            filter | refs."definitions.filter" | { _ | Dyn } | optional,
            load | Bool | optional,
            name | String,
            nullable | Bool | optional,
            public | Bool | optional,
            selector | refs."definitions.selector" | { _ | Dyn } | optional,
            shadow
              | {
                elements
                  | refs."definitions.elementsArray"
                  | Array Dyn
                  | optional,
                ..
              }
              | optional,
            type
              | std.contract.any_of
                [
                  String,
                  js2n.array.Items
                    [
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [|
                            'touchable,
                            'draggable,
                            'editable,
                            'clickable,
                            'actionable
                          |]
                        ]
                    ] js2n.Always
                ]
              | optional,
            wait | Bool | optional,
          },
      "definitions.elementsArray" =
        Array (
            std.contract.Sequence [ refs."definitions.element", { _ | Dyn } ]
          ),
      "definitions.exposeRootElement" = Bool,
      "definitions.filter" =
        {
            apply | String | optional,
            args
              | Array (
                std.contract.Sequence [ refs."definitions.arg", { _ | Dyn } ]
              )
              | optional,
            findFirst
              | Bool
              | doc "Return only the first match result."
              | optional,
            matcher | refs."definitions.matcher" | { _ | Dyn } | optional,
          },
      "definitions.interfaceMethod" =
        std.contract.Sequence
            [
              js2n.record.DependentFields { returnAll = [ "returnType" ], },
              {
                args
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.arg", { _ | Dyn } ]
                  )
                  | optional,
                description
                  | refs."definitions.methodDescription"
                  | std.contract.any_of [ { _ | Dyn }, String ]
                  | optional,
                name | String,
                returnAll | Bool | optional,
                returnType
                  | std.contract.any_of
                    [
                      String,
                      js2n.array.Items
                        [
                          std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [|
                                'touchable,
                                'draggable,
                                'editable,
                                'clickable,
                                'actionable
                              |]
                            ]
                        ] js2n.Always
                    ]
                  | optional,
              }
            ],
      "definitions.matcher" =
        {
            args
              | Array (
                std.contract.Sequence [ refs."definitions.arg", { _ | Dyn } ]
              )
              | optional,
            type
              | std.enum.TagOrString
              | [|
                'stringEquals,
                'stringContains,
                'notNull,
                'isFalse,
                'isTrue
              |]
              | optional,
          },
      "definitions.metadata" =
        { status | String | optional, teamOwner | String | optional, },
      "definitions.methodDescription" =
        std.contract.any_of
            [
              String,
              {
                deprecated | String | optional,
                return | String | optional,
                text | Array String,
                throws | String | optional,
              }
            ],
      "definitions.pageObject" =
        std.contract.Sequence
            [
              js2n.record.DependentFields
                {
                  profile = [ "implements" ],
                  root = [ "selector" ],
                  selector = [ "root" ],
                },
              {
                beforeLoad
                  | Array (
                    std.contract.Sequence
                      [
                        refs."definitions.action",
                        {
                          element
                            | std.enum.TagOrString
                            | [| 'navigation, 'root, 'document |]
                            | optional,
                          ..
                        }
                      ]
                  )
                  | doc "The beforeLoad array sets the criteria to be satisfied before the load method completes. If you don't specify a beforeLoad array, the load method finds a root element for a regular page object, or waits for the root element to be present for a root page object), by default."
                  | optional,
                description
                  | refs."definitions.rootDescription"
                  | std.contract.any_of [ { _ | Dyn }, String ]
                  | optional,
                elements
                  | refs."definitions.elementsArray"
                  | Array Dyn
                  | optional,
                exposeRootElement
                  | refs."definitions.exposeRootElement"
                  | Bool
                  | optional,
                implements
                  | String
                  | doc "reference to the interface implemented by the page object"
                  | optional,
                metadata | refs."definitions.metadata" | { _ | Dyn } | optional,
                methods
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.composeMethod", { _ | Dyn } ]
                  )
                  | doc "An array of methods performing actions on this page object's elements."
                  | optional,
                platform
                  | std.enum.TagOrString
                  | [| 'native, 'web |]
                  | doc "Declares the page context type (WebView or native)."
                  | optional,
                profile
                  | Array ({ _ | js2n.array.Contains String })
                  | doc "list of profiles that can use this page object implementation."
                  | optional,
                root | refs."definitions.root" | Bool | optional,
                selector | refs."definitions.selector" | { _ | Dyn } | optional,
                shadow
                  | {
                    elements
                      | refs."definitions.elementsArray"
                      | Array Dyn
                      | optional,
                    ..
                  }
                  | doc "A shadow boundary at the root of the page object."
                  | optional,
                type
                  | refs."definitions.type"
                  | std.contract.any_of [ Array Dyn, String ]
                  | optional,
              }
            ],
      "definitions.pageObjectInterface" =
        {
            description
              | refs."definitions.rootDescription"
              | std.contract.any_of [ { _ | Dyn }, String ]
              | optional,
            exposeRootElement
              | refs."definitions.exposeRootElement"
              | Bool
              | optional,
            interface
              | Bool
              | doc "Indicates that this page object describes an interface."
              | optional,
            metadata | refs."definitions.metadata" | { _ | Dyn } | optional,
            methods
              | Array (
                std.contract.Sequence
                  [ refs."definitions.interfaceMethod", { _ | Dyn } ]
              )
              | doc "An array of method declarations that page objects implementing this interface must define."
              | optional,
            root | refs."definitions.root" | Bool | optional,
            type
              | refs."definitions.type"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
          },
      "definitions.pageObjectType" =
        { type | String | doc "URI-like type value of the page object", },
      "definitions.root" = Bool,
      "definitions.rootDescription" =
        std.contract.any_of
            [
              String,
              {
                author | String | optional,
                deprecated | String | optional,
                text | Array String,
              }
            ],
      "definitions.selector" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            args = js2n.Always,
                            css = String,
                            returnAll = js2n.Always,
                          },
                      required = { css = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            accessid = String,
                            args = js2n.Always,
                            returnAll = js2n.Always,
                          },
                      required = { accessid = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            args = js2n.Always,
                            classchain = String,
                            returnAll = js2n.Always,
                          },
                      required = { classchain = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            args = js2n.Always,
                            returnAll = js2n.Always,
                            uiautomator = String,
                          },
                      required = { uiautomator = true, },
                    }
                ],
              { _ | Dyn }
            ],
      "definitions.type" =
        std.contract.any_of
            [
              String,
              js2n.array.Items
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'touchable,
                        'draggable,
                        'editable,
                        'clickable,
                        'actionable
                      |]
                    ]
                ] js2n.Always
            ],
    }
    in
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
                  properties = { interface = js2n.Const false, },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.Sequence [ refs."definitions.pageObject", { _ | Dyn } ])
          js2n.Always,
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
                  properties = { interface = js2n.Const true, },
                  required = { interface = true, },
                },
              Array Dyn
            ]) refs."definitions.pageObjectInterface" js2n.Always,
        { interface | Bool | optional, .. }
      ]