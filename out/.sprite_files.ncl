# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      customstyles
        | { _ | std.contract.any_of [ Number, String ] }
        | doc "Define custom CSS declarations to inject into the generated stylesheet."
        | optional,
      dpi
        | std.number.Integer
        | doc "The image resolution of the generated image sprite"
        | optional,
      images
        | { _ | String }
        | doc "An array of file paths relative to this document. The name must be unique.",
      optimize
        | std.enum.TagOrString
        | [| 'none, 'lossy, 'lossless |]
        | doc "Optimizes the generated image either lossy or lossless. Requires the \"Image Optimizer\" extension for Visual Studio"
        | optional,
      orientation
        | std.enum.TagOrString
        | [| 'vertical, 'horizontal |]
        | doc "The orientation of the individual images inside the generated sprite."
        | optional,
      output
        | std.enum.TagOrString
        | [| 'gif, 'jpg, 'png |]
        | doc "Output format of the generated image sprite."
        | optional,
      padding
        | std.number.Integer
        | doc "The padding around each individual image in the sprite. The value is in pixels."
        | optional,
      pathprefix
        | String
        | doc "Add any path root in front of the generated. Example: \"/images/\""
        | optional,
      stylesheet
        | std.enum.TagOrString
        | [| 'styl, 'scss, 'less, 'css, 'none |]
        | doc "Define stylesheets (css, less, sass) to be generated as part of the sprite generation process."
        | optional,
      ..
    }