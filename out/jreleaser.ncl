# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Active" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'SNAPSHOT,
                'RELEASE_PRERELEASE,
                'PRERELEASE,
                'RELEASE,
                'NEVER,
                'ALWAYS
              |]
            ],
      "definitions.Algorithm" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'SHA3_512,
                'SHA3_384,
                'SHA3_256,
                'SHA3_224,
                'SHA_512,
                'SHA_384,
                'SHA_256,
                'SHA_1,
                'RMD160,
                'MD5,
                'MD2
              |]
            ],
      "definitions.Announce" =
        {
            active | refs."definitions.Active" | String | optional,
            article
              | refs."definitions.ArticleAnnouncer"
              | { _ | Dyn }
              | optional,
            bluesky
              | refs."definitions.BlueskyAnnouncer"
              | { _ | Dyn }
              | optional,
            configuredHttp
              | refs."definitions.HttpAnnouncers"
              | { _ | Dyn }
              | optional,
            configuredWebhooks
              | refs."definitions.WebhooksAnnouncer"
              | { _ | Dyn }
              | optional,
            discord
              | refs."definitions.DiscordAnnouncer"
              | { _ | Dyn }
              | optional,
            discourse
              | refs."definitions.DiscourseAnnouncer"
              | { _ | Dyn }
              | optional,
            discussions
              | refs."definitions.DiscussionsAnnouncer"
              | { _ | Dyn }
              | optional,
            gitter
              | refs."definitions.GitterAnnouncer"
              | { _ | Dyn }
              | optional,
            googleChat
              | refs."definitions.GoogleChatAnnouncer"
              | { _ | Dyn }
              | optional,
            http
              | refs."definitions.HttpAnnouncerMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.HttpAnnouncer", { _ | Dyn } ]
              }
              | optional,
            linkedin
              | refs."definitions.LinkedinAnnouncer"
              | { _ | Dyn }
              | optional,
            mail | refs."definitions.SmtpAnnouncer" | { _ | Dyn } | optional,
            mastodon
              | refs."definitions.MastodonAnnouncer"
              | { _ | Dyn }
              | optional,
            mattermost
              | refs."definitions.MattermostAnnouncer"
              | { _ | Dyn }
              | optional,
            openCollective
              | refs."definitions.OpenCollectiveAnnouncer"
              | { _ | Dyn }
              | optional,
            sdkman
              | refs."definitions.SdkmanAnnouncer"
              | { _ | Dyn }
              | optional,
            slack | refs."definitions.SlackAnnouncer" | { _ | Dyn } | optional,
            smtp | refs."definitions.SmtpAnnouncer" | { _ | Dyn } | optional,
            teams | refs."definitions.TeamsAnnouncer" | { _ | Dyn } | optional,
            telegram
              | refs."definitions.TelegramAnnouncer"
              | { _ | Dyn }
              | optional,
            twitter
              | refs."definitions.TwitterAnnouncer"
              | { _ | Dyn }
              | optional,
            webhooks
              | refs."definitions.WebhookAnnouncerMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.WebhookAnnouncer", { _ | Dyn } ]
              }
              | optional,
            zulip | refs."definitions.ZulipAnnouncer" | { _ | Dyn } | optional,
          },
      "definitions.AppImagePackager" =
        {
            active | refs."definitions.Active" | String | optional,
            categories | Array String | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            componentId | String | optional,
            continueOnError | Bool | optional,
            developerId | String | optional,
            developerName | String | optional,
            downloadUrl | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            icons
              | Array (
                std.contract.Sequence [ refs."definitions.Icon", { _ | Dyn } ]
              )
              | optional,
            repository
              | refs."definitions.AppImageRepository"
              | { _ | Dyn }
              | optional,
            requiresTerminal | Bool | optional,
            screenshots
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Screenshot", { _ | Dyn } ]
              )
              | optional,
            skipReleases | Array String | optional,
            skipTemplates | Array String | optional,
            templateDirectory | String | optional,
          },
      "definitions.AppImageRepository" =
        {
            active | refs."definitions.Active" | String | optional,
            branch | String | optional,
            branchPush | String | optional,
            commitMessage | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            owner | String | optional,
            tagName | String | optional,
            token | String | optional,
            username | String | optional,
          },
      "definitions.Append" =
        {
            content | String | optional,
            contentTemplate | String | optional,
            enabled | Bool | optional,
            target | String | optional,
            title | String | optional,
          },
      "definitions.ApplicationPackage" =
        {
            appName | String | optional,
            appVersion | String | optional,
            copyright | String | optional,
            fileAssociations | Array String | optional,
            licenseFile | String | optional,
            vendor | String | optional,
          },
      "definitions.Apply" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'FORCE, 'WARN, 'ALWAYS, 'NEVER |] ],
      "definitions.Architecture" =
        {
            buildOn | Array String | optional,
            ignoreError | Bool | optional,
            runOn | Array String | optional,
          },
      "definitions.ArchiveAssembler" =
        {
            active | refs."definitions.Active" | String | optional,
            applyDefaultMatrix | Bool | optional,
            archiveName | String | optional,
            artifacts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Artifact", { _ | Dyn } ]
              )
              | optional,
            attachPlatform | Bool | optional,
            distributionType
              | refs."definitions.DistributionType"
              | String
              | optional,
            exported | Bool | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            fileSets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FileSet", { _ | Dyn } ]
              )
              | optional,
            files
              | Array (
                std.contract.Sequence [ refs."definitions.Glob", { _ | Dyn } ]
              )
              | optional,
            formats
              | Array (
                std.contract.Sequence [ refs."definitions.Format-1", String ]
              )
              | optional,
            matrix | refs."definitions.Matrix" | { _ | Dyn } | optional,
            options
              | refs."definitions.ArchiveOptions"
              | { _ | Dyn }
              | optional,
            platform | refs."definitions.Platform" | { _ | Dyn } | optional,
            skipTemplates | Array String | optional,
            stereotype | refs."definitions.Stereotype" | String | optional,
            swid | refs."definitions.SwidTag" | { _ | Dyn } | optional,
            templateDirectory | String | optional,
          },
      "definitions.ArchiveAssemblerMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.ArchiveAssembler", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.ArchiveAssembler", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.ArchiveOptions" =
        {
            bigNumberMode | refs."definitions.TarMode" | String | optional,
            longFileMode | refs."definitions.TarMode" | String | optional,
            timestamp | String | optional,
          },
      "definitions.Archiving" =
        {
            active | refs."definitions.Active" | String | optional,
            enabled | Bool | optional,
            format | refs."definitions.Format-1" | String | optional,
          },
      "definitions.ArticleAnnouncer" =
        {
            active | refs."definitions.Active" | String | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            files
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Artifact", { _ | Dyn } ]
              )
              | optional,
            readTimeout | std.number.Integer | optional,
            repository | refs."definitions.Repository" | { _ | Dyn } | optional,
            templateDirectory | String | optional,
          },
      "definitions.Artifact" =
        {
            active | refs."definitions.Active" | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            path | String | optional,
            platform | String | optional,
            transform | String | optional,
          },
      "definitions.ArtifactOverride" =
        {
            artifactId | String | optional,
            groupId | String | optional,
            jar | Bool | optional,
            javadocJar | Bool | optional,
            sourceJar | Bool | optional,
            verifyPom | Bool | optional,
          },
      "definitions.ArtifactoryMavenDeployer" =
        {
            active | refs."definitions.Active" | String | optional,
            applyMavenCentralRules | Bool | optional,
            artifactOverrides
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ArtifactOverride", { _ | Dyn } ]
              )
              | optional,
            authorization
              | refs."definitions.Authorization"
              | String
              | optional,
            checksums | Bool | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            javadocJar | Bool | optional,
            password | String | optional,
            readTimeout | std.number.Integer | optional,
            sign | Bool | optional,
            snapshotSupported | Bool | optional,
            sourceJar | Bool | optional,
            stagingRepositories | Array String | optional,
            url | String | optional,
            username | String | optional,
            verifyPom | Bool | optional,
          },
      "definitions.ArtifactoryMavenDeployerMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [
                        refs."definitions.ArtifactoryMavenDeployer",
                        { _ | Dyn }
                      ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [
                            refs."definitions.ArtifactoryMavenDeployer",
                            { _ | Dyn }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.ArtifactoryRepository" =
        {
            active | refs."definitions.Active" | String | optional,
            fileTypes
              | Array (
                std.contract.Sequence [ refs."definitions.FileType", String ]
              )
              | optional,
            path | String | optional,
          },
      "definitions.ArtifactoryUploader" =
        {
            active | refs."definitions.Active" | String | optional,
            artifacts | Bool | optional,
            authorization
              | refs."definitions.Authorization"
              | String
              | optional,
            catalogs | Bool | optional,
            checksums | Bool | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            files | Bool | optional,
            headers
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            host | String | optional,
            password | String | optional,
            readTimeout | std.number.Integer | optional,
            repositories
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ArtifactoryRepository", { _ | Dyn } ]
              )
              | optional,
            signatures | Bool | optional,
            username | String | optional,
          },
      "definitions.ArtifactoryUploaderMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.ArtifactoryUploader", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [
                            refs."definitions.ArtifactoryUploader",
                            { _ | Dyn }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.AsdfPackager" =
        {
            active | refs."definitions.Active" | String | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            continueOnError | Bool | optional,
            downloadUrl | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            repository
              | refs."definitions.AsdfRepository"
              | { _ | Dyn }
              | optional,
            skipTemplates | Array String | optional,
            templateDirectory | String | optional,
            toolCheck | String | optional,
          },
      "definitions.AsdfRepository" =
        {
            active | refs."definitions.Active" | String | optional,
            branch | String | optional,
            branchPush | String | optional,
            commitMessage | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            owner | String | optional,
            tagName | String | optional,
            token | String | optional,
            username | String | optional,
          },
      "definitions.Assemble" =
        {
            active | refs."definitions.Active" | String | optional,
            archive
              | refs."definitions.ArchiveAssemblerMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.ArchiveAssembler", { _ | Dyn } ]
              }
              | optional,
            deb
              | refs."definitions.Map(String,DebAssembler)"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.DebAssembler", { _ | Dyn } ]
              }
              | optional,
            javaArchive
              | refs."definitions.JavaArchiveAssemblerMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.JavaArchiveAssembler", { _ | Dyn } ]
              }
              | optional,
            jlink
              | refs."definitions.JlinkAssemblerMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.JlinkAssembler", { _ | Dyn } ]
              }
              | optional,
            jpackage
              | refs."definitions.JpackageAssemblerMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.JpackageAssembler", { _ | Dyn } ]
              }
              | optional,
            nativeImage
              | refs."definitions.NativeImageAssemblerMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.NativeImageAssembler", { _ | Dyn } ]
              }
              | optional,
          },
      "definitions.Asset" =
        {
            input | String | optional,
            output | String | optional,
            unpack | refs."definitions.Unpack" | { _ | Dyn } | optional,
          },
      "definitions.Authorization" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'BEARER, 'BASIC, 'NONE |] ],
      "definitions.AzureMavenDeployer" =
        {
            active | refs."definitions.Active" | String | optional,
            applyMavenCentralRules | Bool | optional,
            artifactOverrides
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ArtifactOverride", { _ | Dyn } ]
              )
              | optional,
            authorization
              | refs."definitions.Authorization"
              | String
              | optional,
            checksums | Bool | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            javadocJar | Bool | optional,
            password | String | optional,
            readTimeout | std.number.Integer | optional,
            sign | Bool | optional,
            snapshotSupported | Bool | optional,
            sourceJar | Bool | optional,
            stagingRepositories | Array String | optional,
            url | String | optional,
            username | String | optional,
            verifyPom | Bool | optional,
          },
      "definitions.AzureMavenDeployerMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.AzureMavenDeployer", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [
                            refs."definitions.AzureMavenDeployer",
                            { _ | Dyn }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.BlueskyAnnouncer" =
        {
            active | refs."definitions.Active" | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            handle | String | optional,
            host | String | optional,
            password | String | optional,
            readTimeout | std.number.Integer | optional,
            status | String | optional,
            statusTemplate | String | optional,
            statuses | Array String | optional,
          },
      "definitions.BrewPackager" =
        {
            active | refs."definitions.Active" | String | optional,
            cask | refs."definitions.Cask" | { _ | Dyn } | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            continueOnError | Bool | optional,
            dependencies
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Dependency", { _ | Dyn } ]
              )
              | optional,
            downloadStrategy | String | optional,
            downloadUrl | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            formulaName | String | optional,
            livecheck | Array String | optional,
            multiPlatform | Bool | optional,
            repository
              | refs."definitions.HomebrewRepository"
              | { _ | Dyn }
              | optional,
            requireRelative | Array String | optional,
            skipTemplates | Array String | optional,
            templateDirectory | String | optional,
          },
      "definitions.Buildx" =
        {
            createBuilder | Bool | optional,
            createBuilderFlags | Array String | optional,
            enabled | Bool | optional,
            platforms | Array String | optional,
          },
      "definitions.Cask" =
        {
            appName | String | optional,
            appcast | String | optional,
            displayName | String | optional,
            enabled | Bool | optional,
            name | String | optional,
            pkgName | String | optional,
            uninstall
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CaskItem", { _ | Dyn } ]
              )
              | optional,
            zap
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CaskItem", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.CaskItem" =
        { items | Array String | optional, name | String | optional, },
      "definitions.Catalog" =
        {
            active | refs."definitions.Active" | String | optional,
            github
              | refs."definitions.GithubCataloger"
              | { _ | Dyn }
              | optional,
            sbom | refs."definitions.Sbom" | { _ | Dyn } | optional,
            slsa | refs."definitions.SlsaCataloger" | { _ | Dyn } | optional,
            swid
              | refs."definitions.SwidTagMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.SwidTag", { _ | Dyn } ]
              }
              | optional,
          },
      "definitions.Category" =
        {
            format | String | optional,
            key | String | optional,
            labels | Array String | optional,
            order | std.number.Integer | optional,
            title | String | optional,
          },
      "definitions.Changelog" =
        {
            append | refs."definitions.Append" | { _ | Dyn } | optional,
            categories
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Category", { _ | Dyn } ]
              )
              | optional,
            categoryTitleFormat | String | optional,
            content | String | optional,
            contentTemplate | String | optional,
            contributors
              | refs."definitions.Contributors"
              | { _ | Dyn }
              | optional,
            contributorsTitleFormat | String | optional,
            enabled | Bool | optional,
            excludeLabels | Array String | optional,
            external | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            format | String | optional,
            formatted | refs."definitions.Active" | String | optional,
            hide | refs."definitions.Hide" | { _ | Dyn } | optional,
            includeLabels | Array String | optional,
            labelers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Labeler", { _ | Dyn } ]
              )
              | optional,
            links | Bool | optional,
            preset | String | optional,
            replacers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Replacer", { _ | Dyn } ]
              )
              | optional,
            skipMergeCommits | Bool | optional,
            sort | refs."definitions.Sort" | String | optional,
          },
      "definitions.Checksum" =
        {
            algorithms
              | Array (
                std.contract.Sequence [ refs."definitions.Algorithm", String ]
              )
              | optional,
            artifacts | Bool | optional,
            files | Bool | optional,
            individual | Bool | optional,
            name | String | optional,
          },
      "definitions.ChocolateyPackager" =
        {
            active | refs."definitions.Active" | String | optional,
            apiKey | String | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            continueOnError | Bool | optional,
            downloadUrl | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            iconUrl | String | optional,
            packageName | String | optional,
            packageVersion | String | optional,
            remoteBuild | Bool | optional,
            repository
              | refs."definitions.ChocolateyRepository"
              | { _ | Dyn }
              | optional,
            skipTemplates | Array String | optional,
            source | String | optional,
            templateDirectory | String | optional,
            title | String | optional,
            username | String | optional,
          },
      "definitions.ChocolateyRepository" =
        {
            active | refs."definitions.Active" | String | optional,
            branch | String | optional,
            branchPush | String | optional,
            commitMessage | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            owner | String | optional,
            tagName | String | optional,
            token | String | optional,
            username | String | optional,
          },
      "definitions.CodebergReleaser" =
        {
            apiEndpoint | String | optional,
            artifacts | Bool | optional,
            branch | String | optional,
            branchPush | String | optional,
            catalogs | Bool | optional,
            changelog | refs."definitions.Changelog" | { _ | Dyn } | optional,
            checksums | Bool | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            commitUrl | String | optional,
            connectTimeout | std.number.Integer | optional,
            downloadUrl | String | optional,
            draft | Bool | optional,
            enabled | Bool | optional,
            files | Bool | optional,
            host | String | optional,
            issueTrackerUrl | String | optional,
            issues | refs."definitions.Issues" | { _ | Dyn } | optional,
            latestReleaseUrl | String | optional,
            milestone | refs."definitions.Milestone" | { _ | Dyn } | optional,
            name | String | optional,
            overwrite | Bool | optional,
            owner | String | optional,
            prerelease | refs."definitions.Prerelease" | { _ | Dyn } | optional,
            previousTagName | String | optional,
            readTimeout | std.number.Integer | optional,
            releaseName | String | optional,
            releaseNotesUrl | String | optional,
            repoCloneUrl | String | optional,
            repoUrl | String | optional,
            sign | Bool | optional,
            signatures | Bool | optional,
            skipRelease | Bool | optional,
            skipTag | Bool | optional,
            srcUrl | String | optional,
            tagName | String | optional,
            token | String | optional,
            update | refs."definitions.Update" | { _ | Dyn } | optional,
            uploadAssets | refs."definitions.Active" | String | optional,
            username | String | optional,
          },
      "definitions.Command-1" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'MINOR, 'MAJOR |] ],
      "definitions.Command-2" =
        {
            args | Array String | optional,
            defaultKeyring | Bool | optional,
            executable | String | optional,
            homeDir | String | optional,
            keyName | String | optional,
            publicKeyring | String | optional,
          },
      "definitions.CommandHook" =
        {
            active | refs."definitions.Active" | String | optional,
            applyDefaultMatrix | Bool | optional,
            cmd | String | optional,
            condition | String | optional,
            continueOnError | Bool | optional,
            environment
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            filter | refs."definitions.Filter" | { _ | Dyn } | optional,
            matrix | refs."definitions.Matrix" | { _ | Dyn } | optional,
            platforms | Array String | optional,
            verbose | Bool | optional,
          },
      "definitions.CommandHooks" =
        {
            active | refs."definitions.Active" | String | optional,
            applyDefaultMatrix | Bool | optional,
            before
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CommandHook", { _ | Dyn } ]
              )
              | optional,
            condition | String | optional,
            environment
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            failure
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CommandHook", { _ | Dyn } ]
              )
              | optional,
            matrix | refs."definitions.Matrix" | { _ | Dyn } | optional,
            success
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CommandHook", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.CommitAuthor" =
        { email | String | optional, name | String | optional, },
      "definitions.Contributors" =
        { enabled | Bool | optional, format | String | optional, },
      "definitions.Control" =
        {
            breaks | Array String | optional,
            builtUsing | String | optional,
            conflicts | Array String | optional,
            depends | Array String | optional,
            description | String | optional,
            enhances | Array String | optional,
            essential | Bool | optional,
            homepage | String | optional,
            maintainer | String | optional,
            packageName | String | optional,
            packageRevision | std.number.Integer | optional,
            packageVersion | String | optional,
            preDepends | Array String | optional,
            "priority" | refs."definitions.Priority" | String | optional,
            provides | String | optional,
            recommends | Array String | optional,
            section | refs."definitions.Section" | String | optional,
            suggests | Array String | optional,
          },
      "definitions.Cosign" =
        {
            privateKeyFile | String | optional,
            publicKeyFile | String | optional,
            version | String | optional,
          },
      "definitions.CyclonedxSbomCataloger" =
        {
            active | refs."definitions.Active" | String | optional,
            distributions | Bool | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            files | Bool | optional,
            formats
              | Array (
                std.contract.Sequence [ refs."definitions.Format-2", String ]
              )
              | optional,
            pack | refs."definitions.Pack" | { _ | Dyn } | optional,
            version | String | optional,
          },
      "definitions.DebAssembler" =
        {
            active | refs."definitions.Active" | String | optional,
            architecture | String | optional,
            artifacts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Artifact", { _ | Dyn } ]
              )
              | optional,
            assemblerRef | String | optional,
            control | refs."definitions.Control" | { _ | Dyn } | optional,
            distributionType
              | refs."definitions.DistributionType"
              | String
              | optional,
            executable | String | optional,
            exported | Bool | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            fileSets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FileSet", { _ | Dyn } ]
              )
              | optional,
            files
              | Array (
                std.contract.Sequence [ refs."definitions.Glob", { _ | Dyn } ]
              )
              | optional,
            installationPath | String | optional,
            platform | refs."definitions.Platform" | { _ | Dyn } | optional,
            skipTemplates | Array String | optional,
            stereotype | refs."definitions.Stereotype" | String | optional,
            swid | refs."definitions.SwidTag" | { _ | Dyn } | optional,
            templateDirectory | String | optional,
          },
      "definitions.Dependencies" =
        {
            externalDependencies | Array String | optional,
            packageDependencies
              | Array (
                std.contract.Sequence
                  [ refs."definitions.PackageDependency", { _ | Dyn } ]
              )
              | optional,
            windowsFeatures | Array String | optional,
            windowsLibraries | Array String | optional,
          },
      "definitions.Dependency" =
        { key | String | optional, value | String | optional, },
      "definitions.Deploy" =
        {
            active | refs."definitions.Active" | String | optional,
            maven | refs."definitions.Maven" | { _ | Dyn } | optional,
          },
      "definitions.DiscordAnnouncer" =
        {
            active | refs."definitions.Active" | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            message | String | optional,
            messageTemplate | String | optional,
            readTimeout | std.number.Integer | optional,
            webhook | String | optional,
          },
      "definitions.DiscourseAnnouncer" =
        {
            active | refs."definitions.Active" | String | optional,
            apiKey | String | optional,
            categoryName | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            host | String | optional,
            message | String | optional,
            messageTemplate | String | optional,
            readTimeout | std.number.Integer | optional,
            title | String | optional,
            username | String | optional,
          },
      "definitions.DiscussionsAnnouncer" =
        {
            active | refs."definitions.Active" | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            message | String | optional,
            messageTemplate | String | optional,
            organization | String | optional,
            readTimeout | std.number.Integer | optional,
            team | String | optional,
            title | String | optional,
          },
      "definitions.Distribution" =
        {
            active | refs."definitions.Active" | String | optional,
            appImage
              | refs."definitions.AppImagePackager"
              | { _ | Dyn }
              | optional,
            applyDefaultMatrix | Bool | optional,
            artifactPattern
              | refs."definitions.Artifact"
              | { _ | Dyn }
              | optional,
            artifacts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Artifact", { _ | Dyn } ]
              )
              | optional,
            asdf | refs."definitions.AsdfPackager" | { _ | Dyn } | optional,
            brew | refs."definitions.BrewPackager" | { _ | Dyn } | optional,
            chocolatey
              | refs."definitions.ChocolateyPackager"
              | { _ | Dyn }
              | optional,
            docker | refs."definitions.DockerPackager" | { _ | Dyn } | optional,
            executable | refs."definitions.Executable" | { _ | Dyn } | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            flatpak
              | refs."definitions.FlatpakPackager"
              | { _ | Dyn }
              | optional,
            gofish | refs."definitions.GofishPackager" | { _ | Dyn } | optional,
            java | refs."definitions.Java-2" | { _ | Dyn } | optional,
            jbang | refs."definitions.JbangPackager" | { _ | Dyn } | optional,
            jib | refs."definitions.JibPackager" | { _ | Dyn } | optional,
            macports
              | refs."definitions.MacportsPackager"
              | { _ | Dyn }
              | optional,
            matrix | refs."definitions.Matrix" | { _ | Dyn } | optional,
            name | String | optional,
            platform | refs."definitions.Platform" | { _ | Dyn } | optional,
            scoop | refs."definitions.ScoopPackager" | { _ | Dyn } | optional,
            sdkman | refs."definitions.SdkmanPackager" | { _ | Dyn } | optional,
            snap | refs."definitions.SnapPackager" | { _ | Dyn } | optional,
            spec | refs."definitions.SpecPackager" | { _ | Dyn } | optional,
            stereotype | refs."definitions.Stereotype" | String | optional,
            tags | Array String | optional,
            type | refs."definitions.DistributionType" | String | optional,
            winget | refs."definitions.WingetPackager" | { _ | Dyn } | optional,
          },
      "definitions.DistributionMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.Distribution", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.Distribution", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.DistributionType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'NATIVE_PACKAGE,
                'NATIVE_IMAGE,
                'SINGLE_JAR,
                'JLINK,
                'JAVA_BINARY,
                'FLAT_BINARY,
                'BINARY
              |]
            ],
      "definitions.DockerCommand" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'PODMAN, 'DOCKER |] ],
      "definitions.DockerPackager" =
        {
            active | refs."definitions.Active" | String | optional,
            baseImage | String | optional,
            buildArgs | Array String | optional,
            buildx | refs."definitions.Buildx" | { _ | Dyn } | optional,
            command | refs."definitions.DockerCommand" | String | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            continueOnError | Bool | optional,
            downloadUrl | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            imageNames | Array String | optional,
            labels
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            postCommands | Array String | optional,
            preCommands | Array String | optional,
            registries
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Registry-1", { _ | Dyn } ]
              )
              | optional,
            repository
              | refs."definitions.DockerRepository"
              | { _ | Dyn }
              | optional,
            skipTemplates | Array String | optional,
            specs
              | refs."definitions.DockerSpecMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.DockerSpec", { _ | Dyn } ]
              }
              | optional,
            templateDirectory | String | optional,
            useLocalArtifact | Bool | optional,
          },
      "definitions.DockerRepository" =
        {
            active | refs."definitions.Active" | String | optional,
            branch | String | optional,
            branchPush | String | optional,
            commitMessage | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            owner | String | optional,
            tagName | String | optional,
            token | String | optional,
            username | String | optional,
            versionedSubfolders | Bool | optional,
          },
      "definitions.DockerSpec" =
        {
            active | refs."definitions.Active" | String | optional,
            artifact | refs."definitions.Artifact" | { _ | Dyn } | optional,
            baseImage | String | optional,
            buildArgs | Array String | optional,
            buildx | refs."definitions.Buildx" | { _ | Dyn } | optional,
            command | refs."definitions.DockerCommand" | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            imageNames | Array String | optional,
            labels
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            matchers | refs."definitions.Properties" | { _ | Dyn } | optional,
            name | String | optional,
            postCommands | Array String | optional,
            preCommands | Array String | optional,
            registries
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Registry-1", { _ | Dyn } ]
              )
              | optional,
            skipTemplates | Array String | optional,
            templateDirectory | String | optional,
            useLocalArtifact | Bool | optional,
          },
      "definitions.DockerSpecMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.DockerSpec", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.DockerSpec", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.Download" =
        {
            active | refs."definitions.Active" | String | optional,
            ftp
              | refs."definitions.FtpDownloaderMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.FtpDownloader", { _ | Dyn } ]
              }
              | optional,
            http
              | refs."definitions.HttpDownloaderMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.HttpDownloader", { _ | Dyn } ]
              }
              | optional,
            scp
              | refs."definitions.ScpDownloaderMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.ScpDownloader", { _ | Dyn } ]
              }
              | optional,
            sftp
              | refs."definitions.SftpDownloaderMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.SftpDownloader", { _ | Dyn } ]
              }
              | optional,
          },
      "definitions.Entity" =
        {
            name | String | optional,
            regid | String | optional,
            roles | Array String | optional,
          },
      "definitions.Environment" =
        {
            properties | refs."definitions.Properties" | { _ | Dyn } | optional,
            variables | String | optional,
          },
      "definitions.EnvironmentVariables" =
        {
            linux
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            osx
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            universal
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            unix
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            windows
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
          },
      "definitions.Executable" =
        {
            name | String | optional,
            unixExtension | String | optional,
            windowsExtension | String | optional,
          },
      "definitions.Extension" =
        {
            directory | String | optional,
            enabled | Bool | optional,
            gav | String | optional,
            name | String | optional,
            providers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Provider", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.ExtensionMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.Extension", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.Extension", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.FileSet" =
        {
            active | refs."definitions.Active" | String | optional,
            excludes | Array String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            failOnMissingInput | Bool | optional,
            includes | Array String | optional,
            input | String | optional,
            output | String | optional,
            platform | String | optional,
          },
      "definitions.FileType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'ZST,
                'ZIP,
                'TXZ,
                'TGZ,
                'TBZ2,
                'TAR_ZST,
                'TAR_XZ,
                'TAR_GZ,
                'TAR_BZ2,
                'TAR,
                'SIG,
                'SH,
                'RPM,
                'PS1,
                'PKG,
                'NUGET,
                'MSI,
                'JAR,
                'EXE,
                'DMG,
                'DEB,
                'CMD,
                'BAT,
                'ASC
              |]
            ],
      "definitions.Files" =
        {
            active | refs."definitions.Active" | String | optional,
            artifacts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Artifact", { _ | Dyn } ]
              )
              | optional,
            globs
              | Array (
                std.contract.Sequence [ refs."definitions.Glob", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.Filter" =
        {
            excludes | Array String | optional,
            includes | Array String | optional,
          },
      "definitions.FlatpakPackager" =
        {
            active | refs."definitions.Active" | String | optional,
            categories | Array String | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            componentId | String | optional,
            continueOnError | Bool | optional,
            developerId | String | optional,
            developerName | String | optional,
            downloadUrl | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            finishArgs | Array String | optional,
            icons
              | Array (
                std.contract.Sequence [ refs."definitions.Icon", { _ | Dyn } ]
              )
              | optional,
            repository
              | refs."definitions.FlatpakRepository"
              | { _ | Dyn }
              | optional,
            runtime | refs."definitions.Runtime" | String | optional,
            runtimeVersion | String | optional,
            screenshots
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Screenshot", { _ | Dyn } ]
              )
              | optional,
            sdkExtensions | Array String | optional,
            skipReleases | Array String | optional,
            skipTemplates | Array String | optional,
            templateDirectory | String | optional,
          },
      "definitions.FlatpakRepository" =
        {
            active | refs."definitions.Active" | String | optional,
            branch | String | optional,
            branchPush | String | optional,
            commitMessage | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            owner | String | optional,
            tagName | String | optional,
            token | String | optional,
            username | String | optional,
          },
      "definitions.ForgejoMavenDeployer" =
        {
            active | refs."definitions.Active" | String | optional,
            applyMavenCentralRules | Bool | optional,
            artifactOverrides
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ArtifactOverride", { _ | Dyn } ]
              )
              | optional,
            authorization
              | refs."definitions.Authorization"
              | String
              | optional,
            checksums | Bool | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            javadocJar | Bool | optional,
            password | String | optional,
            readTimeout | std.number.Integer | optional,
            sign | Bool | optional,
            snapshotSupported | Bool | optional,
            sourceJar | Bool | optional,
            stagingRepositories | Array String | optional,
            url | String | optional,
            username | String | optional,
            verifyPom | Bool | optional,
          },
      "definitions.ForgejoMavenDeployerMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.ForgejoMavenDeployer", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [
                            refs."definitions.ForgejoMavenDeployer",
                            { _ | Dyn }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.ForgejoReleaser" =
        {
            apiEndpoint | String | optional,
            artifacts | Bool | optional,
            branch | String | optional,
            branchPush | String | optional,
            catalogs | Bool | optional,
            changelog | refs."definitions.Changelog" | { _ | Dyn } | optional,
            checksums | Bool | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            commitUrl | String | optional,
            connectTimeout | std.number.Integer | optional,
            downloadUrl | String | optional,
            draft | Bool | optional,
            enabled | Bool | optional,
            files | Bool | optional,
            host | String | optional,
            issueTrackerUrl | String | optional,
            issues | refs."definitions.Issues" | { _ | Dyn } | optional,
            latestReleaseUrl | String | optional,
            milestone | refs."definitions.Milestone" | { _ | Dyn } | optional,
            name | String | optional,
            overwrite | Bool | optional,
            owner | String | optional,
            prerelease | refs."definitions.Prerelease" | { _ | Dyn } | optional,
            previousTagName | String | optional,
            readTimeout | std.number.Integer | optional,
            releaseName | String | optional,
            releaseNotesUrl | String | optional,
            repoCloneUrl | String | optional,
            repoUrl | String | optional,
            sign | Bool | optional,
            signatures | Bool | optional,
            skipRelease | Bool | optional,
            skipTag | Bool | optional,
            srcUrl | String | optional,
            tagName | String | optional,
            token | String | optional,
            update | refs."definitions.Update" | { _ | Dyn } | optional,
            uploadAssets | refs."definitions.Active" | String | optional,
            username | String | optional,
          },
      "definitions.ForgejoUploader" =
        {
            active | refs."definitions.Active" | String | optional,
            artifacts | Bool | optional,
            catalogs | Bool | optional,
            checksums | Bool | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            files | Bool | optional,
            host | String | optional,
            owner | String | optional,
            packageName | String | optional,
            packageVersion | String | optional,
            readTimeout | std.number.Integer | optional,
            signatures | Bool | optional,
            token | String | optional,
          },
      "definitions.ForgejoUploaderMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.ForgejoUploader", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.ForgejoUploader", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.Format-1" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'TXZ,
                'TGZ,
                'TBZ2,
                'TAR_ZST,
                'TAR_XZ,
                'TAR_GZ,
                'TAR_BZ2,
                'TAR,
                'ZIP
              |]
            ],
      "definitions.Format-2" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'PROTOBUF, 'XML, 'JSON |] ],
      "definitions.Format-3" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'TEXT,
                'TABLE,
                'SPDX_JSON,
                'GITHUB_JSON,
                'CYCLONEDX_JSON,
                'CYCLONEDX_XML,
                'SYFT_JSON
              |]
            ],
      "definitions.Format-4" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'OCI, 'DOCKER |] ],
      "definitions.FtpDownloader" =
        {
            active | refs."definitions.Active" | String | optional,
            assets
              | Array (
                std.contract.Sequence [ refs."definitions.Asset", { _ | Dyn } ]
              )
              | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            host | String | optional,
            password | String | optional,
            port | std.number.Integer | optional,
            readTimeout | std.number.Integer | optional,
            username | String | optional,
          },
      "definitions.FtpDownloaderMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.FtpDownloader", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.FtpDownloader", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.FtpUploader" =
        {
            active | refs."definitions.Active" | String | optional,
            artifacts | Bool | optional,
            catalogs | Bool | optional,
            checksums | Bool | optional,
            connectTimeout | std.number.Integer | optional,
            downloadUrl | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            files | Bool | optional,
            host | String | optional,
            password | String | optional,
            path | String | optional,
            port | std.number.Integer | optional,
            readTimeout | std.number.Integer | optional,
            signatures | Bool | optional,
            username | String | optional,
          },
      "definitions.FtpUploaderMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.FtpUploader", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.FtpUploader", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.GenericGitReleaser" =
        {
            apiEndpoint | String | optional,
            artifacts | Bool | optional,
            branch | String | optional,
            branchPush | String | optional,
            catalogs | Bool | optional,
            changelog | refs."definitions.Changelog" | { _ | Dyn } | optional,
            checksums | Bool | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            commitUrl | String | optional,
            connectTimeout | std.number.Integer | optional,
            downloadUrl | String | optional,
            enabled | Bool | optional,
            files | Bool | optional,
            host | String | optional,
            issueTrackerUrl | String | optional,
            issues | refs."definitions.Issues" | { _ | Dyn } | optional,
            latestReleaseUrl | String | optional,
            milestone | refs."definitions.Milestone" | { _ | Dyn } | optional,
            name | String | optional,
            overwrite | Bool | optional,
            owner | String | optional,
            prerelease | refs."definitions.Prerelease" | { _ | Dyn } | optional,
            previousTagName | String | optional,
            readTimeout | std.number.Integer | optional,
            releaseName | String | optional,
            releaseNotesUrl | String | optional,
            repoCloneUrl | String | optional,
            repoUrl | String | optional,
            sign | Bool | optional,
            signatures | Bool | optional,
            skipRelease | Bool | optional,
            skipTag | Bool | optional,
            srcUrl | String | optional,
            tagName | String | optional,
            token | String | optional,
            update | refs."definitions.Update" | { _ | Dyn } | optional,
            uploadAssets | refs."definitions.Active" | String | optional,
            username | String | optional,
          },
      "definitions.GiteaMavenDeployer" =
        {
            active | refs."definitions.Active" | String | optional,
            applyMavenCentralRules | Bool | optional,
            artifactOverrides
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ArtifactOverride", { _ | Dyn } ]
              )
              | optional,
            authorization
              | refs."definitions.Authorization"
              | String
              | optional,
            checksums | Bool | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            javadocJar | Bool | optional,
            password | String | optional,
            readTimeout | std.number.Integer | optional,
            sign | Bool | optional,
            snapshotSupported | Bool | optional,
            sourceJar | Bool | optional,
            stagingRepositories | Array String | optional,
            url | String | optional,
            username | String | optional,
            verifyPom | Bool | optional,
          },
      "definitions.GiteaMavenDeployerMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.GiteaMavenDeployer", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [
                            refs."definitions.GiteaMavenDeployer",
                            { _ | Dyn }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.GiteaReleaser" =
        {
            apiEndpoint | String | optional,
            artifacts | Bool | optional,
            branch | String | optional,
            branchPush | String | optional,
            catalogs | Bool | optional,
            changelog | refs."definitions.Changelog" | { _ | Dyn } | optional,
            checksums | Bool | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            commitUrl | String | optional,
            connectTimeout | std.number.Integer | optional,
            downloadUrl | String | optional,
            draft | Bool | optional,
            enabled | Bool | optional,
            files | Bool | optional,
            host | String | optional,
            issueTrackerUrl | String | optional,
            issues | refs."definitions.Issues" | { _ | Dyn } | optional,
            latestReleaseUrl | String | optional,
            milestone | refs."definitions.Milestone" | { _ | Dyn } | optional,
            name | String | optional,
            overwrite | Bool | optional,
            owner | String | optional,
            prerelease | refs."definitions.Prerelease" | { _ | Dyn } | optional,
            previousTagName | String | optional,
            readTimeout | std.number.Integer | optional,
            releaseName | String | optional,
            releaseNotesUrl | String | optional,
            repoCloneUrl | String | optional,
            repoUrl | String | optional,
            sign | Bool | optional,
            signatures | Bool | optional,
            skipRelease | Bool | optional,
            skipTag | Bool | optional,
            srcUrl | String | optional,
            tagName | String | optional,
            token | String | optional,
            update | refs."definitions.Update" | { _ | Dyn } | optional,
            uploadAssets | refs."definitions.Active" | String | optional,
            username | String | optional,
          },
      "definitions.GiteaUploader" =
        {
            active | refs."definitions.Active" | String | optional,
            artifacts | Bool | optional,
            catalogs | Bool | optional,
            checksums | Bool | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            files | Bool | optional,
            host | String | optional,
            owner | String | optional,
            packageName | String | optional,
            packageVersion | String | optional,
            readTimeout | std.number.Integer | optional,
            signatures | Bool | optional,
            token | String | optional,
          },
      "definitions.GiteaUploaderMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.GiteaUploader", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.GiteaUploader", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.GithubCataloger" =
        {
            active | refs."definitions.Active" | String | optional,
            artifacts | Bool | optional,
            attestationName | String | optional,
            deployables | Bool | optional,
            excludes | Array String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            files | Bool | optional,
            includes | Array String | optional,
          },
      "definitions.GithubMavenDeployer" =
        {
            active | refs."definitions.Active" | String | optional,
            applyMavenCentralRules | Bool | optional,
            artifactOverrides
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ArtifactOverride", { _ | Dyn } ]
              )
              | optional,
            authorization
              | refs."definitions.Authorization"
              | String
              | optional,
            checksums | Bool | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            javadocJar | Bool | optional,
            password | String | optional,
            readTimeout | std.number.Integer | optional,
            repository | String | optional,
            sign | Bool | optional,
            snapshotSupported | Bool | optional,
            sourceJar | Bool | optional,
            stagingRepositories | Array String | optional,
            url | String | optional,
            username | String | optional,
            verifyPom | Bool | optional,
          },
      "definitions.GithubMavenDeployerMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.GithubMavenDeployer", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [
                            refs."definitions.GithubMavenDeployer",
                            { _ | Dyn }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.GithubReleaser" =
        {
            apiEndpoint | String | optional,
            artifacts | Bool | optional,
            branch | String | optional,
            branchPush | String | optional,
            catalogs | Bool | optional,
            changelog | refs."definitions.Changelog" | { _ | Dyn } | optional,
            checksums | Bool | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            commitUrl | String | optional,
            connectTimeout | std.number.Integer | optional,
            discussionCategoryName | String | optional,
            downloadUrl | String | optional,
            draft | Bool | optional,
            enabled | Bool | optional,
            files | Bool | optional,
            host | String | optional,
            issueTrackerUrl | String | optional,
            issues | refs."definitions.Issues" | { _ | Dyn } | optional,
            latestReleaseUrl | String | optional,
            makeLatest | refs."definitions.MakeLatest" | String | optional,
            milestone | refs."definitions.Milestone" | { _ | Dyn } | optional,
            name | String | optional,
            overwrite | Bool | optional,
            owner | String | optional,
            prerelease | refs."definitions.Prerelease" | { _ | Dyn } | optional,
            previousTagName | String | optional,
            readTimeout | std.number.Integer | optional,
            releaseName | String | optional,
            releaseNotes
              | refs."definitions.ReleaseNotes"
              | { _ | Dyn }
              | optional,
            releaseNotesUrl | String | optional,
            repoCloneUrl | String | optional,
            repoUrl | String | optional,
            sign | Bool | optional,
            signatures | Bool | optional,
            skipRelease | Bool | optional,
            skipTag | Bool | optional,
            srcUrl | String | optional,
            tagName | String | optional,
            token | String | optional,
            update | refs."definitions.Update" | { _ | Dyn } | optional,
            uploadAssets | refs."definitions.Active" | String | optional,
            username | String | optional,
          },
      "definitions.GitlabMavenDeployer" =
        {
            active | refs."definitions.Active" | String | optional,
            applyMavenCentralRules | Bool | optional,
            artifactOverrides
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ArtifactOverride", { _ | Dyn } ]
              )
              | optional,
            authorization
              | refs."definitions.Authorization"
              | String
              | optional,
            checksums | Bool | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            javadocJar | Bool | optional,
            password | String | optional,
            projectIdentifier | String | optional,
            readTimeout | std.number.Integer | optional,
            sign | Bool | optional,
            snapshotSupported | Bool | optional,
            sourceJar | Bool | optional,
            stagingRepositories | Array String | optional,
            url | String | optional,
            username | String | optional,
            verifyPom | Bool | optional,
          },
      "definitions.GitlabMavenDeployerMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.GitlabMavenDeployer", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [
                            refs."definitions.GitlabMavenDeployer",
                            { _ | Dyn }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.GitlabReleaser" =
        {
            apiEndpoint | String | optional,
            artifacts | Bool | optional,
            branch | String | optional,
            branchPush | String | optional,
            catalogs | Bool | optional,
            changelog | refs."definitions.Changelog" | { _ | Dyn } | optional,
            checksums | Bool | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            commitUrl | String | optional,
            connectTimeout | std.number.Integer | optional,
            downloadUrl | String | optional,
            enabled | Bool | optional,
            files | Bool | optional,
            host | String | optional,
            issueTrackerUrl | String | optional,
            issues | refs."definitions.Issues" | { _ | Dyn } | optional,
            latestReleaseUrl | String | optional,
            milestone | refs."definitions.Milestone" | { _ | Dyn } | optional,
            name | String | optional,
            overwrite | Bool | optional,
            owner | String | optional,
            prerelease | refs."definitions.Prerelease" | { _ | Dyn } | optional,
            previousTagName | String | optional,
            projectIdentifier | String | optional,
            readTimeout | std.number.Integer | optional,
            releaseName | String | optional,
            releaseNotesUrl | String | optional,
            repoCloneUrl | String | optional,
            repoUrl | String | optional,
            sign | Bool | optional,
            signatures | Bool | optional,
            skipRelease | Bool | optional,
            skipTag | Bool | optional,
            srcUrl | String | optional,
            tagName | String | optional,
            token | String | optional,
            update | refs."definitions.Update" | { _ | Dyn } | optional,
            uploadAssets | refs."definitions.Active" | String | optional,
            uploadLinks
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            username | String | optional,
          },
      "definitions.GitlabUploader" =
        {
            active | refs."definitions.Active" | String | optional,
            artifacts | Bool | optional,
            catalogs | Bool | optional,
            checksums | Bool | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            files | Bool | optional,
            host | String | optional,
            packageName | String | optional,
            packageVersion | String | optional,
            projectIdentifier | String | optional,
            readTimeout | std.number.Integer | optional,
            signatures | Bool | optional,
            token | String | optional,
          },
      "definitions.GitlabUploaderMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.GitlabUploader", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.GitlabUploader", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.GitterAnnouncer" =
        {
            active | refs."definitions.Active" | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            message | String | optional,
            messageTemplate | String | optional,
            readTimeout | std.number.Integer | optional,
            webhook | String | optional,
          },
      "definitions.Glob" =
        {
            active | refs."definitions.Active" | String | optional,
            directory | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            pattern | String | optional,
            platform | String | optional,
          },
      "definitions.GofishPackager" =
        {
            active | refs."definitions.Active" | String | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            continueOnError | Bool | optional,
            downloadUrl | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            repository
              | refs."definitions.GofishRepository"
              | { _ | Dyn }
              | optional,
            skipTemplates | Array String | optional,
            templateDirectory | String | optional,
          },
      "definitions.GofishRepository" =
        {
            active | refs."definitions.Active" | String | optional,
            branch | String | optional,
            branchPush | String | optional,
            commitMessage | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            owner | String | optional,
            tagName | String | optional,
            token | String | optional,
            username | String | optional,
          },
      "definitions.GoogleChatAnnouncer" =
        {
            active | refs."definitions.Active" | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            message | String | optional,
            messageTemplate | String | optional,
            readTimeout | std.number.Integer | optional,
            webhook | String | optional,
          },
      "definitions.Hide" =
        {
            categories | Array String | optional,
            contributors | Array String | optional,
            uncategorized | Bool | optional,
          },
      "definitions.HomebrewRepository" =
        {
            active | refs."definitions.Active" | String | optional,
            branch | String | optional,
            branchPush | String | optional,
            commitMessage | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            owner | String | optional,
            tagName | String | optional,
            token | String | optional,
            username | String | optional,
          },
      "definitions.Hooks" =
        {
            active | refs."definitions.Active" | String | optional,
            applyDefaultMatrix | Bool | optional,
            command | refs."definitions.CommandHooks" | { _ | Dyn } | optional,
            condition | String | optional,
            environment
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            matrix | refs."definitions.Matrix" | { _ | Dyn } | optional,
            script | refs."definitions.ScriptHooks" | { _ | Dyn } | optional,
          },
      "definitions.HttpAnnouncer" =
        {
            active | refs."definitions.Active" | String | optional,
            authorization
              | refs."definitions.Authorization"
              | String
              | optional,
            bearerKeyword | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            headers
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            method | refs."definitions.Method" | String | optional,
            password | String | optional,
            payload | String | optional,
            payloadTemplate | String | optional,
            readTimeout | std.number.Integer | optional,
            url | String | optional,
            username | String | optional,
          },
      "definitions.HttpAnnouncerMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.HttpAnnouncer", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.HttpAnnouncer", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.HttpAnnouncers" =
        {
            active | refs."definitions.Active" | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            http
              | refs."definitions.HttpAnnouncerMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.HttpAnnouncer", { _ | Dyn } ]
              }
              | optional,
            readTimeout | std.number.Integer | optional,
          },
      "definitions.HttpDownloader" =
        {
            active | refs."definitions.Active" | String | optional,
            assets
              | Array (
                std.contract.Sequence [ refs."definitions.Asset", { _ | Dyn } ]
              )
              | optional,
            authorization
              | refs."definitions.Authorization"
              | String
              | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            headers
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            password | String | optional,
            readTimeout | std.number.Integer | optional,
            username | String | optional,
          },
      "definitions.HttpDownloaderMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.HttpDownloader", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.HttpDownloader", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.HttpUploader" =
        {
            active | refs."definitions.Active" | String | optional,
            artifacts | Bool | optional,
            authorization
              | refs."definitions.Authorization"
              | String
              | optional,
            catalogs | Bool | optional,
            checksums | Bool | optional,
            connectTimeout | std.number.Integer | optional,
            downloadUrl | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            files | Bool | optional,
            headers
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            method | refs."definitions.Method" | String | optional,
            password | String | optional,
            readTimeout | std.number.Integer | optional,
            signatures | Bool | optional,
            uploadUrl | String | optional,
            username | String | optional,
          },
      "definitions.HttpUploaderMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.HttpUploader", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.HttpUploader", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.Icon" =
        {
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            height | std.number.Integer | optional,
            primary | Bool | optional,
            url | String | optional,
            width | std.number.Integer | optional,
          },
      "definitions.Installer" =
        {
            command | String | optional,
            dependencies
              | refs."definitions.Dependencies"
              | { _ | Dyn }
              | optional,
            modes
              | Array (
                std.contract.Sequence [ refs."definitions.Mode-1", String ]
              )
              | optional,
            scope | refs."definitions.Scope" | String | optional,
            type | refs."definitions.Type-2" | String | optional,
            upgradeBehavior
              | refs."definitions.UpgradeBehavior"
              | String
              | optional,
          },
      "definitions.Issues" =
        {
            applyMilestone | refs."definitions.Apply" | String | optional,
            comment | String | optional,
            enabled | Bool | optional,
            label | refs."definitions.Label" | { _ | Dyn } | optional,
          },
      "definitions.JReleaserModel" =
        {
            announce | refs."definitions.Announce" | { _ | Dyn } | optional,
            assemble | refs."definitions.Assemble" | { _ | Dyn } | optional,
            catalog | refs."definitions.Catalog" | { _ | Dyn } | optional,
            checksum | refs."definitions.Checksum" | { _ | Dyn } | optional,
            deploy | refs."definitions.Deploy" | { _ | Dyn } | optional,
            distributions
              | refs."definitions.DistributionMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.Distribution", { _ | Dyn } ]
              }
              | optional,
            download | refs."definitions.Download" | { _ | Dyn } | optional,
            environment
              | refs."definitions.Environment"
              | { _ | Dyn }
              | optional,
            extensions
              | refs."definitions.ExtensionMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.Extension", { _ | Dyn } ]
              }
              | optional,
            files | refs."definitions.Files" | { _ | Dyn } | optional,
            hooks | refs."definitions.Hooks" | { _ | Dyn } | optional,
            matrix | refs."definitions.Matrix" | { _ | Dyn } | optional,
            packagers | refs."definitions.Packagers" | { _ | Dyn } | optional,
            platform | refs."definitions.Platform" | { _ | Dyn } | optional,
            project | refs."definitions.Project" | { _ | Dyn } | optional,
            release | refs."definitions.Release" | { _ | Dyn } | optional,
            signing | refs."definitions.Signing" | { _ | Dyn } | optional,
            upload | refs."definitions.Upload" | { _ | Dyn } | optional,
          },
      "definitions.Java-1" =
        {
            environmentVariables
              | refs."definitions.EnvironmentVariables"
              | { _ | Dyn }
              | optional,
            jvmOptions | refs."definitions.JvmOptions" | { _ | Dyn } | optional,
            mainClass | String | optional,
            mainModule | String | optional,
            options | Array String | optional,
          },
      "definitions.Java-2" =
        {
            artifactId | String | optional,
            enabled | Bool | optional,
            environmentVariables
              | refs."definitions.EnvironmentVariables"
              | { _ | Dyn }
              | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            groupId | String | optional,
            jvmOptions | refs."definitions.JvmOptions" | { _ | Dyn } | optional,
            mainClass | String | optional,
            mainModule | String | optional,
            multiProject | Bool | optional,
            options | Array String | optional,
            version | String | optional,
          },
      "definitions.JavaArchive" =
        {
            libDirectoryName | String | optional,
            mainJarName | String | optional,
            path | String | optional,
          },
      "definitions.JavaArchiveAssembler" =
        {
            active | refs."definitions.Active" | String | optional,
            archiveName | String | optional,
            artifacts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Artifact", { _ | Dyn } ]
              )
              | optional,
            executable | refs."definitions.Executable" | { _ | Dyn } | optional,
            exported | Bool | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            fileSets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FileSet", { _ | Dyn } ]
              )
              | optional,
            files
              | Array (
                std.contract.Sequence [ refs."definitions.Glob", { _ | Dyn } ]
              )
              | optional,
            formats
              | Array (
                std.contract.Sequence [ refs."definitions.Format-1", String ]
              )
              | optional,
            jars
              | Array (
                std.contract.Sequence [ refs."definitions.Glob", { _ | Dyn } ]
              )
              | optional,
            java | refs."definitions.Java-1" | { _ | Dyn } | optional,
            mainJar | refs."definitions.Artifact" | { _ | Dyn } | optional,
            options
              | refs."definitions.ArchiveOptions"
              | { _ | Dyn }
              | optional,
            platform | refs."definitions.Platform" | { _ | Dyn } | optional,
            skipTemplates | Array String | optional,
            stereotype | refs."definitions.Stereotype" | String | optional,
            swid | refs."definitions.SwidTag" | { _ | Dyn } | optional,
            templateDirectory | String | optional,
          },
      "definitions.JavaArchiveAssemblerMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.JavaArchiveAssembler", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [
                            refs."definitions.JavaArchiveAssembler",
                            { _ | Dyn }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.JbangPackager" =
        {
            active | refs."definitions.Active" | String | optional,
            alias | String | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            continueOnError | Bool | optional,
            downloadUrl | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            repository
              | refs."definitions.JbangRepository"
              | { _ | Dyn }
              | optional,
            skipTemplates | Array String | optional,
            templateDirectory | String | optional,
          },
      "definitions.JbangRepository" =
        {
            active | refs."definitions.Active" | String | optional,
            branch | String | optional,
            branchPush | String | optional,
            commitMessage | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            owner | String | optional,
            tagName | String | optional,
            token | String | optional,
            username | String | optional,
          },
      "definitions.Jdeps" =
        {
            enabled | Bool | optional,
            ignoreMissingDeps | Bool | optional,
            multiRelease | String | optional,
            targets | Array String | optional,
            useWildcardInPath | Bool | optional,
          },
      "definitions.JibPackager" =
        {
            active | refs."definitions.Active" | String | optional,
            baseImage | String | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            continueOnError | Bool | optional,
            creationTime | String | optional,
            downloadUrl | String | optional,
            environment
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            exposedPorts | Array String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            format | refs."definitions.Format-4" | String | optional,
            imageNames | Array String | optional,
            labels
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            registries
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Registry-2", { _ | Dyn } ]
              )
              | optional,
            repository
              | refs."definitions.JibRepository"
              | { _ | Dyn }
              | optional,
            skipTemplates | Array String | optional,
            specs
              | refs."definitions.JibSpecMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.JibSpec", { _ | Dyn } ]
              }
              | optional,
            templateDirectory | String | optional,
            user | String | optional,
            version | String | optional,
            volumes | Array String | optional,
            workingDirectory | String | optional,
          },
      "definitions.JibRepository" =
        {
            active | refs."definitions.Active" | String | optional,
            branch | String | optional,
            branchPush | String | optional,
            commitMessage | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            owner | String | optional,
            tagName | String | optional,
            token | String | optional,
            username | String | optional,
            versionedSubfolders | Bool | optional,
          },
      "definitions.JibSpec" =
        {
            active | refs."definitions.Active" | String | optional,
            artifact | refs."definitions.Artifact" | { _ | Dyn } | optional,
            baseImage | String | optional,
            creationTime | String | optional,
            environment
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            exposedPorts | Array String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            format | refs."definitions.Format-4" | String | optional,
            imageNames | Array String | optional,
            labels
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            matchers | refs."definitions.Properties" | { _ | Dyn } | optional,
            name | String | optional,
            registries
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Registry-2", { _ | Dyn } ]
              )
              | optional,
            skipTemplates | Array String | optional,
            templateDirectory | String | optional,
            user | String | optional,
            volumes | Array String | optional,
            workingDirectory | String | optional,
          },
      "definitions.JibSpecMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.JibSpec", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.JibSpec", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.JlinkAssembler" =
        {
            active | refs."definitions.Active" | String | optional,
            additionalModuleNames | Array String | optional,
            applyDefaultMatrix | Bool | optional,
            archiveFormat | refs."definitions.Format-1" | String | optional,
            args | Array String | optional,
            artifacts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Artifact", { _ | Dyn } ]
              )
              | optional,
            copyJars | Bool | optional,
            executable | String | optional,
            exported | Bool | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            fileSets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FileSet", { _ | Dyn } ]
              )
              | optional,
            files
              | Array (
                std.contract.Sequence [ refs."definitions.Glob", { _ | Dyn } ]
              )
              | optional,
            imageName | String | optional,
            imageNameTransform | String | optional,
            jars
              | Array (
                std.contract.Sequence [ refs."definitions.Glob", { _ | Dyn } ]
              )
              | optional,
            java | refs."definitions.Java-2" | { _ | Dyn } | optional,
            javaArchive
              | refs."definitions.JavaArchive"
              | { _ | Dyn }
              | optional,
            jdeps | refs."definitions.Jdeps" | { _ | Dyn } | optional,
            jdk | refs."definitions.Artifact" | { _ | Dyn } | optional,
            mainJar | refs."definitions.Artifact" | { _ | Dyn } | optional,
            matrix | refs."definitions.Matrix" | { _ | Dyn } | optional,
            moduleNames | Array String | optional,
            options
              | refs."definitions.ArchiveOptions"
              | { _ | Dyn }
              | optional,
            platform | refs."definitions.Platform" | { _ | Dyn } | optional,
            skipTemplates | Array String | optional,
            stereotype | refs."definitions.Stereotype" | String | optional,
            swid | refs."definitions.SwidTag" | { _ | Dyn } | optional,
            targetJdkPattern
              | refs."definitions.Artifact"
              | { _ | Dyn }
              | optional,
            targetJdks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Artifact", { _ | Dyn } ]
              )
              | optional,
            templateDirectory | String | optional,
          },
      "definitions.JlinkAssemblerMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.JlinkAssembler", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.JlinkAssembler", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.JpackageAssembler" =
        {
            active | refs."definitions.Active" | String | optional,
            applicationPackage
              | refs."definitions.ApplicationPackage"
              | { _ | Dyn }
              | optional,
            artifacts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Artifact", { _ | Dyn } ]
              )
              | optional,
            attachPlatform | Bool | optional,
            executable | String | optional,
            exported | Bool | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            fileSets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FileSet", { _ | Dyn } ]
              )
              | optional,
            files
              | Array (
                std.contract.Sequence [ refs."definitions.Glob", { _ | Dyn } ]
              )
              | optional,
            jars
              | Array (
                std.contract.Sequence [ refs."definitions.Glob", { _ | Dyn } ]
              )
              | optional,
            java | refs."definitions.Java-2" | { _ | Dyn } | optional,
            jlink | String | optional,
            launcher | refs."definitions.Launcher" | { _ | Dyn } | optional,
            linux | refs."definitions.Linux" | { _ | Dyn } | optional,
            mainJar | refs."definitions.Artifact" | { _ | Dyn } | optional,
            osx | refs."definitions.Osx" | { _ | Dyn } | optional,
            platform | refs."definitions.Platform" | { _ | Dyn } | optional,
            runtimeImages
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Artifact", { _ | Dyn } ]
              )
              | optional,
            skipTemplates | Array String | optional,
            stereotype | refs."definitions.Stereotype" | String | optional,
            swid | refs."definitions.SwidTag" | { _ | Dyn } | optional,
            templateDirectory | String | optional,
            verbose | Bool | optional,
            windows | refs."definitions.Windows" | { _ | Dyn } | optional,
          },
      "definitions.JpackageAssemblerMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.JpackageAssembler", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.JpackageAssembler", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.JvmOptions" =
        {
            linux | Array String | optional,
            osx | Array String | optional,
            universal | Array String | optional,
            unix | Array String | optional,
            windows | Array String | optional,
          },
      "definitions.Label" =
        {
            color | String | optional,
            description | String | optional,
            name | String | optional,
          },
      "definitions.Labeler" =
        {
            body | String | optional,
            contributor | String | optional,
            label | String | optional,
            order | std.number.Integer | optional,
            title | String | optional,
          },
      "definitions.Languages" =
        { java | refs."definitions.Java-2" | { _ | Dyn } | optional, },
      "definitions.Launcher" =
        {
            arguments | Array String | optional,
            javaOptions | Array String | optional,
            launchers | Array String | optional,
          },
      "definitions.LinkedinAnnouncer" =
        {
            accessToken | String | optional,
            active | refs."definitions.Active" | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            message | String | optional,
            messageTemplate | String | optional,
            owner | String | optional,
            readTimeout | std.number.Integer | optional,
            subject | String | optional,
          },
      "definitions.Links" =
        {
            bugTracker | String | optional,
            contact | String | optional,
            contribute | String | optional,
            documentation | String | optional,
            donation | String | optional,
            faq | String | optional,
            help | String | optional,
            homepage | String | optional,
            license | String | optional,
            translate | String | optional,
            vcsBrowser | String | optional,
          },
      "definitions.Linux" =
        {
            appCategory | String | optional,
            appName | String | optional,
            appRelease | String | optional,
            icon | String | optional,
            installDir | String | optional,
            jdk | refs."definitions.Artifact" | { _ | Dyn } | optional,
            license | String | optional,
            maintainer | String | optional,
            menuGroup | String | optional,
            packageDeps | Array String | optional,
            packageName | String | optional,
            platform | String | optional,
            resourceDir | String | optional,
            shortcut | Bool | optional,
            types | Array String | optional,
            validTypes | Array String | optional,
          },
      "definitions.LinuxArm" =
        { args | Array String | optional, platform | String | optional, },
      "definitions.LinuxX86" =
        { args | Array String | optional, platform | String | optional, },
      "definitions.MacosArm" =
        { args | Array String | optional, platform | String | optional, },
      "definitions.MacosX86" =
        { args | Array String | optional, platform | String | optional, },
      "definitions.MacportsPackager" =
        {
            active | refs."definitions.Active" | String | optional,
            categories | Array String | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            continueOnError | Bool | optional,
            downloadUrl | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            maintainers | Array String | optional,
            packageName | String | optional,
            repository
              | refs."definitions.MacportsRepository"
              | { _ | Dyn }
              | optional,
            revision | std.number.Integer | optional,
            skipTemplates | Array String | optional,
            templateDirectory | String | optional,
          },
      "definitions.MacportsRepository" =
        {
            active | refs."definitions.Active" | String | optional,
            branch | String | optional,
            branchPush | String | optional,
            commitMessage | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            owner | String | optional,
            tagName | String | optional,
            token | String | optional,
            username | String | optional,
          },
      "definitions.MakeLatest" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'LEGACY, 'TRUE, 'FALSE |] ],
      "definitions.Map(String,DebAssembler)" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.DebAssembler", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.DebAssembler", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.Map(String,List(String))" =
        js2n.record.Record
            {
              additional = 'Some (Array String),
              patterns =
                { "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" = Array String, },
              properties = {},
              required = {},
            },
      "definitions.MastodonAnnouncer" =
        {
            accessToken | String | optional,
            active | refs."definitions.Active" | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            host | String | optional,
            readTimeout | std.number.Integer | optional,
            status | String | optional,
            statusTemplate | String | optional,
            statuses | Array String | optional,
          },
      "definitions.Matrix" =
        {
            rows
              | Array (
                std.contract.Sequence
                  [ refs."definitions.StringProperties", { _ | String } ]
              )
              | optional,
            vars
              | refs."definitions.Map(String,List(String))"
              | { _ | Array String }
              | optional,
          },
      "definitions.MattermostAnnouncer" =
        {
            active | refs."definitions.Active" | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            message | String | optional,
            messageTemplate | String | optional,
            readTimeout | std.number.Integer | optional,
            structuredMessage | Bool | optional,
            webhook | String | optional,
          },
      "definitions.Maven" =
        {
            active | refs."definitions.Active" | String | optional,
            artifactory
              | refs."definitions.ArtifactoryMavenDeployerMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.ArtifactoryMavenDeployer", { _ | Dyn } ]
              }
              | optional,
            azure
              | refs."definitions.AzureMavenDeployerMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.AzureMavenDeployer", { _ | Dyn } ]
              }
              | optional,
            forgejo
              | refs."definitions.ForgejoMavenDeployerMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.ForgejoMavenDeployer", { _ | Dyn } ]
              }
              | optional,
            gitea
              | refs."definitions.GiteaMavenDeployerMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.GiteaMavenDeployer", { _ | Dyn } ]
              }
              | optional,
            github
              | refs."definitions.GithubMavenDeployerMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.GithubMavenDeployer", { _ | Dyn } ]
              }
              | optional,
            gitlab
              | refs."definitions.GitlabMavenDeployerMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.GitlabMavenDeployer", { _ | Dyn } ]
              }
              | optional,
            mavenCentral
              | refs."definitions.MavenCentralMavenDeployerMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.MavenCentralMavenDeployer", { _ | Dyn } ]
              }
              | optional,
            nexus2
              | refs."definitions.Nexus2MavenDeployerMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.Nexus2MavenDeployer", { _ | Dyn } ]
              }
              | optional,
            nexus3
              | refs."definitions.Nexus3MavenDeployerMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.Nexus3MavenDeployer", { _ | Dyn } ]
              }
              | optional,
            pomchecker | refs."definitions.Pomchecker" | { _ | Dyn } | optional,
          },
      "definitions.MavenCentralMavenDeployer" =
        {
            active | refs."definitions.Active" | String | optional,
            applyMavenCentralRules | Bool | optional,
            artifactOverrides
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ArtifactOverride", { _ | Dyn } ]
              )
              | optional,
            authorization
              | refs."definitions.Authorization"
              | String
              | optional,
            checksums | Bool | optional,
            connectTimeout | std.number.Integer | optional,
            deploymentId | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            javadocJar | Bool | optional,
            maxRetries | std.number.Integer | optional,
            namespace | String | optional,
            password | String | optional,
            readTimeout | std.number.Integer | optional,
            retryDelay | std.number.Integer | optional,
            sign | Bool | optional,
            snapshotSupported | Bool | optional,
            sourceJar | Bool | optional,
            stage | refs."definitions.Stage-1" | String | optional,
            stagingRepositories | Array String | optional,
            url | String | optional,
            username | String | optional,
            verifyPom | Bool | optional,
            verifyUrl | String | optional,
          },
      "definitions.MavenCentralMavenDeployerMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [
                        refs."definitions.MavenCentralMavenDeployer",
                        { _ | Dyn }
                      ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [
                            refs."definitions.MavenCentralMavenDeployer",
                            { _ | Dyn }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.Method" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'POST, 'PUT |] ],
      "definitions.Milestone" =
        { close | Bool | optional, name | String | optional, },
      "definitions.MimeType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'HTML, 'TEXT |] ],
      "definitions.Mode-1" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'SILENT_WITH_PROGRESS, 'SILENT, 'INTERACTIVE |]
            ],
      "definitions.Mode-2" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'COSIGN, 'COMMAND, 'FILE, 'MEMORY |] ],
      "definitions.NativeImageAssembler" =
        {
            active | refs."definitions.Active" | String | optional,
            applyDefaultMatrix | Bool | optional,
            archiving | refs."definitions.Archiving" | { _ | Dyn } | optional,
            args | Array String | optional,
            artifacts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Artifact", { _ | Dyn } ]
              )
              | optional,
            components | Array String | optional,
            executable | String | optional,
            exported | Bool | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            fileSets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FileSet", { _ | Dyn } ]
              )
              | optional,
            files
              | Array (
                std.contract.Sequence [ refs."definitions.Glob", { _ | Dyn } ]
              )
              | optional,
            graal | refs."definitions.Artifact" | { _ | Dyn } | optional,
            graalJdkPattern
              | refs."definitions.Artifact"
              | { _ | Dyn }
              | optional,
            graalJdks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Artifact", { _ | Dyn } ]
              )
              | optional,
            imageName | String | optional,
            imageNameTransform | String | optional,
            jars
              | Array (
                std.contract.Sequence [ refs."definitions.Glob", { _ | Dyn } ]
              )
              | optional,
            java | refs."definitions.Java-2" | { _ | Dyn } | optional,
            linuxArm | refs."definitions.LinuxArm" | { _ | Dyn } | optional,
            linuxX86 | refs."definitions.LinuxX86" | { _ | Dyn } | optional,
            macosArm | refs."definitions.MacosArm" | { _ | Dyn } | optional,
            macosX86 | refs."definitions.MacosX86" | { _ | Dyn } | optional,
            mainJar | refs."definitions.Artifact" | { _ | Dyn } | optional,
            matrix | refs."definitions.Matrix" | { _ | Dyn } | optional,
            options
              | refs."definitions.ArchiveOptions"
              | { _ | Dyn }
              | optional,
            platform | refs."definitions.Platform" | { _ | Dyn } | optional,
            skipTemplates | Array String | optional,
            stereotype | refs."definitions.Stereotype" | String | optional,
            swid | refs."definitions.SwidTag" | { _ | Dyn } | optional,
            templateDirectory | String | optional,
            upx | refs."definitions.Upx" | { _ | Dyn } | optional,
            windowsX86 | refs."definitions.WindowsX86" | { _ | Dyn } | optional,
          },
      "definitions.NativeImageAssemblerMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.NativeImageAssembler", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [
                            refs."definitions.NativeImageAssembler",
                            { _ | Dyn }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.Nexus2MavenDeployer" =
        {
            active | refs."definitions.Active" | String | optional,
            applyMavenCentralRules | Bool | optional,
            artifactOverrides
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ArtifactOverride", { _ | Dyn } ]
              )
              | optional,
            authorization
              | refs."definitions.Authorization"
              | String
              | optional,
            checksums | Bool | optional,
            closeRepository | Bool | optional,
            connectTimeout | std.number.Integer | optional,
            endStage | refs."definitions.Stage-2" | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            javadocJar | Bool | optional,
            password | String | optional,
            readTimeout | std.number.Integer | optional,
            releaseRepository | Bool | optional,
            sign | Bool | optional,
            snapshotSupported | Bool | optional,
            snapshotUrl | String | optional,
            sourceJar | Bool | optional,
            stagingProfileId | String | optional,
            stagingRepositories | Array String | optional,
            stagingRepositoryId | String | optional,
            startStage | refs."definitions.Stage-2" | String | optional,
            transitionDelay | std.number.Integer | optional,
            transitionMaxRetries | std.number.Integer | optional,
            url | String | optional,
            username | String | optional,
            verifyPom | Bool | optional,
            verifyUrl | String | optional,
          },
      "definitions.Nexus2MavenDeployerMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.Nexus2MavenDeployer", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [
                            refs."definitions.Nexus2MavenDeployer",
                            { _ | Dyn }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.Nexus3MavenDeployer" =
        {
            active | refs."definitions.Active" | String | optional,
            applyMavenCentralRules | Bool | optional,
            artifactOverrides
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ArtifactOverride", { _ | Dyn } ]
              )
              | optional,
            authorization
              | refs."definitions.Authorization"
              | String
              | optional,
            checksums | Bool | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            javadocJar | Bool | optional,
            password | String | optional,
            readTimeout | std.number.Integer | optional,
            sign | Bool | optional,
            snapshotSupported | Bool | optional,
            sourceJar | Bool | optional,
            stagingRepositories | Array String | optional,
            url | String | optional,
            username | String | optional,
            verifyPom | Bool | optional,
          },
      "definitions.Nexus3MavenDeployerMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.Nexus3MavenDeployer", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [
                            refs."definitions.Nexus3MavenDeployer",
                            { _ | Dyn }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.OpenCollectiveAnnouncer" =
        {
            active | refs."definitions.Active" | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            host | String | optional,
            message | String | optional,
            messageTemplate | String | optional,
            readTimeout | std.number.Integer | optional,
            slug | String | optional,
            title | String | optional,
            token | String | optional,
          },
      "definitions.Osx" =
        {
            appName | String | optional,
            icon | String | optional,
            installDir | String | optional,
            jdk | refs."definitions.Artifact" | { _ | Dyn } | optional,
            packageIdentifier | String | optional,
            packageName | String | optional,
            packageSigningPrefix | String | optional,
            platform | String | optional,
            resourceDir | String | optional,
            sign | Bool | optional,
            signingKeyUsername | String | optional,
            signingKeychain | String | optional,
            types | Array String | optional,
            validTypes | Array String | optional,
          },
      "definitions.Pack" =
        { enabled | Bool | optional, name | String | optional, },
      "definitions.Package" =
        {
            identifier | String | optional,
            name | String | optional,
            url | String | optional,
            version | String | optional,
          },
      "definitions.PackageDependency" =
        {
            minimumVersion | String | optional,
            packageIdentifier | String | optional,
          },
      "definitions.Packagers" =
        {
            active | refs."definitions.Active" | String | optional,
            appImage
              | refs."definitions.AppImagePackager"
              | { _ | Dyn }
              | optional,
            asdf | refs."definitions.AsdfPackager" | { _ | Dyn } | optional,
            brew | refs."definitions.BrewPackager" | { _ | Dyn } | optional,
            chocolatey
              | refs."definitions.ChocolateyPackager"
              | { _ | Dyn }
              | optional,
            docker | refs."definitions.DockerPackager" | { _ | Dyn } | optional,
            flatpak
              | refs."definitions.FlatpakPackager"
              | { _ | Dyn }
              | optional,
            gofish | refs."definitions.GofishPackager" | { _ | Dyn } | optional,
            jbang | refs."definitions.JbangPackager" | { _ | Dyn } | optional,
            jib | refs."definitions.JibPackager" | { _ | Dyn } | optional,
            macports
              | refs."definitions.MacportsPackager"
              | { _ | Dyn }
              | optional,
            scoop | refs."definitions.ScoopPackager" | { _ | Dyn } | optional,
            sdkman | refs."definitions.SdkmanPackager" | { _ | Dyn } | optional,
            snap | refs."definitions.SnapPackager" | { _ | Dyn } | optional,
            spec | refs."definitions.SpecPackager" | { _ | Dyn } | optional,
            winget | refs."definitions.WingetPackager" | { _ | Dyn } | optional,
          },
      "definitions.Platform" =
        {
            replacements
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
          },
      "definitions.Plug" =
        {
            attributes
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            name | String | optional,
            reads | Array String | optional,
            writes | Array String | optional,
          },
      "definitions.Pomchecker" =
        {
            failOnError | Bool | optional,
            failOnWarning | Bool | optional,
            strict | Bool | optional,
            version | String | optional,
          },
      "definitions.Prerelease" =
        { enabled | Bool | optional, pattern | String | optional, },
      "definitions.Priority" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'OPTIONAL, 'STANDARD, 'IMPORTANT, 'REQUIRED |]
            ],
      "definitions.Project" =
        {
            authors | Array String | optional,
            copyright | String | optional,
            description | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            icons
              | Array (
                std.contract.Sequence [ refs."definitions.Icon", { _ | Dyn } ]
              )
              | optional,
            inceptionYear | String | optional,
            languages | refs."definitions.Languages" | { _ | Dyn } | optional,
            license | String | optional,
            links | refs."definitions.Links" | { _ | Dyn } | optional,
            longDescription | String | optional,
            maintainers | Array String | optional,
            name | String | optional,
            screenshots
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Screenshot", { _ | Dyn } ]
              )
              | optional,
            snapshot | refs."definitions.Snapshot" | { _ | Dyn } | optional,
            stereotype | refs."definitions.Stereotype" | String | optional,
            tags | Array String | optional,
            vendor | String | optional,
            version | String | optional,
            versionPattern
              | refs."definitions.VersionPattern"
              | { _ | Dyn }
              | optional,
          },
      "definitions.Properties" = { _ | String },
      "definitions.Provider" =
        {
            properties | refs."definitions.Properties" | { _ | Dyn } | optional,
            type | String | optional,
          },
      "definitions.Publisher" =
        {
            name | String | optional,
            supportUrl | String | optional,
            url | String | optional,
          },
      "definitions.Registry-1" =
        {
            externalLogin | Bool | optional,
            password | String | optional,
            repositoryName | String | optional,
            server | String | optional,
            serverName | String | optional,
            username | String | optional,
          },
      "definitions.Registry-2" =
        {
            fromPassword | String | optional,
            fromUsername | String | optional,
            name | String | optional,
            password | String | optional,
            server | String | optional,
            toPassword | String | optional,
            toUsername | String | optional,
            username | String | optional,
          },
      "definitions.Release" =
        {
            codeberg
              | refs."definitions.CodebergReleaser"
              | { _ | Dyn }
              | optional,
            forgejo
              | refs."definitions.ForgejoReleaser"
              | { _ | Dyn }
              | optional,
            generic
              | refs."definitions.GenericGitReleaser"
              | { _ | Dyn }
              | optional,
            gitea | refs."definitions.GiteaReleaser" | { _ | Dyn } | optional,
            github | refs."definitions.GithubReleaser" | { _ | Dyn } | optional,
            gitlab | refs."definitions.GitlabReleaser" | { _ | Dyn } | optional,
          },
      "definitions.ReleaseNotes" =
        { configurationFile | String | optional, enabled | Bool | optional, },
      "definitions.Replacer" =
        { replace | String | optional, search | String | optional, },
      "definitions.Repository" =
        {
            active | refs."definitions.Active" | String | optional,
            branch | String | optional,
            branchPush | String | optional,
            commitMessage | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            owner | String | optional,
            tagName | String | optional,
            token | String | optional,
            username | String | optional,
          },
      "definitions.Runtime" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'ELEMENTARY, 'KDE, 'GNOME, 'FREEDESKTOP |]
            ],
      "definitions.S3Uploader" =
        {
            accessKeyId | String | optional,
            active | refs."definitions.Active" | String | optional,
            artifacts | Bool | optional,
            bucket | String | optional,
            catalogs | Bool | optional,
            checksums | Bool | optional,
            connectTimeout | std.number.Integer | optional,
            downloadUrl | String | optional,
            endpoint | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            files | Bool | optional,
            headers
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            path | String | optional,
            readTimeout | std.number.Integer | optional,
            region | String | optional,
            secretKey | String | optional,
            sessionToken | String | optional,
            signatures | Bool | optional,
          },
      "definitions.S3UploaderMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.S3Uploader", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.S3Uploader", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.Sbom" =
        {
            active | refs."definitions.Active" | String | optional,
            cyclonedx
              | refs."definitions.CyclonedxSbomCataloger"
              | { _ | Dyn }
              | optional,
            syft
              | refs."definitions.SyftSbomCataloger"
              | { _ | Dyn }
              | optional,
          },
      "definitions.ScoopPackager" =
        {
            active | refs."definitions.Active" | String | optional,
            autoupdateUrl | String | optional,
            checkverUrl | String | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            continueOnError | Bool | optional,
            downloadUrl | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            packageName | String | optional,
            repository
              | refs."definitions.ScoopRepository"
              | { _ | Dyn }
              | optional,
            skipTemplates | Array String | optional,
            templateDirectory | String | optional,
          },
      "definitions.ScoopRepository" =
        {
            active | refs."definitions.Active" | String | optional,
            branch | String | optional,
            branchPush | String | optional,
            commitMessage | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            owner | String | optional,
            tagName | String | optional,
            token | String | optional,
            username | String | optional,
          },
      "definitions.Scope" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'MACHINE, 'USER |] ],
      "definitions.ScpDownloader" =
        {
            active | refs."definitions.Active" | String | optional,
            assets
              | Array (
                std.contract.Sequence [ refs."definitions.Asset", { _ | Dyn } ]
              )
              | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            fingerprint | String | optional,
            host | String | optional,
            knownHostsFile | String | optional,
            passphrase | String | optional,
            password | String | optional,
            port | std.number.Integer | optional,
            privateKey | String | optional,
            publicKey | String | optional,
            readTimeout | std.number.Integer | optional,
            username | String | optional,
          },
      "definitions.ScpDownloaderMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.ScpDownloader", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.ScpDownloader", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.ScpUploader" =
        {
            active | refs."definitions.Active" | String | optional,
            artifacts | Bool | optional,
            catalogs | Bool | optional,
            checksums | Bool | optional,
            connectTimeout | std.number.Integer | optional,
            downloadUrl | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            files | Bool | optional,
            fingerprint | String | optional,
            host | String | optional,
            knownHostsFile | String | optional,
            passphrase | String | optional,
            password | String | optional,
            path | String | optional,
            port | std.number.Integer | optional,
            privateKey | String | optional,
            publicKey | String | optional,
            readTimeout | std.number.Integer | optional,
            signatures | Bool | optional,
            username | String | optional,
          },
      "definitions.ScpUploaderMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.ScpUploader", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.ScpUploader", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.Screenshot" =
        {
            caption | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            height | std.number.Integer | optional,
            primary | Bool | optional,
            type | refs."definitions.Type-1" | String | optional,
            url | String | optional,
            width | std.number.Integer | optional,
          },
      "definitions.ScriptHook" =
        {
            active | refs."definitions.Active" | String | optional,
            applyDefaultMatrix | Bool | optional,
            condition | String | optional,
            continueOnError | Bool | optional,
            environment
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            filter | refs."definitions.Filter" | { _ | Dyn } | optional,
            matrix | refs."definitions.Matrix" | { _ | Dyn } | optional,
            platforms | Array String | optional,
            run | String | optional,
            shell | refs."definitions.Shell" | String | optional,
            verbose | Bool | optional,
          },
      "definitions.ScriptHooks" =
        {
            active | refs."definitions.Active" | String | optional,
            applyDefaultMatrix | Bool | optional,
            before
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ScriptHook", { _ | Dyn } ]
              )
              | optional,
            condition | String | optional,
            environment
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            failure
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ScriptHook", { _ | Dyn } ]
              )
              | optional,
            matrix | refs."definitions.Matrix" | { _ | Dyn } | optional,
            success
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ScriptHook", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.SdkmanAnnouncer" =
        {
            active | refs."definitions.Active" | String | optional,
            candidate | String | optional,
            command | refs."definitions.Command-1" | String | optional,
            connectTimeout | std.number.Integer | optional,
            consumerKey | String | optional,
            consumerToken | String | optional,
            downloadUrl | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            readTimeout | std.number.Integer | optional,
            releaseNotesUrl | String | optional,
          },
      "definitions.SdkmanPackager" =
        {
            active | refs."definitions.Active" | String | optional,
            candidate | String | optional,
            command | refs."definitions.Command-1" | String | optional,
            connectTimeout | std.number.Integer | optional,
            consumerKey | String | optional,
            consumerToken | String | optional,
            continueOnError | Bool | optional,
            downloadUrl | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            readTimeout | std.number.Integer | optional,
            releaseNotesUrl | String | optional,
          },
      "definitions.Section" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'ZOPE,
                'XFCE,
                'X11,
                'WEB,
                'VIDEO,
                'VCS,
                'UTILS,
                'TEXT,
                'TEX,
                'TASKS,
                'SOUND,
                'SHELLS,
                'SCIENCE,
                'RUST,
                'RUBY,
                'PYTHON,
                'PHP,
                'PERL,
                'OTHEROSFS,
                'OLDLIBS,
                'OCAML,
                'NEWS,
                'NET,
                'MISC,
                'METAPACKAGES,
                'MATH,
                'MAIL,
                'LOCALIZATION,
                'LISP,
                'LIBS,
                'LIBDEVEL,
                'KERNEL,
                'KDE,
                'JAVASCRIPT,
                'JAVA,
                'INTROSPECTION,
                'INTERPRETERS,
                'HTTPD,
                'HASKELL,
                'HAMRADIO,
                'GRAPHICS,
                'GNUSTEP,
                'GNU_R,
                'GNOME,
                'GAMES,
                'FONTS,
                'EMBEDDED,
                'ELECTRONICS,
                'EDUCATION,
                'EDITORS,
                'DOC,
                'DEVEL,
                'DEBUG,
                'DATABASE,
                'COMM,
                'CLI_MONO,
                'ADMIN
              |]
            ],
      "definitions.SftpDownloader" =
        {
            active | refs."definitions.Active" | String | optional,
            assets
              | Array (
                std.contract.Sequence [ refs."definitions.Asset", { _ | Dyn } ]
              )
              | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            fingerprint | String | optional,
            host | String | optional,
            knownHostsFile | String | optional,
            passphrase | String | optional,
            password | String | optional,
            port | std.number.Integer | optional,
            privateKey | String | optional,
            publicKey | String | optional,
            readTimeout | std.number.Integer | optional,
            username | String | optional,
          },
      "definitions.SftpDownloaderMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.SftpDownloader", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.SftpDownloader", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.SftpUploader" =
        {
            active | refs."definitions.Active" | String | optional,
            artifacts | Bool | optional,
            catalogs | Bool | optional,
            checksums | Bool | optional,
            connectTimeout | std.number.Integer | optional,
            downloadUrl | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            files | Bool | optional,
            fingerprint | String | optional,
            host | String | optional,
            knownHostsFile | String | optional,
            passphrase | String | optional,
            password | String | optional,
            path | String | optional,
            port | std.number.Integer | optional,
            privateKey | String | optional,
            publicKey | String | optional,
            readTimeout | std.number.Integer | optional,
            signatures | Bool | optional,
            username | String | optional,
          },
      "definitions.SftpUploaderMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.SftpUploader", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.SftpUploader", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.Shell" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'POWERSHELL, 'PWSH, 'CMD, 'SH, 'BASH |]
            ],
      "definitions.Signing" =
        {
            active | refs."definitions.Active" | String | optional,
            armored | Bool | optional,
            artifacts | Bool | optional,
            catalogs | Bool | optional,
            checksums | Bool | optional,
            command | refs."definitions.Command-2" | { _ | Dyn } | optional,
            cosign | refs."definitions.Cosign" | { _ | Dyn } | optional,
            files | Bool | optional,
            mode | refs."definitions.Mode-2" | String | optional,
            passphrase | String | optional,
            publicKey | String | optional,
            secretKey | String | optional,
            verify | Bool | optional,
          },
      "definitions.SlackAnnouncer" =
        {
            active | refs."definitions.Active" | String | optional,
            channel | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            message | String | optional,
            messageTemplate | String | optional,
            readTimeout | std.number.Integer | optional,
            token | String | optional,
            webhook | String | optional,
          },
      "definitions.Slot" =
        {
            attributes
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            name | String | optional,
            reads | Array String | optional,
            writes | Array String | optional,
          },
      "definitions.SlsaCataloger" =
        {
            active | refs."definitions.Active" | String | optional,
            artifacts | Bool | optional,
            attestationName | String | optional,
            deployables | Bool | optional,
            excludes | Array String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            files | Bool | optional,
            includes | Array String | optional,
          },
      "definitions.SmtpAnnouncer" =
        {
            active | refs."definitions.Active" | String | optional,
            auth | Bool | optional,
            bcc | String | optional,
            cc | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            from | String | optional,
            host | String | optional,
            message | String | optional,
            messageTemplate | String | optional,
            mimeType | refs."definitions.MimeType" | String | optional,
            password | String | optional,
            port | std.number.Integer | optional,
            properties
              | refs."definitions.StringProperties"
              | { _ | String }
              | optional,
            readTimeout | std.number.Integer | optional,
            subject | String | optional,
            to | String | optional,
            transport | refs."definitions.Transport" | String | optional,
            username | String | optional,
          },
      "definitions.SnapPackager" =
        {
            active | refs."definitions.Active" | String | optional,
            architectures
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Architecture", { _ | Dyn } ]
              )
              | optional,
            base | String | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            confinement | String | optional,
            continueOnError | Bool | optional,
            downloadUrl | String | optional,
            exportedLogin | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            grade | String | optional,
            localPlugs | Array String | optional,
            localSlots | Array String | optional,
            packageName | String | optional,
            plugs
              | Array (
                std.contract.Sequence [ refs."definitions.Plug", { _ | Dyn } ]
              )
              | optional,
            remoteBuild | Bool | optional,
            repository
              | refs."definitions.SnapRepository"
              | { _ | Dyn }
              | optional,
            skipTemplates | Array String | optional,
            slots
              | Array (
                std.contract.Sequence [ refs."definitions.Slot", { _ | Dyn } ]
              )
              | optional,
            templateDirectory | String | optional,
          },
      "definitions.SnapRepository" =
        {
            active | refs."definitions.Active" | String | optional,
            branch | String | optional,
            branchPush | String | optional,
            commitMessage | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            owner | String | optional,
            tagName | String | optional,
            token | String | optional,
            username | String | optional,
          },
      "definitions.Snapshot" =
        {
            fullChangelog | Bool | optional,
            label | String | optional,
            pattern | String | optional,
          },
      "definitions.Sort" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'DESC, 'ASC |] ],
      "definitions.SpecPackager" =
        {
            active | refs."definitions.Active" | String | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            continueOnError | Bool | optional,
            downloadUrl | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            packageName | String | optional,
            release | String | optional,
            repository
              | refs."definitions.SpecRepository"
              | { _ | Dyn }
              | optional,
            requires | Array String | optional,
            skipTemplates | Array String | optional,
            templateDirectory | String | optional,
          },
      "definitions.SpecRepository" =
        {
            active | refs."definitions.Active" | String | optional,
            branch | String | optional,
            branchPush | String | optional,
            commitMessage | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            owner | String | optional,
            tagName | String | optional,
            token | String | optional,
            username | String | optional,
          },
      "definitions.Stage-1" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'FULL, 'PUBLISH, 'UPLOAD |] ],
      "definitions.Stage-2" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'RELEASE, 'CLOSE, 'UPLOAD |] ],
      "definitions.Stereotype" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'MOBILE, 'WEB, 'DESKTOP, 'CLI, 'NONE |]
            ],
      "definitions.StringProperties" = { _ | String },
      "definitions.SwidTag" =
        {
            active | refs."definitions.Active" | String | optional,
            corpus | Bool | optional,
            entities
              | Array (
                std.contract.Sequence [ refs."definitions.Entity", { _ | Dyn } ]
              )
              | optional,
            lang | String | optional,
            name | String | optional,
            patch | Bool | optional,
            path | String | optional,
            tagId | String | optional,
            tagRef | String | optional,
            tagVersion | std.number.Integer | optional,
          },
      "definitions.SwidTagMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.SwidTag", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.SwidTag", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.SyftSbomCataloger" =
        {
            active | refs."definitions.Active" | String | optional,
            distributions | Bool | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            files | Bool | optional,
            formats
              | Array (
                std.contract.Sequence [ refs."definitions.Format-3", String ]
              )
              | optional,
            pack | refs."definitions.Pack" | { _ | Dyn } | optional,
            version | String | optional,
          },
      "definitions.TarMode" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'TRUNCATE, 'ERROR, 'POSIX, 'GNU |] ],
      "definitions.TeamsAnnouncer" =
        {
            active | refs."definitions.Active" | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            messageTemplate | String | optional,
            readTimeout | std.number.Integer | optional,
            webhook | String | optional,
          },
      "definitions.TelegramAnnouncer" =
        {
            active | refs."definitions.Active" | String | optional,
            chatId | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            message | String | optional,
            messageTemplate | String | optional,
            readTimeout | std.number.Integer | optional,
            token | String | optional,
          },
      "definitions.Transport" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'SMTPS, 'SMTP |] ],
      "definitions.TwitterAnnouncer" =
        {
            accessToken | String | optional,
            accessTokenSecret | String | optional,
            active | refs."definitions.Active" | String | optional,
            connectTimeout | std.number.Integer | optional,
            consumerKey | String | optional,
            consumerSecret | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            readTimeout | std.number.Integer | optional,
            status | String | optional,
            statusTemplate | String | optional,
            statuses | Array String | optional,
          },
      "definitions.Type-1" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'THUMBNAIL, 'SOURCE |] ],
      "definitions.Type-2" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'PWA,
                'BURN,
                'WIX,
                'NULLSOFT,
                'INNO,
                'ZIP,
                'EXE,
                'APPX,
                'MSI,
                'MSIX
              |]
            ],
      "definitions.Type-3" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'CUSTOM,
                'JAVA_MODULE,
                'JAVA_RUNTIME,
                'CHRONVER,
                'CALVER,
                'SEMVER
              |]
            ],
      "definitions.Unpack" =
        { enabled | Bool | optional, skipRootEntry | Bool | optional, },
      "definitions.Update" =
        {
            enabled | Bool | optional,
            sections
              | Array (
                std.contract.Sequence
                  [ refs."definitions.UpdateSection", String ]
              )
              | optional,
          },
      "definitions.UpdateSection" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'ASSETS, 'BODY, 'TITLE |] ],
      "definitions.UpgradeBehavior" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'UNINSTALL_PREVIOUS, 'INSTALL |] ],
      "definitions.Upload" =
        {
            active | refs."definitions.Active" | String | optional,
            artifactory
              | refs."definitions.ArtifactoryUploaderMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.ArtifactoryUploader", { _ | Dyn } ]
              }
              | optional,
            forgejo
              | refs."definitions.ForgejoUploaderMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.ForgejoUploader", { _ | Dyn } ]
              }
              | optional,
            ftp
              | refs."definitions.FtpUploaderMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.FtpUploader", { _ | Dyn } ]
              }
              | optional,
            gitea
              | refs."definitions.GiteaUploaderMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.GiteaUploader", { _ | Dyn } ]
              }
              | optional,
            gitlab
              | refs."definitions.GitlabUploaderMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.GitlabUploader", { _ | Dyn } ]
              }
              | optional,
            http
              | refs."definitions.HttpUploaderMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.HttpUploader", { _ | Dyn } ]
              }
              | optional,
            s3
              | refs."definitions.S3UploaderMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.S3Uploader", { _ | Dyn } ]
              }
              | optional,
            scp
              | refs."definitions.ScpUploaderMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.ScpUploader", { _ | Dyn } ]
              }
              | optional,
            sftp
              | refs."definitions.SftpUploaderMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.SftpUploader", { _ | Dyn } ]
              }
              | optional,
          },
      "definitions.Upx" =
        {
            active | refs."definitions.Active" | String | optional,
            args | Array String | optional,
            version | String | optional,
          },
      "definitions.VersionPattern" =
        {
            format | String | optional,
            type | refs."definitions.Type-3" | String | optional,
          },
      "definitions.WebhookAnnouncer" =
        {
            active | refs."definitions.Active" | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            message | String | optional,
            messageProperty | String | optional,
            messageTemplate | String | optional,
            readTimeout | std.number.Integer | optional,
            structuredMessage | Bool | optional,
            webhook | String | optional,
          },
      "definitions.WebhookAnnouncerMap" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.Sequence
                      [ refs."definitions.WebhookAnnouncer", { _ | Dyn } ]),
              patterns =
                {
                    "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]?$" =
                      std.contract.Sequence
                          [ refs."definitions.WebhookAnnouncer", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.WebhooksAnnouncer" =
        {
            active | refs."definitions.Active" | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            readTimeout | std.number.Integer | optional,
            webhooks
              | refs."definitions.WebhookAnnouncerMap"
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.WebhookAnnouncer", { _ | Dyn } ]
              }
              | optional,
          },
      "definitions.Windows" =
        {
            appName | String | optional,
            console | Bool | optional,
            dirChooser | Bool | optional,
            icon | String | optional,
            installDir | String | optional,
            jdk | refs."definitions.Artifact" | { _ | Dyn } | optional,
            menu | Bool | optional,
            menuGroup | String | optional,
            perUserInstall | Bool | optional,
            platform | String | optional,
            resourceDir | String | optional,
            shortcut | Bool | optional,
            types | Array String | optional,
            upgradeUuid | String | optional,
            validTypes | Array String | optional,
          },
      "definitions.WindowsX86" =
        { args | Array String | optional, platform | String | optional, },
      "definitions.WingetPackager" =
        {
            active | refs."definitions.Active" | String | optional,
            author | String | optional,
            commitAuthor
              | refs."definitions.CommitAuthor"
              | { _ | Dyn }
              | optional,
            continueOnError | Bool | optional,
            defaultLocale | String | optional,
            downloadUrl | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            installer | refs."definitions.Installer" | { _ | Dyn } | optional,
            minimumOsVersion | String | optional,
            moniker | String | optional,
            package | refs."definitions.Package" | { _ | Dyn } | optional,
            productCode | String | optional,
            publisher | refs."definitions.Publisher" | { _ | Dyn } | optional,
            repository
              | refs."definitions.WingetRepository"
              | { _ | Dyn }
              | optional,
            skipTemplates | Array String | optional,
            tags | Array String | optional,
            templateDirectory | String | optional,
          },
      "definitions.WingetRepository" =
        {
            active | refs."definitions.Active" | String | optional,
            branch | String | optional,
            branchPush | String | optional,
            commitMessage | String | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            owner | String | optional,
            tagName | String | optional,
            token | String | optional,
            username | String | optional,
          },
      "definitions.ZulipAnnouncer" =
        {
            account | String | optional,
            active | refs."definitions.Active" | String | optional,
            apiHost | String | optional,
            apiKey | String | optional,
            channel | String | optional,
            connectTimeout | std.number.Integer | optional,
            extraProperties
              | refs."definitions.Properties"
              | { _ | Dyn }
              | optional,
            message | String | optional,
            messageTemplate | String | optional,
            readTimeout | std.number.Integer | optional,
            subject | String | optional,
          },
    }
    in
  refs."definitions.JReleaserModel"