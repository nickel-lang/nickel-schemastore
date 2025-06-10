# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.dependency" = { _ | String },
      "definitions.engine" =
        {
            type
              | std.enum.TagOrString
              | [| 'adobe, 'lucee, 'railo |]
              | doc "The name of the engine"
              | optional,
            version
              | String
              | doc "The semantic version of the engine that is supported"
              | optional,
            ..
          },
      "definitions.person" =
        std.contract.any_of
            [
              String,
              {
                email | String | doc "Email address of the person" | optional,
                name | String | doc "Name of the person",
                url | String | doc "URL for the person" | optional,
                ..
              }
            ],
    }
    in
  {
      author | String | doc "Author of this package" | optional,
      bugs | String | doc "Bug issue management URL" | optional,
      cfmigrations
        | {
          connectionInfo
            | {
              class | String | optional,
              connectionString | String | optional,
              password | String | optional,
              username | String | optional,
              ..
            }
            | doc "Location of generated migration files that migration commands will use."
            | optional,
          defaultGrammar
            | std.enum.TagOrString
            | [|
              '"SqlServerGrammar@qb",
              '"PostgresGrammar@qb",
              '"OracleGrammar@qb",
              '"MySQLGrammar@qb",
              '"BaseGrammar@qb",
              '"AutoDiscover@qb"
            |]
            | doc "Name of the qb service to use for grammar."
            | optional,
          migrationsDirectory
            | String
            | doc "Location of generated migration files that migration commands will use."
            | optional,
          schema | String | optional,
          ..
        }
        | doc "Configuration object for CF Migration database settings."
        | optional,
      changelog
        | String
        | doc "Change log. If not set, it can be taken from a changelog.md, changelog, or changelog.txt"
        | optional,
      contributors
        | Array refs."definitions.person"
        | doc "Contributors to the package"
        | optional,
      createPackageDirectory
        | Bool
        | doc "This determines if the container directory will contain a sub-directory according to the package slug name. The default is true"
        | optional,
      defaultEngine
        | String
        | doc "The name of the default CFML engine for the `start` command to use."
        | optional,
      defaultPort
        | Number
        | doc "Deprecated. The HTTP port the server will be started on when you use the start command. Use `port` in `server.json` instead."
        | optional,
      dependencies | refs."definitions.dependency" | optional,
      description
        | String
        | doc "ForgeBox big description. If not set, it can be taken from a Readme.md, Readme, or Readme.txt"
        | optional,
      devDependencies | refs."definitions.dependency" | optional,
      directory
        | String
        | doc "Install directory where this package should be placed once installed. If not defined, it installs were the CommandBox command was executed."
        | optional,
      documentation | String | doc "Documentation URL" | optional,
      engines
        | Array refs."definitions.engine"
        | doc "CFML engines the package supports"
        | optional,
      homepage | String | doc "Project homepage URL" | optional,
      ignore
        | Array String
        | doc "List of file globs to ignore when installing the package similar to .gitignore patterns"
        | optional,
      installPaths
        | { _ | String }
        | doc "Tracks install locations so uninstall can work. The key is the package name/slug and the value is the path"
        | optional,
      instructions
        | String
        | doc "Install instructions. If not set, it can be taken from a instructions.md, instructions, or instructions.txt"
        | optional,
      keywords
        | std.contract.any_of [ String, Array String ]
        | doc "ForgeBox keywords"
        | optional,
      license
        | Array
          {
            type
              | String
              | doc "The license type. For example, MIT."
              | optional,
            url
              | String
              | doc "The URL at which the license resides"
              | optional,
            ..
          }
        | doc "List of licenses the package can have"
        | optional,
      location
        | String
        | doc "Location of where to download the package. Overrides ForgeBox location"
        | optional,
      name | String | doc "The name of the package" | optional,
      packageDirectory
        | String
        | doc "This name will be used for the package sub-directory instead of the slug name"
        | optional,
      private
        | Bool
        | doc "Designates the package as a private ForgeBox package. Private packages are not publicly accessible, but still offer all the benefits of ForgeBox."
        | optional,
      projectURL
        | String
        | doc "Default project URL if not using CommandBox start server commands"
        | optional,
      repository
        | {
          type
            | String
            | doc "The version control system. Popular examples are git, svn, or mercurial"
            | optional,
          url
            | String
            | doc "The URL at which the repository resides"
            | optional,
          ..
        }
        | doc "Source repository"
        | optional,
      scripts
        | js2n.record.Record
          {
            additional = 'Some String,
            patterns = {},
            properties =
              {
                  onInstall = String,
                  onRelease = String,
                  postInstall = String,
                  postPublish = String,
                  postUninstall = String,
                  postVersion = String,
                  preInstall = String,
                  prePublish = String,
                  preUninstall = String,
                  preVersion = String,
                },
            required = {},
          }
        | doc "Set of script commands that correspond to the interception points in CommandBox or arbitrary names that can be run with the `run-script` command"
        | optional,
      shortDescription | String | doc "ForgeBox short description" | optional,
      slug
        | js2n.string.MaxLength 250
        | js2n.string.Matches "^[\\w@-]*$"
        | doc "ForgeBox unique slug"
        | optional,
      testbox
        | {
          excludes
            | std.contract.any_of [ String, Array String ]
            | doc "A list of labels to exclude when running the tests"
            | optional,
          labels
            | std.contract.any_of [ String, Array String ]
            | doc "A list of labels to only include when running the tests"
            | optional,
          runner
            | std.contract.any_of [ String, Array ({ _ | String }) ]
            | doc "The URI location of the test runner for an app or several with slug names"
            | optional,
          ..
        }
        | doc "TestBox integration"
        | optional,
      type
        | std.enum.TagOrString
        | [|
          'wirebox-listeners,
          'wirebox-aspects,
          'testing,
          'projects,
          'preside-skeletons,
          'preside-extensions,
          'plugins,
          'nosql,
          'mvc,
          'modules,
          'messaging-queues,
          'lucee-extensions,
          'logging,
          'interceptors,
          'di,
          'demos,
          'contentbox-widgets,
          'contentbox-themes,
          'contentbox-modules,
          'commandbox-recipes,
          'commandbox-modules,
          'commandbox-commands,
          'cms,
          'cfwheels-plugins,
          'cfbuilder-extensions,
          'cf-engines,
          'caching
        |]
        | doc "ForgeBox contribution type"
        | optional,
      version | String | doc "Semantic version of your package" | optional,
      ..
    }