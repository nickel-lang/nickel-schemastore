# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.trayOptionsItem" =
        {
            action
              | String
              | doc "Action to perform when user clicks this menu item. 'openfilesystem', 'openbrowser', or 'stopserver'"
              | optional,
            disabled
              | Bool
              | doc "Turn menu item grey and nothing happens when clicking on it"
              | optional,
            hotkey
              | String
              | doc "Keyboard shortcut to choose this menu item"
              | optional,
            image
              | String
              | doc "Path to PNG image to display on menu item next to the label"
              | optional,
            items
              | js2n.array.MinItems 0
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | doc "Nested menu items"
              | optional,
            label | String | doc "Text of menu item" | optional,
            path
              | String
              | doc "Filesystem path to open for 'openfilesystem' action"
              | optional,
            url
              | String
              | doc "Url to open for 'openbrowser' action"
              | optional,
            ..
          },
    }
    in
  {
      app
        | {
          WARPath
            | String
            | doc "Path to a local WAR archive or exploded WAR folder.  Mutually exclusive with cfengine."
            | optional,
          cfengine
            | String
            | doc "An Endpoint ID that resolves to a CF engine such as 'adobe' or 'lucee'. Include version as 'adobe@2016'"
            | optional,
          libDirs
            | String
            | doc "A comma-delimited list of directories from which CommandBox will load JARs"
            | optional,
          logDir
            | String
            | doc "The folder path where the servlet out, rewrite, and access log are written to"
            | optional,
          restMappings
            | String
            | doc "Comma delimited list of paths to map to the CF engine's REST servlet such as '/rest/*,/api/*'"
            | optional,
          serverConfigDir
            | String
            | doc "Directory for Lucee/Railo server context"
            | optional,
          serverHomeDirectory
            | String
            | doc "Path to folder where the server WAR will be expanded"
            | optional,
          sessionCookieHTTPOnly
            | Bool
            | doc "Enable HTTP-only session cookies"
            | optional,
          sessionCookieSecure
            | Bool
            | doc "Enable secure session cookies"
            | optional,
          webConfigDir
            | String
            | doc "Directory for Lucee/Railo web context"
            | optional,
          webXML | String | doc "Path to web.xml file" | optional,
          ..
        }
        | doc "Application Server Options"
        | optional,
      console
        | Bool
        | doc "Start the server in console mode instead of in the background"
        | optional,
      debug | Bool | doc "Enable debug level logging for server" | optional,
      jvm
        | {
          args
            | String
            | doc "Ad-hoc JVM args for the server such as -X:name"
            | optional,
          heapSize
            | std.contract.any_of [ Number, String ]
            | doc "The max heap size of the server"
            | optional,
          javaHome
            | String
            | doc "Path to custom JRE. Default is the one that the CommandBox CLI is using"
            | optional,
          javaVersion
            | String
            | doc "A Java installation ID. In its entirety, it has the form <version>_<type>_<arch>_<os>_<jvm-implementation>_<release>"
            | optional,
          minHeapSize
            | std.contract.any_of [ Number, String ]
            | doc "The starting heap size for the server"
            | optional,
          ..
        }
        | doc "JVM Options"
        | optional,
      name | String | doc "The name of the server" | optional,
      openBrowser
        | Bool
        | doc "Controls whether browser opens by default when starting server"
        | optional,
      openBrowserURL
        | String
        | doc "Override the URL to open when starting the server"
        | optional,
      runwar
        | {
          args
            | String
            | doc "Ad-hoc options for the underlying Runwar library"
            | optional,
          ..
        }
        | doc "These settings apply to the underlying Runwar library that starts servers"
        | optional,
      startTimeout
        | Number
        | doc "The length of time in seconds to wait for the server to start"
        | optional,
      stopsocket
        | Number
        | doc "The port the server listens on to receive a stop command"
        | optional,
      trace | Bool | doc "Enable trace level logging for server" | optional,
      trayEnable
        | Bool
        | doc "Control whether the server has an associated icon in the system tray"
        | optional,
      trayOptions
        | js2n.array.MinItems 0
        | Array refs."definitions.trayOptionsItem"
        | doc "An array of custom menu items to be added to the server's tray menu"
        | optional,
      trayicon | String | doc "Path to the server's tray icon" | optional,
      web
        | {
          AJP
            | {
              enable | Bool | doc "Enable AJP for this server" | optional,
              port | Number | doc "AJP port to use" | optional,
              ..
            }
            | doc "Configure the AJP listener on the server"
            | optional,
          GZIPEnable
            | Bool
            | doc "Enable GZip compression in HTTP responses"
            | optional,
          HTTP
            | {
              enable | Bool | doc "Enable HTTP for this serer" | optional,
              port | Number | doc "HTTP port to use" | optional,
              ..
            }
            | doc "Configure the HTTP listener on the server"
            | optional,
          SSL
            | {
              certFile | String | doc "Path to SSL cert file" | optional,
              enable | Bool | doc "Enable HTTPS for this server" | optional,
              keyFile | String | doc "Path to SSL key file" | optional,
              keyPass | String | doc "Password for SSL key file" | optional,
              port | Number | doc "HTTPS port to use" | optional,
              ..
            }
            | doc "Configure the HTTPS listener on the server"
            | optional,
          accessLogEnable
            | Bool
            | doc "Enable web server access log"
            | optional,
          aliases
            | { _ | String }
            | js2n.record.FieldsMatch "^(/[^/]+)+$"
            | doc "Web aliases for the web server, similar to virtual directories"
            | optional,
          basicAuth
            | {
              enable
                | Bool
                | doc "Enable basic auth for this server"
                | optional,
              users
                | { _ | String }
                | doc "Users who can authenticate to basic auth"
                | optional,
              ..
            }
            | doc ""
            | optional,
          directoryBrowsing
            | Bool
            | doc "Enables file listing for directories with no welcome file"
            | optional,
          errorPages
            | js2n.record.Record
              {
                additional = 'None,
                patterns = { "^[1-5][0-9]{2}$" = String, },
                properties = { "default" = String, },
                required = {},
              }
            | doc "The error pages that CommandBox servers return. You can have a setting for each status code including a default error page to be used if no other setting applies"
            | optional,
          host | String | doc "The default host name of the server" | optional,
          rewrites
            | {
              config
                | String
                | doc "Path to xml config file or .htaccess"
                | optional,
              configReloadSeconds
                | Number
                | doc "Number of seconds to check rewrite config file for changes"
                | optional,
              enable
                | Bool
                | doc "Enable URL Rewrites on this server"
                | optional,
              logEnable | Bool | doc "Enable Rewrite log file" | optional,
              statusPath
                | String
                | doc "URL path to visit Tuckey status page like '/tuckey-status'"
                | optional,
              ..
            }
            | doc "Configure URL Rewrites"
            | optional,
          webroot | String | doc "Webroot directory" | optional,
          welcomeFiles
            | String
            | doc "A comma-delimited list of files that you would like CommandBox to look for when a user hits a directory"
            | optional,
          ..
        }
        | doc "Web Server Options"
        | optional,
      ..
    }