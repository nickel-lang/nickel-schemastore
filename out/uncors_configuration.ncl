# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Duration" =
        js2n.string.Matches
            "^(\\d+h)?\\s*(\\d+m)?\\s*(\\d+s)?\\s*(\\d+ms)?\\s*(\\d+(us|µs))?\\s*(\\d+(ns))?$",
      "definitions.FakeDataMockResponse" =
        {
            code
              | refs."definitions.StatusCode"
              | Number
              | doc "HTTP status code which will be sent in the mock response",
            delay
              | refs."definitions.Duration"
              | String
              | doc "Delay before sending the mock response"
              | optional,
            fake | refs."definitions.FakeDataNode" | doc "Fake data definition",
            headers
              | refs."definitions.Headers"
              | { _ | Dyn }
              | doc "HTTP headers which will be sent in the mock response"
              | optional,
            seed
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "If specified, the same data will be generated each time. If not specified, a random seed will be used."
              | optional,
          },
      "definitions.FakeDataNode" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "achaccount", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "achrouting", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "adjective", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "adjectivedemonstrative", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "adjectivedescriptive", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "adjectiveindefinite", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "adjectiveinterrogative", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "adjectivepossessive", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "adjectiveproper", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "adjectivequantitative", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "adverb", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "adverbdegree", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "adverbfrequencydefinite", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { type = js2n.Const "adverbfrequencyindefinite", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "adverbmanner", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "adverbplace", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "adverbtimedefinite", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "adverbtimeindefinite", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "bitcoinaddress", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "bitcoinprivatekey", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "blurb", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "bool", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "bs", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "buzzword", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "chromeuseragent", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "city", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "color", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "company", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "companysuffix", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "connective", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "connectivecasual", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "connectivecomparative", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "connectivecomplaint", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "connectiveexamplify", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "connectivelisting", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "connectivetime", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "country", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "countryabr", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "creditcardcvv", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "creditcardexp", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        options =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      bins = js2n.array.ArrayOf String,
                                      gaps = Bool,
                                      types = js2n.array.ArrayOf String,
                                    },
                                required = {},
                              },
                        type = js2n.Const "creditcardnumber",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "creditcardtype", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "currencylong", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "currencyshort", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "cusip", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        options =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties = { format = String, },
                                required = {},
                              },
                        type = js2n.Const "date",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        options =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      enddate = String,
                                      format = String,
                                      startdate = String,
                                    },
                                required = {},
                              },
                        type = js2n.Const "daterange",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "day", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "digit", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        options =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      count =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Minimum 0
                                            ],
                                    },
                                required = {},
                              },
                        type = js2n.Const "digitn",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "domainname", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "domainsuffix", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "email", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "emoji", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "emojialias", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "emojicategory", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "emojidescription", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "emojitag", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "firefoxuseragent", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "firstname", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "float32", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        options =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties = { max = Number, min = Number, },
                                required = {},
                              },
                        type = js2n.Const "float32range",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "float64", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        options =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties = { max = Number, min = Number, },
                                required = {},
                              },
                        type = js2n.Const "float64range",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "futuredate", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "gender", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "hexcolor", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "hobby", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "hour", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "httpmethod", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "httpstatuscode", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "httpstatuscodesimple", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "httpversion", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "int", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "int16", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "int32", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "int64", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "int8", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        options =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties = { n = std.number.Integer, },
                                required = {},
                              },
                        type = js2n.Const "intn",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "ipv4address", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "ipv6address", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "isin", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "jobdescriptor", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "joblevel", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "jobtitle", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "language", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "languageabbreviation", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "lastname", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "latitude", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "letter", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        options =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      count =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Minimum 0
                                            ],
                                    },
                                required = {},
                              },
                        type = js2n.Const "lettern",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "loglevel", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "longitude", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        options =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      paragraphcount = std.number.Integer,
                                      paragraphseparator = String,
                                      sentencecount = std.number.Integer,
                                      wordcount = std.number.Integer,
                                    },
                                required = {},
                              },
                        type = js2n.Const "loremipsumparagraph",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        options =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  { wordcount = std.number.Integer, },
                                required = {},
                              },
                        type = js2n.Const "loremipsumsentence",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "loremipsumword", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "macaddress", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "middlename", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "minute", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "month", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "monthstring", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "name", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "nameprefix", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "namesuffix", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "nanosecond", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "noun", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "nounabstract", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "nouncollectiveanimal", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "nouncollectivepeople", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "nouncollectivething", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "nouncommon", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "nounconcrete", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "nouncountable", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "noununcountable", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        options =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      max = std.number.Integer,
                                      min = std.number.Integer,
                                    },
                                required = {},
                              },
                        type = js2n.Const "number",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "operauseragent", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        options =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      paragraphcount = std.number.Integer,
                                      paragraphseparator = String,
                                      sentencecount = std.number.Integer,
                                      wordcount = std.number.Integer,
                                    },
                                required = {},
                              },
                        type = js2n.Const "paragraph",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        options =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      length = std.number.Integer,
                                      lower = Bool,
                                      numeric = Bool,
                                      space = Bool,
                                      special = Bool,
                                      upper = Bool,
                                    },
                                required = {},
                              },
                        type = js2n.Const "password",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "pastdate", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "phone", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "phoneformatted", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "phrase", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "preposition", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "prepositioncompound", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "prepositiondouble", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "prepositionsimple", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        options =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties = { max = Number, min = Number, },
                                required = {},
                              },
                        type = js2n.Const "price",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "pronoun", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "pronoundemonstrative", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "pronouninterrogative", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "pronounobject", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "pronounpersonal", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "pronounpossessive", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "pronounreflective", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "pronounrelative", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "question", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "quote", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "rgbcolor", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "safariuseragent", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "second", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        options =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  { wordcount = std.number.Integer, },
                                required = {},
                              },
                        type = js2n.Const "sentence",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "slogan", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "songartist", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "songgenre", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "songname", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "ssn", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "state", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "stateabr", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "street", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "streetname", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "streetnumber", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "streetprefix", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "streetsuffix", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        options =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  { wordcount = std.number.Integer, },
                                required = {},
                              },
                        type = js2n.Const "string",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "timezone", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "timezoneabv", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "timezonefull", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "timezoneoffset", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "timezoneregion", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "uint", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "uint16", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "uint32", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "uint64", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "uint8", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        options =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      n =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Minimum 0
                                            ],
                                    },
                                required = {},
                              },
                        type = js2n.Const "uintn",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "url", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "useragent", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "username", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "uuid", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "verb", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "verbaction", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "verbhelping", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "verblinking", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "weekday", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "word", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "year", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "zip", },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        properties =
                          js2n.record.Record
                              {
                                additional = 'Some js2n.Always,
                                patterns = {},
                                properties = {},
                                required = {},
                              },
                        type = js2n.Const "object",
                      },
                  required = { type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        count = std.number.Integer,
                        item = js2n.Always,
                        type = js2n.Const "array",
                      },
                  required = { type = true, },
                }
            ],
      "definitions.FileMockResponse" =
        {
            code
              | refs."definitions.StatusCode"
              | Number
              | doc "HTTP status code which will be sent in the mock response",
            delay
              | refs."definitions.Duration"
              | String
              | doc "Delay before sending the mock response"
              | optional,
            file
              | String
              | doc "Path to the file whose content will be sent in the mock response",
            headers
              | refs."definitions.Headers"
              | { _ | Dyn }
              | doc "HTTP headers which will be sent in the mock response"
              | optional,
          },
      "definitions.Headers" =
        std.contract.Sequence [ js2n.record.MinProperties 1, { _ | String } ],
      "definitions.Mapping" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  js2n.record.MaxProperties 1,
                  js2n.record.MinProperties 1,
                  js2n.record.Record
                    {
                      additional = 'Some String,
                      patterns = {},
                      properties = {},
                      required = {},
                    }
                ],
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        cache =
                          std.contract.Sequence
                              [
                                js2n.array.MinItems 1,
                                js2n.array.ArrayOf String
                              ],
                        from = String,
                        mocks =
                          std.contract.Sequence
                              [
                                js2n.array.MinItems 1,
                                js2n.array.ArrayOf
                                  (std.contract.Sequence
                                    [ refs."definitions.Mock", { _ | Dyn } ])
                              ],
                        options-handling =
                          std.contract.Sequence
                              [
                                refs."definitions.OptionsHandling",
                                { _ | Dyn }
                              ],
                        rewrites =
                          std.contract.Sequence
                              [
                                js2n.array.MinItems 1,
                                js2n.array.ArrayOf
                                  (std.contract.Sequence
                                    [ refs."definitions.Rewrite", { _ | Dyn } ])
                              ],
                        statics =
                          std.contract.Sequence
                              [
                                js2n.array.MinItems 1,
                                js2n.array.ArrayOf
                                  (std.contract.Sequence
                                    [
                                      refs."definitions.StaticDirectory",
                                      { _ | Dyn }
                                    ])
                              ],
                        to = String,
                      },
                  required = { from = true, to = true, },
                }
            ],
      "definitions.Method" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'PATCH,
                'TRACE,
                'OPTIONS,
                'CONNECT,
                'DELETE,
                'PUT,
                'POST,
                'HEAD,
                'GET
              |]
            ],
      "definitions.Mock" =
        {
            headers
              | refs."definitions.Headers"
              | { _ | Dyn }
              | doc "Mocked request headers"
              | optional,
            method
              | refs."definitions.Method"
              | String
              | doc "Mocked request method"
              | optional,
            path | String | doc "Mocked request path",
            queries
              | refs."definitions.Queries"
              | { _ | Dyn }
              | doc "Mocked request queries"
              | optional,
            response
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.RawMockResponse", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.FileMockResponse", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.FakeDataMockResponse", { _ | Dyn } ]
                ]
              | doc "Mock response definition",
          },
      "definitions.OptionsHandling" =
        {
            disabled
              | Bool
              | doc "Disable OPTIONS request handling and all requests will be proxied to the target server"
              | optional,
            headers
              | refs."definitions.Headers"
              | { _ | Dyn }
              | doc "Custom headers to be sent in response to OPTIONS requests"
              | optional,
            status
              | refs."definitions.StatusCode"
              | Number
              | doc "Custom status code to be sent in response to OPTIONS requests"
              | optional,
            ..
          },
      "definitions.Queries" =
        std.contract.Sequence [ js2n.record.MinProperties 1, { _ | String } ],
      "definitions.RawMockResponse" =
        {
            code | refs."definitions.StatusCode" | Number,
            delay
              | refs."definitions.Duration"
              | String
              | doc "Delay before sending the mock response"
              | optional,
            headers
              | refs."definitions.Headers"
              | { _ | Dyn }
              | doc "HTTP headers which will be sent in the mock response"
              | optional,
            raw
              | String
              | doc "Content which will be sent in the mock response",
          },
      "definitions.Rewrite" =
        { from | String, host | String | optional, to | String, },
      "definitions.StaticDirectory" =
        {
            dir
              | String
              | doc "Path to the folder from which the static files will be served",
            index
              | String
              | doc "The file witch will be returned if the requested file is not found. It should be a relative path within the dir folder"
              | optional,
            path | String | doc "Path where the static files will be served",
          },
      "definitions.StatusCode" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 599,
              js2n.number.Minimum 100
            ],
    }
    in
  {
      cache-config
        | {
          clear-time | String | doc "Expired cache clear time" | optional,
          expiration-time | String | doc "Cache expiration time" | optional,
          methods
            | Array refs."definitions.Method"
            | doc "List of http methods with can be cached"
            | optional,
        }
        | doc "Global cache configuration"
        | optional,
      cert-file | String | doc "Path to HTTPS certificate file" | optional,
      debug | Bool | doc "Show debug output" | optional,
      http-port
        | std.number.Integer
        | js2n.number.Maximum 65535
        | js2n.number.Minimum 1
        | doc "Local HTTP listened port"
        | optional,
      https-port
        | std.number.Integer
        | js2n.number.Maximum 65535
        | js2n.number.Minimum 1
        | doc "Local HTTPS listened port"
        | optional,
      key-file
        | String
        | doc "Path to matching for certificate private key"
        | optional,
      mappings
        | js2n.array.MinItems 1
        | Array refs."definitions.Mapping"
        | doc "A list of mappings that describe how to forward requests.",
      proxy
        | String
        | doc "HTTP/HTTPS proxy to provide requests to real server (used system by default)"
        | optional,
    }