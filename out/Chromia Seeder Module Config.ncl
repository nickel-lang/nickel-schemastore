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
        additional =
          'Some
              {
                attributes
                  | {
                    _ | std.contract.Sequence
                      [
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              generator
                                | std.enum.TagOrString
                                | [|
                                  '"barcode.issn",
                                  '"barcode.ismn",
                                  '"barcode.isbn",
                                  '"barcode.composite_symbol",
                                  '"barcode.upce",
                                  '"barcode.upca",
                                  '"barcode.ean13",
                                  '"barcode.ean8",
                                  '"tea.variety.herbal",
                                  '"tea.variety.oolong",
                                  '"tea.variety.white",
                                  '"tea.variety.green",
                                  '"tea.variety.black",
                                  '"tea.type",
                                  '"subscription.payment_term",
                                  '"subscription.term",
                                  '"subscription.payment_method",
                                  '"subscription.status",
                                  '"subscription.plan",
                                  '"stripe.invalid_card",
                                  '"stripe.valid_token",
                                  '"stripe.valid_card",
                                  '"restaurant.review",
                                  '"restaurant.description",
                                  '"restaurant.type",
                                  '"restaurant.name",
                                  '"industry.sub_sector",
                                  '"industry.sector",
                                  '"industry.super_sector",
                                  'industry,
                                  '"house.rooms",
                                  '"house.furniture",
                                  '"food.ethnic_category",
                                  '"food.sushi",
                                  '"food.metric_measurements",
                                  '"food.measurements",
                                  '"food.measurement_sizes",
                                  '"food.spices",
                                  '"food.vegetables",
                                  '"food.fruits",
                                  '"food.ingredients",
                                  '"food.description",
                                  '"food.dish",
                                  '"food.allergens",
                                  'dessert,
                                  '"dessert.variety",
                                  '"dessert.topping",
                                  '"dessert.flavor",
                                  '"horse.breed",
                                  '"horse.name",
                                  '"dog.age",
                                  '"dog.size",
                                  '"dog.coat_length",
                                  '"dog.meme_phrase",
                                  '"dog.sound",
                                  '"dog.breed",
                                  '"dog.name",
                                  '"cat.registry",
                                  '"cat.breed",
                                  '"cat.name",
                                  '"bird.family_name",
                                  '"bird.plausible_name",
                                  '"bird.colors",
                                  '"bird.anatomy",
                                  '"bird.geo",
                                  '"animal.name",
                                  '"ancient.hero",
                                  '"ancient.titan",
                                  '"ancient.primordial",
                                  '"ancient.god",
                                  '"coffee.region",
                                  '"coffee.variety",
                                  '"coffee.notes",
                                  '"coffee.country",
                                  '"coffee.blend_name",
                                  '"finance.ticker",
                                  '"finance.vat_number",
                                  '"credit_card.type",
                                  '"credit_card.number",
                                  '"beer.brand",
                                  '"beer.malts",
                                  '"beer.yeast",
                                  '"beer.hop",
                                  '"beer.style",
                                  '"beer.name",
                                  '"train_station.usa.railway",
                                  '"train_station.usa.metro",
                                  '"train_station.germany.railway",
                                  '"train_station.germany.metro",
                                  '"train_station.spain.railway",
                                  '"train_station.spain.metro",
                                  '"train_station.uk.railway",
                                  '"train_station.uk.metro",
                                  '"nation.language",
                                  '"nation.capital_city",
                                  '"nation.nationality",
                                  '"mountain.range",
                                  '"mountain.name",
                                  '"australia.states",
                                  '"australia.animals",
                                  '"australia.locations",
                                  '"airport.eu.iata.medium",
                                  '"airport.eu.iata.large",
                                  '"airport.eu.medium",
                                  '"airport.eu.large",
                                  '"airport.usa.iata.small",
                                  '"airport.usa.iata.medium",
                                  '"airport.usa.iata.large",
                                  '"airport.usa.small",
                                  '"airport.usa.medium",
                                  '"airport.usa.large",
                                  '"programming_language.creator",
                                  '"programming_language.name",
                                  '"device.serial",
                                  '"device.manufacturer",
                                  '"device.model_name",
                                  '"device.platform",
                                  '"crypto_coin.coin",
                                  '"computer.os.windows",
                                  '"computer.os.macos",
                                  '"computer.os.plan9",
                                  '"computer.os.templeos",
                                  '"computer.os.openbsd",
                                  '"computer.os.linux",
                                  '"computer.platform",
                                  '"computer.type",
                                  '"camera.brand_with_model",
                                  '"camera.model",
                                  '"camera.brand",
                                  '"appliance.equipment",
                                  '"appliance.brand",
                                  '"app.author",
                                  '"app.version",
                                  '"app.name",
                                  '"world_cup.cities",
                                  '"world_cup.stadiums",
                                  '"world_cup.teams",
                                  '"volleyball.formation",
                                  '"volleyball.position",
                                  '"volleyball.coach",
                                  '"volleyball.player",
                                  '"volleyball.team",
                                  '"team.mascot",
                                  '"team.sport",
                                  '"team.name",
                                  '"sport.unusual",
                                  '"sport.ancient_olympics",
                                  '"sport.winter_paralympics",
                                  '"sport.summer_paralympics",
                                  '"sport.winter_olympics",
                                  '"sport.summer_olympics",
                                  '"mountaineering.mountaineer",
                                  '"football.positions",
                                  '"football.competitions",
                                  '"football.coaches",
                                  '"football.players",
                                  '"football.teams",
                                  '"esport.games",
                                  '"esport.leagues",
                                  '"esport.events",
                                  '"esport.teams",
                                  '"esport.players",
                                  '"crossfit.hero_workouts",
                                  '"crossfit.girl_workouts",
                                  '"crossfit.movements",
                                  '"crossfit.female_athletes",
                                  '"crossfit.male_athletes",
                                  '"crossfit.competitions",
                                  '"chess.titles",
                                  '"chess.openings",
                                  '"chess.tournaments",
                                  '"chess.players",
                                  '"basketball.positions",
                                  '"basketball.coaches",
                                  '"basketball.players",
                                  '"basketball.teams",
                                  '"military.dod_paygrade",
                                  '"military.space_force_rank",
                                  '"military.air_force_rank",
                                  '"military.coast_guard_rank",
                                  '"military.navy_rank",
                                  '"military.marines_rank",
                                  '"military.army_rank",
                                  '"hobby.activity",
                                  '"greek_philosophers.quotes",
                                  '"greek_philosophers.names",
                                  '"driving_license.license",
                                  '"demographic.marital_status",
                                  '"demographic.educational_attainment",
                                  '"demographic.demonym",
                                  '"demographic.sex",
                                  '"demographic.race",
                                  '"blood.group",
                                  '"blood.rh_factor",
                                  '"blood.type",
                                  '"artist.names",
                                  '"verbs.simple_present",
                                  '"verbs.ing_form",
                                  '"verbs.past_participle",
                                  '"verbs.past",
                                  '"verbs.base",
                                  '"quote.fortune_cookie",
                                  '"quote.yoda",
                                  '"quote.singular_siegler",
                                  '"quote.robin",
                                  '"quote.most_interesting_man_in_the_world",
                                  '"quote.matz",
                                  '"quote.famous_last_words",
                                  '"slack_emoji.emoji",
                                  '"slack_emoji.custom",
                                  '"slack_emoji.objects_and_symbols",
                                  '"slack_emoji.travel_and_places",
                                  '"slack_emoji.activity",
                                  '"slack_emoji.celebration",
                                  '"slack_emoji.food_and_drink",
                                  '"slack_emoji.nature",
                                  '"slack_emoji.people",
                                  '"nato.alphabet",
                                  '"markdown.emphasis",
                                  '"markdown.headers",
                                  '"lorem.punctuation",
                                  '"lorem.supplemental",
                                  '"lorem.words",
                                  '"hipster.words",
                                  '"emotion.noun",
                                  '"emotion.adjective",
                                  '"adjective.negative",
                                  '"adjective.positive",
                                  '"university.name",
                                  '"university.suffix",
                                  '"university.prefix",
                                  '"science.tool",
                                  '"science.scientist",
                                  '"science.modifier",
                                  '"science.element_subcategory",
                                  '"science.element_state",
                                  '"science.element_symbol",
                                  '"science.element",
                                  '"job.title",
                                  '"job.education_level",
                                  '"job.employment_type",
                                  '"job.key_skills",
                                  '"job.position",
                                  '"job.seniority",
                                  '"job.field",
                                  '"educator.course_number",
                                  '"educator.degree_type",
                                  '"educator.university_type",
                                  '"educator.subject",
                                  '"educator.campus",
                                  '"educator.primary_school",
                                  '"educator.secondary_school",
                                  '"educator.primary",
                                  '"educator.secondary",
                                  '"educator.school_name",
                                  '"money.amount",
                                  '"measurement.metric_length",
                                  '"measurement.metric_volume",
                                  '"measurement.metric_weight",
                                  '"measurement.metric_height",
                                  '"measurement.length",
                                  '"measurement.volume",
                                  '"measurement.weight",
                                  '"measurement.height",
                                  '"gender.short_binary_type",
                                  '"gender.binary_type",
                                  '"gender.types",
                                  '"file.mimetype_video",
                                  '"file.mimetype_text",
                                  '"file.mimetype_multipart",
                                  '"file.mimetype_model",
                                  '"file.mimetype_message",
                                  '"file.mimetype_image",
                                  '"file.mimetype_audio",
                                  '"file.mimetype_application",
                                  '"file.extension",
                                  '"currency.symbol",
                                  '"currency.name",
                                  '"currency.code",
                                  '"crypto.sha512",
                                  '"crypto.sha384",
                                  '"crypto.sha256",
                                  '"crypto.sha224",
                                  '"crypto.sha1",
                                  '"crypto.md5",
                                  '"commerce.vendor",
                                  '"commerce.brand",
                                  '"commerce.promotion_code",
                                  '"commerce.product_name",
                                  '"commerce.department",
                                  '"color.name",
                                  '"bank.iban_details",
                                  '"bank.swift_bic",
                                  '"bank.name",
                                  '"random.json",
                                  '"random.text",
                                  '"random.uuid",
                                  '"random.enum",
                                  '"random.decimal",
                                  '"random.boolean",
                                  '"random.integer",
                                  '"phone_number.country_code",
                                  '"phone_number.exchange_code",
                                  '"phone_number.area_code",
                                  'phone_number,
                                  '"address.mailbox",
                                  '"address.street_name",
                                  '"address.city_with_state",
                                  '"address.time_zone",
                                  '"address.state_abbr",
                                  '"address.state",
                                  '"address.postcode",
                                  '"address.secondary_address",
                                  '"address.community",
                                  '"address.building_number",
                                  '"address.country_code_long",
                                  '"address.street",
                                  '"address.country_code",
                                  '"address.country",
                                  '"address.city",
                                  '"address.full",
                                  '"company.sic_code",
                                  '"company.type",
                                  '"company.profession",
                                  '"company.industry",
                                  '"company.department",
                                  '"company.name",
                                  '"internet.bot_user_agent",
                                  '"internet.user_agent",
                                  '"internet.domain_suffix",
                                  '"internet.slug",
                                  '"internet.safe_email",
                                  '"internet.mac_addr",
                                  '"internet.ipv6_addr",
                                  '"internet.ipv4_addr",
                                  '"internet.public_ipv4_addr",
                                  '"internet.private_ipv4_addr",
                                  '"internet.domain",
                                  'email,
                                  'name_with_middle,
                                  'neutral_first_name,
                                  'female_first_name,
                                  'male_first_name,
                                  'name,
                                  'last_name,
                                  'first_name,
                                  'predefined,
                                  'range,
                                  'byte_array,
                                  'text
                                |]
                                | optional,
                              ..
                            },
                            Array Dyn
                          ],
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
                                    { generator = js2n.Const "text", },
                                  required = {},
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
                                max
                                  | std.number.Integer
                                  | js2n.number.Minimum 1
                                  | optional,
                                min
                                  | std.number.Integer
                                  | js2n.number.Minimum 1
                                  | optional,
                                ..
                              },
                              Array Dyn
                            ])
                          (js2n.IfThenElse
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
                                      { generator = js2n.Const "range", },
                                    required = {},
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
                                  max | js2n.number.MultipleOf 1,
                                  min | js2n.number.MultipleOf 1,
                                  ..
                                },
                                Array Dyn
                              ])
                            (js2n.IfThenElse
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
                                        {
                                            generator = js2n.Const "predefined",
                                          },
                                      required = {},
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
                                    values
                                      | Array (
                                        std.contract.any_of
                                          [
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ]
                                      ),
                                    ..
                                  },
                                  Array Dyn
                                ])
                              (js2n.IfThenElse
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
                                          {
                                              generator =
                                                js2n.Const "byte_array",
                                            },
                                        required = {},
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
                                      size
                                        | std.number.Integer
                                        | js2n.number.Minimum 1
                                        | optional,
                                      ..
                                    },
                                    Array Dyn
                                  ]) js2n.Always)))
                      ]
                  }
                  | optional,
                count
                  | std.number.Integer
                  | js2n.number.Minimum 1
                  | doc "The number of records to generate"
                  | optional,
                ..
              },
        patterns = {},
        properties = { module = String, },
        required = { module = true, },
      }