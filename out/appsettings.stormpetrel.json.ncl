# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.generatorConfig" =
        js2n.Nullable
            {
              BackuperExpression
                | js2n.Nullable String
                | doc "[optional] string, instantiates `GeneratorBackuper` by default. An expression for the `IGeneratorBackuper` instance. Set to 'null' to skip creating backup files."
                | optional,
              DumperExpression
                | String
                | doc "[optional] string, instantiates `GeneratorDumper` by default. An expression for the `IGeneratorDumper` instance."
                | optional,
              RewriterExpression
                | String
                | doc "[optional] string, instantiates `GeneratorRewriter` by default. An expression for the `IGeneratorRewriter` instance."
                | optional,
              ..
            },
      "definitions.ignoreFilePathRegex" = String,
      "definitions.ignoreInvocationExpressionRegex" = String,
      "definitions.isDisabled" = Bool,
      "definitions.targetProjectGeneratorExpression" = String,
      "definitions.testVariablePairConfigs" =
        Array
            {
              ActualVarNameTokenRegex
                | String
                | doc "Default configuration object. Assumes variable pair names like (expected, actual), (myExpected, myActual), (expectedOne, actualOne), (ExpectedTwo, ActualTwo), etc."
                | optional,
              ExpectedVarNameTokenRegex
                | js2n.Nullable String
                | doc "Corresponds to the `ActualVarNameTokenRegex` for pairing."
                | optional,
              ..
            },
    }
    in
  {
      GeneratorConfig | refs."definitions.generatorConfig" | optional,
      IgnoreFilePathRegex | refs."definitions.ignoreFilePathRegex" | optional,
      IgnoreInvocationExpressionRegex
        | refs."definitions.ignoreInvocationExpressionRegex"
        | optional,
      IsDisabled | refs."definitions.isDisabled" | optional,
      Serilog | js2n.Nullable ({ _ | Dyn }) | optional,
      TargetProjectGeneratorExpression
        | refs."definitions.targetProjectGeneratorExpression"
        | optional,
      TestVariablePairConfigs
        | refs."definitions.testVariablePairConfigs"
        | optional,
      serilog | js2n.Nullable ({ _ | Dyn }) | optional,
      ..
    }