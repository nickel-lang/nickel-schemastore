# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.alignment" =
        {
            alignment
              | std.enum.TagOrString
              | [|
                'bottom_center,
                'bottom_left,
                'bottom_right,
                'button,
                'center,
                'left_center,
                'right_center,
                'top_center,
                'top_left,
                'top_right
              |]
              | doc "The alignment of the element relative to the screen."
              | optional,
            ..
          },
      "definitions.background" =
        std.contract.any_of
            [
              {
                image
                  | String
                  | doc "An image resource identifier representing an an image to be displayed.",
                mode
                  | std.contract.any_of
                    [
                      js2n.Const "fill",
                      js2n.Const "stretch",
                      js2n.Const "center",
                      js2n.Const "tile"
                    ]
                  | doc "The image sizing/positioning mode."
                  | optional,
                slideshow
                  | refs."definitions.slideshow"
                  | { _ | Dyn }
                  | optional,
                ..
              },
              std.contract.Equal "options"
            ],
      "definitions.button" =
        std.contract.Sequence
            [
              refs."definitions.rect",
              refs."definitions.alignment",
              {
                action
                  | refs."definitions.buttonAction"
                  | { _ | Dyn }
                  | optional,
                hoverSound
                  | String
                  | doc "An audio resource identifier representing the sound to be played when the mouse hovers over the button."
                  | optional,
                hoverText
                  | String
                  | doc "A text resource identifier representing the text to be displayed on the button when the mouse hovers over it."
                  | optional,
                hoverTextColor
                  | std.number.Integer
                  | doc "The color of the text on the button when the mouse hovers over it. Has to be a hexadecimal color value represented as a decimal number."
                  | optional,
                imageHeight
                  | std.number.Integer
                  | doc "The height of the button's texture/background image in pixels. By default it is the same height as the button."
                  | optional,
                imageWidth
                  | std.number.Integer
                  | doc "The width of the button's texture/background image in pixels. By default it is the same width as the button."
                  | optional,
                normalTextColor
                  | std.number.Integer
                  | doc "The color of the text on the button. Has to be a hexadecimal color value represented as a decimal number."
                  | optional,
                pressSound
                  | String
                  | doc "An audio resource identifier representing the sound to be played when the button is pressed."
                  | optional,
                text
                  | String
                  | doc "A text resource identifier representing the text to be displayed on the button. Can be an empty string - this is useful when you want to create an 'icon button' through the 'texture' property.",
                textOffsetX
                  | std.number.Integer
                  | doc "The offset on the X-axis of the text inside the button."
                  | optional,
                textOffsetY
                  | std.number.Integer
                  | doc "The offset on the Y-axis of the text inside the button."
                  | optional,
                texture
                  | String
                  | doc "An image resource identifier representing the image to be displayed on the button i.e. the button's texture/background image. The image has to contain a normal and a hovered version of the button, one on top of the other."
                  | optional,
                tooltip
                  | String
                  | doc "A text resource identifier representing the text to be displayed in a tooltip when the mouse hovers over the button."
                  | optional,
                wrappedButton
                  | String
                  | doc m%"
                    The ID of a button added by another mod.
                    
                    Custom Main Menu removes all buttons added by other mods because they don't fit the schema used by CMM.
                    
                    Using Wrapped Buttons you can create buttons that mimic the functionality of those removed buttons, with the added capability of being able to define and customize them like any other CMM button.
                    
                    For them to work you need to find out the button ID of the button you want to re-add - look into your latest FML client log and search for 'wrapped button'. All removed mod buttons are logged with their respective button ID.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.buttonAction" =
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
                        properties = { type = js2n.Const "openLink", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    { link | String | doc "The URL to be opened.", .. },
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
                        properties = { type = js2n.Const "openGui", },
                        required = { type = true, },
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
                      gui
                        | std.enum.TagOrString
                        | [|
                          '"options.multiplayer",
                          '"options.controls",
                          '"options.video",
                          '"options.sounds",
                          '"options.snooper",
                          '"options.resourcepacks",
                          'languages,
                          'options,
                          'multiplayer,
                          '"singleplayer.createworld",
                          'singleplayer,
                          'mods
                        |]
                        | doc "The name of the GUI to be opened. Can also be a custom GUI ID.",
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
                        properties = { type = js2n.Const "connectToServer", },
                        required = { type = true, },
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
                      ip
                        | String
                        | doc "The IP address of the server to connect to.",
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
                        properties = { type = js2n.Const "loadWorld", },
                        required = { type = true, },
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
                      dirName
                        | String
                        | doc "The name of the directory the save is located in (in the saves folder).",
                      saveName
                        | String
                        | doc "Not really necessary, but might appear as the name of the save in certain dialogs while loading the world."
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
                        properties = { type = js2n.Const "openFolder", },
                        required = { type = true, },
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
                      folderName
                        | String
                        | doc "The name of the folder to be opened (with the .minecraft folder as the root).",
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              {
                type
                  | std.contract.any_of
                    [
                      js2n.Const "openLink",
                      js2n.Const "openGui",
                      js2n.Const "connectToServer",
                      js2n.Const "loadWorld",
                      js2n.Const "openFolder",
                      js2n.Const "quit",
                      js2n.Const "refresh"
                    ]
                  | optional,
                ..
              }
            ],
      "definitions.image" =
        std.contract.Sequence
            [
              refs."definitions.rect",
              refs."definitions.alignment",
              {
                hoverImage
                  | String
                  | doc "An image resource identifier representing the image to be displayed when the mouse hovers over the image."
                  | optional,
                image
                  | String
                  | doc "An image resource identifier representing the image to be displayed.",
                slideshow
                  | refs."definitions.slideshow"
                  | { _ | Dyn }
                  | optional,
                ..
              }
            ],
      "definitions.label" =
        std.contract.Sequence
            [
              refs."definitions.size",
              refs."definitions.alignment",
              {
                anchor
                  | std.enum.TagOrString
                  | [| 'end, 'middle, 'start |]
                  | doc "The anchor of the text. Makes the text left, center, or right aligned."
                  | optional,
                color
                  | std.number.Integer
                  | doc "The color of the text. Has to be a hexadecimal color value represented as a decimal number."
                  | optional,
                fontSize
                  | std.number.Integer
                  | doc "The multiplier of the font size. 2 would be twice as big, 0.5 would be half as big, etc. The default font size is 1."
                  | optional,
                hoverColor
                  | std.number.Integer
                  | doc "The color of the text when the mouse hovers over it. Has to be a hexadecimal color value represented as a decimal number."
                  | optional,
                hoverSound
                  | String
                  | doc "An audio resource identifier representing a sound to play when the mouse hovers over the label."
                  | optional,
                hoverText
                  | String
                  | doc "A text resource identifier representing the text to be displayed when the mouse hovers over it."
                  | optional,
                pressSound
                  | String
                  | doc "An audio resource identifier representing a sound to play when the label is pressed."
                  | optional,
                text
                  | String
                  | doc "A text resource identifier representing the text to be displayed.",
                ..
              }
            ],
      "definitions.panorama" =
        {
            animate
              | Bool
              | doc "Whether the panorama should spin like normal."
              | optional,
            animationSpeed
              | std.number.Integer
              | doc "The integer multiple of the speed of the panorama animation. 1 is the default speed, 2 is double the speed, -1 makes it play in reverse, etc."
              | optional,
            blur
              | Bool
              | doc "Whether the panorama should be blurred."
              | optional,
            gradient
              | Bool
              | doc "Whether the panorama should have a top-to-bottom white-to-back gradient overlay."
              | optional,
            images
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.array.MaxItems 6,
                      js2n.array.MinItems 6,
                      Array String
                    ],
                  String
                ]
              | doc "Either a list of image resource identifiers representing images to be displayed in the panorama, or a single image resource identifier in the form of a string."
              | optional,
            position
              | std.number.Integer
              | doc m%"
                At which position the panorama should start from (or stay at, if 'animate' is false).
                
                TODO: What is the range and step of this property?
              "%
              | optional,
            synced
              | Bool
              | doc m%"
                Synced is a property for slideshows, panoramas and splash texts on the current menu.
                
                If it is set to true, instead of creating a new slideshow/panorama/splash text instance each time, the current menu will use the same one as the main menu. Therefore the panorama and/or the slideshow will continue to run where they left off when switching GUIs, and the splash text will stay the same.
                
                Notice that this property should only be set on the GUIs you want synced to the main menu, not on the main menu itself. Also if the main menu doesn't have a slideshow/panorama/splash text but you set it to sync in another menu, your game will probably crash.
                
                Notice that synced only works on a background slideshow, it will have no effect on an image that is a slideshow.
              "%
              | optional,
            ..
          },
      "definitions.position" =
        {
            posX
              | std.number.Integer
              | doc m%"
                The offset on the X-axis of the element on the screen from the alignment position.
                For example: if the alignment is set to 'top_center' and the posX is set to 0, the element's left edge will be aligned with the center of the screen.
                If posY is also set to 0, the element's top edge will be at the top of the screen.
              "%
              | optional,
            posY
              | std.number.Integer
              | doc m%"
                The offset on the Y-axis of the element on the screen from the alignment position.
                For example: if the alignment is set to 'top_center' and the posX is set to 0, the element's left edge will be aligned with the center of the screen.
                If posY is also set to 0, the element's top edge will be at the top of the screen.
              "%
              | optional,
            ..
          },
      "definitions.rect" =
        std.contract.Sequence
            [
              refs."definitions.size",
              refs."definitions.position",
              js2n.record.Required [ "posX", "posY" ]
            ],
      "definitions.size" =
        {
            height
              | std.number.Integer
              | doc "The height of the element in pixels."
              | optional,
            width
              | std.number.Integer
              | doc "The width of the element in pixels."
              | optional,
            ..
          },
      "definitions.slideshow" =
        {
            displayDuration
              | std.number.Integer
              | doc "The duration in Minecraft ticks that each image in the slideshow is displayed for before transitioning to the next.",
            fadeDuration
              | std.number.Integer
              | doc "The duration in Minecraft ticks that the transition between images in the slideshow lasts for.",
            images
              | Array String
              | doc "A list of An image resource identifiers representing the images to be displayed in the slideshow.",
            shuffle
              | Bool
              | doc "Whether the order of the images should be shuffled each time Minecraft runs."
              | optional,
            synced
              | Bool
              | doc m%"
                Synced is a property for slideshows, panoramas and splash texts on the current menu.
                
                If it is set to true, instead of creating a new slideshow/panorama/splash text instance each time, the current menu will use the same one as the main menu. Therefore the panorama and/or the slideshow will continue to run where they left off when switching GUIs, and the splash text will stay the same.
                
                Notice that this property should only be set on the GUIs you want synced to the main menu, not on the main menu itself. Also if the main menu doesn't have a slideshow/panorama/splash text but you set it to sync in another menu, your game will probably crash.
                
                Notice that synced only works on a background slideshow, it will have no effect on an image that is a slideshow.
              "%
              | optional,
            ..
          },
      "definitions.splashText" =
        std.contract.Sequence
            [
              refs."definitions.position",
              refs."definitions.alignment",
              {
                color
                  | std.number.Integer
                  | doc "The color of the text. Has to be a hexadecimal color value represented as a decimal number."
                  | optional,
                synced
                  | Bool
                  | doc m%"
                    Synced is a property for slideshows, panoramas and splash texts on the current menu.
                    
                    If it is set to true, instead of creating a new slideshow/panorama/splash text instance each time, the current menu will use the same one as the main menu. Therefore the panorama and/or the slideshow will continue to run where they left off when switching GUIs, and the splash text will stay the same.
                    
                    Notice that this property should only be set on the GUIs you want synced to the main menu, not on the main menu itself. Also if the main menu doesn't have a slideshow/panorama/splash text but you set it to sync in another menu, your game will probably crash.
                    
                    Notice that synced only works on a background slideshow, it will have no effect on an image that is a slideshow.
                  "%
                  | optional,
                texts
                  | String
                  | doc "A text resource identifier representing the text to be displayed. Separate splash texts are separated by newlines."
                  | optional,
                ..
              },
              js2n.record.Required [ "posX", "posY" ]
            ],
    }
    in
  {
      buttons
        | {
          _ | std.contract.Sequence [ refs."definitions.button", { _ | Dyn } ]
        }
        | js2n.record.FieldsMatch "^.*$"
        | doc "A dictionary of button definitions which specify buttons to be displayed on the current menu."
        | optional,
      images
        | {
          _ | std.contract.Sequence [ refs."definitions.image", { _ | Dyn } ]
        }
        | js2n.record.FieldsMatch "^.*$"
        | doc "A dictionary of image definitions which specify images to be displayed on the current menu."
        | optional,
      labels
        | {
          _ | std.contract.Sequence [ refs."definitions.label", { _ | Dyn } ]
        }
        | js2n.record.FieldsMatch "^.*$"
        | doc "A dictionary of label definitions which specify text labels to be displayed on the current menu."
        | optional,
      other
        | std.contract.not
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Required [ "background", "panorama" ],
              Array Dyn
            ])
        | {
          splash-text | refs."definitions.splashText" | { _ | Dyn } | optional,
          ..
        }
        | { background | refs."definitions.background" | optional, .. }
        | { panorama | refs."definitions.panorama" | optional, .. }
        | doc "A dictionary of special properties such as splash texts, backgrounds, and panoramas."
        | optional,
      ..
    }