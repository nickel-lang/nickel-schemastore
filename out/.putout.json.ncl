# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.rule" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'off, 'on |] ],
              std.contract.Sequence
                [
                  js2n.array.MinItems 2,
                  js2n.array.Items
                    [
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| 'off, 'on |] ],
                      { _ | Dyn }
                    ] js2n.Never
                ],
              std.contract.Sequence
                [
                  js2n.array.MinItems 3,
                  js2n.array.Items
                    [
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| 'off, 'on |] ],
                      String,
                      { _ | Dyn }
                    ] js2n.Never
                ],
              std.contract.Sequence
                [
                  js2n.array.MinItems 2,
                  js2n.array.Items
                    [
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| 'off, 'on |] ],
                      String
                    ] js2n.Never
                ]
            ],
      "definitions.rules" =
        {
            apply-at | refs."definitions.rule" | optional,
            apply-destructuring | refs."definitions.rule" | optional,
            apply-montag | refs."definitions.rule" | optional,
            apply-nullish-coalescing | refs."definitions.rule" | optional,
            apply-shorthand-properties | refs."definitions.rule" | optional,
            assignment | refs."definitions.rule" | optional,
            "assignment/convert-to-arrow-function"
              | refs."definitions.rule"
              | optional,
            "assignment/convert-to-comparison"
              | refs."definitions.rule"
              | optional,
            "assignment/convert-to-declaration"
              | refs."definitions.rule"
              | optional,
            "assignment/simplify" | refs."definitions.rule" | optional,
            "assignment/split" | refs."definitions.rule" | optional,
            browserlist | refs."definitions.rule" | optional,
            cloudcmd | refs."definitions.rule" | optional,
            conditions | refs."definitions.rule" | optional,
            "conditions/apply-comparison-order"
              | refs."definitions.rule"
              | optional,
            "conditions/apply-if" | refs."definitions.rule" | optional,
            "conditions/convert-comparison-to-boolean"
              | refs."definitions.rule"
              | optional,
            "conditions/convert-equal-to-strict-equal"
              | refs."definitions.rule"
              | optional,
            "conditions/evaluate" | refs."definitions.rule" | optional,
            "conditions/merge-if-statements"
              | refs."definitions.rule"
              | optional,
            "conditions/remove-boolean" | refs."definitions.rule" | optional,
            "conditions/remove-constant" | refs."definitions.rule" | optional,
            "conditions/remove-useless-else"
              | refs."definitions.rule"
              | optional,
            "conditions/simplify" | refs."definitions.rule" | optional,
            convert-apply-to-spread | refs."definitions.rule" | optional,
            convert-arguments-to-rest | refs."definitions.rule" | optional,
            convert-array-copy-to-slice | refs."definitions.rule" | optional,
            convert-bitwise-to-logical | refs."definitions.rule" | optional,
            convert-concat-to-flat | refs."definitions.rule" | optional,
            convert-index-of-to-includes | refs."definitions.rule" | optional,
            convert-is-nan-to-number-is-nan
              | refs."definitions.rule"
              | optional,
            convert-math-pow | refs."definitions.rule" | optional,
            convert-mock-require-to-mock-import
              | refs."definitions.rule"
              | optional,
            convert-object-assign-to-merge-spread
              | refs."definitions.rule"
              | optional,
            convert-quotes-to-backticks | refs."definitions.rule" | optional,
            convert-spread-to-array-from | refs."definitions.rule" | optional,
            convert-template-to-string | refs."definitions.rule" | optional,
            convert-throw | refs."definitions.rule" | optional,
            convert-to-arrow-function | refs."definitions.rule" | optional,
            declare | refs."definitions.rule" | optional,
            eslint | refs."definitions.rule" | optional,
            esm | refs."definitions.rule" | optional,
            "esm/convert-assert-to-with" | refs."definitions.rule" | optional,
            "esm/declare-imports-first" | refs."definitions.rule" | optional,
            "esm/group-imports-by-source" | refs."definitions.rule" | optional,
            "esm/merge-duplicate-imports" | refs."definitions.rule" | optional,
            "esm/remove-empty-export" | refs."definitions.rule" | optional,
            "esm/remove-empty-import" | refs."definitions.rule" | optional,
            "esm/remove-quotes-from-import-assertions"
              | refs."definitions.rule"
              | optional,
            "esm/sort-imports-by-specifier"
              | refs."definitions.rule"
              | optional,
            extract-object-properties | refs."definitions.rule" | optional,
            extract-sequence-expressions | refs."definitions.rule" | optional,
            "for-of/for" | refs."definitions.rule" | optional,
            "for-of/for-each" | refs."definitions.rule" | optional,
            "for-of/for-in" | refs."definitions.rule" | optional,
            "for-of/map" | refs."definitions.rule" | optional,
            "for-of/remove-unused-variables"
              | refs."definitions.rule"
              | optional,
            "for-of/remove-useless" | refs."definitions.rule" | optional,
            "for-of/remove-useless-array-from"
              | refs."definitions.rule"
              | optional,
            github | refs."definitions.rule" | optional,
            gitignore | refs."definitions.rule" | optional,
            jest | refs."definitions.rule" | optional,
            label | refs."definitions.rule" | optional,
            "label/convert-to-object" | refs."definitions.rule" | optional,
            "label/remove-unused" | refs."definitions.rule" | optional,
            madrun | refs."definitions.rule" | optional,
            math | refs."definitions.rule" | optional,
            "math/apply-exponentiation" | refs."definitions.rule" | optional,
            "math/apply-multiplication" | refs."definitions.rule" | optional,
            "math/apply-numeric-separators"
              | refs."definitions.rule"
              | optional,
            "math/convert-sqrt-to-hypot" | refs."definitions.rule" | optional,
            "math/declare" | refs."definitions.rule" | optional,
            "math/remove-unchanged-zero-declarations"
              | refs."definitions.rule"
              | optional,
            maybe | refs."definitions.rule" | optional,
            merge-destructuring-properties | refs."definitions.rule" | optional,
            nodejs | refs."definitions.rule" | optional,
            "nodejs/add-missing-strict-mode"
              | refs."definitions.rule"
              | optional,
            "nodejs/cjs-file" | refs."definitions.rule" | optional,
            "nodejs/convert-commonjs-to-esm"
              | refs."definitions.rule"
              | optional,
            "nodejs/convert-dirname-to-url"
              | refs."definitions.rule"
              | optional,
            "nodejs/convert-esm-to-commonjs"
              | refs."definitions.rule"
              | optional,
            "nodejs/convert-fs-promises" | refs."definitions.rule" | optional,
            "nodejs/convert-promisify-to-fs-promises"
              | refs."definitions.rule"
              | optional,
            "nodejs/convert-top-level-return"
              | refs."definitions.rule"
              | optional,
            "nodejs/mjs-file" | refs."definitions.rule" | optional,
            "nodejs/remove-process-exit" | refs."definitions.rule" | optional,
            "nodejs/remove-useless-strict-mode"
              | refs."definitions.rule"
              | optional,
            "nodejs/rename-file-mjs-to-js" | refs."definitions.rule" | optional,
            npmignore | refs."definitions.rule" | optional,
            optional-chaining | refs."definitions.rule" | optional,
            "optional-chaining/convert-logical-assign-to-optional"
              | refs."definitions.rule"
              | optional,
            "optional-chaining/convert-logical-to-optional"
              | refs."definitions.rule"
              | optional,
            "optional-chaining/convert-optional-assign-to-logical"
              | refs."definitions.rule"
              | optional,
            "optional-chaining/convert-optional-to-logical"
              | refs."definitions.rule"
              | optional,
            package-json | refs."definitions.rule" | optional,
            parens | refs."definitions.rule" | optional,
            "parens/add-missing" | refs."definitions.rule" | optional,
            postcss | refs."definitions.rule" | optional,
            promises | refs."definitions.rule" | optional,
            "promises/add-missing-await" | refs."definitions.rule" | optional,
            "promises/apply-await-import" | refs."definitions.rule" | optional,
            "promises/apply-top-level-await"
              | refs."definitions.rule"
              | optional,
            "promises/convert-new-promise-to-async"
              | refs."definitions.rule"
              | optional,
            "promises/convert-reject-to-throw"
              | refs."definitions.rule"
              | optional,
            "promises/remove-useless-async"
              | refs."definitions.rule"
              | optional,
            "promises/remove-useless-await"
              | refs."definitions.rule"
              | optional,
            "promises/remove-useless-resolve"
              | refs."definitions.rule"
              | optional,
            putout | refs."definitions.rule" | optional,
            putout-config | refs."definitions.rule" | optional,
            "putout/add-args" | refs."definitions.rule" | optional,
            "putout/add-index-to-import" | refs."definitions.rule" | optional,
            "putout/add-push" | refs."definitions.rule" | optional,
            "putout/apply-async-formatter" | refs."definitions.rule" | optional,
            "putout/apply-create-test" | refs."definitions.rule" | optional,
            "putout/apply-declare" | refs."definitions.rule" | optional,
            "putout/apply-insert-after" | refs."definitions.rule" | optional,
            "putout/apply-insert-before" | refs."definitions.rule" | optional,
            "putout/apply-namaspace-specifier"
              | refs."definitions.rule"
              | optional,
            "putout/apply-processors-destructuring"
              | refs."definitions.rule"
              | optional,
            "putout/apply-remove" | refs."definitions.rule" | optional,
            "putout/check-match" | refs."definitions.rule" | optional,
            "putout/check-replace-code" | refs."definitions.rule" | optional,
            "putout/convert-add-argument-to-add-args"
              | refs."definitions.rule"
              | optional,
            "putout/convert-babel-types" | refs."definitions.rule" | optional,
            "putout/convert-destructuring-to-identifier"
              | refs."definitions.rule"
              | optional,
            "putout/convert-dirname-to-url"
              | refs."definitions.rule"
              | optional,
            "putout/convert-find-to-traverse"
              | refs."definitions.rule"
              | optional,
            "putout/convert-get-rule-to-require"
              | refs."definitions.rule"
              | optional,
            "putout/convert-match-to-function"
              | refs."definitions.rule"
              | optional,
            "putout/convert-method-to-property"
              | refs."definitions.rule"
              | optional,
            "putout/convert-node-to-path-in-get-template-values"
              | refs."definitions.rule"
              | optional,
            "putout/convert-number-to-numeric"
              | refs."definitions.rule"
              | optional,
            "putout/convert-process-to-find"
              | refs."definitions.rule"
              | optional,
            "putout/convert-putout-test-to-create-test"
              | refs."definitions.rule"
              | optional,
            "putout/convert-replace-to-function"
              | refs."definitions.rule"
              | optional,
            "putout/convert-replace-with" | refs."definitions.rule" | optional,
            "putout/convert-replace-with-multiple"
              | refs."definitions.rule"
              | optional,
            "putout/convert-report-to-function"
              | refs."definitions.rule"
              | optional,
            "putout/convert-to-no-transform-code"
              | refs."definitions.rule"
              | optional,
            "putout/convert-traverse-to-include"
              | refs."definitions.rule"
              | optional,
            "putout/convert-traverse-to-replace"
              | refs."definitions.rule"
              | optional,
            "putout/convert-url-to-dirname"
              | refs."definitions.rule"
              | optional,
            "putout/create-test" | refs."definitions.rule" | optional,
            "putout/declare" | refs."definitions.rule" | optional,
            "putout/includer" | refs."definitions.rule" | optional,
            "putout/insert-rust" | refs."definitions.rule" | optional,
            "putout/move-require-on-top-level"
              | refs."definitions.rule"
              | optional,
            "putout/rename-operate-to-operator"
              | refs."definitions.rule"
              | optional,
            "putout/replace-operate-with-operator"
              | refs."definitions.rule"
              | optional,
            "putout/replace-test-message" | refs."definitions.rule" | optional,
            "putout/shorten-imports" | refs."definitions.rule" | optional,
            react-hooks | refs."definitions.rule" | optional,
            regexp | refs."definitions.rule" | optional,
            remove-boolean-from-assertions | refs."definitions.rule" | optional,
            remove-boolean-from-logical-expressions
              | refs."definitions.rule"
              | optional,
            remove-console | refs."definitions.rule" | optional,
            remove-debugger | refs."definitions.rule" | optional,
            remove-duplicate-case | refs."definitions.rule" | optional,
            remove-duplicate-interface-keys
              | refs."definitions.rule"
              | optional,
            remove-duplicate-keys | refs."definitions.rule" | optional,
            remove-duplicates-from-logical-expressions
              | refs."definitions.rule"
              | optional,
            remove-duplicates-from-union | refs."definitions.rule" | optional,
            remove-empty | refs."definitions.rule" | optional,
            "remove-empty/argument" | refs."definitions.rule" | optional,
            "remove-empty/block" | refs."definitions.rule" | optional,
            "remove-empty/pattern" | refs."definitions.rule" | optional,
            remove-iife | refs."definitions.rule" | optional,
            remove-nested-blocks | refs."definitions.rule" | optional,
            remove-unreachable-code | refs."definitions.rule" | optional,
            remove-unreferenced-variables | refs."definitions.rule" | optional,
            remove-unused-expressions | refs."definitions.rule" | optional,
            remove-unused-private-fields | refs."definitions.rule" | optional,
            remove-unused-types | refs."definitions.rule" | optional,
            remove-unused-variables | refs."definitions.rule" | optional,
            remove-useless-arguments | refs."definitions.rule" | optional,
            remove-useless-array | refs."definitions.rule" | optional,
            remove-useless-array-constructor
              | refs."definitions.rule"
              | optional,
            remove-useless-array-entries | refs."definitions.rule" | optional,
            remove-useless-constructor | refs."definitions.rule" | optional,
            remove-useless-continue | refs."definitions.rule" | optional,
            remove-useless-escape | refs."definitions.rule" | optional,
            remove-useless-functions | refs."definitions.rule" | optional,
            remove-useless-map | refs."definitions.rule" | optional,
            remove-useless-new | refs."definitions.rule" | optional,
            remove-useless-operand | refs."definitions.rule" | optional,
            remove-useless-spread | refs."definitions.rule" | optional,
            remove-useless-template-expressions
              | refs."definitions.rule"
              | optional,
            remove-useless-templates | refs."definitions.rule" | optional,
            remove-useless-type-conversion | refs."definitions.rule" | optional,
            remove-useless-types-from-constants
              | refs."definitions.rule"
              | optional,
            remove-useless-variables | refs."definitions.rule" | optional,
            return | refs."definitions.rule" | optional,
            "return/apply-early" | refs."definitions.rule" | optional,
            "return/convert-from-break" | refs."definitions.rule" | optional,
            "return/remove-useless" | refs."definitions.rule" | optional,
            "return/simplify-boolean" | refs."definitions.rule" | optional,
            reuse-duplicate-init | refs."definitions.rule" | optional,
            simplify-logical-expressions | refs."definitions.rule" | optional,
            simplify-ternary | refs."definitions.rule" | optional,
            split-nested-destructuring | refs."definitions.rule" | optional,
            split-variable-declarations | refs."definitions.rule" | optional,
            tape | refs."definitions.rule" | optional,
            "tape/remove-only" | refs."definitions.rule" | optional,
            "tape/remove-skip" | refs."definitions.rule" | optional,
            travis | refs."definitions.rule" | optional,
            try-catch | refs."definitions.rule" | optional,
            "try-catch/args" | refs."definitions.rule" | optional,
            "try-catch/async" | refs."definitions.rule" | optional,
            "try-catch/await" | refs."definitions.rule" | optional,
            "try-catch/declare" | refs."definitions.rule" | optional,
            "try-catch/expand-args" | refs."definitions.rule" | optional,
            "try-catch/sync" | refs."definitions.rule" | optional,
            types | refs."definitions.rule" | optional,
            "types/apply-is-array" | refs."definitions.rule" | optional,
            "types/convert-typeof-to-is-type"
              | refs."definitions.rule"
              | optional,
            "types/remove-double-negations"
              | refs."definitions.rule"
              | optional,
            "types/remove-useless-conversion"
              | refs."definitions.rule"
              | optional,
            "types/remove-useless-typeof" | refs."definitions.rule" | optional,
            typescript | refs."definitions.rule" | optional,
            "typescript/apply-as-type-assertion"
              | refs."definitions.rule"
              | optional,
            "typescript/apply-utility-types"
              | refs."definitions.rule"
              | optional,
            "typescript/convert-generic-to-shorthand"
              | refs."definitions.rule"
              | optional,
            "typescript/remove-duplicate-interface-keys"
              | refs."definitions.rule"
              | optional,
            "typescript/remove-duplicates-from-union"
              | refs."definitions.rule"
              | optional,
            "typescript/remove-unused-types"
              | refs."definitions.rule"
              | optional,
            "typescript/remove-useless-mapped-types"
              | refs."definitions.rule"
              | optional,
            "typescript/remove-useless-mapping-modifiers"
              | refs."definitions.rule"
              | optional,
            "typescript/remove-useless-types"
              | refs."definitions.rule"
              | optional,
            "typescript/remove-useless-types-from-constants"
              | refs."definitions.rule"
              | optional,
            webpack | refs."definitions.rule" | optional,
            ..
          },
    }
    in
  {
      formatter
        | std.contract.any_of [ String, Array Dyn ]
        | doc "Choose the way to show information about errors found"
        | optional,
      ignore
        | js2n.array.UniqueItems
        | Array String
        | doc "Tell 🐊Putout to ignore specific files and directories."
        | optional,
      "match"
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "^.*$" = refs."definitions.rules",
                  additionalProperties = js2n.Never,
                },
            properties = {},
            required = {},
          }
        | doc "Allows to match rules for files and folders, specified by glob patterns."
        | optional,
      parser | String | doc "Tell 🐊Putout which parser to use" | optional,
      plugins
        | js2n.array.UniqueItems
        | doc "Tell 🐊Putout which plugins to load"
        | optional,
      printer
        | std.contract.any_of
          [
            String,
            std.contract.Sequence
              [
                js2n.array.MaxItems 2,
                js2n.array.MinItems 2,
                js2n.array.Items [ String, { _ | Dyn } ] js2n.Always
              ]
          ]
        | doc "Tell 🐊Putout which printer to use"
        | optional,
      processors
        | js2n.array.UniqueItems
        | Array String
        | doc "Tell 🐊Putout which processors to use to support file types other then JavaScript"
        | optional,
      rules | refs."definitions.rules" | optional,
    }