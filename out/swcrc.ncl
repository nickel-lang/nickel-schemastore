# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AmdConfig" =
        {
            allowTopLevelThis | Bool | optional,
            exportInteropAnnotation
              | Bool
              | doc m%"
                Emits `cjs-module-lexer` annotation
                `cjs-module-lexer` is used in Node.js core for detecting the named exports available when importing a CJS module into ESM.
                swc will emit `cjs-module-lexer` detectable annotation with this option enabled.
                
                Defaults to `true` if import_interop is Node, else `false`
              "%
              | optional,
            ignoreDynamic
              | Bool
              | doc "If set to true, dynamic imports will be preserved."
              | optional,
            importInterop
              | std.enum.TagOrString
              | [| 'swc, 'none, 'node, 'babel |]
              | doc m%"
                Defaults to `swc`.
                
                CommonJS modules and ECMAScript modules are not fully compatible.
                However, compilers, bundlers and JavaScript runtimes developed different strategies
                to make them work together as well as possible.
                
                - `swc` (alias: `babel`)
                
                When using exports with `swc` a non-enumerable `__esModule` property is exported
                This property is then used to determine if the import is the default export
                or if it contains the default export.
                
                ```javascript
                import foo from "foo";
                import { bar } from "bar";
                foo;
                bar;
                
                // Is compiled to ...
                
                "use strict";
                
                function _interop_require_default(obj) {
                  return obj && obj.__esModule ? obj : { default: obj };
                }
                
                var _foo = _interop_require_default(require("foo"));
                var _bar = require("bar");
                
                _foo.default;
                _bar.bar;
                ```
                
                When this import interop is used, if both the imported and the importer module are compiled
                with swc they behave as if none of them was compiled.
                
                This is the default behavior.
                
                - `node`
                
                When importing CommonJS files (either directly written in CommonJS, or generated with a compiler)
                Node.js always binds the `default` export to the value of `module.exports`.
                
                ```javascript
                import foo from "foo";
                import { bar } from "bar";
                foo;
                bar;
                
                // Is compiled to ...
                
                "use strict";
                
                var _foo = require("foo");
                var _bar = require("bar");
                
                _foo;
                _bar.bar;
                ```
                This is not exactly the same as what Node.js does since swc allows accessing any property of `module.exports`
                as a named export, while Node.js only allows importing statically analyzable properties of `module.exports`.
                However, any import working in Node.js will also work when compiled with swc using `importInterop: "node"`.
                
                - `none`
                
                If you know that the imported file has been transformed with a compiler that stores the `default` export on
                `exports.default` (such as swc or Babel), you can safely omit the `_interop_require_default` helper.
                
                ```javascript
                import foo from "foo";
                import { bar } from "bar";
                foo;
                bar;
                
                // Is compiled to ...
                
                "use strict";
                
                var _foo = require("foo");
                var _bar = require("bar");
                
                _foo.default;
                _bar.bar;
                ```
              "%
              | optional,
            lazy
              | std.contract.any_of [ Array String, Bool ]
              | doc m%"
                Changes Babel's compiled import statements to be lazily evaluated when their imported bindings are used for the first time.
                
                This can improve initial load time of your module because evaluating dependencies up
                 front is sometimes entirely un-necessary. This is especially the case when implementing
                 a library module.
                
                
                The value of `lazy` has a few possible effects:
                
                 - `false` - No lazy initialization of any imported module.
                 - `true` - Do not lazy-initialize local `./foo` imports, but lazy-init `foo` dependencies.
                
                Local paths are much more likely to have circular dependencies, which may break if loaded lazily,
                so they are not lazy by default, whereas dependencies between independent modules are rarely cyclical.
                
                 - `Array<string>` - Lazy-initialize all imports with source matching one of the given strings.
                
                -----
                
                The two cases where imports can never be lazy are:
                
                 - `import "foo";`
                
                Side-effect imports are automatically non-lazy since their very existence means
                 that there is no binding to later kick off initialization.
                
                 - `export * from "foo"`
                
                Re-exporting all names requires up-front execution because otherwise there is no
                way to know what names need to be exported.
                
                Defaults to `false`.
              "%
              | optional,
            moduleId | String | optional,
            noInterop | Bool | optional,
            outFileExtension
              | std.enum.TagOrString
              | [| 'mjs, 'js, 'cjs |]
              | doc m%"
                Output extension for generated files.
                
                Defaults to `js`.
              "%
              | optional,
            preserveImportMeta | Bool | optional,
            strict
              | Bool
              | doc m%"
                By default, when using exports with babel a non-enumerable `__esModule`
                property is exported. In some cases this property is used to determine
                if the import is the default export or if it contains the default export.
                
                In order to prevent the __esModule property from being exported, you
                 can set the strict option to true.
                
                Defaults to `false`.
              "%
              | optional,
            strictMode
              | Bool
              | doc m%"
                Emits 'use strict' directive.
                
                Defaults to `true`.
              "%
              | optional,
            type | std.contract.Equal "amd" | optional,
            ..
          },
      "definitions.Assumptions" =
        {
            arrayLikeIsIterable
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#arraylikeisiterable"
              | optional,
            constantReexports
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#constantreexports"
              | optional,
            constantSuper
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#constantsuper"
              | optional,
            enumerableModuleMeta
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#enumerablemodulemeta"
              | optional,
            ignoreFunctionLength
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#ignorefunctionlength"
              | optional,
            ignoreFunctionName | Bool | optional,
            ignoreToPrimitiveHint
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#ignoretoprimitivehint"
              | optional,
            iterableIsArray
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#iterableisarray"
              | optional,
            mutableTemplateObject
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#mutabletemplateobject"
              | optional,
            noClassCalls
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#noclasscalls"
              | optional,
            noDocumentAll
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#nodocumentall"
              | optional,
            noIncompleteNsImportDetection
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#noincompletensimportdetection"
              | optional,
            noNewArrows
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#nonewarrows"
              | optional,
            objectRestNoSymbols
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#objectrestnosymbols"
              | optional,
            privateFieldsAsProperties
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#privatefieldsasproperties"
              | optional,
            pureGetters
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#puregetters"
              | optional,
            setClassMethods
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#setclassmethods"
              | optional,
            setComputedProperties
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#setcomputedproperties"
              | optional,
            setPublicClassFields
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#setpublicclassfields"
              | optional,
            setSpreadProperties
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#setspreadproperties"
              | optional,
            skipForOfIteratorClosing
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#skipforofiteratorclosing"
              | optional,
            superIsCallableConstructor
              | Bool
              | doc "https://babeljs.io/docs/en/assumptions#superiscallableconstructor"
              | optional,
            tsEnumIsReadonly | Bool | optional,
            ..
          },
      "definitions.CallerOptions" = { name | String | optional, .. },
      "definitions.CommonJsConfig" =
        {
            allowTopLevelThis | Bool | optional,
            exportInteropAnnotation
              | Bool
              | doc m%"
                Emits `cjs-module-lexer` annotation
                `cjs-module-lexer` is used in Node.js core for detecting the named exports available when importing a CJS module into ESM.
                swc will emit `cjs-module-lexer` detectable annotation with this option enabled.
                
                Defaults to `true` if import_interop is Node, else `false`
              "%
              | optional,
            ignoreDynamic
              | Bool
              | doc "If set to true, dynamic imports will be preserved."
              | optional,
            importInterop
              | std.enum.TagOrString
              | [| 'swc, 'none, 'node, 'babel |]
              | doc m%"
                Defaults to `swc`.
                
                CommonJS modules and ECMAScript modules are not fully compatible.
                However, compilers, bundlers and JavaScript runtimes developed different strategies
                to make them work together as well as possible.
                
                - `swc` (alias: `babel`)
                
                When using exports with `swc` a non-enumerable `__esModule` property is exported
                This property is then used to determine if the import is the default export
                or if it contains the default export.
                
                ```javascript
                import foo from "foo";
                import { bar } from "bar";
                foo;
                bar;
                
                // Is compiled to ...
                
                "use strict";
                
                function _interop_require_default(obj) {
                  return obj && obj.__esModule ? obj : { default: obj };
                }
                
                var _foo = _interop_require_default(require("foo"));
                var _bar = require("bar");
                
                _foo.default;
                _bar.bar;
                ```
                
                When this import interop is used, if both the imported and the importer module are compiled
                with swc they behave as if none of them was compiled.
                
                This is the default behavior.
                
                - `node`
                
                When importing CommonJS files (either directly written in CommonJS, or generated with a compiler)
                Node.js always binds the `default` export to the value of `module.exports`.
                
                ```javascript
                import foo from "foo";
                import { bar } from "bar";
                foo;
                bar;
                
                // Is compiled to ...
                
                "use strict";
                
                var _foo = require("foo");
                var _bar = require("bar");
                
                _foo;
                _bar.bar;
                ```
                This is not exactly the same as what Node.js does since swc allows accessing any property of `module.exports`
                as a named export, while Node.js only allows importing statically analyzable properties of `module.exports`.
                However, any import working in Node.js will also work when compiled with swc using `importInterop: "node"`.
                
                - `none`
                
                If you know that the imported file has been transformed with a compiler that stores the `default` export on
                `exports.default` (such as swc or Babel), you can safely omit the `_interop_require_default` helper.
                
                ```javascript
                import foo from "foo";
                import { bar } from "bar";
                foo;
                bar;
                
                // Is compiled to ...
                
                "use strict";
                
                var _foo = require("foo");
                var _bar = require("bar");
                
                _foo.default;
                _bar.bar;
                ```
              "%
              | optional,
            lazy
              | std.contract.any_of [ Array String, Bool ]
              | doc m%"
                Changes Babel's compiled import statements to be lazily evaluated when their imported bindings are used for the first time.
                
                This can improve initial load time of your module because evaluating dependencies up
                 front is sometimes entirely un-necessary. This is especially the case when implementing
                 a library module.
                
                
                The value of `lazy` has a few possible effects:
                
                 - `false` - No lazy initialization of any imported module.
                 - `true` - Do not lazy-initialize local `./foo` imports, but lazy-init `foo` dependencies.
                
                Local paths are much more likely to have circular dependencies, which may break if loaded lazily,
                so they are not lazy by default, whereas dependencies between independent modules are rarely cyclical.
                
                 - `Array<string>` - Lazy-initialize all imports with source matching one of the given strings.
                
                -----
                
                The two cases where imports can never be lazy are:
                
                 - `import "foo";`
                
                Side-effect imports are automatically non-lazy since their very existence means
                 that there is no binding to later kick off initialization.
                
                 - `export * from "foo"`
                
                Re-exporting all names requires up-front execution because otherwise there is no
                way to know what names need to be exported.
                
                Defaults to `false`.
              "%
              | optional,
            noInterop | Bool | optional,
            outFileExtension
              | std.enum.TagOrString
              | [| 'mjs, 'js, 'cjs |]
              | doc m%"
                Output extension for generated files.
                
                Defaults to `js`.
              "%
              | optional,
            preserveImportMeta | Bool | optional,
            strict
              | Bool
              | doc m%"
                By default, when using exports with babel a non-enumerable `__esModule`
                property is exported. In some cases this property is used to determine
                if the import is the default export or if it contains the default export.
                
                In order to prevent the __esModule property from being exported, you
                 can set the strict option to true.
                
                Defaults to `false`.
              "%
              | optional,
            strictMode
              | Bool
              | doc m%"
                Emits 'use strict' directive.
                
                Defaults to `true`.
              "%
              | optional,
            type | std.contract.Equal "commonjs" | optional,
            ..
          },
      "definitions.ConstModulesConfig" =
        { globals | { _ | { _ | String } } | optional, .. },
      "definitions.EnvConfig" =
        {
            bugfixes
              | Bool
              | doc m%"
                Transpiles the broken syntax to the closest non-broken modern syntax
                
                Defaults to false.
              "%
              | optional,
            coreJs | String | doc "The version of the used core js." | optional,
            debug | Bool | optional,
            dynamicImport | Bool | optional,
            exclude | Array String | optional,
            forceAllTransforms | Bool | doc "Enable all transforms" | optional,
            include | Array String | optional,
            loose | Bool | optional,
            mode | std.enum.TagOrString | [| 'usage, 'entry |] | optional,
            path | String | optional,
            shippedProposals | Bool | optional,
            skip | Array String | optional,
            targets | js2n.Always | optional,
            ..
          },
      "definitions.Es6Config" =
        {
            allowTopLevelThis | Bool | optional,
            exportInteropAnnotation
              | Bool
              | doc m%"
                Emits `cjs-module-lexer` annotation
                `cjs-module-lexer` is used in Node.js core for detecting the named exports available when importing a CJS module into ESM.
                swc will emit `cjs-module-lexer` detectable annotation with this option enabled.
                
                Defaults to `true` if import_interop is Node, else `false`
              "%
              | optional,
            ignoreDynamic
              | Bool
              | doc "If set to true, dynamic imports will be preserved."
              | optional,
            importInterop
              | std.enum.TagOrString
              | [| 'swc, 'none, 'node, 'babel |]
              | doc m%"
                Defaults to `swc`.
                
                CommonJS modules and ECMAScript modules are not fully compatible.
                However, compilers, bundlers and JavaScript runtimes developed different strategies
                to make them work together as well as possible.
                
                - `swc` (alias: `babel`)
                
                When using exports with `swc` a non-enumerable `__esModule` property is exported
                This property is then used to determine if the import is the default export
                or if it contains the default export.
                
                ```javascript
                import foo from "foo";
                import { bar } from "bar";
                foo;
                bar;
                
                // Is compiled to ...
                
                "use strict";
                
                function _interop_require_default(obj) {
                  return obj && obj.__esModule ? obj : { default: obj };
                }
                
                var _foo = _interop_require_default(require("foo"));
                var _bar = require("bar");
                
                _foo.default;
                _bar.bar;
                ```
                
                When this import interop is used, if both the imported and the importer module are compiled
                with swc they behave as if none of them was compiled.
                
                This is the default behavior.
                
                - `node`
                
                When importing CommonJS files (either directly written in CommonJS, or generated with a compiler)
                Node.js always binds the `default` export to the value of `module.exports`.
                
                ```javascript
                import foo from "foo";
                import { bar } from "bar";
                foo;
                bar;
                
                // Is compiled to ...
                
                "use strict";
                
                var _foo = require("foo");
                var _bar = require("bar");
                
                _foo;
                _bar.bar;
                ```
                This is not exactly the same as what Node.js does since swc allows accessing any property of `module.exports`
                as a named export, while Node.js only allows importing statically analyzable properties of `module.exports`.
                However, any import working in Node.js will also work when compiled with swc using `importInterop: "node"`.
                
                - `none`
                
                If you know that the imported file has been transformed with a compiler that stores the `default` export on
                `exports.default` (such as swc or Babel), you can safely omit the `_interop_require_default` helper.
                
                ```javascript
                import foo from "foo";
                import { bar } from "bar";
                foo;
                bar;
                
                // Is compiled to ...
                
                "use strict";
                
                var _foo = require("foo");
                var _bar = require("bar");
                
                _foo.default;
                _bar.bar;
                ```
              "%
              | optional,
            lazy
              | std.contract.any_of [ Array String, Bool ]
              | doc m%"
                Changes Babel's compiled import statements to be lazily evaluated when their imported bindings are used for the first time.
                
                This can improve initial load time of your module because evaluating dependencies up
                 front is sometimes entirely un-necessary. This is especially the case when implementing
                 a library module.
                
                
                The value of `lazy` has a few possible effects:
                
                 - `false` - No lazy initialization of any imported module.
                 - `true` - Do not lazy-initialize local `./foo` imports, but lazy-init `foo` dependencies.
                
                Local paths are much more likely to have circular dependencies, which may break if loaded lazily,
                so they are not lazy by default, whereas dependencies between independent modules are rarely cyclical.
                
                 - `Array<string>` - Lazy-initialize all imports with source matching one of the given strings.
                
                -----
                
                The two cases where imports can never be lazy are:
                
                 - `import "foo";`
                
                Side-effect imports are automatically non-lazy since their very existence means
                 that there is no binding to later kick off initialization.
                
                 - `export * from "foo"`
                
                Re-exporting all names requires up-front execution because otherwise there is no
                way to know what names need to be exported.
                
                Defaults to `false`.
              "%
              | optional,
            noInterop | Bool | optional,
            outFileExtension
              | std.enum.TagOrString
              | [| 'mjs, 'js, 'cjs |]
              | doc m%"
                Output extension for generated files.
                
                Defaults to `js`.
              "%
              | optional,
            preserveImportMeta | Bool | optional,
            strict
              | Bool
              | doc m%"
                By default, when using exports with babel a non-enumerable `__esModule`
                property is exported. In some cases this property is used to determine
                if the import is the default export or if it contains the default export.
                
                In order to prevent the __esModule property from being exported, you
                 can set the strict option to true.
                
                Defaults to `false`.
              "%
              | optional,
            strictMode
              | Bool
              | doc m%"
                Emits 'use strict' directive.
                
                Defaults to `true`.
              "%
              | optional,
            type | std.contract.Equal "es6" | optional,
            ..
          },
      "definitions.EsParserConfig" =
        {
            allowReturnOutsideFunction
              | Bool
              | doc "Defaults to `false`"
              | optional,
            allowSuperOutsideMethod
              | Bool
              | doc "Defaults to `false`"
              | optional,
            autoAccessors | Bool | doc "Defaults to `false`" | optional,
            classPrivateProperty | Bool | optional,
            classProperty | Bool | optional,
            decorators | Bool | doc "Defaults to `false`" | optional,
            decoratorsBeforeExport
              | Bool
              | doc "Defaults to `false`"
              | optional,
            dynamicImport | Bool | optional,
            explicitResourceManagement
              | Bool
              | doc "Defaults to `false`"
              | optional,
            exportDefaultFrom | Bool | doc "Defaults to `false`" | optional,
            exportNamespaceFrom | Bool | optional,
            functionBind | Bool | doc "Defaults to `false`" | optional,
            importAssertions | Bool | optional,
            importAttributes | Bool | doc "Defaults to `false`" | optional,
            importMeta | Bool | optional,
            jsx | Bool | doc "Defaults to false." | optional,
            nullishCoalescing | Bool | optional,
            numericSeparator | Bool | optional,
            optionalChaining | Bool | optional,
            privateMethod | Bool | optional,
            syntax | std.contract.Equal "ecmascript" | optional,
            topLevelAwait | Bool | optional,
            ..
          },
      "definitions.GlobalPassOption" =
        {
            envs
              | std.contract.any_of
                [
                  Array String,
                  std.contract.Sequence
                    [
                      refs."definitions.Record%3Cstring,string%3E",
                      { _ | Dyn }
                    ]
                ]
              | doc m%"
                Names of environment variables that should be inlined with the value of corresponding env during build.
                
                Defaults to `["NODE_ENV", "SWC_ENV"]`
              "%
              | optional,
            typeofs
              | refs."definitions.Record%3Cstring,string%3E"
              | { _ | Dyn }
              | doc m%"
                Replaces typeof calls for passed variables with corresponding value
                
                e.g. `{ window: 'object' }`
              "%
              | optional,
            vars
              | refs."definitions.Record%3Cstring,string%3E"
              | { _ | Dyn }
              | doc m%"
                Global variables that should be inlined with passed value.
                
                e.g. `{ __DEBUG__: true }`
              "%
              | optional,
            ..
          },
      "definitions.JsFormatOptions" =
        {
            asciiOnly | Bool | doc "Currently noop." | optional,
            beautify | Bool | doc "Currently noop." | optional,
            braces | Bool | doc "Currently noop." | optional,
            comments
              | js2n.Enum [ "all", false, "some" ]
              | doc m%"
                - `false`: removes all comments
                - `'some'`: preserves some comments
                - `'all'`: preserves all comments
              "%
              | optional,
            ecma
              | refs."definitions.TerserEcmaVersion"
              | std.contract.any_of [ Number, String ]
              | doc "Currently noop."
              | optional,
            indentLevel | Number | doc "Currently noop." | optional,
            indentStart | Number | doc "Currently noop." | optional,
            inlineScript | Bool | doc "Currently noop." | optional,
            keepNumbers | Number | doc "Currently noop." | optional,
            keepQuotedProps | Bool | doc "Currently noop." | optional,
            maxLineLen
              | std.contract.any_of [ std.contract.Equal false, Number ]
              | doc "Currently noop."
              | optional,
            preamble | String | doc "Currently noop." | optional,
            preserveAnnotations | Bool | doc "Currently noop." | optional,
            quoteKeys | Bool | doc "Currently noop." | optional,
            quoteStyle | Bool | doc "Currently noop." | optional,
            safari10 | Bool | doc "Currently noop." | optional,
            semicolons | Bool | doc "Currently noop." | optional,
            shebang | Bool | doc "Currently noop." | optional,
            webkit | Bool | doc "Currently noop." | optional,
            wrapFuncArgs | Bool | doc "Currently noop." | optional,
            wrapIife | Bool | doc "Currently noop." | optional,
            ..
          },
      "definitions.JsMinifyOptions" =
        {
            compress
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.TerserCompressOptions", { _ | Dyn } ],
                  Bool
                ]
              | optional,
            ecma
              | refs."definitions.TerserEcmaVersion"
              | std.contract.any_of [ Number, String ]
              | optional,
            format
              | refs."definitions.JsFormatOptions"
              | refs."definitions.ToSnakeCaseProperties%3CJsFormatOptions%3E"
              | { _ | Dyn }
              | optional,
            inlineSourcesContent | Bool | optional,
            keep_classnames | Bool | optional,
            keep_fnames | Bool | optional,
            mangle
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.TerserMangleOptions", { _ | Dyn } ],
                  Bool
                ]
              | optional,
            module | js2n.Enum [ false, true, "unknown" ] | optional,
            outputPath | String | optional,
            safari10 | Bool | optional,
            sourceMap | Bool | optional,
            toplevel | Bool | optional,
            ..
          },
      "definitions.JscConfig" =
        {
            assumptions
              | refs."definitions.Assumptions"
              | { _ | Dyn }
              | optional,
            baseUrl | String | optional,
            experimental
              | {
                cacheRoot
                  | String
                  | doc m%"
                    Specify the location where SWC stores its intermediate cache files.
                    Currently only transform plugin uses this. If not specified, SWC will
                    create `.swc` directories.
                  "%
                  | optional,
                disableAllLints
                  | Bool
                  | doc "Disable all lint rules."
                  | optional,
                disableBuiltinTransformsForInternalTesting
                  | Bool
                  | doc "Disable builtin transforms. If enabled, only Wasm plugins are used."
                  | optional,
                emitAssertForImportAttributes
                  | Bool
                  | doc m%"
                    Use `assert` instead of `with` for imports and exports.
                    This option only works when `keepImportAttributes` is `true`.
                  "%
                  | optional,
                emitIsolatedDts
                  | Bool
                  | doc "Emit isolated dts files for each module."
                  | optional,
                keepImportAssertions
                  | Bool
                  | doc "Keep import assertions."
                  | optional,
                keepImportAttributes
                  | Bool
                  | doc "Preserve `with` in imports and exports."
                  | optional,
                optimizeHygiene | Bool | optional,
                plugins
                  | Array (
                    std.contract.Sequence
                      [
                        js2n.array.MaxItems 2,
                        js2n.array.MinItems 2,
                        js2n.array.Items
                          [
                            String,
                            std.contract.Sequence
                              [
                                refs."definitions.Record%3Cstring,any%3E",
                                { _ | Dyn }
                              ]
                          ] js2n.Always
                      ]
                  )
                  | doc m%"
                    List of custom transform plugins written in WebAssembly.
                    First parameter of tuple indicates the name of the plugin - it can be either
                    a name of the npm package can be resolved, or absolute path to .wasm binary.
                    
                    Second parameter of tuple is JSON based configuration for the plugin.
                  "%
                  | optional,
                runPluginFirst
                  | Bool
                  | doc m%"
                    Run Wasm plugins before stripping TypeScript or decorators.
                    
                    See https://github.com/swc-project/swc/issues/9132 for more details.
                  "%
                  | optional,
                ..
              }
              | doc "This is experimental, and can be removed without a major version bump."
              | optional,
            externalHelpers
              | Bool
              | doc "Use `@swc/helpers` instead of inline helpers."
              | optional,
            keepClassNames | Bool | doc "Keep class names." | optional,
            loose | Bool | optional,
            minify
              | refs."definitions.JsMinifyOptions"
              | { _ | Dyn }
              | optional,
            parser
              | refs."definitions.ParserConfig"
              | doc "Defaults to EsParserConfig"
              | optional,
            paths | { _ | Array String } | optional,
            preserveAllComments | Bool | optional,
            target
              | refs."definitions.JscTarget"
              | String
              | doc "Defaults to `es3` (which enabled **all** pass)."
              | optional,
            transform
              | refs."definitions.TransformConfig"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.JscTarget" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'esnext,
                'es5,
                'es3,
                'es2024,
                'es2023,
                'es2022,
                'es2021,
                'es2020,
                'es2019,
                'es2018,
                'es2017,
                'es2016,
                'es2015
              |]
            ],
      "definitions.MatchPattern" = { _ | Dyn },
      "definitions.ModuleConfig" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.Es6Config", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.CommonJsConfig", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.UmdConfig", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.AmdConfig", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.NodeNextConfig", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.SystemjsConfig", { _ | Dyn } ]
            ],
      "definitions.NodeNextConfig" =
        {
            allowTopLevelThis | Bool | optional,
            exportInteropAnnotation
              | Bool
              | doc m%"
                Emits `cjs-module-lexer` annotation
                `cjs-module-lexer` is used in Node.js core for detecting the named exports available when importing a CJS module into ESM.
                swc will emit `cjs-module-lexer` detectable annotation with this option enabled.
                
                Defaults to `true` if import_interop is Node, else `false`
              "%
              | optional,
            ignoreDynamic
              | Bool
              | doc "If set to true, dynamic imports will be preserved."
              | optional,
            importInterop
              | std.enum.TagOrString
              | [| 'swc, 'none, 'node, 'babel |]
              | doc m%"
                Defaults to `swc`.
                
                CommonJS modules and ECMAScript modules are not fully compatible.
                However, compilers, bundlers and JavaScript runtimes developed different strategies
                to make them work together as well as possible.
                
                - `swc` (alias: `babel`)
                
                When using exports with `swc` a non-enumerable `__esModule` property is exported
                This property is then used to determine if the import is the default export
                or if it contains the default export.
                
                ```javascript
                import foo from "foo";
                import { bar } from "bar";
                foo;
                bar;
                
                // Is compiled to ...
                
                "use strict";
                
                function _interop_require_default(obj) {
                  return obj && obj.__esModule ? obj : { default: obj };
                }
                
                var _foo = _interop_require_default(require("foo"));
                var _bar = require("bar");
                
                _foo.default;
                _bar.bar;
                ```
                
                When this import interop is used, if both the imported and the importer module are compiled
                with swc they behave as if none of them was compiled.
                
                This is the default behavior.
                
                - `node`
                
                When importing CommonJS files (either directly written in CommonJS, or generated with a compiler)
                Node.js always binds the `default` export to the value of `module.exports`.
                
                ```javascript
                import foo from "foo";
                import { bar } from "bar";
                foo;
                bar;
                
                // Is compiled to ...
                
                "use strict";
                
                var _foo = require("foo");
                var _bar = require("bar");
                
                _foo;
                _bar.bar;
                ```
                This is not exactly the same as what Node.js does since swc allows accessing any property of `module.exports`
                as a named export, while Node.js only allows importing statically analyzable properties of `module.exports`.
                However, any import working in Node.js will also work when compiled with swc using `importInterop: "node"`.
                
                - `none`
                
                If you know that the imported file has been transformed with a compiler that stores the `default` export on
                `exports.default` (such as swc or Babel), you can safely omit the `_interop_require_default` helper.
                
                ```javascript
                import foo from "foo";
                import { bar } from "bar";
                foo;
                bar;
                
                // Is compiled to ...
                
                "use strict";
                
                var _foo = require("foo");
                var _bar = require("bar");
                
                _foo.default;
                _bar.bar;
                ```
              "%
              | optional,
            lazy
              | std.contract.any_of [ Array String, Bool ]
              | doc m%"
                Changes Babel's compiled import statements to be lazily evaluated when their imported bindings are used for the first time.
                
                This can improve initial load time of your module because evaluating dependencies up
                 front is sometimes entirely un-necessary. This is especially the case when implementing
                 a library module.
                
                
                The value of `lazy` has a few possible effects:
                
                 - `false` - No lazy initialization of any imported module.
                 - `true` - Do not lazy-initialize local `./foo` imports, but lazy-init `foo` dependencies.
                
                Local paths are much more likely to have circular dependencies, which may break if loaded lazily,
                so they are not lazy by default, whereas dependencies between independent modules are rarely cyclical.
                
                 - `Array<string>` - Lazy-initialize all imports with source matching one of the given strings.
                
                -----
                
                The two cases where imports can never be lazy are:
                
                 - `import "foo";`
                
                Side-effect imports are automatically non-lazy since their very existence means
                 that there is no binding to later kick off initialization.
                
                 - `export * from "foo"`
                
                Re-exporting all names requires up-front execution because otherwise there is no
                way to know what names need to be exported.
                
                Defaults to `false`.
              "%
              | optional,
            noInterop | Bool | optional,
            outFileExtension
              | std.enum.TagOrString
              | [| 'mjs, 'js, 'cjs |]
              | doc m%"
                Output extension for generated files.
                
                Defaults to `js`.
              "%
              | optional,
            preserveImportMeta | Bool | optional,
            strict
              | Bool
              | doc m%"
                By default, when using exports with babel a non-enumerable `__esModule`
                property is exported. In some cases this property is used to determine
                if the import is the default export or if it contains the default export.
                
                In order to prevent the __esModule property from being exported, you
                 can set the strict option to true.
                
                Defaults to `false`.
              "%
              | optional,
            strictMode
              | Bool
              | doc m%"
                Emits 'use strict' directive.
                
                Defaults to `true`.
              "%
              | optional,
            type | std.contract.Equal "nodenext" | optional,
            ..
          },
      "definitions.OptimizerConfig" =
        {
            globals
              | refs."definitions.GlobalPassOption"
              | { _ | Dyn }
              | optional,
            jsonify | { minCost | Number | optional, .. } | optional,
            simplify | Bool | optional,
            ..
          },
      "definitions.ParserConfig" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.TsParserConfig", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.EsParserConfig", { _ | Dyn } ]
            ],
      "definitions.Plugin" = { _ | Dyn },
      "definitions.ReactConfig" =
        {
            development
              | Bool
              | doc "Toggles plugins that aid in development, such as"
              | optional,
            importSource
              | String
              | doc "Declares the module specifier to be used for importing the `jsx` and `jsxs` factory functions when using `runtime` 'automatic'"
              | optional,
            pragma
              | String
              | doc m%"
                Replace the function used when compiling JSX expressions.
                
                Defaults to `React.createElement`.
              "%
              | optional,
            pragmaFrag
              | String
              | doc m%"
                Replace the component used when compiling JSX fragments.
                
                Defaults to `React.Fragment`
              "%
              | optional,
            refresh
              | std.contract.any_of
                [
                  {
                    emitFullSignatures
                      | Bool
                      | doc m%"
                        Flag to emit full signatures.
                        
                        Defaults to `false`
                      "%
                      | optional,
                    refreshReg
                      | String
                      | doc m%"
                        Identifier for the `react-refresh` register function.
                        
                        Defaults to `$RefreshReg$`
                      "%
                      | optional,
                    refreshSig
                      | String
                      | doc m%"
                        Identifier for the `react-refresh` signature function.
                        
                        Defaults to `$RefreshSig$`
                      "%
                      | optional,
                    ..
                  },
                  Bool
                ]
              | doc "Enable fast refresh feature for React app"
              | optional,
            runtime
              | std.enum.TagOrString
              | [| 'classic, 'automatic |]
              | doc "jsx runtime"
              | optional,
            throwIfNamespace
              | Bool
              | doc m%"
                Toggles whether or not to throw an error if a XML namespaced tag name is used. For example:
                `<f:image />`
                
                Though the JSX spec allows this, it is disabled by default since React's
                JSX does not currently have support for it.
              "%
              | optional,
            useBuiltins
              | Bool
              | doc "Use `Object.assign()` instead of `_extends`. Defaults to false."
              | optional,
            ..
          },
      "definitions.Record%3Cstring,any%3E" = { _ | Dyn },
      "definitions.Record%3Cstring,string%3E" = { _ | Dyn },
      "definitions.SystemjsConfig" =
        {
            allowTopLevelThis | Bool | optional,
            type | std.contract.Equal "systemjs" | optional,
            ..
          },
      "definitions.TerserCompressOptions" =
        {
            arguments | Bool | optional,
            arrows | Bool | optional,
            booleans | Bool | optional,
            booleans_as_integers | Bool | optional,
            collapse_vars | Bool | optional,
            comparisons | Bool | optional,
            computed_props | Bool | optional,
            conditionals | Bool | optional,
            const_to_let | Bool | optional,
            dead_code | Bool | optional,
            defaults | Bool | optional,
            directives | Bool | optional,
            drop_console | Bool | optional,
            drop_debugger | Bool | optional,
            ecma
              | refs."definitions.TerserEcmaVersion"
              | std.contract.any_of [ Number, String ]
              | optional,
            evaluate | Bool | optional,
            expression | Bool | optional,
            global_defs | js2n.Always | optional,
            hoist_funs | Bool | optional,
            hoist_props | Bool | optional,
            hoist_vars | Bool | optional,
            ie8 | Bool | optional,
            if_return | Bool | optional,
            inline | js2n.Enum [ 0, 1, 2, 3 ] | optional,
            join_vars | Bool | optional,
            keep_classnames | Bool | optional,
            keep_fargs | Bool | optional,
            keep_fnames | Bool | optional,
            keep_infinity | Bool | optional,
            loops | Bool | optional,
            module | Bool | optional,
            negate_iife | Bool | optional,
            passes | Number | optional,
            properties | Bool | optional,
            pure_funcs | Array String | optional,
            pure_getters | js2n.Always | optional,
            reduce_funcs | Bool | optional,
            reduce_vars | Bool | optional,
            sequences | js2n.Always | optional,
            side_effects | Bool | optional,
            switches | Bool | optional,
            top_retain | js2n.Always | optional,
            toplevel | js2n.Always | optional,
            typeofs | Bool | optional,
            unsafe | Bool | optional,
            unsafe_arrows | Bool | optional,
            unsafe_comps | Bool | optional,
            unsafe_function | Bool | optional,
            unsafe_math | Bool | optional,
            unsafe_methods | Bool | optional,
            unsafe_passes | Bool | optional,
            unsafe_proto | Bool | optional,
            unsafe_regexp | Bool | optional,
            unsafe_symbols | Bool | optional,
            unsafe_undefined | Bool | optional,
            unused | Bool | optional,
            ..
          },
      "definitions.TerserEcmaVersion" = std.contract.any_of [ Number, String ],
      "definitions.TerserMangleOptions" =
        {
            ie8 | Bool | optional,
            keepClassNames
              | Bool
              | doc "Pass `true` to not mangle class names."
              | optional,
            keepFnNames
              | Bool
              | doc "Pass `true` to not mangle function names."
              | optional,
            keepPrivateProps
              | Bool
              | doc "Pass `true` to not mangle private props."
              | optional,
            keep_classnames | Bool | optional,
            keep_fnames | Bool | optional,
            keep_private_props | Bool | optional,
            props
              | refs."definitions.TerserManglePropertiesOptions"
              | { _ | Dyn }
              | optional,
            reserved | Array String | optional,
            safari10 | Bool | optional,
            topLevel
              | Bool
              | doc "Pass `true` to mangle names declared in the top level scope."
              | optional,
            toplevel | Bool | optional,
            ..
          },
      "definitions.TerserManglePropertiesOptions" = { _ | Dyn },
      "definitions.ToSnakeCaseProperties%3CJsFormatOptions%3E" =
        {
            ascii_only | Bool | optional,
            beautify | Bool | optional,
            braces | Bool | optional,
            comments | js2n.Enum [ "all", false, "some" ] | optional,
            ecma
              | refs."definitions.TerserEcmaVersion"
              | std.contract.any_of [ Number, String ]
              | optional,
            indent_level | Number | optional,
            indent_start | Number | optional,
            inline_script | Bool | optional,
            keep_numbers | Number | optional,
            keep_quoted_props | Bool | optional,
            max_line_len
              | std.contract.any_of [ std.contract.Equal false, Number ]
              | optional,
            preamble | String | optional,
            preserve_annotations | Bool | optional,
            quote_keys | Bool | optional,
            quote_style | Bool | optional,
            safari10 | Bool | optional,
            semicolons | Bool | optional,
            shebang | Bool | optional,
            webkit | Bool | optional,
            wrap_func_args | Bool | optional,
            wrap_iife | Bool | optional,
            ..
          },
      "definitions.TransformConfig" =
        {
            constModules
              | refs."definitions.ConstModulesConfig"
              | { _ | Dyn }
              | optional,
            decoratorMetadata
              | Bool
              | doc "https://swc.rs/docs/configuration/compilation#jsctransformdecoratormetadata"
              | optional,
            decoratorVersion
              | std.enum.TagOrString
              | [| '"2022-03", '"2021-12" |]
              | doc "https://swc.rs/docs/configuration/compilation#jsctransformdecoratorversion"
              | optional,
            legacyDecorator
              | Bool
              | doc "https://swc.rs/docs/configuration/compilation#jsctransformlegacydecorator"
              | optional,
            optimizer
              | refs."definitions.OptimizerConfig"
              | { _ | Dyn }
              | doc "Defaults to null, which skips optimizer pass."
              | optional,
            react
              | refs."definitions.ReactConfig"
              | { _ | Dyn }
              | doc "Effective only if `syntax` supports ƒ."
              | optional,
            treatConstEnumAsEnum | Bool | optional,
            useDefineForClassFields
              | Bool
              | doc "https://www.typescriptlang.org/tsconfig#useDefineForClassFields"
              | optional,
            verbatimModuleSyntax
              | Bool
              | doc "https://www.typescriptlang.org/tsconfig#verbatimModuleSyntax"
              | optional,
            ..
          },
      "definitions.TsParserConfig" =
        {
            decorators | Bool | doc "Defaults to `false`." | optional,
            dynamicImport | Bool | optional,
            syntax | std.contract.Equal "typescript" | optional,
            tsx | Bool | doc "Defaults to `false`." | optional,
            ..
          },
      "definitions.UmdConfig" =
        {
            allowTopLevelThis | Bool | optional,
            exportInteropAnnotation
              | Bool
              | doc m%"
                Emits `cjs-module-lexer` annotation
                `cjs-module-lexer` is used in Node.js core for detecting the named exports available when importing a CJS module into ESM.
                swc will emit `cjs-module-lexer` detectable annotation with this option enabled.
                
                Defaults to `true` if import_interop is Node, else `false`
              "%
              | optional,
            globals | { _ | String } | optional,
            ignoreDynamic
              | Bool
              | doc "If set to true, dynamic imports will be preserved."
              | optional,
            importInterop
              | std.enum.TagOrString
              | [| 'swc, 'none, 'node, 'babel |]
              | doc m%"
                Defaults to `swc`.
                
                CommonJS modules and ECMAScript modules are not fully compatible.
                However, compilers, bundlers and JavaScript runtimes developed different strategies
                to make them work together as well as possible.
                
                - `swc` (alias: `babel`)
                
                When using exports with `swc` a non-enumerable `__esModule` property is exported
                This property is then used to determine if the import is the default export
                or if it contains the default export.
                
                ```javascript
                import foo from "foo";
                import { bar } from "bar";
                foo;
                bar;
                
                // Is compiled to ...
                
                "use strict";
                
                function _interop_require_default(obj) {
                  return obj && obj.__esModule ? obj : { default: obj };
                }
                
                var _foo = _interop_require_default(require("foo"));
                var _bar = require("bar");
                
                _foo.default;
                _bar.bar;
                ```
                
                When this import interop is used, if both the imported and the importer module are compiled
                with swc they behave as if none of them was compiled.
                
                This is the default behavior.
                
                - `node`
                
                When importing CommonJS files (either directly written in CommonJS, or generated with a compiler)
                Node.js always binds the `default` export to the value of `module.exports`.
                
                ```javascript
                import foo from "foo";
                import { bar } from "bar";
                foo;
                bar;
                
                // Is compiled to ...
                
                "use strict";
                
                var _foo = require("foo");
                var _bar = require("bar");
                
                _foo;
                _bar.bar;
                ```
                This is not exactly the same as what Node.js does since swc allows accessing any property of `module.exports`
                as a named export, while Node.js only allows importing statically analyzable properties of `module.exports`.
                However, any import working in Node.js will also work when compiled with swc using `importInterop: "node"`.
                
                - `none`
                
                If you know that the imported file has been transformed with a compiler that stores the `default` export on
                `exports.default` (such as swc or Babel), you can safely omit the `_interop_require_default` helper.
                
                ```javascript
                import foo from "foo";
                import { bar } from "bar";
                foo;
                bar;
                
                // Is compiled to ...
                
                "use strict";
                
                var _foo = require("foo");
                var _bar = require("bar");
                
                _foo.default;
                _bar.bar;
                ```
              "%
              | optional,
            lazy
              | std.contract.any_of [ Array String, Bool ]
              | doc m%"
                Changes Babel's compiled import statements to be lazily evaluated when their imported bindings are used for the first time.
                
                This can improve initial load time of your module because evaluating dependencies up
                 front is sometimes entirely un-necessary. This is especially the case when implementing
                 a library module.
                
                
                The value of `lazy` has a few possible effects:
                
                 - `false` - No lazy initialization of any imported module.
                 - `true` - Do not lazy-initialize local `./foo` imports, but lazy-init `foo` dependencies.
                
                Local paths are much more likely to have circular dependencies, which may break if loaded lazily,
                so they are not lazy by default, whereas dependencies between independent modules are rarely cyclical.
                
                 - `Array<string>` - Lazy-initialize all imports with source matching one of the given strings.
                
                -----
                
                The two cases where imports can never be lazy are:
                
                 - `import "foo";`
                
                Side-effect imports are automatically non-lazy since their very existence means
                 that there is no binding to later kick off initialization.
                
                 - `export * from "foo"`
                
                Re-exporting all names requires up-front execution because otherwise there is no
                way to know what names need to be exported.
                
                Defaults to `false`.
              "%
              | optional,
            noInterop | Bool | optional,
            outFileExtension
              | std.enum.TagOrString
              | [| 'mjs, 'js, 'cjs |]
              | doc m%"
                Output extension for generated files.
                
                Defaults to `js`.
              "%
              | optional,
            preserveImportMeta | Bool | optional,
            strict
              | Bool
              | doc m%"
                By default, when using exports with babel a non-enumerable `__esModule`
                property is exported. In some cases this property is used to determine
                if the import is the default export or if it contains the default export.
                
                In order to prevent the __esModule property from being exported, you
                 can set the strict option to true.
                
                Defaults to `false`.
              "%
              | optional,
            strictMode
              | Bool
              | doc m%"
                Emits 'use strict' directive.
                
                Defaults to `true`.
              "%
              | optional,
            type | std.contract.Equal "umd" | optional,
            ..
          },
    }
    in
  {
      caller | refs."definitions.CallerOptions" | optional,
      configFile
        | std.contract.any_of [ Bool, String ]
        | doc m%"
          Defaults to searching for a default `.swcrc` file, but can
          be passed the path of any JS or JSON5 config file.
          
          
          NOTE: This option does not affect loading of .swcrc files,
          so while it may be tempting to do configFile: "./foo/.swcrc",
          it is not recommended. If the given .swcrc is loaded via the
          standard file-relative logic, you'll end up loading the same
          config file twice, merging it with itself. If you are linking
          a specific config file, it is recommended to stick with a
          naming scheme that is independent of the "swcrc" name.
          
          Defaults to `path.resolve(opts.root, ".swcrc")`
        "%
        | optional,
      cwd
        | String
        | doc m%"
          The working directory that all paths in the programmatic
          options will be resolved relative to.
          
          Defaults to `process.cwd()`.
        "%
        | optional,
      env | refs."definitions.EnvConfig" | optional,
      envName
        | String
        | doc m%"
          The current active environment used during configuration loading.
          This value is used as the key when resolving "env" configs,
          and is also available inside configuration functions, plugins,
          and presets, via the api.env() function.
          
          Defaults to `process.env.SWC_ENV || process.env.NODE_ENV || "development"`
        "%
        | optional,
      exclude
        | std.contract.any_of [ Array String, String ]
        | doc "Note: The type is string because it follows rust's regex syntax."
        | optional,
      filename
        | String
        | doc m%"
          The filename associated with the code currently being compiled,
          if there is one. The filename is optional, but not all of Swc's
          functionality is available when the filename is unknown, because a
          subset of options rely on the filename for their functionality.
          
          The three primary cases users could run into are:
          
          - The filename is exposed to plugins. Some plugins may require the
          presence of the filename.
          - Options like "test", "exclude", and "ignore" require the filename
          for string/RegExp matching.
          - .swcrc files are loaded relative to the file being compiled.
          If this option is omitted, Swc will behave as if swcrc: false has been set.
        "%
        | optional,
      inlineSourcesContent | Bool | optional,
      inputSourceMap
        | std.contract.any_of [ Bool, String ]
        | doc m%"
          `true` will attempt to load an input sourcemap from the file itself, if it
          contains a //# sourceMappingURL=... comment. If no map is found, or the
          map fails to load and parse, it will be silently discarded.
          
           If an object is provided, it will be treated as the source map object itself.
          
          Defaults to `true`.
        "%
        | optional,
      isModule | js2n.Enum [ false, true, "unknown" ] | optional,
      jsc | refs."definitions.JscConfig" | optional,
      minify | Bool | optional,
      module | refs."definitions.ModuleConfig" | optional,
      outputPath
        | String
        | doc m%"
          Destination path. Note that this value is used only to fix source path
          of source map files and swc does not write output to this path.
        "%
        | optional,
      plugin | refs."definitions.Plugin" | optional,
      root
        | String
        | doc m%"
          The initial path that will be processed based on the "rootMode" to
          determine the conceptual root folder for the current Swc project.
          This is used in two primary cases:
          
          - The base directory when checking for the default "configFile" value
          - The default value for "swcrcRoots".
          
          Defaults to `opts.cwd`
        "%
        | optional,
      rootMode
        | std.enum.TagOrString
        | [| 'upward-optional, 'upward, 'root |]
        | doc m%"
          This option, combined with the "root" value, defines how Swc chooses
          its project root. The different modes define different ways that Swc
          can process the "root" value to get the final project root.
          
          "root" - Passes the "root" value through as unchanged.
          "upward" - Walks upward from the "root" directory, looking for a directory
          containing a swc.config.js file, and throws an error if a swc.config.js
          is not found.
          "upward-optional" - Walk upward from the "root" directory, looking for
          a directory containing a swc.config.js file, and falls back to "root"
           if a swc.config.js is not found.
          
          
          "root" is the default mode because it avoids the risk that Swc
          will accidentally load a swc.config.js that is entirely outside
          of the current project folder. If you use "upward-optional",
          be aware that it will walk up the directory structure all the
          way to the filesystem root, and it is always possible that someone
          will have a forgotten swc.config.js in their home directory,
          which could cause unexpected errors in your builds.
          
          
          Users with monorepo project structures that run builds/tests on a
          per-package basis may well want to use "upward" since monorepos
          often have a swc.config.js in the project root. Running Swc
          in a monorepo subdirectory without "upward", will cause Swc
          to skip loading any swc.config.js files in the project root,
          which can lead to unexpected errors and compilation failure.
        "%
        | optional,
      script
        | Bool
        | doc "If true, a file is parsed as a script instead of module."
        | optional,
      sourceFileName
        | String
        | doc m%"
          The name to use for the file inside the source map object.
          
          Defaults to `path.basename(opts.filenameRelative)` when available, or `"unknown"`.
        "%
        | optional,
      sourceMaps
        | js2n.Enum [ false, "inline", true ]
        | doc m%"
          - true to generate a sourcemap for the code and include it in the result object.
          - "inline" to generate a sourcemap and append it as a data URL to the end of the code, but not include it in the result object.
          
          `swc-cli` overloads some of these to also affect how maps are written to disk:
          
          - true will write the map to a .map file on disk
          - "inline" will write the file directly, so it will have a data: containing the map
          - Note: These options are bit weird, so it may make the most sense to just use true
           and handle the rest in your own code, depending on your use case.
        "%
        | optional,
      sourceRoot
        | String
        | doc "The sourceRoot fields to set in the generated source map, if one is desired."
        | optional,
      swcrc
        | Bool
        | doc m%"
          true will enable searching for configuration files relative to the "filename" provided to Swc.
          
          A swcrc value passed in the programmatic options will override one set within a configuration file.
          
          Note: .swcrc files are only loaded if the current "filename" is inside of
           a package that matches one of the "swcrcRoots" packages.
          
          
          Defaults to true as long as the filename option has been specified
        "%
        | optional,
      swcrcRoots
        | std.contract.any_of
          [
            refs."definitions.MatchPattern",
            Array refs."definitions.MatchPattern",
            Bool
          ]
        | doc m%"
          By default, Babel will only search for .babelrc files within the "root" package
           because otherwise Babel cannot know if a given .babelrc is meant to be loaded,
           or if it's "plugins" and "presets" have even been installed, since the file
           being compiled could be inside node_modules, or have been symlinked into the project.
          
          
          This option allows users to provide a list of other packages that should be
          considered "root" packages when considering whether to load .babelrc files.
          
          
          For example, a monorepo setup that wishes to allow individual packages
          to have their own configs might want to do
          
          
          
          Defaults to `opts.root`
        "%
        | optional,
      test
        | std.contract.any_of [ Array String, String ]
        | doc "Note: The type is string because it follows rust's regex syntax."
        | optional,
      ..
    }