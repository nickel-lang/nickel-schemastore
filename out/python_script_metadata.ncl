# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "properties.tool.properties.uv.definitions.AnnotationStyle" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'line |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'split |] ]
            ],
      "properties.tool.properties.uv.definitions.CacheKey" =
        std.contract.any_of
            [
              String,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { file = String, },
                  required = { file = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        git =
                          refs."properties.tool.properties.uv.definitions.GitPattern",
                      },
                  required = { git = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { env = String, },
                  required = { env = true, },
                }
            ],
      "properties.tool.properties.uv.definitions.ConfigSettingValue" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.uv.definitions.ConfigSettings" =
        {
            _ | refs."properties.tool.properties.uv.definitions.ConfigSettingValue"
          },
      "properties.tool.properties.uv.definitions.ExcludeNewer" =
        js2n.string.Matches
            "^\\d{4}-\\d{2}-\\d{2}(T\\d{2}:\\d{2}:\\d{2}(Z|[+-]\\d{2}:\\d{2}))?$",
      "properties.tool.properties.uv.definitions.ExtraName" = String,
      "properties.tool.properties.uv.definitions.ForkStrategy" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'fewest |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'requires-python |] ]
            ],
      "properties.tool.properties.uv.definitions.GitPattern" =
        std.contract.any_of
            [
              Bool,
              std.contract.Sequence
                [
                  refs."properties.tool.properties.uv.definitions.GitSet",
                  { _ | Dyn }
                ]
            ],
      "properties.tool.properties.uv.definitions.GitSet" =
        {
            commit | js2n.Nullable Bool | optional,
            tags | js2n.Nullable Bool | optional,
          },
      "properties.tool.properties.uv.definitions.GroupName" = String,
      "properties.tool.properties.uv.definitions.Index" =
        {
            "default"
              | Bool
              | doc m%"
                Mark the index as the default index.
                
                By default, uv uses PyPI as the default index, such that even if additional indexes are defined via `[[tool.uv.index]]`, PyPI will still be used as a fallback for packages that aren't found elsewhere. To disable the PyPI default, set `default = true` on at least one other index.
                
                Marking an index as default will move it to the front of the list of indexes, such that it is given the highest priority when resolving packages.
              "%
              | optional,
            explicit
              | Bool
              | doc m%"
                Mark the index as explicit.
                
                Explicit indexes will _only_ be used when explicitly requested via a `[tool.uv.sources]` definition, as in:
                
                ```toml [[tool.uv.index]] name = "pytorch" url = "https://download.pytorch.org/whl/cu121" explicit = true
                
                [tool.uv.sources] torch = { index = "pytorch" } ```
              "%
              | optional,
            name
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.IndexName",
                    String
                  ])
              | doc m%"
                The name of the index.
                
                Index names can be used to reference indexes elsewhere in the configuration. For example, you can pin a package to a specific index by name:
                
                ```toml [[tool.uv.index]] name = "pytorch" url = "https://download.pytorch.org/whl/cu121"
                
                [tool.uv.sources] torch = { index = "pytorch" } ```
              "%
              | optional,
            publish-url
              | js2n.Nullable String
              | doc m%"
                The URL of the upload endpoint.
                
                When using `uv publish --index <name>`, this URL is used for publishing.
                
                A configuration for the default index PyPI would look as follows:
                
                ```toml [[tool.uv.index]] name = "pypi" url = "https://pypi.org/simple" publish-url = "https://upload.pypi.org/legacy/" ```
              "%
              | optional,
            url
              | refs."properties.tool.properties.uv.definitions.IndexUrl"
              | String
              | doc m%"
                The URL of the index.
                
                Expects to receive a URL (e.g., `https://pypi.org/simple`) or a local path.
              "%,
            ..
          },
      "properties.tool.properties.uv.definitions.IndexName" = String,
      "properties.tool.properties.uv.definitions.IndexStrategy" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'first-index |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'unsafe-first-match |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'unsafe-best-match |] ]
            ],
      "properties.tool.properties.uv.definitions.IndexUrl" = String,
      "properties.tool.properties.uv.definitions.KeyringProviderType" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'disabled |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'subprocess |] ]
            ],
      "properties.tool.properties.uv.definitions.LinkMode" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'clone |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'copy |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'hardlink |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'symlink |] ]
            ],
      "properties.tool.properties.uv.definitions.MarkerTree" = String,
      "properties.tool.properties.uv.definitions.PackageName" = String,
      "properties.tool.properties.uv.definitions.PackageNameSpecifier" =
        js2n.string.Matches
            "^(:none:|:all:|([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9._-]*[a-zA-Z0-9]))$",
      "properties.tool.properties.uv.definitions.PipOptions" =
        {
            all-extras
              | js2n.Nullable Bool
              | doc m%"
                Include all optional dependencies.
                
                Only applies to `pyproject.toml`, `setup.py`, and `setup.cfg` sources.
              "%
              | optional,
            allow-empty-requirements
              | js2n.Nullable Bool
              | doc "Allow `uv pip sync` with empty requirements, which will clear the environment of all packages."
              | optional,
            annotation-style
              | js2n.Nullable
                refs."properties.tool.properties.uv.definitions.AnnotationStyle"
              | doc "The style of the annotation comments included in the output file, used to indicate the source of each package."
              | optional,
            break-system-packages
              | js2n.Nullable Bool
              | doc m%"
                Allow uv to modify an `EXTERNALLY-MANAGED` Python installation.
                
                WARNING: `--break-system-packages` is intended for use in continuous integration (CI) environments, when installing into Python installations that are managed by an external package manager, like `apt`. It should be used with caution, as such Python installations explicitly recommend against modifications by other package managers (like uv or pip).
              "%
              | optional,
            compile-bytecode
              | js2n.Nullable Bool
              | doc m%"
                Compile Python files to bytecode after installation.
                
                By default, uv does not compile Python (`.py`) files to bytecode (`__pycache__/*.pyc`); instead, compilation is performed lazily the first time a module is imported. For use-cases in which start time is critical, such as CLI applications and Docker containers, this option can be enabled to trade longer installation times for faster start times.
                
                When enabled, uv will process the entire site-packages directory (including packages that are not being modified by the current operation) for consistency. Like pip, it will also ignore errors.
              "%
              | optional,
            config-settings
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.ConfigSettings",
                    { _ | Dyn }
                  ])
              | doc "Settings to pass to the [PEP 517](https://peps.python.org/pep-0517/) build backend, specified as `KEY=VALUE` pairs."
              | optional,
            custom-compile-command
              | js2n.Nullable String
              | doc m%"
                The header comment to include at the top of the output file generated by `uv pip compile`.
                
                Used to reflect custom build scripts and commands that wrap `uv pip compile`.
              "%
              | optional,
            dependency-metadata
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.StaticMetadata",
                      { _ | Dyn }
                    ]
                ))
              | doc m%"
                Pre-defined static metadata for dependencies of the project (direct or transitive). When provided, enables the resolver to use the specified metadata instead of querying the registry or building the relevant package from source.
                
                Metadata should be provided in adherence with the [Metadata 2.3](https://packaging.python.org/en/latest/specifications/core-metadata/) standard, though only the following fields are respected:
                
                - `name`: The name of the package. - (Optional) `version`: The version of the package. If omitted, the metadata will be applied to all versions of the package. - (Optional) `requires-dist`: The dependencies of the package (e.g., `werkzeug>=0.14`). - (Optional) `requires-python`: The Python version required by the package (e.g., `>=3.10`). - (Optional) `provides-extras`: The extras provided by the package.
              "%
              | optional,
            emit-build-options
              | js2n.Nullable Bool
              | doc "Include `--no-binary` and `--only-binary` entries in the output file generated by `uv pip compile`."
              | optional,
            emit-find-links
              | js2n.Nullable Bool
              | doc "Include `--find-links` entries in the output file generated by `uv pip compile`."
              | optional,
            emit-index-annotation
              | js2n.Nullable Bool
              | doc "Include comment annotations indicating the index used to resolve each package (e.g., `# from https://pypi.org/simple`)."
              | optional,
            emit-index-url
              | js2n.Nullable Bool
              | doc "Include `--index-url` and `--extra-index-url` entries in the output file generated by `uv pip compile`."
              | optional,
            emit-marker-expression
              | js2n.Nullable Bool
              | doc m%"
                Whether to emit a marker string indicating the conditions under which the set of pinned dependencies is valid.
                
                The pinned dependencies may be valid even when the marker expression is false, but when the expression is true, the requirements are known to be correct.
              "%
              | optional,
            exclude-newer
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.ExcludeNewer",
                    String
                  ])
              | doc m%"
                Limit candidate packages to those that were uploaded prior to a given point in time.
                
                Accepts a superset of [RFC 3339](https://www.rfc-editor.org/rfc/rfc3339.html) (e.g., `2006-12-02T02:07:43Z`). A full timestamp is required to ensure that the resolver will behave consistently across timezones.
              "%
              | optional,
            extra
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.ExtraName",
                      String
                    ]
                ))
              | doc m%"
                Include optional dependencies from the specified extra; may be provided more than once.
                
                Only applies to `pyproject.toml`, `setup.py`, and `setup.cfg` sources.
              "%
              | optional,
            extra-index-url
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.IndexUrl",
                      String
                    ]
                ))
              | doc m%"
                Extra URLs of package indexes to use, in addition to `--index-url`.
                
                Accepts either a repository compliant with [PEP 503](https://peps.python.org/pep-0503/) (the simple repository API), or a local directory laid out in the same format.
                
                All indexes provided via this flag take priority over the index specified by [`index_url`](#index-url). When multiple indexes are provided, earlier values take priority.
                
                To control uv's resolution strategy when multiple indexes are present, see [`index_strategy`](#index-strategy).
              "%
              | optional,
            find-links
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.IndexUrl",
                      String
                    ]
                ))
              | doc m%"
                Locations to search for candidate distributions, in addition to those found in the registry indexes.
                
                If a path, the target must be a directory that contains packages as wheel files (`.whl`) or source distributions (e.g., `.tar.gz` or `.zip`) at the top level.
                
                If a URL, the page must contain a flat list of links to package files adhering to the formats described above.
              "%
              | optional,
            fork-strategy
              | js2n.Nullable
                refs."properties.tool.properties.uv.definitions.ForkStrategy"
              | doc m%"
                The strategy to use when selecting multiple versions of a given package across Python versions and platforms.
                
                By default, uv will optimize for selecting the latest version of each package for each supported Python version (`requires-python`), while minimizing the number of selected versions across platforms.
                
                Under `fewest`, uv will minimize the number of selected versions for each package, preferring older versions that are compatible with a wider range of supported Python versions or platforms.
              "%
              | optional,
            generate-hashes
              | js2n.Nullable Bool
              | doc "Include distribution hashes in the output file."
              | optional,
            index-strategy
              | js2n.Nullable
                refs."properties.tool.properties.uv.definitions.IndexStrategy"
              | doc m%"
                The strategy to use when resolving against multiple index URLs.
                
                By default, uv will stop at the first index on which a given package is available, and limit resolutions to those present on that first index (`first-index`). This prevents "dependency confusion" attacks, whereby an attacker can upload a malicious package under the same name to an alternate index.
              "%
              | optional,
            index-url
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.IndexUrl",
                    String
                  ])
              | doc m%"
                The URL of the Python package index (by default: <https://pypi.org/simple>).
                
                Accepts either a repository compliant with [PEP 503](https://peps.python.org/pep-0503/) (the simple repository API), or a local directory laid out in the same format.
                
                The index provided by this setting is given lower priority than any indexes specified via [`extra_index_url`](#extra-index-url).
              "%
              | optional,
            keyring-provider
              | js2n.Nullable
                refs."properties.tool.properties.uv.definitions.KeyringProviderType"
              | doc m%"
                Attempt to use `keyring` for authentication for index URLs.
                
                At present, only `--keyring-provider subprocess` is supported, which configures uv to use the `keyring` CLI to handle authentication.
              "%
              | optional,
            link-mode
              | js2n.Nullable
                refs."properties.tool.properties.uv.definitions.LinkMode"
              | doc m%"
                The method to use when installing packages from the global cache.
                
                Defaults to `clone` (also known as Copy-on-Write) on macOS, and `hardlink` on Linux and Windows.
              "%
              | optional,
            no-annotate
              | js2n.Nullable Bool
              | doc "Exclude comment annotations indicating the source of each package from the output file generated by `uv pip compile`."
              | optional,
            no-binary
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.PackageNameSpecifier",
                      String
                    ]
                ))
              | doc m%"
                Don't install pre-built wheels.
                
                The given packages will be built and installed from source. The resolver will still use pre-built wheels to extract package metadata, if available.
                
                Multiple packages may be provided. Disable binaries for all packages with `:all:`. Clear previously specified packages with `:none:`.
              "%
              | optional,
            no-build
              | js2n.Nullable Bool
              | doc m%"
                Don't build source distributions.
                
                When enabled, resolving will not run arbitrary Python code. The cached wheels of already-built source distributions will be reused, but operations that require building distributions will exit with an error.
                
                Alias for `--only-binary :all:`.
              "%
              | optional,
            no-build-isolation
              | js2n.Nullable Bool
              | doc m%"
                Disable isolation when building source distributions.
                
                Assumes that build dependencies specified by [PEP 518](https://peps.python.org/pep-0518/) are already installed.
              "%
              | optional,
            no-build-isolation-package
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.PackageName",
                      String
                    ]
                ))
              | doc m%"
                Disable isolation when building source distributions for a specific package.
                
                Assumes that the packages' build dependencies specified by [PEP 518](https://peps.python.org/pep-0518/) are already installed.
              "%
              | optional,
            no-deps
              | js2n.Nullable Bool
              | doc "Ignore package dependencies, instead only add those packages explicitly listed on the command line to the resulting requirements file."
              | optional,
            no-emit-package
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.PackageName",
                      String
                    ]
                ))
              | doc "Specify a package to omit from the output resolution. Its dependencies will still be included in the resolution. Equivalent to pip-compile's `--unsafe-package` option."
              | optional,
            no-extra
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.ExtraName",
                      String
                    ]
                ))
              | doc "Exclude the specified optional dependencies if `all-extras` is supplied."
              | optional,
            no-header
              | js2n.Nullable Bool
              | doc "Exclude the comment header at the top of output file generated by `uv pip compile`."
              | optional,
            no-index
              | js2n.Nullable Bool
              | doc "Ignore all registry indexes (e.g., PyPI), instead relying on direct URL dependencies and those provided via `--find-links`."
              | optional,
            no-sources
              | js2n.Nullable Bool
              | doc "Ignore the `tool.uv.sources` table when resolving dependencies. Used to lock against the standards-compliant, publishable package metadata, as opposed to using any local or Git sources."
              | optional,
            no-strip-extras
              | js2n.Nullable Bool
              | doc m%"
                Include extras in the output file.
                
                By default, uv strips extras, as any packages pulled in by the extras are already included as dependencies in the output file directly. Further, output files generated with `--no-strip-extras` cannot be used as constraints files in `install` and `sync` invocations.
              "%
              | optional,
            no-strip-markers
              | js2n.Nullable Bool
              | doc m%"
                Include environment markers in the output file generated by `uv pip compile`.
                
                By default, uv strips environment markers, as the resolution generated by `compile` is only guaranteed to be correct for the target environment.
              "%
              | optional,
            only-binary
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.PackageNameSpecifier",
                      String
                    ]
                ))
              | doc m%"
                Only use pre-built wheels; don't build source distributions.
                
                When enabled, resolving will not run code from the given packages. The cached wheels of already-built source distributions will be reused, but operations that require building distributions will exit with an error.
                
                Multiple packages may be provided. Disable binaries for all packages with `:all:`. Clear previously specified packages with `:none:`.
              "%
              | optional,
            output-file
              | js2n.Nullable String
              | doc m%"
                Write the requirements generated by `uv pip compile` to the given `requirements.txt` file.
                
                If the file already exists, the existing versions will be preferred when resolving dependencies, unless `--upgrade` is also specified.
              "%
              | optional,
            prefix
              | js2n.Nullable String
              | doc m%"
                Install packages into `lib`, `bin`, and other top-level folders under the specified directory, as if a virtual environment were present at that location.
                
                In general, prefer the use of `--python` to install into an alternate environment, as scripts and other artifacts installed via `--prefix` will reference the installing interpreter, rather than any interpreter added to the `--prefix` directory, rendering them non-portable.
              "%
              | optional,
            prerelease
              | js2n.Nullable
                refs."properties.tool.properties.uv.definitions.PrereleaseMode"
              | doc m%"
                The strategy to use when considering pre-release versions.
                
                By default, uv will accept pre-releases for packages that _only_ publish pre-releases, along with first-party requirements that contain an explicit pre-release marker in the declared specifiers (`if-necessary-or-explicit`).
              "%
              | optional,
            python
              | js2n.Nullable String
              | doc m%"
                The Python interpreter into which packages should be installed.
                
                By default, uv installs into the virtual environment in the current working directory or any parent directory. The `--python` option allows you to specify a different interpreter, which is intended for use in continuous integration (CI) environments or other automated workflows.
                
                Supported formats: - `3.10` looks for an installed Python 3.10 in the registry on Windows (see `py --list-paths`), or `python3.10` on Linux and macOS. - `python3.10` or `python.exe` looks for a binary with the given name in `PATH`. - `/home/ferris/.local/bin/python3.10` uses the exact Python at the given path.
              "%
              | optional,
            python-platform
              | js2n.Nullable
                refs."properties.tool.properties.uv.definitions.TargetTriple"
              | doc m%"
                The platform for which requirements should be resolved.
                
                Represented as a "target triple", a string that describes the target platform in terms of its CPU, vendor, and operating system name, like `x86_64-unknown-linux-gnu` or `aarch64-apple-darwin`.
              "%
              | optional,
            python-version
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.PythonVersion",
                    String
                  ])
              | doc m%"
                The minimum Python version that should be supported by the resolved requirements (e.g., `3.8` or `3.8.17`).
                
                If a patch version is omitted, the minimum patch version is assumed. For example, `3.8` is mapped to `3.8.0`.
              "%
              | optional,
            reinstall
              | js2n.Nullable Bool
              | doc "Reinstall all packages, regardless of whether they're already installed. Implies `refresh`."
              | optional,
            reinstall-package
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.PackageName",
                      String
                    ]
                ))
              | doc "Reinstall a specific package, regardless of whether it's already installed. Implies `refresh-package`."
              | optional,
            require-hashes
              | js2n.Nullable Bool
              | doc m%"
                Require a matching hash for each requirement.
                
                Hash-checking mode is all or nothing. If enabled, _all_ requirements must be provided with a corresponding hash or set of hashes. Additionally, if enabled, _all_ requirements must either be pinned to exact versions (e.g., `==1.0.0`), or be specified via direct URL.
                
                Hash-checking mode introduces a number of additional constraints:
                
                - Git dependencies are not supported. - Editable installs are not supported. - Local dependencies are not supported, unless they point to a specific wheel (`.whl`) or source archive (`.zip`, `.tar.gz`), as opposed to a directory.
              "%
              | optional,
            resolution
              | js2n.Nullable
                refs."properties.tool.properties.uv.definitions.ResolutionMode"
              | doc m%"
                The strategy to use when selecting between the different compatible versions for a given package requirement.
                
                By default, uv will use the latest compatible version of each package (`highest`).
              "%
              | optional,
            strict
              | js2n.Nullable Bool
              | doc "Validate the Python environment, to detect packages with missing dependencies and other issues."
              | optional,
            system
              | js2n.Nullable Bool
              | doc m%"
                Install packages into the system Python environment.
                
                By default, uv installs into the virtual environment in the current working directory or any parent directory. The `--system` option instructs uv to instead use the first Python found in the system `PATH`.
                
                WARNING: `--system` is intended for use in continuous integration (CI) environments and should be used with caution, as it can modify the system Python installation.
              "%
              | optional,
            target
              | js2n.Nullable String
              | doc "Install packages into the specified directory, rather than into the virtual or system Python environment. The packages will be installed at the top-level of the directory."
              | optional,
            universal
              | js2n.Nullable Bool
              | doc m%"
                Perform a universal resolution, attempting to generate a single `requirements.txt` output file that is compatible with all operating systems, architectures, and Python implementations.
                
                In universal mode, the current Python version (or user-provided `--python-version`) will be treated as a lower bound. For example, `--universal --python-version 3.7` would produce a universal resolution for Python 3.7 and later.
              "%
              | optional,
            upgrade
              | js2n.Nullable Bool
              | doc "Allow package upgrades, ignoring pinned versions in any existing output file."
              | optional,
            upgrade-package
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.Requirement",
                      String
                    ]
                ))
              | doc m%"
                Allow upgrades for a specific package, ignoring pinned versions in any existing output file.
                
                Accepts both standalone package names (`ruff`) and version specifiers (`ruff<0.5.0`).
              "%
              | optional,
            verify-hashes
              | js2n.Nullable Bool
              | doc m%"
                Validate any hashes provided in the requirements file.
                
                Unlike `--require-hashes`, `--verify-hashes` does not require that all requirements have hashes; instead, it will limit itself to verifying the hashes of those requirements that do include them.
              "%
              | optional,
          },
      "properties.tool.properties.uv.definitions.PrereleaseMode" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'disallow |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'allow |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'if-necessary |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'explicit |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'if-necessary-or-explicit |] ]
            ],
      "properties.tool.properties.uv.definitions.PythonDownloads" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'automatic |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'manual |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'never |] ]
            ],
      "properties.tool.properties.uv.definitions.PythonPreference" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'only-managed |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'managed |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'system |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'only-system |] ]
            ],
      "properties.tool.properties.uv.definitions.PythonVersion" =
        js2n.string.Matches "^3\\.\\d+(\\.\\d+)?$",
      "properties.tool.properties.uv.definitions.RequiredVersion" = String,
      "properties.tool.properties.uv.definitions.Requirement" = String,
      "properties.tool.properties.uv.definitions.ResolutionMode" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'highest |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'lowest |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'lowest-direct |] ]
            ],
      "properties.tool.properties.uv.definitions.SchemaConflictItem" =
        {
            extra
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.ExtraName",
                    String
                  ])
              | optional,
            group
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.GroupName",
                    String
                  ])
              | optional,
            package
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.PackageName",
                    String
                  ])
              | optional,
            ..
          },
      "properties.tool.properties.uv.definitions.SchemaConflictSet" =
        Array (
            std.contract.Sequence
              [
                refs."properties.tool.properties.uv.definitions.SchemaConflictItem",
                { _ | Dyn }
              ]
          ),
      "properties.tool.properties.uv.definitions.SchemaConflicts" =
        Array (
            std.contract.Sequence
              [
                refs."properties.tool.properties.uv.definitions.SchemaConflictSet",
                Array Dyn
              ]
          ),
      "properties.tool.properties.uv.definitions.Source" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        branch = js2n.Nullable String,
                        extra =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.ExtraName",
                                  String
                                ]),
                        git = String,
                        group =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.GroupName",
                                  String
                                ]),
                        marker =
                          std.contract.Sequence
                              [
                                refs."properties.tool.properties.uv.definitions.MarkerTree",
                                String
                              ],
                        rev = js2n.Nullable String,
                        subdirectory =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.String",
                                  String
                                ]),
                        tag = js2n.Nullable String,
                      },
                  required = { git = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        extra =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.ExtraName",
                                  String
                                ]),
                        group =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.GroupName",
                                  String
                                ]),
                        marker =
                          std.contract.Sequence
                              [
                                refs."properties.tool.properties.uv.definitions.MarkerTree",
                                String
                              ],
                        subdirectory =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.String",
                                  String
                                ]),
                        url = String,
                      },
                  required = { url = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        editable = js2n.Nullable Bool,
                        extra =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.ExtraName",
                                  String
                                ]),
                        group =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.GroupName",
                                  String
                                ]),
                        marker =
                          std.contract.Sequence
                              [
                                refs."properties.tool.properties.uv.definitions.MarkerTree",
                                String
                              ],
                        path =
                          std.contract.Sequence
                              [
                                refs."properties.tool.properties.uv.definitions.String",
                                String
                              ],
                      },
                  required = { path = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        extra =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.ExtraName",
                                  String
                                ]),
                        group =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.GroupName",
                                  String
                                ]),
                        index =
                          std.contract.Sequence
                              [
                                refs."properties.tool.properties.uv.definitions.IndexName",
                                String
                              ],
                        marker =
                          std.contract.Sequence
                              [
                                refs."properties.tool.properties.uv.definitions.MarkerTree",
                                String
                              ],
                      },
                  required = { index = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        extra =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.ExtraName",
                                  String
                                ]),
                        group =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.GroupName",
                                  String
                                ]),
                        marker =
                          std.contract.Sequence
                              [
                                refs."properties.tool.properties.uv.definitions.MarkerTree",
                                String
                              ],
                        workspace = Bool,
                      },
                  required = { workspace = true, },
                }
            ],
      "properties.tool.properties.uv.definitions.SourcesWire" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."properties.tool.properties.uv.definitions.Source",
                  { _ | Dyn }
                ],
              Array (
                std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.Source",
                    { _ | Dyn }
                  ]
              )
            ],
      "properties.tool.properties.uv.definitions.StaticMetadata" =
        {
            name
              | refs."properties.tool.properties.uv.definitions.PackageName"
              | String,
            provides-extras
              | Array (
                std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.ExtraName",
                    String
                  ]
              )
              | optional,
            requires-dist
              | Array (
                std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.Requirement",
                    String
                  ]
              )
              | optional,
            requires-python
              | js2n.Nullable String
              | doc "PEP 508-style Python requirement, e.g., `>=3.10`"
              | optional,
            version
              | js2n.Nullable String
              | doc "PEP 440-style package version, e.g., `1.2.3`"
              | optional,
            ..
          },
      "properties.tool.properties.uv.definitions.String" = String,
      "properties.tool.properties.uv.definitions.TargetTriple" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'windows |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'linux |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'macos |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-pc-windows-msvc |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'i686-pc-windows-msvc |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-unknown-linux-gnu |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-apple-darwin |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-apple-darwin |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-unknown-linux-gnu |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-unknown-linux-musl |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-unknown-linux-musl |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux2014 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_17 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_28 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_31 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_32 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_33 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_34 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_35 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_36 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_37 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_38 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_39 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_40 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux2014 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_17 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_28 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_31 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_32 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_33 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_34 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_35 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_36 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_37 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_38 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_39 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_40 |] ]
            ],
      "properties.tool.properties.uv.definitions.ToolUvSources" =
        { _ | refs."properties.tool.properties.uv.definitions.SourcesWire" },
      "properties.tool.properties.uv.definitions.ToolUvWorkspace" =
        {
            exclude
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.String",
                      String
                    ]
                ))
              | doc m%"
                Packages to exclude as workspace members. If a package matches both `members` and `exclude`, it will be excluded.
                
                Supports both globs and explicit paths.
                
                For more information on the glob syntax, refer to the [`glob` documentation](https://docs.rs/glob/latest/glob/struct.Pattern.html).
              "%
              | optional,
            members
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.String",
                      String
                    ]
                ))
              | doc m%"
                Packages to include as workspace members.
                
                Supports both globs and explicit paths.
                
                For more information on the glob syntax, refer to the [`glob` documentation](https://docs.rs/glob/latest/glob/struct.Pattern.html).
              "%
              | optional,
          },
      "properties.tool.properties.uv.definitions.TrustedHost" = String,
      "properties.tool.properties.uv.definitions.TrustedPublishing" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'never, 'always |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'automatic |] ]
            ],
    }
    in
  {
      dependencies
        | Array String
        | doc "An array of [dependency specifier](https://packaging.python.org/en/latest/specifications/dependency-specifiers/) strings, each representing a mandatory dependent package of the project."
        | optional,
      requires-python
        | String
        | doc "Specifies the Python version(s) that the distribution is compatible with. Must be in the format specified in [Version specifiers](https://packaging.python.org/en/latest/specifications/version-specifiers/)."
        | optional,
      tool
        | js2n.record.Record
          {
            additional = 'Some ({ _ | Dyn }),
            patterns = {},
            properties =
              {
                  uv =
                    {
                        allow-insecure-host
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.TrustedHost")
                          | doc m%"
                            Allow insecure connections to host.
                            
                            Expects to receive either a hostname (e.g., `localhost`), a host-port pair (e.g., `localhost:8080`), or a URL (e.g., `https://localhost`).
                            
                            WARNING: Hosts included in this list will not be verified against the system's certificate store. Only use `--allow-insecure-host` in a secure network with verified sources, as it bypasses SSL verification and could expose you to MITM attacks.
                          "%
                          | optional,
                        cache-dir
                          | js2n.Nullable String
                          | doc m%"
                            Path to the cache directory.
                            
                            Defaults to `$HOME/Library/Caches/uv` on macOS, `$XDG_CACHE_HOME/uv` or `$HOME/.cache/uv` on Linux, and `%LOCALAPPDATA%\uv\cache` on Windows.
                          "%
                          | optional,
                        cache-keys
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.CacheKey")
                          | doc m%"
                            The keys to consider when caching builds for the project.
                            
                            Cache keys enable you to specify the files or directories that should trigger a rebuild when modified. By default, uv will rebuild a project whenever the `pyproject.toml`, `setup.py`, or `setup.cfg` files in the project directory are modified, i.e.:
                            
                            ```toml cache-keys = [{ file = "pyproject.toml" }, { file = "setup.py" }, { file = "setup.cfg" }] ```
                            
                            As an example: if a project uses dynamic metadata to read its dependencies from a `requirements.txt` file, you can specify `cache-keys = [{ file = "requirements.txt" }, { file = "pyproject.toml" }]` to ensure that the project is rebuilt whenever the `requirements.txt` file is modified (in addition to watching the `pyproject.toml`).
                            
                            Globs are supported, following the syntax of the [`glob`](https://docs.rs/glob/0.3.1/glob/struct.Pattern.html) crate. For example, to invalidate the cache whenever a `.toml` file in the project directory or any of its subdirectories is modified, you can specify `cache-keys = [{ file = "**/*.toml" }]`. Note that the use of globs can be expensive, as uv may need to walk the filesystem to determine whether any files have changed.
                            
                            Cache keys can also include version control information. For example, if a project uses `setuptools_scm` to read its version from a Git commit, you can specify `cache-keys = [{ git = { commit = true }, { file = "pyproject.toml" }]` to include the current Git commit hash in the cache key (in addition to the `pyproject.toml`). Git tags are also supported via `cache-keys = [{ git = { commit = true, tags = true } }]`.
                            
                            Cache keys can also include environment variables. For example, if a project relies on `MACOSX_DEPLOYMENT_TARGET` or other environment variables to determine its behavior, you can specify `cache-keys = [{ env = "MACOSX_DEPLOYMENT_TARGET" }]` to invalidate the cache whenever the environment variable changes.
                            
                            Cache keys only affect the project defined by the `pyproject.toml` in which they're specified (as opposed to, e.g., affecting all members in a workspace), and all paths and globs are interpreted as relative to the project directory.
                          "%
                          | optional,
                        check-url
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.IndexUrl"
                          | doc m%"
                            Check an index URL for existing files to skip duplicate uploads.
                            
                            This option allows retrying publishing that failed after only some, but not all files have been uploaded, and handles error due to parallel uploads of the same file.
                            
                            Before uploading, the index is checked. If the exact same file already exists in the index, the file will not be uploaded. If an error occurred during the upload, the index is checked again, to handle cases where the identical file was uploaded twice in parallel.
                            
                            The exact behavior will vary based on the index. When uploading to PyPI, uploading the same file succeeds even without `--check-url`, while most other indexes error.
                            
                            The index must provide one of the supported hashes (SHA-256, SHA-384, or SHA-512).
                          "%
                          | optional,
                        compile-bytecode
                          | js2n.Nullable Bool
                          | doc m%"
                            Compile Python files to bytecode after installation.
                            
                            By default, uv does not compile Python (`.py`) files to bytecode (`__pycache__/*.pyc`); instead, compilation is performed lazily the first time a module is imported. For use-cases in which start time is critical, such as CLI applications and Docker containers, this option can be enabled to trade longer installation times for faster start times.
                            
                            When enabled, uv will process the entire site-packages directory (including packages that are not being modified by the current operation) for consistency. Like pip, it will also ignore errors.
                          "%
                          | optional,
                        concurrent-builds
                          | js2n.Nullable
                            (std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 1 ])
                          | doc m%"
                            The maximum number of source distributions that uv will build concurrently at any given time.
                            
                            Defaults to the number of available CPU cores.
                          "%
                          | optional,
                        concurrent-downloads
                          | js2n.Nullable
                            (std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 1 ])
                          | doc "The maximum number of in-flight concurrent downloads that uv will perform at any given time."
                          | optional,
                        concurrent-installs
                          | js2n.Nullable
                            (std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 1 ])
                          | doc m%"
                            The number of threads used when installing and unzipping packages.
                            
                            Defaults to the number of available CPU cores.
                          "%
                          | optional,
                        config-settings
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.ConfigSettings"
                          | doc "Settings to pass to the [PEP 517](https://peps.python.org/pep-0517/) build backend, specified as `KEY=VALUE` pairs."
                          | optional,
                        conflicts
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.SchemaConflicts"
                          | doc "A list of sets of conflicting groups or extras."
                          | optional,
                        constraint-dependencies
                          | js2n.Nullable (Array String)
                          | doc "PEP 508-style requirements, e.g., `ruff==0.5.0`, or `ruff @ https://...`."
                          | optional,
                        default-groups
                          | std.contract.any_of
                            [
                              Array
                                refs."properties.tool.properties.uv.definitions.GroupName",
                              std.contract.Equal "all",
                              js2n.Null
                            ]
                          | doc "The list of `dependency-groups` to install by default."
                          | optional,
                        dependency-metadata
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.StaticMetadata")
                          | doc m%"
                            Pre-defined static metadata for dependencies of the project (direct or transitive). When provided, enables the resolver to use the specified metadata instead of querying the registry or building the relevant package from source.
                            
                            Metadata should be provided in adherence with the [Metadata 2.3](https://packaging.python.org/en/latest/specifications/core-metadata/) standard, though only the following fields are respected:
                            
                            - `name`: The name of the package. - (Optional) `version`: The version of the package. If omitted, the metadata will be applied to all versions of the package. - (Optional) `requires-dist`: The dependencies of the package (e.g., `werkzeug>=0.14`). - (Optional) `requires-python`: The Python version required by the package (e.g., `>=3.10`). - (Optional) `provides-extras`: The extras provided by the package.
                          "%
                          | optional,
                        dev-dependencies
                          | js2n.Nullable (Array String)
                          | doc "PEP 508-style requirements, e.g., `ruff==0.5.0`, or `ruff @ https://...`."
                          | optional,
                        environments
                          | js2n.Nullable (Array String)
                          | doc "A list of environment markers, e.g., `python_version >= '3.6'`."
                          | optional,
                        exclude-newer
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.ExcludeNewer"
                          | doc m%"
                            Limit candidate packages to those that were uploaded prior to the given date.
                            
                            Accepts both [RFC 3339](https://www.rfc-editor.org/rfc/rfc3339.html) timestamps (e.g., `2006-12-02T02:07:43Z`) and local dates in the same format (e.g., `2006-12-02`) in your system's configured time zone.
                          "%
                          | optional,
                        extra-index-url
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.IndexUrl")
                          | doc m%"
                            Extra URLs of package indexes to use, in addition to `--index-url`.
                            
                            Accepts either a repository compliant with [PEP 503](https://peps.python.org/pep-0503/) (the simple repository API), or a local directory laid out in the same format.
                            
                            All indexes provided via this flag take priority over the index specified by [`index_url`](#index-url) or [`index`](#index) with `default = true`. When multiple indexes are provided, earlier values take priority.
                            
                            To control uv's resolution strategy when multiple indexes are present, see [`index_strategy`](#index-strategy).
                            
                            (Deprecated: use `index` instead.)
                          "%
                          | optional,
                        find-links
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.IndexUrl")
                          | doc m%"
                            Locations to search for candidate distributions, in addition to those found in the registry indexes.
                            
                            If a path, the target must be a directory that contains packages as wheel files (`.whl`) or source distributions (e.g., `.tar.gz` or `.zip`) at the top level.
                            
                            If a URL, the page must contain a flat list of links to package files adhering to the formats described above.
                          "%
                          | optional,
                        fork-strategy
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.ForkStrategy"
                          | doc m%"
                            The strategy to use when selecting multiple versions of a given package across Python versions and platforms.
                            
                            By default, uv will optimize for selecting the latest version of each package for each supported Python version (`requires-python`), while minimizing the number of selected versions across platforms.
                            
                            Under `fewest`, uv will minimize the number of selected versions for each package, preferring older versions that are compatible with a wider range of supported Python versions or platforms.
                          "%
                          | optional,
                        index
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.Index")
                          | doc m%"
                            The indexes to use when resolving dependencies.
                            
                            Accepts either a repository compliant with [PEP 503](https://peps.python.org/pep-0503/) (the simple repository API), or a local directory laid out in the same format.
                            
                            Indexes are considered in the order in which they're defined, such that the first-defined index has the highest priority. Further, the indexes provided by this setting are given higher priority than any indexes specified via [`index_url`](#index-url) or [`extra_index_url`](#extra-index-url). uv will only consider the first index that contains a given package, unless an alternative [index strategy](#index-strategy) is specified.
                            
                            If an index is marked as `explicit = true`, it will be used exclusively for the dependencies that select it explicitly via `[tool.uv.sources]`, as in:
                            
                            ```toml [[tool.uv.index]] name = "pytorch" url = "https://download.pytorch.org/whl/cu121" explicit = true
                            
                            [tool.uv.sources] torch = { index = "pytorch" } ```
                            
                            If an index is marked as `default = true`, it will be moved to the end of the prioritized list, such that it is given the lowest priority when resolving packages. Additionally, marking an index as default will disable the PyPI default index.
                          "%
                          | optional,
                        index-strategy
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.IndexStrategy"
                          | doc m%"
                            The strategy to use when resolving against multiple index URLs.
                            
                            By default, uv will stop at the first index on which a given package is available, and limit resolutions to those present on that first index (`first-index`). This prevents "dependency confusion" attacks, whereby an attacker can upload a malicious package under the same name to an alternate index.
                          "%
                          | optional,
                        index-url
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.IndexUrl"
                          | doc m%"
                            The URL of the Python package index (by default: <https://pypi.org/simple>).
                            
                            Accepts either a repository compliant with [PEP 503](https://peps.python.org/pep-0503/) (the simple repository API), or a local directory laid out in the same format.
                            
                            The index provided by this setting is given lower priority than any indexes specified via [`extra_index_url`](#extra-index-url) or [`index`](#index).
                            
                            (Deprecated: use `index` instead.)
                          "%
                          | optional,
                        keyring-provider
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.KeyringProviderType"
                          | doc m%"
                            Attempt to use `keyring` for authentication for index URLs.
                            
                            At present, only `--keyring-provider subprocess` is supported, which configures uv to use the `keyring` CLI to handle authentication.
                          "%
                          | optional,
                        link-mode
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.LinkMode"
                          | doc m%"
                            The method to use when installing packages from the global cache.
                            
                            Defaults to `clone` (also known as Copy-on-Write) on macOS, and `hardlink` on Linux and Windows.
                          "%
                          | optional,
                        managed
                          | js2n.Nullable Bool
                          | doc "Whether the project is managed by uv. If `false`, uv will ignore the project when `uv run` is invoked."
                          | optional,
                        native-tls
                          | js2n.Nullable Bool
                          | doc m%"
                            Whether to load TLS certificates from the platform's native certificate store.
                            
                            By default, uv loads certificates from the bundled `webpki-roots` crate. The `webpki-roots` are a reliable set of trust roots from Mozilla, and including them in uv improves portability and performance (especially on macOS).
                            
                            However, in some cases, you may want to use the platform's native certificate store, especially if you're relying on a corporate trust root (e.g., for a mandatory proxy) that's included in your system's certificate store.
                          "%
                          | optional,
                        no-binary
                          | js2n.Nullable Bool
                          | doc m%"
                            Don't install pre-built wheels.
                            
                            The given packages will be built and installed from source. The resolver will still use pre-built wheels to extract package metadata, if available.
                          "%
                          | optional,
                        no-binary-package
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.PackageName")
                          | doc "Don't install pre-built wheels for a specific package."
                          | optional,
                        no-build
                          | js2n.Nullable Bool
                          | doc m%"
                            Don't build source distributions.
                            
                            When enabled, resolving will not run arbitrary Python code. The cached wheels of already-built source distributions will be reused, but operations that require building distributions will exit with an error.
                          "%
                          | optional,
                        no-build-isolation
                          | js2n.Nullable Bool
                          | doc m%"
                            Disable isolation when building source distributions.
                            
                            Assumes that build dependencies specified by [PEP 518](https://peps.python.org/pep-0518/) are already installed.
                          "%
                          | optional,
                        no-build-isolation-package
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.PackageName")
                          | doc m%"
                            Disable isolation when building source distributions for a specific package.
                            
                            Assumes that the packages' build dependencies specified by [PEP 518](https://peps.python.org/pep-0518/) are already installed.
                          "%
                          | optional,
                        no-build-package
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.PackageName")
                          | doc "Don't build source distributions for a specific package."
                          | optional,
                        no-cache
                          | js2n.Nullable Bool
                          | doc "Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation."
                          | optional,
                        no-index
                          | js2n.Nullable Bool
                          | doc "Ignore all registry indexes (e.g., PyPI), instead relying on direct URL dependencies and those provided via `--find-links`."
                          | optional,
                        no-sources
                          | js2n.Nullable Bool
                          | doc "Ignore the `tool.uv.sources` table when resolving dependencies. Used to lock against the standards-compliant, publishable package metadata, as opposed to using any local or Git sources."
                          | optional,
                        offline
                          | js2n.Nullable Bool
                          | doc "Disable network access, relying only on locally cached data and locally available files."
                          | optional,
                        override-dependencies
                          | js2n.Nullable (Array String)
                          | doc "PEP 508-style requirements, e.g., `ruff==0.5.0`, or `ruff @ https://...`."
                          | optional,
                        package
                          | js2n.Nullable Bool
                          | doc m%"
                            Whether the project should be considered a Python package, or a non-package ("virtual") project.
                            
                            Packages are built and installed into the virtual environment in editable mode and thus require a build backend, while virtual projects are _not_ built or installed; instead, only their dependencies are included in the virtual environment.
                            
                            Creating a package requires that a `build-system` is present in the `pyproject.toml`, and that the project adheres to a structure that adheres to the build backend's expectations (e.g., a `src` layout).
                          "%
                          | optional,
                        pip
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.PipOptions"
                          | optional,
                        prerelease
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.PrereleaseMode"
                          | doc m%"
                            The strategy to use when considering pre-release versions.
                            
                            By default, uv will accept pre-releases for packages that _only_ publish pre-releases, along with first-party requirements that contain an explicit pre-release marker in the declared specifiers (`if-necessary-or-explicit`).
                          "%
                          | optional,
                        preview
                          | js2n.Nullable Bool
                          | doc "Whether to enable experimental, preview features."
                          | optional,
                        publish-url
                          | js2n.Nullable String
                          | doc "The URL for publishing packages to the Python package index (by default: <https://upload.pypi.org/legacy/>)."
                          | optional,
                        pypy-install-mirror
                          | js2n.Nullable String
                          | doc m%"
                            Mirror URL to use for downloading managed PyPy installations.
                            
                            By default, managed PyPy installations are downloaded from [downloads.python.org](https://downloads.python.org/). This variable can be set to a mirror URL to use a different source for PyPy installations. The provided URL will replace `https://downloads.python.org/pypy` in, e.g., `https://downloads.python.org/pypy/pypy3.8-v7.3.7-osx64.tar.bz2`.
                            
                            Distributions can be read from a local directory by using the `file://` URL scheme.
                          "%
                          | optional,
                        python-downloads
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.PythonDownloads"
                          | doc "Whether to allow Python downloads."
                          | optional,
                        python-install-mirror
                          | js2n.Nullable String
                          | doc m%"
                            Mirror URL for downloading managed Python installations.
                            
                            By default, managed Python installations are downloaded from [`python-build-standalone`](https://github.com/astral-sh/python-build-standalone). This variable can be set to a mirror URL to use a different source for Python installations. The provided URL will replace `https://github.com/astral-sh/python-build-standalone/releases/download` in, e.g., `https://github.com/astral-sh/python-build-standalone/releases/download/20240713/cpython-3.12.4%2B20240713-aarch64-apple-darwin-install_only.tar.gz`.
                            
                            Distributions can be read from a local directory by using the `file://` URL scheme.
                          "%
                          | optional,
                        python-preference
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.PythonPreference"
                          | doc "Whether to prefer using Python installations that are already present on the system, or those that are downloaded and installed by uv."
                          | optional,
                        reinstall
                          | js2n.Nullable Bool
                          | doc "Reinstall all packages, regardless of whether they're already installed. Implies `refresh`."
                          | optional,
                        reinstall-package
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.PackageName")
                          | doc "Reinstall a specific package, regardless of whether it's already installed. Implies `refresh-package`."
                          | optional,
                        required-version
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.RequiredVersion"
                          | doc m%"
                            Enforce a requirement on the version of uv.
                            
                            If the version of uv does not meet the requirement at runtime, uv will exit with an error.
                            
                            Accepts a [PEP 440](https://peps.python.org/pep-0440/) specifier, like `==0.5.0` or `>=0.5.0`.
                          "%
                          | optional,
                        resolution
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.ResolutionMode"
                          | doc m%"
                            The strategy to use when selecting between the different compatible versions for a given package requirement.
                            
                            By default, uv will use the latest compatible version of each package (`highest`).
                          "%
                          | optional,
                        sources
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.ToolUvSources"
                          | doc m%"
                            The sources to use when resolving dependencies.
                            
                            `tool.uv.sources` enriches the dependency metadata with additional sources, incorporated during development. A dependency source can be a Git repository, a URL, a local path, or an alternative registry.
                            
                            See [Dependencies](https://docs.astral.sh/uv/concepts/projects/dependencies/) for more.
                          "%
                          | optional,
                        trusted-publishing
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.TrustedPublishing"
                          | doc m%"
                            Configure trusted publishing via GitHub Actions.
                            
                            By default, uv checks for trusted publishing when running in GitHub Actions, but ignores it if it isn't configured or the workflow doesn't have enough permissions (e.g., a pull request from a fork).
                          "%
                          | optional,
                        upgrade
                          | js2n.Nullable Bool
                          | doc "Allow package upgrades, ignoring pinned versions in any existing output file."
                          | optional,
                        upgrade-package
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.Requirement")
                          | doc m%"
                            Allow upgrades for a specific package, ignoring pinned versions in any existing output file.
                            
                            Accepts both standalone package names (`ruff`) and version specifiers (`ruff<0.5.0`).
                          "%
                          | optional,
                        workspace
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.ToolUvWorkspace"
                          | doc "The workspace definition for the project, if any."
                          | optional,
                        ..
                      },
                },
            required = {},
          }
        | doc "Every tool that is used by the project can have users specify configuration data as long as they use a sub-table within `[tool]`. Generally a project can use the subtable `tool.$NAME` if, and only if, they own the entry for `$NAME` in the Cheeseshop/PyPI."
        | optional,
    }