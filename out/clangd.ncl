# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.clangTidyCheck" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'zircon-temporary-objects,
                'readability-use-anyofallof,
                'readability-uppercase-literal-suffix,
                'readability-uniqueptr-delete-release,
                'readability-suspicious-call-argument,
                'readability-string-compare,
                'readability-static-definition-in-anonymous-namespace,
                'readability-static-accessed-through-instance,
                'readability-simplify-subscript-expr,
                'readability-simplify-boolean-expr,
                'readability-redundant-string-init,
                'readability-redundant-string-cstr,
                'readability-redundant-smartptr-get,
                'readability-redundant-preprocessor,
                'readability-redundant-member-init,
                'readability-redundant-function-ptr-dereference,
                'readability-redundant-declaration,
                'readability-redundant-control-flow,
                'readability-redundant-access-specifiers,
                'readability-qualified-auto,
                'readability-non-const-parameter,
                'readability-named-parameter,
                'readability-misplaced-array-index,
                'readability-misleading-indentation,
                'readability-make-member-function-const,
                'readability-magic-numbers,
                'readability-isolate-declaration,
                'readability-inconsistent-declaration-parameter-name,
                'readability-implicit-bool-conversion,
                'readability-identifier-naming,
                'readability-identifier-length,
                'readability-function-size,
                'readability-function-cognitive-complexity,
                'readability-else-after-return,
                'readability-duplicate-include,
                'readability-delete-null-pointer,
                'readability-convert-member-functions-to-static,
                'readability-container-size-empty,
                'readability-container-data-pointer,
                'readability-container-contains,
                'readability-const-return-type,
                'readability-braces-around-statements,
                'readability-avoid-const-params-in-decls,
                'portability-std-allocator-const,
                'portability-simd-intrinsics,
                'portability-restrict-system-includes,
                'performance-unnecessary-value-param,
                'performance-unnecessary-copy-initialization,
                'performance-type-promotion-in-math-fn,
                'performance-trivially-destructible,
                'performance-noexcept-move-constructor,
                'performance-no-int-to-ptr,
                'performance-no-automatic-move,
                'performance-move-constructor-init,
                'performance-move-const-arg,
                'performance-inefficient-vector-operation,
                'performance-inefficient-string-concatenation,
                'performance-inefficient-algorithm,
                'performance-implicit-conversion-in-loop,
                'performance-for-range-copy,
                'performance-faster-string-find,
                'openmp-use-default-none,
                'openmp-exception-escape,
                'objc-super-self,
                'objc-property-declaration,
                'objc-nsinvocation-argument-lifetime,
                'objc-nsdate-formatter,
                'objc-missing-hash,
                'objc-forbidden-subclassing,
                'objc-dealloc-in-category,
                'objc-avoid-nserror-init,
                'objc-assert-equals,
                'mpi-type-mismatch,
                'mpi-buffer-deref,
                'modernize-use-using,
                'modernize-use-uncaught-exceptions,
                'modernize-use-transparent-functors,
                'modernize-use-trailing-return-type,
                'modernize-use-override,
                'modernize-use-nullptr,
                'modernize-use-noexcept,
                'modernize-use-nodiscard,
                'modernize-use-equals-delete,
                'modernize-use-equals-default,
                'modernize-use-emplace,
                'modernize-use-default-member-init,
                'modernize-use-bool-literals,
                'modernize-use-auto,
                'modernize-unary-static-assert,
                'modernize-shrink-to-fit,
                'modernize-return-braced-init-list,
                'modernize-replace-random-shuffle,
                'modernize-replace-disallow-copy-and-assign-macro,
                'modernize-replace-auto-ptr,
                'modernize-redundant-void-arg,
                'modernize-raw-string-literal,
                'modernize-pass-by-value,
                'modernize-make-unique,
                'modernize-make-shared,
                'modernize-macro-to-enum,
                'modernize-loop-convert,
                'modernize-deprecated-ios-base-aliases,
                'modernize-deprecated-headers,
                'modernize-concat-nested-namespaces,
                'modernize-avoid-c-arrays,
                'modernize-avoid-bind,
                'misc-use-anonymous-namespace,
                'misc-unused-using-decls,
                'misc-unused-parameters,
                'misc-unused-alias-decls,
                'misc-uniqueptr-reset-release,
                'misc-unconventional-assign-operator,
                'misc-throw-by-value-catch-by-reference,
                'misc-static-assert,
                'misc-redundant-expression,
                'misc-non-private-member-variables-in-classes,
                'misc-non-copyable-objects,
                'misc-no-recursion,
                'misc-new-delete-overloads,
                'misc-misplaced-const,
                'misc-misleading-identifier,
                'misc-misleading-bidirectional,
                'misc-definitions-in-headers,
                'misc-const-correctness,
                'misc-confusable-identifiers,
                'llvmlibc-restrict-system-libc-headers,
                'llvmlibc-implementation-in-namespace,
                'llvmlibc-callee-namespace,
                'llvm-twine-local,
                'llvm-prefer-register-over-unsigned,
                'llvm-prefer-isa-or-dyn-cast-in-conditionals,
                'llvm-namespace-comment,
                'llvm-include-order,
                'llvm-header-guard,
                'linuxkernel-must-use-errs,
                'hicpp-signed-bitwise,
                'hicpp-no-assembler,
                'hicpp-multiway-paths-covered,
                'hicpp-exception-baseclass,
                'hicpp-avoid-goto,
                'google-upgrade-googletest-case,
                'google-runtime-operator,
                'google-runtime-int,
                'google-readability-todo,
                'google-readability-casting,
                'google-readability-avoid-underscore-in-googletest-name,
                'google-objc-global-variable-declaration,
                'google-objc-function-naming,
                'google-objc-avoid-throwing-exception,
                'google-objc-avoid-nsobject-new,
                'google-global-names-in-headers,
                'google-explicit-constructor,
                'google-default-arguments,
                'google-build-using-namespace,
                'google-build-namespaces,
                'google-build-explicit-make-pair,
                'fuchsia-virtual-inheritance,
                'fuchsia-trailing-return,
                'fuchsia-statically-constructed-objects,
                'fuchsia-overloaded-operator,
                'fuchsia-multiple-inheritance,
                'fuchsia-default-arguments-declarations,
                'fuchsia-default-arguments-calls,
                'darwin-dispatch-once-nonstatic,
                'darwin-avoid-spinlock,
                'cppcoreguidelines-virtual-class-destructor,
                'cppcoreguidelines-special-member-functions,
                'cppcoreguidelines-slicing,
                'cppcoreguidelines-pro-type-vararg,
                'cppcoreguidelines-pro-type-union-access,
                'cppcoreguidelines-pro-type-static-cast-downcast,
                'cppcoreguidelines-pro-type-reinterpret-cast,
                'cppcoreguidelines-pro-type-member-init,
                'cppcoreguidelines-pro-type-cstyle-cast,
                'cppcoreguidelines-pro-type-const-cast,
                'cppcoreguidelines-pro-bounds-pointer-arithmetic,
                'cppcoreguidelines-pro-bounds-constant-array-index,
                'cppcoreguidelines-pro-bounds-array-to-pointer-decay,
                'cppcoreguidelines-prefer-member-initializer,
                'cppcoreguidelines-owning-memory,
                'cppcoreguidelines-no-malloc,
                'cppcoreguidelines-narrowing-conversions,
                'cppcoreguidelines-macro-usage,
                'cppcoreguidelines-interfaces-global-init,
                'cppcoreguidelines-init-variables,
                'cppcoreguidelines-avoid-reference-coroutine-parameters,
                'cppcoreguidelines-avoid-non-const-global-variables,
                'cppcoreguidelines-avoid-goto,
                'cppcoreguidelines-avoid-do-while,
                'cppcoreguidelines-avoid-const-or-ref-data-members,
                'concurrency-thread-canceltype-asynchronous,
                'concurrency-mt-unsafe,
                '"clang-analyzer-valist.Unterminated",
                '"clang-analyzer-valist.Uninitialized",
                '"clang-analyzer-valist.CopyToSelf",
                '"clang-analyzer-osx.cocoa.RunLoopAutoreleaseLeak",
                '"clang-analyzer-osx.cocoa.NonNilReturnValue",
                '"clang-analyzer-osx.cocoa.MissingSuperCall",
                '"clang-analyzer-osx.cocoa.Loops",
                '"clang-analyzer-osx.cocoa.AutoreleaseWrite",
                '"clang-analyzer-osx.ObjCProperty",
                '"clang-analyzer-osx.OSObjectRetainCount",
                '"clang-analyzer-osx.NumberObjectConversion",
                '"clang-analyzer-osx.MIG",
                '"clang-analyzer-optin.portability.UnixAPI",
                '"clang-analyzer-optin.performance.Padding",
                '"clang-analyzer-optin.performance.GCDAntipattern",
                '"clang-analyzer-optin.osx.OSObjectCStyleCast",
                '"clang-analyzer-nullability.NullableReturnedFromNonnull",
                '"clang-analyzer-cplusplus.InnerPointer",
                '"clang-analyzer-core.uninitialized.CapturedBlockVariable",
                '"clang-analyzer-core.DynamicTypePropagation",
                'cert-oop58-cpp,
                'cert-oop57-cpp,
                'cert-msc51-cpp,
                'cert-msc50-cpp,
                'cert-mem57-cpp,
                'cert-flp30-c,
                'cert-err60-cpp,
                'cert-err58-cpp,
                'cert-err52-cpp,
                'cert-err34-c,
                'cert-err33-c,
                'cert-env33-c,
                'cert-dcl58-cpp,
                'cert-dcl50-cpp,
                'cert-dcl21-cpp,
                'bugprone-virtual-near-miss,
                'bugprone-use-after-move,
                'bugprone-unused-return-value,
                'bugprone-unused-raii,
                'bugprone-unhandled-self-assignment,
                'bugprone-unhandled-exception-at-new,
                'bugprone-undelegated-constructor,
                'bugprone-undefined-memory-manipulation,
                'bugprone-unchecked-optional-access,
                'bugprone-too-small-loop-variable,
                'bugprone-throw-keyword-missing,
                'bugprone-terminating-continue,
                'bugprone-swapped-arguments,
                'bugprone-suspicious-string-compare,
                'bugprone-suspicious-semicolon,
                'bugprone-suspicious-realloc-usage,
                'bugprone-suspicious-missing-comma,
                'bugprone-suspicious-memset-usage,
                'bugprone-suspicious-memory-comparison,
                'bugprone-suspicious-include,
                'bugprone-suspicious-enum-usage,
                'bugprone-stringview-nullptr,
                'bugprone-string-literal-with-embedded-nul,
                'bugprone-string-integer-assignment,
                'bugprone-string-constructor,
                'bugprone-standalone-empty,
                'bugprone-spuriously-wake-up-functions,
                'bugprone-sizeof-expression,
                'bugprone-sizeof-container,
                'bugprone-signed-char-misuse,
                'bugprone-signal-handler,
                'bugprone-shared-ptr-array-mismatch,
                'bugprone-reserved-identifier,
                'bugprone-redundant-branch-condition,
                'bugprone-posix-return,
                'bugprone-parent-virtual-call,
                'bugprone-not-null-terminated-result,
                'bugprone-no-escape,
                'bugprone-multiple-statement-macro,
                'bugprone-move-forwarding-reference,
                'bugprone-misplaced-widening-cast,
                'bugprone-misplaced-pointer-arithmetic-in-alloc,
                'bugprone-misplaced-operator-in-strlen-in-alloc,
                'bugprone-macro-repeated-side-effects,
                'bugprone-macro-parentheses,
                'bugprone-lambda-function-name,
                'bugprone-integer-division,
                'bugprone-infinite-loop,
                'bugprone-incorrect-roundings,
                'bugprone-inaccurate-erase,
                'bugprone-implicit-widening-of-multiplication-result,
                'bugprone-forwarding-reference-overload,
                'bugprone-forward-declaration-namespace,
                'bugprone-fold-init-type,
                'bugprone-exception-escape,
                'bugprone-easily-swappable-parameters,
                'bugprone-dynamic-static-initializers,
                'bugprone-dangling-handle,
                'bugprone-copy-constructor-init,
                'bugprone-branch-clone,
                'bugprone-bool-pointer-implicit-conversion,
                'bugprone-bad-signal-to-kill-thread,
                'bugprone-assignment-in-if-condition,
                'bugprone-assert-side-effect,
                'bugprone-argument-comment,
                'boost-use-to-string,
                'android-comparison-in-temp-failure-retry,
                'android-cloexec-socket,
                'android-cloexec-pipe2,
                'android-cloexec-pipe,
                'android-cloexec-open,
                'android-cloexec-memfd-create,
                'android-cloexec-inotify-init1,
                'android-cloexec-inotify-init,
                'android-cloexec-fopen,
                'android-cloexec-epoll-create1,
                'android-cloexec-epoll-create,
                'android-cloexec-dup,
                'android-cloexec-creat,
                'android-cloexec-accept4,
                'android-cloexec-accept,
                'altera-unroll-loops,
                'altera-struct-pack-align,
                'altera-single-work-item-barrier,
                'altera-kernel-name-restriction,
                'altera-id-dependent-backward-branch,
                'abseil-upgrade-duration-conversions,
                'abseil-time-subtraction,
                'abseil-time-comparison,
                'abseil-string-find-str-contains,
                'abseil-string-find-startswith,
                'abseil-str-cat-append,
                'abseil-redundant-strcat-calls,
                'abseil-no-namespace,
                'abseil-no-internal-dependencies,
                'abseil-faster-strsplit-delimiter,
                'abseil-duration-unnecessary-conversion,
                'abseil-duration-subtraction,
                'abseil-duration-factory-scale,
                'abseil-duration-factory-float,
                'abseil-duration-division,
                'abseil-duration-conversion-cast,
                'abseil-duration-comparison,
                'abseil-duration-addition,
                'abseil-cleanup-ctad
              |]
            ],
      "definitions.oneOrMoreDiagnostics" =
        js2n.OneOf
            [
              std.contract.any_of
                [
                  js2n.string.MinLength 1,
                  std.contract.Sequence
                    [ refs."definitions.clangTidyCheck", String ]
                ],
              std.contract.Sequence
                [
                  js2n.array.UniqueItems,
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        js2n.string.MinLength 1,
                        std.contract.Sequence
                          [ refs."definitions.clangTidyCheck", String ]
                      ])
                ]
            ],
      "definitions.oneOrMoreFlags" =
        std.contract.any_of
            [
              js2n.string.MinLength 1,
              std.contract.Sequence
                [ js2n.array.UniqueItems, Array (js2n.string.MinLength 1) ]
            ],
      "definitions.oneOrMorePath" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."properties.CompileFlags.properties.CompilationDatabase.oneOf.0",
                  String
                ],
              std.contract.Sequence
                [
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.Sequence
                      [
                        refs."properties.CompileFlags.properties.CompilationDatabase.oneOf.0",
                        String
                      ]
                  )
                ]
            ],
      "properties.CompileFlags.properties.CompilationDatabase.oneOf.0" =
        js2n.string.MinLength 1,
    }
    in
  {
      CompileFlags
        | {
          Add
            | refs."definitions.oneOrMoreFlags"
            | doc m%"
              Flags to be added to the compile command
              https://clangd.llvm.org/config.html#add
            "%
            | optional,
          CompilationDatabase
            | js2n.OneOf
              [
                js2n.string.MinLength 1,
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'None, 'Ancestors |] ]
              ]
            | doc m%"
              A directory to search for compilation database
              https://clangd.llvm.org/config.html#compilationdatabase
            "%
            | optional,
          Compiler
            | js2n.string.MinLength 1
            | doc m%"
              An `argv[0]` replacement
              https://clangd.llvm.org/config.html#compiler
            "%
            | optional,
          Remove
            | refs."definitions.oneOrMoreFlags"
            | doc m%"
              Flags to be removed from the compile command
              https://clangd.llvm.org/config.html#remove
            "%
            | optional,
        }
        | doc m%"
          Flag lists to be added or removed
          https://clangd.llvm.org/config.html#compileflags
        "%
        | optional,
      Completion
        | {
          AllScopes
            | Bool
            | doc m%"
              Whether to include suggestions from scopes that are not visible
              https://clangd.llvm.org/config.html#allscopes
            "%
            | optional,
          ArgumentLists
            | std.enum.TagOrString
            | [| 'FullPlaceholders, 'Delimiters, 'OpenDelimiter, 'None |]
            | doc m%"
              Determines what is inserted in argument list position when completing a call to a function
              https://clangd.llvm.org/config#argumentlists
            "%
            | optional,
        }
        | doc m%"
          Completion options
          https://clangd.llvm.org/config.html#completion
        "%
        | optional,
      Diagnostics
        | {
          ClangTidy
            | {
              Add
                | refs."definitions.oneOrMoreDiagnostics"
                | doc m%"
                  Checks to enable
                  https://clangd.llvm.org/config.html#add-1
                "%
                | optional,
              CheckOptions
                | { _ | Dyn }
                | doc m%"
                  Check's options
                  https://clangd.llvm.org/config.html#checkoptions
                "%
                | optional,
              FastCheckFilter
                | std.enum.TagOrString
                | [| 'None, 'Loose, 'Strict |]
                | doc m%"
                  Whether to run clang-tidy checks that may slow down clangd.
                  https://clangd.llvm.org/config.html#fastcheckfilter
                "%
                | optional,
              Remove
                | refs."definitions.oneOrMoreDiagnostics"
                | doc m%"
                  Checks to disable
                  https://clangd.llvm.org/config.html#remove-1
                "%
                | optional,
            }
            | doc m%"
              Clang-Tidy options
              https://clangd.llvm.org/config.html#clangtidy
            "%
            | optional,
          Includes
            | {
              AnalyzeAngledIncludes
                | Bool
                | doc m%"
                  Enables/disables detection of unused angled includes that are not from the Standard Library. Disabled by default to avoid false-positives caused by umbrella headers
                  https://clangd.llvm.org/config.html#analyzeangledincludes
                "%
                | optional,
              IgnoreHeader
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  A list of regexes. Include Cleaner will not produce diagnostics for headers whose path is a suffix match for any of these
                  https://clangd.llvm.org/config.html#ignoreheader
                "%
                | optional,
            }
            | optional,
          MissingIncludes
            | std.enum.TagOrString
            | [| 'Strict, 'None |]
            | doc m%"
              Whether to enable Include Cleaner's missing includes diagnostics
              https://clangd.llvm.org/config.html#missingincludes
            "%
            | optional,
          Suppress
            | std.contract.any_of
              [
                std.contract.Equal "*",
                std.contract.Sequence
                  [ js2n.array.UniqueItems, Array (js2n.string.MinLength 1) ]
              ]
            | doc m%"
              Diagnostic codes that to be suppressed
              https://clangd.llvm.org/config.html#suppress
            "%
            | optional,
          UnusedIncludes
            | std.enum.TagOrString
            | [| 'Strict, 'None |]
            | doc m%"
              Whether to enable Include Cleaner's unused includes diagnostics
              https://clangd.llvm.org/config.html#unusedincludes
            "%
            | optional,
        }
        | doc m%"
          Diagnostics
          https://clangd.llvm.org/config.html#diagnostics
        "%
        | optional,
      Hover
        | {
          ShowAKA
            | Bool
            | doc m%"
              Whether to display desugared types
              https://clangd.llvm.org/config.html#showaka
            "%
            | optional,
        }
        | doc m%"
          Hover card's options
          https://clangd.llvm.org/config.html#hover
        "%
        | optional,
      If
        | {
          PathExclude
            | refs."definitions.oneOrMorePath"
            | doc m%"
              An exclude path pattern
              https://clangd.llvm.org/config.html#pathexclude
            "%
            | optional,
          PathMatch
            | refs."definitions.oneOrMorePath"
            | doc m%"
              Path patterns
              https://clangd.llvm.org/config.html#pathmatch
            "%
            | optional,
        }
        | doc m%"
          Conditions
          https://clangd.llvm.org/config.html#if
        "%
        | optional,
      Index
        | {
          Background
            | std.enum.TagOrString
            | [| 'Skip, 'Build |]
            | doc m%"
              Whether to produce a project index from files built in the background
              https://clangd.llvm.org/config.html#background
            "%
            | optional,
          External
            | js2n.OneOf
              [
                js2n.string.Matches "[nN][oO][nN][eE]",
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          File =
                            refs."properties.CompileFlags.properties.CompilationDatabase.oneOf.0",
                        },
                    required = { File = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          MountPoint =
                            refs."properties.CompileFlags.properties.CompilationDatabase.oneOf.0",
                          Server = String,
                        },
                    required = { Server = true, },
                  }
              ]
            | doc m%"
              An external index source
              https://clangd.llvm.org/config.html#external
            "%
            | optional,
          StandardLibrary
            | Bool
            | doc m%"
              Whether to index a standard library
              https://clangd.llvm.org/config.html#standardlibrary
            "%
            | optional,
        }
        | doc "Code interpretation outside of the current file"
        | optional,
      InlayHints
        | {
          BlockEnd
            | Bool
            | doc m%"
              A boolean that enables/disables inlay-hints for block end comments
              https://clangd.llvm.org/config.html#blockend
            "%
            | optional,
          DeducedTypes
            | Bool
            | doc m%"
              Whether to enable inlay-hints for deduced types
              https://clangd.llvm.org/config.html#deducedtypes
            "%
            | optional,
          DefaultArguments
            | Bool
            | doc m%"
              A boolean that enables/disables inlay hints for default arguments
              https://clangd.llvm.org/config#defaultarguments
            "%
            | optional,
          Designators
            | Bool
            | doc m%"
              Whether to enable inlay-hints for designators in aggregate initialization
              https://clangd.llvm.org/config.html#designators
            "%
            | optional,
          Enabled
            | Bool
            | doc m%"
              Whether to enable inlay-hints
              https://clangd.llvm.org/config.html#enabled
            "%
            | optional,
          ParameterNames
            | Bool
            | doc m%"
              Whether to enable inlay-hints for parameter names in function calls
              https://clangd.llvm.org/config.html#parameternames
            "%
            | optional,
          TypeNameLimit
            | js2n.number.Minimum 0
            | doc m%"
              Character limit for type hints. Hints that would be longer are not shown. 0 means no limit.
              https://clangd.llvm.org/config.html#typenamelimit
            "%
            | optional,
        }
        | doc m%"
          Inlay-hints options
          https://clangd.llvm.org/config.html#inlayhints
        "%
        | optional,
      SemanticTokens
        | {
          DisabledKinds
            | Array (js2n.string.MinLength 1)
            | doc m%"
              Specify semantic token kinds that clangd should not send to client
              https://clangd.llvm.org/config.html#disabledkinds
            "%
            | optional,
          DisabledModifiers
            | Array (js2n.string.MinLength 1)
            | doc m%"
              Specify semantic token modifiers that clangd should not send to client
              https://clangd.llvm.org/config.html#disabledmodifiers
            "%
            | optional,
        }
        | doc m%"
          Configure semantic highlighting
          https://clangd.llvm.org/config.html#semantic-tokens
        "%
        | optional,
      Style
        | {
          AngledHeaders
            | Array String
            | doc m%"
              A list of regexes. Headers whose path matches one of these regexes are inserted using <> syntax.
              https://clangd.llvm.org/config#angledheaders
            "%
            | optional,
          FullyQualifiedNamespaces
            | Array String
            | doc m%"
              List of fully qualified namespaces
              https://clangd.llvm.org/config.html#fullyqualifiednamespaces
            "%
            | optional,
          QuotedHeaders
            | Array String
            | doc m%"
              A list of regexes. Headers whose path matches one of these regexes are inserted using "" syntax
              https://clangd.llvm.org/config#quotedheaders
            "%
            | optional,
          ..
        }
        | doc m%"
          A code base style
          https://clangd.llvm.org/config.html#style
        "%
        | optional,
      ..
    }