# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Action" =
        {
            actionType | refs."definitions.ActionType" | String | optional,
            contentType | refs."definitions.ContentType" | String | optional,
            dataKey | refs."definitions.DataKeyString" | String | optional,
            dataObject | refs."definitions.DataObject" | String | optional,
            dismissOnTouchOutside
              | Bool
              | doc "Signals that a popup should close when a user clicks outside of it. This is used for closing modals/popups"
              | optional,
            emit | refs."definitions.Emit" | { _ | Dyn } | optional,
            funcName
              | String
              | doc "A name/identifier for a function. This is used mainly for builtIn actions, where applications implement their own behavior and binds it to some object in the noodl"
              | optional,
            goto
              | refs."definitions.Goto"
              | std.contract.any_of [ { _ | Dyn }, String ]
              | optional,
            object
              | std.contract.any_of [ { _ | Dyn }, Array Dyn, String ]
              | optional,
            popUpView
              | String
              | doc "A binding between a popUp or popUpDismiss component to a popUp action."
              | optional,
            reload
              | Bool
              | doc "When set to true, this signals that a page should run its \"init\" operation upon visiting from the user. If it is false, a page will not run it, which can be used to  persist values when navigating pages"
              | optional,
            timer
              | String
              | doc "A timer is useful for situations such as chat rooms where users will have a time limit before being getting out"
              | optional,
            timerTag | String | optional,
            viewTag | refs."definitions.ViewTag" | String | optional,
            wait
              | std.contract.any_of [ Bool, Number ]
              | doc "Used to prevent further actions from happening. For example, a popUp action with \"wait: true\" will open a pop up in the page and will not run actions that are next in the call stack. This can be used to restrict access to pages when authenticating"
              | optional,
            ..
          },
      "definitions.ActionChain" = Array refs."definitions.UserEvent",
      "definitions.ActionType" = String,
      "definitions.AwaitReference" =
        js2n.string.Matches "^[=.]*[a-zA-Z0-9]+.*@$",
      "definitions.Boolean" = js2n.Enum [ "true", "false", true, false ],
      "definitions.Border" =
        std.contract.any_of
            [
              String,
              {
                color | refs."definitions.Color" | String | optional,
                line | String | optional,
                style | refs."definitions.BorderStylePreset" | optional,
                width | refs."definitions.NoodlUnit" | String | optional,
                ..
              }
            ],
      "definitions.BorderPreset1" = js2n.Enum [ "1", 1 ],
      "definitions.BorderPreset2" = js2n.Enum [ 2, "2" ],
      "definitions.BorderPreset3" = js2n.Enum [ "3", 3 ],
      "definitions.BorderPreset4" = js2n.Enum [ "4", 4 ],
      "definitions.BorderPreset5" = js2n.Enum [ "5", 5 ],
      "definitions.BorderPreset6" = js2n.Enum [ "6", 6 ],
      "definitions.BorderStylePreset" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."definitions.BorderPreset1",
                  std.contract.any_of [ Number, String ]
                ],
              std.contract.Sequence
                [
                  refs."definitions.BorderPreset2",
                  std.contract.any_of [ Number, String ]
                ],
              std.contract.Sequence
                [
                  refs."definitions.BorderPreset3",
                  std.contract.any_of [ Number, String ]
                ],
              std.contract.Sequence
                [
                  refs."definitions.BorderPreset4",
                  std.contract.any_of [ Number, String ]
                ],
              std.contract.Sequence
                [
                  refs."definitions.BorderPreset5",
                  std.contract.any_of [ Number, String ]
                ],
              std.contract.Sequence
                [
                  refs."definitions.BorderPreset6",
                  std.contract.any_of [ Number, String ]
                ]
            ],
      "definitions.BuiltInEval" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^=.builtIn.[a-zA-Z0-9]+$" =
                      {
                          dataIn | refs."definitions.DataIn" | optional,
                          dataOut | refs."definitions.DataOut" | optional,
                          ..
                        },
                  },
              properties = {},
              required = {},
            },
      "definitions.Color" = js2n.string.Matches "^(0x)[a-zA-Z0-9]+$",
      "definitions.Component" =
        {
            audioStream | Bool | optional,
            borderRadius | refs."definitions.NoodlUnit" | String | optional,
            children
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence [ js2n.Always, { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Reference", String ]
                  ]
              )
              | optional,
            contentType | refs."definitions.ContentType" | String | optional,
            dataKey | refs."definitions.DataKey" | optional,
            ecosObj | String | optional,
            global
              | refs."definitions.Boolean"
              | std.contract.any_of [ Bool, String ]
              | optional,
            image | String | optional,
            imgPath | String | optional,
            isEdit
              | refs."definitions.Boolean"
              | std.contract.any_of [ Bool, String ]
              | optional,
            isEditable
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.Boolean",
                      std.contract.any_of [ Bool, String ]
                    ],
                  String
                ]
              | optional,
            itemObject
              | String
              | doc "This is a common value used for iteratorVar"
              | optional,
            iteratorVar | String | optional,
            listObject
              | std.contract.any_of
                [
                  std.contract.Sequence [ refs."definitions.Empty", String ],
                  std.contract.Sequence
                    [ refs."definitions.Reference", String ],
                  Array Dyn
                ]
              | optional,
            onBlur
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.ActionChain", Array Dyn ],
                  refs."definitions.UserEvent"
                ]
              | optional,
            onChange
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.ActionChain", Array Dyn ],
                  refs."definitions.UserEvent"
                ]
              | optional,
            onClick
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.ActionChain", Array Dyn ],
                  refs."definitions.UserEvent"
                ]
              | optional,
            onEvent | String | optional,
            onFocus
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.ActionChain", Array Dyn ],
                  refs."definitions.UserEvent"
                ]
              | optional,
            onHover
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.ActionChain", Array Dyn ],
                  refs."definitions.UserEvent"
                ]
              | optional,
            onInput
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.ActionChain", Array Dyn ],
                  refs."definitions.UserEvent"
                ]
              | optional,
            onMouseEnter
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.ActionChain", Array Dyn ],
                  refs."definitions.UserEvent"
                ]
              | optional,
            onMouseLeave
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.ActionChain", Array Dyn ],
                  refs."definitions.UserEvent"
                ]
              | optional,
            onMouseOut
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.ActionChain", Array Dyn ],
                  refs."definitions.UserEvent"
                ]
              | optional,
            onMouseOver
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.ActionChain", Array Dyn ],
                  refs."definitions.UserEvent"
                ]
              | optional,
            options | std.contract.any_of [ Array Dyn, String ] | optional,
            overflow | String | optional,
            path | refs."definitions.Path" | optional,
            placeholder
              | js2n.OneOf
                [
                  String,
                  std.contract.Sequence [ refs."definitions.If", { _ | Dyn } ],
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            emit =
                              std.contract.Sequence
                                  [ refs."definitions.Emit", { _ | Dyn } ],
                          },
                      required = {},
                    }
                ]
              | optional,
            popUpView | String | optional,
            postMessage | Array Dyn | optional,
            poster
              | String
              | doc "A cover image used on video components. When a video has not been interacted with by a user, a cover image is displayed. This value can be used for the cover image"
              | optional,
            required | std.contract.any_of [ Bool, String ] | optional,
            resource | String | optional,
            style | refs."definitions.Style" | { _ | Dyn } | optional,
            text | refs."definitions.Text" | optional,
            "text=func"
              | String
              | doc "A function to transform a component's text. A component must have the 'text' property."
              | optional,
            textAlign | refs."definitions.TextAlign" | optional,
            textBoard | refs."definitions.TextBoard" | Array Dyn | optional,
            type | refs."definitions.ComponentType" | String | optional,
            videoFormat | String | optional,
            videoStream | Bool | optional,
            viewTag | refs."definitions.ViewTag" | String | optional,
            zIndex | Number | optional,
            ..
          },
      "definitions.ComponentType" = String,
      "definitions.ConfigVersionObjectByDevice" =
        {
            cadlVersion
              | { stable | String | optional, test | String | optional, .. }
              | optional,
          },
      "definitions.ContentType" = String,
      "definitions.DataIn" = refs."definitions.Value",
      "definitions.DataKey" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.DataKeyString", String ],
              std.contract.Sequence
                [ refs."definitions.DataKeyObject", { _ | Dyn } ]
            ],
      "definitions.DataKeyObject" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns = { "^[a-zA-Z0-9]+$" = { _ | Dyn }, },
              properties = {},
              required = {},
            },
      "definitions.DataKeyString" = String,
      "definitions.DataObject" = String,
      "definitions.DataOut" = refs."definitions.Value",
      "definitions.Emit" =
        {
            actions
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.Action", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.BuiltInEval", { _ | Dyn } ]
                  ]
              ),
            dataKey | std.contract.any_of [ { _ | Dyn }, String ] | optional,
          },
      "definitions.Empty" = std.contract.Equal "",
      "definitions.Goto" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.GotoObject", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.GotoPageComponentUrl", String ]
                ],
              std.contract.not Number
            ],
      "definitions.GotoObject" = { destination | String | optional, .. },
      "definitions.GotoPageComponentUrl" =
        js2n.string.Matches "[a-zA-Z0-9]+@[a-zA-Z0-9]+#[a-zA-Z0-9]+",
      "definitions.If" =
        {
            "if"
              | js2n.array.MaxItems 3
              | js2n.array.MinItems 3
              | Array refs."definitions.Value"
              | optional,
            ..
          },
      "definitions.Init" =
        std.contract.any_of
            [
              js2n.array.ArrayOf
                (std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.If", { _ | Dyn } ],
                    String,
                    std.contract.Sequence
                      [
                        refs."definitions.Goto",
                        std.contract.any_of [ { _ | Dyn }, String ]
                      ]
                  ]),
              std.contract.Sequence
                [ refs."definitions.MixedActionChain", Array Dyn ]
            ],
      "definitions.LocalEvalReference" =
        js2n.string.Matches "^=[.][.][a-zA-Z0-9]+.*$",
      "definitions.LocalReference" =
        js2n.string.Matches "^[.][.][a-zA-Z0-9]+.*$",
      "definitions.MixedActionChain" =
        Array (
            std.contract.any_of
              [
                std.contract.Sequence
                  [ refs."definitions.ActionChain", Array Dyn ],
                js2n.array.ArrayOf
                  (std.contract.Sequence
                    [ refs."definitions.BuiltInEval", { _ | Dyn } ]),
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns =
                      { "(=.[a-zA_Z0-9])*@$" = refs."definitions.Value", },
                    properties = {},
                    required = {},
                  }
              ]
          ),
      "definitions.NoodlUnit" = String,
      "definitions.Page" =
        {
            check | refs."definitions.Init" | optional,
            components
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Component", { _ | Dyn } ]
              )
              | optional,
            init
              | js2n.OneOf [ refs."definitions.Init", js2n.Const "" ]
              | optional,
            module | refs."definitions.PageModule" | String | optional,
            pageNumber | refs."definitions.PageNumber" | String | optional,
            save | refs."definitions.Init" | optional,
            title
              | String
              | doc "Titles can be used to represent the page"
              | optional,
            update | refs."definitions.Init" | optional,
            viewPort
              | String
              | doc "Determines the initial scroll position for the user"
              | optional,
            ..
          },
      "definitions.PageModule" = String,
      "definitions.PageNumber" = String,
      "definitions.Path" =
        js2n.OneOf
            [
              std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.GotoPageComponentUrl", String ]
                ],
              std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.BuiltInEval", { _ | Dyn } ],
                  std.contract.Sequence [ refs."definitions.If", { _ | Dyn } ],
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            emit =
                              std.contract.Sequence
                                  [ refs."definitions.Emit", { _ | Dyn } ],
                          },
                      required = {},
                    }
                ]
            ],
      "definitions.Reference" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.LocalReference", String ],
                  std.contract.Sequence
                    [ refs."definitions.RootReference", String ],
                  std.contract.Sequence
                    [ refs."definitions.LocalEvalReference", String ],
                  std.contract.Sequence
                    [ refs."definitions.RootEvalReference", String ],
                  std.contract.Sequence
                    [ refs."definitions.AwaitReference", String ]
                ],
              String
            ],
      "definitions.RootConfig" =
        {
            android
              | refs."definitions.ConfigVersionObjectByDevice"
              | { _ | Dyn }
              | optional,
            apiCheck | { _ | Dyn } | optional,
            apiHost | String | optional,
            apiPort | String | optional,
            appApiHost | String | optional,
            cadlBaseUrl | String | optional,
            cadlMain | String | optional,
            cadlVersion | { _ | Dyn } | optional,
            connectiontimeout | String | optional,
            debug | std.contract.any_of [ { _ | Dyn }, String ] | optional,
            elasticClient | { _ | Dyn } | optional,
            ios
              | refs."definitions.ConfigVersionObjectByDevice"
              | { _ | Dyn }
              | optional,
            isGetPosition
              | refs."definitions.Boolean"
              | std.contract.any_of [ Bool, String ]
              | optional,
            keywords | Array String | optional,
            loadingLevel | Number | optional,
            log | String | optional,
            myBaseUrl | String | optional,
            searchLink | { _ | Dyn } | optional,
            syncHost | String | optional,
            timestamp | Number | optional,
            viewWidthHeightRatio
              | { max | Number | optional, min | Number | optional, .. }
              | optional,
            web
              | refs."definitions.ConfigVersionObjectByDevice"
              | { _ | Dyn }
              | optional,
            webApiHost | String | optional,
            ..
          },
      "definitions.RootEvalReference" =
        js2n.string.Matches "^=[.][a-zA-Z0-9]+.*$",
      "definitions.RootReference" = js2n.string.Matches "^[.][a-zA-Z0-9]+.*$",
      "definitions.Style" =
        {
            align
              | String
              | doc "The alignment in a block. If align is horizontal, siblings will align horizontally, vice versa. This is functionally equivalent to the \"axis\" keyword"
              | optional,
            axis
              | String
              | doc "The axis in a block. If axis is horizontal, siblings will align horizontally, vice versa. This was previously used in list/listItem components"
              | optional,
            backgroundColor | String | optional,
            border | refs."definitions.Border" | optional,
            borderBottom | String | optional,
            borderColor | String | optional,
            borderRadius | refs."definitions.NoodlUnit" | String | optional,
            borderWidth | refs."definitions.NoodlUnit" | String | optional,
            boxShadow
              | String
              | doc "Applies a box shadow style effect"
              | optional,
            boxSizing | String | optional,
            color | String | optional,
            fontFamily | String | optional,
            fontSize | refs."definitions.NoodlUnit" | String | optional,
            fontStyle | String | optional,
            fontWeight | std.contract.any_of [ Number, String ] | optional,
            height | refs."definitions.NoodlUnit" | String | optional,
            isEditable
              | refs."definitions.Boolean"
              | std.contract.any_of [ Bool, String ]
              | optional,
            isHidden
              | refs."definitions.Boolean"
              | std.contract.any_of [ Bool, String ]
              | doc "Used for hiding/showing components"
              | optional,
            justifyContent | String | optional,
            left
              | refs."definitions.NoodlUnit"
              | String
              | doc "Left position. The greater the value, the further away from the left position"
              | optional,
            letterSpacing
              | String
              | doc "Spacing between each letter"
              | optional,
            lineHeight | String | doc "Spacing between each line" | optional,
            margin | refs."definitions.NoodlUnit" | String | optional,
            marginTop | refs."definitions.NoodlUnit" | String | optional,
            opacity
              | Number
              | doc "Applies a transparenct style effect. The lower the opacity, the more the transparent effect is applied"
              | optional,
            overflow
              | String
              | doc "If hidden, any styles flowing outside of a component's bounds will be invisible"
              | optional,
            paddingBottom | refs."definitions.NoodlUnit" | String | optional,
            paddingLeft | refs."definitions.NoodlUnit" | String | optional,
            position | String | optional,
            required | String | optional,
            shadow
              | std.contract.any_of [ Bool, String ]
              | doc "Applies a box shadow effect"
              | optional,
            textAlign | refs."definitions.TextAlign" | optional,
            textColor | refs."definitions.Color" | String | optional,
            textIndent | String | optional,
            top
              | refs."definitions.NoodlUnit"
              | String
              | doc "Top position. The greater the value, the further away from the top position"
              | optional,
            width | refs."definitions.NoodlUnit" | String | optional,
            zIndex
              | String
              | doc "Applies a level of precedence/importance to a component. The higher the zIndex the higher level the component will be placed. For example, if a child 3 levels down applies a higher zIndex than the parent, then the child will appear to be on top in the page"
              | optional,
            ..
          },
      "definitions.Text" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence [ refs."definitions.If", { _ | Dyn } ]
            ],
      "definitions.TextAlign" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.TextAlignEnum", String ],
              std.contract.Sequence
                [ refs."definitions.TextAlignObject", { _ | Dyn } ]
            ],
      "definitions.TextAlignEnum" = String,
      "definitions.TextAlignObject" =
        { x | String | optional, y | String | optional, .. },
      "definitions.TextBoard" =
        Array
            {
              color | String | optional,
              text | refs."definitions.Text" | optional,
              ..
            },
      "definitions.UserEvent" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.Action", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.Reference", String ]
            ],
      "definitions.Value" =
        js2n.OneOf
            [
              String,
              std.contract.Sequence [ refs."definitions.NoodlUnit", String ],
              Number,
              { _ | Dyn },
              Array Dyn,
              std.contract.Sequence [ refs."definitions.Reference", String ],
              js2n.Null,
              std.contract.Sequence [ refs."definitions.If", { _ | Dyn } ],
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        emit =
                          std.contract.Sequence
                              [ refs."definitions.Emit", { _ | Dyn } ],
                      },
                  required = {},
                }
            ],
      "definitions.ViewTag" = String,
    }
    in
  std.contract.Sequence
      [
        refs."definitions.RootConfig",
        js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { "^[a-zA-Z0-9]*$" = refs."definitions.Page", },
            properties = {},
            required = {},
          }
      ]