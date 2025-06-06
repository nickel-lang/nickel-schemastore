# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema" | String | optional,
      __experimental
        | std.contract.any_of [ Bool, String ]
        | doc "The name of the experiment this block is a part of, or boolean true if there is no specific experiment name."
        | optional,
      allowedBlocks
        | Array String
        | doc "The `allowedBlocks` property specifies that only the listed block types can be the children of this block. For example, a ‘List’ block allows only ‘List Item’ blocks as direct children."
        | optional,
      ancestor
        | Array String
        | doc "The `ancestor` property makes a block available inside the specified block types at any position of the ancestor block subtree. That allows, for example, to place a ‘Comment Content’ block inside a ‘Column’ block, as long as ‘Column’ is somewhere within a ‘Comment Template’ block."
        | optional,
      apiVersion
        | std.number.Integer
        | js2n.Enum [ 1, 2, 3 ]
        | doc m%"
          The version of the Block API used by the block. The most recent version is 3 and it was introduced in WordPress 6.3.
          
           See the API versions documentation at https://developer.wordpress.org/block-editor/reference-guides/block-api/block-api-versions/ for more details.
        "%
        | optional,
      attributes
        | {
          _ | std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "type" ],
                  js2n.record.Required [ "enum" ]
                ],
              {
                attribute
                  | String
                  | doc m%"
                    Use an attribute source to extract the value from an attribute in the markup. The attribute is specified by the attribute field, which must be supplied.
                    
                    Example: Extract the src attribute from an image found in the block’s markup.
                  "%
                  | optional,
                "default"
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc m%"
                    A block attribute can contain a default value, which will be used if the type and source do not match anything within the block content.
                    
                    The value is provided by the default field, and the value should match the expected format of the attribute.
                  "%
                  | optional,
                enum
                  | Array (std.contract.any_of [ Bool, Number, String ])
                  | doc "An attribute can be defined as one of a fixed set of values. This is specified by an enum, which contains an array of allowed values:"
                  | optional,
                meta
                  | String
                  | doc m%"
                    Although attributes may be obtained from a post’s meta, meta attribute sources are considered deprecated; EntityProvider and related hook APIs should be used instead, as shown in the Create Meta Block how-to here:
                    
                    https://developer.wordpress.org/block-editor/how-to-guides/metabox/#step-2-add-meta-block
                  "%
                  | optional,
                query
                  | { _ | Dyn }
                  | doc "Use query to extract an array of values from markup. Entries of the array are determined by the selector argument, where each matched element within the block will have an entry structured corresponding to the second argument, an object of attribute sources."
                  | optional,
                role
                  | std.enum.TagOrString
                  | [| 'local, 'content |]
                  | doc m%"
                    Designates the conceptual type of the attribute.
                    
                    The `content` value marks the attribute as user-editable content, and the `local` value marks the attribute as temporary and non-persistable.
                  "%
                  | optional,
                selector
                  | String
                  | doc m%"
                    The selector can be an HTML tag, or anything queryable with querySelector, such as a class or id attribute. Examples are given below.
                    
                    For example, a selector of img will match an img element, and img.class will match an img element that has a class of class.
                  "%
                  | optional,
                source
                  | std.enum.TagOrString
                  | [|
                    'meta,
                    'query,
                    'raw,
                    'html,
                    'rich-text,
                    'text,
                    'attribute
                  |]
                  | doc "Attribute sources are used to define how the attribute values are extracted from saved post content. They provide a mechanism to map from the saved markup to a JavaScript representation of a block."
                  | optional,
                type
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [|
                            'number,
                            'integer,
                            'rich-text,
                            'string,
                            'array,
                            'object,
                            'boolean,
                            '"null"
                          |]
                        ],
                      std.contract.Sequence
                        [
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'number,
                                  'integer,
                                  'string,
                                  'array,
                                  'object,
                                  'boolean,
                                  '"null"
                                |]
                              ]
                          )
                        ]
                    ]
                  | doc m%"
                    The type indicates the type of data that is stored by the attribute. It does not indicate where the data is stored, which is defined by the source field.
                    
                    A type is required, unless an enum is provided. A type can be used with an enum.
                    
                    Note that the validity of an object is determined by your source. For an example, see the query details below.
                  "%
                  | optional,
                ..
              }
            ]
        }
        | js2n.record.FieldsMatch "[a-zA-Z]"
        | doc m%"
          Attributes provide the structured data needs of a block. They can exist in different forms when they are serialized, but they are declared together under a common interface.
          
          See the attributes documentation at https://developer.wordpress.org/block-editor/reference-guides/block-api/block-attributes/ for more details.
        "%
        | optional,
      blockHooks
        | {
          _ | std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'lastChild, 'firstChild, 'after, 'before |]
            ]
        }
        | js2n.record.FieldsMatch "^[a-z][a-z0-9-]*/[a-z][a-z0-9-]*$"
        | doc m%"
          Block Hooks allow a block to automatically insert itself next to all instances of a given block type.
          
          See the Block Hooks documentation at https://developer.wordpress.org/block-editor/reference-guides/block-api/block-registration/#block-hooks-optional for more details.
        "%
        | optional,
      category
        | std.contract.any_of
          [
            String,
            std.contract.Sequence
              [
                std.enum.TagOrString,
                [| 'embed, 'theme, 'widgets, 'design, 'media, 'text |]
              ]
          ]
        | doc m%"
          Blocks are grouped into categories to help users browse and discover them.
           Core provided categories are: text, media, design, widgets, theme, embed
          
          Plugins and Themes can also register custom block categories.
          
          https://developer.wordpress.org/block-editor/reference-guides/filters/block-filters/#managing-block-categories
        "%
        | optional,
      description
        | String
        | doc "This is a short description for your block, which can be translated with our translation functions. This will be shown in the block inspector."
        | optional,
      editorScript
        | std.contract.any_of [ String, Array String ]
        | doc "Block type editor script definition. It will only be enqueued in the context of the editor."
        | optional,
      editorStyle
        | std.contract.any_of [ String, Array String ]
        | doc "Block type editor style definition. It will only be enqueued in the context of the editor."
        | optional,
      example
        | {
          attributes
            | { _ | Dyn }
            | doc "Set the attributes for the block example"
            | optional,
          innerBlocks
            | Array Dyn
            | doc m%"
              Set the inner blocks that should be used within the block example. The blocks should be defined as a nested array like this:
              
              [ { "name": "core/heading", "attributes": { "content": "This is an Example" } } ]
              
              Where each block itself is an object that contains the block name, the block attributes, and the blocks inner blocks.
            "%
            | optional,
          viewportWidth
            | Number
            | doc "The viewportWidth controls the width of the iFrame container in which the block preview will get rendered"
            | optional,
          ..
        }
        | doc m%"
          It provides structured example data for the block. This data is used to construct a preview for the block to be shown in the Inspector Help Panel when the user mouses over the block.
          
          See the example documentation at https://developer.wordpress.org/block-editor/reference-guides/block-api/block-registration/#example-optional for more details.
        "%
        | optional,
      icon
        | String
        | doc "An icon property should be specified to make it easier to identify a block. These can be any of WordPress’ Dashicons (slug serving also as a fallback in non-js contexts)."
        | optional,
      keywords
        | Array String
        | doc "Sometimes a block could have aliases that help users discover it while searching. For example, an image block could also want to be discovered by photo. You can do so by providing an array of unlimited terms (which are translated)."
        | optional,
      name
        | js2n.string.Matches "^[a-z][a-z0-9-]*/[a-z][a-z0-9-]*$"
        | doc "The name for a block is a unique string that identifies a block. Names have to be structured as `namespace/block-name`, where namespace is the name of your plugin or theme.",
      parent
        | Array String
        | doc "Setting parent lets a block require that it is only available when nested within the specified blocks. For example, you might want to allow an ‘Add to Cart’ block to only be available within a ‘Product’ block."
        | optional,
      providesContext
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { "[a-zA-Z]" = String, },
            properties = {},
            required = {},
          }
        | doc m%"
          Context provided for available access by descendants of blocks of this type, in the form of an object which maps a context name to one of the block’s own attribute.
          
          See the block context documentation at https://developer.wordpress.org/block-editor/reference-guides/block-api/block-context/ for more details.
        "%
        | optional,
      render
        | String
        | doc "Template file loaded on the server when rendering a block."
        | optional,
      script
        | std.contract.any_of [ String, Array String ]
        | doc "Block type frontend and editor script definition. It will be enqueued both in the editor and when viewing the content on the front of the site."
        | optional,
      selectors
        | {
          border
            | std.contract.any_of
              [
                String,
                {
                  color | String | optional,
                  radius | String | optional,
                  root | String | optional,
                  style | String | optional,
                  width | String | optional,
                  ..
                }
              ]
            | doc "Custom CSS selector used to generate rules for the block's theme.json border styles."
            | optional,
          color
            | std.contract.any_of
              [
                String,
                {
                  background | String | optional,
                  root | String | optional,
                  text | String | optional,
                  ..
                }
              ]
            | doc "Custom CSS selector used to generate rules for the block's theme.json color styles."
            | optional,
          dimensions
            | std.contract.any_of
              [
                String,
                {
                  aspectRatio | String | optional,
                  minHeight | String | optional,
                  root | String | optional,
                  ..
                }
              ]
            | doc "Custom CSS selector used to generate rules for the block's theme.json dimensions styles."
            | optional,
          root
            | String
            | doc "The primary CSS class to apply to the block. This replaces the `.wp-block-name` class if set."
            | optional,
          spacing
            | std.contract.any_of
              [
                String,
                {
                  blockGap | String | optional,
                  margin | String | optional,
                  padding | String | optional,
                  root | String | optional,
                  ..
                }
              ]
            | doc "Custom CSS selector used to generate rules for the block's theme.json spacing styles."
            | optional,
          typography
            | std.contract.any_of
              [
                String,
                {
                  fontFamily | String | optional,
                  fontSize | String | optional,
                  fontStyle | String | optional,
                  fontWeight | String | optional,
                  letterSpacing | String | optional,
                  lineHeight | String | optional,
                  root | String | optional,
                  textDecoration | String | optional,
                  textTransform | String | optional,
                  ..
                }
              ]
            | doc "Custom CSS selector used to generate rules for the block's theme.json typography styles."
            | optional,
          ..
        }
        | doc "Provides custom CSS selectors and mappings for the block. Selectors may be set for the block itself or per-feature e.g. typography. Custom selectors per feature or sub-feature, allow different block styles to be applied to different elements within the block."
        | optional,
      style
        | std.contract.any_of [ String, Array String ]
        | doc "Block type frontend style definition. It will be enqueued both in the editor and when viewing the content on the front of the site."
        | optional,
      styles
        | Array { isDefault | Bool | optional, label | String, name | String, }
        | doc m%"
          Block styles can be used to provide alternative styles to block. It works by adding a class name to the block’s wrapper. Using CSS, a theme developer can target the class name for the block style if it is selected.
          
          Plugins and Themes can also register custom block style for existing blocks.
          
          https://developer.wordpress.org/block-editor/reference-guides/block-api/block-styles/
        "%
        | optional,
      supports
        | {
          align
            | std.contract.any_of
              [
                Bool,
                Array (
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'right, 'center, 'left, 'full, 'wide |]
                    ]
                )
              ]
            | doc "This property adds block controls which allow to change block’s alignment."
            | optional,
          alignWide
            | Bool
            | doc "This property allows to enable wide alignment for your theme. To disable this behavior for a single block, set this flag to false."
            | optional,
          anchor
            | Bool
            | doc "Anchors let you link directly to a specific block on a page. This property adds a field to define an id for the block and a button to copy the direct link."
            | optional,
          ariaLabel
            | Bool
            | doc "ARIA-labels let you define an accessible label for elements. This property allows enabling the definition of an aria-label for the block, without exposing a UI field."
            | optional,
          background
            | {
              backgroundImage
                | Bool
                | doc "Allow blocks to define a background image."
                | optional,
              backgroundSize
                | Bool
                | doc "Allow blocks to define values related to the size of a background image, including size, position, and repeat controls"
                | optional,
              ..
            }
            | doc m%"
              This value signals that a block supports some of the CSS style properties related to background. When it does, the block editor will show UI controls for the user to set their values if the theme declares support.
              
              When the block declares support for a specific background property, its attributes definition is extended to include the style attribute.
            "%
            | optional,
          className
            | Bool
            | doc "By default, the class .wp-block-your-block-name is added to the root element of your saved markup. This helps having a consistent mechanism for styling blocks that themes and plugins can rely on. If, for whatever reason, a class is not desired on the markup, this functionality can be disabled."
            | optional,
          color
            | {
              background
                | Bool
                | doc m%"
                  This property adds UI controls which allow the user to apply a solid background color to a block.
                  
                  When color support is declared, this property is enabled by default (along with text), so simply setting color will enable background color.
                  
                  To disable background support while keeping other color supports enabled, set to false.
                  
                  When the block declares support for color.background, its attributes definition is extended to include two new attributes: backgroundColor and style
                "%
                | optional,
              button
                | Bool
                | doc m%"
                  This property adds block controls which allow the user to set button colors in a block. Button color is disabled by default.
                  
                  Button color presets are sourced from the editor-color-palette theme support.
                  
                  When the block declares support for color.button, its attributes definition is extended to include the style attribute
                "%
                | optional,
              enableContrastChecker
                | Bool
                | doc m%"
                  Determines whether the contrast checker widget displays in the block editor UI.
                  
                  The contrast checker appears only if the block declares support for color. It tests the readability of color combinations and warns if there is a potential issue. The property is enabled by default.
                  
                  Set to `false` to explicitly disable.
                "%
                | optional,
              gradients
                | Bool
                | doc m%"
                  This property adds UI controls which allow the user to apply a gradient background to a block.
                  
                  Gradient presets are sourced from editor-gradient-presets theme support.
                  
                  When the block declares support for color.gradient, its attributes definition is extended to include two new attributes: gradient and style
                "%
                | optional,
              heading
                | Bool
                | doc m%"
                  This property adds block controls which allow the user to set heading colors in a block. Heading color is disabled by default.
                  
                  Heading color presets are sourced from the editor-color-palette theme support.
                  
                  When the block declares support for color.heading, its attributes definition is extended to include the style attribute
                "%
                | optional,
              link
                | Bool
                | doc m%"
                  This property adds block controls which allow the user to set link color in a block, link color is disabled by default.
                  
                  Link color presets are sourced from the editor-color-palette theme support.
                  
                  When the block declares support for color.link, its attributes definition is extended to include the style attribute
                "%
                | optional,
              text
                | Bool
                | doc m%"
                  This property adds block controls which allow the user to set text color in a block.
                  
                  When color support is declared, this property is enabled by default (along with background), so simply setting color will enable text color.
                  
                  Text color presets are sourced from the editor-color-palette theme support.
                  
                  When the block declares support for color.text, its attributes definition is extended to include two new attributes: textColor and style
                "%
                | optional,
              ..
            }
            | doc m%"
              This value signals that a block supports some of the properties related to color. When it does, the block editor will show UI controls for the user to set their values.
              
              Note that the background and text keys have a default value of true, so if the color property is present they’ll also be considered enabled
            "%
            | optional,
          customClassName
            | Bool
            | doc "This property adds a field to define a custom className for the block’s wrapper."
            | optional,
          dimensions
            | {
              aspectRatio
                | Bool
                | doc "Allow blocks to define an aspect ratio value."
                | optional,
              minHeight
                | Bool
                | doc "Allow blocks to define a minimum height value."
                | optional,
              ..
            }
            | doc m%"
              This value signals that a block supports some of the CSS style properties related to dimensions. When it does, the block editor will show UI controls for the user to set their values if the theme declares support.
              
              When the block declares support for a specific dimensions property, its attributes definition is extended to include the style attribute.
            "%
            | optional,
          filter
            | {
              duotone
                | Bool
                | doc "Allow blocks to define a duotone filter."
                | optional,
              ..
            }
            | doc m%"
              This value signals that a block supports some of the properties related to filters. When it does, the block editor will show UI controls for the user to set their values if the theme declares support.
              
              When the block declares support for a specific filter property, its attributes definition is extended to include the style attribute.
            "%
            | optional,
          html
            | Bool
            | doc "By default, a block’s markup can be edited individually. To disable this behavior, set html to false."
            | optional,
          inserter
            | Bool
            | doc "By default, all blocks will appear in the inserter, block transforms menu, Style Book, etc. To hide a block from all parts of the user interface so that it can only be inserted programmatically, set inserter to false."
            | optional,
          interactivity
            | std.contract.any_of
              [
                Bool,
                {
                  clientNavigation
                    | Bool
                    | doc m%"
                      Indicates whether a block is compatible with the Interactivity API client-side navigation.
                      
                      Set it to true only if the block is not interactive or if it is interactive using the Interactivity API. Set it to false if the block is interactive but uses vanilla JS, jQuery or another JS framework/library other than the Interactivity API.
                    "%
                    | optional,
                  interactive
                    | Bool
                    | doc "Indicates whether the block is using the Interactivity API directives."
                    | optional,
                  ..
                }
              ]
            | doc "Indicates if the block is using Interactivity API features."
            | optional,
          layout
            | std.contract.any_of
              [
                Bool,
                {
                  allowCustomContentAndWideSize
                    | Bool
                    | doc "For the `constrained` layout type only, determines display of the custom content and wide size controls in the block sidebar."
                    | optional,
                  allowEditing
                    | Bool
                    | doc "Determines display of layout controls in the block sidebar. If set to false, layout controls will be hidden."
                    | optional,
                  allowInheriting
                    | Bool
                    | doc "For the `flow` layout type only, determines display of the `Inner blocks use content width` toggle."
                    | optional,
                  allowJustification
                    | Bool
                    | doc "For the `flex` layout type, determines display of justification controls in the block toolbar and block sidebar. For the `constrained` layout type, determines display of justification control in the block sidebar."
                    | optional,
                  allowOrientation
                    | Bool
                    | doc "For the `flex` layout type only, determines display of the orientation control in the block toolbar."
                    | optional,
                  allowSizingOnChildren
                    | Bool
                    | doc "For the `flex` layout type only, determines display of sizing controls (Fit/Fill/Fixed) on all child blocks of the flex block."
                    | optional,
                  allowSwitching
                    | Bool
                    | doc "Exposes a switcher control that allows toggling between all existing layout types."
                    | optional,
                  allowVerticalAlignment
                    | Bool
                    | doc "For the `flex` layout type only, determines display of vertical alignment controls in the block toolbar."
                    | optional,
                  "default"
                    | {
                      columnCount
                        | Number
                        | doc "The column count value."
                        | optional,
                      contentSize
                        | String
                        | doc "The content size used on all children."
                        | optional,
                      flexWrap
                        | std.enum.TagOrString
                        | [| 'nowrap, 'wrap |]
                        | doc "The flex wrap value."
                        | optional,
                      justifyContent
                        | std.enum.TagOrString
                        | [| 'stretch, 'left, 'space-between, 'center, 'right |]
                        | doc "Content justification value."
                        | optional,
                      minimumColumnWidth
                        | String
                        | doc "The minimum column width value."
                        | optional,
                      orientation
                        | std.enum.TagOrString
                        | [| 'vertical, 'horizontal |]
                        | doc "The orientation of the layout."
                        | optional,
                      type
                        | std.enum.TagOrString
                        | [| 'flex, 'grid, 'constrained |]
                        | doc "The layout type."
                        | optional,
                      verticalAlignment
                        | std.enum.TagOrString
                        | [| 'stretch, 'space-between, 'bottom, 'center, 'top |]
                        | doc "The vertical alignment value."
                        | optional,
                      wideSize
                        | String
                        | doc "The wide size used on alignwide children."
                        | optional,
                      ..
                    }
                    | doc "Allows setting the `type` property to define what layout type is default for the block, and also default values for any properties inherent to that layout type, e.g., for a `flex` layout, a default value can be set for `flexWrap`."
                    | optional,
                  ..
                }
              ]
            | doc "This value only applies to blocks that are containers for inner blocks. If set to `true` the layout type will be `flow`. For other layout types it's necessary to set the `type` explicitly inside the `default` object."
            | optional,
          lock
            | Bool
            | doc "A block may want to disable the ability to toggle the lock state. It can be locked/unlocked by a user from the block 'Options' dropdown by default. To disable this behavior, set lock to false."
            | optional,
          multiple
            | Bool
            | doc "A non-multiple block can be inserted into each post, one time only. For example, the built-in ‘More’ block cannot be inserted again if it already exists in the post being edited. A non-multiple block’s icon is automatically dimmed (unclickable) to prevent multiple instances."
            | optional,
          position
            | {
              sticky
                | Bool
                | doc "Allow blocks to stick to their immediate parent when scrolling the page."
                | optional,
              ..
            }
            | doc m%"
              This value signals that a block supports some of the CSS style properties related to position. When it does, the block editor will show UI controls for the user to set their values if the theme declares support.
              
              When the block declares support for a specific position property, its attributes definition is extended to include the style attribute.
            "%
            | optional,
          renaming
            | Bool
            | doc "By default, a block can be renamed by a user from the block 'Options' dropdown or the 'Advanced' panel. To disable this behavior, set renaming to false."
            | optional,
          reusable
            | Bool
            | doc "A block may want to disable the ability of being converted into a reusable block. By default all blocks can be converted to a reusable block. If supports reusable is set to false, the option to convert the block into a reusable block will not appear."
            | optional,
          shadow
            | std.contract.any_of [ Bool, { _ | Dyn } ]
            | doc "Allow blocks to define a box shadow."
            | optional,
          spacing
            | {
              margin
                | js2n.OneOf
                  [
                    Bool,
                    js2n.array.ArrayOf
                      (std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'bottom, 'left, 'right, 'top |]
                        ]),
                    js2n.array.ArrayOf
                      (std.contract.Sequence
                        [ std.enum.TagOrString, [| 'horizontal, 'vertical |] ])
                  ]
                | optional,
              padding
                | js2n.OneOf
                  [
                    Bool,
                    js2n.array.ArrayOf
                      (std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'bottom, 'left, 'right, 'top |]
                        ]),
                    js2n.array.ArrayOf
                      (std.contract.Sequence
                        [ std.enum.TagOrString, [| 'horizontal, 'vertical |] ])
                  ]
                | optional,
              ..
            }
            | doc m%"
              This value signals that a block supports some of the CSS style properties related to spacing. When it does, the block editor will show UI controls for the user to set their values if the theme declares support.
              
              When the block declares support for a specific spacing property, its attributes definition is extended to include the style attribute.
            "%
            | optional,
          splitting
            | Bool
            | doc "This property indicates whether the block can split when the Enter key is pressed or when blocks are pasted."
            | optional,
          typography
            | {
              fontSize
                | Bool
                | doc m%"
                  This value signals that a block supports the font-size CSS style property. When it does, the block editor will show an UI control for the user to set its value.
                  
                  The values shown in this control are the ones declared by the theme via the editor-font-sizes theme support, or the default ones if none is provided.
                  
                  When the block declares support for fontSize, its attributes definition is extended to include two new attributes: fontSize and style
                "%
                | optional,
              lineHeight
                | Bool
                | doc m%"
                  This value signals that a block supports the line-height CSS style property. When it does, the block editor will show an UI control for the user to set its value if the theme declares support.
                  
                  When the block declares support for lineHeight, its attributes definition is extended to include a new attribute style of object type with no default assigned. It stores the custom value set by the user. The block can apply a default style by specifying its own style attribute with a default
                "%
                | optional,
              textAlign
                | std.contract.any_of
                  [
                    Bool,
                    Array (
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| 'right, 'center, 'left |] ]
                    )
                  ]
                | doc "This property adds block toolbar controls which allow to change block's text alignment."
                | optional,
              ..
            }
            | doc m%"
              This value signals that a block supports some of the CSS style properties related to typography. When it does, the block editor will show UI controls for the user to set their values if the theme declares support.
              
              When the block declares support for a specific typography property, its attributes definition is extended to include the style attribute.
            "%
            | optional,
          ..
        }
        | doc "It contains as set of options to control features used in the editor. See the supports documentation at https://developer.wordpress.org/block-editor/reference-guides/block-api/block-supports/ for more details."
        | optional,
      textdomain
        | String
        | doc m%"
          The gettext text domain of the plugin/block. More information can be found in the Text Domain section of the How to Internationalize your Plugin page.
          
          https://developer.wordpress.org/plugins/internationalization/how-to-internationalize-your-plugin/
        "%
        | optional,
      title
        | String
        | doc "This is the display title for your block, which can be translated with our translation functions. The block inserter will show this name.",
      usesContext
        | Array String
        | doc m%"
          Array of the names of context values to inherit from an ancestor provider.
          
          See the block context documentation at https://developer.wordpress.org/block-editor/reference-guides/block-api/block-context/ for more details.
        "%
        | optional,
      variations
        | std.contract.any_of
          [
            String,
            Array
              {
                attributes
                  | { _ | Dyn }
                  | doc "Values that override block attributes."
                  | optional,
                category
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'embed, 'theme, 'widgets, 'design, 'media, 'text |]
                        ]
                    ]
                  | doc "A category classification, used in search interfaces to arrange block types by category."
                  | optional,
                description
                  | String
                  | doc "A detailed variation description."
                  | optional,
                example
                  | { _ | Dyn }
                  | doc "Example provides structured data for the block preview. You can set to undefined to disable the preview shown for the block type."
                  | optional,
                icon
                  | String
                  | doc "An icon helping to visualize the variation. It can have the same shape as the block type."
                  | optional,
                innerBlocks
                  | Array (Array Dyn)
                  | doc "Initial configuration of nested blocks."
                  | optional,
                isActive
                  | Array String
                  | doc "The list of attributes that should be compared. Each attributes will be matched and the variation will be active if all of them are matching."
                  | optional,
                isDefault
                  | Bool
                  | doc "Indicates whether the current variation is the default one."
                  | optional,
                keywords
                  | Array String
                  | doc "An array of terms (which can be translated) that help users discover the variation while searching."
                  | optional,
                name | String | doc "The unique and machine-readable name.",
                scope
                  | Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [| 'transform, 'block, 'inserter |]
                      ]
                  )
                  | doc "The list of scopes where the variation is applicable."
                  | optional,
                title | String | doc "A human-readable variation title.",
              }
          ]
        | doc "Block Variations is the API that allows a block to have similar versions of it, but all these versions share some common functionality."
        | optional,
      version
        | String
        | doc "The current version number of the block, such as 1.0 or 1.0.3. It’s similar to how plugins are versioned. This field might be used with block assets to control cache invalidation, and when the block author omits it, then the installed version of WordPress is used instead."
        | optional,
      viewScript
        | std.contract.any_of [ String, Array String ]
        | doc "Block type frontend script definition. It will be enqueued only when viewing the content on the front of the site."
        | optional,
      viewScriptModule
        | std.contract.any_of [ String, Array String ]
        | doc "Block type frontend script module definition. It will be enqueued only when viewing the content on the front of the site."
        | optional,
      viewStyle
        | std.contract.any_of [ String, Array String ]
        | doc "Block type frontend style definition. It will be enqueued only when viewing the content on the front of the site."
        | optional,
    }