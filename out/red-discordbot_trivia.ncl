# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  js2n.record.Record
      {
        additional = 'Some (Array String),
        patterns = {},
        properties =
          {
              "$schema" = String,
              AUTHOR = String,
              CONFIG =
                {
                    bot_plays
                      | Bool
                      | doc "Whether or not the bot gains points during the session."
                      | optional,
                    delay
                      | js2n.number.Minimum 4
                      | doc "The maximum number of seconds permitted to answer a question, must be a positive number greater than or equal to 4.0."
                      | optional,
                    max_score
                      | std.number.Integer
                      | js2n.number.ExclusiveMinimum 0
                      | doc "Number of points required in order to win the trivia, must be a positive integer."
                      | optional,
                    payout_multiplier
                      | js2n.number.Minimum 0
                      | doc "The payout multiplier, must be a positive number or zero."
                      | optional,
                    reveal_answer
                      | Bool
                      | doc "Whether or not to reveal the answer when the question times out."
                      | optional,
                    timeout
                      | js2n.number.ExclusiveMinimum 0
                      | doc "Number of seconds that need to pass until trivia stops due to no response, must be a positive number greater than 0.0."
                      | optional,
                    use_spoilers
                      | Bool
                      | doc "Whether to hide the answers in spoilers when revealing the question's answers."
                      | optional,
                  },
              DESCRIPTION = String,
            },
        required = {},
      }