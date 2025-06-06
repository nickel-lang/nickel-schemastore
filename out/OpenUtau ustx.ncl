# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      beat_per_bar
        | std.number.Integer
        | doc "Number of beats per bar, deprecated in favor of time_signatures"
        | optional,
      beat_unit
        | std.number.Integer
        | doc "Beat unit, deprecated in favor of time_signatures, deprecated in favor of time_signatures"
        | optional,
      bpm
        | Number
        | doc "Tempo of the project in beats per minute, deprecated in favor of tempos"
        | optional,
      cache_dir | String | optional,
      comment | String | optional,
      exp_primary
        | std.number.Integer
        | doc "Index of the expression the user was editing when saving the project"
        | optional,
      exp_secondary
        | std.number.Integer
        | doc "Index of the expression the user was viewing as background when saving the project"
        | optional,
      exp_selectors
        | Array String
        | doc "Expressions used by the user when saving the project"
        | optional,
      expressions
        | {
          _ | {
            abbr | String | doc "Abbreviation of the expression",
            default_value
              | Number
              | doc "Default value of the expression"
              | optional,
            flag
              | String
              | doc "UTAU resampler flag header, used if the expression is a numerical expression"
              | optional,
            is_flag
              | Bool
              | doc "Whether the expression is a utau resampler flag"
              | optional,
            max | Number | doc "Maximum value of the expression" | optional,
            min | Number | doc "Minimum value of the expression" | optional,
            name | String | doc "Name of the expression",
            options
              | Array String
              | doc "List of options, used if the expression is an options expression"
              | optional,
            type
              | std.enum.TagOrString
              | [| 'Numerical, 'Options, 'Curve |]
              | doc "Type of the expression",
            ..
          }
        }
        | doc "List of expression definitions"
        | optional,
      name | String | doc "Name of the project" | optional,
      output_dir | String | optional,
      resolution
        | std.number.Integer
        | doc "Resolution of the project in ticks per quarter note"
        | optional,
      tempos
        | Array
          {
            bpm | Number | doc "Tempo in beats per minute" | optional,
            position
              | std.number.Integer
              | doc "Position of the tempo in ticks"
              | optional,
            ..
          }
        | doc "List of tempos"
        | optional,
      time_signatures
        | Array
          {
            bar_position
              | std.number.Integer
              | doc "Position of the time signature in bars"
              | optional,
            beat_per_bar
              | std.number.Integer
              | doc "Number of beats per bar"
              | optional,
            beat_unit | std.number.Integer | doc "Beat unit" | optional,
            ..
          }
        | doc "List of time signatures"
        | optional,
      tracks
        | Array
          {
            mute | Bool | doc "Whether the track is muted" | optional,
            pan | Number | doc "Pan of the track" | optional,
            phonemizer | String | doc "Phonemizer of the track" | optional,
            renderer_settings
              | {
                renderer | String | doc "Renderer of the track" | optional,
                resampler
                  | String
                  | doc "UTAU Resampler of the track, if the renderer is CLASSIC"
                  | optional,
                wavtool
                  | String
                  | doc "UTAU Wavtool of the track, if the renderer is CLASSIC"
                  | optional,
                ..
              }
              | doc "Renderer settings of the track"
              | optional,
            singer | String | doc "Singer of the track" | optional,
            solo | Bool | doc "Whether the track is soloed" | optional,
            track_color | String | doc "Color of the track" | optional,
            track_name | String | doc "Name of the track" | optional,
            voice_color_names
              | Array String
              | doc "List of voice color names"
              | optional,
            volume | Number | doc "Volume of the track" | optional,
            ..
          }
        | doc "Tracks in the project"
        | optional,
      ustx_version | String | doc "Version of the USTX file format" | optional,
      voice_parts
        | Array
          {
            name | String | doc "Name of the voice part" | optional,
            notes
              | Array
                {
                  duration
                    | std.number.Integer
                    | doc "Duration of the note in ticks"
                    | optional,
                  lyric | String | doc "Lyric of the note" | optional,
                  phoneme_expressions
                    | Array
                      {
                        abbr
                          | String
                          | doc "Abbreviation of the expression"
                          | optional,
                        index
                          | std.number.Integer
                          | doc "Index of the phoneme that the expression belongs to"
                          | optional,
                        value
                          | Number
                          | doc "Value of the expression"
                          | optional,
                        ..
                      }
                    | doc "Edited numerical or options expressions of the note"
                    | optional,
                  phoneme_overrides
                    | Array
                      {
                        index
                          | std.number.Integer
                          | doc "Index of the phoneme that the override belongs to"
                          | optional,
                        phoneme
                          | String
                          | doc "Phoneme after overriding"
                          | optional,
                        ..
                      }
                    | doc "Overridden phoneme aliases in the note"
                    | optional,
                  pitch
                    | {
                      data
                        | Array
                          {
                            shape
                              | std.enum.TagOrString
                              | [| 'io, 'o, 'i, 'l |]
                              | doc "Shape of the control point"
                              | optional,
                            snap_first | Bool | optional,
                            x
                              | Number
                              | doc "Offset of the control point from the starting point of the note in ticks"
                              | optional,
                            y
                              | Number
                              | doc "Tone value of the control point from the tone of the note in 1/10 semitone"
                              | optional,
                            ..
                          }
                        | doc "Pitch control points"
                        | optional,
                      ..
                    }
                    | doc "Pitch control points in the note"
                    | optional,
                  position
                    | std.number.Integer
                    | doc "Position of the note in the voice part, in ticks"
                    | optional,
                  tone
                    | std.number.Integer
                    | doc "Tone of the note, MIDI number, C4 is 60"
                    | optional,
                  vibrato
                    | {
                      depth
                        | Number
                        | doc "Depth of the vibrato in cents"
                        | optional,
                      "in"
                        | Number
                        | doc "Fade in of the vibrato in Milliseconds"
                        | optional,
                      length
                        | Number
                        | doc "Length of the vibrato, relative to the duration of the note, 0~100"
                        | optional,
                      out
                        | Number
                        | doc "Fade out of the vibrato in Milliseconds"
                        | optional,
                      period
                        | Number
                        | doc "Period of the vibrato in Milliseconds"
                        | optional,
                      ..
                    }
                    | doc "Vibrato of the note"
                    | optional,
                  ..
                }
              | doc "Notes in the voice part"
              | optional,
            position
              | std.number.Integer
              | doc "Position of the voice part in ticks"
              | optional,
            track_no
              | std.number.Integer
              | doc "Index of the track the voice part is in"
              | optional,
            ..
          }
        | doc "Voice parts in the project"
        | optional,
      wave_parts
        | Array
          {
            file_duration_ms
              | Number
              | doc "Duration of the audio file in Milliseconds"
              | optional,
            name | String | doc "Name of the wave part" | optional,
            position
              | std.number.Integer
              | doc "Position of the wave part in ticks"
              | optional,
            relative_path
              | String
              | doc "Relative path of the audio file"
              | optional,
            track_no
              | std.number.Integer
              | doc "Index of the track the wave part is in"
              | optional,
            ..
          }
        | doc "Wave parts in the project"
        | optional,
      ..
    }