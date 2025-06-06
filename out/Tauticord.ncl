# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.combinedLibrary" =
        {
            Albums
              | refs."definitions.voiceChannel"
              | { _ | Dyn }
              | doc "Settings for the voice channel about album information (used if the library is a music library)"
              | optional,
            Artists
              | refs."definitions.voiceChannel"
              | { _ | Dyn }
              | doc "Settings for the voice channel about artist information (used if the library is a music library)"
              | optional,
            Episodes
              | refs."definitions.voiceChannel"
              | { _ | Dyn }
              | doc "Settings for the voice channel about episode information (used if the library is a TV show library)"
              | optional,
            Libraries
              | Array (
                std.contract.Sequence
                  [ refs."definitions.combinedLibrarySubLibrary", { _ | Dyn } ]
              )
              | doc "The libraries to combine",
            Movies
              | refs."definitions.voiceChannel"
              | { _ | Dyn }
              | doc "Settings for the voice channel about movie information (used if the library is a movie library)"
              | optional,
            Name
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.discordVoiceChannelName", String ],
                  std.contract.Sequence
                    [ refs."definitions.emptyString", String ]
                ]
              | doc "The name for the combined library (used as the voice channel name)",
            RecentlyAdded
              | refs."definitions.recentlyAddedVoiceChannel"
              | { _ | Dyn }
              | doc "Settings for the voice channel about recently added items"
              | optional,
            Series
              | refs."definitions.voiceChannel"
              | { _ | Dyn }
              | doc "Settings for the voice channel about series/show information (used if the library is a TV show library)"
              | optional,
            Tracks
              | refs."definitions.voiceChannel"
              | { _ | Dyn }
              | doc "Settings for the voice channel about track information (used if the library is a music library)"
              | optional,
            ..
          },
      "definitions.combinedLibrarySubLibrary" =
        {
            ID
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.positiveInteger", Number ],
                  std.contract.Sequence
                    [ refs."definitions.numberZero", Number ]
                ]
              | doc "The ID of the library as it appears in Tautulli. Use if the library name is not unique"
              | optional,
            Name
              | String
              | doc "The name of the library as it appears in Tautulli",
            ..
          },
      "definitions.discordBotToken" =
        js2n.string.Matches
            "^[MNO][a-zA-Z\\d_-]{23,25}\\.[a-zA-Z\\d_-]{6}\\.[a-zA-Z\\d_-]{27,}$",
      "definitions.discordCategoryName" =
        js2n.string.Matches "^[a-zA-Z0-9-_ ]{2,100}$",
      "definitions.discordChannelId" = js2n.string.Matches "^[0-9]{17,20}$",
      "definitions.discordServerId" = js2n.string.Matches "^[0-9]{17,20}$",
      "definitions.discordTextChannelName" =
        js2n.string.Matches "^[a-z0-9-]{2,100}$",
      "definitions.discordUserId" = js2n.string.Matches "^[0-9]{17,20}$",
      "definitions.discordVoiceChannelName" =
        js2n.string.Matches "^[a-zA-Z0-9-_ ]{2,100}$",
      "definitions.emptyString" = js2n.string.Matches "^$",
      "definitions.hostWithIpAndOptionalPort" =
        js2n.string.Matches "^(https?://)?[a-zA-Z0-9.-]+(:[0-9]{1,5})?$",
      "definitions.library" =
        {
            Albums
              | refs."definitions.voiceChannel"
              | { _ | Dyn }
              | doc "Settings for the voice channel about album information (used if the library is a music library)"
              | optional,
            AlternateName
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.discordVoiceChannelName", String ],
                  std.contract.Sequence
                    [ refs."definitions.emptyString", String ]
                ]
              | doc "An alternate name for the library (used as the voice channel name)",
            Artists
              | refs."definitions.voiceChannel"
              | { _ | Dyn }
              | doc "Settings for the voice channel about artist information (used if the library is a music library)"
              | optional,
            Episodes
              | refs."definitions.voiceChannel"
              | { _ | Dyn }
              | doc "Settings for the voice channel about episode information (used if the library is a TV show library)"
              | optional,
            ID
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.positiveInteger", Number ],
                  std.contract.Sequence
                    [ refs."definitions.numberZero", Number ]
                ]
              | doc "The ID of the library as it appears in Tautulli. Use if the library name is not unique"
              | optional,
            Movies
              | refs."definitions.voiceChannel"
              | { _ | Dyn }
              | doc "Settings for the voice channel about movie information (used if the library is a movie library)"
              | optional,
            Name | String | doc "The name of the library as it appears in Plex",
            RecentlyAdded
              | refs."definitions.recentlyAddedVoiceChannel"
              | { _ | Dyn }
              | doc "Settings for the voice channel about recently added items"
              | optional,
            Series
              | refs."definitions.voiceChannel"
              | { _ | Dyn }
              | doc "Settings for the voice channel about series/show information (used if the library is a TV show library)"
              | optional,
            Tracks
              | refs."definitions.voiceChannel"
              | { _ | Dyn }
              | doc "Settings for the voice channel about track information (used if the library is a music library)"
              | optional,
            ..
          },
      "definitions.numberZero" =
        std.contract.Sequence [ js2n.number.Maximum 0, js2n.number.Minimum 0 ],
      "definitions.positiveInteger" =
        std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 1 ],
      "definitions.recentlyAddedVoiceChannel" =
        {
            CustomEmoji
              | String
              | doc "The custom emoji to use for the voice channel (overrides the default emoji)",
            CustomName
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.discordVoiceChannelName", String ],
                  std.contract.Sequence
                    [ refs."definitions.emptyString", String ]
                ]
              | doc "The custom name to use for the voice channel (overrides the default name)",
            Enable | Bool | doc "Whether to enable the voice channel",
            Hours
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The number of hours to look back for recently added items",
            VoiceChannelID
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.discordChannelId", String ],
                  std.contract.Sequence
                    [ refs."definitions.numberZero", Number ]
                ]
              | doc "The ID of the voice channel",
            ..
          },
      "definitions.tautulliApiKey" = js2n.string.Matches "^[a-zA-Z0-9]{32}$",
      "definitions.tautulliUrl" =
        std.contract.Sequence
            [ refs."definitions.hostWithIpAndOptionalPort", String ],
      "definitions.voiceChannel" =
        {
            CustomEmoji
              | String
              | doc "The custom emoji to use for the voice channel (overrides the default emoji)",
            CustomName
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.discordVoiceChannelName", String ],
                  std.contract.Sequence
                    [ refs."definitions.emptyString", String ]
                ]
              | doc "The custom name to use for the voice channel (overrides the default name)",
            Enable | Bool | doc "Whether to enable the voice channel",
            VoiceChannelID
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.discordChannelId", String ],
                  std.contract.Sequence
                    [ refs."definitions.numberZero", Number ]
                ]
              | doc "The ID of the voice channel",
            ..
          },
    }
    in
  {
      Discord
        | {
          AdminIDs
            | Array refs."definitions.discordUserId"
            | doc "The IDs of the Discord users who will have admin permissions",
          BotToken
            | refs."definitions.discordBotToken"
            | doc "The token for the Discord bot",
          ChannelName
            | refs."definitions.discordTextChannelName"
            | doc "The name of the channel where the bot will post messages",
          EnableSlashCommands
            | Bool
            | doc "Whether to enable slash commands for the bot",
          EnableTermination
            | Bool
            | doc "Whether to enable stream termination"
            | optional,
          PostSummaryMessage
            | Bool
            | doc "Whether to post a summary message in the activity summary channel",
          ServerID
            | refs."definitions.discordServerId"
            | doc "The ID of the Discord server where the bot will be used",
          StatusMessage
            | {
              CustomMessage
                | String
                | doc "Display a custom activity status message. Overrides default if not-empty"
                | optional,
              Enable
                | Bool
                | doc "Whether to enable the bot's activity status"
                | optional,
              ShowStreamCount
                | Bool
                | doc "Whether to display current active stream count in activity status message"
                | optional,
              ..
            }
            | doc "Settings regarding the bot's Discord status/activity"
            | optional,
          ..
        }
        | doc "Settings for the Discord bot and server",
      Display
        | {
          Anonymize
            | {
              HideBandwidth
                | Bool
                | doc "Whether to hide bandwidth information",
              HideETA | Bool | doc "Whether to hide ETAs for streams",
              HidePlatforms
                | Bool
                | doc "Whether to hide stream platform information",
              HidePlayerNames
                | Bool
                | doc "Whether to hide stream player names",
              HideProgress | Bool | doc "Whether to hide stream progress",
              HideQuality
                | Bool
                | doc "Whether to hide stream quality information",
              HideTranscode
                | Bool
                | doc "Whether to hide stream transcoding information",
              HideUsernames | Bool | doc "Whether to hide Plex usernames",
              ..
            }
            | doc "Settings for anonymizing user information",
          ServerName | String | doc "The name of the Plex server",
          ThousandsSeparator
            | String
            | doc "The character to use as a numerical thousands separator",
          Time | { _ | Dyn } | doc "Settings for how the bot handles time",
          UseFriendlyNames
            | Bool
            | doc "Whether to use Plex user names instead of Plex usernames",
          ..
        }
        | doc "Settings for how the bot displays information",
      Extras
        | {
          AllowAnalytics
            | Bool
            | doc "Whether to allow the bot to collect and send analytics data",
          EnableUpdateReminders
            | Bool
            | doc "Whether to enable update reminders",
          ..
        }
        | doc "Extra settings for the bot",
      Stats
        | {
          Activity
            | {
              CategoryName
                | refs."definitions.discordCategoryName"
                | doc "The name of the category for activity stats",
              Enable | Bool | doc "Whether to enable activity stats",
              StatTypes
                | {
                  Bandwidth
                    | refs."definitions.voiceChannel"
                    | doc "Settings for bandwidth stats",
                  LocalBandwidth
                    | refs."definitions.voiceChannel"
                    | doc "Settings for local bandwidth stats",
                  PlexServerAvailability
                    | refs."definitions.voiceChannel"
                    | doc "Settings for Plex server availability stats",
                  RemoteBandwidth
                    | refs."definitions.voiceChannel"
                    | doc "Settings for remote bandwidth stats",
                  StreamCount
                    | refs."definitions.voiceChannel"
                    | doc "Settings for stream count stats",
                  TranscodeCount
                    | refs."definitions.voiceChannel"
                    | doc "Settings for transcode count stats",
                  ..
                }
                | doc "The types of activity stats to track",
              ..
            },
          Libraries
            | {
              CategoryName
                | refs."definitions.discordCategoryName"
                | doc "The name of the category for library stats",
              CombinedLibraries
                | Array refs."definitions.combinedLibrary"
                | doc "Combined libraries to track",
              Enable | Bool | doc "Whether to enable library stats",
              Libraries
                | Array refs."definitions.library"
                | doc "Libraries to track",
              RefreshSeconds
                | std.number.Integer
                | js2n.number.MultipleOf 5
                | js2n.number.Minimum 300
                | doc "How often, in seconds, the bot pulls new library data. A 5-minute minimum is built-in; it's for your own good",
              ..
            }
            | doc "Settings for Plex library stats",
          Performance
            | {
              CategoryName
                | refs."definitions.discordCategoryName"
                | doc "The name of the category for performance stats",
              Enable | Bool | doc "Whether to enable performance stats",
              Metrics
                | {
                  CPU
                    | refs."definitions.voiceChannel"
                    | doc "Settings for CPU stats",
                  DiskSpace
                    | refs."definitions.voiceChannel"
                    | doc "Settings for disk space stats",
                  Memory
                    | refs."definitions.voiceChannel"
                    | doc "Settings for memory stats",
                  UserCount
                    | refs."definitions.voiceChannel"
                    | doc "Settings for user count stats",
                  ..
                }
                | doc "The performance metrics to track",
              ..
            }
            | doc "Settings for performance stats",
          ..
        }
        | doc "Settings for the bot's stat tracking features (via voice channels)",
      Tautulli
        | {
          APIKey
            | refs."definitions.tautulliApiKey"
            | doc "The API key for the Tautulli instance",
          RefreshSeconds
            | std.number.Integer
            | js2n.number.MultipleOf 5
            | js2n.number.Minimum 5
            | doc "How often, in seconds, the bot pulls new live activity data. A 5-second minimum is built-in; it's for your own good",
          TerminateMessage
            | String
            | doc "The message to send when a stream is terminated",
          URL
            | refs."definitions.tautulliUrl"
            | String
            | doc "The URL of the Tautulli instance",
          UseSelfSignedCert
            | Bool
            | doc "Whether to use a self-signed certificate for the Tautulli instance (ignore SSL warnings)",
          ..
        }
        | doc "Settings for the Tautulli instance",
      ..
    }