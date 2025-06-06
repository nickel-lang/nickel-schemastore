# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Attribute" =
        {
            "default"
              | String
              | doc m%"
                The default value of the attribute, if any.
                
                As attributes are always strings, this is the actual value, not a human
                readable description.
              "%
              | optional,
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Whether the attribute is deprecated.
                If the value is a string, it's the reason for the deprecation.
              "%
              | optional,
            description | String | doc "A markdown description." | optional,
            fieldName
              | String
              | doc "The name of the field this attribute is associated with, if any."
              | optional,
            inheritedFrom
              | refs."definitions.Reference"
              | { _ | Dyn }
              | optional,
            name | String,
            summary
              | String
              | doc "A markdown summary suitable for display in a listing."
              | optional,
            type
              | refs."definitions.Type"
              | { _ | Dyn }
              | doc "The type that the attribute will be serialized/deserialized as."
              | optional,
            ..
          },
      "definitions.ClassDeclaration" =
        {
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Whether the class or mixin is deprecated.
                If the value is a string, it's the reason for the deprecation.
              "%
              | optional,
            description
              | String
              | doc "A markdown description of the class."
              | optional,
            kind | std.enum.TagOrString | [| 'class |],
            members
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.ClassField", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.ClassMethod", { _ | Dyn } ]
                  ]
              )
              | optional,
            mixins
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Reference", { _ | Dyn } ]
              )
              | doc m%"
                Any class mixins applied in the extends clause of this class.
                
                If mixins are applied in the class definition, then the true superclass
                of this class is the result of applying mixins in order to the superclass.
                
                Mixins must be listed in order of their application to the superclass or
                previous mixin application. This means that the innermost mixin is listed
                first. This may read backwards from the common order in JavaScript, but
                matches the order of language used to describe mixin application, like
                "S with A, B".
              "%
              | optional,
            name | String,
            source
              | refs."definitions.SourceReference"
              | { _ | Dyn }
              | optional,
            summary
              | String
              | doc "A markdown summary suitable for display in a listing."
              | optional,
            superclass
              | refs."definitions.Reference"
              | { _ | Dyn }
              | doc m%"
                The superclass of this class.
                
                If this class is defined with mixin applications, the prototype chain
                includes the mixin applications and the true superclass is computed
                from them.
              "%
              | optional,
            ..
          },
      "definitions.ClassField" =
        {
            "default" | String | optional,
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Whether the property is deprecated.
                If the value is a string, it's the reason for the deprecation.
              "%
              | optional,
            description
              | String
              | doc "A markdown description of the field."
              | optional,
            inheritedFrom
              | refs."definitions.Reference"
              | { _ | Dyn }
              | optional,
            kind | std.enum.TagOrString | [| 'field |],
            name | String,
            privacy | refs."definitions.Privacy" | String | optional,
            readonly
              | Bool
              | doc "Whether the property is read-only."
              | optional,
            source
              | refs."definitions.SourceReference"
              | { _ | Dyn }
              | optional,
            static | Bool | optional,
            summary
              | String
              | doc "A markdown summary suitable for display in a listing."
              | optional,
            type | refs."definitions.Type" | { _ | Dyn } | optional,
            ..
          },
      "definitions.ClassMethod" =
        {
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Whether the function is deprecated.
                If the value is a string, it's the reason for the deprecation.
              "%
              | optional,
            description | String | doc "A markdown description." | optional,
            inheritedFrom
              | refs."definitions.Reference"
              | { _ | Dyn }
              | optional,
            kind | std.enum.TagOrString | [| 'method |],
            name | String,
            parameters
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Parameter", { _ | Dyn } ]
              )
              | optional,
            privacy | refs."definitions.Privacy" | String | optional,
            return
              | {
                description | String | doc "A markdown description." | optional,
                summary
                  | String
                  | doc "A markdown summary suitable for display in a listing."
                  | optional,
                type | refs."definitions.Type" | { _ | Dyn } | optional,
                ..
              }
              | optional,
            source
              | refs."definitions.SourceReference"
              | { _ | Dyn }
              | optional,
            static | Bool | optional,
            summary
              | String
              | doc "A markdown summary suitable for display in a listing."
              | optional,
            ..
          },
      "definitions.CssCustomProperty" =
        {
            "default" | String | optional,
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Whether the CSS custom property is deprecated.
                If the value is a string, it's the reason for the deprecation.
              "%
              | optional,
            description | String | doc "A markdown description." | optional,
            name
              | String
              | doc "The name of the property, including leading `--`.",
            summary
              | String
              | doc "A markdown summary suitable for display in a listing."
              | optional,
            syntax
              | String
              | doc m%"
                The expected syntax of the defined property. Defaults to "*".
                
                The syntax must be a valid CSS [syntax string](https://developer.mozilla.org/en-US/docs/Web/CSS/@property/syntax)
                as defined in the CSS Properties and Values API.
                
                Examples:
                
                "<color>": accepts a color
                "<length> | <percentage>": accepts lengths or percentages but not calc expressions with a combination of the two
                "small | medium | large": accepts one of these values set as custom idents.
                "*": any valid token
              "%
              | optional,
            ..
          },
      "definitions.CssCustomState" =
        {
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Whether the CSS custom state is deprecated.
                If the value is a string, it's the reason for the deprecation.
              "%
              | optional,
            description | String | doc "A markdown description." | optional,
            name
              | String
              | doc m%"
                The name of the state. Note: Unlike CSS custom properties, custom states
                do not have a leading `--`.
              "%,
            summary
              | String
              | doc "A markdown summary suitable for display in a listing."
              | optional,
            ..
          },
      "definitions.CssPart" =
        {
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Whether the CSS shadow part is deprecated.
                If the value is a string, it's the reason for the deprecation.
              "%
              | optional,
            description | String | doc "A markdown description." | optional,
            name | String,
            summary
              | String
              | doc "A markdown summary suitable for display in a listing."
              | optional,
            ..
          },
      "definitions.CustomElementDeclaration" =
        {
            attributes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Attribute", { _ | Dyn } ]
              )
              | doc "The attributes that this element is known to understand."
              | optional,
            cssParts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CssPart", { _ | Dyn } ]
              )
              | optional,
            cssProperties
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CssCustomProperty", { _ | Dyn } ]
              )
              | optional,
            cssStates
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CssCustomState", { _ | Dyn } ]
              )
              | optional,
            customElement
              | js2n.Enum [ true ]
              | doc m%"
                Distinguishes a regular JavaScript class from a
                custom element class
              "%,
            demos
              | Array (
                std.contract.Sequence [ refs."definitions.Demo", { _ | Dyn } ]
              )
              | optional,
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Whether the class or mixin is deprecated.
                If the value is a string, it's the reason for the deprecation.
              "%
              | optional,
            description
              | String
              | doc "A markdown description of the class."
              | optional,
            events
              | Array (
                std.contract.Sequence [ refs."definitions.Event", { _ | Dyn } ]
              )
              | doc "The events that this element fires."
              | optional,
            kind | std.enum.TagOrString | [| 'class |],
            members
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.ClassField", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.ClassMethod", { _ | Dyn } ]
                  ]
              )
              | optional,
            mixins
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Reference", { _ | Dyn } ]
              )
              | doc m%"
                Any class mixins applied in the extends clause of this class.
                
                If mixins are applied in the class definition, then the true superclass
                of this class is the result of applying mixins in order to the superclass.
                
                Mixins must be listed in order of their application to the superclass or
                previous mixin application. This means that the innermost mixin is listed
                first. This may read backwards from the common order in JavaScript, but
                matches the order of language used to describe mixin application, like
                "S with A, B".
              "%
              | optional,
            name | String,
            slots
              | Array (
                std.contract.Sequence [ refs."definitions.Slot", { _ | Dyn } ]
              )
              | doc "The shadow dom content slots that this element accepts."
              | optional,
            source
              | refs."definitions.SourceReference"
              | { _ | Dyn }
              | optional,
            summary
              | String
              | doc "A markdown summary suitable for display in a listing."
              | optional,
            superclass
              | refs."definitions.Reference"
              | { _ | Dyn }
              | doc m%"
                The superclass of this class.
                
                If this class is defined with mixin applications, the prototype chain
                includes the mixin applications and the true superclass is computed
                from them.
              "%
              | optional,
            tagName
              | String
              | doc m%"
                An optional tag name that should be specified if this is a
                self-registering element.
                
                Self-registering elements must also include a CustomElementExport
                in the module's exports.
              "%
              | optional,
            ..
          },
      "definitions.CustomElementExport" =
        {
            declaration
              | refs."definitions.Reference"
              | { _ | Dyn }
              | doc m%"
                A reference to the class or other declaration that implements the
                custom element.
              "%,
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Whether the custom-element export is deprecated.
                For example, a future version will not register the custom element in this file.
                If the value is a string, it's the reason for the deprecation.
              "%
              | optional,
            kind | std.enum.TagOrString | [| 'custom-element-definition |],
            name | String | doc "The tag name of the custom element.",
            ..
          },
      "definitions.CustomElementMixinDeclaration" =
        {
            attributes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Attribute", { _ | Dyn } ]
              )
              | doc "The attributes that this element is known to understand."
              | optional,
            cssParts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CssPart", { _ | Dyn } ]
              )
              | optional,
            cssProperties
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CssCustomProperty", { _ | Dyn } ]
              )
              | optional,
            cssStates
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CssCustomState", { _ | Dyn } ]
              )
              | optional,
            customElement
              | js2n.Enum [ true ]
              | doc m%"
                Distinguishes a regular JavaScript class from a
                custom element class
              "%,
            demos
              | Array (
                std.contract.Sequence [ refs."definitions.Demo", { _ | Dyn } ]
              )
              | optional,
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Whether the class or mixin is deprecated.
                If the value is a string, it's the reason for the deprecation.
              "%
              | optional,
            description
              | String
              | doc "A markdown description of the class."
              | optional,
            events
              | Array (
                std.contract.Sequence [ refs."definitions.Event", { _ | Dyn } ]
              )
              | doc "The events that this element fires."
              | optional,
            kind | std.enum.TagOrString | [| 'mixin |],
            members
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.ClassField", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.ClassMethod", { _ | Dyn } ]
                  ]
              )
              | optional,
            mixins
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Reference", { _ | Dyn } ]
              )
              | doc m%"
                Any class mixins applied in the extends clause of this class.
                
                If mixins are applied in the class definition, then the true superclass
                of this class is the result of applying mixins in order to the superclass.
                
                Mixins must be listed in order of their application to the superclass or
                previous mixin application. This means that the innermost mixin is listed
                first. This may read backwards from the common order in JavaScript, but
                matches the order of language used to describe mixin application, like
                "S with A, B".
              "%
              | optional,
            name | String,
            parameters
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Parameter", { _ | Dyn } ]
              )
              | optional,
            return
              | {
                description | String | doc "A markdown description." | optional,
                summary
                  | String
                  | doc "A markdown summary suitable for display in a listing."
                  | optional,
                type | refs."definitions.Type" | { _ | Dyn } | optional,
                ..
              }
              | optional,
            slots
              | Array (
                std.contract.Sequence [ refs."definitions.Slot", { _ | Dyn } ]
              )
              | doc "The shadow dom content slots that this element accepts."
              | optional,
            source
              | refs."definitions.SourceReference"
              | { _ | Dyn }
              | optional,
            summary
              | String
              | doc "A markdown summary suitable for display in a listing."
              | optional,
            superclass
              | refs."definitions.Reference"
              | { _ | Dyn }
              | doc m%"
                The superclass of this class.
                
                If this class is defined with mixin applications, the prototype chain
                includes the mixin applications and the true superclass is computed
                from them.
              "%
              | optional,
            tagName
              | String
              | doc m%"
                An optional tag name that should be specified if this is a
                self-registering element.
                
                Self-registering elements must also include a CustomElementExport
                in the module's exports.
              "%
              | optional,
            ..
          },
      "definitions.Demo" =
        {
            description
              | String
              | doc "A markdown description of the demo."
              | optional,
            source
              | refs."definitions.SourceReference"
              | { _ | Dyn }
              | optional,
            url
              | String
              | doc m%"
                Relative URL of the demo if it's published with the package. Absolute URL
                if it's hosted.
              "%,
            ..
          },
      "definitions.Event" =
        {
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Whether the event is deprecated.
                If the value is a string, it's the reason for the deprecation.
              "%
              | optional,
            description | String | doc "A markdown description." | optional,
            inheritedFrom
              | refs."definitions.Reference"
              | { _ | Dyn }
              | optional,
            name | String,
            summary
              | String
              | doc "A markdown summary suitable for display in a listing."
              | optional,
            type
              | refs."definitions.Type"
              | { _ | Dyn }
              | doc "The type of the event object that's fired.",
            ..
          },
      "definitions.FunctionDeclaration" =
        {
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Whether the function is deprecated.
                If the value is a string, it's the reason for the deprecation.
              "%
              | optional,
            description | String | doc "A markdown description." | optional,
            kind | std.enum.TagOrString | [| 'function |],
            name | String,
            parameters
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Parameter", { _ | Dyn } ]
              )
              | optional,
            return
              | {
                description | String | doc "A markdown description." | optional,
                summary
                  | String
                  | doc "A markdown summary suitable for display in a listing."
                  | optional,
                type | refs."definitions.Type" | { _ | Dyn } | optional,
                ..
              }
              | optional,
            source
              | refs."definitions.SourceReference"
              | { _ | Dyn }
              | optional,
            summary
              | String
              | doc "A markdown summary suitable for display in a listing."
              | optional,
            ..
          },
      "definitions.JavaScriptExport" =
        {
            declaration
              | refs."definitions.Reference"
              | { _ | Dyn }
              | doc m%"
                A reference to the exported declaration.
                
                In the case of aggregating exports, the reference's `module` field must be
                defined and the `name` field must be `"*"`.
              "%,
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Whether the export is deprecated. For example, the name of the export was changed.
                If the value is a string, it's the reason for the deprecation.
              "%
              | optional,
            kind | std.enum.TagOrString | [| 'js |],
            name
              | String
              | doc m%"
                The name of the exported symbol.
                
                JavaScript has a number of ways to export objects which determine the
                correct name to use.
                
                - Default exports must use the name "default".
                - Named exports use the name that is exported. If the export is renamed
                  with the "as" clause, use the exported name.
                - Aggregating exports (`* from`) should use the name `*`
              "%,
            ..
          },
      "definitions.JavaScriptModule" =
        {
            declarations
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.ClassDeclaration", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.FunctionDeclaration", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.MixinDeclaration", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.VariableDeclaration", { _ | Dyn } ],
                    std.contract.Sequence
                      [
                        refs."definitions.CustomElementDeclaration",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.CustomElementMixinDeclaration",
                        { _ | Dyn }
                      ]
                  ]
              )
              | doc m%"
                The declarations of a module.
                
                For documentation purposes, all declarations that are reachable from
                exports should be described here. Ie, functions and objects that may be
                properties of exported objects, or passed as arguments to functions.
              "%
              | optional,
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Whether the module is deprecated.
                If the value is a string, it's the reason for the deprecation.
              "%
              | optional,
            description
              | String
              | doc "A markdown description of the module."
              | optional,
            exports
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.JavaScriptExport", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.CustomElementExport", { _ | Dyn } ]
                  ]
              )
              | doc m%"
                The exports of a module. This includes JavaScript exports and
                custom element definitions.
              "%
              | optional,
            kind | std.enum.TagOrString | [| 'javascript-module |],
            path
              | String
              | doc m%"
                Path to the javascript file needed to be imported.
                (not the path for example to a typescript file.)
              "%,
            summary
              | String
              | doc "A markdown summary suitable for display in a listing."
              | optional,
            ..
          },
      "definitions.MixinDeclaration" =
        {
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Whether the class or mixin is deprecated.
                If the value is a string, it's the reason for the deprecation.
              "%
              | optional,
            description
              | String
              | doc "A markdown description of the class."
              | optional,
            kind | std.enum.TagOrString | [| 'mixin |],
            members
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.ClassField", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.ClassMethod", { _ | Dyn } ]
                  ]
              )
              | optional,
            mixins
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Reference", { _ | Dyn } ]
              )
              | doc m%"
                Any class mixins applied in the extends clause of this class.
                
                If mixins are applied in the class definition, then the true superclass
                of this class is the result of applying mixins in order to the superclass.
                
                Mixins must be listed in order of their application to the superclass or
                previous mixin application. This means that the innermost mixin is listed
                first. This may read backwards from the common order in JavaScript, but
                matches the order of language used to describe mixin application, like
                "S with A, B".
              "%
              | optional,
            name | String,
            parameters
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Parameter", { _ | Dyn } ]
              )
              | optional,
            return
              | {
                description | String | doc "A markdown description." | optional,
                summary
                  | String
                  | doc "A markdown summary suitable for display in a listing."
                  | optional,
                type | refs."definitions.Type" | { _ | Dyn } | optional,
                ..
              }
              | optional,
            source
              | refs."definitions.SourceReference"
              | { _ | Dyn }
              | optional,
            summary
              | String
              | doc "A markdown summary suitable for display in a listing."
              | optional,
            superclass
              | refs."definitions.Reference"
              | { _ | Dyn }
              | doc m%"
                The superclass of this class.
                
                If this class is defined with mixin applications, the prototype chain
                includes the mixin applications and the true superclass is computed
                from them.
              "%
              | optional,
            ..
          },
      "definitions.Parameter" =
        {
            "default" | String | optional,
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Whether the property is deprecated.
                If the value is a string, it's the reason for the deprecation.
              "%
              | optional,
            description
              | String
              | doc "A markdown description of the field."
              | optional,
            name | String,
            "optional"
              | Bool
              | doc "Whether the parameter is optional. Undefined implies non-optional."
              | optional,
            readonly
              | Bool
              | doc "Whether the property is read-only."
              | optional,
            rest
              | Bool
              | doc m%"
                Whether the parameter is a rest parameter. Only the last parameter may be a rest parameter.
                Undefined implies single parameter.
              "%
              | optional,
            summary
              | String
              | doc "A markdown summary suitable for display in a listing."
              | optional,
            type | refs."definitions.Type" | { _ | Dyn } | optional,
            ..
          },
      "definitions.Privacy" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'public, 'protected, 'private |] ],
      "definitions.Reference" =
        {
            module | String | optional,
            name | String,
            package | String | optional,
            ..
          },
      "definitions.Slot" =
        {
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Whether the slot is deprecated.
                If the value is a string, it's the reason for the deprecation.
              "%
              | optional,
            description | String | doc "A markdown description." | optional,
            name
              | String
              | doc "The slot name, or the empty string for an unnamed slot.",
            summary
              | String
              | doc "A markdown summary suitable for display in a listing."
              | optional,
            ..
          },
      "definitions.SourceReference" =
        {
            href
              | String
              | doc "An absolute URL to the source (ie. a GitHub URL).",
            ..
          },
      "definitions.Type" =
        {
            references
              | Array (
                std.contract.Sequence
                  [ refs."definitions.TypeReference", { _ | Dyn } ]
              )
              | doc m%"
                An array of references to the types in the type string.
                
                These references have optional indices into the type string so that tools
                can understand the references in the type string independently of the type
                system and syntax. For example, a documentation viewer could display the
                type `Array<FooElement | BarElement>` with cross-references to `FooElement`
                and `BarElement` without understanding arrays, generics, or union types.
              "%
              | optional,
            source
              | refs."definitions.SourceReference"
              | { _ | Dyn }
              | optional,
            text
              | String
              | doc m%"
                The full string representation of the type, in whatever type syntax is
                used, such as JSDoc, Closure, or TypeScript.
              "%,
            ..
          },
      "definitions.TypeReference" =
        {
            end | Number | optional,
            module | String | optional,
            name | String,
            package | String | optional,
            start | Number | optional,
            ..
          },
      "definitions.VariableDeclaration" =
        {
            "default" | String | optional,
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Whether the property is deprecated.
                If the value is a string, it's the reason for the deprecation.
              "%
              | optional,
            description
              | String
              | doc "A markdown description of the field."
              | optional,
            kind | std.enum.TagOrString | [| 'variable |],
            name | String,
            readonly
              | Bool
              | doc "Whether the property is read-only."
              | optional,
            source
              | refs."definitions.SourceReference"
              | { _ | Dyn }
              | optional,
            summary
              | String
              | doc "A markdown summary suitable for display in a listing."
              | optional,
            type | refs."definitions.Type" | { _ | Dyn } | optional,
            ..
          },
    }
    in
  {
      deprecated
        | std.contract.any_of [ Bool, String ]
        | doc m%"
          Whether the package is deprecated.
          If the value is a string, it's the reason for the deprecation.
        "%
        | optional,
      modules
        | Array refs."definitions.JavaScriptModule"
        | doc "An array of the modules this package contains.",
      readme
        | String
        | doc m%"
          The Markdown to use for the main readme of this package.
          
          This can be used to override the readme used by Github or npm if that
          file contains information irrelevant to custom element catalogs and
          documentation viewers.
        "%
        | optional,
      schemaVersion
        | String
        | doc "The version of the schema used in this file.",
      ..
    }