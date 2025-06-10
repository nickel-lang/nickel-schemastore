# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Category" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'Visualization,
                'Utilities,
                'Transformations,
                'Themes,
                'Simulation,
                'Segmentation,
                'Registration,
                'Measurement,
                'IO,
                '"Image Processing",
                'Dataset,
                'Annotation,
                'Acquisition
              |]
            ],
      "definitions.CommandContribution" =
        {
            category
              | String
              | doc "Category string by which the command may be grouped in the UI."
              | optional,
            enablement
              | String
              | doc "Expression which must evaluate as true to enable the command in the UI (menu and keybindings). Does not prevent executing the command by other means, like the `execute_command` api."
              | optional,
            icon
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ refs."definitions.Icon", { _ | Dyn } ]
                ]
              | doc "Icon used to represent this command in the UI, on buttons or in menus. These may be [superqt](https://github.com/napari/superqt) fonticon keys, such as `'fa6s.arrow_down'`; though note that plugins are expected to depend on any fonticon libraries they use, e.g [fonticon-fontawesome6](https://github.com/tlambert03/fonticon-fontawesome6)."
              | optional,
            id
              | String
              | doc "A unique identifier used to reference this command. While this may look like a python fully qualified name this does *not* refer to a python object; this identifier is specific to napari.  It must begin with the name of the package, and include only alphanumeric characters, plus dashes and underscores.",
            python_name
              | String
              | doc "Fully qualified name to a callable python object implementing this command. This usually takes the form of `{obj.__module__}:{obj.__qualname__}` (e.g. `my_package.a_module:some_function`)"
              | optional,
            short_title
              | String
              | doc "Short title by which the command is represented in the UI. Menus pick either `title` or `short_title` depending on the context in which they show commands."
              | optional,
            title
              | String
              | doc "User facing title representing the command. This might be used, for example, when searching in a command palette. Examples: 'Generate lily sample', 'Read tiff image', 'Open gaussian blur widget'. ",
          },
      "definitions.ConfigurationContribution" =
        {
            properties
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.ConfigurationProperty", { _ | Dyn } ]
              }
              | doc "Configuration properties. In the settings UI, your configuration key will be used to namespace and construct a title. Though a plugin can contain multiple categories of settings, each plugin setting must still have its own unique key. Capital letters in your key are used to indicate word breaks. For example, if your key is 'gitMagic.blame.dateFormat', the generated title for the setting will look like 'Blame: Date Format'",
            title
              | String
              | doc "The heading used for this configuration category. Words like \"Plugin\", \"Configuration\", and \"Settings\" are redundant and should not beused in your title.",
            ..
          },
      "definitions.ConfigurationProperty" =
        {
            "$comment" | String | optional,
            "$id" | String | optional,
            "$schema" | String | optional,
            additionalItems
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ refs."definitions.Draft07JsonSchema", { _ | Dyn } ]
                ]
              | optional,
            additionalProperties
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ refs."definitions.Draft07JsonSchema", { _ | Dyn } ]
                ]
              | optional,
            allOf
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Draft07JsonSchema", { _ | Dyn } ]
              )
              | optional,
            anyOf
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Draft07JsonSchema", { _ | Dyn } ]
              )
              | optional,
            const
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | optional,
            contains
              | refs."definitions.Draft06JsonSchema"
              | { _ | Dyn }
              | optional,
            contentEncoding | String | optional,
            contentMediaType | String | optional,
            "default"
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "The default value for this property."
              | optional,
            dependencies
              | {
                _ | std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.Draft06JsonSchema", { _ | Dyn } ],
                    std.contract.Sequence
                      [ js2n.array.UniqueItems, Array String ]
                  ]
              }
              | optional,
            deprecationMessage
              | String
              | doc "If you set deprecationMessage, the setting will get a warning underline with your specified message. It won't show up in the settings UI unless it is configured by the user."
              | optional,
            deprecationMessageFormat
              | std.enum.TagOrString
              | [| 'plain, 'markdown |]
              | doc "By default (`markdown`) your `deprecation_message`, will be parsed as CommonMark (with `markdown_it`) and rendered as rich text. To render as plain text, set this value to `plain`."
              | optional,
            description
              | String
              | doc "Your `description` appears after the title and before the input field, except for booleans, where the description is used as the label for the checkbox. See also `markdown_description`."
              | optional,
            descriptionFormat
              | std.enum.TagOrString
              | [| 'plain, 'markdown |]
              | doc "By default (`markdown`) your `description`, will be parsed as CommonMark (with `markdown_it`) and rendered as rich text. To render as plain text, set this value to `plain`."
              | optional,
            editPresentation
              | std.enum.TagOrString
              | [| 'multiline, 'singleline |]
              | doc "By default, string settings will be rendered with a single-line editor. To render with a multi-line editor, set this value to `multiline`."
              | optional,
            "else"
              | refs."definitions.Draft07JsonSchema"
              | { _ | Dyn }
              | optional,
            enum
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array js2n.Always
              | doc "A list of valid options for this field. If you provide this field,the settings UI will render a dropdown menu."
              | optional,
            enumDescriptions
              | Array String
              | doc "If you provide a list of items under the `enum` field, you may provide `enum_descriptions` to add descriptive text for each enum."
              | optional,
            enumDescriptionsFormat
              | std.enum.TagOrString
              | [| 'plain, 'markdown |]
              | doc "By default (`markdown`) your `enum_description`s, will be parsed as CommonMark (with `markdown_it`) and rendered as rich text. To render as plain text, set this value to `plain`."
              | optional,
            examples | Array js2n.Always | optional,
            exclusiveMaximum | Number | optional,
            exclusiveMinimum | Number | optional,
            format | String | optional,
            "if"
              | refs."definitions.Draft07JsonSchema"
              | { _ | Dyn }
              | optional,
            items
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Draft07JsonSchema", { _ | Dyn } ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.Draft07JsonSchema", { _ | Dyn } ]
                  )
                ]
              | optional,
            maxItems | std.number.Integer | js2n.number.Minimum 0 | optional,
            maxLength | std.number.Integer | js2n.number.Minimum 0 | optional,
            maxProperties
              | std.number.Integer
              | js2n.number.Minimum 0
              | optional,
            maximum | Number | optional,
            minItems | std.number.Integer | js2n.number.Minimum 0 | optional,
            minLength | std.number.Integer | js2n.number.Minimum 0 | optional,
            minProperties
              | std.number.Integer
              | js2n.number.Minimum 0
              | optional,
            minimum | Number | optional,
            multipleOf | js2n.number.Minimum 0 | optional,
            not | refs."definitions.Draft07JsonSchema" | { _ | Dyn } | optional,
            oneOf
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Draft07JsonSchema", { _ | Dyn } ]
              )
              | optional,
            order
              | std.number.Integer
              | doc "When specified, gives the order of this setting relative to other settings within the same category. Settings with an order property will be placed before settings without this property set; and settings without `order` will be placed in alphabetical order."
              | optional,
            pattern | String | optional,
            patternErrorMessage
              | String
              | doc "When restricting string types to a given regular expression with the `pattern` field, this field may be used to provide a custom error when the pattern does not match."
              | optional,
            patternProperties
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.Draft07JsonSchema", { _ | Dyn } ]
              }
              | optional,
            properties
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.Draft07JsonSchema", { _ | Dyn } ]
              }
              | optional,
            propertyNames
              | refs."definitions.Draft06JsonSchema"
              | { _ | Dyn }
              | optional,
            readOnly | Bool | optional,
            required | js2n.array.UniqueItems | Array String | optional,
            "then"
              | refs."definitions.Draft07JsonSchema"
              | { _ | Dyn }
              | optional,
            title | String | optional,
            type
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'string,
                        'object,
                        'number,
                        '"null",
                        'integer,
                        'boolean,
                        'array
                      |]
                    ],
                  std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'string,
                              'object,
                              'number,
                              '"null",
                              'integer,
                              'boolean,
                              'array
                            |]
                          ]
                      )
                    ]
                ]
              | doc "The type of this variable. Either JSON Schema type names ('array', 'boolean', 'object', ...) or python type names ('list', 'bool', 'dict', ...) may be used, but they will be coerced to JSON Schema types. Numbers, strings, and booleans will be editable in the UI, other types (lists, dicts) *may* be editable in the UI depending on their content, but maby will only be editable as text in the napari settings file. For boolean entries, the description (or markdownDescription) will be used as the label for the checkbox."
              | optional,
            uniqueItems | Bool | optional,
            writeOnly | Bool | optional,
            ..
          },
      "definitions.ContributionPoints" =
        {
            commands
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CommandContribution", { _ | Dyn } ]
              )
              | optional,
            configuration
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ConfigurationContribution", { _ | Dyn } ]
              )
              | doc "Configuration options for this plugin.This section can either be a single object, representing a single category ofsettings, or an array of objects, representing multiple categories ofsettings. If there are multiple categories of settings, the Settings editorwill show a submenu in the table of contents for that extension, and the titlekeys will be used for the submenu entry names."
              | optional,
            keybindings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.KeyBindingContribution", { _ | Dyn } ]
              )
              | optional,
            menus
              | {
                _ | Array (
                  std.contract.any_of
                    [
                      std.contract.Sequence
                        [ refs."definitions.MenuCommand", { _ | Dyn } ],
                      std.contract.Sequence
                        [ refs."definitions.Submenu", { _ | Dyn } ]
                    ]
                )
              }
              | optional,
            readers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ReaderContribution", { _ | Dyn } ]
              )
              | optional,
            sample_data
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.SampleDataGenerator", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.SampleDataURI", { _ | Dyn } ]
                  ]
              )
              | optional,
            submenus
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SubmenuContribution", { _ | Dyn } ]
              )
              | optional,
            themes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ThemeContribution", { _ | Dyn } ]
              )
              | optional,
            widgets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.WidgetContribution", { _ | Dyn } ]
              )
              | optional,
            writers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.WriterContribution", { _ | Dyn } ]
              )
              | optional,
            ..
          },
      "definitions.Draft06JsonSchema" =
        {
            "$id" | String | optional,
            "$schema" | String | optional,
            additionalItems
              | std.contract.any_of
                [ Bool, std.contract.Sequence [ js2n.Always, { _ | Dyn } ] ]
              | optional,
            additionalProperties
              | std.contract.any_of
                [ Bool, std.contract.Sequence [ js2n.Always, { _ | Dyn } ] ]
              | optional,
            allOf
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | optional,
            anyOf
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | optional,
            const
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | optional,
            contains | js2n.Always | { _ | Dyn } | optional,
            "default"
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | optional,
            dependencies
              | {
                _ | std.contract.any_of
                  [
                    std.contract.Sequence [ js2n.Always, { _ | Dyn } ],
                    std.contract.Sequence
                      [ js2n.array.UniqueItems, Array String ]
                  ]
              }
              | optional,
            description | String | optional,
            enum
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array js2n.Always
              | optional,
            examples | Array js2n.Always | optional,
            exclusiveMaximum | Number | optional,
            exclusiveMinimum | Number | optional,
            format | String | optional,
            items
              | std.contract.any_of
                [
                  std.contract.Sequence [ js2n.Always, { _ | Dyn } ],
                  Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
                ]
              | optional,
            maxItems | std.number.Integer | js2n.number.Minimum 0 | optional,
            maxLength | std.number.Integer | js2n.number.Minimum 0 | optional,
            maxProperties
              | std.number.Integer
              | js2n.number.Minimum 0
              | optional,
            maximum | Number | optional,
            minItems | std.number.Integer | js2n.number.Minimum 0 | optional,
            minLength | std.number.Integer | js2n.number.Minimum 0 | optional,
            minProperties
              | std.number.Integer
              | js2n.number.Minimum 0
              | optional,
            minimum | Number | optional,
            multipleOf | js2n.number.Minimum 0 | optional,
            not | js2n.Always | { _ | Dyn } | optional,
            oneOf
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | optional,
            pattern | String | optional,
            patternProperties
              | { _ | std.contract.Sequence [ js2n.Always, { _ | Dyn } ] }
              | optional,
            properties
              | { _ | std.contract.Sequence [ js2n.Always, { _ | Dyn } ] }
              | optional,
            propertyNames | js2n.Always | { _ | Dyn } | optional,
            required | js2n.array.UniqueItems | Array String | optional,
            title | String | optional,
            type
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'string,
                        'object,
                        'number,
                        '"null",
                        'integer,
                        'boolean,
                        'array
                      |]
                    ],
                  std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'string,
                              'object,
                              'number,
                              '"null",
                              'integer,
                              'boolean,
                              'array
                            |]
                          ]
                      )
                    ]
                ]
              | optional,
            uniqueItems | Bool | optional,
            ..
          },
      "definitions.Draft07JsonSchema" =
        {
            "$comment" | String | optional,
            "$id" | String | optional,
            "$schema" | String | optional,
            additionalItems
              | std.contract.any_of
                [ Bool, std.contract.Sequence [ js2n.Always, { _ | Dyn } ] ]
              | optional,
            additionalProperties
              | std.contract.any_of
                [ Bool, std.contract.Sequence [ js2n.Always, { _ | Dyn } ] ]
              | optional,
            allOf
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | optional,
            anyOf
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | optional,
            const
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | optional,
            contains
              | refs."definitions.Draft06JsonSchema"
              | { _ | Dyn }
              | optional,
            contentEncoding | String | optional,
            contentMediaType | String | optional,
            "default"
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | optional,
            dependencies
              | {
                _ | std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.Draft06JsonSchema", { _ | Dyn } ],
                    std.contract.Sequence
                      [ js2n.array.UniqueItems, Array String ]
                  ]
              }
              | optional,
            description | String | optional,
            "else" | js2n.Always | { _ | Dyn } | optional,
            enum
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array js2n.Always
              | optional,
            examples | Array js2n.Always | optional,
            exclusiveMaximum | Number | optional,
            exclusiveMinimum | Number | optional,
            format | String | optional,
            "if" | js2n.Always | { _ | Dyn } | optional,
            items
              | std.contract.any_of
                [
                  std.contract.Sequence [ js2n.Always, { _ | Dyn } ],
                  Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
                ]
              | optional,
            maxItems | std.number.Integer | js2n.number.Minimum 0 | optional,
            maxLength | std.number.Integer | js2n.number.Minimum 0 | optional,
            maxProperties
              | std.number.Integer
              | js2n.number.Minimum 0
              | optional,
            maximum | Number | optional,
            minItems | std.number.Integer | js2n.number.Minimum 0 | optional,
            minLength | std.number.Integer | js2n.number.Minimum 0 | optional,
            minProperties
              | std.number.Integer
              | js2n.number.Minimum 0
              | optional,
            minimum | Number | optional,
            multipleOf | js2n.number.Minimum 0 | optional,
            not | js2n.Always | { _ | Dyn } | optional,
            oneOf
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | optional,
            pattern | String | optional,
            patternProperties
              | { _ | std.contract.Sequence [ js2n.Always, { _ | Dyn } ] }
              | optional,
            properties
              | { _ | std.contract.Sequence [ js2n.Always, { _ | Dyn } ] }
              | optional,
            propertyNames
              | refs."definitions.Draft06JsonSchema"
              | { _ | Dyn }
              | optional,
            readOnly | Bool | optional,
            required | js2n.array.UniqueItems | Array String | optional,
            "then" | js2n.Always | { _ | Dyn } | optional,
            title | String | optional,
            type
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'string,
                        'object,
                        'number,
                        '"null",
                        'integer,
                        'boolean,
                        'array
                      |]
                    ],
                  std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'string,
                              'object,
                              'number,
                              '"null",
                              'integer,
                              'boolean,
                              'array
                            |]
                          ]
                      )
                    ]
                ]
              | optional,
            uniqueItems | Bool | optional,
            writeOnly | Bool | optional,
            ..
          },
      "definitions.Icon" =
        { dark | String | optional, light | String | optional, .. },
      "definitions.KeyBindingContribution" =
        {
            command
              | String
              | doc "Identifier of the command to run when keybinding is triggered.",
            key
              | String
              | doc "Key or key sequence (separate simultaneous key presses with a plus-sign e.g. Ctrl+O and sequences with a space e.g. Ctrl+L L for a chord).",
            linux
              | String
              | doc "Linux specific key or key sequence."
              | optional,
            mac | String | doc "Mac specific key or key sequence." | optional,
            when | String | doc "Condition when the key is active." | optional,
            win
              | String
              | doc "Windows specific key or key sequence."
              | optional,
            ..
          },
      "definitions.MenuCommand" =
        {
            alt
              | String
              | doc "Identifier of an alternative command to execute. It will be shown and invoked when pressing Alt while opening a menu.The command must be declared in the 'commands' section"
              | optional,
            command
              | String
              | doc "Identifier of the command to execute. The command must be declared in the 'commands' section",
            group
              | String
              | doc "The `group` property defines sorting and grouping of menu items. The `'navigation'` group is special: it will always be sorted to the top/beginning of a menu. By default, the order *inside* a group depends on the `title`. The group-local order of a menu item can be specified by appending @<int> to the group identifier: e.g. `group: 'myGroup@2'`."
              | optional,
            when
              | String
              | doc "Condition which must be true to *show* this item in the menu. Note that ``when`` clauses apply to menus and ``enablement`` clauses to commands. The ``enablement`` applies to all menus and even keybindings while the ``when`` only applies to a single menu."
              | optional,
            ..
          },
      "definitions.PackageMetadata" =
        {
            author
              | String
              | doc "A string containing the author's name at a minimum; additional contact information may be provided."
              | optional,
            author_email
              | String
              | doc "A string containing the author's e-mail address. It can contain a name and e-mail address in the legal forms for a RFC-822 From: header."
              | optional,
            classifier
              | Array String
              | doc "Each entry is a string giving a single classification value for the distribution. Classifiers are described in PEP 301, and the Python Package Index publishes a dynamic list of currently defined classifiers."
              | optional,
            description
              | String
              | doc "A longer description of the distribution that can run to several paragraphs."
              | optional,
            description_content_type
              | String
              | doc "A string stating the markup syntax (if any) used in the distribution's description, so that tools can intelligently render the description. The type/subtype part has only a few legal values: text/plain, text/x-rst, text/markdown"
              | optional,
            download_url
              | String
              | doc "A string containing the URL from which THIS version of the distribution can be downloaded."
              | optional,
            dynamic
              | Array String
              | doc "A string containing the name of another core metadata field. The field names Name and Version may not be specified in this field."
              | optional,
            home_page
              | String
              | doc "A string containing the URL for the distribution's home page."
              | optional,
            keywords
              | String
              | doc "A list of additional keywords, separated by commas, to be used to assist searching for the distribution in a larger catalog."
              | optional,
            license
              | String
              | doc "Text indicating the license covering the distribution where the license is not a selection from the “License” Trove classifiers. See “Classifier” below. This field may also be used to specify a particular version of a license which is named via the Classifier field, or to indicate a variation or exception to such a license."
              | optional,
            maintainer
              | String
              | doc "A string containing the maintainer's name at a minimum; additional contact information may be provided."
              | optional,
            maintainer_email
              | String
              | doc "A string containing the maintainer's e-mail address. It can contain a name and e-mail address in the legal forms for a RFC-822 From: header."
              | optional,
            metadata_version
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        '"2.3",
                        '"2.2",
                        '"2.1",
                        '"2.0",
                        '"1.2",
                        '"1.1",
                        '"1.0"
                      |]
                    ],
                  String
                ]
              | doc "Version of the file format"
              | optional,
            name
              | js2n.string.Matches "^[a-zA-Z0-9][a-zA-Z0-9._-]*[a-zA-Z0-9]$"
              | doc "The name of the distribution. The name field is the primary identifier for a distribution.",
            obsoletes_dist | Array String | optional,
            platform
              | Array String
              | doc "A Platform specification describing an operating system supported by the distribution which is not listed in the “Operating System” Trove classifiers. See “Classifier” below."
              | optional,
            project_url
              | Array String
              | doc "A string containing a browsable URL for the project and a label for it, separated by a comma."
              | optional,
            provides_dist | Array String | optional,
            provides_extra
              | Array String
              | doc "A string containing the name of an optional feature. Must be a valid Python identifier. May be used to make a dependency conditional on whether the optional feature has been requested."
              | optional,
            requires_dist
              | Array String
              | doc "The field format specification was relaxed to accept the syntax used by popular publishing tools. Each entry contains a string naming some other distutils project required by this distribution."
              | optional,
            requires_external
              | Array String
              | doc "The field format specification was relaxed to accept the syntax used by popular publishing tools. Each entry contains a string describing some dependency in the system that the distribution is to be used. This field is intended to serve as a hint to downstream project maintainers, and has no semantics which are meaningful to the distutils distribution."
              | optional,
            requires_python
              | String
              | doc "This field specifies the Python version(s) that the distribution is guaranteed to be compatible with. Installation tools may look at this when picking which version of a project to install. The value must be in the format specified in Version specifiers (PEP 440)."
              | optional,
            summary
              | String
              | doc "A one-line summary of what the distribution does."
              | optional,
            supported_platform
              | Array String
              | doc "Binary distributions containing a PKG-INFO file will use the Supported-Platform field in their metadata to specify the OS and CPU for which the binary distribution was compiled"
              | optional,
            version
              | String
              | doc "A string containing the distribution's version number. This field must be in the format specified in PEP 440.",
            ..
          },
      "definitions.ReaderContribution" =
        {
            accepts_directories
              | Bool
              | doc "Whether this reader accepts directories"
              | optional,
            command
              | String
              | doc "Identifier of the command providing `napari_get_reader`.",
            filename_patterns
              | Array String
              | doc "List of filename patterns (for fnmatch) that this reader can accept. Reader will be tried only if `fnmatch(filename, pattern) == True`. Use `['*']` to match all filenames.",
          },
      "definitions.SampleDataGenerator" =
        {
            command
              | String
              | doc "Identifier of a command that returns layer data tuple.",
            display_name
              | String
              | doc "String to show in the UI when referring to this sample",
            key | String | doc "A unique key to identify this sample.",
            ..
          },
      "definitions.SampleDataURI" =
        {
            display_name
              | String
              | doc "String to show in the UI when referring to this sample",
            key | String | doc "A unique key to identify this sample.",
            reader_plugin
              | String
              | doc "Name of plugin to use to open URI"
              | optional,
            uri
              | String
              | doc "Path or URL to a data resource. This URI should be a valid input to `io_utils.read`",
            ..
          },
      "definitions.Submenu" =
        {
            group
              | String
              | doc "The `group` property defines sorting and grouping of menu items. The `'navigation'` group is special: it will always be sorted to the top/beginning of a menu. By default, the order *inside* a group depends on the `title`. The group-local order of a menu item can be specified by appending @<int> to the group identifier: e.g. `group: 'myGroup@2'`."
              | optional,
            submenu
              | String
              | doc "Identifier of the submenu to display in this item.The submenu must be declared in the 'submenus' -section",
            when
              | String
              | doc "Condition which must be true to *show* this item in the menu. Note that ``when`` clauses apply to menus and ``enablement`` clauses to commands. The ``enablement`` applies to all menus and even keybindings while the ``when`` only applies to a single menu."
              | optional,
            ..
          },
      "definitions.SubmenuContribution" =
        {
            icon
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ refs."definitions.Icon", { _ | Dyn } ]
                ]
              | doc "(Optional) Icon which is used to represent the command in the UI. Either a file path, an object with file paths for dark and lightthemes, or a theme icon references, like `$(zap)`"
              | optional,
            id | String | doc "Identifier of the menu to display as a submenu.",
            label
              | String
              | doc "The label of the menu item which leads to this submenu.",
            ..
          },
      "definitions.ThemeColors" =
        {
            background | String | optional,
            canvas | String | optional,
            console | String | optional,
            current | String | optional,
            foreground | String | optional,
            highlight | String | optional,
            icon | String | optional,
            primary | String | optional,
            secondary | String | optional,
            text | String | optional,
            warning | String | optional,
            ..
          },
      "definitions.ThemeContribution" =
        {
            colors
              | refs."definitions.ThemeColors"
              | { _ | Dyn }
              | doc m%"
                Theme colors. Valid keys include: `canvas`, `console`, `background`, `foreground`, `primary`, `secondary`, `highlight`, `text`, `icon`, `warning`, `current`. All keys are optional. Color values can be defined via:
                   - name: `"Black"`, `"azure"`
                   - hexadecimal value: `"0x000"`, `"#FFFFFF"`, `"7fffd4"`
                   - RGB/RGBA tuples: `(255, 255, 255)`, `(255, 255, 255, 0.5)`
                   - RGB/RGBA strings: `"rgb(255, 255, 255)"`, `"rgba(255, 255, 255, 0.5)`"
                   - HSL strings: "`hsl(270, 60%, 70%)"`, `"hsl(270, 60%, 70%, .5)`"
                
              "%,
            font_size
              | String
              | doc "Font size (in points, pt) used in the application."
              | optional,
            id
              | String
              | doc "Identifier of the color theme as used in the user settings.",
            label | String | doc "Label of the color theme as shown in the UI.",
            syntax_style | String | optional,
            type
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'dark |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'light |] ]
                ]
              | doc "Base theme type, used for icons and filling in unprovided colors. Must be either `'dark'` or  `'light'`.",
            ..
          },
      "definitions.WidgetContribution" =
        {
            autogenerate
              | Bool
              | doc "If true, a widget will be autogenerated from the signature of the associated command using [magicgui](https://napari.org/magicgui/)."
              | optional,
            command
              | String
              | doc "Identifier of a command that returns a widget instance.  Or, if `autogenerate` is `True`, any command suitable as an argument to `magicgui.magicgui()`.",
            display_name
              | String
              | doc "Name for the widget, as presented in the UI.",
          },
      "definitions.WriterContribution" =
        {
            command
              | String
              | doc "Identifier of the command providing a writer.",
            display_name
              | String
              | doc "Brief text used to describe this writer when presented. Empty by default. When present, this string is presented in the save dialog along side the plugin name and may be used to distinguish the kind of writer for the user. E.g. “lossy” or “lossless”."
              | optional,
            filename_extensions
              | Array String
              | doc "List of filename extensions compatible with this writer. The first entry is used as the default if necessary. Empty by default. When empty, any filename extension is accepted."
              | optional,
            layer_types
              | Array String
              | doc "List of layer type constraints. These determine what layers (or combinations thereof) this writer handles.",
          },
    }
    in
  {
      categories
        | Array refs."definitions.Category"
        | doc "A list of categories that this plugin belongs to. This is used to help users discover your plugin. Allowed values: `[Acquisition, Annotation, Dataset, Image Processing, IO, Measurement, Registration, Segmentation, Simulation, Themes, Transformations, Utilities, Visualization]`"
        | optional,
      contributions
        | refs."definitions.ContributionPoints"
        | doc "An object describing the plugin's [contributions](./contributions)"
        | optional,
      display_name
        | js2n.string.MaxLength 90
        | js2n.string.MinLength 3
        | doc "User-facing text to display as the name of this plugin. Must be 3-90 characters long and must not begin or end with an underscore, white space, or non-word character. If not provided, the manifest `name` will be used as the display name."
        | optional,
      icon
        | String
        | doc "The path to a square PNG icon of at least 128x128 pixels (256x256 for Retina screens). May be one of: <ul><li>a secure (https) URL </li><li>a path relative to the manifest file, (must be shipped in the sdist)</li><li>a string in the format `{package}:{resource}`, where `package` and `resource` are arguments to `importlib.resources.path(package, resource)`, (e.g. `top_module.some_folder:my_logo.png`).</li></ul>"
        | optional,
      name
        | String
        | doc "The name of the plugin. Though this field is mandatory, it *must* match the package `name` as defined in the python package metadata.",
      npe1_shim
        | Bool
        | doc "Whether this manifest was created as a shim for an npe1 plugin."
        | optional,
      on_activate
        | String
        | doc "Fully qualified python path to a function that will be called upon plugin activation (e.g. `'my_plugin.some_module:activate'`). The activate function can be used to connect command ids to python callables, or perform other side-effects. A plugin will be 'activated' when one of its contributions is requested by the user (such as a widget, or reader)."
        | optional,
      on_deactivate
        | String
        | doc "Fully qualified python path to a function that will be called when a user deactivates a plugin (e.g. `'my_plugin.some_module:deactivate'`). This is optional, and may be used to perform any plugin cleanup."
        | optional,
      package_metadata
        | refs."definitions.PackageMetadata"
        | doc "Package metadata following https://packaging.python.org/specifications/core-metadata/. For normal (non-dynamic) plugins, this data will come from the package's setup.cfg"
        | optional,
      schema_version
        | String
        | doc "A SemVer compatible version string matching the napari plugin schema version that the plugin is compatible with."
        | optional,
      visibility
        | std.enum.TagOrString
        | [| 'hidden, 'public |]
        | doc "Whether this plugin should be searchable and visible in the built-in plugin installer and the napari hub. By default (`'public'`) all plugins are visible. To prevent your plugin from appearing in search results, change this to `'hidden'`."
        | optional,
      ..
    }