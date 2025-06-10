# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.arrayOfNonEmptyStrings" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.nonEmptyString", String ]
              )
            ],
      "definitions.compilerOptions" =
        {
            baseDir
              | refs."definitions.nonEmptyString"
              | String
              | doc "Specifies the base directory of input and output files."
              | optional,
            bindings
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.compilerOptions.properties.bindings.definitions.bindings",
                      String
                    ],
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [
                            refs."definitions.compilerOptions.properties.bindings.definitions.bindings",
                            String
                          ]
                      )
                    ]
                ]
              | doc "Specified the bindings to generate."
              | optional,
            converge
              | Bool
              | doc "Re-optimizes until no further improvements can be made."
              | optional,
            debug
              | Bool
              | doc "Enables debug information in emitted binaries."
              | optional,
            disable
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.webAssemblyFeatures", String ],
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [ refs."definitions.webAssemblyFeatures", String ]
                      )
                    ]
                ]
              | doc "Disables WebAssembly features that are enabled by default."
              | optional,
            enable
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.webAssemblyFeatures", String ],
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [ refs."definitions.webAssemblyFeatures", String ]
                      )
                    ]
                ]
              | doc "Enables WebAssembly features that are disabled by default."
              | optional,
            exportRuntime
              | Bool
              | doc "Exports the runtime helpers (__new, __collect etc.)."
              | optional,
            exportStart
              | refs."definitions.nonEmptyString"
              | String
              | doc "Exports the start function instead of calling it implicitly."
              | optional,
            exportTable
              | Bool
              | doc "Exports the function table as 'table'."
              | optional,
            importMemory
              | Bool
              | doc "Imports the memory provided as 'env.memory'."
              | optional,
            importTable
              | Bool
              | doc "Imports the function table provided as 'env.table'."
              | optional,
            initialMemory
              | Number
              | doc "Sets the initial memory size in pages."
              | optional,
            lib
              | refs."definitions.nonEmptyStringOrArrayOfNonEmptyStrings"
              | doc "Adds one or multiple paths to custom library components."
              | optional,
            lowMemoryLimit
              | js2n.number.Minimum 0
              | doc "Enforces very low (<64k) memory constraints."
              | optional,
            maximumMemory
              | Number
              | doc "Sets the maximum memory size in pages."
              | optional,
            memoryBase
              | Number
              | doc "Sets the start offset of compiler-generated static memory."
              | optional,
            noAssert
              | Bool
              | doc "Replaces assertions with just their value without trapping."
              | optional,
            noColors | Bool | doc "Disables terminal colors." | optional,
            noEmit
              | Bool
              | doc "Performs compilation as usual but does not emit code."
              | optional,
            noExportMemory
              | Bool
              | doc "Does not export the memory as 'memory'."
              | optional,
            noUnsafe
              | Bool
              | doc "Disallows the use of unsafe features in user code."
              | optional,
            noValidate
              | Bool
              | doc "Skips validating the module using Binaryen."
              | optional,
            optimize | Bool | doc "Optimizes the module." | optional,
            optimizeLevel
              | js2n.number.Maximum 3
              | js2n.number.Minimum 0
              | doc "How much to focus on optimizing code."
              | optional,
            outFile
              | refs."definitions.nonEmptyString"
              | String
              | doc "Specifies the WebAssembly output file (.wasm)."
              | optional,
            path
              | refs."definitions.nonEmptyStringOrArrayOfNonEmptyStrings"
              | doc "Adds one or multiple paths to package resolution."
              | optional,
            pedantic
              | Bool
              | doc "Make yourself sad for no good reason."
              | optional,
            runPasses
              | refs."definitions.nonEmptyStringOrArrayOfNonEmptyStrings"
              | doc "Specifies additional Binaryen passes to run."
              | optional,
            runtime
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'stub, 'minimal, 'incremental |]
                    ],
                  std.contract.Sequence
                    [ refs."definitions.nonEmptyString", String ]
                ]
              | doc "Specifies the runtime variant to include in the program."
              | optional,
            sharedMemory
              | Number
              | doc "Declare memory as shared. Requires maximumMemory."
              | optional,
            shrinkLevel
              | js2n.number.Maximum 2
              | js2n.number.Minimum 0
              | doc "How much to focus on shrinking code size."
              | optional,
            sourceMap
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ refs."definitions.nonEmptyString", String ]
                ]
              | doc "Enables source map generation. Optionally takes the URL."
              | optional,
            stackSize
              | js2n.number.Minimum 0
              | doc "Exports the runtime helpers (__new, __collect etc.)."
              | optional,
            stats
              | Bool
              | doc "Prints measuring information on I/O and compile times."
              | optional,
            tableBase
              | js2n.number.Minimum 0
              | doc "Sets the start offset of emitted table elements."
              | optional,
            textFile
              | refs."definitions.nonEmptyString"
              | String
              | doc "Specifies the WebAssembly text output file (.wat)."
              | optional,
            transform
              | refs."definitions.nonEmptyStringOrArrayOfNonEmptyStrings"
              | doc "Specifies the path to a custom transform to 'require'."
              | optional,
            trapMode
              | std.enum.TagOrString
              | [| 'js, 'clamp, 'allow |]
              | doc "Sets the trap mode to use."
              | optional,
            use
              | refs."definitions.nonEmptyStringOrArrayOfNonEmptyStrings"
              | doc "Aliases a global object under another name."
              | optional,
            wasm
              | refs."definitions.nonEmptyString"
              | String
              | doc "Uses the specified Wasm binary of the compiler."
              | optional,
            zeroFilledMemory
              | Bool
              | doc "Assume that imported memory is zero filled. Requires importMemory."
              | optional,
          },
      "definitions.compilerOptions.properties.bindings.definitions.bindings" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'raw, 'esm |] ],
      "definitions.nonEmptyString" = js2n.string.MinLength 1,
      "definitions.nonEmptyStringOrArrayOfNonEmptyStrings" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."definitions.arrayOfNonEmptyStrings", Array Dyn ]
            ],
      "definitions.webAssemblyFeatures" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'memory64,
                'gc,
                'multi-value,
                'reference-types,
                'tail-calls,
                'exception-handling,
                'threads,
                'simd,
                'bulk-memory,
                'nontrapping-f2i,
                'mutable-globals,
                'sign-extension
              |]
            ],
    }
    in
  {
      entries
        | refs."definitions.arrayOfNonEmptyStrings"
        | Array Dyn
        | optional,
      extends | refs."definitions.nonEmptyString" | optional,
      options | refs."definitions.compilerOptions" | optional,
      targets | { _ | refs."definitions.compilerOptions" } | optional,
    }