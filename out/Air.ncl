# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.FormatTomlOptions" =
        {
            default-exclude
              | js2n.Nullable Bool
              | doc m%"
                Air automatically excludes a default set of folders and files. If this option is set to `false`, these files will be formatted as well.
                
                The default set of excluded patterns are: - `.git/` - `renv/` - `revdep/` - `cpp11.R` - `RcppExports.R` - `extendr-wrappers.R` - `import-standalone-*.R`
              "%
              | optional,
            exclude
              | js2n.Nullable (Array String)
              | doc m%"
                By default, Air will refuse to format files matched by patterns listed in `default-exclude`. Use this option to supply an additional list of exclude patterns.
                
                Exclude patterns are modeled after what you can provide in a [.gitignore](https://git-scm.com/docs/gitignore), and are resolved relative to the parent directory that your `air.toml` is contained within. For example, if your `air.toml` was located at `root/air.toml`, then:
                
                - `file.R` excludes a file named `file.R` located anywhere below `root/`. This is equivalent to `**/file.R`.
                
                - `folder/` excludes a directory named `folder` (and all of its children) located anywhere below `root/`. You can also just use `folder`, but this would technically also match a file named `folder`, so the trailing slash is preferred when targeting directories. This is equivalent to `**/folder/`.
                
                - `/file.R` excludes a file named `file.R` located at `root/file.R`.
                
                - `/folder/` excludes a directory named `folder` (and all of its children) located at `root/folder/`.
                
                - `file-*.R` excludes R files named like `file-this.R` and `file-that.R` located anywhere below `root/`.
                
                - `folder/*.R` excludes all R files located at `root/folder/`. Note that R files in directories under `folder/` are not excluded in this case (such as `root/folder/subfolder/file.R`).
                
                - `folder/**/*.R` excludes all R files located anywhere below `root/folder/`.
                
                - `**/folder/*.R` excludes all R files located directly inside a `folder/` directory, where the `folder/` directory itself can /// appear anywhere.
                
                See the full [.gitignore](https://git-scm.com/docs/gitignore) documentation for all of the patterns you can provide.
              "%
              | optional,
            indent-style
              | js2n.Nullable refs."definitions.IndentStyle"
              | doc m%"
                Whether to use spaces or tabs for indentation.
                
                `indent-style = "space"` (default):
                
                ```r fn <- function() { cat("Hello") # Spaces indent the `cat()` call. } ```
                
                `indent-style = "tab"`:
                
                ```r fn <- function() { cat("Hello") # A tab `\t` indents the `cat()` call. } ```
                
                Air defaults to spaces due to the overwhelming amount of existing R code written in this style, but consider using tabs for new projects to improve accessibility.
                
                See `indent-width` to configure the number of spaces per indentation and the tab width.
              "%
              | optional,
            indent-width
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.IndentWidth", Number ])
              | doc m%"
                The number of spaces per indentation level (tab).
                
                The value must be greater than or equal to `1` and less than or equal to `24`. The default value is `2`.
                
                Used by the formatter to determine the visual width of a tab.
                
                This option changes the number of spaces the formatter inserts when using `indent-style = "space"`. It also represents the width of a tab when `indent-style = "tab"` for the purposes of computing the `line-width`.
              "%
              | optional,
            line-ending
              | js2n.Nullable refs."definitions.LineEnding"
              | doc m%"
                The character air uses at the end of a line.
                
                - `auto`: The newline style is detected automatically on a file per file basis. Files with mixed line endings will be converted to the first detected line ending. Defaults to `\n` for files that contain no line endings. - `lf`: Line endings will be converted to `\n`. The default line ending on Unix. - `crlf`: Line endings will be converted to `\r\n`. The default line ending on Windows. - `native`: Line endings will be converted to `\n` on Unix and `\r\n` on Windows.
              "%
              | optional,
            line-width
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.LineWidth", Number ])
              | doc m%"
                The line width at which the formatter prefers to wrap lines.
                
                The value must be greater than or equal to `1` and less than or equal to `320`.
                
                Note: While the formatter will attempt to format lines such that they remain within the `line-width`, it isn't a hard upper bound, and formatted lines may exceed the `line-width`.
              "%
              | optional,
            persistent-line-breaks
              | js2n.Nullable Bool
              | doc m%"
                Air respects a small set of persistent line breaks as an indication that certain function calls or function signatures should be left expanded. If this option is set to `false`, persistent line breaks are ignored.
                
                It may be preferable to ignore persistent line breaks if you prefer that `line-width` should be the only value that influences line breaks.
              "%
              | optional,
            skip
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.Skip", Array Dyn ])
              | doc m%"
                Air typically formats every function call it comes across. To skip formatting of a single one-off function call, you can use a `# fmt: skip` comment. However, if you know of particular functions that you use a lot that are part of a custom domain specific language that doesn't follow conventional formatting rules, you can entirely opt out of formatting for those functions by providing them here.
                
                For example, using `skip = ["graph_from_literal"]` would automatically skip formatting of:
                
                ```r igraph::graph_from_literal(Alice +--+ Bob) ```
                
                In the short term, we also anticipate that this will be useful to avoid formatting of `tibble::tribble()` calls. In the long term, we may have more sophisticated features for automatically formatting using a specified alignment.
              "%
              | optional,
          },
      "definitions.IndentStyle" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'tab |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'space |] ]
            ],
      "definitions.IndentWidth" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 24,
              js2n.number.Minimum 1
            ],
      "definitions.LineEnding" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'auto |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'lf |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'crlf |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'native |] ]
            ],
      "definitions.LineWidth" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 320,
              js2n.number.Minimum 1
            ],
      "definitions.Skip" = Array String,
    }
    in
  {
      format
        | js2n.Nullable refs."definitions.FormatTomlOptions"
        | doc "Options to configure code formatting."
        | optional,
    }