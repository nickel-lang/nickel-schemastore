# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.aliveProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowSaveWithError | js2n.Always | optional,
                confirm | js2n.Always | optional,
                darkStyle | js2n.Always | optional,
                "default" | js2n.Always | optional,
                defaultFunc | js2n.Always | optional,
                defaultSendTo | js2n.Always | optional,
                disabled | js2n.Always | optional,
                expertMode | js2n.Always | optional,
                help | js2n.Always | optional,
                helpLink | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                instance
                  | String
                  | doc "Check if the instance is alive. If not defined, it will be used current instance. You can use `${data.number}` pattern in the text."
                  | optional,
                label | js2n.Always | optional,
                lg | js2n.Always | optional,
                md | js2n.Always | optional,
                newLine | js2n.Always | optional,
                noMultiEdit | js2n.Always | optional,
                noTranslation | js2n.Always | optional,
                onChange | js2n.Always | optional,
                sm | js2n.Always | optional,
                style | js2n.Always | optional,
                textAlive
                  | String
                  | doc "Default text is `Instance %s is alive`, where `%s` will be replaced by `ADAPTER.0`"
                  | optional,
                textNotAlive
                  | String
                  | doc "Default text is `Instance %s is not alive`, where `%s` will be replaced by `ADAPTER.0`"
                  | optional,
                tooltip | js2n.Always | optional,
                type | js2n.Always,
                validator | js2n.Always | optional,
                validatorErrorText | js2n.Always | optional,
                validatorNoSaveOnError | js2n.Always | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.allowAddByFilterProp" = Bool,
      "definitions.alsoDependsOnSendProp" = Array String,
      "definitions.certificatesProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowSaveWithError | js2n.Always | optional,
                confirm | js2n.Always | optional,
                darkStyle | js2n.Always | optional,
                "default" | js2n.Always | optional,
                defaultFunc | js2n.Always | optional,
                defaultSendTo | js2n.Always | optional,
                disabled | js2n.Always | optional,
                expertMode | js2n.Always | optional,
                help | js2n.Always | optional,
                helpLink | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                label | js2n.Always | optional,
                lg | js2n.Always | optional,
                md | js2n.Always | optional,
                newLine | js2n.Always | optional,
                noMultiEdit | js2n.Always | optional,
                noTranslation | js2n.Always | optional,
                onChange | js2n.Always | optional,
                sm | js2n.Always | optional,
                style | js2n.Always | optional,
                tooltip | js2n.Always | optional,
                type | js2n.Always,
                validator | js2n.Always | optional,
                validatorErrorText | js2n.Always | optional,
                validatorNoSaveOnError | js2n.Always | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.checkboxProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowSaveWithError | js2n.Always | optional,
                confirm | js2n.Always | optional,
                darkStyle | js2n.Always | optional,
                "default" | js2n.Always | optional,
                defaultFunc | js2n.Always | optional,
                defaultSendTo | js2n.Always | optional,
                disabled | js2n.Always | optional,
                doNotSave | js2n.Always | optional,
                expertMode | js2n.Always | optional,
                help | js2n.Always | optional,
                helpLink | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                label | js2n.Always | optional,
                lg | js2n.Always | optional,
                md | js2n.Always | optional,
                newLine | js2n.Always | optional,
                noMultiEdit | js2n.Always | optional,
                noTranslation | js2n.Always | optional,
                onChange | js2n.Always | optional,
                sm | js2n.Always | optional,
                style | js2n.Always | optional,
                tooltip | js2n.Always | optional,
                type | js2n.Always,
                validator | js2n.Always | optional,
                validatorErrorText | js2n.Always | optional,
                validatorNoSaveOnError | js2n.Always | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.componentType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'uuid,
                'user,
                'timePicker,
                'textSendTo,
                'text,
                'table,
                'staticText,
                'staticLink,
                'staticInfo,
                'staticImage,
                'state,
                'slider,
                'setState,
                'sendTo,
                'selectSendTo,
                'select,
                'room,
                'qrCode,
                'port,
                'pattern,
                'password,
                'panel,
                'objectId,
                'oauth2,
                'number,
                'language,
                'jsonEditor,
                'ip,
                'interface,
                'instance,
                'infoBox,
                'imageSendTo,
                'image,
                'icon,
                'header,
                'func,
                'fileSelector,
                'file,
                'divider,
                'deviceManager,
                'datePicker,
                'custom,
                'cron,
                'coordinates,
                'color,
                'chips,
                'checkbox,
                'checkLicense,
                'certificates,
                'certificate,
                'autocompleteSendTo,
                'autocomplete,
                'alive,
                'accordion
              |]
            ],
      "definitions.coordinatesProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowSaveWithError | js2n.Always | optional,
                attr | js2n.Always | optional,
                autoInit
                  | Bool
                  | doc "init field with current coordinates if empty"
                  | optional,
                confirm | js2n.Always | optional,
                darkStyle | js2n.Always | optional,
                defaultSendTo | js2n.Always | optional,
                disabled | js2n.Always | optional,
                divider
                  | String
                  | doc "divider between latitude and longitude. Default \",\" (Used if longitudeName and latitudeName are not defined)"
                  | optional,
                expertMode | js2n.Always | optional,
                help | js2n.Always | optional,
                helpLink | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                label | js2n.Always | optional,
                latitudeName
                  | String
                  | doc "if defined, the latitude will be stored in this attribute, divider will be ignored"
                  | optional,
                lg | js2n.Always | optional,
                longitudeName
                  | String
                  | doc "if defined, the longitude will be stored in this attribute, divider will be ignored"
                  | optional,
                maxLength | js2n.Always | optional,
                md | js2n.Always | optional,
                newLine | js2n.Always | optional,
                noMultiEdit | js2n.Always | optional,
                noTranslation | js2n.Always | optional,
                sm | js2n.Always | optional,
                style | js2n.Always | optional,
                tooltip | js2n.Always | optional,
                type | js2n.Always,
                useSystemName
                  | String
                  | doc "if defined, the checkbox with \"Use system settings\" will be shown and latitude, longitude will be read from system.config, a boolean will be saved to the given name"
                  | optional,
                validator | js2n.Always | optional,
                validatorErrorText | js2n.Always | optional,
                validatorNoSaveOnError | js2n.Always | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.cronProps" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    allowSaveWithError | js2n.Always | optional,
                    complex
                      | Bool
                      | doc "Show CRON with \"minutes\", \"seconds\" and so on"
                      | optional,
                    confirm | js2n.Always | optional,
                    darkStyle | js2n.Always | optional,
                    "default" | js2n.Always | optional,
                    defaultFunc | js2n.Always | optional,
                    defaultSendTo | js2n.Always | optional,
                    disabled | js2n.Always | optional,
                    expertMode | js2n.Always | optional,
                    help | js2n.Always | optional,
                    helpLink | js2n.Always | optional,
                    hidden | js2n.Always | optional,
                    hideOnlyControl | js2n.Always | optional,
                    label | js2n.Always | optional,
                    lg | js2n.Always | optional,
                    md | js2n.Always | optional,
                    newLine | js2n.Always | optional,
                    noMultiEdit | js2n.Always | optional,
                    noTranslation | js2n.Always | optional,
                    onChange | js2n.Always | optional,
                    simple | Bool | doc "Show simple CRON settings" | optional,
                    sm | js2n.Always | optional,
                    style | js2n.Always | optional,
                    tooltip | js2n.Always | optional,
                    type | js2n.Always,
                    validator | js2n.Always | optional,
                    validatorErrorText | js2n.Always | optional,
                    validatorNoSaveOnError | js2n.Always | optional,
                    xl | js2n.Always | optional,
                    xs | js2n.Always | optional,
                  },
                  Array Dyn
                ],
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "complex" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "simple" ],
                      Array Dyn
                    ]
                ]
            ],
      "definitions.customProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowSaveWithError | js2n.Always | optional,
                bundlerType
                  | std.enum.TagOrString
                  | [| 'module |]
                  | doc "If module written with TypeScript, set it to `module`. From Admin 7.5.x"
                  | optional,
                confirm | js2n.Always | optional,
                custom
                  | { _ | Dyn }
                  | doc "Custom properties for the component as an object"
                  | optional,
                darkStyle | js2n.Always | optional,
                "default" | js2n.Always | optional,
                defaultFunc | js2n.Always | optional,
                defaultSendTo | js2n.Always | optional,
                disabled | js2n.Always | optional,
                expertMode | js2n.Always | optional,
                help | js2n.Always | optional,
                helpLink | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                i18n | refs."definitions.i18n" | optional,
                label | js2n.Always | optional,
                lg | js2n.Always | optional,
                md | js2n.Always | optional,
                name
                  | String
                  | doc "Component name that will be provided via props, like ComponentInstancesEditor"
                  | optional,
                newLine | js2n.Always | optional,
                noMultiEdit | js2n.Always | optional,
                noTranslation | js2n.Always | optional,
                onChange | js2n.Always | optional,
                sm | js2n.Always | optional,
                style | js2n.Always | optional,
                tooltip | js2n.Always | optional,
                type | js2n.Always,
                url | String | doc "Location of the component" | optional,
                validator | js2n.Always | optional,
                validatorErrorText | js2n.Always | optional,
                validatorNoSaveOnError | js2n.Always | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.deviceManagerProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowSaveWithError | js2n.Always | optional,
                confirm | js2n.Always | optional,
                darkStyle | js2n.Always | optional,
                "default" | js2n.Always | optional,
                defaultFunc | js2n.Always | optional,
                defaultSendTo | js2n.Always | optional,
                disabled | js2n.Always | optional,
                expertMode | js2n.Always | optional,
                help | js2n.Always | optional,
                helpLink | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                label | js2n.Always | optional,
                lg | js2n.Always | optional,
                md | js2n.Always | optional,
                newLine | js2n.Always | optional,
                noMultiEdit | js2n.Always | optional,
                noTranslation | js2n.Always | optional,
                onChange | js2n.Always | optional,
                sm | js2n.Always | optional,
                style | js2n.Always | optional,
                tooltip | js2n.Always | optional,
                type | js2n.Always,
                validator | js2n.Always | optional,
                validatorErrorText | js2n.Always | optional,
                validatorNoSaveOnError | js2n.Always | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.doNotSaveProp" = Bool,
      "definitions.fileSelectorProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowSaveWithError | js2n.Always | optional,
                confirm | js2n.Always | optional,
                darkStyle | js2n.Always | optional,
                "default" | js2n.Always | optional,
                defaultFunc | js2n.Always | optional,
                defaultSendTo | js2n.Always | optional,
                delete | Bool | doc "Allow deletion of files" | optional,
                disabled | js2n.Always | optional,
                expertMode | js2n.Always | optional,
                fileTypes
                  | std.enum.TagOrString
                  | [| 'text, 'image, 'audio |]
                  | doc "Type of files"
                  | optional,
                help | js2n.Always | optional,
                helpLink | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                label | js2n.Always | optional,
                lg | js2n.Always | optional,
                maxSize | String | doc "max file size (default 2MB)" | optional,
                md | js2n.Always | optional,
                newLine | js2n.Always | optional,
                noMultiEdit | js2n.Always | optional,
                noNone | Bool | doc "Do not show 'none' option" | optional,
                noSize | Bool | doc "Do not show size of files" | optional,
                noTranslation | js2n.Always | optional,
                objectID
                  | String
                  | doc "Object ID of type meta. You can use special placeholder '%INSTANCE%': like 'myAdapter.%INSTANCE%.files'"
                  | optional,
                onChange | js2n.Always | optional,
                pattern
                  | String
                  | doc "File extension pattern. Allowed '**/*.ext' to show all files from sub-folders too, '*.ext' to show from root folder or 'folderName/*.ext' to show all files in sub-folder folderName. Default '**/*.*'"
                  | optional,
                refresh
                  | Bool
                  | doc "Show refresh button near the select"
                  | optional,
                sm | js2n.Always | optional,
                style | js2n.Always | optional,
                tooltip | js2n.Always | optional,
                type | js2n.Always | optional,
                upload
                  | String
                  | doc "path, where the uploaded files will be stored. Like 'folderName'. If not defined, no upload field will be shown. To upload in the root, set this field to '/'"
                  | optional,
                validator | js2n.Always | optional,
                validatorErrorText | js2n.Always | optional,
                validatorNoSaveOnError | js2n.Always | optional,
                withFolder
                  | Bool
                  | doc "show folder name even if all files in same folder"
                  | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.i18n" =
        std.contract.any_of
            [
              String,
              Bool,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^.+" =
                          std.contract.Sequence
                              [ refs."definitions.multilingual", { _ | Dyn } ],
                      },
                  properties = {},
                  required = {},
                }
            ],
      "definitions.iconPositionProp" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'top, 'start, 'end, 'bottom |] ],
      "definitions.instanceProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                adapter
                  | String
                  | doc "Name of the adapter. With special name _dataSources you can get all adapters with flag common.getHistory",
                adapters
                  | Array String
                  | doc "Optional list of adapters as array of strings, that should be shown. If not defined, all adapters will be shown. Only active if adapter attribute is not defined."
                  | optional,
                all
                  | Bool
                  | doc "Add to the options ALL option with value *"
                  | optional,
                allowDeactivate
                  | Bool
                  | doc "If true. Additional option \"deactivate\" is shown"
                  | optional,
                allowSaveWithError | js2n.Always | optional,
                confirm | js2n.Always | optional,
                darkStyle | js2n.Always | optional,
                "default" | js2n.Always | optional,
                defaultFunc | js2n.Always | optional,
                defaultSendTo | js2n.Always | optional,
                disabled | js2n.Always | optional,
                expertMode | js2n.Always | optional,
                help | js2n.Always | optional,
                helpLink | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                label | js2n.Always | optional,
                lg | js2n.Always | optional,
                long
                  | Bool
                  | doc "Value will look like system.adapter.ADAPTER.0 and not ADAPTER.0"
                  | optional,
                md | js2n.Always | optional,
                newLine | js2n.Always | optional,
                noMultiEdit | js2n.Always | optional,
                noTranslation | js2n.Always | optional,
                onChange | js2n.Always | optional,
                onlyEnabled
                  | Bool
                  | doc "If true. Only enabled instances will be shown"
                  | optional,
                short
                  | Bool
                  | doc "Value will look like 0 and not ADAPTER.0"
                  | optional,
                sm | js2n.Always | optional,
                style | js2n.Always | optional,
                tooltip | js2n.Always | optional,
                type | js2n.Always,
                validator | js2n.Always | optional,
                validatorErrorText | js2n.Always | optional,
                validatorNoSaveOnError | js2n.Always | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.interfaceProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowSaveWithError | js2n.Always | optional,
                confirm | js2n.Always | optional,
                darkStyle | js2n.Always | optional,
                "default" | js2n.Always | optional,
                defaultFunc | js2n.Always | optional,
                defaultSendTo | js2n.Always | optional,
                disabled | js2n.Always | optional,
                expertMode | js2n.Always | optional,
                help | js2n.Always | optional,
                helpLink | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                ignoreInternal
                  | Bool
                  | doc "do not show internal interfaces (normally it is 127.0.0.1 too)"
                  | optional,
                ignoreLoopback
                  | Bool
                  | doc "do not show loopback interface (127.0.0.1)"
                  | optional,
                label | js2n.Always | optional,
                lg | js2n.Always | optional,
                md | js2n.Always | optional,
                newLine | js2n.Always | optional,
                noMultiEdit | js2n.Always | optional,
                noTranslation | js2n.Always | optional,
                onChange | js2n.Always | optional,
                sm | js2n.Always | optional,
                style | js2n.Always | optional,
                tooltip | js2n.Always | optional,
                type | js2n.Always,
                validator | js2n.Always | optional,
                validatorErrorText | js2n.Always | optional,
                validatorNoSaveOnError | js2n.Always | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.jsonEditorProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowEmpty
                  | Bool
                  | doc "if true, the JSON will be validated only if the value is not empty"
                  | optional,
                allowSaveWithError | js2n.Always | optional,
                darkStyle | js2n.Always | optional,
                defaultSendTo | js2n.Always | optional,
                disabled | js2n.Always | optional,
                doNotApplyWithError
                  | Bool
                  | doc "Do not allow to save the value if error in JSON or JSON5"
                  | optional,
                expertMode | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                json5 | Bool | doc "if JSON5 format allowed" | optional,
                label | js2n.Always | optional,
                lg | js2n.Always | optional,
                md | js2n.Always | optional,
                newLine | js2n.Always | optional,
                noMultiEdit | js2n.Always | optional,
                noTranslation | js2n.Always | optional,
                sm | js2n.Always | optional,
                style | js2n.Always | optional,
                tooltip | js2n.Always | optional,
                type | js2n.Always,
                validateJson
                  | Bool
                  | doc "if false, the text will be not validated as JSON"
                  | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.multilingual" =
        std.contract.Sequence
            [
              { _ | String },
              js2n.record.FieldsMatch "en|de|ru|pt|nl|fr|it|es|pl|uk|zh-cn",
              js2n.record.Required [ "en" ]
            ],
      "definitions.noInternalProp" = Bool,
      "definitions.numberProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowSaveWithError | js2n.Always | optional,
                confirm | js2n.Always | optional,
                darkStyle | js2n.Always | optional,
                "default" | js2n.Always | optional,
                defaultFunc | js2n.Always | optional,
                defaultSendTo | js2n.Always | optional,
                disabled | js2n.Always | optional,
                doNotSave | js2n.Always | optional,
                expertMode | js2n.Always | optional,
                help | js2n.Always | optional,
                helpLink | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                label | js2n.Always | optional,
                lg | js2n.Always | optional,
                max | Number | doc "Maximum value" | optional,
                md | js2n.Always | optional,
                min | Number | doc "Minimal value" | optional,
                newLine | js2n.Always | optional,
                noMultiEdit | js2n.Always | optional,
                noTranslation | js2n.Always | optional,
                onChange | js2n.Always | optional,
                placeholder
                  | String
                  | doc "Placeholder (for text control)"
                  | optional,
                sm | js2n.Always | optional,
                step
                  | Number
                  | doc "Step size for increase and decrease buttons"
                  | optional,
                style | js2n.Always | optional,
                tooltip | js2n.Always | optional,
                type | js2n.Always,
                unit
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.multilingual", { _ | Dyn } ]
                    ]
                  | doc "Unit (could be multi-language)"
                  | optional,
                validator | js2n.Always | optional,
                validatorErrorText | js2n.Always | optional,
                validatorNoSaveOnError | js2n.Always | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.oauth2Props" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                confirm | js2n.Always | optional,
                darkStyle | js2n.Always | optional,
                disabled | js2n.Always | optional,
                expertMode | js2n.Always | optional,
                help | js2n.Always | optional,
                helpLink | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                identifier
                  | String
                  | doc "OAuth2 service identifier. Only known services are supported",
                label | js2n.Always | optional,
                lg | js2n.Always | optional,
                md | js2n.Always | optional,
                newLine | js2n.Always | optional,
                refreshLabel
                  | String
                  | doc "Button label for refreshing the token"
                  | optional,
                saveTokenIn
                  | String
                  | doc "State name where the token will be saved. Default is 'oauth2Tokens'. The path is relative to the adapter instance, like 'adapterName.X.oauth2Tokens'"
                  | optional,
                scope
                  | String
                  | doc "Optional scopes divided by space, e.g. `user-read-private user-read-email`"
                  | optional,
                sm | js2n.Always | optional,
                style | js2n.Always | optional,
                tooltip | js2n.Always | optional,
                type | js2n.Always,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.objectIdProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowSaveWithError | js2n.Always | optional,
                confirm | js2n.Always | optional,
                customFilter
                  | String
                  | doc "Cannot be used together with `types` settings. Example: `{type: ['channel', 'device']}` - show only channels and devices"
                  | optional,
                darkStyle | js2n.Always | optional,
                "default" | js2n.Always | optional,
                defaultFunc | js2n.Always | optional,
                defaultSendTo | js2n.Always | optional,
                disabled | js2n.Always | optional,
                expertMode | js2n.Always | optional,
                help | js2n.Always | optional,
                helpLink | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                label | js2n.Always | optional,
                lg | js2n.Always | optional,
                md | js2n.Always | optional,
                newLine | js2n.Always | optional,
                noMultiEdit | js2n.Always | optional,
                noTranslation | js2n.Always | optional,
                onChange | js2n.Always | optional,
                placeholder
                  | String
                  | doc "Placeholder (for text control)"
                  | optional,
                root
                  | Bool
                  | doc "Show only this root object and its children"
                  | optional,
                sm | js2n.Always | optional,
                style | js2n.Always | optional,
                tooltip | js2n.Always | optional,
                type | js2n.Always,
                types
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [|
                            'folder,
                            'chart,
                            'group,
                            'user,
                            'script,
                            'config,
                            'meta,
                            'instance,
                            'adapter,
                            'host,
                            'enum,
                            'device,
                            'channel,
                            'state
                          |]
                        ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 1,
                          Array (
                            std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'folder,
                                  'chart,
                                  'group,
                                  'user,
                                  'script,
                                  'config,
                                  'meta,
                                  'instance,
                                  'adapter,
                                  'host,
                                  'enum,
                                  'device,
                                  'channel,
                                  'state
                                |]
                              ]
                          )
                        ]
                    ]
                  | doc "Filter for one of the possible types: 'channel', 'device', ... (is state by default)"
                  | optional,
                validator | js2n.Always | optional,
                validatorErrorText | js2n.Always | optional,
                validatorNoSaveOnError | js2n.Always | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.passwordProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowSaveWithError | js2n.Always | optional,
                confirm | js2n.Always | optional,
                darkStyle | js2n.Always | optional,
                "default" | js2n.Always | optional,
                defaultFunc | js2n.Always | optional,
                defaultSendTo | js2n.Always | optional,
                disabled | js2n.Always | optional,
                doNotSave | js2n.Always | optional,
                encrypted
                  | Bool
                  | doc "Is value encrypted or not (of course only for texts)"
                  | optional,
                expertMode | js2n.Always | optional,
                help | js2n.Always | optional,
                helpLink | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                label | js2n.Always | optional,
                lg | js2n.Always | optional,
                maxLength | js2n.Always | optional,
                md | js2n.Always | optional,
                newLine | js2n.Always | optional,
                noMultiEdit | js2n.Always | optional,
                noTranslation | js2n.Always | optional,
                onChange | js2n.Always | optional,
                readOnly
                  | Bool
                  | doc "The read-only flag. Visible is automatically true if readOnly is true"
                  | optional,
                repeat
                  | Bool
                  | doc "Password must be compared with password"
                  | optional,
                sm | js2n.Always | optional,
                style | js2n.Always | optional,
                tooltip | js2n.Always | optional,
                type | js2n.Always,
                validator | js2n.Always | optional,
                validatorErrorText | js2n.Always | optional,
                validatorNoSaveOnError | js2n.Always | optional,
                visible
                  | Bool
                  | doc "True if allow to view the password by toggling the view button"
                  | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.qrCodeProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowSaveWithError | js2n.Always | optional,
                bgColor | String | doc "Background color" | optional,
                confirm | js2n.Always | optional,
                darkStyle | js2n.Always | optional,
                data | String | doc "The data to be encoded in the QR Code",
                "default" | js2n.Always | optional,
                defaultFunc | js2n.Always | optional,
                defaultSendTo | js2n.Always | optional,
                disabled | js2n.Always | optional,
                expertMode | js2n.Always | optional,
                fgColor | String | doc "Foreground color" | optional,
                help | js2n.Always | optional,
                helpLink | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                label | js2n.Always | optional,
                level
                  | std.enum.TagOrString
                  | [| 'H, 'Q, 'M, 'L |]
                  | doc "QR code level"
                  | optional,
                lg | js2n.Always | optional,
                md | js2n.Always | optional,
                newLine | js2n.Always | optional,
                noMultiEdit | js2n.Always | optional,
                noTranslation | js2n.Always | optional,
                onChange | js2n.Always | optional,
                size | Number | doc "The size of the QR code" | optional,
                sm | js2n.Always | optional,
                style | js2n.Always | optional,
                tooltip | js2n.Always | optional,
                type | js2n.Always,
                validator | js2n.Always | optional,
                validatorErrorText | js2n.Always | optional,
                validatorNoSaveOnError | js2n.Always | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.sendToProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowSaveWithError | js2n.Always | optional,
                color
                  | std.enum.TagOrString
                  | [| 'secondary, 'primary |]
                  | doc "Optional color"
                  | optional,
                command | String | doc "Command to be sent.",
                confirm | js2n.Always | optional,
                controlStyle
                  | { _ | Dyn }
                  | doc "Style of the button or control itself"
                  | optional,
                darkStyle | js2n.Always | optional,
                data | { _ | Dyn } | doc "Data to be sent as JSON." | optional,
                "default" | js2n.Always | optional,
                defaultFunc | js2n.Always | optional,
                defaultSendTo | js2n.Always | optional,
                disabled | js2n.Always | optional,
                error
                  | { _ | Dyn }
                  | doc "{error1: {en: 'E'}, error2: {en: 'E2'}}"
                  | optional,
                expertMode | js2n.Always | optional,
                help | js2n.Always | optional,
                helpLink | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                icon | String | doc "sendTo can have icon (base64)" | optional,
                jsonData
                  | String
                  | doc "Data to be sent as parsable string, can contain special placeholder. E. g. '{\"subject1\": \"${data.subject}\", \"options1\": {\"host\": \"${data.host}\"}}'"
                  | optional,
                label | js2n.Always | optional,
                lg | js2n.Always | optional,
                md | js2n.Always | optional,
                newLine | js2n.Always | optional,
                noMultiEdit | js2n.Always | optional,
                noTranslation | js2n.Always | optional,
                onChange | js2n.Always | optional,
                onLoaded
                  | Bool
                  | doc "if true - execute the button logic once initially"
                  | optional,
                openUrl
                  | Bool
                  | doc "if true - open URL in new tab, if response contains attribute openUrl, like {\"openUrl\": \"http://1.2.3.4:80/aaa\", \"window\": \"_blank\", \"saveConfig\": true}. If saveConfig is true, the user will be requested to save the configuration."
                  | optional,
                placeholder
                  | String
                  | doc "Placeholder (for text control)"
                  | optional,
                result
                  | { _ | Dyn }
                  | doc "{result1: {en: 'A'}, result2: {en: 'B'}}"
                  | optional,
                showProcess
                  | Bool
                  | doc "Show spinner while request is in progress"
                  | optional,
                sm | js2n.Always | optional,
                style | js2n.Always | optional,
                timeout
                  | Number
                  | doc "timeout for request in ms. Default: none."
                  | optional,
                tooltip | js2n.Always | optional,
                type | js2n.Always,
                useNative
                  | Bool
                  | doc "if adapter returns result with `native` attribute it will be used for configuration. If `saveConfig` is true, the user will be requested to save the configuration"
                  | optional,
                validator | js2n.Always | optional,
                validatorErrorText | js2n.Always | optional,
                validatorNoSaveOnError | js2n.Always | optional,
                variant
                  | std.enum.TagOrString
                  | [| 'outlined, 'contained |]
                  | doc "If outlined or contained"
                  | optional,
                window
                  | String
                  | doc "if `openUrl` is true, this is a name of the new window. Could be overwritten if response consist `window` attribute. It is not the title of the new window!"
                  | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.stateProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                addColon
                  | Bool
                  | doc "Add to label the colon at the end if not exist in label"
                  | optional,
                blinkOnUpdate
                  | Bool
                  | doc "Value should blink when updated (true or color). Only texts"
                  | optional,
                buttonValue
                  | std.contract.any_of [ Bool, Number, String ]
                  | doc "Optional value, that will be sent for button"
                  | optional,
                confirm | js2n.Always | optional,
                control
                  | std.enum.TagOrString
                  | [|
                    'button,
                    'select,
                    'switch,
                    'slider,
                    'number,
                    'input,
                    'html,
                    'text
                  |]
                  | doc "How the value of the state should be shown"
                  | optional,
                controlDelay
                  | Number
                  | doc "Delay in ms between the change and the command"
                  | optional,
                controlled
                  | Bool
                  | doc "If false, the control will be read only"
                  | optional,
                darkStyle | js2n.Always | optional,
                disabled | js2n.Always | optional,
                expertMode | js2n.Always | optional,
                falseImage
                  | String
                  | doc "This image will be shown if the value is false. It could be base64 or URL"
                  | optional,
                falseText
                  | String
                  | doc "This text will be shown if the value is false"
                  | optional,
                falseTextStyle
                  | { _ | Dyn }
                  | doc "Style of the text if the value is false"
                  | optional,
                foreign
                  | Bool
                  | doc "The 'oid' is absolute and no need to add 'adapter.X' or 'system.adapter.X.' to oid"
                  | optional,
                help | js2n.Always | optional,
                helpLink | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                label | js2n.Always | optional,
                labelIcon | String | doc "Base64 icon for label" | optional,
                lg | js2n.Always | optional,
                max
                  | Number
                  | doc "Maximum value for number or slider"
                  | optional,
                md | js2n.Always | optional,
                min
                  | Number
                  | doc "Minimum value for number or slider"
                  | optional,
                narrow
                  | Bool
                  | doc "With this flag, the value will appear just after the label"
                  | optional,
                newLine | js2n.Always | optional,
                noTranslation | js2n.Always | optional,
                oid
                  | String
                  | doc "Which object ID should be taken for the controlling. The ID is without \"adapter.X.\" prefix",
                options
                  | Array (
                    std.contract.any_of
                      [
                        String,
                        {
                          color | String | doc "Color of the option" | optional,
                          hidden | Bool | optional,
                          label
                            | std.contract.any_of
                              [
                                String,
                                std.contract.Sequence
                                  [
                                    refs."definitions.multilingual",
                                    { _ | Dyn }
                                  ]
                              ],
                          value | std.contract.any_of [ Number, String ],
                        }
                      ]
                  )
                  | doc "Options for `select` in form `[\"value1\", \"value2\", ...]` or `[{\"value\": \"value\", \"label\": \"Value1\"}, \"value2\", ...]`. If not defiled, the `common.states` in the object must exist."
                  | optional,
                readOnly
                  | Bool
                  | doc "Defines if the control is read-only. Applied only to 'input', 'slider', 'select', 'button', 'switch', 'number'"
                  | optional,
                setOnEnterKey
                  | Bool
                  | doc "The value in this case will be sent only when the \"Enter\" button is pressed. It can be combined with `showEnterButton`"
                  | optional,
                showEnterButton
                  | std.contract.any_of
                    [
                      String,
                      Bool,
                      std.contract.Sequence
                        [ refs."definitions.multilingual", { _ | Dyn } ]
                    ]
                  | doc "Show SET button. The value in this case will be sent only when the button is pressed. You can define the text of the button. Default text is \"Set\" (Only for \"input\", \"number\" or \"slider\")"
                  | optional,
                size
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "Font size: small, normal, large or number"
                  | optional,
                sm | js2n.Always | optional,
                step | Number | doc "Step for number or slider" | optional,
                style | js2n.Always | optional,
                system
                  | Bool
                  | doc "IF true, the state will be taken from system.adapter.XX.I. and not from XX.I"
                  | optional,
                tooltip | js2n.Always | optional,
                trueImage
                  | String
                  | doc "This image will be shown if the value is true. It could be base64 or URL"
                  | optional,
                trueText
                  | String
                  | doc "This text will be shown if the value is true"
                  | optional,
                trueTextStyle
                  | { _ | Dyn }
                  | doc "Style of the text if the value is true"
                  | optional,
                type | js2n.Always,
                unit
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.multilingual", { _ | Dyn } ]
                    ]
                  | doc "Unit (could be multi-language)"
                  | optional,
                variant
                  | std.enum.TagOrString
                  | [| 'text, 'outlined, 'contained |]
                  | doc "Show spinner while request is in progress"
                  | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.staticLinkProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowSaveWithError | js2n.Always | optional,
                button | js2n.Always | optional,
                color | String | doc "Color of the link" | optional,
                confirm | js2n.Always | optional,
                controlStyle
                  | { _ | Dyn }
                  | doc "Style of the button or control itself"
                  | optional,
                darkStyle | js2n.Always | optional,
                "default" | js2n.Always | optional,
                defaultFunc | js2n.Always | optional,
                defaultSendTo | js2n.Always | optional,
                disabled | js2n.Always | optional,
                expertMode | js2n.Always | optional,
                help | js2n.Always | optional,
                helpLink | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                href | String | doc "Link",
                icon | String | doc "icon for button" | optional,
                label | js2n.Always | optional,
                lg | js2n.Always | optional,
                md | js2n.Always | optional,
                newLine | js2n.Always | optional,
                noMultiEdit | js2n.Always | optional,
                noTranslation | js2n.Always | optional,
                sm | js2n.Always | optional,
                style | js2n.Always | optional,
                text
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.multilingual", { _ | Dyn } ]
                    ]
                  | doc "Static link or button"
                  | optional,
                tooltip | js2n.Always | optional,
                type | js2n.Always,
                validator | js2n.Always | optional,
                validatorErrorText | js2n.Always | optional,
                validatorNoSaveOnError | js2n.Always | optional,
                variant
                  | std.enum.TagOrString
                  | [| 'text, 'outlined, 'contained |]
                  | doc "If button is outlined, contained or text"
                  | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.tableItemBaseProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                attr | String | doc "The linked attribute name" | optional,
                filter | Bool | optional,
                sort | Bool | optional,
                title
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.multilingual", { _ | Dyn } ]
                    ]
                  | optional,
                width | std.contract.any_of [ Number, String ] | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.tableItems" =
        Array (
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
                          properties = { type = js2n.Const "language", },
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
                        allowSaveWithError | js2n.Always | optional,
                        confirm | js2n.Always | optional,
                        darkStyle | js2n.Always | optional,
                        "default" | js2n.Always | optional,
                        defaultFunc | js2n.Always | optional,
                        defaultSendTo | js2n.Always | optional,
                        disabled | js2n.Always | optional,
                        expertMode | js2n.Always | optional,
                        help | js2n.Always | optional,
                        helpLink | js2n.Always | optional,
                        hidden | js2n.Always | optional,
                        hideOnlyControl | js2n.Always | optional,
                        label | js2n.Always | optional,
                        lg | js2n.Always | optional,
                        md | js2n.Always | optional,
                        newLine | js2n.Always | optional,
                        noMultiEdit | js2n.Always | optional,
                        noTranslation | js2n.Always | optional,
                        onChange | js2n.Always | optional,
                        sm | js2n.Always | optional,
                        style | js2n.Always | optional,
                        system
                          | Bool
                          | doc "Allow the usage of the system language from system.config as default",
                        tooltip | js2n.Always | optional,
                        type | js2n.Always,
                        validator | js2n.Always | optional,
                        validatorErrorText | js2n.Always | optional,
                        validatorNoSaveOnError | js2n.Always | optional,
                        xl | js2n.Always | optional,
                        xs | js2n.Always | optional,
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
                            { type = js2n.Const "autocompleteSendTo", },
                          required = {},
                        },
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
                            allowSaveWithError | js2n.Always | optional,
                            alsoDependsOn
                              | refs."definitions.alsoDependsOnSendProp"
                              | Array Dyn
                              | optional,
                            attr | js2n.Always | optional,
                            command | String | doc "Command to be sent.",
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            data
                              | { _ | Dyn }
                              | doc "Data to be sent as JSON."
                              | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            filter | js2n.Always | optional,
                            freeSolo
                              | Bool
                              | doc "Set freeSolo to true so the textbox can contain any arbitrary value."
                              | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            jsonData
                              | String
                              | doc "Data to be sent as parsable string, can contain special placeholder. E. g. '{\"subject1\": \"${data.subject}\", \"options1\": {\"host\": \"${data.host}\"}}'"
                              | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            maxLength | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            placeholder
                              | String
                              | doc "Placeholder (for text control)"
                              | optional,
                            sm | js2n.Always | optional,
                            sort | js2n.Always | optional,
                            style | js2n.Always | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            width | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      refs."definitions.tableItemBaseProps"
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
                          properties = { type = js2n.Const "selectSendTo", },
                          required = {},
                        },
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
                            allowSaveWithError | js2n.Always | optional,
                            alsoDependsOn
                              | refs."definitions.alsoDependsOnSendProp"
                              | Array Dyn
                              | optional,
                            attr | js2n.Always | optional,
                            command | String | doc "Command to be sent.",
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            data
                              | { _ | Dyn }
                              | doc "Data to be sent as JSON."
                              | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            doNotSave
                              | refs."definitions.doNotSaveProp"
                              | Bool
                              | optional,
                            expertMode | js2n.Always | optional,
                            filter | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            jsonData
                              | String
                              | doc "Data to be sent as parsable string, can contain special placeholder. E. g. '{\"subject1\": \"${data.subject}\", \"options1\": {\"host\": \"${data.host}\"}}'"
                              | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            manual
                              | Bool
                              | doc "Allow manual editing. Without Dropdown"
                              | optional,
                            md | js2n.Always | optional,
                            multiple | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            sort | js2n.Always | optional,
                            style | js2n.Always | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            width | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      refs."definitions.tableItemBaseProps"
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
                          properties = { type = js2n.Const "textSendTo", },
                          required = {},
                        },
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
                            allowSaveWithError | js2n.Always | optional,
                            alsoDependsOn
                              | refs."definitions.alsoDependsOnSendProp"
                              | Array Dyn
                              | optional,
                            attr | js2n.Always | optional,
                            command | String | doc "Command to be sent.",
                            confirm | js2n.Always | optional,
                            container | String | doc "div, text" | optional,
                            copyToClipboard
                              | Bool
                              | doc "If true, show button"
                              | optional,
                            darkStyle | js2n.Always | optional,
                            data
                              | { _ | Dyn }
                              | doc "Data to be sent as JSON."
                              | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            filter | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            jsonData
                              | String
                              | doc "Data to be sent as parsable string, can contain special placeholder. E. g. '{\"subject1\": \"${data.subject}\", \"options1\": {\"host\": \"${data.host}\"}}'"
                              | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            sort | js2n.Always | optional,
                            style | js2n.Always | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            width | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      refs."definitions.tableItemBaseProps"
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
                          properties = { type = js2n.Const "imageSendTo", },
                          required = {},
                        },
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
                            allowSaveWithError | js2n.Always | optional,
                            alsoDependsOn
                              | refs."definitions.alsoDependsOnSendProp"
                              | Array Dyn
                              | optional,
                            attr | js2n.Always | optional,
                            command | String | doc "Command to be sent.",
                            confirm | js2n.Always | optional,
                            container | String | doc "div, text" | optional,
                            copyToClipboard
                              | Bool
                              | doc "If true, show button"
                              | optional,
                            darkStyle | js2n.Always | optional,
                            data
                              | { _ | Dyn }
                              | doc "Data to be sent as JSON."
                              | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            filter | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            jsonData
                              | String
                              | doc "Data to be sent as parsable string, can contain special placeholder. E. g. '{\"subject1\": \"${data.subject}\", \"options1\": {\"host\": \"${data.host}\"}}'"
                              | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            sort | js2n.Always | optional,
                            style | js2n.Always | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            width | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      refs."definitions.tableItemBaseProps"
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
                          properties = { type = js2n.Const "header", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            size
                              | js2n.number.Maximum 5
                              | js2n.number.Minimum 1
                              | doc "Size of the header: h1-h5",
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            text
                              | std.contract.any_of
                                [
                                  String,
                                  std.contract.Sequence
                                    [
                                      refs."definitions.multilingual",
                                      { _ | Dyn }
                                    ]
                                ]
                              | doc "Header text",
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "color", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "divider", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            color
                              | std.enum.TagOrString
                              | [| 'secondary, 'primary |]
                              | doc "Optional color"
                              | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            height | Number | doc "Optional height" | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "fileSelector", },
                          required = {},
                        },
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
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            delete
                              | Bool
                              | doc "Allow deletion of files"
                              | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            fileTypes
                              | std.enum.TagOrString
                              | [| 'text, 'image, 'audio |]
                              | doc "Type of files"
                              | optional,
                            filter | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            maxSize
                              | String
                              | doc "max file size (default 2MB)"
                              | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noNone
                              | Bool
                              | doc "Do not show 'none' option"
                              | optional,
                            noSize
                              | Bool
                              | doc "Do not show size of files"
                              | optional,
                            noTranslation | js2n.Always | optional,
                            objectID
                              | String
                              | doc "Object ID of type meta. You can use special placeholder '%INSTANCE%': like 'myAdapter.%INSTANCE%.files'"
                              | optional,
                            onChange | js2n.Always | optional,
                            pattern
                              | String
                              | doc "File extension pattern. Allowed '**/*.ext' to show all files from sub-folders too, '*.ext' to show from root folder or 'folderName/*.ext' to show all files in sub-folder folderName. Default '**/*.*'"
                              | optional,
                            refresh
                              | Bool
                              | doc "Show refresh button near the select"
                              | optional,
                            sm | js2n.Always | optional,
                            sort | js2n.Always | optional,
                            style | js2n.Always | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            upload
                              | String
                              | doc "path, where the uploaded files will be stored. Like 'folderName'. If not defined, no upload field will be shown. To upload in the root, set this field to '/'"
                              | optional,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            width | js2n.Always | optional,
                            withFolder
                              | Bool
                              | doc "show folder name even if all files in same folder"
                              | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      refs."definitions.tableItemBaseProps"
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
                          properties = { type = js2n.Const "icon", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            crop
                              | Bool
                              | doc "If true, allow user to crop the image (only for non svg)"
                              | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            maxHeight
                              | Number
                              | doc "Maximum height"
                              | optional,
                            maxSize | Number | doc "Maximum size" | optional,
                            maxWidth | Number | doc "Maximum width" | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            square
                              | Bool
                              | doc "Width must be equal to height or crop must allow only square as shape"
                              | optional,
                            style | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "panel", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            "#include"
                              | js2n.string.Matches
                                "^.+\\.jsonConfig(.json|.json5)$"
                              | doc "Include other JSON or JSON5 file. Here is the name of the file with extension. E.g. 'options.jsonConfig.json' for 'anyName.jsonConfig.json5'"
                              | optional,
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            icon
                              | String
                              | doc "Panel can have icon (base64)"
                              | optional,
                            iconPosition
                              | refs."definitions.iconPositionProp"
                              | String
                              | optional,
                            innerStyle | js2n.Always | optional,
                            items
                              | refs."definitions.topLevelProperties.properties.items"
                              | { _ | Dyn }
                              | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      js2n.OneOf
                        [
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "items" ],
                              Array Dyn
                            ],
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "#include" ],
                              Array Dyn
                            ]
                        ]
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
                          properties = { type = js2n.Const "image", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            accept
                              | { _ | Dyn }
                              | doc "HTML accept attribute, like { 'image/**': [], 'application/pdf': ['.pdf'] }`, default `{ 'image/*': [] }"
                              | optional,
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            base64
                              | Bool
                              | doc "If true, the image will be saved as data-url in attribute, elsewise as binary in file storage"
                              | optional,
                            confirm | js2n.Always | optional,
                            crop
                              | Bool
                              | doc "If true, allow user to crop the image (only for non svg)"
                              | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            filename
                              | String
                              | doc "Name of the file"
                              | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            maxHeight
                              | Number
                              | doc "'Maximum height"
                              | optional,
                            maxSize | Number | doc "'Maximum size" | optional,
                            maxWidth | Number | doc "'Maximum width" | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            square
                              | Bool
                              | doc "Width must be equal to height or crop must allow only square as shape"
                              | optional,
                            style | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "sendTo", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            color
                              | std.enum.TagOrString
                              | [| 'secondary, 'primary |]
                              | doc "Optional color"
                              | optional,
                            command | String | doc "Command to be sent.",
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            data
                              | { _ | Dyn }
                              | doc "Data to be sent as JSON."
                              | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            error
                              | { _ | Dyn }
                              | doc "{error1: {en: 'E'}, error2: {en: 'E2'}}"
                              | optional,
                            expertMode | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            icon
                              | String
                              | doc "sendTo can have icon (base64)"
                              | optional,
                            jsonData
                              | String
                              | doc "Data to be sent as parsable string, can contain special placeholder. E. g. '{\"subject1\": \"${data.subject}\", \"options1\": {\"host\": \"${data.host}\"}}'"
                              | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            onLoaded
                              | Bool
                              | doc "if true - execute the button logic once initially"
                              | optional,
                            openUrl
                              | Bool
                              | doc "if true - open URL in new tab, if response contains attribute openUrl, like {\"openUrl\": \"http://1.2.3.4:80/aaa\", \"window\": \"_blank\", \"saveConfig\": true}. If saveConfig is true, the user will be requested to save the configuration."
                              | optional,
                            placeholder
                              | String
                              | doc "Placeholder (for text control)"
                              | optional,
                            result
                              | { _ | Dyn }
                              | doc "{result1: {en: 'A'}, result2: {en: 'B'}}"
                              | optional,
                            showProcess
                              | Bool
                              | doc "Show spinner while request is in progress"
                              | optional,
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            useNative
                              | Bool
                              | doc "if adapter returns result with `native` attribute it will be used for configuration. If `saveConfig` is true, the user will be requested to save the configuration"
                              | optional,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            variant
                              | std.enum.TagOrString
                              | [| 'outlined, 'contained |]
                              | doc "If outlined or contained"
                              | optional,
                            width | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "password", },
                          required = {},
                        },
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
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            encrypted
                              | Bool
                              | doc "Is value encrypted or not (of course only for texts)"
                              | optional,
                            expertMode | js2n.Always | optional,
                            filter | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            repeat
                              | Bool
                              | doc "Password must be compared with password"
                              | optional,
                            sm | js2n.Always | optional,
                            sort | js2n.Always | optional,
                            style | js2n.Always | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            visible
                              | Bool
                              | doc "True if allow to view the password by toggling the view button"
                              | optional,
                            width | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      refs."definitions.tableItemBaseProps"
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
                          properties = { type = js2n.Const "file", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            filename | String | doc "Name of the file",
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "slider", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            max | Number | doc "Maximum value" | optional,
                            md | js2n.Always | optional,
                            min | Number | doc "Minimal value" | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            step | Number | doc "Step size" | optional,
                            style | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "custom", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      refs."definitions.customProps"
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
                          properties = { type = js2n.Const "checkbox", },
                          required = {},
                        },
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
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            filter | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            sort | js2n.Always | optional,
                            style | js2n.Always | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            width | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      refs."definitions.tableItemBaseProps"
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
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'port, 'number |]
                                      ],
                              },
                          required = {},
                        },
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
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            doNotSave | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            filter | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            max | Number | doc "Maximum value" | optional,
                            md | js2n.Always | optional,
                            min | Number | doc "Minimal value" | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            placeholder
                              | String
                              | doc "Placeholder (for text control)"
                              | optional,
                            sm | js2n.Always | optional,
                            sort | js2n.Always | optional,
                            step
                              | Number
                              | doc "Step size for increase and decrease buttons"
                              | optional,
                            style | js2n.Always | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            unit
                              | std.contract.any_of
                                [
                                  String,
                                  std.contract.Sequence
                                    [
                                      refs."definitions.multilingual",
                                      { _ | Dyn }
                                    ]
                                ]
                              | doc "Unit (could be multi-language)"
                              | optional,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            width | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      refs."definitions.tableItemBaseProps"
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
                          properties = { type = js2n.Const "alive", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      refs."definitions.aliveProps"
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
                          properties = { type = js2n.Const "autocomplete", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            filter | js2n.Always | optional,
                            freeSolo
                              | Bool
                              | doc "Set freeSolo to true so the textbox can contain any arbitrary value."
                              | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            options
                              | Array (
                                std.contract.any_of
                                  [
                                    String,
                                    {
                                      color
                                        | String
                                        | doc "Color of the option"
                                        | optional,
                                      hidden | Bool | optional,
                                      label
                                        | std.contract.any_of
                                          [
                                            String,
                                            std.contract.Sequence
                                              [
                                                refs."definitions.multilingual",
                                                { _ | Dyn }
                                              ]
                                          ]
                                        | doc "Label of the option",
                                      value
                                        | std.contract.any_of [ Number, String ]
                                        | doc "Value of the option",
                                    }
                                  ]
                              )
                              | doc "Options which can be completed. [\"value1\", \"value2\", ...] or [{\"value\": \"value\", \"label\": \"Value1\"}, \"value2\", ...]",
                            placeholder
                              | String
                              | doc "Placeholder (for text control)"
                              | optional,
                            sm | js2n.Always | optional,
                            sort | js2n.Always | optional,
                            style | js2n.Always | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            width | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "cron", },
                          required = {},
                        },
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
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            complex
                              | Bool
                              | doc "Show CRON with \"minutes\", \"seconds\" and so on"
                              | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            filter | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            simple
                              | Bool
                              | doc "Show simple CRON settings"
                              | optional,
                            sm | js2n.Always | optional,
                            sort | js2n.Always | optional,
                            style | js2n.Always | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            width | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      js2n.OneOf
                        [
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "complex" ],
                              Array Dyn
                            ],
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "simple" ],
                              Array Dyn
                            ]
                        ],
                      refs."definitions.tableItemBaseProps"
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
                          properties = { type = js2n.Const "text", },
                          required = {},
                        },
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
                            allowEmpty
                              | Bool
                              | doc "if true, the JSON will be validated only if the value is not empty"
                              | optional,
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            doNotSave | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            filter | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            maxLength | js2n.Always | optional,
                            maxRows
                              | Number
                              | doc "max rows of textarea. Used only if `minRows` > 1"
                              | optional,
                            md | js2n.Always | optional,
                            minRows
                              | Number
                              | doc "default is 1. Set this attribute to `2` or more if you want to have a textarea with more than one row"
                              | optional,
                            newLine | js2n.Always | optional,
                            noClearButton
                              | Bool
                              | doc "Do not show a clear button"
                              | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            placeholder
                              | String
                              | doc "Placeholder (for text control)"
                              | optional,
                            readOnly
                              | Bool
                              | doc "Shows text as read only field"
                              | optional,
                            sm | js2n.Always | optional,
                            sort | js2n.Always | optional,
                            style | js2n.Always | optional,
                            text
                              | std.contract.any_of
                                [
                                  String,
                                  std.contract.Sequence
                                    [
                                      refs."definitions.multilingual",
                                      { _ | Dyn }
                                    ]
                                ]
                              | doc "Text input"
                              | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            trim
                              | Bool
                              | doc "If text must be trimmed or not (default = true)"
                              | optional,
                            type | js2n.Always,
                            validateJson
                              | Bool
                              | doc "if true, the text will be validated as JSON"
                              | optional,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            width | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      refs."definitions.tableItemBaseProps"
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
                          properties = { type = js2n.Const "select", },
                          required = {},
                        },
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
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            filter | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            multiple
                              | Bool
                              | doc "If true, multiple values can be selected"
                              | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            options
                              | Array
                                {
                                  color | String | optional,
                                  group
                                    | Bool
                                    | doc "Is it a group or not"
                                    | optional,
                                  hidden
                                    | String
                                    | doc "JS function that could use `native.attribute` for calculation"
                                    | optional,
                                  label
                                    | std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        { _ | Dyn },
                                        Array Dyn
                                      ]
                                    | doc "Label",
                                  value
                                    | std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        { _ | Dyn },
                                        Array Dyn
                                      ]
                                    | doc "Value",
                                }
                              | doc "Options which can be selected"
                              | optional,
                            showAllValues
                              | Bool
                              | doc "Show item even if no label was found for it (by multiple), default=`true`"
                              | optional,
                            sm | js2n.Always | optional,
                            sort | js2n.Always | optional,
                            style | js2n.Always | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            width | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      refs."definitions.tableItemBaseProps"
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
                          properties = { type = js2n.Const "pattern", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            copyToClipboard
                              | Bool
                              | doc "If true, show copy button."
                              | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            pattern
                              | String
                              | doc "Read-only field with pattern like 'https://${data.ip}:${data.port}' (will not be saved in config)",
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "setState", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            ack | Bool | doc "ack-flag of the state" | optional,
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            color
                              | std.enum.TagOrString
                              | [| 'secondary, 'primary |]
                              | doc "Optional color"
                              | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            error
                              | { _ | Dyn }
                              | doc "{error1: {en: 'E'}, error2: {en: 'E2'}}"
                              | optional,
                            expertMode | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            icon
                              | String
                              | doc "setState can have icon (base64)"
                              | optional,
                            id | String | doc "State ID, e.g. 'info.test'",
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            okText
                              | String
                              | doc "Alert that will be shown by pressing the button"
                              | optional,
                            onChange | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            val
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  { _ | Dyn },
                                  Array Dyn
                                ]
                              | doc "State value to set",
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            variant
                              | std.enum.TagOrString
                              | [| 'outlined, 'contained |]
                              | doc "If outlined or contained"
                              | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "qrCode", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            bgColor
                              | String
                              | doc "Background color"
                              | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            data
                              | String
                              | doc "The data to be encoded in the QR Code",
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            fgColor
                              | String
                              | doc "Foreground color"
                              | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            level
                              | std.enum.TagOrString
                              | [| 'H, 'Q, 'M, 'L |]
                              | doc "QR code level"
                              | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            size
                              | Number
                              | doc "The size of the QR code"
                              | optional,
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "func", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            short | String | doc "no system.func." | optional,
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "room", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            short | String | doc "no system.room." | optional,
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "user", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            short | String | doc "no system.user." | optional,
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "ip", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            listenOnAllPorts
                              | Bool
                              | doc "Add 0.0.0.0 to option"
                              | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noInternal
                              | refs."definitions.noInternalProp"
                              | Bool
                              | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            onlyIp4
                              | Bool
                              | doc "Show only IP4 addresses"
                              | optional,
                            onlyIp6
                              | Bool
                              | doc "Show only IP6 addresses"
                              | optional,
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "certificate", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            certType
                              | std.enum.TagOrString
                              | [| 'chained, 'private, 'public |]
                              | doc "Type of the certificate",
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "certificates", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      refs."definitions.certificatesProps"
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
                          properties = { type = js2n.Const "staticLink", },
                          required = {},
                        },
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
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            color | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            filter | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            href | js2n.Always | optional,
                            icon | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            sort | js2n.Always | optional,
                            style | js2n.Always | optional,
                            text | js2n.Always | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            variant | js2n.Always | optional,
                            width | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      refs."definitions.tableItemBaseProps",
                      refs."definitions.staticLinkProps"
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
                          properties = { type = js2n.Const "staticText", },
                          required = {},
                        },
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
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            filter | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            sort | js2n.Always | optional,
                            style | js2n.Always | optional,
                            text
                              | std.contract.any_of
                                [
                                  String,
                                  std.contract.Sequence
                                    [
                                      refs."definitions.multilingual",
                                      { _ | Dyn }
                                    ]
                                ]
                              | doc "Static text like description"
                              | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            width | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      js2n.OneOf
                        [
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "text" ],
                              Array Dyn
                            ],
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "label" ],
                              Array Dyn
                            ]
                        ],
                      refs."definitions.tableItemBaseProps"
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
                          properties = { type = js2n.Const "staticInfo", },
                          required = {},
                        },
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
                            addColon
                              | Bool
                              | doc "Add to label the colon at the end if not exist in label"
                              | optional,
                            attr | js2n.Always | optional,
                            blink
                              | std.contract.any_of [ Bool, String ]
                              | doc "Value should blink continuously (true or color)"
                              | optional,
                            blinkOnUpdate
                              | std.contract.any_of [ Bool, String ]
                              | doc "Value should blink when updated (true or color)"
                              | optional,
                            booleanAsCheckbox
                              | Bool
                              | doc "Show boolean values as checkbox"
                              | optional,
                            copyToClipboard
                              | Bool
                              | doc "Show copy to clipboard button for value"
                              | optional,
                            darkStyle | js2n.Always | optional,
                            data
                              | std.contract.any_of
                                [ Bool, Number, String, { _ | Dyn } ]
                              | doc "Value to be shown",
                            expertMode | js2n.Always | optional,
                            filter | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            highlight
                              | Bool
                              | doc "Highlight line on mouse over"
                              | optional,
                            html
                              | Bool
                              | doc "Show string values as HTML"
                              | optional,
                            label | js2n.Always,
                            labelIcon
                              | String
                              | doc "Base64 icon for label"
                              | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            narrow
                              | Bool
                              | doc "With this flag, the value will appear just after the label"
                              | optional,
                            newLine | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            size
                              | std.contract.any_of
                                [
                                  std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'large, 'normal, 'small |]
                                    ],
                                  Number
                                ]
                              | doc "Font size"
                              | optional,
                            sm | js2n.Always | optional,
                            sort | js2n.Always | optional,
                            style | js2n.Always | optional,
                            styleLabel
                              | { _ | Dyn }
                              | doc "React CSS Styles for label"
                              | optional,
                            styleUnit
                              | { _ | Dyn }
                              | doc "React CSS Styles for unit"
                              | optional,
                            styleValue
                              | { _ | Dyn }
                              | doc "React CSS Styles for value"
                              | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            unit
                              | std.contract.any_of
                                [
                                  String,
                                  std.contract.Sequence
                                    [
                                      refs."definitions.multilingual",
                                      { _ | Dyn }
                                    ]
                                ]
                              | doc "Unit (could be multi-language)"
                              | optional,
                            width | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      refs."definitions.tableItemBaseProps"
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
                          properties = { type = js2n.Const "instance", },
                          required = {},
                        },
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
                            adapter
                              | String
                              | doc "Name of the adapter. With special name _dataSources you can get all adapters with flag common.getHistory",
                            adapters
                              | Array String
                              | doc "Optional list of adapters, that should be shown. If not defined, all adapters will be shown. Only active if adapter attribute is not defined."
                              | optional,
                            all
                              | Bool
                              | doc "Add to the options ALL option with value *"
                              | optional,
                            allowDeactivate
                              | Bool
                              | doc "If true. Additional option \"deactivate\" is shown"
                              | optional,
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            filter | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            long
                              | Bool
                              | doc "Value will look like system.adapter.ADAPTER.0 and not ADAPTER.0"
                              | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            onlyEnabled
                              | Bool
                              | doc "If true. Only enabled instances will be shown"
                              | optional,
                            short
                              | Bool
                              | doc "Value will look like 0 and not ADAPTER.0"
                              | optional,
                            sm | js2n.Always | optional,
                            sort | js2n.Always | optional,
                            style | js2n.Always | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            width | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      refs."definitions.tableItemBaseProps"
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
                          properties = { type = js2n.Const "staticImage", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            href | String | doc "Link" | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            src
                              | String
                              | doc "Name of picture (from admin directory)"
                              | optional,
                            style | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "chips", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            delimiter
                              | String
                              | doc "Delimiter for options. If no delimiter, the setting will be stored as array"
                              | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            filter | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            sort | js2n.Always | optional,
                            style | js2n.Always | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            width | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "objectId", },
                          required = {},
                        },
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
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            customFilter
                              | String
                              | doc "Cannot be used together with `types` settings. Example: `{type: ['channel', 'device']}` - show only channels and devices"
                              | optional,
                            darkStyle | js2n.Always | optional,
                            "default" | js2n.Always | optional,
                            defaultFunc | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            filter | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            onChange | js2n.Always | optional,
                            placeholder
                              | String
                              | doc "Placeholder (for text control)"
                              | optional,
                            root
                              | Bool
                              | doc "Show only this root object and its children"
                              | optional,
                            sm | js2n.Always | optional,
                            sort | js2n.Always | optional,
                            style | js2n.Always | optional,
                            title | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            types
                              | std.contract.any_of
                                [
                                  std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [|
                                        'folder,
                                        'chart,
                                        'group,
                                        'user,
                                        'script,
                                        'config,
                                        'meta,
                                        'instance,
                                        'adapter,
                                        'host,
                                        'enum,
                                        'device,
                                        'channel,
                                        'state
                                      |]
                                    ],
                                  std.contract.Sequence
                                    [
                                      js2n.array.MaxItems 1,
                                      Array (
                                        std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [|
                                              'folder,
                                              'chart,
                                              'group,
                                              'user,
                                              'script,
                                              'config,
                                              'meta,
                                              'instance,
                                              'adapter,
                                              'host,
                                              'enum,
                                              'device,
                                              'channel,
                                              'state
                                            |]
                                          ]
                                      )
                                    ]
                                ]
                              | doc "Filter for one of the possible types: 'channel', 'device', ... (is state by default)"
                              | optional,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            width | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      refs."definitions.tableItemBaseProps"
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
                          properties = { type = js2n.Const "checkLicense", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            type | js2n.Always | optional,
                            uuid
                              | Bool
                              | doc "If UUID must be checked too"
                              | optional,
                            version | Bool | doc "Check version" | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "uuid", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [
                      refs."definitions.tableItemBaseProps",
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            type | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ]
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
                          properties = { type = js2n.Const "datePicker", },
                          required = {},
                        },
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
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      refs."definitions.tableItemBaseProps"
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
                          properties = { type = js2n.Const "timePicker", },
                          required = {},
                        },
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
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            expertMode | js2n.Always | optional,
                            format
                              | String
                              | doc "Format passed to the date picker"
                              | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            lg | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            returnFormat
                              | std.enum.TagOrString
                              | [| '"HH:mm:ss", 'fullDate |]
                              | doc "Use `fullDate` or `HH:mm:ss`. Defaults to full date for backward compatibility reasons."
                              | optional,
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            timeSteps
                              | {
                                hours | Number | optional,
                                minutes | Number | optional,
                                seconds | Number | optional,
                              }
                              | doc "Represent the available time steps for each view"
                              | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            views
                              | Array (
                                std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'seconds, 'minutes, 'hours |]
                                  ]
                              )
                              | doc "Configure which views should be shown to the users"
                              | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      refs."definitions.tableItemBaseProps"
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
                          properties = { type = js2n.Const "coordinates", },
                          required = {},
                        },
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
                            allowSaveWithError | js2n.Always | optional,
                            attr | js2n.Always | optional,
                            autoInit
                              | Bool
                              | doc "init field with current coordinates if empty"
                              | optional,
                            confirm | js2n.Always | optional,
                            darkStyle | js2n.Always | optional,
                            defaultSendTo | js2n.Always | optional,
                            disabled | js2n.Always | optional,
                            divider
                              | String
                              | doc "divider between latitude and longitude. Default \",\" (Used if longitudeName and latitudeName are not defined)"
                              | optional,
                            expertMode | js2n.Always | optional,
                            help | js2n.Always | optional,
                            helpLink | js2n.Always | optional,
                            hidden | js2n.Always | optional,
                            hideOnlyControl | js2n.Always | optional,
                            label | js2n.Always | optional,
                            latitudeName
                              | String
                              | doc "if defined, the latitude will be stored in this attribute, divider will be ignored"
                              | optional,
                            lg | js2n.Always | optional,
                            longitudeName
                              | String
                              | doc "if defined, the longitude will be stored in this attribute, divider will be ignored"
                              | optional,
                            maxLength | js2n.Always | optional,
                            md | js2n.Always | optional,
                            newLine | js2n.Always | optional,
                            noMultiEdit | js2n.Always | optional,
                            noTranslation | js2n.Always | optional,
                            sm | js2n.Always | optional,
                            style | js2n.Always | optional,
                            tooltip | js2n.Always | optional,
                            type | js2n.Always,
                            useSystemName
                              | String
                              | doc "if defined, the checkbox with \"Use system settings\" will be shown and latitude, longitude will be read from system.config, a boolean will be saved to the given name"
                              | optional,
                            validator | js2n.Always | optional,
                            validatorErrorText | js2n.Always | optional,
                            validatorNoSaveOnError | js2n.Always | optional,
                            xl | js2n.Always | optional,
                            xs | js2n.Always | optional,
                          },
                          Array Dyn
                        ],
                      refs."definitions.tableItemBaseProps"
                    ]) js2n.Always,
                {
                  button | Bool | doc "show link as button" | optional,
                  confirm
                    | {
                      alsoDependsOn
                        | Array String
                        | doc "Trigger confirm dialog if one of the components changed."
                        | optional,
                      cancel
                        | std.contract.any_of
                          [
                            String,
                            std.contract.Sequence
                              [ refs."definitions.multilingual", { _ | Dyn } ]
                          ]
                        | doc "Text for 'cancel' button"
                        | optional,
                      condition
                        | String
                        | doc "JS function: true show confirm dialog"
                        | optional,
                      ok
                        | std.contract.any_of
                          [
                            String,
                            std.contract.Sequence
                              [ refs."definitions.multilingual", { _ | Dyn } ]
                          ]
                        | doc "Text for 'OK' button"
                        | optional,
                      text
                        | std.contract.any_of
                          [
                            String,
                            std.contract.Sequence
                              [ refs."definitions.multilingual", { _ | Dyn } ]
                          ]
                        | doc "Text of confirmation dialog"
                        | optional,
                      title
                        | std.contract.any_of
                          [
                            String,
                            std.contract.Sequence
                              [ refs."definitions.multilingual", { _ | Dyn } ]
                          ]
                        | doc "Title of confirmation dialog"
                        | optional,
                      type
                        | std.enum.TagOrString
                        | [| 'none, 'error, 'warning, 'info |]
                        | optional,
                    }
                    | doc "Confirm dialog"
                    | optional,
                  darkStyle
                    | { _ | Dyn }
                    | doc "CSS style for dark mode in react notation: 'radiusBorder' and not 'radius-border'"
                    | optional,
                  "default"
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        { _ | Dyn },
                        Array Dyn
                      ]
                    | doc "Default value"
                    | optional,
                  defaultFunc
                    | std.contract.any_of
                      [
                        String,
                        {
                          alsoDependsOn
                            | refs."definitions.alsoDependsOnSendProp"
                            | Array Dyn
                            | optional,
                          func
                            | String
                            | doc "JS function: that calculates value"
                            | optional,
                        }
                      ]
                    | doc "JS function to calculate default value"
                    | optional,
                  defaultSendTo
                    | String
                    | doc "Command to request initial value from running instance"
                    | optional,
                  disabled
                    | String
                    | doc "JS function that could use 'native.attribute' for calculation"
                    | optional,
                  doNotSave
                    | refs."definitions.doNotSaveProp"
                    | Bool
                    | optional,
                  help
                    | std.contract.any_of
                      [
                        String,
                        std.contract.Sequence
                          [ refs."definitions.multilingual", { _ | Dyn } ]
                      ]
                    | optional,
                  helpLink | String | doc "href to help" | optional,
                  hidden
                    | String
                    | doc "JS function that could use 'native.attribute' for calculation"
                    | optional,
                  hideOnlyControl
                    | Bool
                    | doc "If hidden the place will be shown, but no control"
                    | optional,
                  label
                    | std.contract.any_of
                      [
                        String,
                        std.contract.Sequence
                          [ refs."definitions.multilingual", { _ | Dyn } ]
                      ]
                    | optional,
                  lg
                    | Number
                    | doc "width in 1/12 of screen on large screens"
                    | optional,
                  maxLength
                    | Number
                    | doc "max length of text in field"
                    | optional,
                  md
                    | Number
                    | doc "width in 1/12 of screen on middle screens"
                    | optional,
                  newLine
                    | Bool
                    | doc "Should be shown from new line"
                    | optional,
                  noMultiEdit
                    | Bool
                    | doc "(only custom) if this flag set to true, this field will not be shown if user selected more than one object for edit"
                    | optional,
                  noTranslation
                    | Bool
                    | doc "Do not translate selects or other options (not for help, label or placeholder)"
                    | optional,
                  onChange
                    | {
                      alsoDependsOn
                        | refs."definitions.alsoDependsOnSendProp"
                        | Array Dyn
                        | optional,
                      calculateFunc
                        | String
                        | doc "JS function: that calculates value"
                        | optional,
                      ignoreOwnChanges
                        | Bool
                        | doc "Do not trigger onChange event if changed value of this attribute"
                        | optional,
                    }
                    | optional,
                  showFirstAddOnTop
                    | Bool
                    | doc "Show first plus button on top of the first column and not on the left."
                    | optional,
                  showSecondAddAt
                    | Number
                    | doc "The number of lines from which the second add button at the bottom of the table will be shown. Default 5"
                    | optional,
                  sm
                    | Number
                    | doc "Width in 1/12 of screen on small screen"
                    | optional,
                  style
                    | { _ | Dyn }
                    | doc "CSS style in react notation: 'radiusBorder' and not 'radius-border'"
                    | optional,
                  tooltip
                    | std.contract.any_of
                      [
                        String,
                        std.contract.Sequence
                          [ refs."definitions.multilingual", { _ | Dyn } ]
                      ]
                    | doc "Optional tooltip"
                    | optional,
                  type | refs."definitions.componentType" | String,
                  validator
                    | String
                    | doc "JS function: true no error, false - error"
                    | optional,
                  validatorErrorText
                    | String
                    | doc "Text to show if validator fails"
                    | optional,
                  validatorNoSaveOnError
                    | Bool
                    | doc "True if save must be disabled by errors"
                    | optional,
                  xl
                    | Number
                    | doc "width in 1/12 of screen on extra large screens"
                    | optional,
                  xs
                    | Number
                    | doc "width in 1/12 of screen on very small screens"
                    | optional,
                  ..
                }
              ]
          ),
      "definitions.textProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowSaveWithError | js2n.Always | optional,
                confirm | js2n.Always | optional,
                copyToClipboard
                  | Bool
                  | doc "Shows copy to clipboard button, but only if disabled or read-only"
                  | optional,
                darkStyle | js2n.Always | optional,
                "default" | js2n.Always | optional,
                defaultFunc | js2n.Always | optional,
                defaultSendTo | js2n.Always | optional,
                disabled | js2n.Always | optional,
                doNotSave | js2n.Always | optional,
                expertMode | js2n.Always | optional,
                help | js2n.Always | optional,
                helpLink | js2n.Always | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                label | js2n.Always | optional,
                lg | js2n.Always | optional,
                maxLength | js2n.Always | optional,
                maxRows
                  | Number
                  | doc "max rows of textarea. Used only if `minRows` > 1"
                  | optional,
                md | js2n.Always | optional,
                minRows
                  | Number
                  | doc "default is 1. Set this attribute to `2` or more if you want to have a textarea with more than one row"
                  | optional,
                newLine | js2n.Always | optional,
                noClearButton
                  | Bool
                  | doc "Do not show a clear button"
                  | optional,
                noMultiEdit | js2n.Always | optional,
                noTranslation | js2n.Always | optional,
                onChange | js2n.Always | optional,
                placeholder
                  | String
                  | doc "Placeholder (for text control)"
                  | optional,
                readOnly
                  | Bool
                  | doc "Shows text as read only field"
                  | optional,
                sm | js2n.Always | optional,
                style | js2n.Always | optional,
                text
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.multilingual", { _ | Dyn } ]
                    ]
                  | doc "Text input"
                  | optional,
                time
                  | Bool
                  | doc "If true, the text will be shown as time. The value is readonly automatically"
                  | optional,
                tooltip | js2n.Always | optional,
                trim
                  | Bool
                  | doc "If text must be trimmed or not (default = true)"
                  | optional,
                type | js2n.Always,
                validator | js2n.Always | optional,
                validatorErrorText | js2n.Always | optional,
                validatorNoSaveOnError | js2n.Always | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.timePickerProps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowSaveWithError | js2n.Always | optional,
                darkStyle | js2n.Always | optional,
                defaultSendTo | js2n.Always | optional,
                disabled | js2n.Always | optional,
                expertMode | js2n.Always | optional,
                format
                  | String
                  | doc "Format passed to the date picker"
                  | optional,
                hidden | js2n.Always | optional,
                hideOnlyControl | js2n.Always | optional,
                label | js2n.Always | optional,
                lg | js2n.Always | optional,
                md | js2n.Always | optional,
                newLine | js2n.Always | optional,
                noMultiEdit | js2n.Always | optional,
                noTranslation | js2n.Always | optional,
                returnFormat
                  | std.enum.TagOrString
                  | [| '"HH:mm:ss", 'fullDate |]
                  | doc "Use `fullDate` or `HH:mm:ss`. Defaults to full date for backward compatibility reasons."
                  | optional,
                sm | js2n.Always | optional,
                style | js2n.Always | optional,
                timeSteps
                  | {
                    hours | Number | optional,
                    minutes | Number | optional,
                    seconds | Number | optional,
                  }
                  | doc "Represent the available time steps for each view"
                  | optional,
                tooltip | js2n.Always | optional,
                type | js2n.Always,
                views
                  | Array (
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'seconds, 'minutes, 'hours |] ]
                  )
                  | doc "Configure which views should be shown to the users"
                  | optional,
                xl | js2n.Always | optional,
                xs | js2n.Always | optional,
              },
              Array Dyn
            ],
      "definitions.topLevelProperties" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                "$schema" | String | doc "Specify a JSON schema" | optional,
                i18n | refs."definitions.i18n" | optional,
                items
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^.+" =
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
                                                    type =
                                                      js2n.Const "language",
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            system
                                              | Bool
                                              | doc "Allow the usage of the system language from system.config as default",
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                    type =
                                                      js2n.Const
                                                          "autocompleteSendTo",
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            alsoDependsOn
                                              | refs."definitions.alsoDependsOnSendProp"
                                              | Array Dyn
                                              | optional,
                                            command
                                              | String
                                              | doc "Command to be sent.",
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            data
                                              | { _ | Dyn }
                                              | doc "Data to be sent as JSON."
                                              | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            freeSolo
                                              | Bool
                                              | doc "Set freeSolo to true so the textbox can contain any arbitrary value."
                                              | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            jsonData
                                              | String
                                              | doc "Data to be sent as parsable string, can contain special placeholder. E. g. '{\"subject1\": \"${data.subject}\", \"options1\": {\"host\": \"${data.host}\"}}'"
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            maxLength | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            placeholder
                                              | String
                                              | doc "Placeholder (for text control)"
                                              | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                    type =
                                                      js2n.Const "selectSendTo",
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            alsoDependsOn
                                              | refs."definitions.alsoDependsOnSendProp"
                                              | Array Dyn
                                              | optional,
                                            command
                                              | String
                                              | doc "Command to be sent.",
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            data
                                              | { _ | Dyn }
                                              | doc "Data to be sent as JSON."
                                              | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            doNotSave
                                              | refs."definitions.doNotSaveProp"
                                              | Bool
                                              | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            jsonData
                                              | String
                                              | doc "Data to be sent as parsable string, can contain special placeholder. E. g. '{\"subject1\": \"${data.subject}\", \"options1\": {\"host\": \"${data.host}\"}}'"
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            manual
                                              | Bool
                                              | doc "Allow manual editing. Without Dropdown"
                                              | optional,
                                            md | js2n.Always | optional,
                                            multiple | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                    type =
                                                      js2n.Const "textSendTo",
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            alsoDependsOn
                                              | refs."definitions.alsoDependsOnSendProp"
                                              | Array Dyn
                                              | optional,
                                            command
                                              | String
                                              | doc "Command to be sent.",
                                            confirm | js2n.Always | optional,
                                            container
                                              | String
                                              | doc "div, text"
                                              | optional,
                                            copyToClipboard
                                              | Bool
                                              | doc "If true, show button"
                                              | optional,
                                            darkStyle | js2n.Always | optional,
                                            data
                                              | { _ | Dyn }
                                              | doc "Data to be sent as JSON."
                                              | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            jsonData
                                              | String
                                              | doc "Data to be sent as parsable string, can contain special placeholder. E. g. '{\"subject1\": \"${data.subject}\", \"options1\": {\"host\": \"${data.host}\"}}'"
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                    type =
                                                      js2n.Const "imageSendTo",
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
                                            alsoDependsOn
                                              | refs."definitions.alsoDependsOnSendProp"
                                              | Array Dyn
                                              | optional,
                                            command
                                              | String
                                              | doc "Command to be sent.",
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            data
                                              | { _ | Dyn }
                                              | doc "Data to be sent as JSON."
                                              | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            jsonData
                                              | String
                                              | doc "Data to be sent as parsable string, can contain special placeholder. E. g. '{\"subject1\": \"${data.subject}\", \"options1\": {\"host\": \"${data.host}\"}}'"
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                { type = js2n.Const "header", },
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            size
                                              | js2n.number.Maximum 5
                                              | js2n.number.Minimum 1
                                              | doc "Size of the header: h1-h5",
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            text
                                              | std.contract.any_of
                                                [
                                                  String,
                                                  std.contract.Sequence
                                                    [
                                                      refs."definitions.multilingual",
                                                      { _ | Dyn }
                                                    ]
                                                ]
                                              | doc "Header text",
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                { type = js2n.Const "color", },
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                    type = js2n.Const "divider",
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            color
                                              | std.enum.TagOrString
                                              | [| 'secondary, 'primary |]
                                              | doc "Optional color"
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            height
                                              | Number
                                              | doc "Optional height"
                                              | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                { type = js2n.Const "icon", },
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            crop
                                              | Bool
                                              | doc "If true, allow user to crop the image (only for non svg)"
                                              | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            maxHeight
                                              | Number
                                              | doc "Maximum height"
                                              | optional,
                                            maxSize
                                              | Number
                                              | doc "Maximum size"
                                              | optional,
                                            maxWidth
                                              | Number
                                              | doc "Maximum width"
                                              | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            sm | js2n.Always | optional,
                                            square
                                              | Bool
                                              | doc "Width must be equal to height or crop must allow only square as shape"
                                              | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                { type = js2n.Const "panel", },
                                              required = {},
                                            },
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
                                                "#include"
                                                  | js2n.string.Matches
                                                    "^.+\\.jsonConfig(.json|.json5)$"
                                                  | doc "Include other JSON or JSON5 file. Here is the name of the file with extension. E.g. 'options.jsonConfig.json' for 'anyName.jsonConfig.json5'"
                                                  | optional,
                                                allowSaveWithError
                                                  | js2n.Always
                                                  | optional,
                                                confirm
                                                  | js2n.Always
                                                  | optional,
                                                darkStyle
                                                  | js2n.Always
                                                  | optional,
                                                "default"
                                                  | js2n.Always
                                                  | optional,
                                                defaultFunc
                                                  | js2n.Always
                                                  | optional,
                                                defaultSendTo
                                                  | js2n.Always
                                                  | optional,
                                                disabled
                                                  | js2n.Always
                                                  | optional,
                                                expertMode
                                                  | js2n.Always
                                                  | optional,
                                                help | js2n.Always | optional,
                                                helpLink
                                                  | js2n.Always
                                                  | optional,
                                                hidden | js2n.Always | optional,
                                                hideOnlyControl
                                                  | js2n.Always
                                                  | optional,
                                                icon
                                                  | String
                                                  | doc "Panel can have icon (base64)"
                                                  | optional,
                                                iconPosition
                                                  | refs."definitions.iconPositionProp"
                                                  | String
                                                  | optional,
                                                innerStyle
                                                  | js2n.Always
                                                  | optional,
                                                items
                                                  | refs."definitions.topLevelProperties.properties.items"
                                                  | { _ | Dyn }
                                                  | optional,
                                                label | js2n.Always | optional,
                                                lg | js2n.Always | optional,
                                                md | js2n.Always | optional,
                                                newLine
                                                  | js2n.Always
                                                  | optional,
                                                noMultiEdit
                                                  | js2n.Always
                                                  | optional,
                                                noTranslation
                                                  | js2n.Always
                                                  | optional,
                                                onChange
                                                  | js2n.Always
                                                  | optional,
                                                sm | js2n.Always | optional,
                                                style | js2n.Always | optional,
                                                tooltip
                                                  | js2n.Always
                                                  | optional,
                                                type | js2n.Always,
                                                validator
                                                  | js2n.Always
                                                  | optional,
                                                validatorErrorText
                                                  | js2n.Always
                                                  | optional,
                                                validatorNoSaveOnError
                                                  | js2n.Always
                                                  | optional,
                                                xl | js2n.Always | optional,
                                                xs | js2n.Always | optional,
                                              },
                                              Array Dyn
                                            ],
                                          js2n.OneOf
                                            [
                                              std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  Number,
                                                  String,
                                                  js2n.record.Required
                                                    [ "items" ],
                                                  Array Dyn
                                                ],
                                              std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  Number,
                                                  String,
                                                  js2n.record.Required
                                                    [ "#include" ],
                                                  Array Dyn
                                                ]
                                            ]
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
                                                { type = js2n.Const "image", },
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
                                            accept
                                              | { _ | Dyn }
                                              | doc "HTML accept attribute, like { 'image/**': [], 'application/pdf': ['.pdf'] }`, default `{ 'image/*': [] }"
                                              | optional,
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            base64
                                              | Bool
                                              | doc "If true, the image will be saved as data-url in attribute, elsewise as binary in file storage"
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            crop
                                              | Bool
                                              | doc "If true, allow user to crop the image (only for non svg)"
                                              | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            filename
                                              | String
                                              | doc "Name of the file"
                                              | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            maxHeight
                                              | Number
                                              | doc "'Maximum height"
                                              | optional,
                                            maxSize
                                              | Number
                                              | doc "'Maximum size"
                                              | optional,
                                            maxWidth
                                              | Number
                                              | doc "'Maximum width"
                                              | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            sm | js2n.Always | optional,
                                            square
                                              | Bool
                                              | doc "Width must be equal to height or crop must allow only square as shape"
                                              | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                { type = js2n.Const "sendTo", },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.sendToProps"
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
                                              properties =
                                                { type = js2n.Const "state", },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.stateProps"
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
                                              properties =
                                                {
                                                    type =
                                                      js2n.Const "password",
                                                  },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.passwordProps"
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
                                              properties =
                                                { type = js2n.Const "file", },
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            filename
                                              | String
                                              | doc "Name of the file",
                                            filter | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            sm | js2n.Always | optional,
                                            sort | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            title | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                { type = js2n.Const "slider", },
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            max
                                              | Number
                                              | doc "Maximum value"
                                              | optional,
                                            md | js2n.Always | optional,
                                            min
                                              | Number
                                              | doc "Minimal value"
                                              | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            sm | js2n.Always | optional,
                                            step
                                              | Number
                                              | doc "Step size"
                                              | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            unit
                                              | std.contract.any_of
                                                [
                                                  String,
                                                  std.contract.Sequence
                                                    [
                                                      refs."definitions.multilingual",
                                                      { _ | Dyn }
                                                    ]
                                                ]
                                              | doc "Unit (could be multi-language)"
                                              | optional,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                { type = js2n.Const "custom", },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.customProps"
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
                                              properties =
                                                {
                                                    type =
                                                      js2n.Const "checkbox",
                                                  },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.checkboxProps"
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
                                              properties =
                                                {
                                                    type =
                                                      js2n.Const "fileSelector",
                                                  },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.fileSelectorProps"
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
                                              properties =
                                                {
                                                    type =
                                                      std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [| 'port, 'number |]
                                                          ],
                                                  },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.numberProps"
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
                                              properties =
                                                { type = js2n.Const "alive", },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.aliveProps"
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
                                              properties =
                                                {
                                                    type =
                                                      js2n.Const "autocomplete",
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            freeSolo
                                              | Bool
                                              | doc "Set freeSolo to true so the textbox can contain any arbitrary value."
                                              | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            options
                                              | Array (
                                                std.contract.any_of
                                                  [
                                                    String,
                                                    {
                                                      color | String | optional,
                                                      hidden | Bool | optional,
                                                      label
                                                        | std.contract.any_of
                                                          [
                                                            String,
                                                            std.contract.Sequence
                                                              [
                                                                refs."definitions.multilingual",
                                                                { _ | Dyn }
                                                              ]
                                                          ],
                                                      value
                                                        | std.contract.any_of
                                                          [ Number, String ],
                                                    }
                                                  ]
                                              )
                                              | doc "Options which can be completed. [\"value1\", \"value2\", ...] or [{\"value\": \"value\", \"label\": \"Value1\"}, \"value2\", ...]",
                                            placeholder
                                              | String
                                              | doc "Placeholder (for text control)"
                                              | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                { type = js2n.Const "qrCode", },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.qrCodeProps"
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
                                              properties =
                                                { type = js2n.Const "cron", },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.cronProps"
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
                                              properties =
                                                {
                                                    type =
                                                      js2n.Const
                                                          "deviceManager",
                                                  },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.deviceManagerProps"
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
                                              properties =
                                                { type = js2n.Const "text", },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.textProps"
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
                                              properties =
                                                { type = js2n.Const "select", },
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            multiple
                                              | Bool
                                              | doc "If true, multiple values can be selected"
                                              | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            options
                                              | Array
                                                {
                                                  color | String | optional,
                                                  group
                                                    | Bool
                                                    | doc "Is this a group"
                                                    | optional,
                                                  hidden
                                                    | String
                                                    | doc "JS function that could use `native.attribute` for calculation"
                                                    | optional,
                                                  label
                                                    | std.contract.any_of
                                                      [
                                                        js2n.Null,
                                                        Bool,
                                                        Number,
                                                        String,
                                                        { _ | Dyn },
                                                        Array Dyn
                                                      ]
                                                    | doc "Label",
                                                  value
                                                    | std.contract.any_of
                                                      [
                                                        js2n.Null,
                                                        Bool,
                                                        Number,
                                                        String,
                                                        { _ | Dyn },
                                                        Array Dyn
                                                      ]
                                                    | doc "Value",
                                                }
                                              | doc "Options which can be selected"
                                              | optional,
                                            showAllValues
                                              | Bool
                                              | doc "Show item even if no label was found for it (by multiple), default=`true`"
                                              | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                { type = js2n.Const "table", },
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
                                            allowAddByFilter
                                              | refs."definitions.allowAddByFilterProp"
                                              | Bool
                                              | optional,
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            clone
                                              | Bool
                                              | doc "If clone button should be shown. If true, the clone button will be shown. If attribute name, this name will be unique."
                                              | optional,
                                            compact
                                              | Bool
                                              | doc "Show table in compact mode"
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            encryptedAttributes
                                              | Array String
                                              | doc "These items will be encrypted before saving with simple (not SHA) encryption method"
                                              | optional,
                                            expertMode | js2n.Always | optional,
                                            export
                                              | Bool
                                              | doc "If export button should be shown. Export as csv file."
                                              | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            "import"
                                              | Bool
                                              | doc "If import button should be shown. Import from csv file."
                                              | optional,
                                            items
                                              | refs."definitions.tableItems"
                                              | Array Dyn,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noDelete
                                              | Bool
                                              | doc "If delete or add disabled, If noDelete is false, add, delete and move up/down should work"
                                              | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            showSecondAddAt
                                              | js2n.Always
                                              | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            uniqueColumns
                                              | Array String
                                              | doc "Specify the 'attr' name of columns which need to be unique"
                                              | optional,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                    type = js2n.Const "pattern",
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            copyToClipboard
                                              | Bool
                                              | doc "If true, show copy button."
                                              | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            pattern
                                              | String
                                              | doc "Read-only field with pattern like 'https://${data.ip}:${data.port}' (will not be saved in config)",
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                    type =
                                                      js2n.Const "setState",
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
                                            ack
                                              | Bool
                                              | doc "ack-flag of the state"
                                              | optional,
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            color
                                              | std.enum.TagOrString
                                              | [| 'secondary, 'primary |]
                                              | doc "Optional color"
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            error
                                              | { _ | Dyn }
                                              | doc "{error1: {en: 'E'}, error2: {en: 'E2'}}"
                                              | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            icon
                                              | String
                                              | doc "setState can have icon (base64)"
                                              | optional,
                                            id
                                              | String
                                              | doc "State ID, e.g. 'info.test'",
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            okText
                                              | String
                                              | doc "Alert that will be shown by pressing the button"
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            val
                                              | std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  Number,
                                                  String,
                                                  { _ | Dyn },
                                                  Array Dyn
                                                ]
                                              | doc "State value to set",
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            variant
                                              | std.enum.TagOrString
                                              | [| 'outlined, 'contained |]
                                              | doc "If outlined or contained"
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                { type = js2n.Const "func", },
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            short
                                              | String
                                              | doc "no system.func."
                                              | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                { type = js2n.Const "room", },
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            short
                                              | String
                                              | doc "no system.room."
                                              | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                { type = js2n.Const "user", },
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            short
                                              | String
                                              | doc "no system.user."
                                              | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                { type = js2n.Const "ip", },
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            listenOnAllPorts
                                              | Bool
                                              | doc "Add 0.0.0.0 to option"
                                              | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noInternal
                                              | refs."definitions.noInternalProp"
                                              | Bool
                                              | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            onlyIp4
                                              | Bool
                                              | doc "Show only IP4 addresses"
                                              | optional,
                                            onlyIp6
                                              | Bool
                                              | doc "Show only IP6 addresses"
                                              | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                    type =
                                                      js2n.Const "certificate",
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            certType
                                              | std.enum.TagOrString
                                              | [|
                                                'chained,
                                                'private,
                                                'public
                                              |]
                                              | doc "Type of the certificate",
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                    type =
                                                      js2n.Const "certificates",
                                                  },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.certificatesProps"
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
                                              properties =
                                                {
                                                    type =
                                                      js2n.Const "staticLink",
                                                  },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.staticLinkProps"
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
                                              properties =
                                                {
                                                    type =
                                                      js2n.Const "staticText",
                                                  },
                                              required = {},
                                            },
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
                                                allowSaveWithError
                                                  | js2n.Always
                                                  | optional,
                                                confirm
                                                  | js2n.Always
                                                  | optional,
                                                darkStyle
                                                  | js2n.Always
                                                  | optional,
                                                "default"
                                                  | js2n.Always
                                                  | optional,
                                                defaultFunc
                                                  | js2n.Always
                                                  | optional,
                                                defaultSendTo
                                                  | js2n.Always
                                                  | optional,
                                                disabled
                                                  | js2n.Always
                                                  | optional,
                                                expertMode
                                                  | js2n.Always
                                                  | optional,
                                                help | js2n.Always | optional,
                                                helpLink
                                                  | js2n.Always
                                                  | optional,
                                                hidden | js2n.Always | optional,
                                                hideOnlyControl
                                                  | js2n.Always
                                                  | optional,
                                                label | js2n.Always | optional,
                                                lg | js2n.Always | optional,
                                                md | js2n.Always | optional,
                                                newLine
                                                  | js2n.Always
                                                  | optional,
                                                noMultiEdit
                                                  | js2n.Always
                                                  | optional,
                                                noTranslation
                                                  | js2n.Always
                                                  | optional,
                                                sm | js2n.Always | optional,
                                                style | js2n.Always | optional,
                                                text
                                                  | std.contract.any_of
                                                    [
                                                      String,
                                                      std.contract.Sequence
                                                        [
                                                          refs."definitions.multilingual",
                                                          { _ | Dyn }
                                                        ]
                                                    ]
                                                  | doc "Static text like description"
                                                  | optional,
                                                tooltip
                                                  | js2n.Always
                                                  | optional,
                                                type | js2n.Always,
                                                validator
                                                  | js2n.Always
                                                  | optional,
                                                validatorErrorText
                                                  | js2n.Always
                                                  | optional,
                                                validatorNoSaveOnError
                                                  | js2n.Always
                                                  | optional,
                                                xl | js2n.Always | optional,
                                                xs | js2n.Always | optional,
                                              },
                                              Array Dyn
                                            ],
                                          js2n.OneOf
                                            [
                                              std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  Number,
                                                  String,
                                                  js2n.record.Required
                                                    [ "text" ],
                                                  Array Dyn
                                                ],
                                              std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  Number,
                                                  String,
                                                  js2n.record.Required
                                                    [ "label" ],
                                                  Array Dyn
                                                ]
                                            ]
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
                                                    type = js2n.Const "infoBox",
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            boxType
                                              | std.enum.TagOrString
                                              | [|
                                                'ok,
                                                'error,
                                                'warning,
                                                'info
                                              |]
                                              | doc "Type of the box"
                                              | optional,
                                            closable
                                              | Bool
                                              | doc "If the box is closeable"
                                              | optional,
                                            closed
                                              | Bool
                                              | doc "Use together with `closeable: true`. If the box is closed or not. In this case, it will be controlled from outside"
                                              | optional,
                                            expertMode | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            iconPosition
                                              | std.enum.TagOrString
                                              | [| 'middle, 'top |]
                                              | doc "Position of the icon"
                                              | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            text
                                              | std.contract.any_of
                                                [
                                                  String,
                                                  std.contract.Sequence
                                                    [
                                                      refs."definitions.multilingual",
                                                      { _ | Dyn }
                                                    ]
                                                ]
                                              | doc "Text to be shown",
                                            title
                                              | std.contract.any_of
                                                [
                                                  String,
                                                  std.contract.Sequence
                                                    [
                                                      refs."definitions.multilingual",
                                                      { _ | Dyn }
                                                    ]
                                                ]
                                              | doc "Title of the info box"
                                              | optional,
                                            type | js2n.Always,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                    type =
                                                      js2n.Const "staticInfo",
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
                                            addColon
                                              | Bool
                                              | doc "Add to label the colon at the end if not exist in label"
                                              | optional,
                                            blink
                                              | std.contract.any_of
                                                [ Bool, String ]
                                              | doc "Value should blink continuously (true or color)"
                                              | optional,
                                            blinkOnUpdate
                                              | std.contract.any_of
                                                [ Bool, String ]
                                              | doc "Value should blink when updated (true or color)"
                                              | optional,
                                            booleanAsCheckbox
                                              | Bool
                                              | doc "Show boolean values as checkbox"
                                              | optional,
                                            copyToClipboard
                                              | Bool
                                              | doc "Show copy to clipboard button for value"
                                              | optional,
                                            darkStyle | js2n.Always | optional,
                                            data
                                              | std.contract.any_of
                                                [
                                                  Bool,
                                                  Number,
                                                  String,
                                                  { _ | Dyn }
                                                ]
                                              | doc "Value to be shown",
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            highlight
                                              | Bool
                                              | doc "Highlight line on mouse over"
                                              | optional,
                                            html
                                              | Bool
                                              | doc "Show string values as HTML"
                                              | optional,
                                            label | js2n.Always,
                                            labelIcon
                                              | String
                                              | doc "Base64 icon for label"
                                              | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            narrow
                                              | Bool
                                              | doc "With this flag, the value will appear just after the label"
                                              | optional,
                                            newLine | js2n.Always | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            size
                                              | std.contract.any_of
                                                [
                                                  std.contract.Sequence
                                                    [
                                                      std.enum.TagOrString,
                                                      [|
                                                        'large,
                                                        'normal,
                                                        'small
                                                      |]
                                                    ],
                                                  Number
                                                ]
                                              | doc "Font size"
                                              | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            styleLabel
                                              | { _ | Dyn }
                                              | doc "React CSS Styles for label"
                                              | optional,
                                            styleUnit
                                              | { _ | Dyn }
                                              | doc "React CSS Styles for unit"
                                              | optional,
                                            styleValue
                                              | { _ | Dyn }
                                              | doc "React CSS Styles for value"
                                              | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            unit
                                              | std.contract.any_of
                                                [
                                                  String,
                                                  std.contract.Sequence
                                                    [
                                                      refs."definitions.multilingual",
                                                      { _ | Dyn }
                                                    ]
                                                ]
                                              | doc "Unit (could be multi-language)"
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                    type =
                                                      js2n.Const "instance",
                                                  },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.instanceProps"
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
                                              properties =
                                                {
                                                    type =
                                                      js2n.Const "staticImage",
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            href
                                              | String
                                              | doc "Link"
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            sm | js2n.Always | optional,
                                            src
                                              | String
                                              | doc "Name of picture (from admin directory)"
                                              | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                { type = js2n.Const "chips", },
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            delimiter
                                              | String
                                              | doc "Delimiter for options. If no delimiter, the setting will be stored as array"
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                    type =
                                                      js2n.Const "objectId",
                                                  },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.objectIdProps"
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
                                              properties =
                                                { type = js2n.Const "oauth2", },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.oauth2Props"
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
                                              properties =
                                                {
                                                    type =
                                                      js2n.Const "checkLicense",
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            darkStyle | js2n.Always | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            type | js2n.Always | optional,
                                            uuid
                                              | Bool
                                              | doc "If UUID must be checked too"
                                              | optional,
                                            version
                                              | Bool
                                              | doc "Check version"
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                    type =
                                                      js2n.Const "datePicker",
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            darkStyle | js2n.Always | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            type | js2n.Always | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                    type =
                                                      js2n.Const "timePicker",
                                                  },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.timePickerProps"
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
                                              properties =
                                                { type = js2n.Const "uuid", },
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            darkStyle | js2n.Always | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            type | js2n.Always | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                    type =
                                                      js2n.Const "coordinates",
                                                  },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.coordinatesProps"
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
                                              properties =
                                                {
                                                    type =
                                                      js2n.Const "jsonEditor",
                                                  },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.jsonEditorProps"
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
                                              properties =
                                                {
                                                    type =
                                                      js2n.Const "interface",
                                                  },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.interfaceProps"
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
                                              properties =
                                                {
                                                    type =
                                                      js2n.Const "accordion",
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
                                            allowSaveWithError
                                              | js2n.Always
                                              | optional,
                                            clone
                                              | Bool
                                              | doc "If clone button should be shown. If true, the clone button will be shown. If attribute name, this name will be unique."
                                              | optional,
                                            confirm | js2n.Always | optional,
                                            darkStyle | js2n.Always | optional,
                                            "default" | js2n.Always | optional,
                                            defaultFunc
                                              | js2n.Always
                                              | optional,
                                            defaultSendTo
                                              | js2n.Always
                                              | optional,
                                            disabled | js2n.Always | optional,
                                            expertMode | js2n.Always | optional,
                                            help | js2n.Always | optional,
                                            helpLink | js2n.Always | optional,
                                            hidden | js2n.Always | optional,
                                            hideOnlyControl
                                              | js2n.Always
                                              | optional,
                                            items
                                              | refs."definitions.tableItems"
                                              | Array Dyn,
                                            label | js2n.Always | optional,
                                            lg | js2n.Always | optional,
                                            md | js2n.Always | optional,
                                            newLine | js2n.Always | optional,
                                            noDelete
                                              | Bool
                                              | doc "If delete or add disabled, If noDelete is false, add, delete and move up/down should work"
                                              | optional,
                                            noMultiEdit
                                              | js2n.Always
                                              | optional,
                                            noTranslation
                                              | js2n.Always
                                              | optional,
                                            onChange | js2n.Always | optional,
                                            showSecondAddAt
                                              | js2n.Always
                                              | optional,
                                            sm | js2n.Always | optional,
                                            style | js2n.Always | optional,
                                            titleAttr
                                              | String
                                              | doc "Title shown on the accordion"
                                              | optional,
                                            tooltip | js2n.Always | optional,
                                            type | js2n.Always,
                                            validator | js2n.Always | optional,
                                            validatorErrorText
                                              | js2n.Always
                                              | optional,
                                            validatorNoSaveOnError
                                              | js2n.Always
                                              | optional,
                                            xl | js2n.Always | optional,
                                            xs | js2n.Always | optional,
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
                                                { type = js2n.Const "state", },
                                              required = {},
                                            },
                                          Array Dyn
                                        ]) refs."definitions.stateProps"
                                      js2n.Always,
                                    {
                                      allowSaveWithError
                                        | Bool
                                        | doc "Allow saving of configuration even if the instance is offline. Used with defaultSendTo"
                                        | optional,
                                      button
                                        | Bool
                                        | doc "show link as button"
                                        | optional,
                                      confirm
                                        | {
                                          alsoDependsOn
                                            | Array String
                                            | doc "Trigger confirm dialog if on of the components changed."
                                            | optional,
                                          cancel
                                            | std.contract.any_of
                                              [
                                                String,
                                                std.contract.Sequence
                                                  [
                                                    refs."definitions.multilingual",
                                                    { _ | Dyn }
                                                  ]
                                              ]
                                            | doc "Text for 'cancel' button"
                                            | optional,
                                          condition
                                            | String
                                            | doc "JS function: true show confirm dialog"
                                            | optional,
                                          ok
                                            | std.contract.any_of
                                              [
                                                String,
                                                std.contract.Sequence
                                                  [
                                                    refs."definitions.multilingual",
                                                    { _ | Dyn }
                                                  ]
                                              ]
                                            | doc "Text for 'OK' button"
                                            | optional,
                                          text
                                            | std.contract.any_of
                                              [
                                                String,
                                                std.contract.Sequence
                                                  [
                                                    refs."definitions.multilingual",
                                                    { _ | Dyn }
                                                  ]
                                              ]
                                            | doc "Text of confirmation dialog"
                                            | optional,
                                          title
                                            | std.contract.any_of
                                              [
                                                String,
                                                std.contract.Sequence
                                                  [
                                                    refs."definitions.multilingual",
                                                    { _ | Dyn }
                                                  ]
                                              ]
                                            | doc "Title of confirmation dialog"
                                            | optional,
                                          type
                                            | std.enum.TagOrString
                                            | [|
                                              'none,
                                              'error,
                                              'warning,
                                              'info
                                            |]
                                            | optional,
                                        }
                                        | doc "Confirm dialog"
                                        | optional,
                                      darkStyle
                                        | { _ | Dyn }
                                        | doc "CSS style for dark mode in react notation: 'radiusBorder' and not 'radius-border'"
                                        | optional,
                                      "default"
                                        | std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            Number,
                                            String,
                                            { _ | Dyn },
                                            Array Dyn
                                          ]
                                        | doc "Default value"
                                        | optional,
                                      defaultFunc
                                        | std.contract.any_of
                                          [
                                            String,
                                            {
                                              alsoDependsOn
                                                | refs."definitions.alsoDependsOnSendProp"
                                                | Array Dyn
                                                | optional,
                                              func
                                                | String
                                                | doc "JS function: that calculates value"
                                                | optional,
                                            }
                                          ]
                                        | doc "JS function to calculate default value"
                                        | optional,
                                      defaultSendTo
                                        | String
                                        | doc "Command to request initial value from running instance"
                                        | optional,
                                      disabled
                                        | String
                                        | doc "JS function that could use 'native.attribute' for calculation"
                                        | optional,
                                      doNotSave
                                        | refs."definitions.doNotSaveProp"
                                        | Bool
                                        | optional,
                                      expertMode
                                        | Bool
                                        | doc "If this flag set to true, this field will be shown only if the expert mode is true"
                                        | optional,
                                      help
                                        | std.contract.any_of
                                          [
                                            String,
                                            std.contract.Sequence
                                              [
                                                refs."definitions.multilingual",
                                                { _ | Dyn }
                                              ]
                                          ]
                                        | optional,
                                      helpLink
                                        | String
                                        | doc "href to help"
                                        | optional,
                                      hidden
                                        | String
                                        | doc "JS function that could use 'native.attribute' for calculation"
                                        | optional,
                                      hideOnlyControl
                                        | Bool
                                        | doc "If hidden the place will be shown, but no control"
                                        | optional,
                                      innerStyle
                                        | { _ | Dyn }
                                        | doc "CSS style in react notation: 'radiusBorder' and not 'radius-border'"
                                        | optional,
                                      label
                                        | std.contract.any_of
                                          [
                                            String,
                                            std.contract.Sequence
                                              [
                                                refs."definitions.multilingual",
                                                { _ | Dyn }
                                              ]
                                          ]
                                        | optional,
                                      lg
                                        | Number
                                        | doc "width in 1/12 of screen on large screens"
                                        | optional,
                                      maxLength
                                        | Number
                                        | doc "max length of text in field"
                                        | optional,
                                      md
                                        | Number
                                        | doc "width in 1/12 of screen on middle screens"
                                        | optional,
                                      newLine
                                        | Bool
                                        | doc "Should be shown from new line"
                                        | optional,
                                      noMultiEdit
                                        | Bool
                                        | doc "(only custom) if this flag set to true, this field will not be shown if user selected more than one object for edit"
                                        | optional,
                                      noTranslation
                                        | Bool
                                        | doc "Do not translate selects or other options (not for help, label or placeholder)"
                                        | optional,
                                      onChange
                                        | {
                                          alsoDependsOn
                                            | refs."definitions.alsoDependsOnSendProp"
                                            | Array Dyn
                                            | optional,
                                          calculateFunc
                                            | String
                                            | doc "JS function: that calculates value"
                                            | optional,
                                          ignoreOwnChanges
                                            | Bool
                                            | doc "Do not trigger onChange event if changed value of this attribute"
                                            | optional,
                                        }
                                        | optional,
                                      showSecondAddAt
                                        | Number
                                        | doc "Number of lines from which the second add button at the bottom of the table will be shown. Default 5"
                                        | optional,
                                      sm
                                        | Number
                                        | doc "Width in 1/12 of screen on small screen"
                                        | optional,
                                      style
                                        | { _ | Dyn }
                                        | doc "CSS style in react notation: 'radiusBorder' and not 'radius-border'"
                                        | optional,
                                      tooltip
                                        | std.contract.any_of
                                          [
                                            String,
                                            std.contract.Sequence
                                              [
                                                refs."definitions.multilingual",
                                                { _ | Dyn }
                                              ]
                                          ]
                                        | doc "Optional tooltip"
                                        | optional,
                                      type
                                        | refs."definitions.componentType"
                                        | String,
                                      validator
                                        | String
                                        | doc "JS function: true no error, false - error"
                                        | optional,
                                      validatorErrorText
                                        | String
                                        | doc "Text to show if validator fails"
                                        | optional,
                                      validatorNoSaveOnError
                                        | Bool
                                        | doc "True if save must be disabled by errors"
                                        | optional,
                                      xl
                                        | Number
                                        | doc "width in 1/12 of screen on extra large screens"
                                        | optional,
                                      xs
                                        | Number
                                        | doc "width in 1/12 of screen on very small screens"
                                        | optional,
                                      ..
                                    }
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                  | doc "Consists of objects representing e.g. a single tab"
                  | optional,
                type
                  | std.enum.TagOrString
                  | [| 'panel, 'tabs |]
                  | doc "Control type"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.topLevelProperties.properties.items" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^.+" =
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
                                        { type = js2n.Const "language", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    system
                                      | Bool
                                      | doc "Allow the usage of the system language from system.config as default",
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                            type =
                                              js2n.Const "autocompleteSendTo",
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
                                    allowSaveWithError | js2n.Always | optional,
                                    alsoDependsOn
                                      | refs."definitions.alsoDependsOnSendProp"
                                      | Array Dyn
                                      | optional,
                                    command
                                      | String
                                      | doc "Command to be sent.",
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    data
                                      | { _ | Dyn }
                                      | doc "Data to be sent as JSON."
                                      | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    freeSolo
                                      | Bool
                                      | doc "Set freeSolo to true so the textbox can contain any arbitrary value."
                                      | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    jsonData
                                      | String
                                      | doc "Data to be sent as parsable string, can contain special placeholder. E. g. '{\"subject1\": \"${data.subject}\", \"options1\": {\"host\": \"${data.host}\"}}'"
                                      | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    maxLength | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    placeholder
                                      | String
                                      | doc "Placeholder (for text control)"
                                      | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "selectSendTo", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    alsoDependsOn
                                      | refs."definitions.alsoDependsOnSendProp"
                                      | Array Dyn
                                      | optional,
                                    command
                                      | String
                                      | doc "Command to be sent.",
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    data
                                      | { _ | Dyn }
                                      | doc "Data to be sent as JSON."
                                      | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    doNotSave
                                      | refs."definitions.doNotSaveProp"
                                      | Bool
                                      | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    jsonData
                                      | String
                                      | doc "Data to be sent as parsable string, can contain special placeholder. E. g. '{\"subject1\": \"${data.subject}\", \"options1\": {\"host\": \"${data.host}\"}}'"
                                      | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    manual
                                      | Bool
                                      | doc "Allow manual editing. Without Dropdown"
                                      | optional,
                                    md | js2n.Always | optional,
                                    multiple | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "textSendTo", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    alsoDependsOn
                                      | refs."definitions.alsoDependsOnSendProp"
                                      | Array Dyn
                                      | optional,
                                    command
                                      | String
                                      | doc "Command to be sent.",
                                    confirm | js2n.Always | optional,
                                    container
                                      | String
                                      | doc "div, text"
                                      | optional,
                                    copyToClipboard
                                      | Bool
                                      | doc "If true, show button"
                                      | optional,
                                    darkStyle | js2n.Always | optional,
                                    data
                                      | { _ | Dyn }
                                      | doc "Data to be sent as JSON."
                                      | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    jsonData
                                      | String
                                      | doc "Data to be sent as parsable string, can contain special placeholder. E. g. '{\"subject1\": \"${data.subject}\", \"options1\": {\"host\": \"${data.host}\"}}'"
                                      | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "imageSendTo", },
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
                                    alsoDependsOn
                                      | refs."definitions.alsoDependsOnSendProp"
                                      | Array Dyn
                                      | optional,
                                    command
                                      | String
                                      | doc "Command to be sent.",
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    data
                                      | { _ | Dyn }
                                      | doc "Data to be sent as JSON."
                                      | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    jsonData
                                      | String
                                      | doc "Data to be sent as parsable string, can contain special placeholder. E. g. '{\"subject1\": \"${data.subject}\", \"options1\": {\"host\": \"${data.host}\"}}'"
                                      | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "header", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    size
                                      | js2n.number.Maximum 5
                                      | js2n.number.Minimum 1
                                      | doc "Size of the header: h1-h5",
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    text
                                      | std.contract.any_of
                                        [
                                          String,
                                          std.contract.Sequence
                                            [
                                              refs."definitions.multilingual",
                                              { _ | Dyn }
                                            ]
                                        ]
                                      | doc "Header text",
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "color", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "divider", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    color
                                      | std.enum.TagOrString
                                      | [| 'secondary, 'primary |]
                                      | doc "Optional color"
                                      | optional,
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    height
                                      | Number
                                      | doc "Optional height"
                                      | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "icon", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    confirm | js2n.Always | optional,
                                    crop
                                      | Bool
                                      | doc "If true, allow user to crop the image (only for non svg)"
                                      | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    maxHeight
                                      | Number
                                      | doc "Maximum height"
                                      | optional,
                                    maxSize
                                      | Number
                                      | doc "Maximum size"
                                      | optional,
                                    maxWidth
                                      | Number
                                      | doc "Maximum width"
                                      | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    square
                                      | Bool
                                      | doc "Width must be equal to height or crop must allow only square as shape"
                                      | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "panel", },
                                      required = {},
                                    },
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
                                        "#include"
                                          | js2n.string.Matches
                                            "^.+\\.jsonConfig(.json|.json5)$"
                                          | doc "Include other JSON or JSON5 file. Here is the name of the file with extension. E.g. 'options.jsonConfig.json' for 'anyName.jsonConfig.json5'"
                                          | optional,
                                        allowSaveWithError
                                          | js2n.Always
                                          | optional,
                                        confirm | js2n.Always | optional,
                                        darkStyle | js2n.Always | optional,
                                        "default" | js2n.Always | optional,
                                        defaultFunc | js2n.Always | optional,
                                        defaultSendTo | js2n.Always | optional,
                                        disabled | js2n.Always | optional,
                                        expertMode | js2n.Always | optional,
                                        help | js2n.Always | optional,
                                        helpLink | js2n.Always | optional,
                                        hidden | js2n.Always | optional,
                                        hideOnlyControl
                                          | js2n.Always
                                          | optional,
                                        icon
                                          | String
                                          | doc "Panel can have icon (base64)"
                                          | optional,
                                        iconPosition
                                          | refs."definitions.iconPositionProp"
                                          | String
                                          | optional,
                                        innerStyle | js2n.Always | optional,
                                        items
                                          | js2n.Always
                                          | { _ | Dyn }
                                          | optional,
                                        label | js2n.Always | optional,
                                        lg | js2n.Always | optional,
                                        md | js2n.Always | optional,
                                        newLine | js2n.Always | optional,
                                        noMultiEdit | js2n.Always | optional,
                                        noTranslation | js2n.Always | optional,
                                        onChange | js2n.Always | optional,
                                        sm | js2n.Always | optional,
                                        style | js2n.Always | optional,
                                        tooltip | js2n.Always | optional,
                                        type | js2n.Always,
                                        validator | js2n.Always | optional,
                                        validatorErrorText
                                          | js2n.Always
                                          | optional,
                                        validatorNoSaveOnError
                                          | js2n.Always
                                          | optional,
                                        xl | js2n.Always | optional,
                                        xs | js2n.Always | optional,
                                      },
                                      Array Dyn
                                    ],
                                  js2n.OneOf
                                    [
                                      std.contract.any_of
                                        [
                                          js2n.Null,
                                          Bool,
                                          Number,
                                          String,
                                          js2n.record.Required [ "items" ],
                                          Array Dyn
                                        ],
                                      std.contract.any_of
                                        [
                                          js2n.Null,
                                          Bool,
                                          Number,
                                          String,
                                          js2n.record.Required [ "#include" ],
                                          Array Dyn
                                        ]
                                    ]
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
                                        { type = js2n.Const "image", },
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
                                    accept
                                      | { _ | Dyn }
                                      | doc "HTML accept attribute, like { 'image/**': [], 'application/pdf': ['.pdf'] }`, default `{ 'image/*': [] }"
                                      | optional,
                                    allowSaveWithError | js2n.Always | optional,
                                    base64
                                      | Bool
                                      | doc "If true, the image will be saved as data-url in attribute, elsewise as binary in file storage"
                                      | optional,
                                    confirm | js2n.Always | optional,
                                    crop
                                      | Bool
                                      | doc "If true, allow user to crop the image (only for non svg)"
                                      | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    filename
                                      | String
                                      | doc "Name of the file"
                                      | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    maxHeight
                                      | Number
                                      | doc "'Maximum height"
                                      | optional,
                                    maxSize
                                      | Number
                                      | doc "'Maximum size"
                                      | optional,
                                    maxWidth
                                      | Number
                                      | doc "'Maximum width"
                                      | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    square
                                      | Bool
                                      | doc "Width must be equal to height or crop must allow only square as shape"
                                      | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "sendTo", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.sendToProps" js2n.Always,
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
                                        { type = js2n.Const "state", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.stateProps" js2n.Always,
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
                                        { type = js2n.Const "password", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.passwordProps" js2n.Always,
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
                                        { type = js2n.Const "file", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    filename | String | doc "Name of the file",
                                    filter | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    sort | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    title | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "slider", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    max
                                      | Number
                                      | doc "Maximum value"
                                      | optional,
                                    md | js2n.Always | optional,
                                    min
                                      | Number
                                      | doc "Minimal value"
                                      | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    step | Number | doc "Step size" | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    unit
                                      | std.contract.any_of
                                        [
                                          String,
                                          std.contract.Sequence
                                            [
                                              refs."definitions.multilingual",
                                              { _ | Dyn }
                                            ]
                                        ]
                                      | doc "Unit (could be multi-language)"
                                      | optional,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "custom", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.customProps" js2n.Always,
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
                                        { type = js2n.Const "checkbox", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.checkboxProps" js2n.Always,
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
                                        { type = js2n.Const "fileSelector", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.fileSelectorProps"
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
                                      properties =
                                        {
                                            type =
                                              std.contract.Sequence
                                                  [
                                                    std.enum.TagOrString,
                                                    [| 'port, 'number |]
                                                  ],
                                          },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.numberProps" js2n.Always,
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
                                        { type = js2n.Const "alive", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.aliveProps" js2n.Always,
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
                                        { type = js2n.Const "autocomplete", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    freeSolo
                                      | Bool
                                      | doc "Set freeSolo to true so the textbox can contain any arbitrary value."
                                      | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    options
                                      | Array (
                                        std.contract.any_of
                                          [
                                            String,
                                            {
                                              color | String | optional,
                                              hidden | Bool | optional,
                                              label
                                                | std.contract.any_of
                                                  [
                                                    String,
                                                    std.contract.Sequence
                                                      [
                                                        refs."definitions.multilingual",
                                                        { _ | Dyn }
                                                      ]
                                                  ],
                                              value
                                                | std.contract.any_of
                                                  [ Number, String ],
                                            }
                                          ]
                                      )
                                      | doc "Options which can be completed. [\"value1\", \"value2\", ...] or [{\"value\": \"value\", \"label\": \"Value1\"}, \"value2\", ...]",
                                    placeholder
                                      | String
                                      | doc "Placeholder (for text control)"
                                      | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "qrCode", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.qrCodeProps" js2n.Always,
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
                                        { type = js2n.Const "cron", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.cronProps" js2n.Always,
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
                                        { type = js2n.Const "deviceManager", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.deviceManagerProps"
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
                                      properties =
                                        { type = js2n.Const "text", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.textProps" js2n.Always,
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
                                        { type = js2n.Const "select", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    multiple
                                      | Bool
                                      | doc "If true, multiple values can be selected"
                                      | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    options
                                      | Array
                                        {
                                          color | String | optional,
                                          group
                                            | Bool
                                            | doc "Is this a group"
                                            | optional,
                                          hidden
                                            | String
                                            | doc "JS function that could use `native.attribute` for calculation"
                                            | optional,
                                          label
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                Number,
                                                String,
                                                { _ | Dyn },
                                                Array Dyn
                                              ]
                                            | doc "Label",
                                          value
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                Number,
                                                String,
                                                { _ | Dyn },
                                                Array Dyn
                                              ]
                                            | doc "Value",
                                        }
                                      | doc "Options which can be selected"
                                      | optional,
                                    showAllValues
                                      | Bool
                                      | doc "Show item even if no label was found for it (by multiple), default=`true`"
                                      | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "table", },
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
                                    allowAddByFilter
                                      | refs."definitions.allowAddByFilterProp"
                                      | Bool
                                      | optional,
                                    allowSaveWithError | js2n.Always | optional,
                                    clone
                                      | Bool
                                      | doc "If clone button should be shown. If true, the clone button will be shown. If attribute name, this name will be unique."
                                      | optional,
                                    compact
                                      | Bool
                                      | doc "Show table in compact mode"
                                      | optional,
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    encryptedAttributes
                                      | Array String
                                      | doc "These items will be encrypted before saving with simple (not SHA) encryption method"
                                      | optional,
                                    expertMode | js2n.Always | optional,
                                    export
                                      | Bool
                                      | doc "If export button should be shown. Export as csv file."
                                      | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    "import"
                                      | Bool
                                      | doc "If import button should be shown. Import from csv file."
                                      | optional,
                                    items
                                      | refs."definitions.tableItems"
                                      | Array Dyn,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noDelete
                                      | Bool
                                      | doc "If delete or add disabled, If noDelete is false, add, delete and move up/down should work"
                                      | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    showSecondAddAt | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    uniqueColumns
                                      | Array String
                                      | doc "Specify the 'attr' name of columns which need to be unique"
                                      | optional,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "pattern", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    confirm | js2n.Always | optional,
                                    copyToClipboard
                                      | Bool
                                      | doc "If true, show copy button."
                                      | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    pattern
                                      | String
                                      | doc "Read-only field with pattern like 'https://${data.ip}:${data.port}' (will not be saved in config)",
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "setState", },
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
                                    ack
                                      | Bool
                                      | doc "ack-flag of the state"
                                      | optional,
                                    allowSaveWithError | js2n.Always | optional,
                                    color
                                      | std.enum.TagOrString
                                      | [| 'secondary, 'primary |]
                                      | doc "Optional color"
                                      | optional,
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    error
                                      | { _ | Dyn }
                                      | doc "{error1: {en: 'E'}, error2: {en: 'E2'}}"
                                      | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    icon
                                      | String
                                      | doc "setState can have icon (base64)"
                                      | optional,
                                    id
                                      | String
                                      | doc "State ID, e.g. 'info.test'",
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    okText
                                      | String
                                      | doc "Alert that will be shown by pressing the button"
                                      | optional,
                                    onChange | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    val
                                      | std.contract.any_of
                                        [
                                          js2n.Null,
                                          Bool,
                                          Number,
                                          String,
                                          { _ | Dyn },
                                          Array Dyn
                                        ]
                                      | doc "State value to set",
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    variant
                                      | std.enum.TagOrString
                                      | [| 'outlined, 'contained |]
                                      | doc "If outlined or contained"
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "func", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    short
                                      | String
                                      | doc "no system.func."
                                      | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "room", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    short
                                      | String
                                      | doc "no system.room."
                                      | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "user", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    short
                                      | String
                                      | doc "no system.user."
                                      | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                      properties = { type = js2n.Const "ip", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    listenOnAllPorts
                                      | Bool
                                      | doc "Add 0.0.0.0 to option"
                                      | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noInternal
                                      | refs."definitions.noInternalProp"
                                      | Bool
                                      | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    onlyIp4
                                      | Bool
                                      | doc "Show only IP4 addresses"
                                      | optional,
                                    onlyIp6
                                      | Bool
                                      | doc "Show only IP6 addresses"
                                      | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "certificate", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    certType
                                      | std.enum.TagOrString
                                      | [| 'chained, 'private, 'public |]
                                      | doc "Type of the certificate",
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "certificates", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.certificatesProps"
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
                                      properties =
                                        { type = js2n.Const "staticLink", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.staticLinkProps"
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
                                      properties =
                                        { type = js2n.Const "staticText", },
                                      required = {},
                                    },
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
                                        allowSaveWithError
                                          | js2n.Always
                                          | optional,
                                        confirm | js2n.Always | optional,
                                        darkStyle | js2n.Always | optional,
                                        "default" | js2n.Always | optional,
                                        defaultFunc | js2n.Always | optional,
                                        defaultSendTo | js2n.Always | optional,
                                        disabled | js2n.Always | optional,
                                        expertMode | js2n.Always | optional,
                                        help | js2n.Always | optional,
                                        helpLink | js2n.Always | optional,
                                        hidden | js2n.Always | optional,
                                        hideOnlyControl
                                          | js2n.Always
                                          | optional,
                                        label | js2n.Always | optional,
                                        lg | js2n.Always | optional,
                                        md | js2n.Always | optional,
                                        newLine | js2n.Always | optional,
                                        noMultiEdit | js2n.Always | optional,
                                        noTranslation | js2n.Always | optional,
                                        sm | js2n.Always | optional,
                                        style | js2n.Always | optional,
                                        text
                                          | std.contract.any_of
                                            [
                                              String,
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.multilingual",
                                                  { _ | Dyn }
                                                ]
                                            ]
                                          | doc "Static text like description"
                                          | optional,
                                        tooltip | js2n.Always | optional,
                                        type | js2n.Always,
                                        validator | js2n.Always | optional,
                                        validatorErrorText
                                          | js2n.Always
                                          | optional,
                                        validatorNoSaveOnError
                                          | js2n.Always
                                          | optional,
                                        xl | js2n.Always | optional,
                                        xs | js2n.Always | optional,
                                      },
                                      Array Dyn
                                    ],
                                  js2n.OneOf
                                    [
                                      std.contract.any_of
                                        [
                                          js2n.Null,
                                          Bool,
                                          Number,
                                          String,
                                          js2n.record.Required [ "text" ],
                                          Array Dyn
                                        ],
                                      std.contract.any_of
                                        [
                                          js2n.Null,
                                          Bool,
                                          Number,
                                          String,
                                          js2n.record.Required [ "label" ],
                                          Array Dyn
                                        ]
                                    ]
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
                                        { type = js2n.Const "infoBox", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    boxType
                                      | std.enum.TagOrString
                                      | [| 'ok, 'error, 'warning, 'info |]
                                      | doc "Type of the box"
                                      | optional,
                                    closable
                                      | Bool
                                      | doc "If the box is closeable"
                                      | optional,
                                    closed
                                      | Bool
                                      | doc "Use together with `closeable: true`. If the box is closed or not. In this case, it will be controlled from outside"
                                      | optional,
                                    expertMode | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    iconPosition
                                      | std.enum.TagOrString
                                      | [| 'middle, 'top |]
                                      | doc "Position of the icon"
                                      | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    text
                                      | std.contract.any_of
                                        [
                                          String,
                                          std.contract.Sequence
                                            [
                                              refs."definitions.multilingual",
                                              { _ | Dyn }
                                            ]
                                        ]
                                      | doc "Text to be shown",
                                    title
                                      | std.contract.any_of
                                        [
                                          String,
                                          std.contract.Sequence
                                            [
                                              refs."definitions.multilingual",
                                              { _ | Dyn }
                                            ]
                                        ]
                                      | doc "Title of the info box"
                                      | optional,
                                    type | js2n.Always,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "staticInfo", },
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
                                    addColon
                                      | Bool
                                      | doc "Add to label the colon at the end if not exist in label"
                                      | optional,
                                    blink
                                      | std.contract.any_of [ Bool, String ]
                                      | doc "Value should blink continuously (true or color)"
                                      | optional,
                                    blinkOnUpdate
                                      | std.contract.any_of [ Bool, String ]
                                      | doc "Value should blink when updated (true or color)"
                                      | optional,
                                    booleanAsCheckbox
                                      | Bool
                                      | doc "Show boolean values as checkbox"
                                      | optional,
                                    copyToClipboard
                                      | Bool
                                      | doc "Show copy to clipboard button for value"
                                      | optional,
                                    darkStyle | js2n.Always | optional,
                                    data
                                      | std.contract.any_of
                                        [ Bool, Number, String, { _ | Dyn } ]
                                      | doc "Value to be shown",
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    highlight
                                      | Bool
                                      | doc "Highlight line on mouse over"
                                      | optional,
                                    html
                                      | Bool
                                      | doc "Show string values as HTML"
                                      | optional,
                                    label | js2n.Always,
                                    labelIcon
                                      | String
                                      | doc "Base64 icon for label"
                                      | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    narrow
                                      | Bool
                                      | doc "With this flag, the value will appear just after the label"
                                      | optional,
                                    newLine | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    size
                                      | std.contract.any_of
                                        [
                                          std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'large, 'normal, 'small |]
                                            ],
                                          Number
                                        ]
                                      | doc "Font size"
                                      | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    styleLabel
                                      | { _ | Dyn }
                                      | doc "React CSS Styles for label"
                                      | optional,
                                    styleUnit
                                      | { _ | Dyn }
                                      | doc "React CSS Styles for unit"
                                      | optional,
                                    styleValue
                                      | { _ | Dyn }
                                      | doc "React CSS Styles for value"
                                      | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    unit
                                      | std.contract.any_of
                                        [
                                          String,
                                          std.contract.Sequence
                                            [
                                              refs."definitions.multilingual",
                                              { _ | Dyn }
                                            ]
                                        ]
                                      | doc "Unit (could be multi-language)"
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "instance", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.instanceProps" js2n.Always,
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
                                        { type = js2n.Const "staticImage", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    href | String | doc "Link" | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    src
                                      | String
                                      | doc "Name of picture (from admin directory)"
                                      | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "chips", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    delimiter
                                      | String
                                      | doc "Delimiter for options. If no delimiter, the setting will be stored as array"
                                      | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "objectId", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.objectIdProps" js2n.Always,
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
                                        { type = js2n.Const "oauth2", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.oauth2Props" js2n.Always,
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
                                        { type = js2n.Const "checkLicense", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    type | js2n.Always | optional,
                                    uuid
                                      | Bool
                                      | doc "If UUID must be checked too"
                                      | optional,
                                    version
                                      | Bool
                                      | doc "Check version"
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "datePicker", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    type | js2n.Always | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "timePicker", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.timePickerProps"
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
                                      properties =
                                        { type = js2n.Const "uuid", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    type | js2n.Always | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "coordinates", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.coordinatesProps"
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
                                      properties =
                                        { type = js2n.Const "jsonEditor", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.jsonEditorProps"
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
                                      properties =
                                        { type = js2n.Const "interface", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.interfaceProps"
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
                                      properties =
                                        { type = js2n.Const "accordion", },
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
                                    allowSaveWithError | js2n.Always | optional,
                                    clone
                                      | Bool
                                      | doc "If clone button should be shown. If true, the clone button will be shown. If attribute name, this name will be unique."
                                      | optional,
                                    confirm | js2n.Always | optional,
                                    darkStyle | js2n.Always | optional,
                                    "default" | js2n.Always | optional,
                                    defaultFunc | js2n.Always | optional,
                                    defaultSendTo | js2n.Always | optional,
                                    disabled | js2n.Always | optional,
                                    expertMode | js2n.Always | optional,
                                    help | js2n.Always | optional,
                                    helpLink | js2n.Always | optional,
                                    hidden | js2n.Always | optional,
                                    hideOnlyControl | js2n.Always | optional,
                                    items
                                      | refs."definitions.tableItems"
                                      | Array Dyn,
                                    label | js2n.Always | optional,
                                    lg | js2n.Always | optional,
                                    md | js2n.Always | optional,
                                    newLine | js2n.Always | optional,
                                    noDelete
                                      | Bool
                                      | doc "If delete or add disabled, If noDelete is false, add, delete and move up/down should work"
                                      | optional,
                                    noMultiEdit | js2n.Always | optional,
                                    noTranslation | js2n.Always | optional,
                                    onChange | js2n.Always | optional,
                                    showSecondAddAt | js2n.Always | optional,
                                    sm | js2n.Always | optional,
                                    style | js2n.Always | optional,
                                    titleAttr
                                      | String
                                      | doc "Title shown on the accordion"
                                      | optional,
                                    tooltip | js2n.Always | optional,
                                    type | js2n.Always,
                                    validator | js2n.Always | optional,
                                    validatorErrorText | js2n.Always | optional,
                                    validatorNoSaveOnError
                                      | js2n.Always
                                      | optional,
                                    xl | js2n.Always | optional,
                                    xs | js2n.Always | optional,
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
                                        { type = js2n.Const "state", },
                                      required = {},
                                    },
                                  Array Dyn
                                ]) refs."definitions.stateProps" js2n.Always,
                            {
                              allowSaveWithError
                                | Bool
                                | doc "Allow saving of configuration even if the instance is offline. Used with defaultSendTo"
                                | optional,
                              button
                                | Bool
                                | doc "show link as button"
                                | optional,
                              confirm
                                | {
                                  alsoDependsOn
                                    | Array String
                                    | doc "Trigger confirm dialog if on of the components changed."
                                    | optional,
                                  cancel
                                    | std.contract.any_of
                                      [
                                        String,
                                        std.contract.Sequence
                                          [
                                            refs."definitions.multilingual",
                                            { _ | Dyn }
                                          ]
                                      ]
                                    | doc "Text for 'cancel' button"
                                    | optional,
                                  condition
                                    | String
                                    | doc "JS function: true show confirm dialog"
                                    | optional,
                                  ok
                                    | std.contract.any_of
                                      [
                                        String,
                                        std.contract.Sequence
                                          [
                                            refs."definitions.multilingual",
                                            { _ | Dyn }
                                          ]
                                      ]
                                    | doc "Text for 'OK' button"
                                    | optional,
                                  text
                                    | std.contract.any_of
                                      [
                                        String,
                                        std.contract.Sequence
                                          [
                                            refs."definitions.multilingual",
                                            { _ | Dyn }
                                          ]
                                      ]
                                    | doc "Text of confirmation dialog"
                                    | optional,
                                  title
                                    | std.contract.any_of
                                      [
                                        String,
                                        std.contract.Sequence
                                          [
                                            refs."definitions.multilingual",
                                            { _ | Dyn }
                                          ]
                                      ]
                                    | doc "Title of confirmation dialog"
                                    | optional,
                                  type
                                    | std.enum.TagOrString
                                    | [| 'none, 'error, 'warning, 'info |]
                                    | optional,
                                }
                                | doc "Confirm dialog"
                                | optional,
                              darkStyle
                                | { _ | Dyn }
                                | doc "CSS style for dark mode in react notation: 'radiusBorder' and not 'radius-border'"
                                | optional,
                              "default"
                                | std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    { _ | Dyn },
                                    Array Dyn
                                  ]
                                | doc "Default value"
                                | optional,
                              defaultFunc
                                | std.contract.any_of
                                  [
                                    String,
                                    {
                                      alsoDependsOn
                                        | refs."definitions.alsoDependsOnSendProp"
                                        | Array Dyn
                                        | optional,
                                      func
                                        | String
                                        | doc "JS function: that calculates value"
                                        | optional,
                                    }
                                  ]
                                | doc "JS function to calculate default value"
                                | optional,
                              defaultSendTo
                                | String
                                | doc "Command to request initial value from running instance"
                                | optional,
                              disabled
                                | String
                                | doc "JS function that could use 'native.attribute' for calculation"
                                | optional,
                              doNotSave
                                | refs."definitions.doNotSaveProp"
                                | Bool
                                | optional,
                              expertMode
                                | Bool
                                | doc "If this flag set to true, this field will be shown only if the expert mode is true"
                                | optional,
                              help
                                | std.contract.any_of
                                  [
                                    String,
                                    std.contract.Sequence
                                      [
                                        refs."definitions.multilingual",
                                        { _ | Dyn }
                                      ]
                                  ]
                                | optional,
                              helpLink | String | doc "href to help" | optional,
                              hidden
                                | String
                                | doc "JS function that could use 'native.attribute' for calculation"
                                | optional,
                              hideOnlyControl
                                | Bool
                                | doc "If hidden the place will be shown, but no control"
                                | optional,
                              innerStyle
                                | { _ | Dyn }
                                | doc "CSS style in react notation: 'radiusBorder' and not 'radius-border'"
                                | optional,
                              label
                                | std.contract.any_of
                                  [
                                    String,
                                    std.contract.Sequence
                                      [
                                        refs."definitions.multilingual",
                                        { _ | Dyn }
                                      ]
                                  ]
                                | optional,
                              lg
                                | Number
                                | doc "width in 1/12 of screen on large screens"
                                | optional,
                              maxLength
                                | Number
                                | doc "max length of text in field"
                                | optional,
                              md
                                | Number
                                | doc "width in 1/12 of screen on middle screens"
                                | optional,
                              newLine
                                | Bool
                                | doc "Should be shown from new line"
                                | optional,
                              noMultiEdit
                                | Bool
                                | doc "(only custom) if this flag set to true, this field will not be shown if user selected more than one object for edit"
                                | optional,
                              noTranslation
                                | Bool
                                | doc "Do not translate selects or other options (not for help, label or placeholder)"
                                | optional,
                              onChange
                                | {
                                  alsoDependsOn
                                    | refs."definitions.alsoDependsOnSendProp"
                                    | Array Dyn
                                    | optional,
                                  calculateFunc
                                    | String
                                    | doc "JS function: that calculates value"
                                    | optional,
                                  ignoreOwnChanges
                                    | Bool
                                    | doc "Do not trigger onChange event if changed value of this attribute"
                                    | optional,
                                }
                                | optional,
                              showSecondAddAt
                                | Number
                                | doc "Number of lines from which the second add button at the bottom of the table will be shown. Default 5"
                                | optional,
                              sm
                                | Number
                                | doc "Width in 1/12 of screen on small screen"
                                | optional,
                              style
                                | { _ | Dyn }
                                | doc "CSS style in react notation: 'radiusBorder' and not 'radius-border'"
                                | optional,
                              tooltip
                                | std.contract.any_of
                                  [
                                    String,
                                    std.contract.Sequence
                                      [
                                        refs."definitions.multilingual",
                                        { _ | Dyn }
                                      ]
                                  ]
                                | doc "Optional tooltip"
                                | optional,
                              type | refs."definitions.componentType" | String,
                              validator
                                | String
                                | doc "JS function: true no error, false - error"
                                | optional,
                              validatorErrorText
                                | String
                                | doc "Text to show if validator fails"
                                | optional,
                              validatorNoSaveOnError
                                | Bool
                                | doc "True if save must be disabled by errors"
                                | optional,
                              xl
                                | Number
                                | doc "width in 1/12 of screen on extra large screens"
                                | optional,
                              xs
                                | Number
                                | doc "width in 1/12 of screen on very small screens"
                                | optional,
                              ..
                            }
                          ],
                  },
              properties = {},
              required = {},
            },
    }
    in
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
              properties = { type = js2n.Const "tabs", },
              required = {},
            },
          Array Dyn
        ])
      (std.contract.Sequence
        [
          refs."definitions.topLevelProperties",
          {
            iconPosition | refs."definitions.iconPositionProp" | optional,
            tabsStyle
              | { _ | Dyn }
              | doc "CSS styles in ReactJS notation: 'radiusBorder' and not 'radius-border'"
              | optional,
            ..
          },
          {
            "$schema" | js2n.Always | optional,
            i18n | js2n.Always | optional,
            iconPosition | js2n.Always | optional,
            items | js2n.Always | optional,
            tabsStyle | js2n.Always | optional,
            type | js2n.Always,
          }
        ])
      (std.contract.Sequence
        [
          refs."definitions.topLevelProperties",
          {
            "$schema" | js2n.Always | optional,
            i18n | js2n.Always | optional,
            items | js2n.Always | optional,
            type | js2n.Always,
          }
        ])