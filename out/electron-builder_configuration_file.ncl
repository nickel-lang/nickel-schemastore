# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AppImageOptions" =
        {
            artifactName
              | js2n.Nullable String
              | doc "The [artifact file name template](/configuration/configuration#artifact-file-name-template)."
              | optional,
            category
              | js2n.Nullable String
              | doc "The [application category](https://specifications.freedesktop.org/menu-spec/latest/apa.html#main-category-registry)."
              | optional,
            description
              | js2n.Nullable String
              | doc "As [description](/configuration/configuration#Metadata-description) from application package.json, but allows you to specify different for Linux."
              | optional,
            desktop
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "The [Desktop file](https://developer.gnome.org/integration-guide/stable/desktop-files.html.en) entries (name to value)."
              | optional,
            license
              | js2n.Nullable String
              | doc "The path to EULA license file. Defaults to `license.txt` or `eula.txt` (or uppercase variants). Only plain text is supported."
              | optional,
            mimeTypes
              | js2n.Nullable (Array String)
              | doc "The mime types in addition to specified in the file associations. Use it if you don't want to register a new mime type, but reuse existing."
              | optional,
            publish
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.GithubOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.S3Options", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.GenericServerOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CustomPublishOptions", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.GithubOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.S3Options", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.GenericServerOptions",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.CustomPublishOptions",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  js2n.Null,
                  String
                ]
              | optional,
            synopsis
              | js2n.Nullable String
              | doc "The [short description](https://www.debian.org/doc/debian-policy/ch-controlfields.html#s-f-Description)."
              | optional,
            systemIntegration
              | std.enum.TagOrString
              | [| 'doNotAsk, 'ask |]
              | doc "The system integration installation."
              | optional,
          },
      "definitions.AppXOptions" =
        {
            addAutoLaunchExtension
              | Bool
              | doc "Whether to add auto launch extension. Defaults to `true` if [electron-winstore-auto-launch](https://github.com/felixrieseberg/electron-winstore-auto-launch) in the dependencies."
              | optional,
            applicationId
              | String
              | doc "The application id. Defaults to `identityName`. Can't start with numbers."
              | optional,
            artifactName
              | js2n.Nullable String
              | doc "The [artifact file name template](/configuration/configuration#artifact-file-name-template)."
              | optional,
            backgroundColor
              | js2n.Nullable String
              | doc "The background color of the app tile. See [Visual Elements](https://msdn.microsoft.com/en-us/library/windows/apps/br211471.aspx)."
              | optional,
            displayName
              | js2n.Nullable String
              | doc m%"
                A friendly name that can be displayed to users. Corresponds to [Properties.DisplayName](https://msdn.microsoft.com/en-us/library/windows/apps/br211432.aspx).
                Defaults to the application product name.
              "%
              | optional,
            electronUpdaterAware | Bool | optional,
            identityName
              | js2n.Nullable String
              | doc "The name. Corresponds to [Identity.Name](https://msdn.microsoft.com/en-us/library/windows/apps/br211441.aspx). Defaults to the [application name](/configuration/configuration#Metadata-name)."
              | optional,
            languages
              | std.contract.any_of [ Array String, js2n.Null, String ]
              | doc m%"
                The list of [supported languages](https://docs.microsoft.com/en-us/windows/uwp/globalizing/manage-language-and-region#specify-the-supported-languages-in-the-apps-manifest) that will be listed in the Windows Store.
                The first entry (index 0) will be the default language.
                Defaults to en-US if omitted.
              "%
              | optional,
            makeappxArgs | js2n.Nullable (Array String) | optional,
            publish
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.GithubOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.S3Options", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.GenericServerOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CustomPublishOptions", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.GithubOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.S3Options", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.GenericServerOptions",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.CustomPublishOptions",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  js2n.Null,
                  String
                ]
              | optional,
            publisher
              | js2n.Nullable String
              | doc "The Windows Store publisher. Not used if AppX is build for testing. See [AppX Package Code Signing](#appx-package-code-signing) below."
              | optional,
            publisherDisplayName
              | js2n.Nullable String
              | doc m%"
                A friendly name for the publisher that can be displayed to users. Corresponds to [Properties.PublisherDisplayName](https://msdn.microsoft.com/en-us/library/windows/apps/br211460.aspx).
                Defaults to company name from the application metadata.
              "%
              | optional,
            setBuildNumber
              | Bool
              | doc "Whether to set build number. See https://github.com/electron-userland/electron-builder/issues/3875"
              | optional,
            showNameOnTiles
              | Bool
              | doc "Whether to overlay the app's name on top of tile images on the Start screen. Defaults to `false`. (https://docs.microsoft.com/en-us/uwp/schemas/appxpackage/uapmanifestschema/element-uap-shownameontiles) in the dependencies."
              | optional,
          },
      "definitions.AsarOptions" =
        {
            externalAllowed
              | Bool
              | doc "Allows external asar files."
              | optional,
            ordering | js2n.Nullable String | optional,
            smartUnpack
              | Bool
              | doc "Whether to automatically unpack executables files."
              | optional,
          },
      "definitions.BintrayOptions" =
        {
            component
              | js2n.Nullable String
              | doc "The Bintray component (Debian only)."
              | optional,
            distribution
              | js2n.Nullable String
              | doc "The Bintray distribution (Debian only)."
              | optional,
            owner | js2n.Nullable String | doc "The owner." | optional,
            package
              | js2n.Nullable String
              | doc "The Bintray package name."
              | optional,
            provider
              | std.enum.TagOrString
              | [| 'bintray |]
              | doc "The provider. Must be `bintray`.",
            publishAutoUpdate
              | Bool
              | doc m%"
                Whether to publish auto update info files.
                
                Auto update relies only on the first provider in the list (you can specify several publishers).
                Thus, probably, there`s no need to upload the metadata files for the other configured providers. But by default will be uploaded.
              "%
              | optional,
            publisherName | js2n.Nullable (Array String) | optional,
            repo
              | js2n.Nullable String
              | doc "The Bintray repository name."
              | optional,
            token | js2n.Nullable String | optional,
            updaterCacheDirName | js2n.Nullable String | optional,
            user
              | js2n.Nullable String
              | doc "The Bintray user account. Used in cases where the owner is an organization."
              | optional,
          },
      "definitions.CustomPublishOptions" =
        {
            provider
              | refs."definitions.PublishProvider"
              | String
              | doc "The provider.",
            publishAutoUpdate
              | Bool
              | doc m%"
                Whether to publish auto update info files.
                
                Auto update relies only on the first provider in the list (you can specify several publishers).
                Thus, probably, there`s no need to upload the metadata files for the other configured providers. But by default will be uploaded.
              "%
              | optional,
            publisherName | js2n.Nullable (Array String) | optional,
            updaterCacheDirName | js2n.Nullable String | optional,
            ..
          },
      "definitions.DebOptions" =
        {
            afterInstall | js2n.Nullable String | optional,
            afterRemove | js2n.Nullable String | optional,
            artifactName
              | js2n.Nullable String
              | doc "The [artifact file name template](/configuration/configuration#artifact-file-name-template)."
              | optional,
            category
              | js2n.Nullable String
              | doc "The [application category](https://specifications.freedesktop.org/menu-spec/latest/apa.html#main-category-registry)."
              | optional,
            compression
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.enum.TagOrString, [| 'xz, 'gz, 'bzip2 |] ])
              | doc "The compression type."
              | optional,
            depends
              | js2n.Nullable (Array String)
              | doc "Package dependencies. Defaults to `[\"gconf2\", \"gconf-service\", \"libnotify4\", \"libappindicator1\", \"libxtst6\", \"libnss3\"]`."
              | optional,
            description
              | js2n.Nullable String
              | doc "As [description](/configuration/configuration#Metadata-description) from application package.json, but allows you to specify different for Linux."
              | optional,
            desktop
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "The [Desktop file](https://developer.gnome.org/integration-guide/stable/desktop-files.html.en) entries (name to value)."
              | optional,
            fpm
              | js2n.Nullable (Array String)
              | doc m%"
                *Advanced only* The [fpm](https://github.com/jordansissel/fpm/wiki#usage) options.
                
                Example: `["--before-install=build/deb-preinstall.sh", "--after-upgrade=build/deb-postinstall.sh"]`
              "%
              | optional,
            icon | String | optional,
            maintainer | js2n.Nullable String | optional,
            mimeTypes
              | js2n.Nullable (Array String)
              | doc "The mime types in addition to specified in the file associations. Use it if you don't want to register a new mime type, but reuse existing."
              | optional,
            packageCategory
              | js2n.Nullable String
              | doc "The [package category](https://www.debian.org/doc/debian-policy/ch-controlfields.html#s-f-Section)."
              | optional,
            "priority"
              | js2n.Nullable String
              | doc "The [Priority](https://www.debian.org/doc/debian-policy/ch-controlfields.html#s-f-Priority) attribute."
              | optional,
            publish
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.GithubOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.S3Options", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.GenericServerOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CustomPublishOptions", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.GithubOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.S3Options", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.GenericServerOptions",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.CustomPublishOptions",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  js2n.Null,
                  String
                ]
              | optional,
            synopsis
              | js2n.Nullable String
              | doc "The [short description](https://www.debian.org/doc/debian-policy/ch-controlfields.html#s-f-Description)."
              | optional,
            vendor | js2n.Nullable String | optional,
          },
      "definitions.DmgContent" =
        {
            name
              | String
              | doc "The name of the file within the DMG. Defaults to basename of `path`."
              | optional,
            path
              | String
              | doc "The path of the file within the DMG."
              | optional,
            type | std.enum.TagOrString | [| 'link, 'file, 'dir |] | optional,
            x | Number,
            y | Number,
          },
      "definitions.DmgOptions" =
        {
            artifactName
              | js2n.Nullable String
              | doc "The [artifact file name template](/configuration/configuration#artifact-file-name-template)."
              | optional,
            background
              | js2n.Nullable String
              | doc m%"
                The path to background image (default: `build/background.tiff` or `build/background.png` if exists). The resolution of this file determines the resolution of the installer window.
                If background is not specified, use `window.size`. Default locations expected background size to be 540x380.
              "%
              | optional,
            backgroundColor
              | js2n.Nullable String
              | doc "The background color (accepts css colors). Defaults to `#ffffff` (white) if no background image."
              | optional,
            contents
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DmgContent", { _ | Dyn } ]
              )
              | doc "The content — to customize icon locations."
              | optional,
            format
              | std.enum.TagOrString
              | [| 'ULFO, 'UDZO, 'UDRW, 'UDRO, 'UDCO, 'UDBZ |]
              | doc "The disk image format. `ULFO` (lzfse-compressed image (OS X 10.11+ only))."
              | optional,
            icon
              | js2n.Nullable String
              | doc m%"
                The path to DMG icon (volume icon), which will be shown when mounted, relative to the [build resources](/configuration/configuration#MetadataDirectories-buildResources) or to the project directory.
                Defaults to the application icon (`build/icon.icns`).
              "%
              | optional,
            iconSize
              | js2n.Nullable Number
              | doc "The size of all the icons inside the DMG."
              | optional,
            iconTextSize
              | js2n.Nullable Number
              | doc "The size of all the icon texts inside the DMG."
              | optional,
            internetEnabled
              | Bool
              | doc "Whether to create internet-enabled disk image (when it is downloaded using a browser it will automatically decompress the image, put the application on the desktop, unmount and remove the disk image file)."
              | optional,
            publish
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.GithubOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.S3Options", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.GenericServerOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CustomPublishOptions", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.GithubOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.S3Options", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.GenericServerOptions",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.CustomPublishOptions",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  js2n.Null,
                  String
                ]
              | optional,
            title
              | js2n.Nullable String
              | doc m%"
                The title of the produced DMG, which will be shown when mounted (volume name).
                
                Macro `${productName}`, `${version}` and `${name}` are supported.
              "%
              | optional,
            window
              | refs."definitions.DmgWindow"
              | { _ | Dyn }
              | doc "The DMG windows position and size."
              | optional,
          },
      "definitions.DmgWindow" =
        {
            height
              | Number
              | doc "The height. Defaults to background image height or 380."
              | optional,
            width
              | Number
              | doc "The width. Defaults to background image width or 540."
              | optional,
            x
              | Number
              | doc "The X position relative to left of the screen."
              | optional,
            y
              | Number
              | doc "The Y position relative to top of the screen."
              | optional,
          },
      "definitions.ElectronDownloadOptions" =
        {
            arch | String | optional,
            cache
              | js2n.Nullable String
              | doc "The [cache location](https://github.com/electron-userland/electron-download#cache-location)."
              | optional,
            customDir | js2n.Nullable String | optional,
            customFilename | js2n.Nullable String | optional,
            isVerifyChecksum | Bool | optional,
            mirror | js2n.Nullable String | doc "The mirror." | optional,
            platform
              | std.enum.TagOrString
              | [| 'win32, 'mas, 'linux, 'darwin |]
              | optional,
            strictSSL | Bool | optional,
            version | String | optional,
          },
      "definitions.FileAssociation" =
        {
            description
              | js2n.Nullable String
              | doc "*windows-only.* The description."
              | optional,
            ext
              | std.contract.any_of [ Array String, String ]
              | doc "The extension (minus the leading period). e.g. `png`.",
            icon
              | js2n.Nullable String
              | doc m%"
                The path to icon (`.icns` for MacOS and `.ico` for Windows), relative to `build` (build resources directory). Defaults to `${firstExt}.icns`/`${firstExt}.ico` (if several extensions specified, first is used) or to application icon.
                
                Not supported on Linux, file issue if need (default icon will be `x-office-document`).
              "%
              | optional,
            isPackage
              | Bool
              | doc "*macOS-only* Whether the document is distributed as a bundle. If set to true, the bundle directory is treated as a file. Corresponds to `LSTypeIsPackage`."
              | optional,
            mimeType
              | js2n.Nullable String
              | doc "*linux-only.* The mime-type."
              | optional,
            name
              | js2n.Nullable String
              | doc "The name. e.g. `PNG`. Defaults to `ext`."
              | optional,
            role
              | String
              | doc "*macOS-only* The app's role with respect to the type. The value can be `Editor`, `Viewer`, `Shell`, or `None`. Corresponds to `CFBundleTypeRole`."
              | optional,
          },
      "definitions.FileSet" =
        {
            filter
              | std.contract.any_of [ Array String, String ]
              | doc "The [glob patterns](/file-patterns)."
              | optional,
            from
              | String
              | doc "The source path relative to the project directory."
              | optional,
            to
              | String
              | doc "The destination path relative to the app's content directory for `extraFiles` and the app's resource directory for `extraResources`."
              | optional,
          },
      "definitions.GenericServerOptions" =
        {
            channel | js2n.Nullable String | doc "The channel." | optional,
            provider
              | std.enum.TagOrString
              | [| 'generic |]
              | doc "The provider. Must be `generic`.",
            publishAutoUpdate
              | Bool
              | doc m%"
                Whether to publish auto update info files.
                
                Auto update relies only on the first provider in the list (you can specify several publishers).
                Thus, probably, there`s no need to upload the metadata files for the other configured providers. But by default will be uploaded.
              "%
              | optional,
            publisherName | js2n.Nullable (Array String) | optional,
            updaterCacheDirName | js2n.Nullable String | optional,
            url
              | String
              | doc "The base url. e.g. `https://bucket_name.s3.amazonaws.com`.",
            useMultipleRangeRequest
              | Bool
              | doc "Whether to use multiple range requests for differential update. Defaults to `true` if `url` doesn't contain `s3.amazonaws.com`."
              | optional,
          },
      "definitions.GithubOptions" =
        {
            host
              | js2n.Nullable String
              | doc "The host (including the port if need)."
              | optional,
            owner | js2n.Nullable String | doc "The owner." | optional,
            private
              | js2n.Nullable Bool
              | doc "Whether to use private github auto-update provider if `GH_TOKEN` environment variable is defined. See [Private GitHub Update Repo](/auto-update#private-github-update-repo)."
              | optional,
            protocol
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.enum.TagOrString, [| 'https, 'http |] ])
              | doc "The protocol. GitHub Publisher supports only `https`."
              | optional,
            provider
              | std.enum.TagOrString
              | [| 'github |]
              | doc "The provider. Must be `github`.",
            publishAutoUpdate
              | Bool
              | doc m%"
                Whether to publish auto update info files.
                
                Auto update relies only on the first provider in the list (you can specify several publishers).
                Thus, probably, there`s no need to upload the metadata files for the other configured providers. But by default will be uploaded.
              "%
              | optional,
            publisherName | js2n.Nullable (Array String) | optional,
            releaseType
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.enum.TagOrString, [| 'release, 'prerelease, 'draft |] ])
              | doc m%"
                The type of release. By default `draft` release will be created.
                
                Also you can set release type using environment variable. If `EP_DRAFT`is set to `true` — `draft`, if `EP_PRE_RELEASE`is set to `true` — `prerelease`.
              "%
              | optional,
            repo
              | js2n.Nullable String
              | doc "The repository name. [Detected automatically](#github-repository-and-bintray-package)."
              | optional,
            token
              | js2n.Nullable String
              | doc "The access token to support auto-update from private github repositories. Never specify it in the configuration files. Only for [setFeedURL](/auto-update#appupdatersetfeedurloptions)."
              | optional,
            updaterCacheDirName | js2n.Nullable String | optional,
            vPrefixedTagName
              | Bool
              | doc "Whether to use `v`-prefixed tag name."
              | optional,
          },
      "definitions.LinuxConfiguration" =
        {
            appId
              | js2n.Nullable String
              | doc m%"
                The application id. Used as [CFBundleIdentifier](https://developer.apple.com/library/ios/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html#//apple_ref/doc/uid/20001431-102070) for MacOS and as
                [Application User Model ID](https://msdn.microsoft.com/en-us/library/windows/desktop/dd378459(v=vs.85).aspx) for Windows (NSIS target only, Squirrel.Windows not supported). It is strongly recommended that an explicit ID is set.
              "%
              | optional,
            artifactName
              | js2n.Nullable String
              | doc "The [artifact file name template](/configuration/configuration#artifact-file-name-template). Defaults to `${productName}-${version}.${ext}` (some target can have other defaults, see corresponding options)."
              | optional,
            asar
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.AsarOptions", { _ | Dyn } ],
                  js2n.Null,
                  Bool
                ]
              | doc m%"
                Whether to package the application's source code into an archive, using [Electron's archive format](http://electron.atom.io/docs/tutorial/application-packaging/).
                
                Node modules, that must be unpacked, will be detected automatically, you don't need to explicitly set [asarUnpack](#configuration-asarUnpack) - please file an issue if this doesn't work.
              "%
              | optional,
            asarUnpack
              | std.contract.any_of [ Array String, js2n.Null, String ]
              | doc "A [glob patterns](/file-patterns) relative to the [app directory](#MetadataDirectories-app), which specifies which files to unpack when creating the [asar](http://electron.atom.io/docs/tutorial/application-packaging/) archive."
              | optional,
            category
              | js2n.Nullable String
              | doc "The [application category](https://specifications.freedesktop.org/menu-spec/latest/apa.html#main-category-registry)."
              | optional,
            compression
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.enum.TagOrString, [| 'store, 'normal, 'maximum |] ])
              | doc "The compression level. If you want to rapidly test build, `store` can reduce build time significantly. `maximum` doesn't lead to noticeable size difference, but increase build time."
              | optional,
            cscKeyPassword | js2n.Nullable String | optional,
            cscLink | js2n.Nullable String | optional,
            depends | js2n.Nullable (Array String) | optional,
            description
              | js2n.Nullable String
              | doc "As [description](/configuration/configuration#Metadata-description) from application package.json, but allows you to specify different for Linux."
              | optional,
            desktop
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "The [Desktop file](https://developer.gnome.org/integration-guide/stable/desktop-files.html.en) entries (name to value)."
              | optional,
            detectUpdateChannel
              | Bool
              | doc "Whether to infer update channel from application version pre-release components. e.g. if version `0.12.1-alpha.1`, channel will be set to `alpha`. Otherwise to `latest`."
              | optional,
            electronUpdaterCompatibility
              | js2n.Nullable String
              | doc "The [electron-updater compatibility](/auto-update#compatibility) semver range."
              | optional,
            executableName
              | js2n.Nullable String
              | doc m%"
                The executable name. Defaults to `productName`.
                Cannot be specified per target, allowed only in the `linux`.
              "%
              | optional,
            extraFiles
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FileSet", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.FileSet", { _ | Dyn } ],
                        String
                      ]
                  ),
                  js2n.Null,
                  String
                ]
              | optional,
            extraResources
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FileSet", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.FileSet", { _ | Dyn } ],
                        String
                      ]
                  ),
                  js2n.Null,
                  String
                ]
              | optional,
            fileAssociations
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FileAssociation", { _ | Dyn } ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.FileAssociation", { _ | Dyn } ]
                  )
                ]
              | doc "The file associations."
              | optional,
            files
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FileSet", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.FileSet", { _ | Dyn } ],
                        String
                      ]
                  ),
                  js2n.Null,
                  String
                ]
              | optional,
            forceCodeSigning
              | Bool
              | doc "Whether to fail if app will be not code signed."
              | optional,
            generateUpdatesFilesForAllChannels
              | Bool
              | doc "Please see [Building and Releasing using Channels](https://github.com/electron-userland/electron-builder/issues/1182#issuecomment-324947139)."
              | optional,
            icon
              | String
              | doc m%"
                The path to icon set directory or one png file, relative to the [build resources](/configuration/configuration#MetadataDirectories-buildResources) or to the project directory. The icon filename must contain the size (e.g. 32x32.png) of the icon.
                By default will be generated automatically based on the macOS icns file.
              "%
              | optional,
            maintainer
              | js2n.Nullable String
              | doc "The maintainer. Defaults to [author](/configuration/configuration#Metadata-author)."
              | optional,
            mimeTypes
              | js2n.Nullable (Array String)
              | doc "The mime types in addition to specified in the file associations. Use it if you don't want to register a new mime type, but reuse existing."
              | optional,
            packageCategory
              | js2n.Nullable String
              | doc "backward compatibility + to allow specify fpm-only category for all possible fpm targets in one place"
              | optional,
            protocols
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Protocol", { _ | Dyn } ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.Protocol", { _ | Dyn } ]
                  )
                ]
              | doc "The URL protocol schemes."
              | optional,
            publish
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.GithubOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.S3Options", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.GenericServerOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CustomPublishOptions", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.GithubOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.S3Options", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.GenericServerOptions",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.CustomPublishOptions",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  js2n.Null,
                  String
                ]
              | optional,
            releaseInfo
              | refs."definitions.ReleaseInfo"
              | { _ | Dyn }
              | doc m%"
                The release info. Intended for command line usage:
                
                ```
                -c.releaseInfo.releaseNotes="new features"
                ```
              "%
              | optional,
            synopsis
              | js2n.Nullable String
              | doc "The [short description](https://www.debian.org/doc/debian-policy/ch-controlfields.html#s-f-Description)."
              | optional,
            target
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.TargetConfiguration", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            refs."definitions.TargetConfiguration",
                            { _ | Dyn }
                          ],
                        String
                      ]
                  ),
                  js2n.Null,
                  String
                ]
              | doc m%"
                Target package type: list of `AppImage`, `snap`, `deb`, `rpm`, `freebsd`, `pacman`, `p5p`, `apk`, `7z`, `zip`, `tar.xz`, `tar.lz`, `tar.gz`, `tar.bz2`, `dir`.
                
                electron-builder [docker image](/multi-platform-build#docker) can be used to build Linux targets on any platform.
                
                Please [do not put an AppImage into another archive](https://github.com/probonopd/AppImageKit/wiki/Creating-AppImages#common-mistake) like a .zip or .tar.gz.
              "%
              | optional,
            vendor
              | js2n.Nullable String
              | doc "The vendor. Defaults to [author](/configuration/configuration#Metadata-author)."
              | optional,
          },
      "definitions.LinuxTargetSpecificOptions" =
        {
            afterInstall | js2n.Nullable String | optional,
            afterRemove | js2n.Nullable String | optional,
            artifactName
              | js2n.Nullable String
              | doc "The [artifact file name template](/configuration/configuration#artifact-file-name-template)."
              | optional,
            category
              | js2n.Nullable String
              | doc "The [application category](https://specifications.freedesktop.org/menu-spec/latest/apa.html#main-category-registry)."
              | optional,
            compression
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.enum.TagOrString, [| 'xz, 'gz, 'bzip2 |] ])
              | doc "The compression type."
              | optional,
            depends
              | js2n.Nullable (Array String)
              | doc "Package dependencies."
              | optional,
            description
              | js2n.Nullable String
              | doc "As [description](/configuration/configuration#Metadata-description) from application package.json, but allows you to specify different for Linux."
              | optional,
            desktop
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "The [Desktop file](https://developer.gnome.org/integration-guide/stable/desktop-files.html.en) entries (name to value)."
              | optional,
            fpm
              | js2n.Nullable (Array String)
              | doc m%"
                *Advanced only* The [fpm](https://github.com/jordansissel/fpm/wiki#usage) options.
                
                Example: `["--before-install=build/deb-preinstall.sh", "--after-upgrade=build/deb-postinstall.sh"]`
              "%
              | optional,
            icon | String | optional,
            maintainer | js2n.Nullable String | optional,
            mimeTypes
              | js2n.Nullable (Array String)
              | doc "The mime types in addition to specified in the file associations. Use it if you don't want to register a new mime type, but reuse existing."
              | optional,
            packageCategory
              | js2n.Nullable String
              | doc "The package category."
              | optional,
            publish
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.GithubOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.S3Options", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.GenericServerOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CustomPublishOptions", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.GithubOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.S3Options", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.GenericServerOptions",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.CustomPublishOptions",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  js2n.Null,
                  String
                ]
              | optional,
            synopsis
              | js2n.Nullable String
              | doc "The [short description](https://www.debian.org/doc/debian-policy/ch-controlfields.html#s-f-Description)."
              | optional,
            vendor | js2n.Nullable String | optional,
          },
      "definitions.MacConfiguration" =
        {
            appId
              | js2n.Nullable String
              | doc m%"
                The application id. Used as [CFBundleIdentifier](https://developer.apple.com/library/ios/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html#//apple_ref/doc/uid/20001431-102070) for MacOS and as
                [Application User Model ID](https://msdn.microsoft.com/en-us/library/windows/desktop/dd378459(v=vs.85).aspx) for Windows (NSIS target only, Squirrel.Windows not supported). It is strongly recommended that an explicit ID is set.
              "%
              | optional,
            artifactName
              | js2n.Nullable String
              | doc "The [artifact file name template](/configuration/configuration#artifact-file-name-template). Defaults to `${productName}-${version}.${ext}` (some target can have other defaults, see corresponding options)."
              | optional,
            asar
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.AsarOptions", { _ | Dyn } ],
                  js2n.Null,
                  Bool
                ]
              | doc m%"
                Whether to package the application's source code into an archive, using [Electron's archive format](http://electron.atom.io/docs/tutorial/application-packaging/).
                
                Node modules, that must be unpacked, will be detected automatically, you don't need to explicitly set [asarUnpack](#configuration-asarUnpack) - please file an issue if this doesn't work.
              "%
              | optional,
            asarUnpack
              | std.contract.any_of [ Array String, js2n.Null, String ]
              | doc "A [glob patterns](/file-patterns) relative to the [app directory](#MetadataDirectories-app), which specifies which files to unpack when creating the [asar](http://electron.atom.io/docs/tutorial/application-packaging/) archive."
              | optional,
            binaries
              | js2n.Nullable (Array String)
              | doc "Paths of any extra binaries that need to be signed."
              | optional,
            bundleShortVersion
              | js2n.Nullable String
              | doc "The `CFBundleShortVersionString`. Do not use it unless you need to."
              | optional,
            bundleVersion
              | js2n.Nullable String
              | doc "The `CFBundleVersion`. Do not use it unless [you need to](https://github.com/electron-userland/electron-builder/issues/565#issuecomment-230678643)."
              | optional,
            category
              | js2n.Nullable String
              | doc m%"
                The application category type, as shown in the Finder via *View -> Arrange by Application Category* when viewing the Applications directory.
                
                For example, `"category": "public.app-category.developer-tools"` will set the application category to *Developer Tools*.
                
                Valid values are listed in [Apple's documentation](https://developer.apple.com/library/ios/documentation/General/Reference/InfoPlistKeyReference/Articles/LaunchServicesKeys.html#//apple_ref/doc/uid/TP40009250-SW8).
              "%
              | optional,
            compression
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.enum.TagOrString, [| 'store, 'normal, 'maximum |] ])
              | doc "The compression level. If you want to rapidly test build, `store` can reduce build time significantly. `maximum` doesn't lead to noticeable size difference, but increase build time."
              | optional,
            cscInstallerKeyPassword | js2n.Nullable String | optional,
            cscInstallerLink | js2n.Nullable String | optional,
            cscKeyPassword | js2n.Nullable String | optional,
            cscLink | js2n.Nullable String | optional,
            darkModeSupport
              | Bool
              | doc "Whether a dark mode is supported. If your app does have a dark mode, you can make your app follow the system-wide dark mode setting."
              | optional,
            detectUpdateChannel
              | Bool
              | doc "Whether to infer update channel from application version pre-release components. e.g. if version `0.12.1-alpha.1`, channel will be set to `alpha`. Otherwise to `latest`."
              | optional,
            electronLanguages
              | std.contract.any_of [ Array String, String ]
              | doc "The electron locales. By default Electron locales used as is."
              | optional,
            electronUpdaterCompatibility
              | js2n.Nullable String
              | doc "The [electron-updater compatibility](/auto-update#compatibility) semver range."
              | optional,
            entitlements
              | js2n.Nullable String
              | doc m%"
                The path to entitlements file for signing the app. `build/entitlements.mac.plist` will be used if exists (it is a recommended way to set).
                MAS entitlements is specified in the [mas](/configuration/mas).
              "%
              | optional,
            entitlementsInherit
              | js2n.Nullable String
              | doc m%"
                The path to child entitlements which inherit the security settings for signing frameworks and bundles of a distribution. `build/entitlements.mac.inherit.plist` will be used if exists (it is a recommended way to set).
                Otherwise [default](https://github.com/electron-userland/electron-osx-sign/blob/master/default.entitlements.darwin.inherit.plist).
                
                This option only applies when signing with `entitlements` provided.
              "%
              | optional,
            extendInfo
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "The extra entries for `Info.plist`."
              | optional,
            extraDistFiles
              | std.contract.any_of [ Array String, js2n.Null, String ]
              | doc "Extra files to put in archive. Not applicable for `tar.*`."
              | optional,
            extraFiles
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FileSet", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.FileSet", { _ | Dyn } ],
                        String
                      ]
                  ),
                  js2n.Null,
                  String
                ]
              | optional,
            extraResources
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FileSet", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.FileSet", { _ | Dyn } ],
                        String
                      ]
                  ),
                  js2n.Null,
                  String
                ]
              | optional,
            fileAssociations
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FileAssociation", { _ | Dyn } ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.FileAssociation", { _ | Dyn } ]
                  )
                ]
              | doc "The file associations."
              | optional,
            files
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FileSet", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.FileSet", { _ | Dyn } ],
                        String
                      ]
                  ),
                  js2n.Null,
                  String
                ]
              | optional,
            forceCodeSigning
              | Bool
              | doc "Whether to fail if app will be not code signed."
              | optional,
            gatekeeperAssess
              | Bool
              | doc "Whether to let electron-osx-sign validate the signing or not."
              | optional,
            generateUpdatesFilesForAllChannels
              | Bool
              | doc "Please see [Building and Releasing using Channels](https://github.com/electron-userland/electron-builder/issues/1182#issuecomment-324947139)."
              | optional,
            hardenedRuntime
              | Bool
              | doc "Whether your app has to be signed with hardened runtime."
              | optional,
            helperBundleId
              | js2n.Nullable String
              | doc "The bundle identifier to use in the application helper's plist."
              | optional,
            icon
              | js2n.Nullable String
              | doc "The path to application icon."
              | optional,
            identity
              | js2n.Nullable String
              | doc m%"
                The name of certificate to use when signing. Consider using environment variables [CSC_LINK or CSC_NAME](/code-signing) instead of specifying this option.
                MAS installer identity is specified in the [mas](/configuration/mas).
              "%
              | optional,
            minimumSystemVersion
              | js2n.Nullable String
              | doc "The minimum version of macOS required for the app to run. Corresponds to `LSMinimumSystemVersion`."
              | optional,
            protocols
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Protocol", { _ | Dyn } ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.Protocol", { _ | Dyn } ]
                  )
                ]
              | doc "The URL protocol schemes."
              | optional,
            provisioningProfile
              | js2n.Nullable String
              | doc "The path to the provisioning profile to use when signing, absolute or relative to the app root."
              | optional,
            publish
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.GithubOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.S3Options", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.GenericServerOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CustomPublishOptions", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.GithubOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.S3Options", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.GenericServerOptions",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.CustomPublishOptions",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  js2n.Null,
                  String
                ]
              | optional,
            releaseInfo
              | refs."definitions.ReleaseInfo"
              | { _ | Dyn }
              | doc m%"
                The release info. Intended for command line usage:
                
                ```
                -c.releaseInfo.releaseNotes="new features"
                ```
              "%
              | optional,
            requirements
              | js2n.Nullable String
              | doc "Path of [requirements file](https://developer.apple.com/library/mac/documentation/Security/Conceptual/CodeSigningGuide/RequirementLang/RequirementLang.html) used in signing. Not applicable for MAS."
              | optional,
            target
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.TargetConfiguration", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            refs."definitions.TargetConfiguration",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'zip,
                              '"tar.xz",
                              '"tar.lz",
                              '"tar.gz",
                              '"tar.bz2",
                              'pkg,
                              'mas-dev,
                              'mas,
                              'dmg,
                              'dir,
                              '"default",
                              '"7z"
                            |]
                          ]
                      ]
                  ),
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'zip,
                        '"tar.xz",
                        '"tar.lz",
                        '"tar.gz",
                        '"tar.bz2",
                        'pkg,
                        'mas-dev,
                        'mas,
                        'dmg,
                        'dir,
                        '"default",
                        '"7z"
                      |]
                    ],
                  js2n.Null
                ]
              | doc "The target package type: list of `default`, `dmg`, `mas`, `mas-dev`, `pkg`, `7z`, `zip`, `tar.xz`, `tar.lz`, `tar.gz`, `tar.bz2`, `dir`. Defaults to `default` (dmg and zip for Squirrel.Mac)."
              | optional,
            type
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.enum.TagOrString, [| 'distribution, 'development |] ])
              | doc "Whether to sign app for development or for distribution."
              | optional,
          },
      "definitions.MasConfiguration" =
        {
            appId
              | js2n.Nullable String
              | doc m%"
                The application id. Used as [CFBundleIdentifier](https://developer.apple.com/library/ios/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html#//apple_ref/doc/uid/20001431-102070) for MacOS and as
                [Application User Model ID](https://msdn.microsoft.com/en-us/library/windows/desktop/dd378459(v=vs.85).aspx) for Windows (NSIS target only, Squirrel.Windows not supported). It is strongly recommended that an explicit ID is set.
              "%
              | optional,
            artifactName
              | js2n.Nullable String
              | doc "The [artifact file name template](/configuration/configuration#artifact-file-name-template). Defaults to `${productName}-${version}.${ext}` (some target can have other defaults, see corresponding options)."
              | optional,
            asar
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.AsarOptions", { _ | Dyn } ],
                  js2n.Null,
                  Bool
                ]
              | doc m%"
                Whether to package the application's source code into an archive, using [Electron's archive format](http://electron.atom.io/docs/tutorial/application-packaging/).
                
                Node modules, that must be unpacked, will be detected automatically, you don't need to explicitly set [asarUnpack](#configuration-asarUnpack) - please file an issue if this doesn't work.
              "%
              | optional,
            asarUnpack
              | std.contract.any_of [ Array String, js2n.Null, String ]
              | doc "A [glob patterns](/file-patterns) relative to the [app directory](#MetadataDirectories-app), which specifies which files to unpack when creating the [asar](http://electron.atom.io/docs/tutorial/application-packaging/) archive."
              | optional,
            binaries
              | js2n.Nullable (Array String)
              | doc "Paths of any extra binaries that need to be signed."
              | optional,
            bundleShortVersion
              | js2n.Nullable String
              | doc "The `CFBundleShortVersionString`. Do not use it unless you need to."
              | optional,
            bundleVersion
              | js2n.Nullable String
              | doc "The `CFBundleVersion`. Do not use it unless [you need to](https://github.com/electron-userland/electron-builder/issues/565#issuecomment-230678643)."
              | optional,
            category
              | js2n.Nullable String
              | doc m%"
                The application category type, as shown in the Finder via *View -> Arrange by Application Category* when viewing the Applications directory.
                
                For example, `"category": "public.app-category.developer-tools"` will set the application category to *Developer Tools*.
                
                Valid values are listed in [Apple's documentation](https://developer.apple.com/library/ios/documentation/General/Reference/InfoPlistKeyReference/Articles/LaunchServicesKeys.html#//apple_ref/doc/uid/TP40009250-SW8).
              "%
              | optional,
            compression
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.enum.TagOrString, [| 'store, 'normal, 'maximum |] ])
              | doc "The compression level. If you want to rapidly test build, `store` can reduce build time significantly. `maximum` doesn't lead to noticeable size difference, but increase build time."
              | optional,
            cscInstallerKeyPassword | js2n.Nullable String | optional,
            cscInstallerLink | js2n.Nullable String | optional,
            cscKeyPassword | js2n.Nullable String | optional,
            cscLink | js2n.Nullable String | optional,
            darkModeSupport
              | Bool
              | doc "Whether a dark mode is supported. If your app does have a dark mode, you can make your app follow the system-wide dark mode setting."
              | optional,
            detectUpdateChannel
              | Bool
              | doc "Whether to infer update channel from application version pre-release components. e.g. if version `0.12.1-alpha.1`, channel will be set to `alpha`. Otherwise to `latest`."
              | optional,
            electronLanguages
              | std.contract.any_of [ Array String, String ]
              | doc "The electron locales. By default Electron locales used as is."
              | optional,
            electronUpdaterCompatibility
              | js2n.Nullable String
              | doc "The [electron-updater compatibility](/auto-update#compatibility) semver range."
              | optional,
            entitlements
              | js2n.Nullable String
              | doc m%"
                The path to entitlements file for signing the app. `build/entitlements.mas.plist` will be used if exists (it is a recommended way to set).
                Otherwise [default](https://github.com/electron-userland/electron-osx-sign/blob/master/default.entitlements.mas.plist).
              "%
              | optional,
            entitlementsInherit
              | js2n.Nullable String
              | doc m%"
                The path to child entitlements which inherit the security settings for signing frameworks and bundles of a distribution. `build/entitlements.mas.inherit.plist` will be used if exists (it is a recommended way to set).
                Otherwise [default](https://github.com/electron-userland/electron-osx-sign/blob/master/default.entitlements.mas.inherit.plist).
              "%
              | optional,
            extendInfo
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "The extra entries for `Info.plist`."
              | optional,
            extraDistFiles
              | std.contract.any_of [ Array String, js2n.Null, String ]
              | doc "Extra files to put in archive. Not applicable for `tar.*`."
              | optional,
            extraFiles
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FileSet", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.FileSet", { _ | Dyn } ],
                        String
                      ]
                  ),
                  js2n.Null,
                  String
                ]
              | optional,
            extraResources
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FileSet", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.FileSet", { _ | Dyn } ],
                        String
                      ]
                  ),
                  js2n.Null,
                  String
                ]
              | optional,
            fileAssociations
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FileAssociation", { _ | Dyn } ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.FileAssociation", { _ | Dyn } ]
                  )
                ]
              | doc "The file associations."
              | optional,
            files
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FileSet", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.FileSet", { _ | Dyn } ],
                        String
                      ]
                  ),
                  js2n.Null,
                  String
                ]
              | optional,
            forceCodeSigning
              | Bool
              | doc "Whether to fail if app will be not code signed."
              | optional,
            generateUpdatesFilesForAllChannels
              | Bool
              | doc "Please see [Building and Releasing using Channels](https://github.com/electron-userland/electron-builder/issues/1182#issuecomment-324947139)."
              | optional,
            hardenedRuntime
              | Bool
              | doc "Whether your app has to be signed with hardened runtime."
              | optional,
            helperBundleId
              | js2n.Nullable String
              | doc "The bundle identifier to use in the application helper's plist."
              | optional,
            icon
              | js2n.Nullable String
              | doc "The path to application icon."
              | optional,
            identity
              | js2n.Nullable String
              | doc m%"
                The name of certificate to use when signing. Consider using environment variables [CSC_LINK or CSC_NAME](/code-signing) instead of specifying this option.
                MAS installer identity is specified in the [mas](/configuration/mas).
              "%
              | optional,
            minimumSystemVersion
              | js2n.Nullable String
              | doc "The minimum version of macOS required for the app to run. Corresponds to `LSMinimumSystemVersion`."
              | optional,
            protocols
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Protocol", { _ | Dyn } ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.Protocol", { _ | Dyn } ]
                  )
                ]
              | doc "The URL protocol schemes."
              | optional,
            provisioningProfile
              | js2n.Nullable String
              | doc "The path to the provisioning profile to use when signing, absolute or relative to the app root."
              | optional,
            publish
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.GithubOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.S3Options", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.GenericServerOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CustomPublishOptions", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.GithubOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.S3Options", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.GenericServerOptions",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.CustomPublishOptions",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  js2n.Null,
                  String
                ]
              | optional,
            releaseInfo
              | refs."definitions.ReleaseInfo"
              | { _ | Dyn }
              | doc m%"
                The release info. Intended for command line usage:
                
                ```
                -c.releaseInfo.releaseNotes="new features"
                ```
              "%
              | optional,
            requirements
              | js2n.Nullable String
              | doc "Path of [requirements file](https://developer.apple.com/library/mac/documentation/Security/Conceptual/CodeSigningGuide/RequirementLang/RequirementLang.html) used in signing. Not applicable for MAS."
              | optional,
            target
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.TargetConfiguration", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            refs."definitions.TargetConfiguration",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'zip,
                              '"tar.xz",
                              '"tar.lz",
                              '"tar.gz",
                              '"tar.bz2",
                              'pkg,
                              'mas-dev,
                              'mas,
                              'dmg,
                              'dir,
                              '"default",
                              '"7z"
                            |]
                          ]
                      ]
                  ),
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'zip,
                        '"tar.xz",
                        '"tar.lz",
                        '"tar.gz",
                        '"tar.bz2",
                        'pkg,
                        'mas-dev,
                        'mas,
                        'dmg,
                        'dir,
                        '"default",
                        '"7z"
                      |]
                    ],
                  js2n.Null
                ]
              | doc "The target package type: list of `default`, `dmg`, `mas`, `mas-dev`, `pkg`, `7z`, `zip`, `tar.xz`, `tar.lz`, `tar.gz`, `tar.bz2`, `dir`. Defaults to `default` (dmg and zip for Squirrel.Mac)."
              | optional,
            type
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.enum.TagOrString, [| 'distribution, 'development |] ])
              | doc "Whether to sign app for development or for distribution."
              | optional,
          },
      "definitions.MetadataDirectories" =
        {
            app
              | js2n.Nullable String
              | doc "The application directory (containing the application package.json), defaults to `app`, `www` or working directory."
              | optional,
            buildResources
              | js2n.Nullable String
              | doc m%"
                The path to build resources.
                
                Please note — build resources is not packed into the app. If you need to use some files, e.g. as tray icon, please include required files explicitly: `"files": ["**\/*", "build/icon.*"]`
              "%
              | optional,
            output
              | js2n.Nullable String
              | doc "The output directory. [File macros](/file-patterns#file-macros) are supported."
              | optional,
          },
      "definitions.MsiOptions" =
        {
            artifactName
              | js2n.Nullable String
              | doc "The [artifact file name template](/configuration/configuration#artifact-file-name-template)."
              | optional,
            createDesktopShortcut
              | js2n.Enum [ "always", false, true ]
              | doc "Whether to create desktop shortcut. Set to `always` if to recreate also on reinstall (even if removed by user)."
              | optional,
            createStartMenuShortcut
              | Bool
              | doc "Whether to create start menu shortcut."
              | optional,
            menuCategory
              | std.contract.any_of [ Bool, String ]
              | doc "Whether to create submenu for start menu shortcut and program files directory. If `true`, company name will be used. Or string value."
              | optional,
            oneClick | Bool | doc "One-click installation." | optional,
            perMachine
              | Bool
              | doc "Whether to install per all users (per-machine)."
              | optional,
            publish
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.GithubOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.S3Options", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.GenericServerOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CustomPublishOptions", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.GithubOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.S3Options", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.GenericServerOptions",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.CustomPublishOptions",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  js2n.Null,
                  String
                ]
              | optional,
            runAfterFinish
              | Bool
              | doc "Whether to run the installed application after finish. For assisted installer corresponding checkbox will be removed."
              | optional,
            shortcutName
              | js2n.Nullable String
              | doc "The name that will be used for all shortcuts. Defaults to the application name."
              | optional,
            upgradeCode
              | js2n.Nullable String
              | doc "The [upgrade code](https://msdn.microsoft.com/en-us/library/windows/desktop/aa372375(v=vs.85).aspx). Optional, by default generated using app id."
              | optional,
            warningsAsErrors
              | Bool
              | doc "If `warningsAsErrors` is `true` (default): treat warnings as errors. If `warningsAsErrors` is `false`: allow warnings."
              | optional,
          },
      "definitions.NsisOptions" =
        {
            allowElevation
              | Bool
              | doc "*assisted installer only.* Allow requesting for elevation. If false, user will have to restart installer with elevated permissions."
              | optional,
            allowToChangeInstallationDirectory
              | Bool
              | doc "*assisted installer only.* Whether to allow user to change installation directory."
              | optional,
            artifactName
              | js2n.Nullable String
              | doc "The [artifact file name template](/configuration/configuration#artifact-file-name-template). Defaults to `${productName} Setup ${version}.${ext}`."
              | optional,
            createDesktopShortcut
              | js2n.Enum [ "always", false, true ]
              | doc "Whether to create desktop shortcut. Set to `always` if to recreate also on reinstall (even if removed by user)."
              | optional,
            createStartMenuShortcut
              | Bool
              | doc "Whether to create start menu shortcut."
              | optional,
            deleteAppDataOnUninstall
              | Bool
              | doc "*one-click installer only.* Whether to delete app data on uninstall."
              | optional,
            differentialPackage
              | Bool
              | doc "Defaults to `true` for web installer (`nsis-web`)"
              | optional,
            displayLanguageSelector
              | Bool
              | doc "Whether to display a language selection dialog. Not recommended (by default will be detected using OS language)."
              | optional,
            guid
              | js2n.Nullable String
              | doc "See [GUID vs Application Name](../configuration/nsis#guid-vs-application-name)."
              | optional,
            include
              | js2n.Nullable String
              | doc "The path to NSIS include script to customize installer. Defaults to `build/installer.nsh`. See [Custom NSIS script](#custom-nsis-script)."
              | optional,
            installerHeader
              | js2n.Nullable String
              | doc "*assisted installer only.* `MUI_HEADERIMAGE`, relative to the [build resources](/configuration/configuration#MetadataDirectories-buildResources) or to the project directory."
              | optional,
            installerHeaderIcon
              | js2n.Nullable String
              | doc m%"
                *one-click installer only.* The path to header icon (above the progress bar), relative to the [build resources](/configuration/configuration#MetadataDirectories-buildResources) or to the project directory.
                Defaults to `build/installerHeaderIcon.ico` or application icon.
              "%
              | optional,
            installerIcon
              | js2n.Nullable String
              | doc m%"
                The path to installer icon, relative to the [build resources](/configuration/configuration#MetadataDirectories-buildResources) or to the project directory.
                Defaults to `build/installerIcon.ico` or application icon.
              "%
              | optional,
            installerLanguages
              | std.contract.any_of [ Array String, js2n.Null, String ]
              | doc "The installer languages (e.g. `en_US`, `de_DE`). Change only if you understand what do you do and for what."
              | optional,
            installerSidebar
              | js2n.Nullable String
              | doc m%"
                *assisted installer only.* `MUI_WELCOMEFINISHPAGE_BITMAP`, relative to the [build resources](/configuration/configuration#MetadataDirectories-buildResources) or to the project directory.
                Defaults to `build/installerSidebar.bmp` or `${NSISDIR}\\Contrib\\Graphics\\Wizard\\nsis3-metro.bmp`. Image size 164 × 314 pixels.
              "%
              | optional,
            language
              | js2n.Nullable String
              | doc "[LCID Dec](https://msdn.microsoft.com/en-au/goglobal/bb964664.aspx), defaults to `1033`(`English - United States`)."
              | optional,
            license
              | js2n.Nullable String
              | doc m%"
                The path to EULA license file. Defaults to `license.txt` or `eula.txt` (or uppercase variants). In addition to `txt, `rtf` and `html` supported (don't forget to use `target="_blank"` for links).
                
                Multiple license files in different languages are supported — use lang postfix (e.g. `_de`, `_ru`)). For example, create files `license_de.txt` and `license_en.txt` in the build resources.
                If OS language is german, `license_de.txt` will be displayed. See map of [language code to name](https://github.com/meikidd/iso-639-1/blob/master/src/data.js).
                
                Appropriate license file will be selected by user OS language.
              "%
              | optional,
            menuCategory
              | std.contract.any_of [ Bool, String ]
              | doc "Whether to create submenu for start menu shortcut and program files directory. If `true`, company name will be used. Or string value."
              | optional,
            multiLanguageInstaller
              | Bool
              | doc "Whether to create multi-language installer. Defaults to `unicode` option value."
              | optional,
            oneClick
              | Bool
              | doc "Whether to create one-click installer or assisted."
              | optional,
            packElevateHelper
              | Bool
              | doc "Whether to pack the elevate executable (required for electron-updater if per-machine installer used or can be used in the future). Ignored if `perMachine` is set to `true`."
              | optional,
            perMachine
              | Bool
              | doc m%"
                Whether to show install mode installer page (choice per-machine or per-user) for assisted installer. Or whether installation always per all users (per-machine).
                
                If `oneClick` is `true` (default): Whether to install per all users (per-machine).
                
                If `oneClick` is `false` and `perMachine` is `true`: no install mode installer page, always install per-machine.
                
                If `oneClick` is `false` and `perMachine` is `false` (default): install mode installer page.
              "%
              | optional,
            preCompressedFileExtensions
              | std.contract.any_of [ Array String, js2n.Null, String ]
              | doc "The file extension of files that will be not compressed. Applicable only for `extraResources` and `extraFiles` files."
              | optional,
            publish
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.GithubOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.S3Options", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.GenericServerOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CustomPublishOptions", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.GithubOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.S3Options", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.GenericServerOptions",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.CustomPublishOptions",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  js2n.Null,
                  String
                ]
              | optional,
            runAfterFinish
              | Bool
              | doc "Whether to run the installed application after finish. For assisted installer corresponding checkbox will be removed."
              | optional,
            script
              | js2n.Nullable String
              | doc "The path to NSIS script to customize installer. Defaults to `build/installer.nsi`. See [Custom NSIS script](#custom-nsis-script)."
              | optional,
            shortcutName
              | js2n.Nullable String
              | doc "The name that will be used for all shortcuts. Defaults to the application name."
              | optional,
            unicode
              | Bool
              | doc "Whether to create [Unicode installer](http://nsis.sourceforge.net/Docs/Chapter1.html#intro-unicode)."
              | optional,
            uninstallDisplayName
              | String
              | doc "The uninstaller display name in the control panel."
              | optional,
            uninstallerIcon
              | js2n.Nullable String
              | doc m%"
                The path to uninstaller icon, relative to the [build resources](/configuration/configuration#MetadataDirectories-buildResources) or to the project directory.
                Defaults to `build/uninstallerIcon.ico` or application icon.
              "%
              | optional,
            uninstallerSidebar
              | js2n.Nullable String
              | doc m%"
                *assisted installer only.* `MUI_UNWELCOMEFINISHPAGE_BITMAP`, relative to the [build resources](/configuration/configuration#MetadataDirectories-buildResources) or to the project directory.
                Defaults to `installerSidebar` option or `build/uninstallerSidebar.bmp` or `build/installerSidebar.bmp` or `${NSISDIR}\\Contrib\\Graphics\\Wizard\\nsis3-metro.bmp`
              "%
              | optional,
            useZip | Bool | optional,
            warningsAsErrors
              | Bool
              | doc "If `warningsAsErrors` is `true` (default): NSIS will treat warnings as errors. If `warningsAsErrors` is `false`: NSIS will allow warnings."
              | optional,
          },
      "definitions.NsisWebOptions" =
        {
            allowElevation
              | Bool
              | doc "*assisted installer only.* Allow requesting for elevation. If false, user will have to restart installer with elevated permissions."
              | optional,
            allowToChangeInstallationDirectory
              | Bool
              | doc "*assisted installer only.* Whether to allow user to change installation directory."
              | optional,
            appPackageUrl
              | js2n.Nullable String
              | doc m%"
                The application package download URL. Optional — by default computed using publish configuration.
                
                URL like `https://example.com/download/latest` allows web installer to be version independent (installer will download latest application package).
                Please note — it is [full URL](https://github.com/electron-userland/electron-builder/issues/1810#issuecomment-317650878).
                
                Custom `X-Arch` http header is set to `32` or `64`.
              "%
              | optional,
            artifactName
              | js2n.Nullable String
              | doc "The [artifact file name template](/configuration/configuration#artifact-file-name-template). Defaults to `${productName} Web Setup ${version}.${ext}`."
              | optional,
            createDesktopShortcut
              | js2n.Enum [ "always", false, true ]
              | doc "Whether to create desktop shortcut. Set to `always` if to recreate also on reinstall (even if removed by user)."
              | optional,
            createStartMenuShortcut
              | Bool
              | doc "Whether to create start menu shortcut."
              | optional,
            deleteAppDataOnUninstall
              | Bool
              | doc "*one-click installer only.* Whether to delete app data on uninstall."
              | optional,
            differentialPackage
              | Bool
              | doc "Defaults to `true` for web installer (`nsis-web`)"
              | optional,
            displayLanguageSelector
              | Bool
              | doc "Whether to display a language selection dialog. Not recommended (by default will be detected using OS language)."
              | optional,
            guid
              | js2n.Nullable String
              | doc "See [GUID vs Application Name](../configuration/nsis#guid-vs-application-name)."
              | optional,
            include
              | js2n.Nullable String
              | doc "The path to NSIS include script to customize installer. Defaults to `build/installer.nsh`. See [Custom NSIS script](#custom-nsis-script)."
              | optional,
            installerHeader
              | js2n.Nullable String
              | doc "*assisted installer only.* `MUI_HEADERIMAGE`, relative to the [build resources](/configuration/configuration#MetadataDirectories-buildResources) or to the project directory."
              | optional,
            installerHeaderIcon
              | js2n.Nullable String
              | doc m%"
                *one-click installer only.* The path to header icon (above the progress bar), relative to the [build resources](/configuration/configuration#MetadataDirectories-buildResources) or to the project directory.
                Defaults to `build/installerHeaderIcon.ico` or application icon.
              "%
              | optional,
            installerIcon
              | js2n.Nullable String
              | doc m%"
                The path to installer icon, relative to the [build resources](/configuration/configuration#MetadataDirectories-buildResources) or to the project directory.
                Defaults to `build/installerIcon.ico` or application icon.
              "%
              | optional,
            installerLanguages
              | std.contract.any_of [ Array String, js2n.Null, String ]
              | doc "The installer languages (e.g. `en_US`, `de_DE`). Change only if you understand what do you do and for what."
              | optional,
            installerSidebar
              | js2n.Nullable String
              | doc m%"
                *assisted installer only.* `MUI_WELCOMEFINISHPAGE_BITMAP`, relative to the [build resources](/configuration/configuration#MetadataDirectories-buildResources) or to the project directory.
                Defaults to `build/installerSidebar.bmp` or `${NSISDIR}\\Contrib\\Graphics\\Wizard\\nsis3-metro.bmp`. Image size 164 × 314 pixels.
              "%
              | optional,
            language
              | js2n.Nullable String
              | doc "[LCID Dec](https://msdn.microsoft.com/en-au/goglobal/bb964664.aspx), defaults to `1033`(`English - United States`)."
              | optional,
            license
              | js2n.Nullable String
              | doc m%"
                The path to EULA license file. Defaults to `license.txt` or `eula.txt` (or uppercase variants). In addition to `txt, `rtf` and `html` supported (don't forget to use `target="_blank"` for links).
                
                Multiple license files in different languages are supported — use lang postfix (e.g. `_de`, `_ru`)). For example, create files `license_de.txt` and `license_en.txt` in the build resources.
                If OS language is german, `license_de.txt` will be displayed. See map of [language code to name](https://github.com/meikidd/iso-639-1/blob/master/src/data.js).
                
                Appropriate license file will be selected by user OS language.
              "%
              | optional,
            menuCategory
              | std.contract.any_of [ Bool, String ]
              | doc "Whether to create submenu for start menu shortcut and program files directory. If `true`, company name will be used. Or string value."
              | optional,
            multiLanguageInstaller
              | Bool
              | doc "Whether to create multi-language installer. Defaults to `unicode` option value."
              | optional,
            oneClick
              | Bool
              | doc "Whether to create one-click installer or assisted."
              | optional,
            packElevateHelper
              | Bool
              | doc "Whether to pack the elevate executable (required for electron-updater if per-machine installer used or can be used in the future). Ignored if `perMachine` is set to `true`."
              | optional,
            perMachine
              | Bool
              | doc m%"
                Whether to show install mode installer page (choice per-machine or per-user) for assisted installer. Or whether installation always per all users (per-machine).
                
                If `oneClick` is `true` (default): Whether to install per all users (per-machine).
                
                If `oneClick` is `false` and `perMachine` is `true`: no install mode installer page, always install per-machine.
                
                If `oneClick` is `false` and `perMachine` is `false` (default): install mode installer page.
              "%
              | optional,
            preCompressedFileExtensions
              | std.contract.any_of [ Array String, js2n.Null, String ]
              | doc "The file extension of files that will be not compressed. Applicable only for `extraResources` and `extraFiles` files."
              | optional,
            publish
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.GithubOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.S3Options", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.GenericServerOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CustomPublishOptions", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.GithubOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.S3Options", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.GenericServerOptions",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.CustomPublishOptions",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  js2n.Null,
                  String
                ]
              | optional,
            runAfterFinish
              | Bool
              | doc "Whether to run the installed application after finish. For assisted installer corresponding checkbox will be removed."
              | optional,
            script
              | js2n.Nullable String
              | doc "The path to NSIS script to customize installer. Defaults to `build/installer.nsi`. See [Custom NSIS script](#custom-nsis-script)."
              | optional,
            shortcutName
              | js2n.Nullable String
              | doc "The name that will be used for all shortcuts. Defaults to the application name."
              | optional,
            unicode
              | Bool
              | doc "Whether to create [Unicode installer](http://nsis.sourceforge.net/Docs/Chapter1.html#intro-unicode)."
              | optional,
            uninstallDisplayName
              | String
              | doc "The uninstaller display name in the control panel."
              | optional,
            uninstallerIcon
              | js2n.Nullable String
              | doc m%"
                The path to uninstaller icon, relative to the [build resources](/configuration/configuration#MetadataDirectories-buildResources) or to the project directory.
                Defaults to `build/uninstallerIcon.ico` or application icon.
              "%
              | optional,
            uninstallerSidebar
              | js2n.Nullable String
              | doc m%"
                *assisted installer only.* `MUI_UNWELCOMEFINISHPAGE_BITMAP`, relative to the [build resources](/configuration/configuration#MetadataDirectories-buildResources) or to the project directory.
                Defaults to `installerSidebar` option or `build/uninstallerSidebar.bmp` or `build/installerSidebar.bmp` or `${NSISDIR}\\Contrib\\Graphics\\Wizard\\nsis3-metro.bmp`
              "%
              | optional,
            useZip | Bool | optional,
            warningsAsErrors
              | Bool
              | doc "If `warningsAsErrors` is `true` (default): NSIS will treat warnings as errors. If `warningsAsErrors` is `false`: NSIS will allow warnings."
              | optional,
          },
      "definitions.PkgBackgroundOptions" =
        {
            alignment
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'topright,
                      'topleft,
                      'top,
                      'right,
                      'left,
                      'center,
                      'bottomright,
                      'bottomleft,
                      'bottom
                    |]
                  ])
              | doc m%"
                Alignment of the background image.
                Options are: center, left, right, top, bottom, topleft, topright, bottomleft, bottomright
              "%
              | optional,
            file
              | String
              | doc "Path to the image to use as an installer background."
              | optional,
            scaling
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.enum.TagOrString, [| 'tofit, 'proportional, 'none |] ])
              | doc m%"
                Scaling of the background image.
                Options are: tofit, none, proportional
              "%
              | optional,
          },
      "definitions.PkgOptions" =
        {
            allowAnywhere
              | js2n.Nullable Bool
              | doc m%"
                Whether can be installed at the root of any volume, including non-system volumes. Otherwise, it cannot be installed at the root of a volume.
                
                Corresponds to [enable_anywhere](https://developer.apple.com/library/content/documentation/DeveloperTools/Reference/DistributionDefinitionRef/Chapters/Distribution_XML_Ref.html#//apple_ref/doc/uid/TP40005370-CH100-SW70).
              "%
              | optional,
            allowCurrentUserHome
              | js2n.Nullable Bool
              | doc m%"
                Whether can be installed into the current user's home directory.
                A home directory installation is done as the current user (not as root), and it cannot write outside of the home directory.
                If the product cannot be installed in the user's home directory and be not completely functional from user's home directory.
                
                Corresponds to [enable_currentUserHome](https://developer.apple.com/library/content/documentation/DeveloperTools/Reference/DistributionDefinitionRef/Chapters/Distribution_XML_Ref.html#//apple_ref/doc/uid/TP40005370-CH100-SW70).
              "%
              | optional,
            allowRootDirectory
              | js2n.Nullable Bool
              | doc m%"
                Whether can be installed into the root directory. Should usually be `true` unless the product can be installed only to the user's home directory.
                
                Corresponds to [enable_localSystem](https://developer.apple.com/library/content/documentation/DeveloperTools/Reference/DistributionDefinitionRef/Chapters/Distribution_XML_Ref.html#//apple_ref/doc/uid/TP40005370-CH100-SW70).
              "%
              | optional,
            artifactName
              | js2n.Nullable String
              | doc "The [artifact file name template](/configuration/configuration#artifact-file-name-template)."
              | optional,
            background
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.PkgBackgroundOptions", { _ | Dyn } ])
              | doc "Options for the background image for the installer."
              | optional,
            conclusion
              | js2n.Nullable String
              | doc "The path to the conclusion file. This may be used to customize the text on the final \"Summary\" page of the installer."
              | optional,
            hasStrictIdentifier
              | js2n.Nullable Bool
              | doc "Require identical bundle identifiers at install path?"
              | optional,
            identity
              | js2n.Nullable String
              | doc "The name of certificate to use when signing. Consider using environment variables [CSC_LINK or CSC_NAME](/code-signing) instead of specifying this option."
              | optional,
            installLocation
              | js2n.Nullable String
              | doc m%"
                The install location. [Do not use it](https://stackoverflow.com/questions/12863944/how-do-you-specify-a-default-install-location-to-home-with-pkgbuild) to create per-user package.
                Mostly never you will need to change this option. `/Applications` would install it as expected into `/Applications` if the local system domain is chosen, or into `$HOME/Applications` if the home installation is chosen.
              "%
              | optional,
            isRelocatable
              | js2n.Nullable Bool
              | doc "Install bundle over previous version if moved by user?"
              | optional,
            isVersionChecked
              | js2n.Nullable Bool
              | doc "Don't install bundle if newer version on disk?"
              | optional,
            license
              | js2n.Nullable String
              | doc "The path to EULA license file. Defaults to `license.txt` or `eula.txt` (or uppercase variants). In addition to `txt, `rtf` and `html` supported (don't forget to use `target=\"_blank\"` for links)."
              | optional,
            overwriteAction
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.enum.TagOrString, [| 'upgrade, 'update |] ])
              | doc m%"
                Specifies how an existing version of the bundle on disk should be handled when the version in
                the package is installed.
                
                If you specify upgrade, the bundle in the package atomi-cally replaces any version on disk;
                this has the effect of deleting old paths that no longer exist in the new version of
                the bundle.
                
                If you specify update, the bundle in the package overwrites the version on disk, and any files
                not contained in the package will be left intact; this is appropriate when you are delivering
                an update-only package.
                
                Another effect of update is that the package bundle will not be installed at all if there is
                not already a version on disk; this allows a package to deliver an update for an app that
                the user might have deleted.
              "%
              | optional,
            productbuild
              | js2n.Nullable (Array String)
              | doc "should be not documented, only to experiment"
              | optional,
            publish
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.GithubOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.S3Options", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.GenericServerOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CustomPublishOptions", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.GithubOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.S3Options", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.GenericServerOptions",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.CustomPublishOptions",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  js2n.Null,
                  String
                ]
              | optional,
            scripts
              | js2n.Nullable String
              | doc m%"
                The scripts directory, relative to `build` (build resources directory).
                The scripts can be in any language so long as the files are marked executable and have the appropriate shebang indicating the path to the interpreter.
                Scripts are required to be executable (`chmod +x file`).
              "%
              | optional,
            welcome
              | js2n.Nullable String
              | doc "The path to the welcome file. This may be used to customize the text on the Introduction page of the installer."
              | optional,
          },
      "definitions.PlugDescriptor" = { _ | js2n.Nullable {  .. } },
      "definitions.PortableOptions" =
        {
            artifactName
              | js2n.Nullable String
              | doc "The [artifact file name template](/configuration/configuration#artifact-file-name-template)."
              | optional,
            guid
              | js2n.Nullable String
              | doc "See [GUID vs Application Name](../configuration/nsis#guid-vs-application-name)."
              | optional,
            publish
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.GithubOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.S3Options", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.GenericServerOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CustomPublishOptions", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.GithubOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.S3Options", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.GenericServerOptions",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.CustomPublishOptions",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  js2n.Null,
                  String
                ]
              | optional,
            requestExecutionLevel
              | std.enum.TagOrString
              | [| 'user, 'highest, 'admin |]
              | doc "The [requested execution level](http://nsis.sourceforge.net/Reference/RequestExecutionLevel) for Windows."
              | optional,
            unicode
              | Bool
              | doc "Whether to create [Unicode installer](http://nsis.sourceforge.net/Docs/Chapter1.html#intro-unicode)."
              | optional,
            unpackDirName
              | String
              | doc m%"
                The unpack directory name in [TEMP](https://www.askvg.com/where-does-windows-store-temporary-files-and-how-to-change-temp-folder-location/) directory.
                
                Defaults to [uuid](https://github.com/segmentio/ksuid) of build (changed on each build of portable executable).
              "%
              | optional,
            useZip | Bool | optional,
            warningsAsErrors
              | Bool
              | doc "If `warningsAsErrors` is `true` (default): NSIS will treat warnings as errors. If `warningsAsErrors` is `false`: NSIS will allow warnings."
              | optional,
          },
      "definitions.Protocol" =
        {
            name | String | doc "The name. e.g. `IRC server URL`.",
            role
              | std.enum.TagOrString
              | [| 'Viewer, 'Shell, 'None, 'Editor |]
              | doc "*macOS-only* The app's role with respect to the type."
              | optional,
            schemes
              | Array String
              | doc "The schemes. e.g. `[\"irc\", \"ircs\"]`.",
          },
      "definitions.PublishProvider" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'spaces, 's3, 'github, 'generic, 'custom, 'bintray |]
            ],
      "definitions.ReleaseInfo" =
        {
            releaseDate | String | doc "The release date." | optional,
            releaseName
              | js2n.Nullable String
              | doc "The release name."
              | optional,
            releaseNotes
              | js2n.Nullable String
              | doc "The release notes."
              | optional,
            releaseNotesFile
              | js2n.Nullable String
              | doc "The path to release notes file. Defaults to `release-notes-${platform}.md` (where `platform` it is current platform — `mac`, `linux` or `windows`) or `release-notes.md` in the [build resources](#MetadataDirectories-buildResources)."
              | optional,
          },
      "definitions.S3Options" =
        {
            acl
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.enum.TagOrString, [| 'public-read, 'private |] ])
              | doc m%"
                The ACL. Set to `null` to not [add](https://github.com/electron-userland/electron-builder/issues/1822).
                
                Please see [required permissions for the S3 provider](https://github.com/electron-userland/electron-builder/issues/1618#issuecomment-314679128).
              "%
              | optional,
            bucket | String | doc "The bucket name.",
            channel
              | js2n.Nullable String
              | doc "The update channel."
              | optional,
            encryption
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.enum.TagOrString, [| '"aws:kms", 'AES256 |] ])
              | doc "Server-side encryption algorithm to use for the object."
              | optional,
            endpoint
              | js2n.Nullable String
              | doc m%"
                The endpoint URI to send requests to. The default endpoint is built from the configured region.
                The endpoint should be a string like `https://{service}.{region}.amazonaws.com`.
              "%
              | optional,
            path | js2n.Nullable String | doc "The directory path." | optional,
            provider
              | std.enum.TagOrString
              | [| 's3 |]
              | doc "The provider. Must be `s3`.",
            publishAutoUpdate
              | Bool
              | doc m%"
                Whether to publish auto update info files.
                
                Auto update relies only on the first provider in the list (you can specify several publishers).
                Thus, probably, there`s no need to upload the metadata files for the other configured providers. But by default will be uploaded.
              "%
              | optional,
            publisherName | js2n.Nullable (Array String) | optional,
            region
              | js2n.Nullable String
              | doc "The region. Is determined and set automatically when publishing."
              | optional,
            storageClass
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'STANDARD_IA, 'STANDARD, 'REDUCED_REDUNDANCY |]
                  ])
              | doc "The type of storage to use for the object."
              | optional,
            updaterCacheDirName | js2n.Nullable String | optional,
          },
      "definitions.SnapOptions" =
        {
            after
              | js2n.Nullable (Array String)
              | doc m%"
                Specifies any [parts](https://snapcraft.io/docs/reference/parts) that should be built before this part.
                Defaults to `["desktop-gtk2""]`.
                
                If list contains `default`, it will be replaced to default list, so, `["default", "foo"]` can be used to add custom parts `foo` in addition to defaults.
              "%
              | optional,
            artifactName
              | js2n.Nullable String
              | doc "The [artifact file name template](/configuration/configuration#artifact-file-name-template)."
              | optional,
            assumes
              | std.contract.any_of [ Array String, js2n.Null, String ]
              | doc "The list of features that must be supported by the core in order for this snap to install."
              | optional,
            buildPackages
              | js2n.Nullable (Array String)
              | doc "The list of debian packages needs to be installed for building this snap."
              | optional,
            category
              | js2n.Nullable String
              | doc "The [application category](https://specifications.freedesktop.org/menu-spec/latest/apa.html#main-category-registry)."
              | optional,
            confinement
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.enum.TagOrString, [| 'strict, 'devmode, 'classic |] ])
              | doc "The type of [confinement](https://snapcraft.io/docs/reference/confinement) supported by the snap."
              | optional,
            description
              | js2n.Nullable String
              | doc "As [description](/configuration/configuration#Metadata-description) from application package.json, but allows you to specify different for Linux."
              | optional,
            desktop
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "The [Desktop file](https://developer.gnome.org/integration-guide/stable/desktop-files.html.en) entries (name to value)."
              | optional,
            environment
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "The custom environment. Defaults to `{\"TMPDIR: \"$XDG_RUNTIME_DIR\"}`. If you set custom, it will be merged with default."
              | optional,
            grade
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.enum.TagOrString, [| 'stable, 'devel |] ])
              | doc "The quality grade of the snap. It can be either `devel` (i.e. a development version of the snap, so not to be published to the \"stable\" or \"candidate\" channels) or \"stable\" (i.e. a stable release or release candidate, which can be released to all channels)."
              | optional,
            hooks
              | js2n.Nullable String
              | doc "The [hooks](https://docs.snapcraft.io/build-snaps/hooks) directory, relative to `build` (build resources directory)."
              | optional,
            mimeTypes
              | js2n.Nullable (Array String)
              | doc "The mime types in addition to specified in the file associations. Use it if you don't want to register a new mime type, but reuse existing."
              | optional,
            plugs
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.PlugDescriptor", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.PlugDescriptor", { _ | Dyn } ],
                        String
                      ]
                  ),
                  js2n.Null
                ]
              | doc m%"
                The list of [plugs](https://snapcraft.io/docs/reference/interfaces).
                Defaults to `["desktop", "desktop-legacy", "home", "x11", "unity7", "browser-support", "network", "gsettings", "pulseaudio", "opengl"]`.
                
                If list contains `default`, it will be replaced to default list, so, `["default", "foo"]` can be used to add custom plug `foo` in addition to defaults.
                
                Additional attributes can be specified using object instead of just name of plug:
                ```
                [
                  {
                    "browser-sandbox": {
                      "interface": "browser-support",
                      "allow-sandbox": true
                    },
                  },
                  "another-simple-plug-name"
                ]
                ```
              "%
              | optional,
            publish
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.GithubOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.S3Options", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.GenericServerOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CustomPublishOptions", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.GithubOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.S3Options", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.GenericServerOptions",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.CustomPublishOptions",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  js2n.Null,
                  String
                ]
              | optional,
            stagePackages
              | js2n.Nullable (Array String)
              | doc m%"
                The list of Ubuntu packages to use that are needed to support the `app` part creation. Like `depends` for `deb`.
                Defaults to `["libasound2", "libgconf2-4", "libnotify4", "libnspr4", "libnss3", "libpcre3", "libpulse0", "libxss1", "libxtst6"]`.
                
                If list contains `default`, it will be replaced to default list, so, `["default", "foo"]` can be used to add custom package `foo` in addition to defaults.
              "%
              | optional,
            summary
              | js2n.Nullable String
              | doc "The 78 character long summary. Defaults to [productName](/configuration/configuration#Configuration-productName)."
              | optional,
            synopsis
              | js2n.Nullable String
              | doc "The [short description](https://www.debian.org/doc/debian-policy/ch-controlfields.html#s-f-Description)."
              | optional,
            useTemplateApp
              | Bool
              | doc "Whether to use template snap. Defaults to `true` if `stagePackages` not specified."
              | optional,
          },
      "definitions.SpacesOptions" =
        {
            acl
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.enum.TagOrString, [| 'public-read, 'private |] ])
              | doc "The ACL. Set to `null` to not [add](https://github.com/electron-userland/electron-builder/issues/1822)."
              | optional,
            channel
              | js2n.Nullable String
              | doc "The update channel."
              | optional,
            name | String | doc "The space name.",
            path | js2n.Nullable String | doc "The directory path." | optional,
            provider
              | std.enum.TagOrString
              | [| 'spaces |]
              | doc "The provider. Must be `spaces`.",
            publishAutoUpdate
              | Bool
              | doc m%"
                Whether to publish auto update info files.
                
                Auto update relies only on the first provider in the list (you can specify several publishers).
                Thus, probably, there`s no need to upload the metadata files for the other configured providers. But by default will be uploaded.
              "%
              | optional,
            publisherName | js2n.Nullable (Array String) | optional,
            region | String | doc "The region (e.g. `nyc3`).",
            updaterCacheDirName | js2n.Nullable String | optional,
          },
      "definitions.SquirrelWindowsOptions" =
        {
            artifactName
              | js2n.Nullable String
              | doc "The [artifact file name template](/configuration/configuration#artifact-file-name-template)."
              | optional,
            iconUrl
              | js2n.Nullable String
              | doc m%"
                A URL to an ICO file to use as the application icon (displayed in Control Panel > Programs and Features). Defaults to the Electron icon.
                
                Please note — [local icon file url is not accepted](https://github.com/atom/grunt-electron-installer/issues/73), must be https/http.
                
                If you don't plan to build windows installer, you can omit it.
                If your project repository is public on GitHub, it will be `https://github.com/${u}/${p}/blob/master/build/icon.ico?raw=true` by default.
              "%
              | optional,
            loadingGif
              | js2n.Nullable String
              | doc m%"
                The path to a .gif file to display during install. `build/install-spinner.gif` will be used if exists (it is a recommended way to set)
                (otherwise [default](https://github.com/electron/windows-installer/blob/master/resources/install-spinner.gif)).
              "%
              | optional,
            msi
              | Bool
              | doc "Whether to create an MSI installer. Defaults to `false` (MSI is not created)."
              | optional,
            name
              | String
              | doc "https://github.com/electron-userland/electron-builder/issues/1743"
              | optional,
            publish
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.GithubOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.S3Options", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.GenericServerOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CustomPublishOptions", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.GithubOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.S3Options", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.GenericServerOptions",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.CustomPublishOptions",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  js2n.Null,
                  String
                ]
              | optional,
            remoteReleases
              | std.contract.any_of [ js2n.Null, Bool, String ]
              | doc "A URL to your existing updates. Or `true` to automatically set to your GitHub repository. If given, these will be downloaded to create delta updates."
              | optional,
            remoteToken
              | js2n.Nullable String
              | doc "Authentication token for remote updates"
              | optional,
            useAppIdAsId
              | Bool
              | doc "Use `appId` to identify package instead of `name`."
              | optional,
          },
      "definitions.TargetConfiguration" =
        {
            arch
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [| 'x64, 'ia32, 'armv7l, 'arm64 |]
                      ]
                  ),
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'x64, 'ia32, 'armv7l, 'arm64 |] ]
                ]
              | doc "The arch or list of archs."
              | optional,
            target | String | doc "The target name. e.g. `snap`.",
          },
      "definitions.WindowsConfiguration" =
        {
            additionalCertificateFile
              | js2n.Nullable String
              | doc "The path to an additional certificate file you want to add to the signature block."
              | optional,
            appId
              | js2n.Nullable String
              | doc m%"
                The application id. Used as [CFBundleIdentifier](https://developer.apple.com/library/ios/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html#//apple_ref/doc/uid/20001431-102070) for MacOS and as
                [Application User Model ID](https://msdn.microsoft.com/en-us/library/windows/desktop/dd378459(v=vs.85).aspx) for Windows (NSIS target only, Squirrel.Windows not supported). It is strongly recommended that an explicit ID is set.
              "%
              | optional,
            artifactName
              | js2n.Nullable String
              | doc "The [artifact file name template](/configuration/configuration#artifact-file-name-template). Defaults to `${productName}-${version}.${ext}` (some target can have other defaults, see corresponding options)."
              | optional,
            asar
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.AsarOptions", { _ | Dyn } ],
                  js2n.Null,
                  Bool
                ]
              | doc m%"
                Whether to package the application's source code into an archive, using [Electron's archive format](http://electron.atom.io/docs/tutorial/application-packaging/).
                
                Node modules, that must be unpacked, will be detected automatically, you don't need to explicitly set [asarUnpack](#configuration-asarUnpack) - please file an issue if this doesn't work.
              "%
              | optional,
            asarUnpack
              | std.contract.any_of [ Array String, js2n.Null, String ]
              | doc "A [glob patterns](/file-patterns) relative to the [app directory](#MetadataDirectories-app), which specifies which files to unpack when creating the [asar](http://electron.atom.io/docs/tutorial/application-packaging/) archive."
              | optional,
            certificateFile
              | js2n.Nullable String
              | doc m%"
                The path to the *.pfx certificate you want to sign with. Please use it only if you cannot use env variable `CSC_LINK` (`WIN_CSC_LINK`) for some reason.
                Please see [Code Signing](/code-signing).
              "%
              | optional,
            certificatePassword
              | js2n.Nullable String
              | doc m%"
                The password to the certificate provided in `certificateFile`. Please use it only if you cannot use env variable `CSC_KEY_PASSWORD` (`WIN_CSC_KEY_PASSWORD`) for some reason.
                Please see [Code Signing](/code-signing).
              "%
              | optional,
            certificateSha1
              | js2n.Nullable String
              | doc "The SHA1 hash of the signing certificate. The SHA1 hash is commonly specified when multiple certificates satisfy the criteria specified by the remaining switches. Works only on Windows (or on macOS if [Parallels Desktop](https://www.parallels.com/products/desktop/) Windows 10 virtual machines exits)."
              | optional,
            certificateSubjectName
              | js2n.Nullable String
              | doc "The name of the subject of the signing certificate. Required only for EV Code Signing and works only on Windows (or on macOS if [Parallels Desktop](https://www.parallels.com/products/desktop/) Windows 10 virtual machines exits)."
              | optional,
            compression
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.enum.TagOrString, [| 'store, 'normal, 'maximum |] ])
              | doc "The compression level. If you want to rapidly test build, `store` can reduce build time significantly. `maximum` doesn't lead to noticeable size difference, but increase build time."
              | optional,
            cscKeyPassword | js2n.Nullable String | optional,
            cscLink | js2n.Nullable String | optional,
            detectUpdateChannel
              | Bool
              | doc "Whether to infer update channel from application version pre-release components. e.g. if version `0.12.1-alpha.1`, channel will be set to `alpha`. Otherwise to `latest`."
              | optional,
            electronUpdaterCompatibility
              | js2n.Nullable String
              | doc "The [electron-updater compatibility](/auto-update#compatibility) semver range."
              | optional,
            extraFiles
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FileSet", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.FileSet", { _ | Dyn } ],
                        String
                      ]
                  ),
                  js2n.Null,
                  String
                ]
              | optional,
            extraResources
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FileSet", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.FileSet", { _ | Dyn } ],
                        String
                      ]
                  ),
                  js2n.Null,
                  String
                ]
              | optional,
            fileAssociations
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FileAssociation", { _ | Dyn } ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.FileAssociation", { _ | Dyn } ]
                  )
                ]
              | doc "The file associations."
              | optional,
            files
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FileSet", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.FileSet", { _ | Dyn } ],
                        String
                      ]
                  ),
                  js2n.Null,
                  String
                ]
              | optional,
            forceCodeSigning
              | Bool
              | doc "Whether to fail if app will be not code signed."
              | optional,
            generateUpdatesFilesForAllChannels
              | Bool
              | doc "Please see [Building and Releasing using Channels](https://github.com/electron-userland/electron-builder/issues/1182#issuecomment-324947139)."
              | optional,
            icon
              | js2n.Nullable String
              | doc "The path to application icon."
              | optional,
            legalTrademarks
              | js2n.Nullable String
              | doc "The trademarks and registered trademarks."
              | optional,
            protocols
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Protocol", { _ | Dyn } ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.Protocol", { _ | Dyn } ]
                  )
                ]
              | doc "The URL protocol schemes."
              | optional,
            publish
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.GithubOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.S3Options", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.GenericServerOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CustomPublishOptions", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.GithubOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.S3Options", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.SpacesOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.GenericServerOptions",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.BintrayOptions", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.CustomPublishOptions",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  js2n.Null,
                  String
                ]
              | optional,
            publisherName
              | std.contract.any_of [ Array String, js2n.Null, String ]
              | doc m%"
                [The publisher name](https://github.com/electron-userland/electron-builder/issues/1187#issuecomment-278972073), exactly as in your code signed certificate. Several names can be provided.
                Defaults to common name from your code signing certificate.
              "%
              | optional,
            releaseInfo
              | refs."definitions.ReleaseInfo"
              | { _ | Dyn }
              | doc m%"
                The release info. Intended for command line usage:
                
                ```
                -c.releaseInfo.releaseNotes="new features"
                ```
              "%
              | optional,
            requestedExecutionLevel
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'requireAdministrator, 'highestAvailable, 'asInvoker |]
                  ])
              | doc m%"
                The [security level](https://msdn.microsoft.com/en-us/library/6ad1fshk.aspx#Anchor_9) at which the application requests to be executed.
                Cannot be specified per target, allowed only in the `win`.
              "%
              | optional,
            rfc3161TimeStampServer
              | js2n.Nullable String
              | doc "The URL of the RFC 3161 time stamp server."
              | optional,
            sign
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "The custom function (or path to file or module id) to sign Windows executable."
              | optional,
            signAndEditExecutable
              | Bool
              | doc "Whether to sign and add metadata to executable. Advanced option."
              | optional,
            signDlls
              | Bool
              | doc "Whether to sign DLL files. Advanced option."
              | optional,
            signingHashAlgorithms
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'sha256, 'sha1 |] ]
                ))
              | doc "Array of signing algorithms used. For AppX `sha256` is always used."
              | optional,
            target
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.TargetConfiguration", { _ | Dyn } ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            refs."definitions.TargetConfiguration",
                            { _ | Dyn }
                          ],
                        String
                      ]
                  ),
                  js2n.Null,
                  String
                ]
              | doc m%"
                The target package type: list of `nsis`, `nsis-web` (Web installer), `portable` ([portable](/configuration/nsis#portable) app without installation), `appx`, `msi`, `squirrel`, `7z`, `zip`, `tar.xz`, `tar.lz`, `tar.gz`, `tar.bz2`, `dir`.
                AppX package can be built only on Windows 10.
                
                To use Squirrel.Windows please install `electron-builder-squirrel-windows` dependency.
              "%
              | optional,
            timeStampServer
              | js2n.Nullable String
              | doc "The URL of the time stamp server."
              | optional,
            verifyUpdateCodeSignature
              | Bool
              | doc m%"
                Whether to verify the signature of an available update before installation.
                The [publisher name](#publisherName) will be used for the signature verification.
              "%
              | optional,
          },
    }
    in
  {
      "$schema"
        | js2n.Nullable String
        | doc "JSON Schema for this document."
        | optional,
      afterAllArtifactBuild
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "The function (or path to file or module id) to be [run after all artifacts are build](#afterAllArtifactBuild)."
        | optional,
      afterPack
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "The function (or path to file or module id) to be [run after pack](#afterpack) (but before pack into distributable format and sign)."
        | optional,
      afterSign
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "The function (or path to file or module id) to be [run after pack and sign](#aftersign) (but before pack into distributable format)."
        | optional,
      apk
        | js2n.Nullable refs."definitions.LinuxTargetSpecificOptions"
        | optional,
      appId
        | js2n.Nullable String
        | doc m%"
          The application id. Used as [CFBundleIdentifier](https://developer.apple.com/library/ios/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html#//apple_ref/doc/uid/20001431-102070) for MacOS and as
          [Application User Model ID](https://msdn.microsoft.com/en-us/library/windows/desktop/dd378459(v=vs.85).aspx) for Windows (NSIS target only, Squirrel.Windows not supported). It is strongly recommended that an explicit ID is set.
        "%
        | optional,
      appImage
        | js2n.Nullable refs."definitions.AppImageOptions"
        | doc "AppImage options."
        | optional,
      appx | js2n.Nullable refs."definitions.AppXOptions" | optional,
      artifactBuildCompleted
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "The function (or path to file or module id) to be run on artifact build completed."
        | optional,
      artifactBuildStarted
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "The function (or path to file or module id) to be run on artifact build start."
        | optional,
      artifactName
        | js2n.Nullable String
        | doc "The [artifact file name template](/configuration/configuration#artifact-file-name-template). Defaults to `${productName}-${version}.${ext}` (some target can have other defaults, see corresponding options)."
        | optional,
      asar
        | std.contract.any_of
          [ refs."definitions.AsarOptions", js2n.Null, Bool ]
        | doc m%"
          Whether to package the application's source code into an archive, using [Electron's archive format](http://electron.atom.io/docs/tutorial/application-packaging/).
          
          Node modules, that must be unpacked, will be detected automatically, you don't need to explicitly set [asarUnpack](#configuration-asarUnpack) - please file an issue if this doesn't work.
        "%
        | optional,
      asarUnpack
        | std.contract.any_of [ Array String, js2n.Null, String ]
        | doc "A [glob patterns](/file-patterns) relative to the [app directory](#MetadataDirectories-app), which specifies which files to unpack when creating the [asar](http://electron.atom.io/docs/tutorial/application-packaging/) archive."
        | optional,
      beforeBuild
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc m%"
          The function (or path to file or module id) to be run before dependencies are installed or rebuilt. Works when `npmRebuild` is set to `true`. Resolving to `false` will skip dependencies install or rebuild.
          
          If provided and `node_modules` are missing, it will not invoke production dependencies check.
        "%
        | optional,
      buildDependenciesFromSource
        | Bool
        | doc "Whether to build the application native dependencies from source."
        | optional,
      buildVersion
        | js2n.Nullable String
        | doc m%"
          The build version. Maps to the `CFBundleVersion` on macOS, and `FileVersion` metadata property on Windows. Defaults to the `version`.
          If `TRAVIS_BUILD_NUMBER` or `APPVEYOR_BUILD_NUMBER` or `CIRCLE_BUILD_NUM` or `BUILD_NUMBER` or `bamboo.buildNumber` env defined, it will be used as a build version (`version.build_number`).
        "%
        | optional,
      compression
        | js2n.Nullable
          (std.contract.Sequence
            [ std.enum.TagOrString, [| 'store, 'normal, 'maximum |] ])
        | doc "The compression level. If you want to rapidly test build, `store` can reduce build time significantly. `maximum` doesn't lead to noticeable size difference, but increase build time."
        | optional,
      copyright
        | js2n.Nullable String
        | doc "The human-readable copyright line for the app."
        | optional,
      cscKeyPassword | js2n.Nullable String | optional,
      cscLink | js2n.Nullable String | optional,
      deb
        | js2n.Nullable refs."definitions.DebOptions"
        | doc "Debian package options."
        | optional,
      detectUpdateChannel
        | Bool
        | doc "Whether to infer update channel from application version pre-release components. e.g. if version `0.12.1-alpha.1`, channel will be set to `alpha`. Otherwise to `latest`."
        | optional,
      directories
        | js2n.Nullable refs."definitions.MetadataDirectories"
        | optional,
      dmg
        | js2n.Nullable refs."definitions.DmgOptions"
        | doc "macOS DMG options."
        | optional,
      electronCompile
        | Bool
        | doc "Whether to use [electron-compile](http://github.com/electron/electron-compile) to compile app. Defaults to `true` if `electron-compile` in the dependencies. And `false` if in the `devDependencies` or doesn't specified."
        | optional,
      electronDist
        | String
        | doc "The path to custom Electron build (e.g. `~/electron/out/R`)."
        | optional,
      electronDownload
        | refs."definitions.ElectronDownloadOptions"
        | doc "The [electron-download](https://github.com/electron-userland/electron-download#usage) options."
        | optional,
      electronUpdaterCompatibility
        | js2n.Nullable String
        | doc "The [electron-updater compatibility](/auto-update#compatibility) semver range."
        | optional,
      electronVersion
        | js2n.Nullable String
        | doc "The version of electron you are packaging for. Defaults to version of `electron`, `electron-prebuilt` or `electron-prebuilt-compile` dependency."
        | optional,
      extends
        | js2n.Nullable String
        | doc m%"
          The name of a built-in configuration preset or path to config file (relative to project dir). Currently, only `react-cra` is supported.
          
          If `react-scripts` in the app dependencies, `react-cra` will be set automatically. Set to `null` to disable automatic detection.
        "%
        | optional,
      extraFiles
        | std.contract.any_of
          [
            refs."definitions.FileSet",
            Array (std.contract.any_of [ refs."definitions.FileSet", String ]),
            js2n.Null,
            String
          ]
        | optional,
      extraMetadata
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "Inject properties to `package.json`."
        | optional,
      extraResources
        | std.contract.any_of
          [
            refs."definitions.FileSet",
            Array (std.contract.any_of [ refs."definitions.FileSet", String ]),
            js2n.Null,
            String
          ]
        | optional,
      fileAssociations
        | std.contract.any_of
          [
            refs."definitions.FileAssociation",
            Array refs."definitions.FileAssociation"
          ]
        | doc "The file associations."
        | optional,
      files
        | std.contract.any_of
          [
            refs."definitions.FileSet",
            Array (std.contract.any_of [ refs."definitions.FileSet", String ]),
            js2n.Null,
            String
          ]
        | optional,
      forceCodeSigning
        | Bool
        | doc "Whether to fail if app will be not code signed."
        | optional,
      framework
        | js2n.Nullable String
        | doc "The framework name. One of `electron`, `proton-native`, `libui`. Defaults to `electron`."
        | optional,
      freebsd
        | js2n.Nullable refs."definitions.LinuxTargetSpecificOptions"
        | optional,
      generateUpdatesFilesForAllChannels
        | Bool
        | doc "Please see [Building and Releasing using Channels](https://github.com/electron-userland/electron-builder/issues/1182#issuecomment-324947139)."
        | optional,
      icon | js2n.Nullable String | optional,
      includePdb | Bool | doc "Whether to include PDB files." | optional,
      launchUiVersion
        | std.contract.any_of [ js2n.Null, Bool, String ]
        | doc "*libui-based frameworks only* The version of LaunchUI you are packaging for. Applicable for Windows only. Defaults to version suitable for used framework version."
        | optional,
      linux
        | js2n.Nullable refs."definitions.LinuxConfiguration"
        | doc "Options related to how build Linux targets."
        | optional,
      mac
        | js2n.Nullable refs."definitions.MacConfiguration"
        | doc "Options related to how build macOS targets."
        | optional,
      mas
        | js2n.Nullable refs."definitions.MasConfiguration"
        | doc "MAS (Mac Application Store) options."
        | optional,
      msi | js2n.Nullable refs."definitions.MsiOptions" | optional,
      muonVersion
        | js2n.Nullable String
        | doc "The version of muon you are packaging for."
        | optional,
      nodeGypRebuild
        | Bool
        | doc m%"
          Whether to execute `node-gyp rebuild` before starting to package the app.
          
          Don't [use](https://github.com/electron-userland/electron-builder/issues/683#issuecomment-241214075) [npm](http://electron.atom.io/docs/tutorial/using-native-node-modules/#using-npm) (neither `.npmrc`) for configuring electron headers. Use `electron-builder node-gyp-rebuild` instead.
        "%
        | optional,
      nodeVersion
        | js2n.Nullable String
        | doc m%"
          *libui-based frameworks only* The version of NodeJS you are packaging for.
          You can set it to `current` to set the Node.js version that you use to run.
        "%
        | optional,
      npmArgs
        | std.contract.any_of [ Array String, js2n.Null, String ]
        | doc "Additional command line arguments to use when installing app native deps."
        | optional,
      npmRebuild
        | Bool
        | doc "Whether to [rebuild](https://docs.npmjs.com/cli/rebuild) native dependencies before starting to package the app."
        | optional,
      npmSkipBuildFromSource | Bool | optional,
      nsis | js2n.Nullable refs."definitions.NsisOptions" | optional,
      nsisWeb | js2n.Nullable refs."definitions.NsisWebOptions" | optional,
      onNodeModuleFile
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "The function (or path to file or module id) to be [run on each node module](#onnodemodulefile) file."
        | optional,
      p5p
        | js2n.Nullable refs."definitions.LinuxTargetSpecificOptions"
        | optional,
      pacman
        | js2n.Nullable refs."definitions.LinuxTargetSpecificOptions"
        | optional,
      pkg
        | js2n.Nullable refs."definitions.PkgOptions"
        | doc "macOS PKG options."
        | optional,
      portable | js2n.Nullable refs."definitions.PortableOptions" | optional,
      productName
        | js2n.Nullable String
        | doc "As [name](#Metadata-name), but allows you to specify a product name for your executable which contains spaces and other special characters not allowed in the [name property](https://docs.npmjs.com/files/package.json#name)."
        | optional,
      protocols
        | std.contract.any_of
          [ refs."definitions.Protocol", Array refs."definitions.Protocol" ]
        | doc "The URL protocol schemes."
        | optional,
      protonNodeVersion | js2n.Nullable String | optional,
      publish
        | std.contract.any_of
          [
            refs."definitions.GithubOptions",
            refs."definitions.S3Options",
            refs."definitions.SpacesOptions",
            refs."definitions.GenericServerOptions",
            refs."definitions.BintrayOptions",
            refs."definitions.CustomPublishOptions",
            js2n.array.ArrayOf
              (std.contract.any_of
                [
                  refs."definitions.GithubOptions",
                  refs."definitions.S3Options",
                  refs."definitions.SpacesOptions",
                  refs."definitions.GenericServerOptions",
                  refs."definitions.BintrayOptions",
                  refs."definitions.CustomPublishOptions",
                  String
                ]),
            js2n.Null,
            String
          ]
        | optional,
      readonly
        | Bool
        | doc "Whether to fail if the application is not signed (to prevent unsigned app if code signing configuration is not correct)."
        | optional,
      releaseInfo
        | refs."definitions.ReleaseInfo"
        | doc m%"
          The release info. Intended for command line usage:
          
          ```
          -c.releaseInfo.releaseNotes="new features"
          ```
        "%
        | optional,
      remoteBuild
        | Bool
        | doc "Whether to build using Electron Build Service if target not supported on current OS."
        | optional,
      removePackageScripts
        | Bool
        | doc "Whether to remove `scripts` field from `package.json` files."
        | optional,
      rpm
        | js2n.Nullable refs."definitions.LinuxTargetSpecificOptions"
        | optional,
      snap
        | js2n.Nullable refs."definitions.SnapOptions"
        | doc "Snap options."
        | optional,
      squirrelWindows
        | js2n.Nullable refs."definitions.SquirrelWindowsOptions"
        | optional,
      target
        | std.contract.any_of
          [
            refs."definitions.TargetConfiguration",
            Array (
              std.contract.any_of
                [ refs."definitions.TargetConfiguration", String ]
            ),
            js2n.Null,
            String
          ]
        | optional,
      win
        | js2n.Nullable refs."definitions.WindowsConfiguration"
        | doc "Options related to how build Windows targets."
        | optional,
    }