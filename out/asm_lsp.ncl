# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Arch" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'AVR,
                    'power-isa,
                    '"6502",
                    'z80,
                    'riscv,
                    'arm64,
                    'arm,
                    'x86-64,
                    'x86
                  |]
                ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| '"x86/x86-64" |] ]
            ],
      "definitions.Assembler" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'fasm, 'avr, 'ca65, 'nasm, 'masm, 'go, 'gas |]
            ],
      "definitions.Config" =
        {
            assembler | refs."definitions.Assembler" | String,
            instruction_set | refs."definitions.Arch",
            opts
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.ConfigOptions", { _ | Dyn } ])
              | optional,
            version | js2n.Nullable String | optional,
            ..
          },
      "definitions.ConfigOptions" =
        {
            compile_flags_txt | js2n.Nullable (Array String) | optional,
            compiler | js2n.Nullable String | optional,
            default_diagnostics | js2n.Nullable Bool | optional,
            diagnostics | js2n.Nullable Bool | optional,
            ..
          },
      "definitions.ProjectConfig" =
        {
            assembler | refs."definitions.Assembler" | String,
            instruction_set | refs."definitions.Arch",
            opts
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.ConfigOptions", { _ | Dyn } ])
              | optional,
            path | String,
            version | js2n.Nullable String | optional,
            ..
          },
    }
    in
  {
      default_config | js2n.Nullable refs."definitions.Config" | optional,
      project
        | js2n.Nullable (Array refs."definitions.ProjectConfig")
        | optional,
      ..
    }