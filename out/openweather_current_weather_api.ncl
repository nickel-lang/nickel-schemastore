# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      base | String,
      clouds | { all | js2n.number.Minimum 0, },
      cod | std.number.Integer,
      coord | { lat | Number, lon | Number, },
      dt | Number,
      id | std.number.Integer,
      main
        | {
          feels_like | Number | optional,
          grnd_level | Number | optional,
          humidity | Number | optional,
          pressure | Number | optional,
          sea_level | Number | optional,
          temp | Number | optional,
          temp_max | Number | optional,
          temp_min | Number | optional,
        },
      name | String,
      sys
        | {
          country | String,
          id | std.number.Integer,
          message | Number,
          sunrise | std.number.Integer,
          sunset | std.number.Integer,
          type | std.number.Integer,
        },
      timezone | std.number.Integer,
      visibility | std.number.Integer,
      weather
        | Array
          {
            description | String,
            icon | String,
            id | std.number.Integer,
            main | String,
          },
      wind | { deg | Number, speed | Number, },
    }