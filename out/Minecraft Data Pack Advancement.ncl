# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.jsonTextComponent" =
        std.contract.any_of
            [
              Bool,
              Number,
              String,
              {
                bold
                  | Bool
                  | doc "Whether to render the content in bold."
                  | optional,
                clickEvent
                  | {
                    action
                      | std.enum.TagOrString
                      | [|
                        'copy_to_clipboard,
                        'change_page,
                        'suggest_command,
                        'run_command,
                        'open_file,
                        'open_url
                      |]
                      | doc "The action to perform when clicked."
                      | optional,
                    value
                      | String
                      | doc "The URL, file path, chat, command or book page used by the specified action."
                      | optional,
                    ..
                  }
                  | doc "Allows for events to occur when the player clicks on text. Only work in chat messages and written books, unless specified otherwise."
                  | optional,
                color
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [|
                            'reset,
                            'white,
                            'yellow,
                            'light_purple,
                            'red,
                            'aqua,
                            'green,
                            'blue,
                            'dark_gray,
                            'gray,
                            'gold,
                            'dark_purple,
                            'dark_red,
                            'dark_aqua,
                            'dark_green,
                            'dark_blue,
                            'black
                          |]
                        ],
                      js2n.string.Matches "#[A-F\\d]{6}"
                    ]
                  | doc "The color to render the content in."
                  | optional,
                extra
                  | Array (
                    std.contract.Sequence
                      [
                        js2n.Always,
                        std.contract.any_of
                          [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
                      ]
                  )
                  | doc "A list of additional raw JSON text components to be displayed after this one."
                  | optional,
                font
                  | String
                  | doc "The resource location of the font for this component in the resource pack within assets/<namespace>/font."
                  | optional,
                hoverEvent
                  | {
                    action
                      | std.enum.TagOrString
                      | [| 'show_entity, 'show_item, 'show_text |]
                      | doc "The type of tooltip to show."
                      | optional,
                    contents
                      | { _ | Dyn }
                      | doc "The formatting of this tag varies depending on the action."
                      | optional,
                    value
                      | String
                      | doc "The formatting and type of this tag varies depending on the action."
                      | optional,
                    ..
                  }
                  | doc "Allows for a tooltip to be displayed when the player hovers their mouse over text."
                  | optional,
                insertion
                  | String
                  | doc "When the text is shift-clicked by a player, this string is inserted in their chat input. It does not overwrite any existing text the player was writing. This only works in chat messages."
                  | optional,
                italic
                  | Bool
                  | doc "Whether to render the content in italics. Note that text that is italicized by default, such as custom item names, can be unitalicized by setting this to false."
                  | optional,
                obfuscated
                  | Bool
                  | doc "Whether to render the content obfuscated."
                  | optional,
                strikethrough
                  | Bool
                  | doc "Whether to strikethrough the content."
                  | optional,
                text
                  | std.contract.any_of [ Bool, Number, String ]
                  | doc "A string containing plain text to display directly. Can also be a number or boolean that is displayed directly."
                  | optional,
                translate
                  | String
                  | doc "A translation identifier, corresponding to the identifiers found in loaded language files. Displayed as the corresponding text in the player's selected language. If no corresponding translation can be found, the identifier itself is used as the translated text."
                  | optional,
                underlined
                  | Bool
                  | doc "Whether to underline the content."
                  | optional,
                with
                  | Array (
                    std.contract.Sequence
                      [
                        js2n.Always,
                        std.contract.any_of
                          [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
                      ]
                  )
                  | doc "A list of raw JSON text components to be inserted into slots in the translation text."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "properties.parent" = js2n.string.MinLength 1,
    }
    in
  {
      criteria
        | {
          _ | {
            conditions
              | {
                player
                  | std.contract.any_of [ { _ | Dyn }, Array Dyn ]
                  | doc m%"
                    Check properties of the player for the current advancement
                    https://minecraft.wiki/w/Advancement/JSON_format#Criteria
                  "%
                  | optional,
                ..
              }
              | doc m%"
                Conditions need to be met when the trigger gets activated for the current advancement
                https://minecraft.wiki/w/Advancement/JSON_format#Criteria
              "%
              | optional,
            trigger
              | String
              | doc m%"
                A trigger for the current advancement
                https://minecraft.wiki/w/Advancement/JSON_format#Criteria
              "%
              | optional,
            ..
          }
        }
        | doc m%"
          Required criteria have to be met for the current advancement
          https://minecraft.wiki/w/Advancement/JSON_format#Legend
        "%
        | optional,
      display
        | {
          annouce_to_chat
            | Bool
            | doc m%"
              Whether or not to announce in the chat when the current advancement has been completed
              https://minecraft.wiki/w/Advancement/JSON_format#Legend
            "%
            | optional,
          background
            | refs."properties.parent"
            | doc m%"
              A background directory for the current advancement
              https://minecraft.wiki/w/Advancement/JSON_format#Legend
            "%
            | optional,
          description
            | refs."definitions.jsonTextComponent"
            | doc m%"
              A description for the current advancement
              https://minecraft.wiki/w/Advancement/JSON_format#Legend
            "%
            | optional,
          frame
            | std.enum.TagOrString
            | [| 'task, 'goal, 'challenge |]
            | doc m%"
              A frame type for the icon for the current advancement
              https://minecraft.wiki/w/Advancement/JSON_format#Legend
            "%
            | optional,
          hidden
            | Bool
            | doc m%"
              Whether or not to hide this advancement and all its children from the advancement screen until the current advancement have been completed
              https://minecraft.wiki/w/Advancement/JSON_format#Legend
            "%
            | optional,
          icon
            | {
              item
                | js2n.string.MinLength 1
                | doc m%"
                  An item identifier for the current advancement
                  https://minecraft.wiki/w/Advancement/JSON_format#Legend
                "%
                | optional,
              nbt
                | js2n.string.MinLength 1
                | doc m%"
                  A named binary tag of an item for the current advancement
                  https://minecraft.wiki/w/Advancement/JSON_format#Legend
                "%
                | optional,
              ..
            }
            | doc m%"
              Icon options for the current advancement
              https://minecraft.wiki/w/Advancement/JSON_format#Legend
            "%
            | optional,
          show_toast
            | Bool
            | doc m%"
              Whether or not to show the toast pop up after completing the current advancement
              https://minecraft.wiki/w/Advancement/JSON_format#Legend
            "%
            | optional,
          title
            | refs."definitions.jsonTextComponent"
            | doc m%"
              A title for the current advancement
              https://minecraft.wiki/w/Advancement/JSON_format#Legend
            "%
            | optional,
          ..
        }
        | doc m%"
          Display options for the current advancement
          https://minecraft.wiki/w/Advancement/JSON_format#Legend
        "%
        | optional,
      parent
        | js2n.string.MinLength 1
        | doc m%"
          A parent directory for the current advancement
          https://minecraft.wiki/w/Advancement/JSON_format#Legend
        "%
        | optional,
      requirements
        | js2n.array.UniqueItems
        | Array (
          std.contract.Sequence
            [ js2n.array.UniqueItems, Array (js2n.string.MinLength 1) ]
        )
        | doc m%"
          Requirements for the current advancement
          https://minecraft.wiki/w/Advancement/JSON_format#Legend
        "%
        | optional,
      rewards
        | {
          experience
            | std.number.Integer
            | js2n.number.Minimum 0
            | doc m%"
              An experience amount for the current advancement
              https://minecraft.wiki/w/Advancement/JSON_format#Legend
            "%
            | optional,
          function
            | js2n.string.MinLength 1
            | doc m%"
              A function to run for the current advancement
              https://minecraft.wiki/w/Advancement/JSON_format#Legend
            "%
            | optional,
          loot
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc m%"
              Loot tables to give to the player for the current advancement
              https://minecraft.wiki/w/Advancement/JSON_format#Legend
            "%
            | optional,
          recipes
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc m%"
              Recipes to unlock for the current advancement
              https://minecraft.wiki/w/Advancement/JSON_format#Legend
            "%
            | optional,
        }
        | doc m%"
          Rewards for the current advancement
          https://minecraft.wiki/w/Advancement/JSON_format#Legend
        "%
        | optional,
      ..
    }