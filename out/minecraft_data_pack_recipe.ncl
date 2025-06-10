# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.commonRecipeCategory" =
        {
            category
              | std.enum.TagOrString
              | [| 'misc, 'equipment, 'redstone, 'building |]
              | optional,
            ..
          },
      "definitions.cookingRecipeCategory" =
        {
            category
              | std.enum.TagOrString
              | [| '"misc ", 'blocks, 'food |]
              | optional,
            ..
          },
      "definitions.ingredient" =
        std.contract.Sequence [ refs."definitions.item", { _ | Dyn } ],
      "definitions.item" =
        {
            item | String | doc "An item ID." | optional,
            tag | String | doc "An item tag." | optional,
            ..
          },
      "definitions.result" =
        {
            count
              | std.number.Integer
              | doc "The amount of the item."
              | optional,
            item | String | doc "An item ID." | optional,
            ..
          },
      "definitions.tagsCommonToAllCookingRecipes" =
        {
            cookingtime
              | std.number.Integer
              | doc "The cook time of the recipe in ticks."
              | optional,
            experience
              | Number
              | doc "The output experience of the recipe."
              | optional,
            ingredient
              | refs."definitions.ingredient"
              | { _ | Dyn }
              | doc "The ingredients."
              | optional,
            result
              | String
              | doc "An item ID. The output item of the recipe."
              | optional,
            ..
          },
      "definitions.tagsCommonToAllRecipes" =
        {
            group
              | String
              | doc "A string identifier. Used to group multiple recipes together in the recipe book."
              | optional,
            show_notification
              | Bool
              | doc "If a notification is shown when the recipe is unlocked."
              | optional,
            type
              | String
              | doc "A namespaced ID indicating the type of serializer of the recipe."
              | optional,
            ..
          },
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
                  properties = { type = js2n.Const "minecraft:blasting", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.any_of
            [
              refs."definitions.tagsCommonToAllRecipes",
              refs."definitions.tagsCommonToAllCookingRecipes",
              refs."definitions.cookingRecipeCategory"
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
                    { type = js2n.Const "minecraft:campfire_cooking", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.any_of
            [
              refs."definitions.tagsCommonToAllRecipes",
              refs."definitions.tagsCommonToAllCookingRecipes",
              refs."definitions.cookingRecipeCategory"
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
                    { type = js2n.Const "minecraft:crafting_shaped", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.Sequence
            [
              std.contract.any_of
                [
                  refs."definitions.tagsCommonToAllRecipes",
                  refs."definitions.commonRecipeCategory"
                ],
              {
                key
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        _ | std.contract.any_of
                          [
                            {
                              item | String | doc "An item ID." | optional,
                              tag | String | doc "An item tag." | optional,
                              ..
                            },
                            Array (
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  {
                                    item
                                      | String
                                      | doc "An item ID."
                                      | optional,
                                    tag
                                      | String
                                      | doc "An item tag."
                                      | optional,
                                    ..
                                  },
                                  Array Dyn
                                ]
                            )
                          ]
                      },
                      Array Dyn
                    ]
                  | doc "All keys used for this shaped crafting recipe."
                  | optional,
                pattern
                  | js2n.array.MaxItems 3
                  | Array (js2n.string.MaxLength 3)
                  | doc "A list of single-character keys used to describe a pattern for shaped crafting."
                  | optional,
                result | refs."definitions.result" | optional,
                ..
              }
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
                    { type = js2n.Const "minecraft:crafting_shapeless", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.Sequence
            [
              std.contract.any_of
                [
                  refs."definitions.tagsCommonToAllRecipes",
                  refs."definitions.commonRecipeCategory"
                ],
              {
                ingredients
                  | Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.ingredient", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            js2n.array.MaxItems 9,
                            js2n.array.MinItems 1,
                            Array (
                              std.contract.Sequence
                                [ refs."definitions.ingredient", { _ | Dyn } ]
                            )
                          ]
                      ]
                  )
                  | doc "A list of entries for this shapeless crafting recipe."
                  | optional,
                result | refs."definitions.result" | optional,
                ..
              }
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
                  properties = { type = js2n.Const "minecraft:smelting", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.any_of
            [
              refs."definitions.tagsCommonToAllRecipes",
              refs."definitions.tagsCommonToAllCookingRecipes",
              refs."definitions.cookingRecipeCategory"
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
                  properties = { type = js2n.Const "minecraft:smithing", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.Sequence
            [
              refs."definitions.tagsCommonToAllRecipes",
              {
                addition | refs."definitions.item" | optional,
                base
                  | refs."definitions.item"
                  | doc "Ingredient specifying an item to be upgraded."
                  | optional,
                result | { _ | Dyn } | optional,
                ..
              }
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
                  properties = { type = js2n.Const "minecraft:smoking", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.any_of
            [
              refs."definitions.tagsCommonToAllRecipes",
              refs."definitions.tagsCommonToAllCookingRecipes",
              refs."definitions.cookingRecipeCategory"
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
                  properties = { type = js2n.Const "minecraft:stonecutting", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.Sequence
            [
              refs."definitions.item",
              refs."definitions.tagsCommonToAllRecipes",
              {
                count
                  | std.number.Integer
                  | doc "The amount of the output item."
                  | optional,
                result
                  | String
                  | doc "An item ID. The output item of the recipe."
                  | optional,
                ..
              }
            ]) js2n.Always,
        {
          type
            | std.enum.TagOrString
            | [|
              '"minecraft:stonecutting",
              '"minecraft:smoking",
              '"minecraft:smithing",
              '"minecraft:smelting",
              '"minecraft:crafting_shapeless",
              '"minecraft:crafting_shaped",
              '"minecraft:campfire_cooking",
              '"minecraft:blasting"
            |]
            | doc "The type of recipe."
            | optional,
          ..
        }
      ]