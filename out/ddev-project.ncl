# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.DdevTask" =
        Array
            {
              composer | String | optional,
              exec | String | optional,
              exec-host | String | optional,
              ..
            },
    }
    in
  {
      additional_fqdns
        | js2n.array.UniqueItems
        | Array String
        | doc "A comma-delimited list of FQDNs for the project."
        | optional,
      additional_hostnames
        | js2n.array.UniqueItems
        | Array String
        | doc "A comma-delimited list of hostnames for the project."
        | optional,
      bind_all_interfaces
        | Bool
        | doc "Bind host ports on all interfaces, not just on localhost network interface."
        | optional,
      composer_root
        | String
        | doc "The relative path, from the project root, to the directory containing composer.json. (This is where all Composer-related commands are executed.)"
        | optional,
      composer_version
        | String
        | doc "Composer version for the web container and the ddev composer command."
        | optional,
      corepack_enable
        | Bool
        | doc "Whether to \"corepack enable\" on Node.js configuration."
        | optional,
      database
        | js2n.IfThenElse
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
                  properties = { type = js2n.Const "mariadb", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                version
                  | std.enum.TagOrString
                  | [|
                    '"11.4",
                    '"10.11",
                    '"10.8",
                    '"10.7",
                    '"10.6",
                    '"10.5",
                    '"10.4",
                    '"10.3",
                    '"10.2",
                    '"10.1",
                    '"10.0",
                    '"5.5"
                  |]
                  | optional,
                ..
              },
              Array Dyn
            ])
          (js2n.IfThenElse
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
                    properties = { type = js2n.Const "mysql", },
                    required = {},
                  },
                Array Dyn
              ])
            (std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                {
                  version
                    | std.enum.TagOrString
                    | [| '"8.4", '"8.0", '"5.7", '"5.6", '"5.5" |]
                    | optional,
                  ..
                },
                Array Dyn
              ])
            (js2n.IfThenElse
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
                      properties = { type = js2n.Const "postgres", },
                      required = {},
                    },
                  Array Dyn
                ])
              (std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    version
                      | std.enum.TagOrString
                      | [|
                        '"17",
                        '"16",
                        '"15",
                        '"14",
                        '"13",
                        '"12",
                        '"11",
                        '"10",
                        '"9"
                      |]
                      | optional,
                    ..
                  },
                  Array Dyn
                ])
              (std.contract.not
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "version" ],
                    Array Dyn
                  ]))))
        | {
          type
            | std.enum.TagOrString
            | [| 'postgres, 'mysql, 'mariadb |]
            | doc "Specify the database type to use."
            | optional,
          version
            | String
            | doc "Specify the database version to use."
            | optional,
          ..
        }
        | doc "Specify the database type and version to use."
        | optional,
      dbimage_extra_packages
        | js2n.array.UniqueItems
        | Array String
        | doc "A list of Debian packages that should be added to db container when the project is started."
        | optional,
      ddev_version_constraint
        | String
        | doc "Validate that ddev version being used is valid within this constraint."
        | optional,
      default_container_timeout
        | std.contract.any_of [ std.number.Integer, String ]
        | doc "Seconds DDEV will wait for all containers to become ready."
        | optional,
      disable_settings_management
        | Bool
        | doc "Prevent ddev from creating or updating CMS settings files."
        | optional,
      disable_upload_dirs_warning
        | Bool
        | doc "Whether to disable the standard warning issued when a project is using performance_mode: mutagen but upload_dirs is not configured."
        | optional,
      docroot
        | String
        | doc "Provide the relative docroot of the project, like 'docroot' or 'htdocs' or 'web', defaults to empty, the current directory."
        | optional,
      fail_on_hook_fail
        | Bool
        | doc "Decide whether 'ddev start' should be interrupted by a failing hook."
        | optional,
      hooks
        | {
          post-composer | refs."definitions.DdevTask" | optional,
          post-config | refs."definitions.DdevTask" | optional,
          post-delete-snapshot | refs."definitions.DdevTask" | optional,
          post-exec | refs."definitions.DdevTask" | optional,
          post-import-db | refs."definitions.DdevTask" | optional,
          post-import-files | refs."definitions.DdevTask" | optional,
          post-pause | refs."definitions.DdevTask" | optional,
          post-pull | refs."definitions.DdevTask" | optional,
          post-push | refs."definitions.DdevTask" | optional,
          post-restore-snapshot | refs."definitions.DdevTask" | optional,
          post-snapshot | refs."definitions.DdevTask" | optional,
          post-start | refs."definitions.DdevTask" | optional,
          post-stop | refs."definitions.DdevTask" | optional,
          pre-composer | refs."definitions.DdevTask" | optional,
          pre-config | refs."definitions.DdevTask" | optional,
          pre-delete-snapshot | refs."definitions.DdevTask" | optional,
          pre-exec | refs."definitions.DdevTask" | optional,
          pre-import-db | refs."definitions.DdevTask" | optional,
          pre-import-files | refs."definitions.DdevTask" | optional,
          pre-pause | refs."definitions.DdevTask" | optional,
          pre-pull | refs."definitions.DdevTask" | optional,
          pre-push | refs."definitions.DdevTask" | optional,
          pre-restore-snapshot | refs."definitions.DdevTask" | optional,
          pre-snapshot | refs."definitions.DdevTask" | optional,
          pre-start | refs."definitions.DdevTask" | optional,
          pre-stop | refs."definitions.DdevTask" | optional,
          ..
        }
        | doc "Run tasks before or after main DDEV commands are executed."
        | optional,
      host_db_port
        | String
        | doc "The db container's localhost-bound port."
        | optional,
      host_https_port
        | String
        | doc "The web container's localhost-bound https port."
        | optional,
      host_mailpit_port
        | String
        | doc "The mailpit localhost-bound port."
        | optional,
      host_webserver_port
        | String
        | doc "The web container's localhost-bound port."
        | optional,
      mailpit_http_port
        | String
        | doc "Router port to be used for mailpit access."
        | optional,
      mailpit_https_port
        | String
        | doc "Router port to be used for mailpit access (https)."
        | optional,
      name
        | String
        | doc "Provide the name of the project to configure (normally the same as the last part of directory name)."
        | optional,
      ngrok_args
        | String
        | doc "Provide extra args to ngrok in ddev share."
        | optional,
      no_project_mount
        | Bool
        | doc "Whether to skip mounting project into web container."
        | optional,
      nodejs_version
        | String
        | doc "Node.js version for the web container's \"system\" version."
        | optional,
      omit_containers
        | js2n.array.UniqueItems
        | Array (
          std.contract.Sequence
            [ std.enum.TagOrString, [| 'ddev-ssh-agent, 'db |] ]
        )
        | doc "A list of container types that should not be started when the project is started."
        | optional,
      override_config
        | Bool
        | doc "Whether to override config values instead of merging."
        | optional,
      performance_mode
        | std.enum.TagOrString
        | [| 'nfs, 'mutagen, 'none, 'global |]
        | doc "Defines the performance optimization mode to be used. Currently Mutagen asynchronous caching and NFS are supported. Mutagen is enabled by default on Mac and Windows."
        | optional,
      php_version
        | std.enum.TagOrString
        | [|
          '"8.4",
          '"8.3",
          '"8.2",
          '"8.1",
          '"8.0",
          '"7.4",
          '"7.3",
          '"7.2",
          '"7.1",
          '"7.0",
          '"5.6"
        |]
        | doc "The PHP version the project should use."
        | optional,
      project_tld
        | String
        | doc "Set the top-level domain to be used for projects, defaults to ddev.site (default \"ddev.site\")."
        | optional,
      router_http_port
        | String
        | doc "The router HTTP port for this project."
        | optional,
      router_https_port
        | String
        | doc "The router HTTPS port for this project."
        | optional,
      timezone
        | String
        | doc "Specify timezone for containers and PHP."
        | optional,
      type
        | std.enum.TagOrString
        | [|
          'wordpress,
          'typo3,
          'symfony,
          'silverstripe,
          'shopware6,
          'php,
          'magento2,
          'magento,
          'laravel,
          'generic,
          'drupal11,
          'drupal10,
          'drupal9,
          'drupal8,
          'drupal7,
          'drupal6,
          'drupal,
          'craftcms,
          'cakephp,
          'backdrop
        |]
        | doc "Provide the project type."
        | optional,
      upload_dirs
        | Array String
        | doc "Sets multiple project upload directories, the first is taken as the destination directory of the import-files command."
        | optional,
      use_dns_when_possible
        | Bool
        | doc "Use DNS for hostname resolution instead of /etc/hosts when possible."
        | optional,
      web_environment
        | Array String
        | doc "Add environment variables to the web container."
        | optional,
      web_extra_daemons
        | Array
          {
            command | String | optional,
            directory | String | optional,
            name | String | optional,
          }
        | doc "Additional daemons that should automatically be started in the web container."
        | optional,
      web_extra_exposed_ports
        | Array
          {
            container_port | std.number.Integer | optional,
            http_port | std.number.Integer | optional,
            https_port | std.number.Integer | optional,
            name | String | optional,
          }
        | doc "Additional named sets of ports to expose via ddev-router."
        | optional,
      webimage | String | doc "Sets the web container image." | optional,
      webimage_extra_packages
        | Array String
        | doc "A list of Debian packages that should be added to web container when the project is started."
        | optional,
      webserver_type
        | std.enum.TagOrString
        | [| 'generic, 'apache-fpm, 'nginx-fpm |]
        | doc "Sets the project's desired webserver type."
        | optional,
      working_dir
        | {
          db
            | String
            | doc "Overrides the default working directory for the db service."
            | optional,
          web
            | String
            | doc "Overrides the default working directory for the web service."
            | optional,
          ..
        }
        | doc "Override default project working directories for db and web service."
        | optional,
      xdebug_enabled
        | Bool
        | doc "Whether or not Xdebug is enabled in the web container."
        | optional,
      xhprof_mode
        | std.enum.TagOrString
        | [| 'xhgui, 'prepend, 'global |]
        | doc "Defines the xhprof usage mode used by the project."
        | optional,
    }