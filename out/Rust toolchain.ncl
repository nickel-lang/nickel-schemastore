# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      toolchain
        | js2n.record.MinProperties 1
        | js2n.record.DependentContracts
          {
            channel =
              std.contract.not
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { path = String, },
                          required = { path = true, },
                        },
                      Array Dyn
                    ]),
            path =
              std.contract.not
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { channel = String, },
                          required = { channel = true, },
                        },
                      Array Dyn
                    ]),
            profile =
              std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { channel = String, },
                        required = { channel = true, },
                      },
                    Array Dyn,
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { components = Array Dyn, },
                        required = { components = true, },
                      },
                    Array Dyn,
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { targets = Array Dyn, },
                        required = { targets = true, },
                      },
                    Array Dyn
                  ],
          }
        | js2n.OneOf
          [
            std.contract.not
              (std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { path = String, },
                      required = { path = true, },
                    },
                  Array Dyn
                ]),
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "path" ],
                Array Dyn
              ]
          ]
        | {
          channel
            | js2n.string.Matches
              "^(?:stable|beta|nightly|\\d+(?:\\.\\d+){1,2})(?:-\\d{4}(?:-\\d{2}){2})?(?:-\\D[^-]*(?:(?:-(?:[^-]+)){1,3}))?$"
            | doc m%"
              `channel` is a named release channel, a major and minor version number such as `1.42`, or a fully specified version number, such as `1.42.0`. Channel names can be optionally appended with an archive date, as in `nightly-2014-12-18`, in which case the toolchain is downloaded from the archive for that date. Get more from [`Toolchain specification`](https://rust-lang.github.io/rustup/concepts/toolchains.html).
              
              Other valid channel like `stable`,`1.63`,`1.63.0`,`nightly-2022-09-20`,`stable-x86_64-pc-windows-msvc`,`1.63.0-riscv64gc-unknown-linux-gnu`,`nightly-2022-09-20-x86_64-unknown-nux-gnu`
            "%
            | optional,
          components
            | Array (
              std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'rust-docs-json,
                        'reproducible-artifacts,
                        'rust-analyzer,
                        'rustc-dev,
                        'rustc-docs,
                        'llvm-tools,
                        'rust-analysis,
                        'rust,
                        'rust-src,
                        'miri,
                        'clippy,
                        'rls,
                        'rust-docs,
                        'rust-std,
                        'rustfmt,
                        'cargo,
                        'rustc
                      |]
                    ],
                  js2n.string.MinLength 1
                ]
            )
            | doc m%"
              Each release of Rust includes several "components", some of
              which are required (like `rustc`) and some that are optional (like [`clippy`](https://github.com/rust-lang/rust-clippy)) 
              
               Learn more from [`Components`](https://rust-lang.github.io/rustup/concepts/components.html)
            "%
            | optional,
          path
            | String
            | doc m%"
              Path to a custom local toolchain. Since a `path` directive directly names a local toolchain, other options
              like `components`, `targets`, and `profile` have no effect. `channel`
              and `path` are mutually exclusive, since a `path` already points to a
              specific toolchain. A relative `path` is resolved relative to the
              location of the `rust-toolchain.toml` file.
              
               Learn more from [`Custom toolchains`](https://rust-lang.github.io/rustup/concepts/toolchains.html#custom-toolchains)
            "%
            | optional,
          profile
            | std.enum.TagOrString
            | [| 'complete, '"default", 'minimal |]
            | doc m%"
              [`Profiles`](https://rust-lang.github.io/rustup/concepts/profiles.html) are groups of [`components`](https://rust-lang.github.io/rustup/concepts/components.html) you can choose to download while installing a new Rust [`toolchain`](https://rust-lang.github.io/rustup/concepts/toolchains.html).
              
               The `profiles` available at this time are `minimal`, `default`, and `complete`.
            "%
            | optional,
          targets
            | Array (
              std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'riscv64gc-unknown-nuttx-elf,
                        'riscv64imac-unknown-nuttx-elf,
                        'riscv32imafc-unknown-nuttx-elf,
                        'riscv32imac-unknown-nuttx-elf,
                        'riscv32imc-unknown-nuttx-elf,
                        '"thumbv8m.main-nuttx-eabihf",
                        '"thumbv8m.main-nuttx-eabi",
                        '"thumbv8m.base-nuttx-eabi",
                        'thumbv7em-nuttx-eabihf,
                        'thumbv7em-nuttx-eabi,
                        'thumbv7m-nuttx-eabi,
                        'thumbv6m-nuttx-eabi,
                        'xtensa-esp32s3-espidf,
                        'xtensa-esp32s3-none-elf,
                        'xtensa-esp32s2-espidf,
                        'xtensa-esp32s2-none-elf,
                        'xtensa-esp32-espidf,
                        'xtensa-esp32-none-elf,
                        'x86_64-unknown-linux-none,
                        'x86_64h-apple-darwin,
                        'x86_64-wrs-vxworks,
                        'x86_64-win7-windows-msvc,
                        'x86_64-uwp-windows-msvc,
                        'x86_64-uwp-windows-gnu,
                        'x86_64-unknown-openbsd,
                        'x86_64-unknown-l4re-uclibc,
                        'x86_64-unknown-hermit,
                        'x86_64-unknown-hurd-gnu,
                        'x86_64-unknown-haiku,
                        'x86_64-unknown-dragonfly,
                        'x86_64-unikraft-linux-musl,
                        'x86_64-pc-nto-qnx710,
                        'x86_64-apple-watchos-sim,
                        'x86_64-apple-tvos,
                        'wasm64-unknown-unknown,
                        'wasm32-wasip2,
                        'thumbv7neon-unknown-linux-musleabihf,
                        'thumbv7a-uwp-windows-msvc,
                        'thumbv7a-pc-windows-msvc,
                        'thumbv5te-none-eabi,
                        'thumbv4t-none-eabi,
                        'sparc64-unknown-openbsd,
                        'sparc64-unknown-netbsd,
                        'sparc-unknown-none-elf,
                        'sparc-unknown-linux-gnu,
                        's390x-unknown-linux-musl,
                        'riscv64-linux-android,
                        'riscv64gc-unknown-openbsd,
                        'riscv64gc-unknown-netbsd,
                        'riscv64gc-unknown-fuchsia,
                        'riscv64gc-unknown-freebsd,
                        'riscv64gc-unknown-hermit,
                        'riscv32imafc-esp-espidf,
                        'riscv32imac-esp-espidf,
                        'riscv32imc-esp-espidf,
                        'riscv32imac-unknown-xous-elf,
                        'riscv32ima-unknown-none-elf,
                        'riscv32im-risc0-zkvm-elf,
                        'riscv32gc-unknown-linux-musl,
                        'riscv32gc-unknown-linux-gnu,
                        'powerpc64-ibm-aix,
                        'powerpc64-unknown-openbsd,
                        'powerpc64le-unknown-linux-musl,
                        'powerpc64-wrs-vxworks,
                        'powerpc64-unknown-linux-musl,
                        'powerpc-unknown-freebsd,
                        'powerpc64le-unknown-freebsd,
                        'powerpc64-unknown-freebsd,
                        'powerpc-wrs-vxworks,
                        'powerpc-wrs-vxworks-spe,
                        'powerpc-unknown-openbsd,
                        'powerpc-unknown-netbsd,
                        'powerpc-unknown-linux-muslspe,
                        'powerpc-unknown-linux-musl,
                        'powerpc-unknown-linux-gnuspe,
                        'msp430-none-elf,
                        'mipsisa64r6el-unknown-linux-gnuabi64,
                        'mipsisa64r6-unknown-linux-gnuabi64,
                        'mipsisa32r6el-unknown-linux-gnu,
                        'mipsisa32r6-unknown-linux-gnu,
                        'mipsel-unknown-none,
                        'mipsel-unknown-linux-uclibc,
                        'mipsel-sony-psx,
                        'mipsel-sony-psp,
                        'mipsel-unknown-netbsd,
                        'mipsel-unknown-linux-musl,
                        'mipsel-unknown-linux-gnu,
                        'mips64el-unknown-linux-muslabi64,
                        'mips64el-unknown-linux-gnuabi64,
                        'mips64-unknown-linux-muslabi64,
                        'mips64-unknown-linux-gnuabi64,
                        'mips64-openwrt-linux-musl,
                        'mips-unknown-linux-uclibc,
                        'mips-unknown-linux-musl,
                        'mips-unknown-linux-gnu,
                        'm68k-unknown-linux-gnu,
                        'i686-wrs-vxworks,
                        'i686-win7-windows-msvc,
                        'i686-uwp-windows-msvc,
                        'i686-uwp-windows-gnu,
                        'i686-unknown-redox,
                        'i686-unknown-openbsd,
                        'i686-unknown-netbsd,
                        'i686-unknown-hurd-gnu,
                        'i686-unknown-haiku,
                        'i686-apple-darwin,
                        'i586-unknown-netbsd,
                        'i586-pc-nto-qnx700,
                        'i386-apple-ios,
                        'hexagon-unknown-linux-musl,
                        'hexagon-unknown-none-elf,
                        'csky-unknown-linux-gnuabiv2hf,
                        'csky-unknown-linux-gnuabiv2,
                        'bpfel-unknown-none,
                        'bpfeb-unknown-none,
                        'avr-unknown-gnu-atmega328,
                        'armv8r-none-eabihf,
                        'armv7s-apple-ios,
                        'armv7k-apple-watchos,
                        'armv7a-none-eabihf,
                        'armv7a-kmc-solid_asp3-eabihf,
                        'armv7a-kmc-solid_asp3-eabi,
                        'armv7-wrs-vxworks-eabihf,
                        'armv7-unknown-trusty,
                        'armv7-unknown-netbsd-eabihf,
                        'armv7-unknown-freebsd,
                        'armv7-unknown-linux-uclibceabihf,
                        'armv7-unknown-linux-uclibceabi,
                        'armv7-sony-vita-newlibeabihf,
                        'armv7-rtems-eabihf,
                        'armv6k-nintendo-3ds,
                        'armv6-unknown-netbsd-eabihf,
                        'armv6-unknown-freebsd,
                        'armv5te-unknown-linux-uclibceabi,
                        'armv5te-none-eabi,
                        'armv4t-unknown-linux-gnueabi,
                        'armv4t-none-eabi,
                        'armeb-unknown-linux-gnueabi,
                        'arm64_32-apple-watchos,
                        'aarch64_be-unknown-netbsd,
                        'aarch64_be-unknown-linux-gnu,
                        'aarch64_be-unknown-linux-gnu_ilp32,
                        'aarch64-wrs-vxworks,
                        'aarch64-uwp-windows-msvc,
                        'aarch64-unknown-trusty,
                        'aarch64-unknown-redox,
                        'aarch64-unknown-openbsd,
                        'aarch64-unknown-netbsd,
                        'aarch64-unknown-linux-gnu_ilp32,
                        'aarch64-unknown-illumos,
                        'aarch64-unknown-hermit,
                        'aarch64-unknown-freebsd,
                        'aarch64-unknown-nto-qnx710,
                        'aarch64-unknown-nto-qnx700,
                        'aarch64-unknown-teeos,
                        'aarch64-nintendo-switch-freestanding,
                        'aarch64-kmc-solid_asp3,
                        'aarch64-apple-visionos-sim,
                        'aarch64-apple-visionos,
                        'aarch64-apple-watchos-sim,
                        'aarch64-apple-watchos,
                        'aarch64-apple-tvos-sim,
                        'aarch64-apple-tvos,
                        'arm64e-apple-darwin,
                        'arm64e-apple-ios,
                        'x86_64-unknown-uefi,
                        'x86_64-unknown-redox,
                        'x86_64-unknown-none,
                        'x86_64-unknown-linux-ohos,
                        'x86_64-unknown-linux-gnux32,
                        'x86_64-pc-windows-gnullvm,
                        'x86_64-pc-solaris,
                        'x86_64-linux-android,
                        'x86_64-unknown-fuchsia,
                        'x86_64-fuchsia,
                        'x86_64-fortanix-unknown-sgx,
                        'x86_64-apple-ios-macabi,
                        'x86_64-apple-ios,
                        'wasm32-wasip1-threads,
                        'wasm32-wasip1,
                        'wasm32-wasi,
                        'wasm32-unknown-unknown,
                        'wasm32-unknown-emscripten,
                        '"thumbv8m.main-none-eabihf",
                        '"thumbv8m.main-none-eabi",
                        '"thumbv8m.base-none-eabi",
                        'thumbv7neon-unknown-linux-gnueabihf,
                        'thumbv7neon-linux-androideabi,
                        'thumbv7m-none-eabi,
                        'thumbv7em-none-eabihf,
                        'thumbv7em-none-eabi,
                        'thumbv6m-none-eabi,
                        'sparcv9-sun-solaris,
                        'sparc64-unknown-linux-gnu,
                        'riscv64imac-unknown-none-elf,
                        'riscv64gc-unknown-none-elf,
                        'riscv32imafc-unknown-none-elf,
                        'riscv32imc-unknown-none-elf,
                        'riscv32im-unknown-none-elf,
                        'riscv32i-unknown-none-elf,
                        'riscv32imac-unknown-none-elf,
                        'nvptx64-nvidia-cuda,
                        'loongarch64-unknown-none-softfloat,
                        'loongarch64-unknown-none,
                        'i686-unknown-uefi,
                        'i686-unknown-linux-musl,
                        'i686-unknown-freebsd,
                        'i686-pc-windows-gnullvm,
                        'i686-linux-android,
                        'i586-unknown-linux-musl,
                        'i586-unknown-linux-gnu,
                        'i586-pc-windows-msvc,
                        'armv7r-none-eabihf,
                        'armv7r-none-eabi,
                        'armv7a-none-eabi,
                        'armv7-unknown-linux-ohos,
                        'armv7-unknown-linux-musleabihf,
                        'armv7-unknown-linux-musleabi,
                        'armv7-unknown-linux-gnueabi,
                        'armv7-linux-androideabi,
                        'armv5te-unknown-linux-musleabi,
                        'armv5te-unknown-linux-gnueabi,
                        'armebv7r-none-eabihf,
                        'armebv7r-none-eabi,
                        'arm64ec-pc-windows-msvc,
                        'arm-unknown-linux-musleabihf,
                        'arm-unknown-linux-musleabi,
                        'arm-linux-androideabi,
                        'aarch64-unknown-uefi,
                        'aarch64-unknown-none,
                        'aarch64-unknown-none-softfloat,
                        'aarch64-unknown-linux-ohos,
                        'aarch64-pc-windows-gnullvm,
                        'aarch64-linux-android,
                        'aarch64-unknown-fuchsia,
                        'aarch64-fuchsia,
                        'aarch64-apple-ios-sim,
                        'aarch64-apple-ios-macabi,
                        'aarch64-apple-ios,
                        'x86_64-unknown-netbsd,
                        'x86_64-unknown-linux-musl,
                        'x86_64-unknown-illumos,
                        'x86_64-unknown-freebsd,
                        's390x-unknown-linux-gnu,
                        'riscv64gc-unknown-linux-musl,
                        'riscv64gc-unknown-linux-gnu,
                        'powerpc64le-unknown-linux-gnu,
                        'powerpc64-unknown-linux-gnu,
                        'powerpc-unknown-linux-gnu,
                        'loongarch64-unknown-linux-musl,
                        'loongarch64-unknown-linux-gnu,
                        'armv7-unknown-linux-gnueabihf,
                        'arm-unknown-linux-gnueabihf,
                        'arm-unknown-linux-gnueabi,
                        'aarch64-unknown-linux-musl,
                        'aarch64-pc-windows-msvc,
                        'x86_64-unknown-linux-gnu,
                        'x86_64-pc-windows-msvc,
                        'x86_64-pc-windows-gnu,
                        'x86_64-apple-darwin,
                        'i686-unknown-linux-gnu,
                        'i686-pc-windows-msvc,
                        'i686-pc-windows-gnu,
                        'aarch64-apple-darwin,
                        'aarch64-unknown-linux-gnu
                      |]
                    ],
                  js2n.string.MinLength 1
                ]
            )
            | doc m%"
              `rustc` is capable of generating code for many platforms. The `target` specifies the platform that the code will be generated for. By default, `cargo` and `rustc` use the host toolchain's platform as the target. To build for a different `target`, usually the target's standard library needs to be installed first via the `rustup target` command. Or you can run `rustc --print target-list` to list [`"built-in" targets`](https://doc.rust-lang.org/rustc/targets/built-in.html) 
              
               Get more from [`Platform Support`](https://doc.rust-lang.org/rustc/platform-support.html) and [`Targets`](https://doc.rust-lang.org/rustc/targets/index.html)
            "%
            | optional,
          ..
        }
        | doc m%"
          A `toolchain` is a complete installation of the Rust compiler (`rustc`) and related tools (like `cargo`). A toolchain specification includes the release channel or version, and the host platform that the toolchain runs on.
          
           Get more from [`Toolchains`](https://rust-lang.github.io/rustup/concepts/toolchains.html)
        "%,
      ..
    }