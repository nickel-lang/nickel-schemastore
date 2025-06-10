# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = { "definitions.rule" = js2n.Enum [ 2, true, false ], }
    in
  {
      adjoining-classes | refs."definitions.rule" | optional,
      box-model | refs."definitions.rule" | optional,
      box-sizing | refs."definitions.rule" | optional,
      bulletproof-font-face | refs."definitions.rule" | optional,
      compatible-vendor-prefixes | refs."definitions.rule" | optional,
      display-property-grouping | refs."definitions.rule" | optional,
      duplicate-background-images | refs."definitions.rule" | optional,
      duplicate-properties | refs."definitions.rule" | optional,
      empty-rules | refs."definitions.rule" | optional,
      fallback-colors | refs."definitions.rule" | optional,
      floats | refs."definitions.rule" | optional,
      font-faces | refs."definitions.rule" | optional,
      font-sizes | refs."definitions.rule" | optional,
      gradients | refs."definitions.rule" | optional,
      ids | refs."definitions.rule" | optional,
      "import" | refs."definitions.rule" | optional,
      important | refs."definitions.rule" | optional,
      known-properties | refs."definitions.rule" | optional,
      outline-none | refs."definitions.rule" | optional,
      overqualified-elements | refs."definitions.rule" | optional,
      qualified-headings | refs."definitions.rule" | optional,
      regex-selectors | refs."definitions.rule" | optional,
      shorthand | refs."definitions.rule" | optional,
      star-property-hack | refs."definitions.rule" | optional,
      text-indent | refs."definitions.rule" | optional,
      underscore-property-hack | refs."definitions.rule" | optional,
      unique-headings | refs."definitions.rule" | optional,
      universal-selector | refs."definitions.rule" | optional,
      unqualified-attributes | refs."definitions.rule" | optional,
      vendor-prefix | refs."definitions.rule" | optional,
      zero-units | refs."definitions.rule" | optional,
      ..
    }