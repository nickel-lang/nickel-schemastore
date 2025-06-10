# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      altitude
        | js2n.Nullable Number
        | doc "The altitude where the data was captured, in meters"
        | optional,
      batch
        | js2n.Nullable std.number.Integer
        | doc "[Deprecated | Use scan_group instead] Can be used to group scans together."
        | optional,
      center_frequency
        | js2n.Nullable Number
        | doc "The center frequency of the capture, calculated as the mean of the start and end frequencies"
        | optional,
      custom_fields
        | { _ | Dyn }
        | doc "Custom fields that are not part of the standard schema"
        | optional,
      data | String,
      gain | Number,
      hardware_board_id
        | js2n.Nullable (js2n.string.MaxLength 255)
        | doc "The hardware board ID of the device capturing the data"
        | optional,
      hardware_version
        | js2n.Nullable (js2n.string.MaxLength 255)
        | doc "The hardware version of the device capturing the data"
        | optional,
      latitude
        | js2n.number.ExclusiveMaximum 90
        | js2n.number.ExclusiveMinimum (-90)
        | doc "The latitude where the data was captured, in decimal degrees",
      longitude
        | js2n.number.ExclusiveMaximum 180
        | js2n.number.ExclusiveMinimum (-180)
        | doc "The longitude where the data was captured, in decimal degrees",
      mac_address
        | js2n.string.MaxLength 12
        | js2n.string.MinLength 12
        | doc "MAC address of the device, without separators",
      metadata
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Metadata for this capture",
      requested
        | js2n.Nullable ({ _ | Dyn })
        | doc "Attributes set by requestor"
        | optional,
      sample_rate
        | std.number.Integer
        | js2n.number.ExclusiveMaximum 9.223372036854776e18
        | js2n.number.ExclusiveMinimum 0
        | doc "Sample rate of the capture, in Hz",
      scan_group
        | js2n.Nullable
          (js2n.string.Matches
            "^[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$")
        | doc "The scan group, used to group RH files. UUID version 4 as a 36 char string (with dashes)."
        | optional,
      short_name
        | js2n.string.MaxLength 255
        | doc "The short name of the device",
      software_version
        | js2n.Nullable (js2n.string.MaxLength 255)
        | doc "The software version of the device capturing the data"
        | optional,
      suggested_gain
        | js2n.Nullable (js2n.number.ExclusiveMinimum 0)
        | doc "[Deprecated] Suggested gain for the device"
        | optional,
      timestamp
        | String
        | doc "Timestamp of the capture start, as ISO 8601 with timezone information",
      type | String | doc "Numpy-compatible dtype of `data` elements",
      uncertainty
        | js2n.Nullable
          (std.contract.Sequence
            [ std.number.Integer, js2n.number.ExclusiveMinimum 0 ])
        | doc "[Deprecated] Uncertainty of the measurement"
        | optional,
      version
        | js2n.string.MaxLength 255
        | doc "Version of the RadioHound data format"
        | optional,
    }