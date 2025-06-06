# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      addons
        | String
        | doc "Path to the Addons directory. The Addons directory contains the template files used by generators to create the documentation. When a custom Addons directory is not specified, the default templates are used. The default templates are located at the `share/mrdocs/addons` directory of the MrDocs installation. Users can create custom templates by copying the default templates to a custom directory and specifying the custom directory using this option."
        | optional,
      auto-brief
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, MrDocs uses the first line (until the first dot, question mark, or exclamation mark) of the comment as the brief of the symbol. When set to `false`, a explicit @brief command is required."
        | optional,
      auto-relates
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, MrDocs automatically finds non-member functions that are related to the current class."
        | optional,
      base-url
        | String
        | doc "Base URL for links to source code. The base URL is used to create links to the source code in the documentation. The base URL is combined with the path to the source file to create the link."
        | optional,
      cmake
        | String
        | doc "When the compilation-database option is a CMakeLists.txt file, these arguments are passed to the cmake command to generate the compilation_database.json."
        | optional,
      compilation-database
        | String
        | doc "Path to the compilation database or a build script to generate it. The compilation database is a JSON file that contains the compiler commands used to build the source code. The compilation database is used to extract the compiler flags and the source files used to build the source code and extract symbols. This option also accepts the path to a build script such as CMakeLists.txt to be used to generate the compilation database. In this case, MrDocs will look for CMake in `PATH` or in `CMAKE_ROOT` and run the script to generate the compilation database file."
        | optional,
      defines
        | Array String
        | doc "Additional defines passed to the compiler when building the source code. These defines are added to the compilation database regardless of the strategy to generate it."
        | optional,
      embedded
        | js2n.Enum [ true, false ]
        | doc "Output an embeddable document, which excludes the header, the footer, and everything outside the body of the document. This option is useful for producing documents that can be inserted into an external template."
        | optional,
      exclude
        | Array String
        | doc "Symbols defined in files in these directories are not extracted even if they are in the list of include directories. When relative, the paths are relative to the directory of the mrdocs configuration file. For instance, \"include/experimental\" will exclude all files in the directory `<config-dir>/include/experimental`."
        | optional,
      exclude-patterns
        | Array String
        | doc "File patterns to exclude. Files that match these patterns are not extracted even if they are in the list of include directories. The patterns are relative to the configuration file. A single * will match all files in the directory. Double ** will match all files in the directory and its subdirectories."
        | optional,
      exclude-symbols
        | Array String
        | doc "A symbol that matches one of these patterns is not extracted even if whitelisted by \"include-symbols\". See the documentation for \"include-symbols\" for the pattern syntax."
        | optional,
      extract-all
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, MrDocs extracts all symbols from the source code, even if no documentation is provided. MrDocs can only identify whether a symbol is ultimated documented after extracting information from all translation units. For this reason, when this option is set to `false`, it's still recommendable to provide file and symbol filters so that only the desired symbols are traversed and stored by MrDocs."
        | optional,
      extract-anonymous-namespaces
        | js2n.Enum [ true, false ]
        | doc "Determine whether symbols in anonymous namespaces should be extracted."
        | optional,
      extract-empty-namespaces
        | js2n.Enum [ true, false ]
        | doc "Determine whether empty namespaces without documentation should be extracted."
        | optional,
      extract-implicit-specializations
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, MrDocs extracts implicit template specializations used as base classes as dependencies. This allows MrDocs to extract metadata that can later be used to determine the members of the derived class, as specified by the `inherit-base-members` option."
        | optional,
      extract-local-classes
        | js2n.Enum [ true, false ]
        | doc "Determine whether records only defined locally in source files should be extracted."
        | optional,
      extract-private
        | js2n.Enum [ true, false ]
        | doc "Determine whether private class members should be extracted"
        | optional,
      extract-private-bases
        | js2n.Enum [ true, false ]
        | doc "Determine whether private base classes should be extracted"
        | optional,
      extract-private-virtual
        | js2n.Enum [ true, false ]
        | doc "Determine whether private virtual methods of a class should be extracted"
        | optional,
      extract-static
        | js2n.Enum [ true, false ]
        | doc "Determine whether static members of a file should be extracted. This option does not refer to static members of a class."
        | optional,
      file-patterns
        | Array String
        | doc "File patterns to include. Only the files that match these patterns are extracted. The patterns are relative to the input directories."
        | optional,
      generator
        | std.enum.TagOrString
        | [| 'xml, 'html, 'adoc |]
        | doc "The generator is responsible for creating the documentation from the extracted symbols. The generator uses the extracted symbols and the templates to create the documentation. The generator can create different types of documentation such as HTML, XML, and AsciiDoc."
        | optional,
      ignore-failures
        | js2n.Enum [ true, false ]
        | doc "When set to true, MrDocs continues to generate the documentation even if there are AST visitation failures. AST visitation failures occur when the source code contains constructs that are not supported by MrDocs."
        | optional,
      ignore-map-errors
        | js2n.Enum [ true, false ]
        | doc "When set to true, MrDocs continues to generate the documentation even if some files are not mapped correctly. Files are not mapped correctly when the source file is not found or the compilation database does not contain the compiler flags for the source file."
        | optional,
      implementation-defined
        | Array String
        | doc "Symbols that match one of these filters are tagged as \"implementation-defined\" in the documentation, and so do symbols in scopes tagged as \"implementation-defined\". This option is used to exclude symbols from the documentation that are considered part of the private API of the project. An \"implementation-defined\" symbol has no documentation page in the output. If any other symbol refers to it, the reference is rendered as \"implementation-defined\". See the documentation for \"include-symbol\" for the pattern syntax."
        | optional,
      include-symbols
        | Array String
        | doc "If any patterns are defined here, only symbols that match one of these patterns are extracted. The patterns are applied to the fully qualified name of the symbol without any leading \"::\". A single \"*\" will match all symbols in the namespace. Double \"**\" will match all symbols in the namespace and its subnamespaces. The patterns also support \"?\" for any chars, \"[<chars>]\" for charsets, \"[^<chars>]\" for inverted charsets, and \"{<glob>,...}\" for alternatives."
        | optional,
      includes
        | Array String
        | doc "Include paths. These paths are used to add directories to the include search path. The include search path is used to search for headers. The headers are used to provide declarations and definitions of symbols. The headers are part of the project and are checked for warnings and errors."
        | optional,
      inherit-base-members
        | std.enum.TagOrString
        | [| 'copy-all, 'copy-dependencies, 'reference, 'never |]
        | doc "Determine how derived classes inherit members of base classes. When set to `never`, derived classes do not inherit members of base classes and only the relationship is stored. When set to `reference`, derived classes list members of base classes but references are still linked to the base class. When set to `copy-dependencies`, a reference is created by default and a copy is created when the base class is a dependency. When set to `copy-all`, a copy is created for each base symbol as if it was declared in the derived class. If the base class is a dependency, the extraction mode is copied from the new parent."
        | optional,
      input
        | Array String
        | doc "Input directories to extract. Only symbols defined in files in these directories are extracted. The paths are relative to the mrdocs configuration file."
        | optional,
      legible-names
        | js2n.Enum [ true, false ]
        | doc "Use legible names for ids in the documentation. When set to true, MrDocs uses legible names for symbols in the documentation. These are symbols that are legible but still safe for URLs. When the option is set to false, MrDocs uses a hash of the symbol ID."
        | optional,
      libc-includes
        | Array String
        | doc "When `use-system-libc` is disabled, the C standard library headers are available in these paths."
        | optional,
      log-level
        | std.enum.TagOrString
        | [| 'fatal, 'error, 'warn, 'info, 'debug, 'trace |]
        | doc "The reporting level determines the amount of information displayed during the generation of the documentation."
        | optional,
      multipage
        | js2n.Enum [ true, false ]
        | doc "Generates a multipage documentation. The output directory must be a directory. This option acts as a hint to the generator to create a multipage documentation. Whether the hint is followed or not depends on the generator."
        | optional,
      output
        | String
        | doc "Multipage generators expect a directory. Single page generators expect a file or a directory where the file will be created. If the directory does not exist, it will be created."
        | optional,
      overloads
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, MrDocs detects function overloads and groups them as a single symbol type. The documentation for this new symbol comes from the union of non-ambiguous metadata from the functions."
        | optional,
      recursive
        | js2n.Enum [ true, false ]
        | doc "Recursively include files. When set to true, MrDocs includes files in subdirectories of the input directories. When set to false, MrDocs includes only the files in the input directories."
        | optional,
      report
        | std.number.Integer
        | js2n.number.Maximum 5
        | js2n.number.Minimum (-1)
        | doc "The reporting level determines the amount of information displayed during the generation of the documentation. The value `-1` delegates the decision to the `log-level` option."
        | optional,
      see-below
        | Array String
        | doc "Symbols that match one of these filters are tagged as \"see-below\" in the documentation, and so do symbols in scopes tagged as \"see-below\". This option is used to remove details about symbols that are considered part of the private API of the project but the user might need to interact with. In the documentation page for this symbol, the symbol is exposition only: the synopsis of the implementation is rendered as \"see-below\" and members of scopes (such as a namespace or record) are not listed. The rest of the documentation is rendered as usual to explain the symbol. See the documentation for \"include-symbol\" for the pattern syntax."
        | optional,
      sfinae
        | js2n.Enum [ true, false ]
        | doc "When set to true, MrDocs detects SFINAE expressions in the source code and extracts them as part of the documentation. Expressions such as `std::enable_if<...>` are detected, removed, and documented as a requirement. MrDocs uses an algorithm that extracts SFINAE infomation from types by identifying inspecting the primary template and specializations to detect the result type and the controlling expressions in a specialization."
        | optional,
      show-namespaces
        | js2n.Enum [ true, false ]
        | doc "When set to true, MrDocs creates a page for each namespace in the documentation."
        | optional,
      sort-members
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, sort the members of a record or namespace by name and parameters. When set to `false`, the members are included in the declaration order they are extracted."
        | optional,
      sort-members-assignment-1st
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, assignment operators are sorted first in the list of members of a record."
        | optional,
      sort-members-conversion-last
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, conversion operators are sorted last in the list of members of a record or namespace."
        | optional,
      sort-members-ctors-1st
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, constructors are sorted first in the list of members of a record."
        | optional,
      sort-members-dtors-1st
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, destructors are sorted first in the list of members of a record."
        | optional,
      sort-members-relational-last
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, relational operators are sorted last in the list of members of a record or namespace."
        | optional,
      source-root
        | String
        | doc "Path to the root directory of the source code. This path is used as a default for input files and a base for relative paths formed from absolute paths. This should typically be the root directory of the git project, as relative paths formed from it can be used to create links to these source files in the repository. Templates use the `base-url` option to create links to the source code."
        | optional,
      stdlib-includes
        | Array String
        | doc "When `use-system-stdlib` is disabled, the C++ standard library headers are available in these paths."
        | optional,
      system-includes
        | Array String
        | doc "System include paths. These paths are used to add directories to the system include search path. The system include search path is used to search for system headers. The system headers are headers that are provided by the system and are not part of the project. The system headers are used to provide the standard library headers and other system headers. The system headers are not part of the project and are not checked for warnings and errors."
        | optional,
      tagfile
        | String
        | doc "Specifies the full path (filename) where the generated tagfile should be saved. If left empty, no tagfile will be generated."
        | optional,
      use-system-libc
        | js2n.Enum [ true, false ]
        | doc "To achieve reproducible results, MrDocs bundles the LibC headers with its definitions. To use the C standard library available in the system instead, set this option to true."
        | optional,
      use-system-stdlib
        | js2n.Enum [ true, false ]
        | doc "To achieve reproducible results, MrDocs bundles the LibC++ headers. To use the C++ standard library available in the system instead, set this option to true."
        | optional,
      verbose
        | js2n.Enum [ true, false ]
        | doc "Verbose output. When set to true, MrDocs outputs additional information during the generation of the documentation."
        | optional,
      warn-as-error
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, MrDocs treats warnings as errors and stops the generation of the documentation."
        | optional,
      warn-broken-ref
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, MrDocs outputs a warning message if a reference in the documentation is broken."
        | optional,
      warn-if-doc-error
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, MrDocs outputs a warning message if the documentation of a symbol has errors such as duplicate parameters and parameters that don't exist."
        | optional,
      warn-if-undoc-enum-val
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, MrDocs outputs a warning message if an enum value is not documented."
        | optional,
      warn-if-undocumented
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, MrDocs outputs a warning message if a symbol that passes all filters is not documented."
        | optional,
      warn-no-paramdoc
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, MrDocs outputs a warning message if a named function parameter is not documented."
        | optional,
      warn-unnamed-param
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, MrDocs outputs a warning message if a documented function has a parameter that is not named."
        | optional,
      warnings
        | js2n.Enum [ true, false ]
        | doc "When set to `true`, MrDocs outputs warning messages during the generation of the documentation. It is usually recommended to enable warnings while writing the documentation."
        | optional,
      ..
    }