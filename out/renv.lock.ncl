# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      Bioconductor
        | { Version | String | doc "Release of Bioconductor", .. }
        | doc "Bioconductor release used in the project"
        | optional,
      Packages
        | {
          _ | {
            Author | String | doc "Formatted Author field" | optional,
            "Authors@R"
              | String
              | doc "Authors field in DESCRIPTION syntax"
              | optional,
            Biarch
              | String
              | doc "Whether binaries built for multiple architectures"
              | optional,
            BugReports
              | String
              | doc "URL for reporting bugs/issues"
              | optional,
            ByteCompile
              | String
              | doc "Whether package is byte-compiled"
              | optional,
            "Config/Needs/website"
              | String
              | doc "Configuration for website dependencies"
              | optional,
            "Config/autostyle/rmd"
              | String
              | doc "autostyle R Markdown support flag"
              | optional,
            "Config/autostyle/scope"
              | String
              | doc "autostyle configuration scope"
              | optional,
            "Config/autostyle/strict"
              | String
              | doc "autostyle strictness flag"
              | optional,
            "Config/testthat/edition"
              | String
              | doc "Which edition of testthat to use"
              | optional,
            "Config/testthat/parallel"
              | String
              | doc "Whether testthat runs in parallel"
              | optional,
            "Config/testthat/start-first"
              | String
              | doc "testthat start-first phases"
              | optional,
            Copyright
              | String
              | doc "Copyright notes from DESCRIPTION"
              | optional,
            Date
              | String
              | doc "Publication date of this version. Generally considered deprecated in DESCRIPTION"
              | optional,
            Depends | Array String | doc "Package dependencies" | optional,
            Description
              | String
              | doc "Long description from DESCRIPTION file"
              | optional,
            Encoding
              | String
              | doc "File encoding used by the package"
              | optional,
            Enhances | Array String | doc "Enhanced packages" | optional,
            Hash
              | js2n.string.Matches "^[a-fA-F0-9]{32}$"
              | doc "A unique hash for this package"
              | optional,
            Imports | Array String | doc "Imported packages" | optional,
            Language
              | String
              | doc "Primary language of the package documentation"
              | optional,
            License | String | doc "License declared by the package" | optional,
            LinkingTo
              | Array String
              | doc "Packages linked at compile time"
              | optional,
            Maintainer
              | String
              | doc "Package maintainer with email"
              | optional,
            NeedsCompilation
              | String
              | doc "Flag whether package needs compilation"
              | optional,
            Package | String | doc "The package name",
            RemoteHost | String | doc "Host for the remote" | optional,
            RemotePkgPlatform
              | String
              | doc "Platform of remote binary"
              | optional,
            RemotePkgRef
              | String
              | doc "Package name reference on remote"
              | optional,
            RemoteRef
              | String
              | doc "Git reference (branch, tag) of remote"
              | optional,
            RemoteRepo
              | String
              | doc "Repository URL for the remote package"
              | optional,
            RemoteRepos | String | doc "Remote repositories URIs" | optional,
            RemoteSha | String | doc "SHA of remote commit" | optional,
            RemoteType
              | String
              | doc "Type of remote, typically written for packages installed by the devtools, remotes and pak packages"
              | optional,
            RemoteUsername
              | String
              | doc "Username for the remote repo"
              | optional,
            Repository
              | String
              | doc "The name of the repository (if any)"
              | optional,
            RoxygenNote
              | String
              | doc "RoxygenNote from DESCRIPTION"
              | optional,
            Source
              | String
              | doc "The location from which this package was retrieved"
              | optional,
            Suggests | Array String | doc "Suggested packages" | optional,
            SystemRequirements
              | String
              | doc "System requirements for compilation"
              | optional,
            Title | String | doc "Package title from DESCRIPTION" | optional,
            Type | String | doc "Type flag from DESCRIPTION" | optional,
            URL
              | String
              | doc "Homepage or URL fields from DESCRIPTION"
              | optional,
            Version | String | doc "The package version" | optional,
            VignetteBuilder
              | String
              | doc "Builder used for vignettes"
              | optional,
            biocViews
              | String
              | doc "Bioconductor package dependencies"
              | optional,
            ..
          }
        }
        | doc "Packages required by the R project",
      Python
        | {
          Name | String | doc "Path to the Python environment",
          Type | String | doc "Type of Python environment",
          Version | String | doc "Version of Python required",
          ..
        }
        | doc "Version of Python used in the project"
        | optional,
      R
        | {
          Repositories
            | Array
              {
                Name | String | doc "Name of the repository",
                URL | String | doc "URL of the repository",
                ..
              }
            | doc "The R repositories used in this project",
          Version | String | doc "The version of R used",
          ..
        }
        | doc "Version of R used in the project",
      ..
    }