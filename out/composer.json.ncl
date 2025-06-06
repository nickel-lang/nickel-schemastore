# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.artifact-repository" =
        {
            canonical | Bool | optional,
            exclude | Array String | optional,
            only | Array String | optional,
            type | std.enum.TagOrString | [| 'artifact |],
            url | String,
            ..
          },
      "definitions.authors" =
        Array
            {
              email | String | doc "Email address of the author." | optional,
              homepage | String | doc "Homepage URL for the author." | optional,
              name | String | doc "Full name of the author.",
              role | String | doc "Author's role in the project." | optional,
            },
      "definitions.autoload" =
        {
            classmap
              | Array Dyn
              | doc "This is an array of paths that contain classes to be included in the class-map generation process."
              | optional,
            exclude-from-classmap
              | Array Dyn
              | doc "This is an array of patterns to exclude from autoload classmap generation. (e.g. \"exclude-from-classmap\": [\"/test/\", \"/tests/\", \"/Tests/\"]"
              | optional,
            files
              | Array Dyn
              | doc "This is an array of files that are always required on every request."
              | optional,
            psr-0
              | { _ | std.contract.any_of [ String, Array String ] }
              | doc "This is an object of namespaces (keys) and the directories they can be found in (values, can be arrays of paths) by the autoloader."
              | optional,
            psr-4
              | { _ | std.contract.any_of [ String, Array String ] }
              | doc "This is an object of namespaces (keys) and the PSR-4 directories they can map to (values, can be arrays of paths) by the autoloader."
              | optional,
            ..
          },
      "definitions.composer-repository" =
        {
            allow_ssl_downgrade | Bool | optional,
            canonical | Bool | optional,
            exclude | Array String | optional,
            force-lazy-providers | Bool | optional,
            only | Array String | optional,
            options | {  .. } | optional,
            type | std.enum.TagOrString | [| 'composer |],
            url | String,
            ..
          },
      "definitions.dist" =
        {
            mirrors | Array Dyn | optional,
            reference | String | optional,
            shasum | String | optional,
            type | String,
            url | String,
            ..
          },
      "definitions.inline-package" =
        {
            archive | { exclude | Array Dyn | optional, .. } | optional,
            authors | refs."definitions.authors" | Array Dyn | optional,
            autoload | refs."definitions.autoload" | { _ | Dyn } | optional,
            bin
              | std.contract.any_of [ String, Array String ]
              | doc "A set of files, or a single file, that should be treated as binaries and symlinked into bin-dir (from config)."
              | optional,
            conflict | { _ | String } | optional,
            description | String | optional,
            dist | refs."definitions.dist" | { _ | Dyn } | optional,
            extra | std.contract.any_of [ {  .. }, Array Dyn ] | optional,
            homepage | String | optional,
            include-path
              | Array String
              | doc "DEPRECATED: A list of directories which should get added to PHP's include path. This is only present to support legacy projects, and all new code should preferably use autoloading."
              | optional,
            keywords | Array String | optional,
            license | std.contract.any_of [ String, Array Dyn ] | optional,
            name
              | String
              | doc "Package name, including 'vendor-name/' prefix.",
            provide | { _ | String } | optional,
            replace | { _ | String } | optional,
            require | { _ | String } | optional,
            require-dev | { _ | String } | optional,
            source | refs."definitions.source" | { _ | Dyn } | optional,
            suggest | { _ | String } | optional,
            target-dir
              | String
              | doc "DEPRECATED: Forces the package to be installed into the given subdirectory path. This is used for autoloading PSR-0 packages that do not contain their full path. Use forward slashes for cross-platform compatibility."
              | optional,
            time | String | optional,
            type | String | optional,
            version | String,
            ..
          },
      "definitions.package-repository" =
        {
            canonical | Bool | optional,
            exclude | Array String | optional,
            only | Array String | optional,
            package
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.inline-package", { _ | Dyn } ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.inline-package", { _ | Dyn } ]
                  )
                ],
            type | std.enum.TagOrString | [| 'package |],
            ..
          },
      "definitions.path-repository" =
        {
            canonical | Bool | optional,
            exclude | Array String | optional,
            only | Array String | optional,
            options
              | {
                reference
                  | std.enum.TagOrString
                  | [| 'auto, 'config, 'none |]
                  | optional,
                relative | Bool | optional,
                symlink | js2n.Nullable Bool | optional,
                versions | { _ | String } | optional,
                ..
              }
              | optional,
            type | std.enum.TagOrString | [| 'path |],
            url | String,
            ..
          },
      "definitions.pear-repository" =
        {
            canonical | Bool | optional,
            exclude | Array String | optional,
            only | Array String | optional,
            type | std.enum.TagOrString | [| 'pear |],
            url | String,
            vendor-alias | String | optional,
            ..
          },
      "definitions.repository" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.composer-repository", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.vcs-repository", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.path-repository", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.artifact-repository", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.pear-repository", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.package-repository", { _ | Dyn } ]
            ],
      "definitions.source" =
        {
            mirrors | Array Dyn | optional,
            reference | String,
            type | String,
            url | String,
            ..
          },
      "definitions.vcs-repository" =
        {
            branch | String | optional,
            branches-path | std.contract.any_of [ Bool, String ] | optional,
            canonical | Bool | optional,
            depot | String | optional,
            exclude | Array String | optional,
            no-api | Bool | optional,
            only | Array String | optional,
            p4password | String | optional,
            p4user | String | optional,
            package-path | String | optional,
            secure-http | Bool | optional,
            svn-cache-credentials | Bool | optional,
            tags-path | std.contract.any_of [ Bool, String ] | optional,
            trunk-path | std.contract.any_of [ Bool, String ] | optional,
            type
              | std.enum.TagOrString
              | [|
                'svn,
                'perforce,
                'fossil,
                'hg,
                'git-bitbucket,
                'bitbucket,
                'gitlab,
                'git,
                'github,
                'vcs
              |],
            unique_perforce_client_name | String | optional,
            url | String,
            ..
          },
    }
    in
  {
      _comment
        | std.contract.any_of [ String, Array Dyn ]
        | doc "A key to store comments in"
        | optional,
      abandoned
        | std.contract.any_of [ Bool, String ]
        | doc "Indicates whether this package has been abandoned, it can be boolean or a package name/URL pointing to a recommended alternative. Defaults to false."
        | optional,
      archive
        | {
          exclude
            | Array Dyn
            | doc "A list of patterns for paths to exclude or include if prefixed with an exclamation mark."
            | optional,
          name | String | doc "A base name for archive." | optional,
          ..
        }
        | doc "Options for creating package archives for distribution."
        | optional,
      authors | refs."definitions.authors" | optional,
      autoload | refs."definitions.autoload" | optional,
      autoload-dev
        | {
          classmap
            | Array Dyn
            | doc "This is an array of paths that contain classes to be included in the class-map generation process."
            | optional,
          files
            | Array Dyn
            | doc "This is an array of files that are always required on every request."
            | optional,
          psr-0
            | { _ | std.contract.any_of [ String, Array String ] }
            | doc "This is an object of namespaces (keys) and the directories they can be found into (values, can be arrays of paths) by the autoloader."
            | optional,
          psr-4
            | { _ | std.contract.any_of [ String, Array String ] }
            | doc "This is an object of namespaces (keys) and the PSR-4 directories they can map to (values, can be arrays of paths) by the autoloader."
            | optional,
          ..
        }
        | doc "Description of additional autoload rules for development purpose (eg. a test suite)."
        | optional,
      bin
        | std.contract.any_of [ String, Array String ]
        | doc "A set of files, or a single file, that should be treated as binaries and symlinked into bin-dir (from config)."
        | optional,
      config
        | {
          allow-missing-requirements
            | Bool
            | doc "Defaults to false. If set to true, Composer will allow install when lock file is not up to date with the latest changes in composer.json."
            | optional,
          allow-plugins
            | std.contract.any_of [ Bool, { _ | Bool } ]
            | doc "This is an object of {\"pattern\": true|false} with packages which are allowed to be loaded as plugins, or true to allow all, false to allow none. Defaults to {} which prompts when an unknown plugin is added."
            | optional,
          apcu-autoloader
            | Bool
            | doc "If true, the Composer autoloader will check for APCu and use it to cache found/not-found classes when the extension is enabled, defaults to false."
            | optional,
          archive-dir
            | String
            | doc "The default archive path when not provided on cli, defaults to \".\"."
            | optional,
          archive-format
            | String
            | doc "The default archiving format when not provided on cli, defaults to \"tar\"."
            | optional,
          audit
            | {
              abandoned
                | std.enum.TagOrString
                | [| 'fail, 'report, 'ignore |]
                | doc "Whether abandoned packages should be ignored, reported as problems or cause an audit failure."
                | optional,
              ignore
                | std.contract.any_of [ { _ | String }, Array String ]
                | optional,
              ..
            }
            | doc "Security audit configuration options"
            | optional,
          autoloader-suffix
            | String
            | doc "Optional string to be used as a suffix for the generated Composer autoloader. When null a random one will be generated."
            | optional,
          bearer
            | { _ | String }
            | doc "An object of domain name => bearer authentication token, for example {\"example.com\":\"<token>\"}."
            | optional,
          bin-compat
            | std.enum.TagOrString
            | [| 'symlink, 'proxy, 'full, 'auto |]
            | doc "The compatibility of the binaries, defaults to \"auto\" (automatically guessed), can be \"full\" (compatible with both Windows and Unix-based systems) and \"proxy\" (only bash-style proxy)."
            | optional,
          bin-dir
            | String
            | doc "The location where all binaries are linked, defaults to \"vendor/bin\"."
            | optional,
          bitbucket-oauth
            | {
              _ | {
                access-token
                  | String
                  | doc "The OAuth token retrieved from Bitbucket's API, this is written by Composer and you should not set it nor modify it."
                  | optional,
                access-token-expiration
                  | std.number.Integer
                  | doc "The generated token's expiration timestamp, this is written by Composer and you should not set it nor modify it."
                  | optional,
                consumer-key
                  | String
                  | doc "The consumer-key used for OAuth authentication",
                consumer-secret
                  | String
                  | doc "The consumer-secret used for OAuth authentication",
                ..
              }
            }
            | doc "An object of domain name => {\"consumer-key\": \"...\", \"consumer-secret\": \"...\"}."
            | optional,
          bump-after-update
            | std.contract.any_of [ Bool, String ]
            | doc "Defaults to false and can be any of true, false, \"dev\"` or \"no-dev\"`. If set to true, Composer will run the bump command after running the update command. If set to \"dev\" or \"no-dev\" then only the corresponding dependencies will be bumped."
            | optional,
          cache-dir
            | String
            | doc "The location where all caches are located, defaults to \"~/.composer/cache\" on *nix and \"%LOCALAPPDATA%\\Composer\" on windows."
            | optional,
          cache-files-dir
            | String
            | doc "The location where files (zip downloads) are cached, defaults to \"{$cache-dir}/files\"."
            | optional,
          cache-files-maxsize
            | std.contract.any_of [ std.number.Integer, String ]
            | doc "The cache max size for the files cache, defaults to \"300MiB\"."
            | optional,
          cache-files-ttl
            | std.number.Integer
            | doc "The cache time-to-live for files, defaults to the value of cache-ttl."
            | optional,
          cache-read-only
            | Bool
            | doc "Whether to use the Composer cache in read-only mode."
            | optional,
          cache-repo-dir
            | String
            | doc "The location where repo (git/hg repo clones) are cached, defaults to \"{$cache-dir}/repo\"."
            | optional,
          cache-ttl
            | std.number.Integer
            | doc "The default cache time-to-live, defaults to 15552000 (6 months)."
            | optional,
          cache-vcs-dir
            | String
            | doc "The location where vcs infos (git clones, github api calls, etc. when reading vcs repos) are cached, defaults to \"{$cache-dir}/vcs\"."
            | optional,
          cafile
            | String
            | doc "A way to set the path to the openssl CA file. In PHP 5.6+ you should rather set this via openssl.cafile in php.ini, although PHP 5.6+ should be able to detect your system CA file automatically."
            | optional,
          capath
            | String
            | doc "If cafile is not specified or if the certificate is not found there, the directory pointed to by capath is searched for a suitable certificate. capath must be a correctly hashed certificate directory."
            | optional,
          classmap-authoritative
            | Bool
            | doc "If true, the composer autoloader will not scan the filesystem for classes that are not found in the class map, defaults to false."
            | optional,
          client-certificate
            | {
              _ | {
                local_cert
                  | String
                  | doc "Path to a certificate (pem) or pair certificate+key (pem)",
                local_pk
                  | String
                  | doc "Path to a private key file (pem)"
                  | optional,
                passphrase
                  | String
                  | doc "Passphrase for private key"
                  | optional,
                ..
              }
            }
            | doc "An object of domain name => {\"local_cert\": \"...\", \"local_pk\"?: \"...\", \"passphrase\"?: \"...\"} to provide client certificate."
            | optional,
          custom-headers
            | { _ | Array String }
            | doc "Custom HTTP headers for specific domains."
            | optional,
          data-dir
            | String
            | doc "The location where old phar files are stored, defaults to \"$home\" except on XDG Base Directory compliant unixes."
            | optional,
          disable-tls
            | Bool
            | doc "Defaults to `false`. If set to true all HTTPS URLs will be tried with HTTP instead and no network level encryption is performed. Enabling this is a security risk and is NOT recommended. The better way is to enable the php_openssl extension in php.ini."
            | optional,
          discard-changes
            | std.contract.any_of [ Bool, String ]
            | doc "The default style of handling dirty updates, defaults to false and can be any of true, false or \"stash\"."
            | optional,
          github-domains
            | Array String
            | doc "A list of domains to use in github mode. This is used for GitHub Enterprise setups, defaults to [\"github.com\"]."
            | optional,
          github-expose-hostname
            | Bool
            | doc "Defaults to true. If set to false, the OAuth tokens created to access the github API will have a date instead of the machine hostname."
            | optional,
          github-oauth
            | { _ | String }
            | doc "An object of domain name => github API oauth tokens, typically {\"github.com\":\"<token>\"}."
            | optional,
          github-protocols
            | Array String
            | doc "A list of protocols to use for github.com clones, in priority order, defaults to [\"https\", \"ssh\", \"git\"]."
            | optional,
          gitlab-domains
            | Array String
            | doc "A list of domains to use in gitlab mode. This is used for custom GitLab setups, defaults to [\"gitlab.com\"]."
            | optional,
          gitlab-oauth
            | {
              _ | std.contract.any_of
                [
                  String,
                  {
                    expires-at
                      | std.number.Integer
                      | doc "The expiration date for this GitLab token"
                      | optional,
                    refresh-token
                      | String
                      | doc "The refresh token used for GitLab authentication"
                      | optional,
                    token
                      | String
                      | doc "The token used for GitLab authentication",
                    ..
                  }
                ]
            }
            | doc "An object of domain name => gitlab API oauth tokens, typically {\"gitlab.com\":{\"expires-at\":\"<expiration date>\", \"refresh-token\":\"<refresh token>\", \"token\":\"<token>\"}}."
            | optional,
          gitlab-protocol
            | std.enum.TagOrString
            | [| 'https, 'http, 'git |]
            | doc "A protocol to force use of when creating a repository URL for the `source` value of the package metadata. One of `git` or `http`. By default, Composer will generate a git URL for private repositories and http one for public repos."
            | optional,
          gitlab-token
            | {
              _ | std.contract.any_of
                [
                  String,
                  {
                    token
                      | String
                      | doc "The token used for GitLab authentication",
                    username
                      | String
                      | doc "The username used for GitLab authentication",
                    ..
                  }
                ]
            }
            | doc "An object of domain name => gitlab private tokens, typically {\"gitlab.com\":\"<token>\"}, or an object with username and token keys."
            | optional,
          htaccess-protect
            | Bool
            | doc "Defaults to true. If set to false, Composer will not create .htaccess files in the composer home, cache, and data directories."
            | optional,
          http-basic
            | {
              _ | {
                password
                  | String
                  | doc "The password used for HTTP Basic authentication",
                username
                  | String
                  | doc "The username used for HTTP Basic authentication",
                ..
              }
            }
            | doc "An object of domain name => {\"username\": \"...\", \"password\": \"...\"}."
            | optional,
          lock
            | Bool
            | doc "Defaults to true. If set to false, Composer will not create a composer.lock file."
            | optional,
          notify-on-install
            | Bool
            | doc "Composer allows repositories to define a notification URL, so that they get notified whenever a package from that repository is installed. This option allows you to disable that behaviour, defaults to true."
            | optional,
          optimize-autoloader
            | Bool
            | doc "Always optimize when dumping the autoloader."
            | optional,
          platform
            | { _ | std.contract.any_of [ Bool, String ] }
            | doc "This is an object of package name (keys) and version (values) that will be used to mock the platform packages on this machine, the version can be set to false to make it appear like the package is not present."
            | optional,
          platform-check
            | std.contract.any_of [ Bool, String ]
            | doc "Defaults to \"php-only\" which checks only the PHP version. Setting to true will also check the presence of required PHP extensions. If set to false, Composer will not create and require a platform_check.php file as part of the autoloader bootstrap."
            | optional,
          preferred-install
            | std.contract.any_of [ String, { _ | String } ]
            | doc "The install method Composer will prefer to use, defaults to auto and can be any of source, dist, auto, or an object of {\"pattern\": \"preference\"}."
            | optional,
          prepend-autoloader
            | Bool
            | doc "If false, the composer autoloader will not be prepended to existing autoloaders, defaults to true."
            | optional,
          process-timeout
            | std.number.Integer
            | doc "The timeout in seconds for process executions, defaults to 300 (5mins)."
            | optional,
          secure-http
            | Bool
            | doc "Defaults to `true`. If set to true only HTTPS URLs are allowed to be downloaded via Composer. If you really absolutely need HTTP access to something then you can disable it, but using \"Let's Encrypt\" to get a free SSL certificate is generally a better alternative."
            | optional,
          secure-svn-domains
            | Array String
            | doc "A list of domains which should be trusted/marked as using a secure Subversion/SVN transport. By default svn:// protocol is seen as insecure and will throw. This is a better/safer alternative to disabling `secure-http` altogether."
            | optional,
          sort-packages
            | Bool
            | doc "Defaults to false. If set to true, Composer will sort packages when adding/updating a new dependency."
            | optional,
          store-auths
            | std.contract.any_of [ Bool, String ]
            | doc "What to do after prompting for authentication, one of: true (store), false (do not store) or \"prompt\" (ask every time), defaults to prompt."
            | optional,
          use-github-api
            | Bool
            | doc "Defaults to true.  If set to false, globally disables the use of the GitHub API for all GitHub repositories and clones the repository as it would for any other repository."
            | optional,
          use-include-path
            | Bool
            | doc "If true, the Composer autoloader will also look for classes in the PHP include path."
            | optional,
          use-parent-dir
            | std.contract.any_of [ Bool, String ]
            | doc "When running Composer in a directory where there is no composer.json, if there is one present in a directory above Composer will by default ask you whether you want to use that directory's composer.json instead. One of: true (always use parent if needed), false (never ask or use it) or \"prompt\" (ask every time), defaults to prompt."
            | optional,
          vendor-dir
            | String
            | doc "The location where all packages are installed, defaults to \"vendor\"."
            | optional,
          ..
        }
        | doc "Composer options."
        | optional,
      conflict
        | { _ | String }
        | doc "This is an object of package name (keys) and version constraints (values) that conflict with this package."
        | optional,
      default-branch
        | Bool
        | doc "Internal use only, do not specify this in composer.json. Indicates whether this version is the default branch of the linked VCS repository. Defaults to false."
        | optional,
      description | String | doc "Short package description." | optional,
      dist | refs."definitions.dist" | optional,
      extra
        | std.contract.any_of [ {  .. }, Array Dyn ]
        | doc "Arbitrary extra data that can be used by plugins, for example, package of type composer-plugin may have a 'class' key defining an installer class name."
        | optional,
      funding
        | Array
          {
            type
              | String
              | doc "Type of funding or platform through which funding is possible."
              | optional,
            url
              | String
              | doc "URL to a website with details on funding and a way to fund the package."
              | optional,
            ..
          }
        | doc "A list of options to fund the development and maintenance of the package."
        | optional,
      homepage | String | doc "Homepage URL for the project." | optional,
      include-path
        | Array String
        | doc "DEPRECATED: A list of directories which should get added to PHP's include path. This is only present to support legacy projects, and all new code should preferably use autoloading."
        | optional,
      keywords | Array String | optional,
      license
        | std.contract.any_of [ String, Array Dyn ]
        | doc "License name. Or an array of license names."
        | optional,
      minimum-stability
        | std.enum.TagOrString
        | [| 'stable, 'RC, 'rc, 'beta, 'alpha, 'dev |]
        | doc "The minimum stability the packages must have to be install-able. Possible values are: dev, alpha, beta, RC, stable."
        | optional,
      name
        | js2n.string.Matches
          "^[a-z0-9]([_.-]?[a-z0-9]+)*/[a-z0-9](([_.]|-{1,2})?[a-z0-9]+)*$"
        | doc "Package name, including 'vendor-name/' prefix."
        | optional,
      non-feature-branches
        | Array String
        | doc "A set of string or regex patterns for non-numeric branch names that will not be handled as feature branches."
        | optional,
      php-ext
        | std.contract.not
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Required [ "os-families", "os-families-exclude" ],
              Array Dyn
            ])
        | {
          build-path
            | js2n.Nullable String
            | doc "If specified, this is the subdirectory that will be used to build the extension instead of the root of the project."
            | optional,
          configure-options
            | Array
              {
                description
                  | String
                  | doc "The description of what the flag does or means."
                  | optional,
                name
                  | js2n.string.Matches "^[a-zA-Z0-9][a-zA-Z0-9-_]*$"
                  | doc "The name of the flag, this would typically be prefixed with `--`, for example, the value 'the-flag' would be passed as `./configure --the-flag`.",
                needs-value
                  | Bool
                  | doc "If this is set to true, the flag needs a value (e.g. --with-somelib=<path>), otherwise it is a flag without a value (e.g. --enable-some-feature)."
                  | optional,
                ..
              }
            | doc "These configure options make up the flags that can be passed to ./configure when installing the extension."
            | optional,
          download-url-method
            | std.enum.TagOrString
            | [| 'pre-packaged-source, 'composer-default |]
            | doc "If specified, this technique will be used to override the URL that PIE uses to download the asset. The default, if not specified, is composer-default."
            | optional,
          extension-name
            | String
            | doc "If specified, this will be used as the name of the extension, where needed by tooling. If this is not specified, the extension name will be derived from the Composer package name (e.g. `vendor/name` would become `ext-name`). The extension name may be specified with or without the `ext-` prefix, and tools that use this must normalise this appropriately."
            | optional,
          os-families
            | js2n.array.MinItems 1
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| 'unknown, 'linux, 'solaris, 'darwin, 'bsd, 'windows |]
                ]
            )
            | doc "An array of OS families to mark as compatible with the extension. Specifying this property will mean this package is not installable with PIE on any OS family not listed here. Must not be specified alongside os-families-exclude."
            | optional,
          os-families-exclude
            | js2n.array.MinItems 1
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| 'unknown, 'linux, 'solaris, 'darwin, 'bsd, 'windows |]
                ]
            )
            | doc "An array of OS families to mark as incompatible with the extension. Specifying this property will mean this package is installable on any OS family except those listed here. Must not be specified alongside os-families."
            | optional,
          "priority"
            | std.number.Integer
            | js2n.number.Maximum 99
            | js2n.number.Minimum 10
            | doc "This is used to add a prefix to the INI file, e.g. `90-xdebug.ini` which affects the loading order. The priority is a number in the range 10-99 inclusive, with 10 being the highest priority (i.e. will be processed first), and 99 being the lowest priority (i.e. will be processed last). There are two digits so that the files sort correctly on any platform, whether the sorting is natural or not."
            | optional,
          support-nts
            | Bool
            | doc "Does this package support non-Thread Safe mode"
            | optional,
          support-zts
            | Bool
            | doc "Does this package support Zend Thread Safety"
            | optional,
          ..
        }
        | doc "Settings for PHP extension packages."
        | optional,
      prefer-stable
        | Bool
        | doc "If set to true, stable packages will be preferred to dev packages when possible, even if the minimum-stability allows unstable packages."
        | optional,
      provide
        | { _ | String }
        | doc "This is an object of package name (keys) and version constraints (values) that this package provides in addition to this package's name."
        | optional,
      readme | String | doc "Relative path to the readme document." | optional,
      replace
        | { _ | String }
        | doc "This is an object of package name (keys) and version constraints (values) that can be replaced by this package."
        | optional,
      repositories
        | std.contract.any_of
          [
            {
              _ | std.contract.any_of
                [ refs."definitions.repository", js2n.Enum [ false ] ]
            },
            Array (
              std.contract.any_of
                [
                  refs."definitions.repository",
                  std.contract.Sequence
                    [
                      js2n.record.MaxProperties 1,
                      js2n.record.MinProperties 1,
                      js2n.record.Record
                        {
                          additional = 'Some (js2n.Enum [ false ]),
                          patterns = {},
                          properties = {},
                          required = {},
                        }
                    ]
                ]
            )
          ]
        | doc "A set of additional repositories where packages can be found."
        | optional,
      require
        | { _ | String }
        | doc "This is an object of package name (keys) and version constraints (values) that are required to run this package."
        | optional,
      require-dev
        | { _ | String }
        | doc "This is an object of package name (keys) and version constraints (values) that this package requires for developing it (testing tools and such)."
        | optional,
      scripts
        | {
          post-autoload-dump
            | std.contract.any_of [ String, Array Dyn ]
            | doc "Occurs after the autoloader is dumped, contains one or more Class::method callables or shell commands."
            | optional,
          post-create-project-cmd
            | std.contract.any_of [ String, Array Dyn ]
            | doc "Occurs after the create-project command is executed, contains one or more Class::method callables or shell commands."
            | optional,
          post-install-cmd
            | std.contract.any_of [ String, Array Dyn ]
            | doc "Occurs after the install command is executed, contains one or more Class::method callables or shell commands."
            | optional,
          post-package-install
            | std.contract.any_of [ String, Array Dyn ]
            | doc "Occurs after a package is installed, contains one or more Class::method callables or shell commands."
            | optional,
          post-package-uninstall
            | std.contract.any_of [ String, Array Dyn ]
            | doc "Occurs after a package has been uninstalled, contains one or more Class::method callables or shell commands."
            | optional,
          post-package-update
            | std.contract.any_of [ String, Array Dyn ]
            | doc "Occurs after a package is updated, contains one or more Class::method callables or shell commands."
            | optional,
          post-root-package-install
            | std.contract.any_of [ String, Array Dyn ]
            | doc "Occurs after the root-package is installed, contains one or more Class::method callables or shell commands."
            | optional,
          post-status-cmd
            | std.contract.any_of [ String, Array Dyn ]
            | doc "Occurs after the status command is executed, contains one or more Class::method callables or shell commands."
            | optional,
          post-update-cmd
            | std.contract.any_of [ String, Array Dyn ]
            | doc "Occurs after the update command is executed, contains one or more Class::method callables or shell commands."
            | optional,
          pre-autoload-dump
            | std.contract.any_of [ String, Array Dyn ]
            | doc "Occurs before the autoloader is dumped, contains one or more Class::method callables or shell commands."
            | optional,
          pre-install-cmd
            | std.contract.any_of [ String, Array Dyn ]
            | doc "Occurs before the install command is executed, contains one or more Class::method callables or shell commands."
            | optional,
          pre-package-install
            | std.contract.any_of [ String, Array Dyn ]
            | doc "Occurs before a package is installed, contains one or more Class::method callables or shell commands."
            | optional,
          pre-package-uninstall
            | std.contract.any_of [ String, Array Dyn ]
            | doc "Occurs before a package has been uninstalled, contains one or more Class::method callables or shell commands."
            | optional,
          pre-package-update
            | std.contract.any_of [ String, Array Dyn ]
            | doc "Occurs before a package is updated, contains one or more Class::method callables or shell commands."
            | optional,
          pre-status-cmd
            | std.contract.any_of [ String, Array Dyn ]
            | doc "Occurs before the status command is executed, contains one or more Class::method callables or shell commands."
            | optional,
          pre-update-cmd
            | std.contract.any_of [ String, Array Dyn ]
            | doc "Occurs before the update command is executed, contains one or more Class::method callables or shell commands."
            | optional,
          ..
        }
        | doc "Script listeners that will be executed before/after some events."
        | optional,
      scripts-aliases
        | { _ | Array Dyn }
        | doc "Aliases for custom commands."
        | optional,
      scripts-descriptions
        | { _ | String }
        | doc "Descriptions for custom commands, shown in console help."
        | optional,
      source | refs."definitions.source" | optional,
      suggest
        | { _ | String }
        | doc "This is an object of package name (keys) and descriptions (values) that this package suggests work well with it (this will be suggested to the user during installation)."
        | optional,
      support
        | {
          chat | String | doc "URL to the support chat." | optional,
          docs | String | doc "URL to the documentation." | optional,
          email | String | doc "Email address for support." | optional,
          forum | String | doc "URL to the forum." | optional,
          irc
            | String
            | doc "IRC channel for support, as irc://server/channel."
            | optional,
          issues | String | doc "URL to the issue tracker." | optional,
          rss | String | doc "URL to the RSS feed." | optional,
          security
            | String
            | doc "URL to the vulnerability disclosure policy (VDP)."
            | optional,
          source
            | String
            | doc "URL to browse or download the sources."
            | optional,
          wiki | String | doc "URL to the wiki." | optional,
          ..
        }
        | optional,
      target-dir
        | String
        | doc "DEPRECATED: Forces the package to be installed into the given subdirectory path. This is used for autoloading PSR-0 packages that do not contain their full path. Use forward slashes for cross-platform compatibility."
        | optional,
      time
        | String
        | doc "Package release date, in 'YYYY-MM-DD', 'YYYY-MM-DD HH:MM:SS' or 'YYYY-MM-DDTHH:MM:SSZ' format."
        | optional,
      type
        | js2n.string.Matches "^[a-z0-9-]+$"
        | doc "Package type, either 'library' for common packages, 'composer-plugin' for plugins, 'metapackage' for empty packages, or a custom type ([a-z0-9-]+) defined by whatever project this package applies to."
        | optional,
      version
        | js2n.string.Matches
          "^[vV]?\\d+(?:[.-]\\d+){0,3}[._-]?(?:(?:[sS][tT][aA][bB][lL][eE]|[bB][eE][tT][aA]|[bB]|[rR][cC]|[aA][lL][pP][hH][aA]|[aA]|[pP][aA][tT][cC][hH]|[pP][lL]|[pP])(?:(?:[.-]?\\d+)*+)?)?(?:[.-]?[dD][eE][vV]|\\.x-dev)?(?:\\+.*)?$|^dev-.*$"
        | doc "Package version, see https://getcomposer.org/doc/04-schema.md#version for more info on valid schemes."
        | optional,
      ..
    }