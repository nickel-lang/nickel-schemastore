# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "properties.gaMeasurementId" =
        js2n.string.Matches "^(G|UA|YT|MO)-[a-zA-Z0-9-]+$",
    }
    in
  std.contract.any_of
      [
        js2n.Null,
        Bool,
        Number,
        String,
        {
          baseCanonicalUrl | String | optional,
          gaMeasurementId
            | js2n.string.Matches "^(G|UA|YT|MO)-[a-zA-Z0-9-]+$"
            | optional,
          gaTrackingId | refs."properties.gaMeasurementId" | optional,
          head | Array String | optional,
          sitemap | { excludePaths | Array String | optional, .. } | optional,
          templates | { _ | String } | optional,
          title | String | optional,
          titleTemplate | String | optional,
          ..
        },
        Array Dyn
      ]