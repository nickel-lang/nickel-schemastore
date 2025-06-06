# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Authors" = Array String,
      "definitions.Build" =
        std.contract.any_of [ String, js2n.Enum [ true, false ] ],
      "definitions.Categories" = Array String,
      "definitions.CodegenUnits" =
        std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 0 ],
      "definitions.DebugAssertions" = Bool,
      "definitions.DebugLevel" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'full,
                    'limited,
                    'line-tables-only,
                    'line-directives-only,
                    'none
                  |]
                ],
              Bool,
              std.contract.Sequence
                [ std.number.Integer, js2n.Enum [ 0, 1, 2 ] ]
            ],
      "definitions.Dependency" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.SemVerRequirement", String ],
              std.contract.Sequence
                [ refs."definitions.DetailedDependency", { _ | Dyn } ]
            ],
      "definitions.Description" = String,
      "definitions.DetailedDependency" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                branch
                  | String
                  | doc "Specify the Git branch to use in case of a [Git dependency](https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html#specifying-dependencies-from-git-repositories)."
                  | optional,
                default-features
                  | Bool
                  | doc "Use the default features of the dependency."
                  | optional,
                default_features
                  | Bool
                  | doc "\"default_features\" is deprecated. Use \"default-features\" instead."
                  | optional,
                features
                  | Array String
                  | doc "List of features to activate in the dependency."
                  | optional,
                git
                  | String
                  | doc m%"
                    To depend on a library located in a `git` repository, the minimum information
                    you need to specify is the location of the repository with the `git` key:
                    
                    ```toml
                    [dependencies]
                    rand = { git = "https://github.com/rust-lang-nursery/rand" }
                    ```
                    
                    Cargo will fetch the `git` repository at this location then look for a
                    `Cargo.toml` for the requested crate anywhere inside the `git` repository
                    (not necessarily at the root - for example, specifying a member crate name
                    of a workspace and setting `git` to the repository containing the workspace).
                    
                    Since we haven't specified any other information, Cargo assumes that
                    we intend to use the latest commit on the main branch to build our package.
                    You can combine the `git` key with the `rev`, `tag`, or `branch` keys to
                    specify something else. Here's an example of specifying that you want to use
                    the latest commit on a branch named `next`:
                    
                    ```toml
                    [dependencies]
                    rand = { git = "https://github.com/rust-lang-nursery/rand", branch = "next" }
                    ```
                    
                    See [Git Authentication](https://doc.rust-lang.org/cargo/appendix/git-authentication.html) for help with git authentication for private repos.
                    
                    > **Note**: [crates.io](https://crates.io/) does not allow packages to be published with `git`
                    > dependencies (`git` [dev-dependencies](https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html#development-dependencies) are ignored). See the [Multiple
                    > locations](https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html#multiple-locations) section for a fallback alternative.
                    
                  "%
                  | optional,
                "optional"
                  | Bool
                  | doc m%"
                    Mark the dependency as optional.
                    
                    Optional dependencies can be activated through features.
                  "%
                  | optional,
                package
                  | String
                  | doc m%"
                    Specify the name of the package.
                    
                    When writing a `[dependencies]` section in `Cargo.toml` the key you write for a
                    dependency typically matches up to the name of the crate you import from in the
                    code. For some projects, though, you may wish to reference the crate with a
                    different name in the code regardless of how it's published on crates.io. For
                    example you may wish to:
                    
                    * Avoid the need to  `use foo as bar` in Rust source.
                    * Depend on multiple versions of a crate.
                    * Depend on crates with the same name from different registries.
                    
                    To support this Cargo supports a `package` key in the `[dependencies]` section
                    of which package should be depended on:
                    
                    ```toml
                    [package]
                    name = "mypackage"
                    version = "0.0.1"
                    
                    [dependencies]
                    foo = "0.1"
                    bar = { git = "https://github.com/example/project", package = "foo" }
                    baz = { version = "0.1", registry = "custom", package = "foo" }
                    ```
                    
                    In this example, three crates are now available in your Rust code:
                    
                    ```rust
                    extern crate foo; // crates.io
                    extern crate bar; // git repository
                    extern crate baz; // registry `custom`
                    ```
                    
                    All three of these crates have the package name of `foo` in their own
                    `Cargo.toml`, so we're explicitly using the `package` key to inform Cargo that
                    we want the `foo` package even though we're calling it something else locally.
                    The `package` key, if not specified, defaults to the name of the dependency
                    being requested.
                    
                  "%
                  | optional,
                path
                  | String
                  | doc m%"
                    Cargo supports **path dependencies** which are typically sub-crates that live within one repository.
                    Let's start off by making a new crate inside of our `hello_world` package:
                    
                    ```console
                    # inside of hello_world/
                    $ cargo new hello_utils
                    ```
                    
                    This will create a new folder `hello_utils` inside of which a `Cargo.toml` and
                    `src` folder are ready to be configured. In order to tell Cargo about this, open
                    up `hello_world/Cargo.toml` and add `hello_utils` to your dependencies:
                    
                    ```toml
                    [dependencies]
                    hello_utils = { path = "hello_utils" }
                    ```
                    
                    This tells Cargo that we depend on a crate called `hello_utils` which is found
                    in the `hello_utils` folder (relative to the `Cargo.toml` it's written in).
                  "%
                  | optional,
                public | Bool | optional,
                registry
                  | String
                  | doc m%"
                    To specify a dependency from a registry other than [crates.io](https://crates.io), first the
                    registry must be configured in a `.cargo/config.toml` file. See the [registries
                    documentation](https://doc.rust-lang.org/cargo/reference/registries.html) for more information. In the dependency, set the `registry` key
                    to the name of the registry to use.
                    
                    ```toml
                    [dependencies]
                    some-crate = { version = "1.0", registry = "my-registry" }
                    ```
                    
                    > **Note**: [crates.io](https://crates.io) does not allow packages to be published with
                    > dependencies on other registries.
                    
                  "%
                  | optional,
                registry-index | String | optional,
                rev
                  | String
                  | doc m%"
                    Specify the Git revision to use in case of a [Git dependency](https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html#choice-of-commit).
                    
                    This can be a commit hash, or a named reference exposed by the remote repository. GitHub Pull Requests may be specified using the `refs/pull/ID/head` format.
                  "%
                  | optional,
                tag
                  | String
                  | doc "Specify the Git tag to use in case of a [Git dependency](https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html#specifying-dependencies-from-git-repositories)."
                  | optional,
                version
                  | refs."definitions.SemVerRequirement"
                  | String
                  | optional,
                workspace
                  | Bool
                  | doc "Inherit this dependency from the workspace manifest."
                  | optional,
              }
            ],
      "definitions.DetailedLint" =
        {
            level | refs."definitions.LintLevel" | String | optional,
            "priority"
              | std.number.Integer
              | doc "The priority that controls which lints or [lint groups](https://doc.rust-lang.org/rustc/lints/groups.html) override other lint groups. Lower (particularly negative) numbers have lower priority, being overridden by higher numbers, and show up first on the command-line to tools like rustc."
              | optional,
            ..
          },
      "definitions.Documentation" = String,
      "definitions.Edition" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| '"2024", '"2021", '"2018", '"2015" |] ],
      "definitions.Exclude" = Array String,
      "definitions.Homepage" = String,
      "definitions.Include" = Array String,
      "definitions.Incremental" = Bool,
      "definitions.Inherits" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'release, 'bench, 'test, 'dev |] ],
      "definitions.Keywords" = Array String,
      "definitions.License" = String,
      "definitions.LicenseFile" = String,
      "definitions.Lint" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.LintLevel", String ],
              std.contract.Sequence
                [ refs."definitions.DetailedLint", { _ | Dyn } ]
            ],
      "definitions.LintLevel" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'allow, 'warn, 'deny, 'forbid |] ],
      "definitions.Lints" =
        {
            clippy
              | { _ | refs."definitions.Lint" }
              | doc "Lint settings for [Clippy](https://doc.rust-lang.org/clippy/). See Clippy's [individual lints](https://rust-lang.github.io/rust-clippy/master/index.html) or [lint groups](https://doc.rust-lang.org/clippy/lints.html) documentation."
              | optional,
            rust
              | { _ | refs."definitions.Lint" }
              | doc "Lint settings for the Rust compiler. See the Rust compiler's [individual lints](https://doc.rust-lang.org/rustc/lints/listing/index.html) or [lint groups](https://doc.rust-lang.org/rustc/lints/groups.html)."
              | optional,
            rustdoc
              | { _ | refs."definitions.Lint" }
              | doc "Lint settings for [Rustdoc](https://doc.rust-lang.org/rustdoc/). See Rustdoc's [individual lints](https://doc.rust-lang.org/rustdoc/lints.html) (rustdoc does not have lint groups)"
              | optional,
          },
      "definitions.Lto" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'off, 'thin, 'fat |] ],
              Bool
            ],
      "definitions.MetaBuild" = Array String,
      "definitions.OptLevel" =
        std.contract.any_of
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'z, 's |] ],
              std.contract.Sequence
                [ std.number.Integer, js2n.Enum [ 0, 1, 2, 3 ] ]
            ],
      "definitions.OverflowChecks" = Bool,
      "definitions.Package" =
        {
            authors
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Authors", Array Dyn ],
                  std.contract.Sequence
                    [ refs."definitions.WorkspaceInheritance", { _ | Dyn } ]
                ]
              | doc m%"
                The `authors` field lists people or organizations that are considered the
                "authors" of the package. The exact meaning is open to interpretation — it may
                list the original or primary authors, current maintainers, or owners of the
                package. These names will be listed on the crate's page on
                [crates.io](https://crates.io). An optional email address may be included within angled
                brackets at the end of each author.
                
                > **Note**: [crates.io](https://crates.io) requires at least one author to be listed.
              "%
              | optional,
            autobenches
              | Bool
              | doc m%"
                Disable automatic discovery of `bench` targets.
                
                Disabling automatic discovery should only be needed for specialized
                situations. For example, if you have a library where you want a *module* named
                `bin`, this would present a problem because Cargo would usually attempt to
                compile anything in the `bin` directory as an executable. Here is a sample
                layout of this scenario:
                
                ```
                ├── Cargo.toml
                └── src
                    ├── lib.rs
                    └── bin
                        └── mod.rs
                ```
                
              "%
              | optional,
            autobins
              | Bool
              | doc m%"
                Disable automatic discovery of `bin` targets.
                
                Disabling automatic discovery should only be needed for specialized
                situations. For example, if you have a library where you want a *module* named
                `bin`, this would present a problem because Cargo would usually attempt to
                compile anything in the `bin` directory as an executable. Here is a sample
                layout of this scenario:
                
                ```
                ├── Cargo.toml
                └── src
                    ├── lib.rs
                    └── bin
                        └── mod.rs
                ```
                
                To prevent Cargo from inferring `src/bin/mod.rs` as an executable, set
                this to `false` to disable auto-discovery.
              "%
              | optional,
            autoexamples
              | Bool
              | doc m%"
                Disable automatic discovery of `example` targets.
                
                Disabling automatic discovery should only be needed for specialized
                situations. For example, if you have a library where you want a *module* named
                `bin`, this would present a problem because Cargo would usually attempt to
                compile anything in the `bin` directory as an executable. Here is a sample
                layout of this scenario:
                
                ```
                ├── Cargo.toml
                └── src
                    ├── lib.rs
                    └── bin
                        └── mod.rs
                ```
                
              "%
              | optional,
            autotests
              | Bool
              | doc m%"
                Disable automatic discovery of `test` targets.
                
                Disabling automatic discovery should only be needed for specialized
                situations. For example, if you have a library where you want a *module* named
                `bin`, this would present a problem because Cargo would usually attempt to
                compile anything in the `bin` directory as an executable. Here is a sample
                layout of this scenario:
                
                ```
                ├── Cargo.toml
                └── src
                    ├── lib.rs
                    └── bin
                        └── mod.rs
                ```
                
              "%
              | optional,
            build
              | refs."definitions.Build"
              | std.contract.any_of [ Bool, String ]
              | optional,
            categories
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Categories", Array Dyn ],
                  std.contract.Sequence
                    [ refs."definitions.WorkspaceInheritance", { _ | Dyn } ]
                ]
              | doc m%"
                The `categories` field is an array of strings of the categories this package
                belongs to.
                
                ```toml
                categories = ["command-line-utilities", "development-tools::cargo-plugins"]
                ```
                
                > **Note**: [crates.io](https://crates.io) has a maximum of 5 categories. Each category should
                > match one of the strings available at https://crates.io/category_slugs, and
                > must match exactly.
              "%
              | optional,
            default-run
              | String
              | doc m%"
                The `default-run` field in the `[package]` section of the manifest can be used
                to specify a default binary picked by [`cargo run`](https://doc.rust-lang.org/cargo/commands/cargo-run.html). For example, when there is
                both `src/bin/a.rs` and `src/bin/b.rs`:
                
                ```toml
                [package]
                default-run = "a"
                ```
              "%
              | optional,
            description
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Description", String ],
                  std.contract.Sequence
                    [ refs."definitions.WorkspaceInheritance", { _ | Dyn } ]
                ]
              | doc m%"
                The description is a short blurb about the package. [crates.io](https://crates.io) will display
                this with your package. This should be plain text (not Markdown).
                
                ```toml
                [package]
                # ...
                description = "A short description of my package"
                ```
                
                > **Note**: [crates.io](https://crates.io) requires the `description` to be set.
              "%
              | optional,
            documentation
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Documentation", String ],
                  std.contract.Sequence
                    [ refs."definitions.WorkspaceInheritance", { _ | Dyn } ]
                ]
              | doc m%"
                
                The `documentation` field specifies a URL to a website hosting the crate's
                documentation. If no URL is specified in the manifest file, [crates.io](https://crates.io) will
                automatically link your crate to the corresponding [docs.rs](https://docs.rs) page.
                
                ```toml
                [package]
                # ...
                documentation = "https://docs.rs/bitflags"
                ```
                
              "%
              | optional,
            edition
              | std.contract.any_of
                [
                  std.contract.Sequence [ refs."definitions.Edition", String ],
                  std.contract.Sequence
                    [ refs."definitions.WorkspaceInheritance", { _ | Dyn } ]
                ]
              | doc m%"
                The `edition` key affects which edition your package is compiled with. Cargo
                will always generate packages via [`cargo new`](https://doc.rust-lang.org/cargo/commands/cargo-new.html) with the `edition` key set to the
                latest edition. Setting the `edition` key in `[package]` will affect all
                targets/crates in the package, including test suites, benchmarks, binaries,
                examples, etc.
              "%
              | optional,
            exclude
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Exclude", Array Dyn ],
                  std.contract.Sequence
                    [ refs."definitions.WorkspaceInheritance", { _ | Dyn } ]
                ]
              | doc m%"
                You can explicitly specify that a set of file patterns should be ignored or
                included for the purposes of packaging. The patterns specified in the
                `exclude` field identify a set of files that are not included, and the
                patterns in `include` specify files that are explicitly included.
                
                The patterns should be [gitignore](https://git-scm.com/docs/gitignore)-style patterns. Briefly:
                
                - `foo` matches any file or directory with the name `foo` anywhere in the
                  package. This is equivalent to the pattern `**/foo`.
                - `/foo` matches any file or directory with the name `foo` only in the root of
                  the package.
                - `foo/` matches any *directory* with the name `foo` anywhere in the package.
                - Common glob patterns like `*`, `?`, and `[]` are supported:
                  - `*` matches zero or more characters except `/`.  For example, `*.html`
                    matches any file or directory with the `.html` extension anywhere in the
                    package.
                  - `?` matches any character except `/`. For example, `foo?` matches `food`,
                    but not `foo`.
                  - `[]` allows for matching a range of characters. For example, `[ab]`
                    matches either `a` or `b`. `[a-z]` matches letters a through z.
                - `**/` prefix matches in any directory. For example, `**/foo/bar` matches the
                  file or directory `bar` anywhere that is directly under directory `foo`.
                - `/**` suffix matches everything inside. For example, `foo/**` matches all
                  files inside directory `foo`, including all files in subdirectories below
                  `foo`.
                - `/**/` matches zero or more directories. For example, `a/**/b` matches
                  `a/b`, `a/x/b`, `a/x/y/b`, and so on.
                - `!` prefix negates a pattern. For example, a pattern of `src/**.rs` and
                  `!foo.rs` would match all files with the `.rs` extension inside the `src`
                  directory, except for any file named `foo.rs`.
                
                If git is being used for a package, the `exclude` field will be seeded with
                the `gitignore` settings from the repository.
                
                ```toml
                [package]
                # ...
                exclude = ["build/**/*.o", "doc/**/*.html"]
                ```
                
                ```toml
                [package]
                # ...
                include = ["src/**/*", "Cargo.toml"]
                ```
                
                The options are mutually exclusive: setting `include` will override an
                `exclude`. Note that `include` must be an exhaustive list of files as otherwise
                necessary source files may not be included. The package's `Cargo.toml` is
                automatically included.
                
                The include/exclude list is also used for change tracking in some situations.
                For targets built with `rustdoc`, it is used to determine the list of files to
                track to determine if the target should be rebuilt. If the package has a
                [build script](https://doc.rust-lang.org/cargo/reference/build-scripts.html) that does not emit any `rerun-if-*` directives, then the
                include/exclude list is used for tracking if the build script should be re-run
                if any of those files change.
              "%
              | optional,
            homepage
              | std.contract.any_of
                [
                  std.contract.Sequence [ refs."definitions.Homepage", String ],
                  std.contract.Sequence
                    [ refs."definitions.WorkspaceInheritance", { _ | Dyn } ]
                ]
              | doc m%"
                The `homepage` field should be a URL to a site that is the home page for your
                package.
                
                ```toml
                [package]
                # ...
                homepage = "https://serde.rs/"
                ```
              "%
              | optional,
            im-a-teapot
              | Bool
              | doc "Sets whether the current package is a teapot or something else that is not capable of brewing tea."
              | optional,
            include
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Include", Array Dyn ],
                  std.contract.Sequence
                    [ refs."definitions.WorkspaceInheritance", { _ | Dyn } ]
                ]
              | doc m%"
                You can explicitly specify that a set of file patterns should be ignored or
                included for the purposes of packaging. The patterns specified in the
                `exclude` field identify a set of files that are not included, and the
                patterns in `include` specify files that are explicitly included.
                
                The patterns should be [gitignore](https://git-scm.com/docs/gitignore)-style patterns. Briefly:
                
                - `foo` matches any file or directory with the name `foo` anywhere in the
                  package. This is equivalent to the pattern `**/foo`.
                - `/foo` matches any file or directory with the name `foo` only in the root of
                  the package.
                - `foo/` matches any *directory* with the name `foo` anywhere in the package.
                - Common glob patterns like `*`, `?`, and `[]` are supported:
                  - `*` matches zero or more characters except `/`.  For example, `*.html`
                    matches any file or directory with the `.html` extension anywhere in the
                    package.
                  - `?` matches any character except `/`. For example, `foo?` matches `food`,
                    but not `foo`.
                  - `[]` allows for matching a range of characters. For example, `[ab]`
                    matches either `a` or `b`. `[a-z]` matches letters a through z.
                - `**/` prefix matches in any directory. For example, `**/foo/bar` matches the
                  file or directory `bar` anywhere that is directly under directory `foo`.
                - `/**` suffix matches everything inside. For example, `foo/**` matches all
                  files inside directory `foo`, including all files in subdirectories below
                  `foo`.
                - `/**/` matches zero or more directories. For example, `a/**/b` matches
                  `a/b`, `a/x/b`, `a/x/y/b`, and so on.
                - `!` prefix negates a pattern. For example, a pattern of `src/**.rs` and
                  `!foo.rs` would match all files with the `.rs` extension inside the `src`
                  directory, except for any file named `foo.rs`.
                
                If git is being used for a package, the `exclude` field will be seeded with
                the `gitignore` settings from the repository.
                
                ```toml
                [package]
                # ...
                exclude = ["build/**/*.o", "doc/**/*.html"]
                ```
                
                ```toml
                [package]
                # ...
                include = ["src/**/*", "Cargo.toml"]
                ```
                
                The options are mutually exclusive: setting `include` will override an
                `exclude`. Note that `include` must be an exhaustive list of files as otherwise
                necessary source files may not be included. The package's `Cargo.toml` is
                automatically included.
                
                The include/exclude list is also used for change tracking in some situations.
                For targets built with `rustdoc`, it is used to determine the list of files to
                track to determine if the target should be rebuilt. If the package has a
                [build script](https://doc.rust-lang.org/cargo/reference/build-scripts.html) that does not emit any `rerun-if-*` directives, then the
                include/exclude list is used for tracking if the build script should be re-run
                if any of those files change.
              "%
              | optional,
            keywords
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Keywords", Array Dyn ],
                  std.contract.Sequence
                    [ refs."definitions.WorkspaceInheritance", { _ | Dyn } ]
                ]
              | doc m%"
                The `keywords` field is an array of strings that describe this package. This
                can help when searching for the package on a registry, and you may choose any
                words that would help someone find this crate.
                
                ```toml
                [package]
                # ...
                keywords = ["gamedev", "graphics"]
                ```
                
                > **Note**: [crates.io](https://crates.io) has a maximum of 5 keywords. Each keyword must be
                > ASCII text, start with a letter, and only contain letters, numbers, `_` or
                > `-`, and have at most 20 characters.
              "%
              | optional,
            license
              | std.contract.any_of
                [
                  std.contract.Sequence [ refs."definitions.License", String ],
                  std.contract.Sequence
                    [ refs."definitions.WorkspaceInheritance", { _ | Dyn } ]
                ]
              | doc m%"
                The `license` field contains the name of the software license that the package
                is released under.
                
                [crates.io](https://crates.io/) interprets the `license` field as an [SPDX 2.1 license
                expression](https://spdx.org/spdx-specification-21-web-version#h.jxpfx0ykyb60). The name must be a known license
                from the [SPDX license list 3.6](https://github.com/spdx/license-list-data/tree/v3.6). Parentheses are not
                currently supported. See the [SPDX site](https://spdx.org/license-list) for more information.
                
                SPDX license expressions support AND and OR operators to combine multiple
                licenses.
                
                ```toml
                [package]
                # ...
                license = "MIT OR Apache-2.0"
                ```
                
                Using `OR` indicates the user may choose either license. Using `AND` indicates
                the user must comply with both licenses simultaneously. The `WITH` operator
                indicates a license with a special exception. Some examples:
                
                * `MIT OR Apache-2.0`
                * `LGPL-2.1 AND MIT AND BSD-2-Clause`
                * `GPL-2.0+ WITH Bison-exception-2.2`
                
                If a package is using a nonstandard license, then the `license-file` field may
                be specified in lieu of the `license` field.
              "%
              | optional,
            license-file
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.LicenseFile", String ],
                  std.contract.Sequence
                    [ refs."definitions.WorkspaceInheritance", { _ | Dyn } ]
                ]
              | doc m%"
                The `license-file` field contains the path to a file
                containing the text of the license (relative to this `Cargo.toml`).
                
                ```toml
                [package]
                # ...
                license-file = "LICENSE.txt"
                ```
                
                > **Note**: [crates.io](https://crates.io) requires either `license` or `license-file` to be set.
              "%
              | optional,
            links
              | String
              | doc m%"
                The `links` field specifies the name of a native library that is being linked
                to. More information can be found in the [`links`](https://doc.rust-lang.org/cargo/reference/build-scripts.html#the-links-manifest-key) section of the build
                script guide.
                
                ```toml
                [package]
                # ...
                links = "foo"
                ```
              "%
              | optional,
            metabuild | refs."definitions.MetaBuild" | Array Dyn | optional,
            metadata
              | {
                playdate
                  | refs."definitions.PlaydateMetadata"
                  | { _ | Dyn }
                  | optional,
                ..
              }
              | doc m%"
                Cargo by default will warn about unused keys in `Cargo.toml` to assist in
                detecting typos and such. The `package.metadata` table, however, is completely
                ignored by Cargo and will not be warned about. This section can be used for
                tools which would like to store package configuration in `Cargo.toml`. For
                example:
                
                ```toml
                [package]
                name = "..."
                # ...
                
                # Metadata used when generating an Android APK, for example.
                [package.metadata.android]
                package-name = "my-awesome-android-app"
                assets = "path/to/static"
                ```
                
              "%
              | optional,
            name
              | String
              | doc m%"
                The package name is an identifier used to refer to the package. It is used
                when listed as a dependency in another package, and as the default name of
                inferred lib and bin targets.
                
                The name must use only [alphanumeric](https://doc.rust-lang.org/std/primitive.char.html#method.is_alphanumeric) characters or `-` or `_`, and cannot be empty.
                Note that [`cargo new`](https://doc.rust-lang.org/cargo/commands/cargo-new.html) and [`cargo init`](https://doc.rust-lang.org/cargo/commands/cargo-init.html) impose some additional restrictions on
                the package name, such as enforcing that it is a valid Rust identifier and not
                a keyword. [crates.io](https://crates.io) imposes even more restrictions, such as
                enforcing only ASCII characters, not a reserved name, not a special Windows
                name such as "nul", is not too long, etc.
              "%,
            namespaced-features | Bool | optional,
            publish
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.Publish",
                      std.contract.any_of [ Bool, Array Dyn ]
                    ],
                  std.contract.Sequence
                    [ refs."definitions.WorkspaceInheritance", { _ | Dyn } ]
                ]
              | doc m%"
                The `publish` field can be used to prevent a package from being published to a package registry (like *crates.io*) by mistake, for instance to keep a package
                private in a company.
                
                ```toml
                [package]
                # ...
                publish = false
                ```
                
                The value may also be an array of strings which are registry names that are
                allowed to be published to.
                
                ```toml
                [package]
                # ...
                publish = ["some-registry-name"]
                ```
              "%
              | optional,
            publish-lockfile | Bool | optional,
            readme
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.Readme",
                      std.contract.any_of [ Bool, String ]
                    ],
                  std.contract.Sequence
                    [ refs."definitions.WorkspaceInheritance", { _ | Dyn } ]
                ]
              | doc m%"
                The `readme` field should be the path to a file in the package root (relative
                to this `Cargo.toml`) that contains general information about the package.
                This file will be transferred to the registry when you publish. [crates.io](https://crates.io)
                will interpret it as Markdown and render it on the crate's page.
                
                ```toml
                [package]
                # ...
                readme = "README.md"
                ```
                
                If no value is specified for this field, and a file named `README.md`,
                `README.txt` or `README` exists in the package root, then the name of that
                file will be used. You can suppress this behavior by setting this field to
                `false`. If the field is set to `true`, a default value of `README.md` will
                be assumed.
                
              "%
              | optional,
            repository
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Repository", String ],
                  std.contract.Sequence
                    [ refs."definitions.WorkspaceInheritance", { _ | Dyn } ]
                ]
              | doc m%"
                The `repository` field should be a URL to the source repository for your
                package.
                
                ```toml
                [package]
                # ...
                repository = "https://github.com/rust-lang/cargo/"
                ```
              "%
              | optional,
            resolver | refs."definitions.Resolver" | String | optional,
            rust-version
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.RustVersion", String ],
                  std.contract.Sequence
                    [ refs."definitions.WorkspaceInheritance", { _ | Dyn } ]
                ]
              | doc m%"
                The `rust-version` field is an optional key that tells cargo what version of the
                Rust language and compiler your package can be compiled with. If the currently
                selected version of the Rust compiler is older than the stated version, cargo
                will exit with an error, telling the user what version is required.
                
                The first version of Cargo that supports this field was released with Rust 1.56.0.
                In older releases, the field will be ignored, and Cargo will display a warning.
                
                ```toml
                [package]
                # ...
                rust-version = "1.56"
                ```
                
                The Rust version must be a bare version number with two or three components; it
                cannot include semver operators or pre-release identifiers. Compiler pre-release
                identifiers such as -nightly will be ignored while checking the Rust version.
                The `rust-version` must be equal to or newer than the version that first
                introduced the configured `edition`.
                
                The `rust-version` may be ignored using the `--ignore-rust-version` option.
                
                Setting the `rust-version` key in `[package]` will affect all targets/crates in
                the package, including test suites, benchmarks, binaries, examples, etc.
              "%
              | optional,
            version
              | std.contract.any_of
                [
                  std.contract.Sequence [ refs."definitions.SemVer", String ],
                  std.contract.Sequence
                    [ refs."definitions.WorkspaceInheritance", { _ | Dyn } ]
                ]
              | doc m%"
                Cargo bakes in the concept of [Semantic Versioning](https://semver.org/), so make sure you follow some basic rules:
                
                * Before you reach 1.0.0, anything goes, but if you make breaking changes,
                    increment the minor version. In Rust, breaking changes include adding fields to
                    structs or variants to enums.
                * After 1.0.0, only make breaking changes when you increment the major version.
                    Don't break the build.
                * After 1.0.0, don't add any new public API (no new `pub` anything) in patch-level
                    versions. Always increment the minor version if you add any new `pub` structs,
                    traits, fields, types, functions, methods or anything else.
                * Use version numbers with three numeric parts such as 1.0.0 rather than 1.0.
              "%
              | optional,
            workspace
              | String
              | doc m%"
                The `workspace` field can be used to configure the workspace that this package
                will be a member of. If not specified this will be inferred as the first
                Cargo.toml with `[workspace]` upwards in the filesystem. Setting this is
                useful if the member is not inside a subdirectory of the workspace root.
                
                ```toml
                [package]
                # ...
                workspace = "path/to/workspace/root"
                ```
                
                This field cannot be specified if the manifest already has a `[workspace]`
                table defined. That is, a crate cannot both be a root crate in a workspace
                (contain `[workspace]`) and also be a member crate of another workspace
                (contain `package.workspace`).
                
                For more information, see the [workspaces chapter](https://doc.rust-lang.org/cargo/reference/workspaces.html).
              "%
              | optional,
          },
      "definitions.Panic" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'abort, 'unwind |] ],
      "definitions.Platform" =
        {
            build-dependencies
              | { _ | refs."definitions.Dependency" }
              | doc m%"
                You can depend on other Cargo-based crates for use in your build scripts.
                Dependencies are declared through the `build-dependencies` section of the
                manifest:
                
                ```toml
                [build-dependencies]
                cc = "1.0.3"
                ```
                
                The build script **does not** have access to the dependencies listed
                in the `dependencies` or `dev-dependencies` section. Build
                dependencies will likewise not be available to the package itself
                unless listed under the `dependencies` section as well. A package
                itself and its build script are built separately, so their
                dependencies need not coincide. Cargo is kept simpler and cleaner by
                using independent dependencies for independent purposes.
              "%
              | optional,
            build_dependencies
              | { _ | refs."definitions.Dependency" }
              | optional,
            dependencies
              | { _ | refs."definitions.Dependency" }
              | doc m%"
                Cargo is configured to look for dependencies on [crates.io](https://crates.io) by default. Only
                the name and a version string are required in this case. In [the cargo
                guide](https://doc.rust-lang.org/cargo/guide/index.html), we specified a dependency on the `time` crate:
                
                ```toml
                [dependencies]
                time = "0.1.12"
                ```
                
                The string `"0.1.12"` is a [semver](https://github.com/steveklabnik/semver#requirements) version requirement. Since this
                string does not have any operators in it, it is interpreted the same way as
                if we had specified `"^0.1.12"`, which is called a caret requirement.
                
                A dependency can also be defined by a table with additional options:
                
                ```toml
                [dependencies]
                time = { path = "../time", version = "0.1.12" }
                ```
              "%
              | optional,
            dev-dependencies
              | { _ | refs."definitions.Dependency" }
              | doc m%"
                The format of `[dev-dependencies]` is equivalent to `[dependencies]`:
                
                ```toml
                [dev-dependencies]
                tempdir = "0.3"
                ```
                
                Dev-dependencies are not used when compiling
                a package for building, but are used for compiling tests, examples, and
                benchmarks.
                
                These dependencies are *not* propagated to other packages which depend on this
                package.
                
                You can also have target-specific development dependencies by using
                `dev-dependencies` in the target section header instead of `dependencies`. For
                example:
                
                ```toml
                [target.'cfg(unix)'.dev-dependencies]
                mio = "0.0.1"
                ```
                
                > **Note**: When a package is published, only dev-dependencies that specify a
                > `version` will be included in the published crate. For most use cases,
                > dev-dependencies are not needed when published, though some users (like OS
                > packagers) may want to run tests within a crate, so providing a `version` if
                > possible can still be beneficial.
                
              "%
              | optional,
            dev_dependencies | { _ | refs."definitions.Dependency" } | optional,
            ..
          },
      "definitions.PlaydateMetadata" =
        {
            assets
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.PlaydateMetadataAssetsMap",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.PlaydateMetadataAssetsArray",
                      Array Dyn
                    ]
                ]
              | optional,
            author | String | optional,
            build-number
              | std.number.Integer
              | js2n.number.ExclusiveMinimum 0
              | doc m%"
                A monotonically-increasing integer value used to indicate a unique version of your game. This can be set using an automated build process like Continuous Integration to avoid having to set the value by hand.
                
                For sideloaded games, buildNumber is required and is used to determine when a newer version is available to download.
              "%
              | optional,
            bundle-id
              | String
              | doc "A unique identifier for your game, in reverse DNS notation.",
            content-warning
              | String
              | doc "Optional. A content warning that displays when the user launches your game for the first time. The user will have the option of backing out and not launching your game if they choose."
              | optional,
            content-warning2
              | String
              | doc m%"
                Optional. A second content warning that displays on a second screen when the user launches your game for the first time. The user will have the option of backing out and not launching your game if they choose.
                
                Note: `content-warning2` will only display if a `content-warning` attribute is also specified.
                
                The string displayed on the content warning screen can only be so long before it will be truncated with an "…" character. Be sure to keep this in mind when designing your `content-warning` and `content-warning2` text.
              "%
              | optional,
            description | String | optional,
            dev-assets
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.PlaydateMetadataAssetsMap",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.PlaydateMetadataAssetsArray",
                      Array Dyn
                    ]
                ]
              | optional,
            image-path
              | String
              | doc m%"
                A directory of images that will be used by the launcher.
                
                More in [official documentation](https://sdk.play.date/#pdxinfo).
              "%
              | optional,
            launch-sound-path
              | String
              | doc m%"
                Should point to the path of a short audio file to be played as the game launch animation is taking place.
                
                More in [official documentation](https://sdk.play.date/#pdxinfo).
              "%
              | optional,
            name
              | String
              | doc "A game version number, formatted any way you wish, that is displayed to players. It is not used to compute when updates should occur."
              | optional,
            options
              | refs."definitions.PlaydateMetadataOptions"
              | { _ | Dyn }
              | optional,
            support | {  .. } | optional,
            version | String | optional,
          },
      "definitions.PlaydateMetadataAssetsArray" =
        std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
      "definitions.PlaydateMetadataAssetsMap" =
        js2n.record.Record
            {
              additional = 'Some (std.contract.any_of [ Bool, String ]),
              patterns = {},
              properties =
                {
                    options =
                      std.contract.Sequence
                          [
                            refs."definitions.PlaydateMetadataAssetsOptions",
                            { _ | Dyn }
                          ],
                  },
              required = {},
            },
      "definitions.PlaydateMetadataAssetsOptions" =
        {
            dependencies
              | Bool
              | doc "Allow build assets for dependencies."
              | optional,
            follow-symlinks | Bool | optional,
            method | std.enum.TagOrString | [| 'link, 'copy |] | optional,
            overwrite
              | Bool
              | doc "Allow overwriting existing files."
              | optional,
          },
      "definitions.PlaydateMetadataOptions" =
        {
            assets
              | refs."definitions.PlaydateMetadataAssetsOptions"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.Profile" =
        {
            codegen-units | refs."definitions.CodegenUnits" | Number | optional,
            debug | refs."definitions.DebugLevel" | optional,
            debug-assertions
              | refs."definitions.DebugAssertions"
              | Bool
              | optional,
            dir-name | String | optional,
            incremental | refs."definitions.Incremental" | Bool | optional,
            inherits | refs."definitions.Inherits" | String | optional,
            lto | refs."definitions.Lto" | optional,
            opt-level | refs."definitions.OptLevel" | optional,
            overflow-checks
              | refs."definitions.OverflowChecks"
              | Bool
              | optional,
            package
              | refs."definitions.ProfilePackageOverrides"
              | { _ | Dyn }
              | optional,
            panic | refs."definitions.Panic" | String | optional,
            rpath | refs."definitions.Rpath" | Bool | optional,
            split-debuginfo | refs."definitions.SplitDebuginfo" | optional,
            strip | refs."definitions.Strip" | optional,
            ..
          },
      "definitions.ProfilePackageOverrides" =
        {
            _ | std.contract.Sequence
              [ refs."definitions.Profile", { _ | Dyn } ]
          },
      "definitions.ProfileWithBuildOverride" =
        {
            build-override
              | refs."definitions.Profile"
              | { _ | Dyn }
              | optional,
            codegen-units | refs."definitions.CodegenUnits" | Number | optional,
            debug | refs."definitions.DebugLevel" | optional,
            debug-assertions
              | refs."definitions.DebugAssertions"
              | Bool
              | optional,
            incremental | refs."definitions.Incremental" | Bool | optional,
            lto | refs."definitions.Lto" | optional,
            opt-level | refs."definitions.OptLevel" | optional,
            overflow-checks
              | refs."definitions.OverflowChecks"
              | Bool
              | optional,
            package
              | refs."definitions.ProfilePackageOverrides"
              | { _ | Dyn }
              | optional,
            panic | refs."definitions.Panic" | String | optional,
            rpath | refs."definitions.Rpath" | Bool | optional,
            split-debuginfo | refs."definitions.SplitDebuginfo" | optional,
            strip | refs."definitions.Strip" | optional,
            ..
          },
      "definitions.Profiles" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [
                        refs."definitions.ProfileWithBuildOverride",
                        { _ | Dyn }
                      ]),
              patterns = {},
              properties =
                {
                    bench =
                      std.contract.Sequence
                          [
                            refs."definitions.ProfileWithBuildOverride",
                            { _ | Dyn }
                          ],
                    dev =
                      std.contract.Sequence
                          [
                            refs."definitions.ProfileWithBuildOverride",
                            { _ | Dyn }
                          ],
                    release =
                      std.contract.Sequence
                          [
                            refs."definitions.ProfileWithBuildOverride",
                            { _ | Dyn }
                          ],
                    test =
                      std.contract.Sequence
                          [
                            refs."definitions.ProfileWithBuildOverride",
                            { _ | Dyn }
                          ],
                  },
              required = {},
            },
      "definitions.Publish" =
        std.contract.any_of [ js2n.Enum [ true, false ], Array String ],
      "definitions.Readme" =
        std.contract.any_of [ String, js2n.Enum [ true, false ] ],
      "definitions.Repository" = String,
      "definitions.Resolver" =
        std.contract.Sequence [ std.enum.TagOrString, [| '"3", '"2", '"1" |] ],
      "definitions.Rpath" = Bool,
      "definitions.RustVersion" = String,
      "definitions.SemVer" = String,
      "definitions.SemVerRequirement" = String,
      "definitions.SplitDebuginfo" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'off |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'packed |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'unpacked |] ]
            ],
      "definitions.Strip" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'symbols, 'debuginfo, 'none |] ],
              js2n.Enum [ true ],
              js2n.Enum [ false ]
            ],
      "definitions.Target" =
        {
            bench
              | Bool
              | doc m%"
                The `bench` field indicates whether or not the target is benchmarked by
                default by [`cargo bench`](https://doc.rust-lang.org/cargo/commands/cargo-bench.html). The default is `true` for lib, bins, and
                benchmarks.
              "%
              | optional,
            crate-type
              | Array String
              | doc m%"
                The `crate-type` field defines the [crate types](https://doc.rust-lang.org/reference/linkage.html) that will be generated by the
                target. It is an array of strings, allowing you to specify multiple crate
                types for a single target. This can only be specified for libraries and
                examples. Binaries, tests, and benchmarks are always the "bin" crate type.
                
                The available options are `bin`, `lib`, `rlib`, `dylib`, `cdylib`,
                `staticlib`, and `proc-macro`. You can read more about the different crate
                types in the [Rust Reference Manual](https://doc.rust-lang.org/reference/linkage.html).
              "%
              | optional,
            crate_type | Array String | optional,
            "doc"
              | Bool
              | doc m%"
                The `doc` field indicates whether or not the target is included in the
                documentation generated by [`cargo doc`](https://doc.rust-lang.org/cargo/commands/cargo-doc.html) by default. The default is `true` for
                libraries and binaries.
                
                > **Note**: The binary will be skipped if its name is the same as the lib
                > target.
              "%
              | optional,
            doctest
              | Bool
              | doc m%"
                The `doctest` field indicates whether or not [documentation examples](https://doc.rust-lang.org/rustdoc/documentation-tests.html) are
                tested by default by [`cargo test`](https://doc.rust-lang.org/cargo/commands/cargo-test.html). This is only relevant for libraries, it
                has no effect on other sections. The default is `true` for the library.
                
              "%
              | optional,
            edition | refs."definitions.Edition" | String | optional,
            harness
              | Bool
              | doc m%"
                The `harness` field indicates that the [`--test` flag](https://doc.rust-lang.org/rustc/command-line-arguments.html#option-test) will be passed to
                `rustc` which will automatically include the libtest library which is the
                driver for collecting and running tests marked with the [`#[test]` attribute](https://doc.rust-lang.org/reference/attributes/testing.html#the-test-attribute) or benchmarks with the `#[bench]` attribute. The
                default is `true` for all targets.
                
                If set to `false`, then you are responsible for defining a `main()` function
                to run tests and benchmarks.
                
                Tests have the [`cfg(test)` conditional expression](https://doc.rust-lang.org/reference/conditional-compilation.html#test) enabled whether
                or not the harness is enabled.
              "%
              | optional,
            name
              | String
              | doc m%"
                The `name` field specifies the name of the target, which corresponds to the
                filename of the artifact that will be generated. For a library, this is the
                crate name that dependencies will use to reference it.
                
                For the `[lib]` and the default binary (`src/main.rs`), this defaults to the
                name of the package, with any dashes replaced with underscores. For other
                [auto discovered](https://doc.rust-lang.org/cargo/reference/cargo-targets.html#target-auto-discovery) targets, it defaults to the
                directory or file name.
                
                This is required for all targets except `[lib]`.
              "%
              | optional,
            path
              | String
              | doc m%"
                The `path` field specifies where the source for the crate is located, relative
                to the `Cargo.toml` file.
                
                If not specified, the [inferred path](https://doc.rust-lang.org/cargo/reference/cargo-targets.html#target-auto-discovery) is used based on
                the target name.
              "%
              | optional,
            plugin | Bool | optional,
            proc-macro
              | Bool
              | doc m%"
                The `proc-macro` field indicates that the library is a [procedural macro](https://doc.rust-lang.org/book/ch19-06-macros.html)
                ([reference](https://doc.rust-lang.org/reference/procedural-macros.html)). This is only valid for the `[lib]`
                target.
              "%
              | optional,
            proc_macro | Bool | optional,
            required-features
              | Array String
              | doc m%"
                The `required-features` field specifies which [features](https://doc.rust-lang.org/cargo/reference/features.html) the target needs in
                order to be built. If any of the required features are not enabled, the
                target will be skipped. This is only relevant for the `[[bin]]`, `[[bench]]`,
                `[[test]]`, and `[[example]]` sections, it has no effect on `[lib]`.
                
                ```toml
                [features]
                # ...
                postgres = []
                sqlite = []
                tools = []
                
                [[bin]]
                name = "my-pg-tool"
                required-features = ["postgres", "tools"]
                ```
                
              "%
              | optional,
            test
              | Bool
              | doc m%"
                The `test` field indicates whether or not the target is tested by default by
                [`cargo test`](https://doc.rust-lang.org/cargo/commands/cargo-test.html). The default is `true` for lib, bins, and tests.
                
                > **Note**: Examples are built by [`cargo test`](https://doc.rust-lang.org/cargo/commands/cargo-test.html) by default to ensure they
                > continue to compile, but they are not *tested* by default. Setting `test =
                > true` for an example will also build it as a test and run any
                > [`#[test]`](https://doc.rust-lang.org/reference/attributes/testing.html#the-test-attribute) functions defined in the example.
              "%
              | optional,
            ..
          },
      "definitions.Workspace" =
        {
            default-members
              | Array String
              | doc m%"
                The optional `default-members` key can be specified to set the members to
                operate on when in the workspace root and the package selection flags are not
                used:
                
                ```toml
                [workspace]
                members = ["path/to/member1", "path/to/member2", "path/to/member3/*"]
                default-members = ["path/to/member2", "path/to/member3/foo"]
                ```
                
                When specified, `default-members` must expand to a subset of `members`.
              "%
              | optional,
            dependencies
              | { _ | refs."definitions.Dependency" }
              | doc m%"
                The `workspace.dependencies` table is where you define dependencies to be
                inherited by members of a workspace.
                
                Specifying a workspace dependency is similar to [package dependencies](https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html) except:
                - Dependencies from this table cannot be declared as `optional`
                - [`features`][features] declared in this table are additive with the `features` from `[dependencies]`
                
                You can then [inherit the workspace dependency as a package dependency](https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html#inheriting-a-dependency-from-a-workspace)
                
                Example:
                ```toml
                # [PROJECT_DIR]/Cargo.toml
                [workspace]
                members = ["bar"]
                
                [workspace.dependencies]
                cc = "1.0.73"
                rand = "0.8.5"
                regex = { version = "1.6.0", default-features = false, features = ["std"] }
                ```
                
                ```toml
                # [PROJECT_DIR]/bar/Cargo.toml
                [package]
                name = "bar"
                version = "0.2.0"
                
                [dependencies]
                regex = { workspace = true, features = ["unicode"] }
                
                [build-dependencies]
                cc.workspace = true
                
                [dev-dependencies]
                rand.workspace = true
                ```
              "%
              | optional,
            exclude
              | Array String
              | doc m%"
                The `exclude` key can be used to prevent paths from being included in a
                workspace. This can be useful if some path dependencies aren't desired to be
                in the workspace at all, or using a glob pattern and you want to remove a
                directory.
              "%
              | optional,
            lints
              | refs."definitions.Lints"
              | { _ | Dyn }
              | doc "The `workspace.lints` table is where you define lint configuration to be inherited by members of a workspace."
              | optional,
            members
              | Array String
              | doc m%"
                All [`path` dependencies] residing in the workspace directory automatically
                become members. Additional members can be listed with the `members` key, which
                should be an array of strings containing directories with `Cargo.toml` files.
                
                The `members` list also supports [globs] to match multiple paths, using
                typical filename glob patterns like `*` and `?`.
              "%
              | optional,
            metadata
              | {  .. }
              | doc m%"
                The `workspace.metadata` table is ignored by Cargo and will not be warned
                about. This section can be used for tools that would like to store workspace
                configuration in `Cargo.toml`. For example:
                
                ```toml
                [workspace]
                members = ["member1", "member2"]
                
                [workspace.metadata.webcontents]
                root = "path/to/webproject"
                tool = ["npm", "run", "build"]
                # ...
                ```
                
                There is a similar set of tables at the package level at
                `package.metadata`. While cargo does not specify a
                format for the content of either of these tables, it is suggested that
                external tools may wish to use them in a consistent fashion, such as referring
                to the data in `workspace.metadata` if data is missing from `package.metadata`,
                if that makes sense for the tool in question.
                
              "%
              | optional,
            package
              | {
                authors | refs."definitions.Authors" | Array Dyn | optional,
                categories
                  | refs."definitions.Categories"
                  | Array Dyn
                  | optional,
                description
                  | refs."definitions.Description"
                  | String
                  | optional,
                documentation
                  | refs."definitions.Documentation"
                  | String
                  | optional,
                edition | refs."definitions.Edition" | String | optional,
                exclude | refs."definitions.Exclude" | Array Dyn | optional,
                homepage | refs."definitions.Homepage" | String | optional,
                include | refs."definitions.Include" | Array Dyn | optional,
                keywords | refs."definitions.Keywords" | Array Dyn | optional,
                license | refs."definitions.License" | String | optional,
                license-file
                  | refs."definitions.LicenseFile"
                  | String
                  | optional,
                publish
                  | refs."definitions.Publish"
                  | std.contract.any_of [ Bool, Array Dyn ]
                  | optional,
                readme
                  | refs."definitions.Readme"
                  | std.contract.any_of [ Bool, String ]
                  | optional,
                repository | refs."definitions.Repository" | String | optional,
                rust-version
                  | refs."definitions.RustVersion"
                  | String
                  | optional,
                version | refs."definitions.SemVer" | String | optional,
                ..
              }
              | doc m%"
                The `workspace.package` table is where you define keys that can be
                inherited by members of a workspace. These keys can be inherited by
                defining them in the member package with `{key}.workspace = true`.
                
                Keys that are supported:
                
                |                |                 |
                |----------------|-----------------|
                | `authors`      | `categories`    |
                | `description`  | `documentation` |
                | `edition`      | `exclude`       |
                | `homepage`     | `include`       |
                | `keywords`     | `license`       |
                | `license-file` | `publish`       |
                | `readme`       | `repository`    |
                | `rust-version` | `version`       |
                
                - `license-file` and `readme` are relative to the workspace root
                - `include` and `exclude` are relative to your package root
                
                Example:
                ```toml
                # [PROJECT_DIR]/Cargo.toml
                [workspace]
                members = ["bar"]
                
                [workspace.package]
                version = "1.2.3"
                authors = ["Nice Folks"]
                description = "A short description of my package"
                documentation = "https://example.com/bar"
                ```
                
                ```toml
                # [PROJECT_DIR]/bar/Cargo.toml
                [package]
                name = "bar"
                version.workspace = true
                authors.workspace = true
                description.workspace = true
                documentation.workspace = true
                ```
              "%
              | optional,
            resolver | refs."definitions.Resolver" | String | optional,
            ..
          },
      "definitions.WorkspaceInheritance" =
        {
            workspace
              | js2n.Enum [ true ]
              | doc "The `workspace` field allow keys to be inherited by defining them in the member package with `{key}.workspace = true`",
          },
    }
    in
  {
      badges
        | { _ | { _ | String } }
        | doc m%"
          [crates.io](https://crates.io) can display various badges for build status, test coverage, etc. for
          each crate. All badges are optional.
          
          - The badges pertaining to build status that are currently available are
            Appveyor, CircleCI, Cirrus CI, GitLab, Azure DevOps, Travis CI and Bitbucket
            Pipelines.
          - Available badges pertaining to code test coverage are Codecov and Coveralls.
          - There are also maintenance-related badges based on isitmaintained.com
            which state the issue resolution time, percent of open issues, and future
            maintenance intentions.
          
          Most badge specifications require a `repository` key. It is expected to be in
          `user/repo` format.
          
          ```toml
          [badges]
          
          # Appveyor: `repository` is required. `branch` is optional; default is `master`
          # `service` is optional; valid values are `github` (default), `bitbucket`, and
          # `gitlab`; `id` is optional; you can specify the appveyor project id if you
          # want to use that instead. `project_name` is optional; use when the repository
          # name differs from the appveyor project name.
          appveyor = { repository = "...", branch = "master", service = "github" }
          
          # Circle CI: `repository` is required. `branch` is optional; default is `master`
          circle-ci = { repository = "...", branch = "master" }
          
          # Cirrus CI: `repository` is required. `branch` is optional; default is `master`
          cirrus-ci = { repository = "...", branch = "master" }
          
          # GitLab: `repository` is required. `branch` is optional; default is `master`
          gitlab = { repository = "...", branch = "master" }
          
          # Azure DevOps: `project` is required. `pipeline` is required. `build` is optional; default is `1`
          # Note: project = `organization/project`, pipeline = `name_of_pipeline`, build = `definitionId`
          azure-devops = { project = "...", pipeline = "...", build="2" }
          
          # Travis CI: `repository` in format "<user>/<project>" is required.
          # `branch` is optional; default is `master`
          travis-ci = { repository = "...", branch = "master" }
          
          # Bitbucket Pipelines: `repository` is required. `branch` is required
          bitbucket-pipelines = { repository = "...", branch = "master" }
          
          # Codecov: `repository` is required. `branch` is optional; default is `master`
          # `service` is optional; valid values are `github` (default), `bitbucket`, and
          # `gitlab`.
          codecov = { repository = "...", branch = "master", service = "github" }
          
          # Coveralls: `repository` is required. `branch` is optional; default is `master`
          # `service` is optional; valid values are `github` (default) and `bitbucket`.
          coveralls = { repository = "...", branch = "master", service = "github" }
          
          # Is it maintained resolution time: `repository` is required.
          is-it-maintained-issue-resolution = { repository = "..." }
          
          # Is it maintained percentage of open issues: `repository` is required.
          is-it-maintained-open-issues = { repository = "..." }
          
          # Maintenance: `status` is required. Available options are:
          # - `actively-developed`: New features are being added and bugs are being fixed.
          # - `passively-maintained`: There are no plans for new features, but the maintainer intends to
          #   respond to issues that get filed.
          # - `as-is`: The crate is feature complete, the maintainer does not intend to continue working on
          #   it or providing support, but it works for the purposes it was designed for.
          # - `experimental`: The author wants to share it with the community but is not intending to meet
          #   anyone's particular use case.
          # - `looking-for-maintainer`: The current maintainer would like to transfer the crate to someone
          #   else.
          # - `deprecated`: The maintainer does not recommend using this crate (the description of the crate
          #   can describe why, there could be a better solution available or there could be problems with
          #   the crate that the author does not want to fix).
          # - `none`: Displays no badge on crates.io, since the maintainer has not chosen to specify
          #   their intentions, potential crate users will need to investigate on their own.
          maintenance = { status = "..." }
          ```
        "%
        | optional,
      bench
        | Array refs."definitions.Target"
        | doc m%"
          Benchmarks provide a way to test the performance of your code using the
          [`cargo bench`](https://doc.rust-lang.org/cargo/commands/cargo-bench.html) command. They follow the same structure as [tests](https://doc.rust-lang.org/cargo/reference/cargo-targets.html#tests),
          with each benchmark function annotated with the `#[bench]` attribute.
          Similarly to tests:
          
          * Benchmarks are placed in the [`benches` directory](https://doc.rust-lang.org/cargo/guide/project-layout.html).
          * Benchmark functions defined in libraries and binaries have access to the
            *private* API within the target they are defined in. Benchmarks in the
            `benches` directory may use the *public* API.
          * [The `bench` field](https://doc.rust-lang.org/cargo/reference/cargo-targets.html#the-bench-field) can be used to define which targets
            are benchmarked by default.
          * [The `harness` field](https://doc.rust-lang.org/cargo/reference/cargo-targets.html#the-harness-field) can be used to disable the
            built-in harness.
          
          > **Note**: The [`#[bench]`
          > attribute](https://doc.rust-lang.org/unstable-book/library-features/test.html) is currently
          > unstable and only available on the [nightly channel](https://doc.rust-lang.org/book/appendix-07-nightly-rust.html). There are some
          > packages available on [crates.io](https://crates.io/keywords/benchmark) that
          > may help with running benchmarks on the stable channel, such as
          > [Criterion](https://crates.io/crates/criterion).
        "%
        | optional,
      bin
        | Array refs."definitions.Target"
        | doc m%"
          Binary targets are executable programs that can be run after being compiled.
          The default binary filename is `src/main.rs`, which defaults to the name of
          the package. Additional binaries are stored in the [`src/bin/`
          directory](https://doc.rust-lang.org/cargo/guide/project-layout.html). The settings for each binary can be [customized](https://doc.rust-lang.org/cargo/reference/cargo-targets.html#configuring-a-target) in the `[[bin]]` tables in `Cargo.toml`.
          
          Binaries can use the public API of the package's library. They are also linked
          with the [`[dependencies]`](https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html) defined in `Cargo.toml`.
          
          You can run individual binaries with the [`cargo run`](https://doc.rust-lang.org/cargo/commands/cargo-run.html) command with the `--bin
          <bin-name>` option. [`cargo install`](https://doc.rust-lang.org/cargo/commands/cargo-install.html) can be used to copy the executable to a
          common location.
          
          ```toml
          # Example of customizing binaries in Cargo.toml.
          [[bin]]
          name = "cool-tool"
          test = false
          bench = false
          
          [[bin]]
          name = "frobnicator"
          required-features = ["frobnicate"]
          ```
        "%
        | optional,
      build-dependencies
        | { _ | refs."definitions.Dependency" }
        | doc m%"
          You can depend on other Cargo-based crates for use in your build scripts.
          Dependencies are declared through the `build-dependencies` section of the
          manifest:
          
          ```toml
          [build-dependencies]
          cc = "1.0.3"
          ```
          
          The build script **does not** have access to the dependencies listed
          in the `dependencies` or `dev-dependencies` section. Build
          dependencies will likewise not be available to the package itself
          unless listed under the `dependencies` section as well. A package
          itself and its build script are built separately, so their
          dependencies need not coincide. Cargo is kept simpler and cleaner by
          using independent dependencies for independent purposes.
        "%
        | optional,
      build_dependencies
        | { _ | refs."definitions.Dependency" }
        | doc "[build_dependencies] is deprecated. Use [build-dependencies] instead."
        | optional,
      cargo-features | Array String | optional,
      dependencies
        | { _ | refs."definitions.Dependency" }
        | doc m%"
          Cargo is configured to look for dependencies on [crates.io](https://crates.io) by default. Only
          the name and a version string are required in this case. In [the cargo
          guide](https://doc.rust-lang.org/cargo/guide/index.html), we specified a dependency on the `time` crate:
          
          ```toml
          [dependencies]
          time = "0.1.12"
          ```
          
          The string `"0.1.12"` is a [semver](https://github.com/steveklabnik/semver#requirements) version requirement. Since this
          string does not have any operators in it, it is interpreted the same way as
          if we had specified `"^0.1.12"`, which is called a caret requirement.
          
          A dependency can also be defined by a table with additional options:
          
          ```toml
          [dependencies]
          time = { path = "../time", version = "0.1.12" }
          ```
        "%
        | optional,
      dev-dependencies
        | { _ | refs."definitions.Dependency" }
        | doc m%"
          The format of `[dev-dependencies]` is equivalent to `[dependencies]`:
          
          ```toml
          [dev-dependencies]
          tempdir = "0.3"
          ```
          
          Dev-dependencies are not used when compiling
          a package for building, but are used for compiling tests, examples, and
          benchmarks.
          
          These dependencies are *not* propagated to other packages which depend on this
          package.
          
          You can also have target-specific development dependencies by using
          `dev-dependencies` in the target section header instead of `dependencies`. For
          example:
          
          ```toml
          [target.'cfg(unix)'.dev-dependencies]
          mio = "0.0.1"
          ```
          
          > **Note**: When a package is published, only dev-dependencies that specify a
          > `version` will be included in the published crate. For most use cases,
          > dev-dependencies are not needed when published, though some users (like OS
          > packagers) may want to run tests within a crate, so providing a `version` if
          > possible can still be beneficial.
          
        "%
        | optional,
      dev_dependencies
        | { _ | refs."definitions.Dependency" }
        | doc "[dev_dependencies] is deprecated. Use [dev-dependencies] instead."
        | optional,
      example
        | Array refs."definitions.Target"
        | doc m%"
          Files located under the [examples directory](https://doc.rust-lang.org/cargo/guide/project-layout.html) are example uses of the functionality provided by the library. When compiled, they are placed in the[ target/debug/examples directory](https://doc.rust-lang.org/cargo/guide/build-cache.html).
          
          Examples can use the public API of the package's library. They are also linked with the [dependencies](https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html) and [dev-dependencies](https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html#development-dependencies) defined in Cargo.toml.
          
          By default, examples are executable binaries (with a `main()` function). You
          can specify the [`crate-type` field](https://doc.rust-lang.org/cargo/reference/cargo-targets.html#the-crate-type-field) to make an example
          be compiled as a library:
          
          ```toml
          [[example]]
          name = "foo"
          crate-type = ["staticlib"]
          ```
          
          You can run individual executable examples with the [`cargo run`](https://doc.rust-lang.org/cargo/commands/cargo-run.html) command with
          the `--example <example-name>` option. Library examples can be built with
          [`cargo build`](https://doc.rust-lang.org/cargo/commands/cargo-build.html) with the `--example <example-name>` option. [`cargo install`](https://doc.rust-lang.org/cargo/commands/cargo-install.html)
          with the `--example <example-name>` option can be used to copy executable
          binaries to a common location. Examples are compiled by [`cargo test`](https://doc.rust-lang.org/cargo/commands/cargo-test.html) by
          default to protect them from bit-rotting. Set [the `test`
          field](https://doc.rust-lang.org/cargo/reference/cargo-targets.html#the-test-field) to `true` if you have `#[test]` functions in the
          example that you want to run with [`cargo test`](https://doc.rust-lang.org/cargo/commands/cargo-test.html).
          
        "%
        | optional,
      features
        | { _ | Array String }
        | doc m%"
          Cargo supports features to allow expression of:
          
          * conditional compilation options (usable through `cfg` attributes);
          * optional dependencies, which enhance a package, but are not required; and
          * clusters of optional dependencies, such as `postgres-all`, that would include the
            `postgres` package, the `postgres-macros` package, and possibly other packages
            (such as development-time mocking libraries, debugging tools, etc.).
          
          A feature of a package is either an optional dependency, or a set of other
          features.
          
        "%
        | optional,
      lib | refs."definitions.Target" | optional,
      lints
        | std.contract.any_of
          [
            refs."definitions.Lints",
            js2n.record.Record
              {
                additional = 'None,
                patterns = {},
                properties = { workspace = Bool, },
                required = { workspace = true, },
              }
          ]
        | doc "Override the default level of lints from different tools by assigning them to a new level in a table."
        | optional,
      package | refs."definitions.Package" | optional,
      patch
        | { _ | { _ | refs."definitions.Dependency" } }
        | doc m%"
          The `[patch]` section of `Cargo.toml` can be used to override dependencies
          with other copies. The syntax is similar to the
          [`[dependencies]`](https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html) section.
          
          
        "%
        | optional,
      profile | refs."definitions.Profiles" | optional,
      project
        | refs."definitions.Package"
        | doc "[project] is deprecated. Use [package] instead."
        | optional,
      replace | { _ | refs."definitions.Dependency" } | optional,
      target | { _ | refs."definitions.Platform" } | optional,
      test
        | Array refs."definitions.Target"
        | doc m%"
          Files located under the [`tests` directory](https://doc.rust-lang.org/cargo/guide/project-layout.html) are integration
          tests. When you run [`cargo test`](https://doc.rust-lang.org/cargo/commands/cargo-test.html), Cargo will compile each of these files as
          a separate crate, and execute them.
          
          Integration tests can use the public API of the package's library. They are
          also linked with the [`[dependencies]`](https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html) and
          [`[dev-dependencies]`](https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html#development-dependencies) defined in `Cargo.toml`.
          
          If you want to share code among multiple integration tests, you can place it
          in a separate module such as `tests/common/mod.rs` and then put `mod common;`
          in each test to import it.
          
          Each integration test results in a separate executable binary, and [`cargo
          test`](https://doc.rust-lang.org/cargo/commands/cargo-test.html) will run them serially. In some cases this can be inefficient, as it
          can take longer to compile, and may not make full use of multiple CPUs when
          running the tests. If you have a lot of integration tests, you may want to
          consider creating a single integration test, and split the tests into multiple
          modules. The libtest harness will automatically find all of the `#[test]`
          annotated functions and run them in parallel. You can pass module names to
          [`cargo test`](https://doc.rust-lang.org/cargo/commands/cargo-test.html) to only run the tests within that module.
          
          Binary targets are automatically built if there is an integration test. This
          allows an integration test to execute the binary to exercise and test its
          behavior. The `CARGO_BIN_EXE_<name>` [environment variable](https://doc.rust-lang.org/cargo/reference/environment-variables.html#environment-variables-cargo-sets-for-crates) is set when the
          integration test is built so that it can use the [`env` macro](https://doc.rust-lang.org/std/macro.env.html) to locate the
          executable.
        "%
        | optional,
      workspace | refs."definitions.Workspace" | optional,
    }