# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Alias" = String,
      "definitions.AnalyzeOptions" =
        {
            detect-string-imports
              | js2n.Nullable Bool
              | doc "Whether to detect imports from string literals. When enabled, Ruff will search for string literals that \"look like\" import paths, and include them in the import map, if they resolve to valid Python modules."
              | optional,
            direction
              | js2n.Nullable refs."definitions.Direction"
              | doc "Whether to generate a map from file to files that it depends on (dependencies) or files that depend on it (dependents)."
              | optional,
            exclude
              | js2n.Nullable (Array String)
              | doc m%"
                A list of file patterns to exclude from analysis in addition to the files excluded globally (see [`exclude`](#exclude), and [`extend-exclude`](#extend-exclude)).
                
                Exclusions are based on globs, and can be either:
                
                - Single-path patterns, like `.mypy_cache` (to exclude any directory named `.mypy_cache` in the tree), `foo.py` (to exclude any file named `foo.py`), or `foo_*.py` (to exclude any file matching `foo_*.py` ). - Relative patterns, like `directory/foo.py` (to exclude that specific file) or `directory/*.py` (to exclude any Python files in `directory`). Note that these paths are relative to the project root (e.g., the directory containing your `pyproject.toml`).
                
                For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            include-dependencies
              | js2n.Nullable ({ _ | Array String })
              | doc "A map from file path to the list of Python or non-Python file paths or globs that should be considered dependencies of that file, regardless of whether relevant imports are detected."
              | optional,
            preview
              | js2n.Nullable Bool
              | doc "Whether to enable preview mode. When preview mode is enabled, Ruff will expose unstable commands."
              | optional,
          },
      "definitions.ApiBan" =
        { msg | String | doc "The message to display when the API is used.", },
      "definitions.BannedAliases" = Array String,
      "definitions.ConstantType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'str, 'int, 'float, 'complex, 'bytes |]
            ],
      "definitions.Convention" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'google |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'numpy |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'pep257 |] ]
            ],
      "definitions.Direction" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'Dependencies |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'Dependents |] ]
            ],
      "definitions.DocstringCodeLineWidth" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.LineWidth", Number ],
              std.contract.Equal "dynamic"
            ],
      "definitions.Flake8AnnotationsOptions" =
        {
            allow-star-arg-any
              | js2n.Nullable Bool
              | doc "Whether to suppress `ANN401` for dynamically typed `*args` and `**kwargs` arguments."
              | optional,
            ignore-fully-untyped
              | js2n.Nullable Bool
              | doc "Whether to suppress `ANN*` rules for any declaration that hasn't been typed at all. This makes it easier to gradually add types to a codebase."
              | optional,
            mypy-init-return
              | js2n.Nullable Bool
              | doc "Whether to allow the omission of a return type hint for `__init__` if at least one argument is annotated."
              | optional,
            suppress-dummy-args
              | js2n.Nullable Bool
              | doc "Whether to suppress `ANN000`-level violations for arguments matching the \"dummy\" variable regex (like `_`)."
              | optional,
            suppress-none-returning
              | js2n.Nullable Bool
              | doc m%"
                Whether to suppress `ANN200`-level violations for functions that meet either of the following criteria:
                
                - Contain no `return` statement. - Explicit `return` statement(s) all return `None` (explicitly or implicitly).
              "%
              | optional,
          },
      "definitions.Flake8BanditOptions" =
        {
            allowed-markup-calls
              | js2n.Nullable (Array String)
              | doc m%"
                A list of callable names, whose result may be safely passed into [`markupsafe.Markup`](https://markupsafe.palletsprojects.com/en/stable/escaping/#markupsafe.Markup).
                
                Expects to receive a list of fully-qualified names (e.g., `bleach.clean`, rather than `clean`).
                
                This setting helps you avoid false positives in code like:
                
                ```python from bleach import clean from markupsafe import Markup
                
                cleaned_markup = Markup(clean(some_user_input)) ```
                
                Where the use of [`bleach.clean`](https://bleach.readthedocs.io/en/latest/clean.html) usually ensures that there's no XSS vulnerability.
                
                Although it is not recommended, you may also use this setting to whitelist other kinds of calls, e.g. calls to i18n translation functions, where how safe that is will depend on the implementation and how well the translations are audited.
                
                Another common use-case is to wrap the output of functions that generate markup like [`xml.etree.ElementTree.tostring`](https://docs.python.org/3/library/xml.etree.elementtree.html#xml.etree.ElementTree.tostring) or template rendering engines where sanitization of potential user input is either already baked in or has to happen before rendering.
              "%
              | optional,
            check-typed-exception
              | js2n.Nullable Bool
              | doc "Whether to disallow `try`-`except`-`pass` (`S110`) for specific exception types. By default, `try`-`except`-`pass` is only disallowed for `Exception` and `BaseException`."
              | optional,
            extend-markup-names
              | js2n.Nullable (Array String)
              | doc m%"
                A list of additional callable names that behave like [`markupsafe.Markup`](https://markupsafe.palletsprojects.com/en/stable/escaping/#markupsafe.Markup).
                
                Expects to receive a list of fully-qualified names (e.g., `webhelpers.html.literal`, rather than `literal`).
              "%
              | optional,
            hardcoded-tmp-directory
              | js2n.Nullable (Array String)
              | doc "A list of directories to consider temporary (see `S108`)."
              | optional,
            hardcoded-tmp-directory-extend
              | js2n.Nullable (Array String)
              | doc "A list of directories to consider temporary, in addition to those specified by [`hardcoded-tmp-directory`](#lint_flake8-bandit_hardcoded-tmp-directory) (see `S108`)."
              | optional,
          },
      "definitions.Flake8BooleanTrapOptions" =
        {
            extend-allowed-calls
              | js2n.Nullable (Array String)
              | doc m%"
                Additional callable functions with which to allow boolean traps.
                
                Expects to receive a list of fully-qualified names (e.g., `pydantic.Field`, rather than `Field`).
              "%
              | optional,
          },
      "definitions.Flake8BugbearOptions" =
        {
            extend-immutable-calls
              | js2n.Nullable (Array String)
              | doc m%"
                Additional callable functions to consider "immutable" when evaluating, e.g., the `function-call-in-default-argument` rule (`B008`) or `function-call-in-dataclass-defaults` rule (`RUF009`).
                
                Expects to receive a list of fully-qualified names (e.g., `fastapi.Query`, rather than `Query`).
              "%
              | optional,
          },
      "definitions.Flake8BuiltinsOptions" =
        {
            allowed-modules
              | js2n.Nullable (Array String)
              | doc "List of builtin module names to allow."
              | optional,
            builtins-allowed-modules
              | js2n.Nullable (Array String)
              | doc m%"
                DEPRECATED: This option has been renamed to `allowed-modules`. Use `allowed-modules` instead.
                
                List of builtin module names to allow.
                
                This option is ignored if both `allowed-modules` and `builtins-allowed-modules` are set.
              "%
              | optional,
            builtins-ignorelist
              | js2n.Nullable (Array String)
              | doc m%"
                DEPRECATED: This option has been renamed to `ignorelist`. Use `ignorelist` instead.
                
                Ignore list of builtins.
                
                This option is ignored if both `ignorelist` and `builtins-ignorelist` are set.
              "%
              | optional,
            builtins-strict-checking
              | js2n.Nullable Bool
              | doc m%"
                DEPRECATED: This option has been renamed to `strict-checking`. Use `strict-checking` instead.
                
                Compare module names instead of full module paths.
                
                This option is ignored if both `strict-checking` and `builtins-strict-checking` are set.
              "%
              | optional,
            ignorelist
              | js2n.Nullable (Array String)
              | doc "Ignore list of builtins."
              | optional,
            strict-checking
              | js2n.Nullable Bool
              | doc m%"
                Compare module names instead of full module paths.
                
                Used by [`A005` - `stdlib-module-shadowing`](https://docs.astral.sh/ruff/rules/stdlib-module-shadowing/).
              "%
              | optional,
          },
      "definitions.Flake8ComprehensionsOptions" =
        {
            allow-dict-calls-with-keyword-arguments
              | js2n.Nullable Bool
              | doc "Allow `dict` calls that make use of keyword arguments (e.g., `dict(a=1, b=2)`)."
              | optional,
          },
      "definitions.Flake8CopyrightOptions" =
        {
            author
              | js2n.Nullable String
              | doc "Author to enforce within the copyright notice. If provided, the author must be present immediately following the copyright notice."
              | optional,
            min-file-size
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "A minimum file size (in bytes) required for a copyright notice to be enforced. By default, all files are validated."
              | optional,
            notice-rgx
              | js2n.Nullable String
              | doc m%"
                The regular expression used to match the copyright notice, compiled with the [`regex`](https://docs.rs/regex/latest/regex/) crate. Defaults to `(?i)Copyright\s+((?:\(C\)|©)\s+)?\d{4}((-|,\s)\d{4})*`, which matches the following:
                
                - `Copyright 2023` - `Copyright (C) 2023` - `Copyright 2021-2023` - `Copyright (C) 2021-2023` - `Copyright (C) 2021, 2023`
              "%
              | optional,
          },
      "definitions.Flake8ErrMsgOptions" =
        {
            max-string-length
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Maximum string length for string literals in exception messages."
              | optional,
          },
      "definitions.Flake8GetTextOptions" =
        {
            extend-function-names
              | js2n.Nullable (Array String)
              | doc "Additional function names to consider as internationalization calls, in addition to those included in [`function-names`](#lint_flake8-gettext_function-names)."
              | optional,
            function-names
              | js2n.Nullable (Array String)
              | doc "The function names to consider as internationalization calls."
              | optional,
          },
      "definitions.Flake8ImplicitStrConcatOptions" =
        {
            allow-multiline
              | js2n.Nullable Bool
              | doc m%"
                Whether to allow implicit string concatenations for multiline strings. By default, implicit concatenations of multiline strings are allowed (but continuation lines, delimited with a backslash, are prohibited).
                
                Setting `allow-multiline = false` will automatically disable the `explicit-string-concatenation` (`ISC003`) rule. Otherwise, both implicit and explicit multiline string concatenations would be seen as violations, making it impossible to write a linter-compliant multiline string.
              "%
              | optional,
          },
      "definitions.Flake8ImportConventionsOptions" =
        {
            aliases
              | js2n.Nullable
                ({
                  _ | std.contract.Sequence [ refs."definitions.Alias", String ]
                })
              | doc "The conventional aliases for imports. These aliases can be extended by the [`extend-aliases`](#lint_flake8-import-conventions_extend-aliases) option."
              | optional,
            banned-aliases
              | js2n.Nullable
                ({
                  _ | std.contract.Sequence
                    [ refs."definitions.BannedAliases", Array Dyn ]
                })
              | doc "A mapping from module to its banned import aliases."
              | optional,
            banned-from
              | js2n.Nullable
                (std.contract.Sequence [ js2n.array.UniqueItems, Array String ])
              | doc m%"
                A list of modules that should not be imported from using the `from ... import ...` syntax.
                
                For example, given `banned-from = ["pandas"]`, `from pandas import DataFrame` would be disallowed, while `import pandas` would be allowed.
              "%
              | optional,
            extend-aliases
              | js2n.Nullable
                ({
                  _ | std.contract.Sequence [ refs."definitions.Alias", String ]
                })
              | doc "A mapping from module to conventional import alias. These aliases will be added to the [`aliases`](#lint_flake8-import-conventions_aliases) mapping."
              | optional,
          },
      "definitions.Flake8PytestStyleOptions" =
        {
            fixture-parentheses
              | js2n.Nullable Bool
              | doc "Boolean flag specifying whether `@pytest.fixture()` without parameters should have parentheses. If the option is set to `false` (the default), `@pytest.fixture` is valid and `@pytest.fixture()` is invalid. If set to `true`, `@pytest.fixture()` is valid and `@pytest.fixture` is invalid."
              | optional,
            mark-parentheses
              | js2n.Nullable Bool
              | doc "Boolean flag specifying whether `@pytest.mark.foo()` without parameters should have parentheses. If the option is set to `false` (the default), `@pytest.mark.foo` is valid and `@pytest.mark.foo()` is invalid. If set to `true`, `@pytest.mark.foo()` is valid and `@pytest.mark.foo` is invalid."
              | optional,
            parametrize-names-type
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.ParametrizeNameType", String ])
              | doc m%"
                Expected type for multiple argument names in `@pytest.mark.parametrize`. The following values are supported:
                
                - `csv` — a comma-separated list, e.g. `@pytest.mark.parametrize("name1,name2", ...)` - `tuple` (default) — e.g. `@pytest.mark.parametrize(("name1", "name2"), ...)` - `list` — e.g. `@pytest.mark.parametrize(["name1", "name2"], ...)`
              "%
              | optional,
            parametrize-values-row-type
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.ParametrizeValuesRowType", String ])
              | doc m%"
                Expected type for each row of values in `@pytest.mark.parametrize` in case of multiple parameters. The following values are supported:
                
                - `tuple` (default) — e.g. `@pytest.mark.parametrize(("name1", "name2"), [(1, 2), (3, 4)])` - `list` — e.g. `@pytest.mark.parametrize(("name1", "name2"), [[1, 2], [3, 4]])`
              "%
              | optional,
            parametrize-values-type
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.ParametrizeValuesType", String ])
              | doc m%"
                Expected type for the list of values rows in `@pytest.mark.parametrize`. The following values are supported:
                
                - `tuple` — e.g. `@pytest.mark.parametrize("name", (1, 2, 3))` - `list` (default) — e.g. `@pytest.mark.parametrize("name", [1, 2, 3])`
              "%
              | optional,
            raises-extend-require-match-for
              | js2n.Nullable (Array String)
              | doc m%"
                List of additional exception names that require a match= parameter in a `pytest.raises()` call. This extends the default list of exceptions that require a match= parameter. This option is useful if you want to extend the default list of exceptions that require a match= parameter without having to specify the entire list. Note that this option does not remove any exceptions from the default list.
                
                Supports glob patterns. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            raises-require-match-for
              | js2n.Nullable (Array String)
              | doc m%"
                List of exception names that require a match= parameter in a `pytest.raises()` call.
                
                Supports glob patterns. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            warns-extend-require-match-for
              | js2n.Nullable (Array String)
              | doc m%"
                List of additional warning names that require a match= parameter in a `pytest.warns()` call. This extends the default list of warnings that require a match= parameter.
                
                This option is useful if you want to extend the default list of warnings that require a match= parameter without having to specify the entire list.
                
                Note that this option does not remove any warnings from the default list.
                
                Supports glob patterns. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            warns-require-match-for
              | js2n.Nullable (Array String)
              | doc m%"
                List of warning names that require a match= parameter in a `pytest.warns()` call.
                
                Supports glob patterns. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
          },
      "definitions.Flake8QuotesOptions" =
        {
            avoid-escape
              | js2n.Nullable Bool
              | doc "Whether to avoid using single quotes if a string contains single quotes, or vice-versa with double quotes, as per [PEP 8](https://peps.python.org/pep-0008/#string-quotes). This minimizes the need to escape quotation marks within strings."
              | optional,
            docstring-quotes
              | js2n.Nullable refs."definitions.Quote"
              | doc m%"
                Quote style to prefer for docstrings (either "single" or "double").
                
                When using the formatter, only "double" is compatible, as the formatter enforces double quotes for docstrings strings.
              "%
              | optional,
            inline-quotes
              | js2n.Nullable refs."definitions.Quote"
              | doc m%"
                Quote style to prefer for inline strings (either "single" or "double").
                
                When using the formatter, ensure that [`format.quote-style`](#format_quote-style) is set to the same preferred quote style.
              "%
              | optional,
            multiline-quotes
              | js2n.Nullable refs."definitions.Quote"
              | doc m%"
                Quote style to prefer for multiline strings (either "single" or "double").
                
                When using the formatter, only "double" is compatible, as the formatter enforces double quotes for multiline strings.
              "%
              | optional,
          },
      "definitions.Flake8SelfOptions" =
        {
            extend-ignore-names
              | js2n.Nullable (Array String)
              | doc "Additional names to ignore when considering `flake8-self` violations, in addition to those included in [`ignore-names`](#lint_flake8-self_ignore-names)."
              | optional,
            ignore-names
              | js2n.Nullable (Array String)
              | doc "A list of names to ignore when considering `flake8-self` violations."
              | optional,
          },
      "definitions.Flake8TidyImportsOptions" =
        {
            ban-relative-imports
              | js2n.Nullable refs."definitions.Strictness"
              | doc "Whether to ban all relative imports (`\"all\"`), or only those imports that extend into the parent module or beyond (`\"parents\"`)."
              | optional,
            banned-api
              | js2n.Nullable
                ({
                  _ | std.contract.Sequence
                    [ refs."definitions.ApiBan", { _ | Dyn } ]
                })
              | doc "Specific modules or module members that may not be imported or accessed. Note that this rule is only meant to flag accidental uses, and can be circumvented via `eval` or `importlib`."
              | optional,
            banned-module-level-imports
              | js2n.Nullable (Array String)
              | doc "List of specific modules that may not be imported at module level, and should instead be imported lazily (e.g., within a function definition, or an `if TYPE_CHECKING:` block, or some other nested context)."
              | optional,
          },
      "definitions.Flake8TypeCheckingOptions" =
        {
            exempt-modules
              | js2n.Nullable (Array String)
              | doc "Exempt certain modules from needing to be moved into type-checking blocks."
              | optional,
            quote-annotations
              | js2n.Nullable Bool
              | doc m%"
                Whether to add quotes around type annotations, if doing so would allow the corresponding import to be moved into a type-checking block.
                
                For example, in the following, Python requires that `Sequence` be available at runtime, despite the fact that it's only used in a type annotation:
                
                ```python from collections.abc import Sequence
                
                def func(value: Sequence[int]) -> None: ... ```
                
                In other words, moving `from collections.abc import Sequence` into an `if TYPE_CHECKING:` block above would cause a runtime error, as the type would no longer be available at runtime.
                
                By default, Ruff will respect such runtime semantics and avoid moving the import to prevent such runtime errors.
                
                Setting `quote-annotations` to `true` will instruct Ruff to add quotes around the annotation (e.g., `"Sequence[int]"`), which in turn enables Ruff to move the import into an `if TYPE_CHECKING:` block, like so:
                
                ```python from typing import TYPE_CHECKING
                
                if TYPE_CHECKING: from collections.abc import Sequence
                
                def func(value: "Sequence[int]") -> None: ... ```
                
                Note that this setting has no effect when `from __future__ import annotations` is present, as `__future__` annotations are always treated equivalently to quoted annotations.
              "%
              | optional,
            runtime-evaluated-base-classes
              | js2n.Nullable (Array String)
              | doc m%"
                Exempt classes that list any of the enumerated classes as a base class from needing to be moved into type-checking blocks.
                
                Common examples include Pydantic's `pydantic.BaseModel` and SQLAlchemy's `sqlalchemy.orm.DeclarativeBase`, but can also support user-defined classes that inherit from those base classes. For example, if you define a common `DeclarativeBase` subclass that's used throughout your project (e.g., `class Base(DeclarativeBase) ...` in `base.py`), you can add it to this list (`runtime-evaluated-base-classes = ["base.Base"]`) to exempt models from being moved into type-checking blocks.
              "%
              | optional,
            runtime-evaluated-decorators
              | js2n.Nullable (Array String)
              | doc m%"
                Exempt classes and functions decorated with any of the enumerated decorators from being moved into type-checking blocks.
                
                Common examples include Pydantic's `@pydantic.validate_call` decorator (for functions) and attrs' `@attrs.define` decorator (for classes).
                
                This also supports framework decorators like FastAPI's `fastapi.FastAPI.get` which will work across assignments in the same module.
                
                For example: ```python import fastapi
                
                app = FastAPI("app")
                
                @app.get("/home") def home() -> str: ... ```
                
                Here `app.get` will correctly be identified as `fastapi.FastAPI.get`.
              "%
              | optional,
            strict
              | js2n.Nullable Bool
              | doc m%"
                Enforce `TC001`, `TC002`, and `TC003` rules even when valid runtime imports are present for the same module.
                
                See flake8-type-checking's [strict](https://github.com/snok/flake8-type-checking#strict) option.
              "%
              | optional,
          },
      "definitions.Flake8UnusedArgumentsOptions" =
        {
            ignore-variadic-names
              | js2n.Nullable Bool
              | doc "Whether to allow unused variadic arguments, like `*args` and `**kwargs`."
              | optional,
          },
      "definitions.FormatOptions" =
        {
            docstring-code-format
              | js2n.Nullable Bool
              | doc m%"
                Whether to format code snippets in docstrings.
                
                When this is enabled, Python code examples within docstrings are automatically reformatted.
                
                For example, when this is enabled, the following code:
                
                ```python def f(x): """ Something about `f`. And an example in doctest format:
                
                >>> f(  x  )
                
                Markdown is also supported:
                
                ```py f(  x  ) ```
                
                As are reStructuredText literal blocks::
                
                f(  x  )
                
                And reStructuredText code blocks:
                
                .. code-block:: python
                
                f(  x  ) """ pass ```
                
                ... will be reformatted (assuming the rest of the options are set to their defaults) as:
                
                ```python def f(x): """ Something about `f`. And an example in doctest format:
                
                >>> f(x)
                
                Markdown is also supported:
                
                ```py f(x) ```
                
                As are reStructuredText literal blocks::
                
                f(x)
                
                And reStructuredText code blocks:
                
                .. code-block:: python
                
                f(x) """ pass ```
                
                If a code snippet in a docstring contains invalid Python code or if the formatter would otherwise write invalid Python code, then the code example is ignored by the formatter and kept as-is.
                
                Currently, doctest, Markdown, reStructuredText literal blocks, and reStructuredText code blocks are all supported and automatically recognized. In the case of unlabeled fenced code blocks in Markdown and reStructuredText literal blocks, the contents are assumed to be Python and reformatted. As with any other format, if the contents aren't valid Python, then the block is left untouched automatically.
              "%
              | optional,
            docstring-code-line-length
              | js2n.Nullable refs."definitions.DocstringCodeLineWidth"
              | doc m%"
                Set the line length used when formatting code snippets in docstrings.
                
                This only has an effect when the `docstring-code-format` setting is enabled.
                
                The default value for this setting is `"dynamic"`, which has the effect of ensuring that any reformatted code examples in docstrings adhere to the global line length configuration that is used for the surrounding Python code. The point of this setting is that it takes the indentation of the docstring into account when reformatting code examples.
                
                Alternatively, this can be set to a fixed integer, which will result in the same line length limit being applied to all reformatted code examples in docstrings. When set to a fixed integer, the indent of the docstring is not taken into account. That is, this may result in lines in the reformatted code example that exceed the globally configured line length limit.
                
                For example, when this is set to `20` and [`docstring-code-format`](#docstring-code-format) is enabled, then this code:
                
                ```python def f(x): ''' Something about `f`. And an example:
                
                .. code-block:: python
                
                foo, bar, quux = this_is_a_long_line(lion, hippo, lemur, bear) ''' pass ```
                
                ... will be reformatted (assuming the rest of the options are set to their defaults) as:
                
                ```python def f(x): """ Something about `f`. And an example:
                
                .. code-block:: python
                
                ( foo, bar, quux, ) = this_is_a_long_line( lion, hippo, lemur, bear, ) """ pass ```
              "%
              | optional,
            exclude
              | js2n.Nullable (Array String)
              | doc m%"
                A list of file patterns to exclude from formatting in addition to the files excluded globally (see [`exclude`](#exclude), and [`extend-exclude`](#extend-exclude)).
                
                Exclusions are based on globs, and can be either:
                
                - Single-path patterns, like `.mypy_cache` (to exclude any directory named `.mypy_cache` in the tree), `foo.py` (to exclude any file named `foo.py`), or `foo_*.py` (to exclude any file matching `foo_*.py` ). - Relative patterns, like `directory/foo.py` (to exclude that specific file) or `directory/*.py` (to exclude any Python files in `directory`). Note that these paths are relative to the project root (e.g., the directory containing your `pyproject.toml`).
                
                For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            indent-style
              | js2n.Nullable refs."definitions.IndentStyle"
              | doc m%"
                Whether to use spaces or tabs for indentation.
                
                `indent-style = "space"` (default):
                
                ```python def f(): print("Hello") #  Spaces indent the `print` statement. ```
                
                `indent-style = "tab"`:
                
                ```python def f(): print("Hello") #  A tab `\t` indents the `print` statement. ```
                
                PEP 8 recommends using spaces for [indentation](https://peps.python.org/pep-0008/#indentation). We care about accessibility; if you do not need tabs for accessibility, we do not recommend you use them.
                
                See [`indent-width`](#indent-width) to configure the number of spaces per indentation and the tab width.
              "%
              | optional,
            line-ending
              | js2n.Nullable refs."definitions.LineEnding"
              | doc m%"
                The character Ruff uses at the end of a line.
                
                * `auto`: The newline style is detected automatically on a file per file basis. Files with mixed line endings will be converted to the first detected line ending. Defaults to `\n` for files that contain no line endings. * `lf`: Line endings will be converted to `\n`. The default line ending on Unix. * `cr-lf`: Line endings will be converted to `\r\n`. The default line ending on Windows. * `native`: Line endings will be converted to `\n` on Unix and `\r\n` on Windows.
              "%
              | optional,
            preview
              | js2n.Nullable Bool
              | doc "Whether to enable the unstable preview style formatting."
              | optional,
            quote-style
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.QuoteStyle", String ])
              | doc m%"
                Configures the preferred quote character for strings. The recommended options are
                
                * `double` (default): Use double quotes `"` * `single`: Use single quotes `'`
                
                In compliance with [PEP 8](https://peps.python.org/pep-0008/) and [PEP 257](https://peps.python.org/pep-0257/), Ruff prefers double quotes for triple quoted strings and docstrings even when using `quote-style = "single"`.
                
                Ruff deviates from using the configured quotes if doing so prevents the need for escaping quote characters inside the string:
                
                ```python a = "a string without any quotes" b = "It's monday morning" ```
                
                Ruff will change the quotes of the string assigned to `a` to single quotes when using `quote-style = "single"`. However, Ruff uses double quotes for the string assigned to `b` because using single quotes would require escaping the `'`, which leads to the less readable code: `'It\'s monday morning'`.
                
                In addition, Ruff supports the quote style `preserve` for projects that already use a mixture of single and double quotes and can't migrate to the `double` or `single` style. The quote style `preserve` leaves the quotes of all strings unchanged.
              "%
              | optional,
            skip-magic-trailing-comma
              | js2n.Nullable Bool
              | doc m%"
                Ruff uses existing trailing commas as an indication that short lines should be left separate. If this option is set to `true`, the magic trailing comma is ignored.
                
                For example, Ruff leaves the arguments separate even though collapsing the arguments to a single line doesn't exceed the line length if `skip-magic-trailing-comma = false`:
                
                ```python # The arguments remain on separate lines because of the trailing comma after `b` def test( a, b, ): pass ```
                
                Setting `skip-magic-trailing-comma = true` changes the formatting to:
                
                ```python # The arguments remain on separate lines because of the trailing comma after `b` def test(a, b): pass ```
              "%
              | optional,
          },
      "definitions.ImportSection" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.ImportType", String ],
              String
            ],
      "definitions.ImportType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'local-folder,
                'first-party,
                'third-party,
                'standard-library,
                'future
              |]
            ],
      "definitions.IndentStyle" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'tab |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'space |] ]
            ],
      "definitions.IndentWidth" =
        std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 1 ],
      "definitions.IsortOptions" =
        {
            case-sensitive
              | js2n.Nullable Bool
              | doc "Sort imports taking into account case sensitivity."
              | optional,
            classes
              | js2n.Nullable (Array String)
              | doc "An override list of tokens to always recognize as a Class for [`order-by-type`](#lint_isort_order-by-type) regardless of casing."
              | optional,
            combine-as-imports
              | js2n.Nullable Bool
              | doc "Combines as imports on the same line. See isort's [`combine-as-imports`](https://pycqa.github.io/isort/docs/configuration/options.html#combine-as-imports) option."
              | optional,
            constants
              | js2n.Nullable (Array String)
              | doc "An override list of tokens to always recognize as a CONSTANT for [`order-by-type`](#lint_isort_order-by-type) regardless of casing."
              | optional,
            default-section
              | js2n.Nullable refs."definitions.ImportSection"
              | doc "Define a default section for any imports that don't fit into the specified [`section-order`](#lint_isort_section-order)."
              | optional,
            detect-same-package
              | js2n.Nullable Bool
              | doc m%"
                Whether to automatically mark imports from within the same package as first-party. For example, when `detect-same-package = true`, then when analyzing files within the `foo` package, any imports from within the `foo` package will be considered first-party.
                
                This heuristic is often unnecessary when `src` is configured to detect all first-party sources; however, if `src` is _not_ configured, this heuristic can be useful to detect first-party imports from _within_ (but not _across_) first-party packages.
              "%
              | optional,
            extra-standard-library
              | js2n.Nullable (Array String)
              | doc m%"
                A list of modules to consider standard-library, in addition to those known to Ruff in advance.
                
                Supports glob patterns. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            force-single-line
              | js2n.Nullable Bool
              | doc "Forces all from imports to appear on their own line."
              | optional,
            force-sort-within-sections
              | js2n.Nullable Bool
              | doc "Don't sort straight-style imports (like `import sys`) before from-style imports (like `from itertools import groupby`). Instead, sort the imports by module, independent of import style."
              | optional,
            force-to-top
              | js2n.Nullable (Array String)
              | doc "Force specific imports to the top of their appropriate section."
              | optional,
            force-wrap-aliases
              | js2n.Nullable Bool
              | doc m%"
                Force `import from` statements with multiple members and at least one alias (e.g., `import A as B`) to wrap such that every line contains exactly one member. For example, this formatting would be retained, rather than condensing to a single line:
                
                ```python from .utils import ( test_directory as test_directory, test_id as test_id ) ```
                
                Note that this setting is only effective when combined with `combine-as-imports = true`. When [`combine-as-imports`](#lint_isort_combine-as-imports) isn't enabled, every aliased `import from` will be given its own line, in which case, wrapping is not necessary.
                
                When using the formatter, ensure that [`format.skip-magic-trailing-comma`](#format_skip-magic-trailing-comma) is set to `false` (default) when enabling `force-wrap-aliases` to avoid that the formatter collapses members if they all fit on a single line.
              "%
              | optional,
            forced-separate
              | js2n.Nullable (Array String)
              | doc "A list of modules to separate into auxiliary block(s) of imports, in the order specified."
              | optional,
            from-first
              | js2n.Nullable Bool
              | doc m%"
                Whether to place `import from` imports before straight imports when sorting.
                
                For example, by default, imports will be sorted such that straight imports appear before `import from` imports, as in: ```python import os import sys from typing import List ```
                
                Setting `from-first = true` will instead sort such that `import from` imports appear before straight imports, as in: ```python from typing import List import os import sys ```
              "%
              | optional,
            known-first-party
              | js2n.Nullable (Array String)
              | doc m%"
                A list of modules to consider first-party, regardless of whether they can be identified as such via introspection of the local filesystem.
                
                Supports glob patterns. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            known-local-folder
              | js2n.Nullable (Array String)
              | doc m%"
                A list of modules to consider being a local folder. Generally, this is reserved for relative imports (`from . import module`).
                
                Supports glob patterns. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            known-third-party
              | js2n.Nullable (Array String)
              | doc m%"
                A list of modules to consider third-party, regardless of whether they can be identified as such via introspection of the local filesystem.
                
                Supports glob patterns. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            length-sort
              | js2n.Nullable Bool
              | doc m%"
                Sort imports by their string length, such that shorter imports appear before longer imports. For example, by default, imports will be sorted alphabetically, as in: ```python import collections import os ```
                
                Setting `length-sort = true` will instead sort such that shorter imports appear before longer imports, as in: ```python import os import collections ```
              "%
              | optional,
            length-sort-straight
              | js2n.Nullable Bool
              | doc "Sort straight imports by their string length. Similar to [`length-sort`](#lint_isort_length-sort), but applies only to straight imports and doesn't affect `from` imports."
              | optional,
            lines-after-imports
              | js2n.Nullable std.number.Integer
              | doc m%"
                The number of blank lines to place after imports. Use `-1` for automatic determination.
                
                Ruff uses at most one blank line after imports in typing stub files (files with `.pyi` extension) in accordance to the typing style recommendations ([source](https://typing.python.org/en/latest/guides/writing_stubs.html#blank-lines)).
                
                When using the formatter, only the values `-1`, `1`, and `2` are compatible because it enforces at least one empty and at most two empty lines after imports.
              "%
              | optional,
            lines-between-types
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc m%"
                The number of lines to place between "direct" and `import from` imports.
                
                When using the formatter, only the values `0` and `1` are compatible because it preserves up to one empty line after imports in nested blocks.
              "%
              | optional,
            no-lines-before
              | js2n.Nullable (Array refs."definitions.ImportSection")
              | doc "A list of sections that should _not_ be delineated from the previous section via empty lines."
              | optional,
            no-sections
              | js2n.Nullable Bool
              | doc m%"
                Put all imports into the same section bucket.
                
                For example, rather than separating standard library and third-party imports, as in: ```python import os import sys
                
                import numpy import pandas ```
                
                Setting `no-sections = true` will instead group all imports into a single section: ```python import numpy import os import pandas import sys ```
              "%
              | optional,
            order-by-type
              | js2n.Nullable Bool
              | doc "Order imports by type, which is determined by case, in addition to alphabetically."
              | optional,
            relative-imports-order
              | js2n.Nullable refs."definitions.RelativeImportsOrder"
              | doc m%"
                Whether to place "closer" imports (fewer `.` characters, most local) before "further" imports (more `.` characters, least local), or vice versa.
                
                The default ("furthest-to-closest") is equivalent to isort's [`reverse-relative`](https://pycqa.github.io/isort/docs/configuration/options.html#reverse-relative) default (`reverse-relative = false`); setting this to "closest-to-furthest" is equivalent to isort's `reverse-relative = true`.
              "%
              | optional,
            required-imports
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.NameImports", String ]
                ))
              | doc "Add the specified import line to all files."
              | optional,
            section-order
              | js2n.Nullable (Array refs."definitions.ImportSection")
              | doc "Override in which order the sections should be output. Can be used to move custom sections."
              | optional,
            sections
              | js2n.Nullable ({ _ | Array String })
              | doc m%"
                A list of mappings from section names to modules.
                
                By default, imports are categorized according to their type (e.g., `future`, `third-party`, and so on). This setting allows you to group modules into custom sections, to augment or override the built-in sections.
                
                For example, to group all testing utilities, you could create a `testing` section: ```toml testing = ["pytest", "hypothesis"] ```
                
                The values in the list are treated as glob patterns. For example, to match all packages in the LangChain ecosystem (`langchain-core`, `langchain-openai`, etc.): ```toml langchain = ["langchain-*"] ```
                
                Custom sections should typically be inserted into the [`section-order`](#lint_isort_section-order) list to ensure that they're displayed as a standalone group and in the intended order, as in: ```toml section-order = [ "future", "standard-library", "third-party", "first-party", "local-folder", "testing" ] ```
                
                If a custom section is omitted from [`section-order`](#lint_isort_section-order), imports in that section will be assigned to the [`default-section`](#lint_isort_default-section) (which defaults to `third-party`).
              "%
              | optional,
            single-line-exclusions
              | js2n.Nullable (Array String)
              | doc "One or more modules to exclude from the single line rule."
              | optional,
            split-on-trailing-comma
              | js2n.Nullable Bool
              | doc m%"
                If a comma is placed after the last member in a multi-line import, then the imports will never be folded into one line.
                
                See isort's [`split-on-trailing-comma`](https://pycqa.github.io/isort/docs/configuration/options.html#split-on-trailing-comma) option.
                
                When using the formatter, ensure that [`format.skip-magic-trailing-comma`](#format_skip-magic-trailing-comma) is set to `false` (default) when enabling `split-on-trailing-comma` to avoid that the formatter removes the trailing commas.
              "%
              | optional,
            variables
              | js2n.Nullable (Array String)
              | doc "An override list of tokens to always recognize as a var for [`order-by-type`](#lint_isort_order-by-type) regardless of casing."
              | optional,
          },
      "definitions.LineEnding" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'auto |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'lf |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'cr-lf |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'native |] ]
            ],
      "definitions.LineLength" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 320,
              js2n.number.Minimum 1
            ],
      "definitions.LineWidth" =
        std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 1 ],
      "definitions.LintOptions" =
        {
            allowed-confusables
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ js2n.string.MaxLength 1, js2n.string.MinLength 1 ]
                ))
              | doc "A list of allowed \"confusable\" Unicode characters to ignore when enforcing `RUF001`, `RUF002`, and `RUF003`."
              | optional,
            dummy-variable-rgx
              | js2n.Nullable String
              | doc "A regular expression used to identify \"dummy\" variables, or those which should be ignored when enforcing (e.g.) unused-variable rules. The default expression matches `_`, `__`, and `_var`, but not `_var_`."
              | optional,
            exclude
              | js2n.Nullable (Array String)
              | doc m%"
                A list of file patterns to exclude from linting in addition to the files excluded globally (see [`exclude`](#exclude), and [`extend-exclude`](#extend-exclude)).
                
                Exclusions are based on globs, and can be either:
                
                - Single-path patterns, like `.mypy_cache` (to exclude any directory named `.mypy_cache` in the tree), `foo.py` (to exclude any file named `foo.py`), or `foo_*.py` (to exclude any file matching `foo_*.py` ). - Relative patterns, like `directory/foo.py` (to exclude that specific file) or `directory/*.py` (to exclude any Python files in `directory`). Note that these paths are relative to the project root (e.g., the directory containing your `pyproject.toml`).
                
                For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            explicit-preview-rules
              | js2n.Nullable Bool
              | doc "Whether to require exact codes to select preview rules. When enabled, preview rules will not be selected by prefixes — the full code of each preview rule will be required to enable the rule."
              | optional,
            extend-fixable
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.RuleSelector", String ]
                ))
              | doc "A list of rule codes or prefixes to consider fixable, in addition to those specified by [`fixable`](#lint_fixable)."
              | optional,
            extend-ignore
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.RuleSelector", String ]
                ))
              | doc "A list of rule codes or prefixes to ignore, in addition to those specified by `ignore`."
              | optional,
            extend-per-file-ignores
              | js2n.Nullable
                ({
                  _ | Array (
                    std.contract.Sequence
                      [ refs."definitions.RuleSelector", String ]
                  )
                })
              | doc "A list of mappings from file pattern to rule codes or prefixes to exclude, in addition to any rules excluded by [`per-file-ignores`](#lint_per-file-ignores)."
              | optional,
            extend-safe-fixes
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.RuleSelector", String ]
                ))
              | doc "A list of rule codes or prefixes for which unsafe fixes should be considered safe."
              | optional,
            extend-select
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.RuleSelector", String ]
                ))
              | doc "A list of rule codes or prefixes to enable, in addition to those specified by [`select`](#lint_select)."
              | optional,
            extend-unfixable
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.RuleSelector", String ]
                ))
              | doc "A list of rule codes or prefixes to consider non-auto-fixable, in addition to those specified by [`unfixable`](#lint_unfixable)."
              | optional,
            extend-unsafe-fixes
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.RuleSelector", String ]
                ))
              | doc "A list of rule codes or prefixes for which safe fixes should be considered unsafe."
              | optional,
            external
              | js2n.Nullable (Array String)
              | doc "A list of rule codes or prefixes that are unsupported by Ruff, but should be preserved when (e.g.) validating `# noqa` directives. Useful for retaining `# noqa` directives that cover plugins not yet implemented by Ruff."
              | optional,
            fixable
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.RuleSelector", String ]
                ))
              | doc "A list of rule codes or prefixes to consider fixable. By default, all rules are considered fixable."
              | optional,
            flake8-annotations
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Flake8AnnotationsOptions", { _ | Dyn } ])
              | doc "Options for the `flake8-annotations` plugin."
              | optional,
            flake8-bandit
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Flake8BanditOptions", { _ | Dyn } ])
              | doc "Options for the `flake8-bandit` plugin."
              | optional,
            flake8-boolean-trap
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Flake8BooleanTrapOptions", { _ | Dyn } ])
              | doc "Options for the `flake8-boolean-trap` plugin."
              | optional,
            flake8-bugbear
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Flake8BugbearOptions", { _ | Dyn } ])
              | doc "Options for the `flake8-bugbear` plugin."
              | optional,
            flake8-builtins
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Flake8BuiltinsOptions", { _ | Dyn } ])
              | doc "Options for the `flake8-builtins` plugin."
              | optional,
            flake8-comprehensions
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.Flake8ComprehensionsOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-comprehensions` plugin."
              | optional,
            flake8-copyright
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Flake8CopyrightOptions", { _ | Dyn } ])
              | doc "Options for the `flake8-copyright` plugin."
              | optional,
            flake8-errmsg
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Flake8ErrMsgOptions", { _ | Dyn } ])
              | doc "Options for the `flake8-errmsg` plugin."
              | optional,
            flake8-gettext
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Flake8GetTextOptions", { _ | Dyn } ])
              | doc "Options for the `flake8-gettext` plugin."
              | optional,
            flake8-implicit-str-concat
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.Flake8ImplicitStrConcatOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-implicit-str-concat` plugin."
              | optional,
            flake8-import-conventions
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.Flake8ImportConventionsOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-import-conventions` plugin."
              | optional,
            flake8-pytest-style
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Flake8PytestStyleOptions", { _ | Dyn } ])
              | doc "Options for the `flake8-pytest-style` plugin."
              | optional,
            flake8-quotes
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Flake8QuotesOptions", { _ | Dyn } ])
              | doc "Options for the `flake8-quotes` plugin."
              | optional,
            flake8-self
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Flake8SelfOptions", { _ | Dyn } ])
              | doc "Options for the `flake8_self` plugin."
              | optional,
            flake8-tidy-imports
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Flake8TidyImportsOptions", { _ | Dyn } ])
              | doc "Options for the `flake8-tidy-imports` plugin."
              | optional,
            flake8-type-checking
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Flake8TypeCheckingOptions", { _ | Dyn } ])
              | doc "Options for the `flake8-type-checking` plugin."
              | optional,
            flake8-unused-arguments
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.Flake8UnusedArgumentsOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-unused-arguments` plugin."
              | optional,
            ignore
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.RuleSelector", String ]
                ))
              | doc m%"
                A list of rule codes or prefixes to ignore. Prefixes can specify exact rules (like `F841`), entire categories (like `F`), or anything in between.
                
                When breaking ties between enabled and disabled rules (via `select` and `ignore`, respectively), more specific prefixes override less specific prefixes. `ignore` takes precedence over `select` if the same prefix appears in both.
              "%
              | optional,
            ignore-init-module-imports
              | js2n.Nullable Bool
              | doc m%"
                Avoid automatically removing unused imports in `__init__.py` files. Such imports will still be flagged, but with a dedicated message suggesting that the import is either added to the module's `__all__` symbol, or re-exported with a redundant alias (e.g., `import os as os`).
                
                This option is enabled by default, but you can opt-in to removal of imports via an unsafe fix.
              "%
              | optional,
            isort
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.IsortOptions", { _ | Dyn } ])
              | doc "Options for the `isort` plugin."
              | optional,
            logger-objects
              | js2n.Nullable (Array String)
              | doc m%"
                A list of objects that should be treated equivalently to a `logging.Logger` object.
                
                This is useful for ensuring proper diagnostics (e.g., to identify `logging` deprecations and other best-practices) for projects that re-export a `logging.Logger` object from a common module.
                
                For example, if you have a module `logging_setup.py` with the following contents: ```python import logging
                
                logger = logging.getLogger(__name__) ```
                
                Adding `"logging_setup.logger"` to `logger-objects` will ensure that `logging_setup.logger` is treated as a `logging.Logger` object when imported from other modules (e.g., `from logging_setup import logger`).
              "%
              | optional,
            mccabe
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.McCabeOptions", { _ | Dyn } ])
              | doc "Options for the `mccabe` plugin."
              | optional,
            pep8-naming
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Pep8NamingOptions", { _ | Dyn } ])
              | doc "Options for the `pep8-naming` plugin."
              | optional,
            per-file-ignores
              | js2n.Nullable
                ({
                  _ | Array (
                    std.contract.Sequence
                      [ refs."definitions.RuleSelector", String ]
                  )
                })
              | doc "A list of mappings from file pattern to rule codes or prefixes to exclude, when considering any matching files. An initial '!' negates the file pattern."
              | optional,
            preview
              | js2n.Nullable Bool
              | doc "Whether to enable preview mode. When preview mode is enabled, Ruff will use unstable rules and fixes."
              | optional,
            pycodestyle
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.PycodestyleOptions", { _ | Dyn } ])
              | doc "Options for the `pycodestyle` plugin."
              | optional,
            pydoclint
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.PydoclintOptions", { _ | Dyn } ])
              | doc "Options for the `pydoclint` plugin."
              | optional,
            pydocstyle
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.PydocstyleOptions", { _ | Dyn } ])
              | doc "Options for the `pydocstyle` plugin."
              | optional,
            pyflakes
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.PyflakesOptions", { _ | Dyn } ])
              | doc "Options for the `pyflakes` plugin."
              | optional,
            pylint
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.PylintOptions", { _ | Dyn } ])
              | doc "Options for the `pylint` plugin."
              | optional,
            pyupgrade
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.PyUpgradeOptions", { _ | Dyn } ])
              | doc "Options for the `pyupgrade` plugin."
              | optional,
            ruff
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.RuffOptions", { _ | Dyn } ])
              | doc "Options for the `ruff` plugin"
              | optional,
            select
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.RuleSelector", String ]
                ))
              | doc m%"
                A list of rule codes or prefixes to enable. Prefixes can specify exact rules (like `F841`), entire categories (like `F`), or anything in between.
                
                When breaking ties between enabled and disabled rules (via `select` and `ignore`, respectively), more specific prefixes override less specific prefixes. `ignore` takes precedence over `select` if the same prefix appears in both.
              "%
              | optional,
            task-tags
              | js2n.Nullable (Array String)
              | doc m%"
                A list of task tags to recognize (e.g., "TODO", "FIXME", "XXX").
                
                Comments starting with these tags will be ignored by commented-out code detection (`ERA`), and skipped by line-length rules (`E501`) if [`ignore-overlong-task-comments`](#lint_pycodestyle_ignore-overlong-task-comments) is set to `true`.
              "%
              | optional,
            typing-extensions
              | js2n.Nullable Bool
              | doc m%"
                Whether to allow imports from the third-party `typing_extensions` module for Python versions before a symbol was added to the first-party `typing` module.
                
                Many rules try to import symbols from the `typing` module but fall back to `typing_extensions` for earlier versions of Python. This option can be used to disable this fallback behavior in cases where `typing_extensions` is not installed.
              "%
              | optional,
            typing-modules
              | js2n.Nullable (Array String)
              | doc m%"
                A list of modules whose exports should be treated equivalently to members of the `typing` module.
                
                This is useful for ensuring proper type annotation inference for projects that re-export `typing` and `typing_extensions` members from a compatibility module. If omitted, any members imported from modules apart from `typing` and `typing_extensions` will be treated as ordinary Python objects.
              "%
              | optional,
            unfixable
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.RuleSelector", String ]
                ))
              | doc "A list of rule codes or prefixes to consider non-fixable."
              | optional,
          },
      "definitions.McCabeOptions" =
        {
            max-complexity
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "The maximum McCabe complexity to allow before triggering `C901` errors."
              | optional,
          },
      "definitions.NameImports" = String,
      "definitions.OutputFormat" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'sarif,
                'azure,
                'rdjson,
                'pylint,
                'gitlab,
                'github,
                'grouped,
                'junit,
                'json-lines,
                'json,
                'full,
                'concise
              |]
            ],
      "definitions.ParametrizeNameType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'list, 'tuple, 'csv |] ],
      "definitions.ParametrizeValuesRowType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'list, 'tuple |] ],
      "definitions.ParametrizeValuesType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'list, 'tuple |] ],
      "definitions.Pep8NamingOptions" =
        {
            classmethod-decorators
              | js2n.Nullable (Array String)
              | doc m%"
                A list of decorators that, when applied to a method, indicate that the method should be treated as a class method (in addition to the builtin `@classmethod`).
                
                For example, Ruff will expect that any method decorated by a decorator in this list takes a `cls` argument as its first argument.
                
                Expects to receive a list of fully-qualified names (e.g., `pydantic.validator`, rather than `validator`) or alternatively a plain name which is then matched against the last segment in case the decorator itself consists of a dotted name.
              "%
              | optional,
            extend-ignore-names
              | js2n.Nullable (Array String)
              | doc m%"
                Additional names (or patterns) to ignore when considering `pep8-naming` violations, in addition to those included in [`ignore-names`](#lint_pep8-naming_ignore-names).
                
                Supports glob patterns. For example, to ignore all names starting with `test_` or ending with `_test`, you could use `ignore-names = ["test_*", "*_test"]`. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            ignore-names
              | js2n.Nullable (Array String)
              | doc m%"
                A list of names (or patterns) to ignore when considering `pep8-naming` violations.
                
                Supports glob patterns. For example, to ignore all names starting with `test_` or ending with `_test`, you could use `ignore-names = ["test_*", "*_test"]`. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            staticmethod-decorators
              | js2n.Nullable (Array String)
              | doc m%"
                A list of decorators that, when applied to a method, indicate that the method should be treated as a static method (in addition to the builtin `@staticmethod`).
                
                For example, Ruff will expect that any method decorated by a decorator in this list has no `self` or `cls` argument.
                
                Expects to receive a list of fully-qualified names (e.g., `belay.Device.teardown`, rather than `teardown`) or alternatively a plain name which is then matched against the last segment in case the decorator itself consists of a dotted name.
              "%
              | optional,
          },
      "definitions.PyUpgradeOptions" =
        {
            keep-runtime-typing
              | js2n.Nullable Bool
              | doc m%"
                Whether to avoid [PEP 585](https://peps.python.org/pep-0585/) (`List[int]` -> `list[int]`) and [PEP 604](https://peps.python.org/pep-0604/) (`Union[str, int]` -> `str | int`) rewrites even if a file imports `from __future__ import annotations`.
                
                This setting is only applicable when the target Python version is below 3.9 and 3.10 respectively, and is most commonly used when working with libraries like Pydantic and FastAPI, which rely on the ability to parse type annotations at runtime. The use of `from __future__ import annotations` causes Python to treat the type annotations as strings, which typically allows for the use of language features that appear in later Python versions but are not yet supported by the current version (e.g., `str | int`). However, libraries that rely on runtime type annotations will break if the annotations are incompatible with the current Python version.
                
                For example, while the following is valid Python 3.8 code due to the presence of `from __future__ import annotations`, the use of `str | int` prior to Python 3.10 will cause Pydantic to raise a `TypeError` at runtime:
                
                ```python from __future__ import annotations
                
                import pydantic
                
                class Foo(pydantic.BaseModel): bar: str | int ```
              "%
              | optional,
          },
      "definitions.PycodestyleOptions" =
        {
            ignore-overlong-task-comments
              | js2n.Nullable Bool
              | doc "Whether line-length violations (`E501`) should be triggered for comments starting with [`task-tags`](#lint_task-tags) (by default: \"TODO\", \"FIXME\", and \"XXX\")."
              | optional,
            max-doc-length
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.LineLength", Number ])
              | doc m%"
                The maximum line length to allow for [`doc-line-too-long`](https://docs.astral.sh/ruff/rules/doc-line-too-long/) violations within documentation (`W505`), including standalone comments. By default, this is set to `null` which disables reporting violations.
                
                The length is determined by the number of characters per line, except for lines containing Asian characters or emojis. For these lines, the [unicode width](https://unicode.org/reports/tr11/) of each character is added up to determine the length.
                
                See the [`doc-line-too-long`](https://docs.astral.sh/ruff/rules/doc-line-too-long/) rule for more information.
              "%
              | optional,
            max-line-length
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.LineLength", Number ])
              | doc m%"
                The maximum line length to allow for [`line-too-long`](https://docs.astral.sh/ruff/rules/line-too-long/) violations. By default, this is set to the value of the [`line-length`](#line-length) option.
                
                Use this option when you want to detect extra-long lines that the formatter can't automatically split by setting `pycodestyle.line-length` to a value larger than [`line-length`](#line-length).
                
                ```toml # The formatter wraps lines at a length of 88. line-length = 88
                
                [pycodestyle] # E501 reports lines that exceed the length of 100. max-line-length = 100 ```
                
                The length is determined by the number of characters per line, except for lines containing East Asian characters or emojis. For these lines, the [unicode width](https://unicode.org/reports/tr11/) of each character is added up to determine the length.
                
                See the [`line-too-long`](https://docs.astral.sh/ruff/rules/line-too-long/) rule for more information.
              "%
              | optional,
          },
      "definitions.PydoclintOptions" =
        {
            ignore-one-line-docstrings
              | js2n.Nullable Bool
              | doc m%"
                Skip docstrings which fit on a single line.
                
                Note: The corresponding setting in `pydoclint` is named `skip-checking-short-docstrings`.
              "%
              | optional,
          },
      "definitions.PydocstyleOptions" =
        {
            convention
              | js2n.Nullable refs."definitions.Convention"
              | doc m%"
                Whether to use Google-style, NumPy-style conventions, or the [PEP 257](https://peps.python.org/pep-0257/) defaults when analyzing docstring sections.
                
                Enabling a convention will disable all rules that are not included in the specified convention. As such, the intended workflow is to enable a convention and then selectively enable or disable any additional rules on top of it.
                
                For example, to use Google-style conventions but avoid requiring documentation for every function parameter:
                
                ```toml [tool.ruff.lint] # Enable all `pydocstyle` rules, limiting to those that adhere to the # Google convention via `convention = "google"`, below. select = ["D"]
                
                # On top of the Google convention, disable `D417`, which requires # documentation for every function parameter. ignore = ["D417"]
                
                [tool.ruff.lint.pydocstyle] convention = "google" ```
                
                To enable an additional rule that's excluded from the convention, select the desired rule via its fully qualified rule code (e.g., `D400` instead of `D4` or `D40`):
                
                ```toml [tool.ruff.lint] # Enable D400 on top of the Google convention. extend-select = ["D400"]
                
                [tool.ruff.lint.pydocstyle] convention = "google" ```
              "%
              | optional,
            ignore-decorators
              | js2n.Nullable (Array String)
              | doc "Ignore docstrings for functions or methods decorated with the specified fully-qualified decorators."
              | optional,
            ignore-var-parameters
              | js2n.Nullable Bool
              | doc "If set to `true`, ignore missing documentation for `*args` and `**kwargs` parameters."
              | optional,
            property-decorators
              | js2n.Nullable (Array String)
              | doc m%"
                A list of decorators that, when applied to a method, indicate that the method should be treated as a property (in addition to the builtin `@property` and standard-library `@functools.cached_property`).
                
                For example, Ruff will expect that any method decorated by a decorator in this list can use a non-imperative summary line.
              "%
              | optional,
          },
      "definitions.PyflakesOptions" =
        {
            allowed-unused-imports
              | js2n.Nullable (Array String)
              | doc m%"
                A list of modules to ignore when considering unused imports.
                
                Used to prevent violations for specific modules that are known to have side effects on import (e.g., `hvplot.pandas`).
                
                Modules in this list are expected to be fully-qualified names (e.g., `hvplot.pandas`). Any submodule of a given module will also be ignored (e.g., given `hvplot`, `hvplot.pandas` will also be ignored).
              "%
              | optional,
            extend-generics
              | js2n.Nullable (Array String)
              | doc m%"
                Additional functions or classes to consider generic, such that any subscripts should be treated as type annotation (e.g., `ForeignKey` in `django.db.models.ForeignKey["User"]`.
                
                Expects to receive a list of fully-qualified names (e.g., `django.db.models.ForeignKey`, rather than `ForeignKey`).
              "%
              | optional,
          },
      "definitions.PylintOptions" =
        {
            allow-dunder-method-names
              | js2n.Nullable
                (std.contract.Sequence [ js2n.array.UniqueItems, Array String ])
              | doc "Dunder methods name to allow, in addition to the default set from the Python standard library (see `PLW3201`)."
              | optional,
            allow-magic-value-types
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.ConstantType", String ]
                ))
              | doc "Constant types to ignore when used as \"magic values\" (see `PLR2004`)."
              | optional,
            max-args
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Maximum number of arguments allowed for a function or method definition (see `PLR0913`)."
              | optional,
            max-bool-expr
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Maximum number of Boolean expressions allowed within a single `if` statement (see `PLR0916`)."
              | optional,
            max-branches
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Maximum number of branches allowed for a function or method body (see `PLR0912`)."
              | optional,
            max-locals
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Maximum number of local variables allowed for a function or method body (see `PLR0914`)."
              | optional,
            max-nested-blocks
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Maximum number of nested blocks allowed within a function or method body (see `PLR1702`)."
              | optional,
            max-positional-args
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc m%"
                Maximum number of positional arguments allowed for a function or method definition (see `PLR0917`).
                
                If not specified, defaults to the value of `max-args`.
              "%
              | optional,
            max-public-methods
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Maximum number of public methods allowed for a class (see `PLR0904`)."
              | optional,
            max-returns
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Maximum number of return statements allowed for a function or method body (see `PLR0911`)"
              | optional,
            max-statements
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Maximum number of statements allowed for a function or method body (see `PLR0915`)."
              | optional,
          },
      "definitions.PythonVersion" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'py314, 'py313, 'py312, 'py311, 'py310, 'py39, 'py38, 'py37 |]
            ],
      "definitions.Quote" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'double |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'single |] ]
            ],
      "definitions.QuoteStyle" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'preserve, 'double, 'single |] ],
      "definitions.RelativeImportsOrder" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'closest-to-furthest |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'furthest-to-closest |] ]
            ],
      "definitions.RequiredVersion" = String,
      "definitions.RuffOptions" =
        {
            allowed-markup-calls
              | js2n.Nullable (Array String)
              | doc m%"
                A list of callable names, whose result may be safely passed into [`markupsafe.Markup`](https://markupsafe.palletsprojects.com/en/stable/escaping/#markupsafe.Markup).
                
                Expects to receive a list of fully-qualified names (e.g., `bleach.clean`, rather than `clean`).
                
                This setting helps you avoid false positives in code like:
                
                ```python from bleach import clean from markupsafe import Markup
                
                cleaned_markup = Markup(clean(some_user_input)) ```
                
                Where the use of [`bleach.clean`](https://bleach.readthedocs.io/en/latest/clean.html) usually ensures that there's no XSS vulnerability.
                
                Although it is not recommended, you may also use this setting to whitelist other kinds of calls, e.g. calls to i18n translation functions, where how safe that is will depend on the implementation and how well the translations are audited.
                
                Another common use-case is to wrap the output of functions that generate markup like [`xml.etree.ElementTree.tostring`](https://docs.python.org/3/library/xml.etree.elementtree.html#xml.etree.ElementTree.tostring) or template rendering engines where sanitization of potential user input is either already baked in or has to happen before rendering.
              "%
              | optional,
            extend-markup-names
              | js2n.Nullable (Array String)
              | doc m%"
                A list of additional callable names that behave like [`markupsafe.Markup`](https://markupsafe.palletsprojects.com/en/stable/escaping/#markupsafe.Markup).
                
                Expects to receive a list of fully-qualified names (e.g., `webhelpers.html.literal`, rather than `literal`).
              "%
              | optional,
            parenthesize-tuple-in-subscript
              | js2n.Nullable Bool
              | doc "Whether to prefer accessing items keyed by tuples with parentheses around the tuple (see `RUF031`)."
              | optional,
          },
      "definitions.RuleSelector" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'YTT303,
                'YTT302,
                'YTT301,
                'YTT30,
                'YTT3,
                'YTT204,
                'YTT203,
                'YTT202,
                'YTT201,
                'YTT20,
                'YTT2,
                'YTT103,
                'YTT102,
                'YTT101,
                'YTT10,
                'YTT1,
                'YTT,
                'W605,
                'W60,
                'W6,
                'W505,
                'W50,
                'W5,
                'W391,
                'W39,
                'W3,
                'W293,
                'W292,
                'W291,
                'W29,
                'W2,
                'W191,
                'W19,
                'W1,
                'W,
                'UP050,
                'UP05,
                'UP049,
                'UP047,
                'UP046,
                'UP045,
                'UP044,
                'UP043,
                'UP042,
                'UP041,
                'UP040,
                'UP04,
                'UP039,
                'UP038,
                'UP037,
                'UP036,
                'UP035,
                'UP034,
                'UP033,
                'UP032,
                'UP031,
                'UP030,
                'UP03,
                'UP029,
                'UP028,
                'UP026,
                'UP025,
                'UP024,
                'UP023,
                'UP022,
                'UP021,
                'UP020,
                'UP02,
                'UP019,
                'UP018,
                'UP017,
                'UP015,
                'UP014,
                'UP013,
                'UP012,
                'UP011,
                'UP010,
                'UP01,
                'UP009,
                'UP008,
                'UP007,
                'UP006,
                'UP005,
                'UP004,
                'UP003,
                'UP001,
                'UP00,
                'UP0,
                'UP,
                'TRY401,
                'TRY400,
                'TRY40,
                'TRY4,
                'TRY301,
                'TRY300,
                'TRY30,
                'TRY3,
                'TRY203,
                'TRY201,
                'TRY20,
                'TRY2,
                'TRY004,
                'TRY003,
                'TRY002,
                'TRY00,
                'TRY0,
                'TRY,
                'TID253,
                'TID252,
                'TID251,
                'TID25,
                'TID2,
                'TID,
                'TD007,
                'TD006,
                'TD005,
                'TD004,
                'TD003,
                'TD002,
                'TD001,
                'TD00,
                'TD0,
                'TD,
                'TC010,
                'TC01,
                'TC008,
                'TC007,
                'TC006,
                'TC005,
                'TC004,
                'TC003,
                'TC002,
                'TC001,
                'TC00,
                'TC0,
                'TC,
                'T203,
                'T201,
                'T20,
                'T2,
                'T100,
                'T10,
                'T1,
                'T,
                'SLOT002,
                'SLOT001,
                'SLOT000,
                'SLOT00,
                'SLOT0,
                'SLOT,
                'SLF001,
                'SLF00,
                'SLF0,
                'SLF,
                'SIM911,
                'SIM910,
                'SIM91,
                'SIM905,
                'SIM90,
                'SIM9,
                'SIM401,
                'SIM40,
                'SIM4,
                'SIM300,
                'SIM30,
                'SIM3,
                'SIM223,
                'SIM222,
                'SIM221,
                'SIM220,
                'SIM22,
                'SIM212,
                'SIM211,
                'SIM210,
                'SIM21,
                'SIM208,
                'SIM202,
                'SIM201,
                'SIM20,
                'SIM2,
                'SIM118,
                'SIM117,
                'SIM116,
                'SIM115,
                'SIM114,
                'SIM113,
                'SIM112,
                'SIM110,
                'SIM11,
                'SIM109,
                'SIM108,
                'SIM107,
                'SIM105,
                'SIM103,
                'SIM102,
                'SIM101,
                'SIM10,
                'SIM1,
                'SIM,
                'S704,
                'S702,
                'S701,
                'S70,
                'S7,
                'S612,
                'S611,
                'S610,
                'S61,
                'S609,
                'S608,
                'S607,
                'S606,
                'S605,
                'S604,
                'S603,
                'S602,
                'S601,
                'S60,
                'S6,
                'S509,
                'S508,
                'S507,
                'S506,
                'S505,
                'S504,
                'S503,
                'S502,
                'S501,
                'S50,
                'S5,
                'S415,
                'S413,
                'S412,
                'S411,
                'S41,
                'S409,
                'S408,
                'S407,
                'S406,
                'S405,
                'S404,
                'S403,
                'S402,
                'S401,
                'S40,
                'S4,
                'S324,
                'S323,
                'S321,
                'S320,
                'S32,
                'S319,
                'S318,
                'S317,
                'S316,
                'S315,
                'S314,
                'S313,
                'S312,
                'S311,
                'S310,
                'S31,
                'S308,
                'S307,
                'S306,
                'S305,
                'S304,
                'S303,
                'S302,
                'S301,
                'S30,
                'S3,
                'S202,
                'S201,
                'S20,
                'S2,
                'S113,
                'S112,
                'S110,
                'S11,
                'S108,
                'S107,
                'S106,
                'S105,
                'S104,
                'S103,
                'S102,
                'S101,
                'S10,
                'S1,
                'S,
                'RUF200,
                'RUF20,
                'RUF2,
                'RUF102,
                'RUF101,
                'RUF100,
                'RUF10,
                'RUF1,
                'RUF060,
                'RUF06,
                'RUF059,
                'RUF058,
                'RUF057,
                'RUF056,
                'RUF055,
                'RUF054,
                'RUF053,
                'RUF052,
                'RUF051,
                'RUF05,
                'RUF049,
                'RUF048,
                'RUF047,
                'RUF046,
                'RUF045,
                'RUF043,
                'RUF041,
                'RUF040,
                'RUF04,
                'RUF039,
                'RUF038,
                'RUF037,
                'RUF036,
                'RUF034,
                'RUF033,
                'RUF032,
                'RUF031,
                'RUF030,
                'RUF03,
                'RUF029,
                'RUF028,
                'RUF027,
                'RUF026,
                'RUF024,
                'RUF023,
                'RUF022,
                'RUF021,
                'RUF020,
                'RUF02,
                'RUF019,
                'RUF018,
                'RUF017,
                'RUF016,
                'RUF015,
                'RUF013,
                'RUF012,
                'RUF010,
                'RUF01,
                'RUF009,
                'RUF008,
                'RUF007,
                'RUF006,
                'RUF005,
                'RUF003,
                'RUF002,
                'RUF001,
                'RUF00,
                'RUF0,
                'RUF,
                'RSE102,
                'RSE10,
                'RSE1,
                'RSE,
                'RET508,
                'RET507,
                'RET506,
                'RET505,
                'RET504,
                'RET503,
                'RET502,
                'RET501,
                'RET50,
                'RET5,
                'RET,
                'Q004,
                'Q003,
                'Q002,
                'Q001,
                'Q000,
                'Q00,
                'Q0,
                'Q,
                'PYI066,
                'PYI064,
                'PYI063,
                'PYI062,
                'PYI061,
                'PYI06,
                'PYI059,
                'PYI058,
                'PYI057,
                'PYI056,
                'PYI055,
                'PYI054,
                'PYI053,
                'PYI052,
                'PYI051,
                'PYI050,
                'PYI05,
                'PYI049,
                'PYI048,
                'PYI047,
                'PYI046,
                'PYI045,
                'PYI044,
                'PYI043,
                'PYI042,
                'PYI041,
                'PYI04,
                'PYI036,
                'PYI035,
                'PYI034,
                'PYI033,
                'PYI032,
                'PYI030,
                'PYI03,
                'PYI029,
                'PYI026,
                'PYI025,
                'PYI024,
                'PYI021,
                'PYI020,
                'PYI02,
                'PYI019,
                'PYI018,
                'PYI017,
                'PYI016,
                'PYI015,
                'PYI014,
                'PYI013,
                'PYI012,
                'PYI011,
                'PYI010,
                'PYI01,
                'PYI009,
                'PYI008,
                'PYI007,
                'PYI006,
                'PYI005,
                'PYI004,
                'PYI003,
                'PYI002,
                'PYI001,
                'PYI00,
                'PYI0,
                'PYI,
                'PTH211,
                'PTH210,
                'PTH21,
                'PTH208,
                'PTH207,
                'PTH206,
                'PTH205,
                'PTH204,
                'PTH203,
                'PTH202,
                'PTH201,
                'PTH20,
                'PTH2,
                'PTH124,
                'PTH123,
                'PTH122,
                'PTH121,
                'PTH120,
                'PTH12,
                'PTH119,
                'PTH118,
                'PTH117,
                'PTH116,
                'PTH115,
                'PTH114,
                'PTH113,
                'PTH112,
                'PTH111,
                'PTH110,
                'PTH11,
                'PTH109,
                'PTH108,
                'PTH107,
                'PTH106,
                'PTH105,
                'PTH104,
                'PTH103,
                'PTH102,
                'PTH101,
                'PTH100,
                'PTH10,
                'PTH1,
                'PTH,
                'PT031,
                'PT030,
                'PT03,
                'PT029,
                'PT028,
                'PT027,
                'PT026,
                'PT025,
                'PT024,
                'PT023,
                'PT022,
                'PT021,
                'PT020,
                'PT02,
                'PT019,
                'PT018,
                'PT017,
                'PT016,
                'PT015,
                'PT014,
                'PT013,
                'PT012,
                'PT011,
                'PT010,
                'PT01,
                'PT009,
                'PT008,
                'PT007,
                'PT006,
                'PT003,
                'PT002,
                'PT001,
                'PT00,
                'PT0,
                'PT,
                'PLW3301,
                'PLW330,
                'PLW33,
                'PLW3201,
                'PLW320,
                'PLW32,
                'PLW3,
                'PLW2901,
                'PLW290,
                'PLW29,
                'PLW2101,
                'PLW210,
                'PLW21,
                'PLW2,
                'PLW1641,
                'PLW164,
                'PLW16,
                'PLW1514,
                'PLW1510,
                'PLW151,
                'PLW1509,
                'PLW1508,
                'PLW1507,
                'PLW1501,
                'PLW150,
                'PLW15,
                'PLW1,
                'PLW0711,
                'PLW071,
                'PLW07,
                'PLW0642,
                'PLW064,
                'PLW0604,
                'PLW0603,
                'PLW0602,
                'PLW060,
                'PLW06,
                'PLW0406,
                'PLW040,
                'PLW04,
                'PLW0245,
                'PLW0244,
                'PLW024,
                'PLW0211,
                'PLW021,
                'PLW02,
                'PLW0177,
                'PLW017,
                'PLW0133,
                'PLW0131,
                'PLW013,
                'PLW0129,
                'PLW0128,
                'PLW0127,
                'PLW0120,
                'PLW012,
                'PLW0108,
                'PLW010,
                'PLW01,
                'PLW0,
                'PLW,
                'PLR6301,
                'PLR630,
                'PLR63,
                'PLR6201,
                'PLR620,
                'PLR62,
                'PLR6104,
                'PLR610,
                'PLR61,
                'PLR6,
                'PLR5501,
                'PLR550,
                'PLR55,
                'PLR5,
                'PLR2044,
                'PLR204,
                'PLR2004,
                'PLR200,
                'PLR20,
                'PLR2,
                'PLR1736,
                'PLR1733,
                'PLR1730,
                'PLR173,
                'PLR1722,
                'PLR172,
                'PLR1716,
                'PLR1714,
                'PLR1711,
                'PLR171,
                'PLR1704,
                'PLR1702,
                'PLR170,
                'PLR17,
                'PLR1,
                'PLR0917,
                'PLR0916,
                'PLR0915,
                'PLR0914,
                'PLR0913,
                'PLR0912,
                'PLR0911,
                'PLR091,
                'PLR0904,
                'PLR090,
                'PLR09,
                'PLR0402,
                'PLR040,
                'PLR04,
                'PLR0206,
                'PLR0203,
                'PLR0202,
                'PLR020,
                'PLR02,
                'PLR0133,
                'PLR013,
                'PLR0124,
                'PLR012,
                'PLR01,
                'PLR0,
                'PLR,
                'PLE4703,
                'PLE470,
                'PLE47,
                'PLE4,
                'PLE2515,
                'PLE2514,
                'PLE2513,
                'PLE2512,
                'PLE2510,
                'PLE251,
                'PLE2502,
                'PLE250,
                'PLE25,
                'PLE2,
                'PLE1700,
                'PLE170,
                'PLE17,
                'PLE1520,
                'PLE152,
                'PLE1519,
                'PLE151,
                'PLE1507,
                'PLE150,
                'PLE15,
                'PLE1310,
                'PLE131,
                'PLE1307,
                'PLE1300,
                'PLE130,
                'PLE13,
                'PLE1206,
                'PLE1205,
                'PLE120,
                'PLE12,
                'PLE1142,
                'PLE1141,
                'PLE114,
                'PLE1132,
                'PLE113,
                'PLE11,
                'PLE1,
                'PLE0704,
                'PLE070,
                'PLE07,
                'PLE0643,
                'PLE064,
                'PLE0605,
                'PLE0604,
                'PLE060,
                'PLE06,
                'PLE0309,
                'PLE0308,
                'PLE0307,
                'PLE0305,
                'PLE0304,
                'PLE0303,
                'PLE0302,
                'PLE030,
                'PLE03,
                'PLE0241,
                'PLE024,
                'PLE0237,
                'PLE023,
                'PLE02,
                'PLE0118,
                'PLE0117,
                'PLE0116,
                'PLE0115,
                'PLE011,
                'PLE0101,
                'PLE0100,
                'PLE010,
                'PLE01,
                'PLE0,
                'PLE,
                'PLC3002,
                'PLC300,
                'PLC30,
                'PLC3,
                'PLC2801,
                'PLC280,
                'PLC28,
                'PLC2701,
                'PLC270,
                'PLC27,
                'PLC2403,
                'PLC2401,
                'PLC240,
                'PLC24,
                'PLC2,
                'PLC1901,
                'PLC190,
                'PLC19,
                'PLC1802,
                'PLC180,
                'PLC18,
                'PLC1,
                'PLC0415,
                'PLC0414,
                'PLC041,
                'PLC04,
                'PLC0208,
                'PLC0207,
                'PLC0206,
                'PLC0205,
                'PLC020,
                'PLC02,
                'PLC0132,
                'PLC0131,
                'PLC013,
                'PLC0105,
                'PLC010,
                'PLC01,
                'PLC0,
                'PLC,
                'PL,
                'PIE810,
                'PIE81,
                'PIE808,
                'PIE807,
                'PIE804,
                'PIE800,
                'PIE80,
                'PIE8,
                'PIE796,
                'PIE794,
                'PIE790,
                'PIE79,
                'PIE7,
                'PIE,
                'PGH005,
                'PGH004,
                'PGH003,
                'PGH00,
                'PGH0,
                'PGH,
                'PERF403,
                'PERF402,
                'PERF401,
                'PERF40,
                'PERF4,
                'PERF203,
                'PERF20,
                'PERF2,
                'PERF102,
                'PERF101,
                'PERF10,
                'PERF1,
                'PERF,
                'PD901,
                'PD90,
                'PD9,
                'PD101,
                'PD10,
                'PD1,
                'PD015,
                'PD013,
                'PD012,
                'PD011,
                'PD010,
                'PD01,
                'PD009,
                'PD008,
                'PD007,
                'PD004,
                'PD003,
                'PD002,
                'PD00,
                'PD0,
                'PD,
                'NPY201,
                'NPY20,
                'NPY2,
                'NPY003,
                'NPY002,
                'NPY001,
                'NPY00,
                'NPY0,
                'NPY,
                'N999,
                'N99,
                'N9,
                'N818,
                'N817,
                'N816,
                'N815,
                'N814,
                'N813,
                'N812,
                'N811,
                'N81,
                'N807,
                'N806,
                'N805,
                'N804,
                'N803,
                'N802,
                'N801,
                'N80,
                'N8,
                'N,
                'LOG015,
                'LOG014,
                'LOG01,
                'LOG009,
                'LOG007,
                'LOG004,
                'LOG002,
                'LOG001,
                'LOG00,
                'LOG0,
                'LOG,
                'ISC003,
                'ISC002,
                'ISC001,
                'ISC00,
                'ISC0,
                'ISC,
                'INT003,
                'INT002,
                'INT001,
                'INT00,
                'INT0,
                'INT,
                'INP001,
                'INP00,
                'INP0,
                'INP,
                'ICN003,
                'ICN002,
                'ICN001,
                'ICN00,
                'ICN0,
                'ICN,
                'I002,
                'I001,
                'I00,
                'I0,
                'I,
                'G202,
                'G201,
                'G20,
                'G2,
                'G101,
                'G10,
                'G1,
                'G010,
                'G01,
                'G004,
                'G003,
                'G002,
                'G001,
                'G00,
                'G0,
                'G,
                'FURB192,
                'FURB19,
                'FURB189,
                'FURB188,
                'FURB187,
                'FURB181,
                'FURB180,
                'FURB18,
                'FURB177,
                'FURB171,
                'FURB17,
                'FURB169,
                'FURB168,
                'FURB167,
                'FURB166,
                'FURB164,
                'FURB163,
                'FURB162,
                'FURB161,
                'FURB16,
                'FURB157,
                'FURB156,
                'FURB154,
                'FURB152,
                'FURB15,
                'FURB148,
                'FURB145,
                'FURB142,
                'FURB140,
                'FURB14,
                'FURB136,
                'FURB132,
                'FURB131,
                'FURB13,
                'FURB129,
                'FURB122,
                'FURB12,
                'FURB118,
                'FURB116,
                'FURB113,
                'FURB110,
                'FURB11,
                'FURB105,
                'FURB103,
                'FURB101,
                'FURB10,
                'FURB1,
                'FURB,
                'FLY002,
                'FLY00,
                'FLY0,
                'FLY,
                'FIX004,
                'FIX003,
                'FIX002,
                'FIX001,
                'FIX00,
                'FIX0,
                'FIX,
                'FBT003,
                'FBT002,
                'FBT001,
                'FBT00,
                'FBT0,
                'FBT,
                'FAST003,
                'FAST002,
                'FAST001,
                'FAST00,
                'FAST0,
                'FAST,
                'FA102,
                'FA100,
                'FA10,
                'FA1,
                'FA,
                'F901,
                'F90,
                'F9,
                'F842,
                'F841,
                'F84,
                'F823,
                'F822,
                'F821,
                'F82,
                'F811,
                'F81,
                'F8,
                'F722,
                'F72,
                'F707,
                'F706,
                'F704,
                'F702,
                'F701,
                'F70,
                'F7,
                'F634,
                'F633,
                'F632,
                'F631,
                'F63,
                'F622,
                'F621,
                'F62,
                'F602,
                'F601,
                'F60,
                'F6,
                'F541,
                'F54,
                'F525,
                'F524,
                'F523,
                'F522,
                'F521,
                'F52,
                'F509,
                'F508,
                'F507,
                'F506,
                'F505,
                'F504,
                'F503,
                'F502,
                'F501,
                'F50,
                'F5,
                'F407,
                'F406,
                'F405,
                'F404,
                'F403,
                'F402,
                'F401,
                'F40,
                'F4,
                'F,
                'EXE005,
                'EXE004,
                'EXE003,
                'EXE002,
                'EXE001,
                'EXE00,
                'EXE0,
                'EXE,
                'ERA001,
                'ERA00,
                'ERA0,
                'ERA,
                'EM103,
                'EM102,
                'EM101,
                'EM10,
                'EM1,
                'EM,
                'E902,
                'E90,
                'E9,
                'E743,
                'E742,
                'E741,
                'E74,
                'E731,
                'E73,
                'E722,
                'E721,
                'E72,
                'E714,
                'E713,
                'E712,
                'E711,
                'E71,
                'E703,
                'E702,
                'E701,
                'E70,
                'E7,
                'E502,
                'E501,
                'E50,
                'E5,
                'E402,
                'E401,
                'E40,
                'E4,
                'E306,
                'E305,
                'E304,
                'E303,
                'E302,
                'E301,
                'E30,
                'E3,
                'E275,
                'E274,
                'E273,
                'E272,
                'E271,
                'E27,
                'E266,
                'E265,
                'E262,
                'E261,
                'E26,
                'E252,
                'E251,
                'E25,
                'E242,
                'E241,
                'E24,
                'E231,
                'E23,
                'E228,
                'E227,
                'E226,
                'E225,
                'E224,
                'E223,
                'E222,
                'E221,
                'E22,
                'E211,
                'E21,
                'E204,
                'E203,
                'E202,
                'E201,
                'E20,
                'E2,
                'E117,
                'E116,
                'E115,
                'E114,
                'E113,
                'E112,
                'E111,
                'E11,
                'E101,
                'E10,
                'E1,
                'E,
                'DTZ901,
                'DTZ90,
                'DTZ9,
                'DTZ012,
                'DTZ011,
                'DTZ01,
                'DTZ007,
                'DTZ006,
                'DTZ005,
                'DTZ004,
                'DTZ003,
                'DTZ002,
                'DTZ001,
                'DTZ00,
                'DTZ0,
                'DTZ,
                'DOC502,
                'DOC501,
                'DOC50,
                'DOC5,
                'DOC403,
                'DOC402,
                'DOC40,
                'DOC4,
                'DOC202,
                'DOC201,
                'DOC20,
                'DOC2,
                'DOC,
                'DJ013,
                'DJ012,
                'DJ01,
                'DJ008,
                'DJ007,
                'DJ006,
                'DJ003,
                'DJ001,
                'DJ00,
                'DJ0,
                'DJ,
                'D419,
                'D418,
                'D417,
                'D416,
                'D415,
                'D414,
                'D413,
                'D412,
                'D411,
                'D410,
                'D41,
                'D409,
                'D408,
                'D407,
                'D406,
                'D405,
                'D404,
                'D403,
                'D402,
                'D401,
                'D400,
                'D40,
                'D4,
                'D301,
                'D300,
                'D30,
                'D3,
                'D215,
                'D214,
                'D213,
                'D212,
                'D211,
                'D210,
                'D21,
                'D209,
                'D208,
                'D207,
                'D206,
                'D205,
                'D204,
                'D203,
                'D202,
                'D201,
                'D200,
                'D20,
                'D2,
                'D107,
                'D106,
                'D105,
                'D104,
                'D103,
                'D102,
                'D101,
                'D100,
                'D10,
                'D1,
                'D,
                'CPY001,
                'CPY00,
                'CPY0,
                'CPY,
                'COM819,
                'COM818,
                'COM812,
                'COM81,
                'COM8,
                'COM,
                'C901,
                'C90,
                'C9,
                'C420,
                'C42,
                'C419,
                'C418,
                'C417,
                'C416,
                'C415,
                'C414,
                'C413,
                'C411,
                'C410,
                'C41,
                'C409,
                'C408,
                'C406,
                'C405,
                'C404,
                'C403,
                'C402,
                'C401,
                'C400,
                'C40,
                'C4,
                'C,
                'BLE001,
                'BLE00,
                'BLE0,
                'BLE,
                'B911,
                'B91,
                'B909,
                'B905,
                'B904,
                'B903,
                'B901,
                'B90,
                'B9,
                'B039,
                'B035,
                'B034,
                'B033,
                'B032,
                'B031,
                'B030,
                'B03,
                'B029,
                'B028,
                'B027,
                'B026,
                'B025,
                'B024,
                'B023,
                'B022,
                'B021,
                'B020,
                'B02,
                'B019,
                'B018,
                'B017,
                'B016,
                'B015,
                'B014,
                'B013,
                'B012,
                'B011,
                'B010,
                'B01,
                'B009,
                'B008,
                'B007,
                'B006,
                'B005,
                'B004,
                'B003,
                'B002,
                'B00,
                'B0,
                'B,
                'ASYNC251,
                'ASYNC25,
                'ASYNC230,
                'ASYNC23,
                'ASYNC222,
                'ASYNC221,
                'ASYNC220,
                'ASYNC22,
                'ASYNC210,
                'ASYNC21,
                'ASYNC2,
                'ASYNC116,
                'ASYNC115,
                'ASYNC110,
                'ASYNC11,
                'ASYNC109,
                'ASYNC105,
                'ASYNC100,
                'ASYNC10,
                'ASYNC1,
                'ASYNC,
                'ARG005,
                'ARG004,
                'ARG003,
                'ARG002,
                'ARG001,
                'ARG00,
                'ARG0,
                'ARG,
                'ANN401,
                'ANN40,
                'ANN4,
                'ANN206,
                'ANN205,
                'ANN204,
                'ANN202,
                'ANN201,
                'ANN20,
                'ANN2,
                'ANN003,
                'ANN002,
                'ANN001,
                'ANN00,
                'ANN0,
                'ANN,
                'ALL,
                'AIR312,
                'AIR311,
                'AIR31,
                'AIR302,
                'AIR301,
                'AIR30,
                'AIR3,
                'AIR002,
                'AIR001,
                'AIR00,
                'AIR0,
                'AIR,
                'A006,
                'A005,
                'A004,
                'A003,
                'A002,
                'A001,
                'A00,
                'A0,
                'A
              |]
            ],
      "definitions.Strictness" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'parents |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'all |] ]
            ],
    }
    in
  {
      allowed-confusables
        | js2n.Nullable
          (Array (
            std.contract.Sequence
              [ js2n.string.MaxLength 1, js2n.string.MinLength 1 ]
          ))
        | doc "A list of allowed \"confusable\" Unicode characters to ignore when enforcing `RUF001`, `RUF002`, and `RUF003`."
        | optional,
      analyze
        | js2n.Nullable refs."definitions.AnalyzeOptions"
        | doc "Options to configure import map generation."
        | optional,
      builtins
        | js2n.Nullable (Array String)
        | doc "A list of builtins to treat as defined references, in addition to the system builtins."
        | optional,
      cache-dir
        | js2n.Nullable String
        | doc m%"
          A path to the cache directory.
          
          By default, Ruff stores cache results in a `.ruff_cache` directory in the current project root.
          
          However, Ruff will also respect the `RUFF_CACHE_DIR` environment variable, which takes precedence over that default.
          
          This setting will override even the `RUFF_CACHE_DIR` environment variable, if set.
        "%
        | optional,
      dummy-variable-rgx
        | js2n.Nullable String
        | doc "A regular expression used to identify \"dummy\" variables, or those which should be ignored when enforcing (e.g.) unused-variable rules. The default expression matches `_`, `__`, and `_var`, but not `_var_`."
        | optional,
      exclude
        | js2n.Nullable (Array String)
        | doc m%"
          A list of file patterns to exclude from formatting and linting.
          
          Exclusions are based on globs, and can be either:
          
          - Single-path patterns, like `.mypy_cache` (to exclude any directory named `.mypy_cache` in the tree), `foo.py` (to exclude any file named `foo.py`), or `foo_*.py` (to exclude any file matching `foo_*.py` ). - Relative patterns, like `directory/foo.py` (to exclude that specific file) or `directory/*.py` (to exclude any Python files in `directory`). Note that these paths are relative to the project root (e.g., the directory containing your `pyproject.toml`).
          
          For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
          
          Note that you'll typically want to use [`extend-exclude`](#extend-exclude) to modify the excluded paths.
        "%
        | optional,
      explicit-preview-rules
        | js2n.Nullable Bool
        | doc "Whether to require exact codes to select preview rules. When enabled, preview rules will not be selected by prefixes — the full code of each preview rule will be required to enable the rule."
        | optional,
      extend
        | js2n.Nullable String
        | doc m%"
          A path to a local `pyproject.toml` file to merge into this configuration. User home directory and environment variables will be expanded.
          
          To resolve the current `pyproject.toml` file, Ruff will first resolve this base configuration file, then merge in any properties defined in the current configuration file.
        "%
        | optional,
      extend-exclude
        | js2n.Nullable (Array String)
        | doc m%"
          A list of file patterns to omit from formatting and linting, in addition to those specified by [`exclude`](#exclude).
          
          Exclusions are based on globs, and can be either:
          
          - Single-path patterns, like `.mypy_cache` (to exclude any directory named `.mypy_cache` in the tree), `foo.py` (to exclude any file named `foo.py`), or `foo_*.py` (to exclude any file matching `foo_*.py` ). - Relative patterns, like `directory/foo.py` (to exclude that specific file) or `directory/*.py` (to exclude any Python files in `directory`). Note that these paths are relative to the project root (e.g., the directory containing your `pyproject.toml`).
          
          For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
        "%
        | optional,
      extend-fixable
        | js2n.Nullable (Array refs."definitions.RuleSelector")
        | doc "A list of rule codes or prefixes to consider fixable, in addition to those specified by [`fixable`](#lint_fixable)."
        | optional,
      extend-ignore
        | js2n.Nullable (Array refs."definitions.RuleSelector")
        | doc "A list of rule codes or prefixes to ignore, in addition to those specified by `ignore`."
        | optional,
      extend-include
        | js2n.Nullable (Array String)
        | doc m%"
          A list of file patterns to include when linting, in addition to those specified by [`include`](#include).
          
          Inclusion are based on globs, and should be single-path patterns, like `*.pyw`, to include any file with the `.pyw` extension.
          
          For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
        "%
        | optional,
      extend-per-file-ignores
        | js2n.Nullable ({ _ | Array refs."definitions.RuleSelector" })
        | doc "A list of mappings from file pattern to rule codes or prefixes to exclude, in addition to any rules excluded by [`per-file-ignores`](#lint_per-file-ignores)."
        | optional,
      extend-safe-fixes
        | js2n.Nullable (Array refs."definitions.RuleSelector")
        | doc "A list of rule codes or prefixes for which unsafe fixes should be considered safe."
        | optional,
      extend-select
        | js2n.Nullable (Array refs."definitions.RuleSelector")
        | doc "A list of rule codes or prefixes to enable, in addition to those specified by [`select`](#lint_select)."
        | optional,
      extend-unfixable
        | js2n.Nullable (Array refs."definitions.RuleSelector")
        | doc "A list of rule codes or prefixes to consider non-auto-fixable, in addition to those specified by [`unfixable`](#lint_unfixable)."
        | optional,
      extend-unsafe-fixes
        | js2n.Nullable (Array refs."definitions.RuleSelector")
        | doc "A list of rule codes or prefixes for which safe fixes should be considered unsafe."
        | optional,
      external
        | js2n.Nullable (Array String)
        | doc "A list of rule codes or prefixes that are unsupported by Ruff, but should be preserved when (e.g.) validating `# noqa` directives. Useful for retaining `# noqa` directives that cover plugins not yet implemented by Ruff."
        | optional,
      fix
        | js2n.Nullable Bool
        | doc "Enable fix behavior by-default when running `ruff` (overridden by the `--fix` and `--no-fix` command-line flags). Only includes automatic fixes unless `--unsafe-fixes` is provided."
        | optional,
      fix-only
        | js2n.Nullable Bool
        | doc "Like [`fix`](#fix), but disables reporting on leftover violation. Implies [`fix`](#fix)."
        | optional,
      fixable
        | js2n.Nullable (Array refs."definitions.RuleSelector")
        | doc "A list of rule codes or prefixes to consider fixable. By default, all rules are considered fixable."
        | optional,
      flake8-annotations
        | js2n.Nullable refs."definitions.Flake8AnnotationsOptions"
        | doc "Options for the `flake8-annotations` plugin."
        | optional,
      flake8-bandit
        | js2n.Nullable refs."definitions.Flake8BanditOptions"
        | doc "Options for the `flake8-bandit` plugin."
        | optional,
      flake8-boolean-trap
        | js2n.Nullable refs."definitions.Flake8BooleanTrapOptions"
        | doc "Options for the `flake8-boolean-trap` plugin."
        | optional,
      flake8-bugbear
        | js2n.Nullable refs."definitions.Flake8BugbearOptions"
        | doc "Options for the `flake8-bugbear` plugin."
        | optional,
      flake8-builtins
        | js2n.Nullable refs."definitions.Flake8BuiltinsOptions"
        | doc "Options for the `flake8-builtins` plugin."
        | optional,
      flake8-comprehensions
        | js2n.Nullable refs."definitions.Flake8ComprehensionsOptions"
        | doc "Options for the `flake8-comprehensions` plugin."
        | optional,
      flake8-copyright
        | js2n.Nullable refs."definitions.Flake8CopyrightOptions"
        | doc "Options for the `flake8-copyright` plugin."
        | optional,
      flake8-errmsg
        | js2n.Nullable refs."definitions.Flake8ErrMsgOptions"
        | doc "Options for the `flake8-errmsg` plugin."
        | optional,
      flake8-gettext
        | js2n.Nullable refs."definitions.Flake8GetTextOptions"
        | doc "Options for the `flake8-gettext` plugin."
        | optional,
      flake8-implicit-str-concat
        | js2n.Nullable refs."definitions.Flake8ImplicitStrConcatOptions"
        | doc "Options for the `flake8-implicit-str-concat` plugin."
        | optional,
      flake8-import-conventions
        | js2n.Nullable refs."definitions.Flake8ImportConventionsOptions"
        | doc "Options for the `flake8-import-conventions` plugin."
        | optional,
      flake8-pytest-style
        | js2n.Nullable refs."definitions.Flake8PytestStyleOptions"
        | doc "Options for the `flake8-pytest-style` plugin."
        | optional,
      flake8-quotes
        | js2n.Nullable refs."definitions.Flake8QuotesOptions"
        | doc "Options for the `flake8-quotes` plugin."
        | optional,
      flake8-self
        | js2n.Nullable refs."definitions.Flake8SelfOptions"
        | doc "Options for the `flake8_self` plugin."
        | optional,
      flake8-tidy-imports
        | js2n.Nullable refs."definitions.Flake8TidyImportsOptions"
        | doc "Options for the `flake8-tidy-imports` plugin."
        | optional,
      flake8-type-checking
        | js2n.Nullable refs."definitions.Flake8TypeCheckingOptions"
        | doc "Options for the `flake8-type-checking` plugin."
        | optional,
      flake8-unused-arguments
        | js2n.Nullable refs."definitions.Flake8UnusedArgumentsOptions"
        | doc "Options for the `flake8-unused-arguments` plugin."
        | optional,
      force-exclude
        | js2n.Nullable Bool
        | doc m%"
          Whether to enforce [`exclude`](#exclude) and [`extend-exclude`](#extend-exclude) patterns, even for paths that are passed to Ruff explicitly. Typically, Ruff will lint any paths passed in directly, even if they would typically be excluded. Setting `force-exclude = true` will cause Ruff to respect these exclusions unequivocally.
          
          This is useful for [`pre-commit`](https://pre-commit.com/), which explicitly passes all changed files to the [`ruff-pre-commit`](https://github.com/astral-sh/ruff-pre-commit) plugin, regardless of whether they're marked as excluded by Ruff's own settings.
        "%
        | optional,
      format
        | js2n.Nullable refs."definitions.FormatOptions"
        | doc "Options to configure code formatting."
        | optional,
      ignore
        | js2n.Nullable (Array refs."definitions.RuleSelector")
        | doc m%"
          A list of rule codes or prefixes to ignore. Prefixes can specify exact rules (like `F841`), entire categories (like `F`), or anything in between.
          
          When breaking ties between enabled and disabled rules (via `select` and `ignore`, respectively), more specific prefixes override less specific prefixes. `ignore` takes precedence over `select` if the same prefix appears in both.
        "%
        | optional,
      ignore-init-module-imports
        | js2n.Nullable Bool
        | doc m%"
          Avoid automatically removing unused imports in `__init__.py` files. Such imports will still be flagged, but with a dedicated message suggesting that the import is either added to the module's `__all__` symbol, or re-exported with a redundant alias (e.g., `import os as os`).
          
          This option is enabled by default, but you can opt-in to removal of imports via an unsafe fix.
        "%
        | optional,
      include
        | js2n.Nullable (Array String)
        | doc m%"
          A list of file patterns to include when linting.
          
          Inclusion are based on globs, and should be single-path patterns, like `*.pyw`, to include any file with the `.pyw` extension. `pyproject.toml` is included here not for configuration but because we lint whether e.g. the `[project]` matches the schema.
          
          Notebook files (`.ipynb` extension) are included by default on Ruff 0.6.0+.
          
          For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
        "%
        | optional,
      indent-width
        | js2n.Nullable
          (std.contract.Sequence [ refs."definitions.IndentWidth", Number ])
        | doc m%"
          The number of spaces per indentation level (tab).
          
          Used by the formatter and when enforcing long-line violations (like `E501`) to determine the visual width of a tab.
          
          This option changes the number of spaces the formatter inserts when using soft-tabs (`indent-style = space`).
          
          PEP 8 recommends using 4 spaces per [indentation level](https://peps.python.org/pep-0008/#indentation).
        "%
        | optional,
      isort
        | js2n.Nullable refs."definitions.IsortOptions"
        | doc "Options for the `isort` plugin."
        | optional,
      line-length
        | js2n.Nullable
          (std.contract.Sequence [ refs."definitions.LineLength", Number ])
        | doc m%"
          The line length to use when enforcing long-lines violations (like `E501`) and at which `isort` and the formatter prefers to wrap lines.
          
          The length is determined by the number of characters per line, except for lines containing East Asian characters or emojis. For these lines, the [unicode width](https://unicode.org/reports/tr11/) of each character is added up to determine the length.
          
          The value must be greater than `0` and less than or equal to `320`.
          
          Note: While the formatter will attempt to format lines such that they remain within the `line-length`, it isn't a hard upper bound, and formatted lines may exceed the `line-length`.
          
          See [`pycodestyle.max-line-length`](#lint_pycodestyle_max-line-length) to configure different lengths for `E501` and the formatter.
        "%
        | optional,
      lint | js2n.Nullable refs."definitions.LintOptions" | optional,
      logger-objects
        | js2n.Nullable (Array String)
        | doc m%"
          A list of objects that should be treated equivalently to a `logging.Logger` object.
          
          This is useful for ensuring proper diagnostics (e.g., to identify `logging` deprecations and other best-practices) for projects that re-export a `logging.Logger` object from a common module.
          
          For example, if you have a module `logging_setup.py` with the following contents: ```python import logging
          
          logger = logging.getLogger(__name__) ```
          
          Adding `"logging_setup.logger"` to `logger-objects` will ensure that `logging_setup.logger` is treated as a `logging.Logger` object when imported from other modules (e.g., `from logging_setup import logger`).
        "%
        | optional,
      mccabe
        | js2n.Nullable refs."definitions.McCabeOptions"
        | doc "Options for the `mccabe` plugin."
        | optional,
      namespace-packages
        | js2n.Nullable (Array String)
        | doc "Mark the specified directories as namespace packages. For the purpose of module resolution, Ruff will treat those directories and all their subdirectories as if they contained an `__init__.py` file."
        | optional,
      output-format
        | js2n.Nullable refs."definitions.OutputFormat"
        | doc "The style in which violation messages should be formatted: `\"full\"` (default) (shows source), `\"concise\"`, `\"grouped\"` (group messages by file), `\"json\"` (machine-readable), `\"junit\"` (machine-readable XML), `\"github\"` (GitHub Actions annotations), `\"gitlab\"` (GitLab CI code quality report), `\"pylint\"` (Pylint text format) or `\"azure\"` (Azure Pipeline logging commands)."
        | optional,
      pep8-naming
        | js2n.Nullable refs."definitions.Pep8NamingOptions"
        | doc "Options for the `pep8-naming` plugin."
        | optional,
      per-file-ignores
        | js2n.Nullable ({ _ | Array refs."definitions.RuleSelector" })
        | doc "A list of mappings from file pattern to rule codes or prefixes to exclude, when considering any matching files. An initial '!' negates the file pattern."
        | optional,
      per-file-target-version
        | js2n.Nullable ({ _ | refs."definitions.PythonVersion" })
        | doc m%"
          A list of mappings from glob-style file pattern to Python version to use when checking the corresponding file(s).
          
          This may be useful for overriding the global Python version settings in `target-version` or `requires-python` for a subset of files. For example, if you have a project with a minimum supported Python version of 3.9 but a subdirectory of developer scripts that want to use a newer feature like the `match` statement from Python 3.10, you can use `per-file-target-version` to specify `"developer_scripts/*.py" = "py310"`.
          
          This setting is used by the linter to enforce any enabled version-specific lint rules, as well as by the formatter for any version-specific formatting options, such as parenthesizing context managers on Python 3.10+.
        "%
        | optional,
      preview
        | js2n.Nullable Bool
        | doc "Whether to enable preview mode. When preview mode is enabled, Ruff will use unstable rules, fixes, and formatting."
        | optional,
      pycodestyle
        | js2n.Nullable refs."definitions.PycodestyleOptions"
        | doc "Options for the `pycodestyle` plugin."
        | optional,
      pydocstyle
        | js2n.Nullable refs."definitions.PydocstyleOptions"
        | doc "Options for the `pydocstyle` plugin."
        | optional,
      pyflakes
        | js2n.Nullable refs."definitions.PyflakesOptions"
        | doc "Options for the `pyflakes` plugin."
        | optional,
      pylint
        | js2n.Nullable refs."definitions.PylintOptions"
        | doc "Options for the `pylint` plugin."
        | optional,
      pyupgrade
        | js2n.Nullable refs."definitions.PyUpgradeOptions"
        | doc "Options for the `pyupgrade` plugin."
        | optional,
      required-version
        | js2n.Nullable refs."definitions.RequiredVersion"
        | doc m%"
          Enforce a requirement on the version of Ruff, to enforce at runtime. If the version of Ruff does not meet the requirement, Ruff will exit with an error.
          
          Useful for unifying results across many environments, e.g., with a `pyproject.toml` file.
          
          Accepts a [PEP 440](https://peps.python.org/pep-0440/) specifier, like `==0.3.1` or `>=0.3.1`.
        "%
        | optional,
      respect-gitignore
        | js2n.Nullable Bool
        | doc "Whether to automatically exclude files that are ignored by `.ignore`, `.gitignore`, `.git/info/exclude`, and global `gitignore` files. Enabled by default."
        | optional,
      select
        | js2n.Nullable (Array refs."definitions.RuleSelector")
        | doc m%"
          A list of rule codes or prefixes to enable. Prefixes can specify exact rules (like `F841`), entire categories (like `F`), or anything in between.
          
          When breaking ties between enabled and disabled rules (via `select` and `ignore`, respectively), more specific prefixes override less specific prefixes. `ignore` takes precedence over `select` if the same prefix appears in both.
        "%
        | optional,
      show-fixes
        | js2n.Nullable Bool
        | doc "Whether to show an enumeration of all fixed lint violations (overridden by the `--show-fixes` command-line flag)."
        | optional,
      src
        | js2n.Nullable (Array String)
        | doc m%"
          The directories to consider when resolving first- vs. third-party imports.
          
          When omitted, the `src` directory will typically default to including both:
          
          1. The directory containing the nearest `pyproject.toml`, `ruff.toml`, or `.ruff.toml` file (the "project root"). 2. The `"src"` subdirectory of the project root.
          
          These defaults ensure that Ruff supports both flat layouts and `src` layouts out-of-the-box. (If a configuration file is explicitly provided (e.g., via the `--config` command-line flag), the current working directory will be considered the project root.)
          
          As an example, consider an alternative project structure, like:
          
          ```text my_project ├── pyproject.toml └── lib └── my_package ├── __init__.py ├── foo.py └── bar.py ```
          
          In this case, the `./lib` directory should be included in the `src` option (e.g., `src = ["lib"]`), such that when resolving imports, `my_package.foo` is considered first-party.
          
          This field supports globs. For example, if you have a series of Python packages in a `python_modules` directory, `src = ["python_modules/*"]` would expand to incorporate all packages in that directory. User home directory and environment variables will also be expanded.
        "%
        | optional,
      target-version
        | js2n.Nullable refs."definitions.PythonVersion"
        | doc m%"
          The minimum Python version to target, e.g., when considering automatic code upgrades, like rewriting type annotations. Ruff will not propose changes using features that are not available in the given version.
          
          For example, to represent supporting Python >=3.10 or ==3.10 specify `target-version = "py310"`.
          
          If you're already using a `pyproject.toml` file, we recommend `project.requires-python` instead, as it's based on Python packaging standards, and will be respected by other tools. For example, Ruff treats the following as identical to `target-version = "py38"`:
          
          ```toml [project] requires-python = ">=3.8" ```
          
          If both are specified, `target-version` takes precedence over `requires-python`. See [_Inferring the Python version_](https://docs.astral.sh/ruff/configuration/#inferring-the-python-version) for a complete description of how the `target-version` is determined when left unspecified.
          
          Note that a stub file can [sometimes make use of a typing feature](https://typing.python.org/en/latest/spec/distributing.html#syntax) before it is available at runtime, as long as the stub does not make use of new *syntax*. For example, a type checker will understand `int | str` in a stub as being a `Union` type annotation, even if the type checker is run using Python 3.9, despite the fact that the `|` operator can only be used to create union types at runtime on Python 3.10+. As such, Ruff will often recommend newer features in a stub file than it would for an equivalent runtime file with the same target version.
        "%
        | optional,
      task-tags
        | js2n.Nullable (Array String)
        | doc m%"
          A list of task tags to recognize (e.g., "TODO", "FIXME", "XXX").
          
          Comments starting with these tags will be ignored by commented-out code detection (`ERA`), and skipped by line-length rules (`E501`) if [`ignore-overlong-task-comments`](#lint_pycodestyle_ignore-overlong-task-comments) is set to `true`.
        "%
        | optional,
      typing-modules
        | js2n.Nullable (Array String)
        | doc m%"
          A list of modules whose exports should be treated equivalently to members of the `typing` module.
          
          This is useful for ensuring proper type annotation inference for projects that re-export `typing` and `typing_extensions` members from a compatibility module. If omitted, any members imported from modules apart from `typing` and `typing_extensions` will be treated as ordinary Python objects.
        "%
        | optional,
      unfixable
        | js2n.Nullable (Array refs."definitions.RuleSelector")
        | doc "A list of rule codes or prefixes to consider non-fixable."
        | optional,
      unsafe-fixes
        | js2n.Nullable Bool
        | doc "Enable application of unsafe fixes. If excluded, a hint will be displayed when unsafe fixes are available. If set to false, the hint will be hidden."
        | optional,
    }