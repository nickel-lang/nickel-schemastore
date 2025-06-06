# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      alt-require
        | Bool
        | doc "Alt of img must be present and alt of area[href] and input[type=image] must be set value."
        | optional,
      attr-lowercase
        | Bool
        | doc "Attribute name must be lowercase."
        | optional,
      attr-no-duplication
        | Bool
        | doc "The same attribute can't be specified twice."
        | optional,
      attr-sorted
        | Bool
        | doc "Attributes should be sorted in an order."
        | optional,
      attr-unsafe-chars
        | Bool
        | doc "Attribute value can't not use unsafe chars."
        | optional,
      attr-value-double-quotes
        | Bool
        | doc "Attribute value must closed by double quotes."
        | optional,
      attr-value-not-empty | Bool | doc "Attribute must set value." | optional,
      attr-value-single-quotes
        | Bool
        | doc "Attribute value must closed by single quotes."
        | optional,
      attr-whitespace
        | Bool
        | doc "No leading or trailing spaces inside attribute values."
        | optional,
      button-type-require
        | Bool
        | doc "The type attribute of a button element must be present with a valid value: button, submit, or reset."
        | optional,
      doctype-first | Bool | doc "Doctype must be first." | optional,
      doctype-html5 | Bool | doc "Doctype must be HTML5." | optional,
      h1-require
        | Bool
        | doc "A H1 heading element is required in HTML documents."
        | optional,
      head-script-disabled
        | Bool
        | doc "The script tag can not be used in head."
        | optional,
      href-abs-or-rel
        | js2n.Enum [ false, "abs", "rel" ]
        | doc "Href must be absolute or relative."
        | optional,
      html-lang-require
        | Bool
        | doc "The lang attribute of an <html> element must be present and should be valid."
        | optional,
      id-class-ad-disabled
        | Bool
        | doc "Id and class can not use ad keyword, it will blocked by adblock software."
        | optional,
      id-class-value
        | js2n.Enum [ false, "underline", "dash", "hump" ]
        | doc "Id and class value must meet some rules: underline, dash, hump."
        | optional,
      id-unique
        | Bool
        | doc "ID attributes must be unique in the document."
        | optional,
      inline-script-disabled
        | Bool
        | doc "Inline script cannot be used."
        | optional,
      inline-style-disabled
        | Bool
        | doc "Inline style cannot be used."
        | optional,
      main-require
        | Bool
        | doc "A main element is required within the <body> tag."
        | optional,
      meta-description-require
        | Bool
        | doc "A meta description is required within the <head> tag."
        | optional,
      meta-viewport-require
        | Bool
        | doc "A meta viewport is required within the <head> tag."
        | optional,
      space-tab-mixed-disabled
        | js2n.Enum [ false, "space", "tab" ]
        | doc "Spaces and tabs can not mixed in front of line."
        | optional,
      spec-char-escape
        | Bool
        | doc "Special characters must be escaped."
        | optional,
      src-not-empty
        | Bool
        | doc "Src of img(script,link) must set value. Empty of src will visit current page twice."
        | optional,
      style-disabled | Bool | doc "Style tag can not be used." | optional,
      tag-pair | Bool | doc "Tag must be paired." | optional,
      tag-self-close
        | Bool
        | doc "The empty tag must closed by self."
        | optional,
      tagname-lowercase | Bool | doc "Tagname must be lowercase." | optional,
      tagname-specialchars
        | Bool
        | doc "Tagname must not contain any characters beside letters, numbers, ”-”, ”:” or ”_”."
        | optional,
      tags-check
        | Bool
        | doc "Check if particular tags are self-closing or must include or exclude particular tags."
        | optional,
      title-require
        | Bool
        | doc "title must be present in head tag."
        | optional,
      ..
    }