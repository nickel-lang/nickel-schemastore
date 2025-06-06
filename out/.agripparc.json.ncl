# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema"
        | std.enum.TagOrString
        | [| '"https://json.schemastore.org/agripparc-1.4.json" |]
        | doc "Link to https://json.schemastore.org/agripparc-1.4.json"
        | optional,
      allowOutsideBase
        | Bool
        | doc "If true, allows components to be generated outside the resolved baseDir"
        | optional,
      baseDir
        | String
        | doc "Path to a base directory which components should be genenrated in or relative to"
        | optional,
      children
        | Bool
        | doc "Whether the component is meant to have children (FC) or not (VFC)"
        | optional,
      debug
        | Bool
        | doc "Whether to log additional debug information"
        | optional,
      declaration
        | std.enum.TagOrString
        | [| 'function, 'const |]
        | doc "Whether to declare the component as a const with an arrow function or a function declaration"
        | optional,
      destination
        | String
        | doc "The path in which the component folder/files should be generated, relative to baseDir"
        | optional,
      exportType
        | std.enum.TagOrString
        | [| '"default", 'named |]
        | doc "Whether to use a named export or a default export for the component"
        | optional,
      flat
        | Bool
        | doc "Whether to create a new, dedicated dir for the component (false) or not (true)"
        | optional,
      importReact | Bool | doc "Whether to import React" | optional,
      memo
        | Bool
        | doc "Whether to generate a memo() component. Overrides the declaration option"
        | optional,
      overwrite
        | Bool
        | doc "Whether to overwrite existing files, if any are found"
        | optional,
      postCommand
        | String
        | doc "A command to run after a component was successfully generated"
        | optional,
      props
        | std.enum.TagOrString
        | [| 'none, 'prop-types, 'jsdoc, 'ts |]
        | doc "Which prop declaration method to use"
        | optional,
      reactNative
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "Whether to generate React Native components"
        | optional,
      separateIndex
        | Bool
        | doc "Whether to use a dedicated index file (recommended)"
        | optional,
      styling
        | std.enum.TagOrString
        | [|
          'none,
          'styled-components,
          'react-native,
          'mui,
          'jss,
          'scss,
          'css
        |]
        | doc "Which styling solution to use"
        | optional,
      stylingModule
        | Bool
        | doc "Relevant for `css` or `scss` styling. If true, generates a scoped `module` stylesheet"
        | optional,
      tsPropsDeclaration
        | std.enum.TagOrString
        | [| 'type, 'interface |]
        | doc "For TS components, whether to declare props as an interface or a type"
        | optional,
      typescript | Bool | doc "Whether to use Typescript" | optional,
    }