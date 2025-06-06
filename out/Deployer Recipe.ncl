# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      after | { _ | Dyn } | optional,
      before | { _ | Dyn } | optional,
      config | { _ | Dyn } | optional,
      hosts
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { "^" = js2n.Nullable { local | Bool | optional, .. }, },
            properties = {},
            required = {},
          }
        | optional,
      "import" | std.contract.any_of [ String, Array String ] | optional,
      tasks
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "^" =
                    js2n.OneOf
                        [
                          js2n.array.ArrayOf
                            (js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      cd = String,
                                      desc = String,
                                      download =
                                        js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    dest = String,
                                                    src = String,
                                                  },
                                              required =
                                                { dest = true, src = true, },
                                            },
                                      hidden = Bool,
                                      limit = Number,
                                      once = Bool,
                                      run = String,
                                      run_locally = String,
                                      select = String,
                                      upload =
                                        js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    dest = String,
                                                    src =
                                                      std.contract.any_of
                                                          [
                                                            String,
                                                            js2n.array.ArrayOf
                                                              String
                                                          ],
                                                  },
                                              required =
                                                { dest = true, src = true, },
                                            },
                                    },
                                required = {},
                              }),
                          js2n.array.ArrayOf String
                        ],
                },
            properties = {},
            required = {},
          }
        | optional,
      version | String | optional,
    }