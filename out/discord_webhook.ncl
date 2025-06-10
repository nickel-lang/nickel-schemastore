# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.boolean" = Bool,
      "definitions.id" =
        std.contract.Sequence
            [ js2n.string.Matches "^\\d+$", refs."definitions.string" ],
      "definitions.string" = String,
      "definitions.url" =
        std.contract.Sequence
            [ js2n.string.Matches "^https?://", refs."definitions.string" ],
    }
    in
  std.contract.Sequence
      [
        std.contract.any_of
          [
            js2n.record.Required [ "content" ],
            js2n.record.Required [ "embeds" ]
          ],
        {
          "$schema"
            | refs."definitions.string"
            | doc "Allow $schema because additionalProperties is false"
            | optional,
          allowed_mentions
            | js2n.record.MinProperties 1
            | {
              parse
                | Array (
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'everyone, 'users, 'roles |] ]
                )
                | doc "An array of allowed mention types to parse from the content."
                | optional,
              roles
                | js2n.Nullable
                  (std.contract.Sequence
                    [
                      js2n.array.MaxItems 100,
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence [ refs."definitions.id", String ]
                      )
                    ])
                | doc m%"
                  Array of role_ids to mention
                  Max is 100 of role_ids
                  Mutually exclusive with parse roles
                "%
                | optional,
              users
                | js2n.Nullable
                  (std.contract.Sequence
                    [
                      js2n.array.MaxItems 100,
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence [ refs."definitions.id", String ]
                      )
                    ])
                | doc m%"
                  Array of user_ids to mention
                  Max is 100 of user_ids
                  Mutually exclusive with parse users
                "%
                | optional,
            }
            | doc "Allowed mentions for the message"
            | optional,
          avatar_url
            | refs."definitions.url"
            | String
            | doc "Override the default avatar of the webhook"
            | optional,
          content
            | js2n.string.MaxLength 2000
            | refs."definitions.string"
            | doc m%"
              The message contents
              Max is 2000 characters
            "%
            | optional,
          embeds
            | Array
              {
                author
                  | {
                    icon_url
                      | refs."definitions.url"
                      | String
                      | doc m%"
                        URL of author icon
                        Only support http / https
                      "%
                      | optional,
                    name
                      | js2n.string.MaxLength 256
                      | refs."definitions.string"
                      | doc m%"
                        Name of author
                        Max is 256 characters
                      "%,
                    url
                      | refs."definitions.url"
                      | String
                      | doc m%"
                        URL of author
                        Only support http / https
                      "%
                      | optional,
                  }
                  | doc "Author information"
                  | optional,
                color
                  | std.number.Integer
                  | js2n.number.Maximum 16777215
                  | js2n.number.Minimum 0
                  | doc m%"
                    Color code of the embed
                    Only support color in decimal
                    To match embed background color, use 3092790
                    Default is 2105893
                  "%
                  | optional,
                description
                  | js2n.string.MaxLength 4096
                  | refs."definitions.string"
                  | doc m%"
                    Description of embed
                    Max is 4096 characters
                  "%
                  | optional,
                fields
                  | Array
                    {
                      inline
                        | refs."definitions.boolean"
                        | doc m%"
                          Whether or not this field should display inline
                          Default is false
                        "%
                        | optional,
                      name
                        | js2n.string.MaxLength 256
                        | js2n.string.MinLength 1
                        | refs."definitions.string"
                        | doc m%"
                          Name of the field
                          REQUIRED Max is 256
                        "%,
                      value
                        | js2n.string.MaxLength 1024
                        | js2n.string.MinLength 1
                        | refs."definitions.string"
                        | doc m%"
                          Value of the field
                          REQUIRED Max is 1024
                        "%,
                    }
                  | doc "Fields information"
                  | optional,
                footer
                  | {
                    icon_url
                      | refs."definitions.url"
                      | String
                      | doc m%"
                        URL of footer icon
                        Only support http / https
                      "%
                      | optional,
                    text
                      | js2n.string.MaxLength 2048
                      | doc m%"
                        Footer text
                        Max is 2048 characters
                      "%,
                  }
                  | doc "Footer information"
                  | optional,
                image
                  | {
                    url
                      | refs."definitions.url"
                      | String
                      | doc m%"
                        Source url of image
                        Only support http / https
                      "%,
                  }
                  | doc "Image information"
                  | optional,
                thumbnail
                  | {
                    url
                      | refs."definitions.url"
                      | String
                      | doc m%"
                        Source url of thumbnail
                        Only support http / https
                      "%,
                  }
                  | doc "Thumbnail information"
                  | optional,
                timestamp
                  | refs."definitions.string"
                  | doc m%"
                    Timestamp of embed content
                    ISO8601 Timestamp
                  "%
                  | optional,
                title
                  | js2n.string.MaxLength 256
                  | refs."definitions.string"
                  | doc m%"
                    Title of embed
                    Max is 256 characters
                  "%
                  | optional,
                url
                  | refs."definitions.url"
                  | String
                  | doc m%"
                    URL of embed
                    Only support http / https
                  "%
                  | optional,
              }
            | doc m%"
              Embedded rich content
              Max is 6000 characters
            "%
            | optional,
          tts
            | refs."definitions.boolean"
            | doc m%"
              Whether or not this message will play in TTS
              Default is false
            "%
            | optional,
          username
            | js2n.string.MaxLength 80
            | js2n.string.Matches "^((?!(c|C)(l|L)(y|Y)(d|D)(e|E)).)*$"
            | refs."definitions.string"
            | doc m%"
              Override the default username of the webhook
              Name cannot contain "clyde"
            "%
            | optional,
        }
      ]