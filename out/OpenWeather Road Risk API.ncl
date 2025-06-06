# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  Array
      {
        alerts
          | Array
            {
              event | String,
              event_level | std.number.Integer,
              sender_name | String,
            },
        coord | Array Number,
        dt | std.number.Integer,
        weather
          | {
            dew_point | Number | optional,
            precipitation_intensity | Number | optional,
            temp | Number | optional,
            wind_deg | Number | optional,
            wind_speed | Number | optional,
          },
      }