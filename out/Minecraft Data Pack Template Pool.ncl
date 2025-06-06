# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      elements
        | Array
          {
            element
              | {
                element_type
                  | std.enum.TagOrString
                  | [|
                    '"minecraft:single_pool_element",
                    '"minecraft:legacy_single_pool_element",
                    '"minecraft:list_pool_element",
                    '"minecraft:feature_pool_element",
                    '"minecraft:empty_pool_element"
                  |]
                  | optional,
                elements
                  | Array
                    {
                      element_type
                        | std.enum.TagOrString
                        | [|
                          '"minecraft:single_pool_element",
                          '"minecraft:legacy_single_pool_element",
                          '"minecraft:list_pool_element",
                          '"minecraft:empty_pool_element"
                        |]
                        | optional,
                      location
                        | String
                        | doc "The namespaced id of the structure to place."
                        | optional,
                      processors
                        | std.contract.any_of
                          [
                            String,
                            {
                              processors
                                | Array
                                  {
                                    processor_type
                                      | String
                                      | doc "The namespaced id of the processor to use."
                                      | optional,
                                    ..
                                  }
                                | doc "A list of processors to use."
                                | optional,
                              ..
                            }
                          ]
                        | doc "The namespaced ID of a processor if this is a string."
                        | optional,
                      projection
                        | std.enum.TagOrString
                        | [| 'terrain_matching, 'rigid |]
                        | optional,
                      weight | js2n.Always | optional,
                      ..
                    }
                  | doc "A list of structures to choose from."
                  | optional,
                feature
                  | String
                  | doc "The namespaced id of the feature."
                  | optional,
                location
                  | String
                  | doc "The namespaced id of the structure to place."
                  | optional,
                processors
                  | std.contract.any_of
                    [
                      String,
                      {
                        processors
                          | Array
                            {
                              processor_type
                                | String
                                | doc "The namespaced id of the processor to use."
                                | optional,
                              ..
                            }
                          | doc "A list of processors to use."
                          | optional,
                        ..
                      }
                    ]
                  | doc "The namespaced ID of a processor if this is a string."
                  | optional,
                projection
                  | std.enum.TagOrString
                  | [| 'terrain_matching, 'rigid |]
                  | optional,
                ..
              }
              | doc "The properties of this element."
              | optional,
            weight
              | std.number.Integer
              | doc "How likely this element is to be chosen when using this pool."
              | optional,
            ..
          }
        | doc "A list of structures to choose from."
        | optional,
      fallback
        | String
        | doc "Can set to another template pool, which generates when the original pool cannot generate at the end of all layers."
        | optional,
      name | String | doc "The namespaced ID of the pool." | optional,
      ..
    }