# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Aggregate" =
        std.contract.Sequence [ refs."definitions.AggregateOp", String ],
      "definitions.AggregateOp" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'variancep,
                'variance,
                'values,
                'valid,
                'sum,
                'stdevp,
                'stdev,
                'ci1,
                'ci0,
                'q3,
                'q1,
                'missing,
                'min,
                'median,
                'mean,
                'max,
                'distinct,
                'count,
                'average,
                'argmin,
                'argmax
              |]
            ],
      "definitions.AggregateTransform" =
        {
            aggregate
              | Array (
                std.contract.Sequence
                  [ refs."definitions.AggregatedFieldDef", { _ | Dyn } ]
              )
              | doc "Array of objects that define fields to aggregate.",
            groupby
              | Array String
              | doc "The data fields to group by. If not specified, a single group containing all data objects will be used."
              | optional,
          },
      "definitions.AggregatedFieldDef" =
        {
            as
              | String
              | doc "The output field names to use for each aggregated field.",
            field
              | String
              | doc "The data field for which to compute aggregate function.",
            op
              | refs."definitions.AggregateOp"
              | String
              | doc m%"
                The aggregation operations to apply to the fields, such as sum, average or count.
                See the [full list of supported aggregation operations](https://vega.github.io/vega-lite/docs/aggregate.html#supported-aggregation-operations)
                for more information.
              "%,
          },
      "definitions.Anchor" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'end, 'middle, 'start |] ],
      "definitions.AndFilter" =
        { and | Array refs."definitions.FilterOperand", },
      "definitions.AnyMark" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.Mark", String ],
              std.contract.Sequence [ refs."definitions.MarkDef", { _ | Dyn } ]
            ],
      "definitions.AutoSizeParams" =
        {
            contains
              | std.enum.TagOrString
              | [| 'padding, 'content |]
              | doc m%"
                Determines how size calculation should be performed, one of `"content"` or `"padding"`. The default setting (`"content"`) interprets the width and height settings as the data rectangle (plotting) dimensions, to which padding is then added. In contrast, the `"padding"` setting includes the padding within the view size calculations, such that the width and height settings indicate the **total** intended size of the view.
                
                __Default value__: `"content"`
              "%
              | optional,
            resize
              | Bool
              | doc m%"
                A boolean flag indicating if autosize layout should be re-calculated on every view update.
                
                __Default value__: `false`
              "%
              | optional,
            type
              | refs."definitions.AutosizeType"
              | String
              | doc m%"
                The sizing format type. One of `"pad"`, `"fit"` or `"none"`. See the [autosize type](https://vega.github.io/vega-lite/docs/size.html#autosize) documentation for descriptions of each.
                
                __Default value__: `"pad"`
              "%
              | optional,
          },
      "definitions.AutosizeType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'none, 'fit, 'pad |] ],
      "definitions.Axis" =
        {
            domain
              | Bool
              | doc m%"
                A boolean flag indicating if the domain (the axis baseline) should be included as part of the axis.
                
                __Default value:__ `true`
              "%
              | optional,
            format
              | String
              | doc m%"
                The formatting pattern for labels. This is D3's [number format pattern](https://github.com/d3/d3-format#locale_format) for quantitative fields and D3's [time format pattern](https://github.com/d3/d3-time-format#locale_format) for time field.
                
                See the [format documentation](format.html) for more information.
                
                __Default value:__  derived from [numberFormat](config.html#format) config for quantitative fields and from [timeFormat](config.html#format) config for temporal fields.
              "%
              | optional,
            grid
              | Bool
              | doc m%"
                A boolean flag indicating if grid lines should be included as part of the axis
                
                __Default value:__ `true` for [continuous scales](scale.html#continuous) that are not binned; otherwise, `false`.
              "%
              | optional,
            labelAngle
              | js2n.number.Maximum 360
              | js2n.number.Minimum (-360)
              | doc m%"
                The rotation angle of the axis labels.
                
                __Default value:__ `-90` for nominal and ordinal fields; `0` otherwise.
              "%
              | optional,
            labelBound
              | std.contract.any_of [ Bool, Number ]
              | doc m%"
                Indicates if labels should be hidden if they exceed the axis range. If `false `(the default) no bounds overlap analysis is performed. If `true`, labels will be hidden if they exceed the axis range by more than 1 pixel. If this property is a number, it specifies the pixel tolerance: the maximum amount by which a label bounding box may exceed the axis range.
                
                __Default value:__ `false`.
              "%
              | optional,
            labelFlush
              | std.contract.any_of [ Bool, Number ]
              | doc m%"
                Indicates if the first and last axis labels should be aligned flush with the scale range. Flush alignment for a horizontal axis will left-align the first label and right-align the last label. For vertical axes, bottom and top text baselines are applied instead. If this property is a number, it also indicates the number of pixels by which to offset the first and last labels; for example, a value of 2 will flush-align the first and last labels and also push them 2 pixels outward from the center of the axis. The additional adjustment can sometimes help the labels better visually group with corresponding axis ticks.
                
                __Default value:__ `true` for axis of a continuous x-scale. Otherwise, `false`.
              "%
              | optional,
            labelOverlap
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence [ std.enum.TagOrString, [| 'parity |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'greedy |] ]
                ]
              | doc m%"
                The strategy to use for resolving overlap of axis labels. If `false` (the default), no overlap reduction is attempted. If set to `true` or `"parity"`, a strategy of removing every other label is used (this works well for standard linear axes). If set to `"greedy"`, a linear scan of the labels is performed, removing any labels that overlaps with the last visible label (this often works better for log-scaled axes).
                
                __Default value:__ `true` for non-nominal fields with non-log scales; `"greedy"` for log scales; otherwise `false`.
              "%
              | optional,
            labelPadding
              | Number
              | doc "The padding, in pixels, between axis and text labels."
              | optional,
            labels
              | Bool
              | doc m%"
                A boolean flag indicating if labels should be included as part of the axis.
                
                __Default value:__  `true`.
              "%
              | optional,
            maxExtent
              | Number
              | doc m%"
                The maximum extent in pixels that axis ticks and labels should use. This determines a maximum offset value for axis titles.
                
                __Default value:__ `undefined`.
              "%
              | optional,
            minExtent
              | Number
              | doc m%"
                The minimum extent in pixels that axis ticks and labels should use. This determines a minimum offset value for axis titles.
                
                __Default value:__ `30` for y-axis; `undefined` for x-axis.
              "%
              | optional,
            offset
              | Number
              | doc m%"
                The offset, in pixels, by which to displace the axis from the edge of the enclosing group or data rectangle.
                
                __Default value:__ derived from the [axis config](config.html#facet-scale-config)'s `offset` (`0` by default)
              "%
              | optional,
            orient
              | refs."definitions.AxisOrient"
              | String
              | doc m%"
                The orientation of the axis. One of `"top"`, `"bottom"`, `"left"` or `"right"`. The orientation can be used to further specialize the axis type (e.g., a y axis oriented for the right edge of the chart).
                
                __Default value:__ `"bottom"` for x-axes and `"left"` for y-axes.
              "%
              | optional,
            position
              | Number
              | doc m%"
                The anchor position of the axis in pixels. For x-axis with top or bottom orientation, this sets the axis group x coordinate. For y-axis with left or right orientation, this sets the axis group y coordinate.
                
                __Default value__: `0`
              "%
              | optional,
            tickCount
              | Number
              | doc "A desired number of ticks, for axes visualizing quantitative scales. The resulting number may be different so that values are \"nice\" (multiples of 2, 5, 10) and lie within the underlying scale's range."
              | optional,
            tickSize
              | js2n.number.Minimum 0
              | doc "The size in pixels of axis ticks."
              | optional,
            ticks
              | Bool
              | doc "Boolean value that determines whether the axis should include ticks."
              | optional,
            title
              | js2n.Nullable String
              | doc m%"
                A title for the field. If `null`, the title will be removed.
                
                __Default value:__  derived from the field's name and transformation function (`aggregate`, `bin` and `timeUnit`).  If the field has an aggregate function, the function is displayed as a part of the title (e.g., `"Sum of Profit"`). If the field is binned or has a time unit applied, the applied function will be denoted in parentheses (e.g., `"Profit (binned)"`, `"Transaction Date (year-month)"`).  Otherwise, the title is simply the field name.
                
                __Note__: You can customize the default field title format by providing the [`fieldTitle` property in the [config](config.html) or [`fieldTitle` function via the `compile` function's options](compile.html#field-title).
              "%
              | optional,
            titleMaxLength
              | Number
              | doc "Max length for axis title if the title is automatically generated from the field's description."
              | optional,
            titlePadding
              | Number
              | doc "The padding, in pixels, between title and axis."
              | optional,
            values
              | std.contract.any_of
                [
                  js2n.array.ArrayOf Number,
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [ refs."definitions.DateTime", { _ | Dyn } ])
                ]
              | doc "Explicitly set the visible axis tick values."
              | optional,
            zindex
              | js2n.number.Minimum 0
              | doc m%"
                A non-positive integer indicating z-index of the axis.
                If zindex is 0, axes should be drawn behind all chart elements.
                To put them in front, use `"zindex = 1"`.
                
                __Default value:__ `1` (in front of the marks) for actual axis and `0` (behind the marks) for grids.
              "%
              | optional,
          },
      "definitions.AxisConfig" =
        {
            bandPosition
              | Number
              | doc "An interpolation fraction indicating where, for `band` scales, axis ticks should be positioned. A value of `0` places ticks at the left edge of their bands. A value of `0.5` places ticks in the middle of their bands."
              | optional,
            domain
              | Bool
              | doc m%"
                A boolean flag indicating if the domain (the axis baseline) should be included as part of the axis.
                
                __Default value:__ `true`
              "%
              | optional,
            domainColor
              | String
              | doc m%"
                Color of axis domain line.
                
                __Default value:__  (none, using Vega default).
              "%
              | optional,
            domainWidth
              | Number
              | doc m%"
                Stroke width of axis domain line
                
                __Default value:__  (none, using Vega default).
              "%
              | optional,
            grid
              | Bool
              | doc m%"
                A boolean flag indicating if grid lines should be included as part of the axis
                
                __Default value:__ `true` for [continuous scales](scale.html#continuous) that are not binned; otherwise, `false`.
              "%
              | optional,
            gridColor | String | doc "Color of gridlines." | optional,
            gridDash
              | Array Number
              | doc "The offset (in pixels) into which to begin drawing with the grid dash array."
              | optional,
            gridOpacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The stroke opacity of grid (value between [0,1])
                
                __Default value:__ (`1` by default)
              "%
              | optional,
            gridWidth
              | js2n.number.Minimum 0
              | doc "The grid width, in pixels."
              | optional,
            labelAngle
              | js2n.number.Maximum 360
              | js2n.number.Minimum (-360)
              | doc m%"
                The rotation angle of the axis labels.
                
                __Default value:__ `-90` for nominal and ordinal fields; `0` otherwise.
              "%
              | optional,
            labelBound
              | std.contract.any_of [ Bool, Number ]
              | doc m%"
                Indicates if labels should be hidden if they exceed the axis range. If `false `(the default) no bounds overlap analysis is performed. If `true`, labels will be hidden if they exceed the axis range by more than 1 pixel. If this property is a number, it specifies the pixel tolerance: the maximum amount by which a label bounding box may exceed the axis range.
                
                __Default value:__ `false`.
              "%
              | optional,
            labelColor
              | String
              | doc "The color of the tick label, can be in hex color code or regular color name."
              | optional,
            labelFlush
              | std.contract.any_of [ Bool, Number ]
              | doc m%"
                Indicates if the first and last axis labels should be aligned flush with the scale range. Flush alignment for a horizontal axis will left-align the first label and right-align the last label. For vertical axes, bottom and top text baselines are applied instead. If this property is a number, it also indicates the number of pixels by which to offset the first and last labels; for example, a value of 2 will flush-align the first and last labels and also push them 2 pixels outward from the center of the axis. The additional adjustment can sometimes help the labels better visually group with corresponding axis ticks.
                
                __Default value:__ `true` for axis of a continuous x-scale. Otherwise, `false`.
              "%
              | optional,
            labelFont | String | doc "The font of the tick label." | optional,
            labelFontSize
              | js2n.number.Minimum 0
              | doc "The font size of the label, in pixels."
              | optional,
            labelLimit
              | Number
              | doc "Maximum allowed pixel width of axis tick labels."
              | optional,
            labelOverlap
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence [ std.enum.TagOrString, [| 'parity |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'greedy |] ]
                ]
              | doc m%"
                The strategy to use for resolving overlap of axis labels. If `false` (the default), no overlap reduction is attempted. If set to `true` or `"parity"`, a strategy of removing every other label is used (this works well for standard linear axes). If set to `"greedy"`, a linear scan of the labels is performed, removing any labels that overlaps with the last visible label (this often works better for log-scaled axes).
                
                __Default value:__ `true` for non-nominal fields with non-log scales; `"greedy"` for log scales; otherwise `false`.
              "%
              | optional,
            labelPadding
              | Number
              | doc "The padding, in pixels, between axis and text labels."
              | optional,
            labels
              | Bool
              | doc m%"
                A boolean flag indicating if labels should be included as part of the axis.
                
                __Default value:__  `true`.
              "%
              | optional,
            maxExtent
              | Number
              | doc m%"
                The maximum extent in pixels that axis ticks and labels should use. This determines a maximum offset value for axis titles.
                
                __Default value:__ `undefined`.
              "%
              | optional,
            minExtent
              | Number
              | doc m%"
                The minimum extent in pixels that axis ticks and labels should use. This determines a minimum offset value for axis titles.
                
                __Default value:__ `30` for y-axis; `undefined` for x-axis.
              "%
              | optional,
            shortTimeLabels
              | Bool
              | doc m%"
                Whether month names and weekday names should be abbreviated.
                
                __Default value:__  `false`
              "%
              | optional,
            tickColor | String | doc "The color of the axis's tick." | optional,
            tickRound
              | Bool
              | doc "Boolean flag indicating if pixel position values should be rounded to the nearest integer."
              | optional,
            tickSize
              | js2n.number.Minimum 0
              | doc "The size in pixels of axis ticks."
              | optional,
            tickWidth
              | js2n.number.Minimum 0
              | doc "The width, in pixels, of ticks."
              | optional,
            ticks
              | Bool
              | doc "Boolean value that determines whether the axis should include ticks."
              | optional,
            titleAlign
              | String
              | doc "Horizontal text alignment of axis titles."
              | optional,
            titleAngle
              | Number
              | doc "Angle in degrees of axis titles."
              | optional,
            titleBaseline
              | String
              | doc "Vertical text baseline for axis titles."
              | optional,
            titleColor
              | String
              | doc "Color of the title, can be in hex color code or regular color name."
              | optional,
            titleFont
              | String
              | doc "Font of the title. (e.g., `\"Helvetica Neue\"`)."
              | optional,
            titleFontSize
              | js2n.number.Minimum 0
              | doc "Font size of the title."
              | optional,
            titleFontWeight
              | std.contract.any_of [ Number, String ]
              | doc "Font weight of the title. (e.g., `\"bold\"`)."
              | optional,
            titleLimit
              | Number
              | doc "Maximum allowed pixel width of axis titles."
              | optional,
            titleMaxLength
              | Number
              | doc "Max length for axis title if the title is automatically generated from the field's description."
              | optional,
            titlePadding
              | Number
              | doc "The padding, in pixels, between title and axis."
              | optional,
            titleX
              | Number
              | doc "X-coordinate of the axis title relative to the axis group."
              | optional,
            titleY
              | Number
              | doc "Y-coordinate of the axis title relative to the axis group."
              | optional,
          },
      "definitions.AxisOrient" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'bottom, 'left, 'right, 'top |] ],
      "definitions.AxisResolveMap" =
        {
            x | refs."definitions.ResolveMode" | String | optional,
            y | refs."definitions.ResolveMode" | String | optional,
          },
      "definitions.BarConfig" =
        {
            align
              | refs."definitions.HorizontalAlign"
              | String
              | doc "The horizontal alignment of the text. One of `\"left\"`, `\"right\"`, `\"center\"`."
              | optional,
            angle
              | js2n.number.Maximum 360
              | js2n.number.Minimum 0
              | doc "The rotation angle of the text, in degrees."
              | optional,
            baseline
              | refs."definitions.VerticalAlign"
              | String
              | doc m%"
                The vertical alignment of the text. One of `"top"`, `"middle"`, `"bottom"`.
                
                __Default value:__ `"middle"`
              "%
              | optional,
            binSpacing
              | js2n.number.Minimum 0
              | doc m%"
                Offset between bar for binned field.  Ideal value for this is either 0 (Preferred by statisticians) or 1 (Vega-Lite Default, D3 example style).
                
                __Default value:__ `1`
              "%
              | optional,
            color
              | String
              | doc m%"
                Default color.  Note that `fill` and `stroke` have higher precedence than `color` and will override `color`.
                
                __Default value:__ <span style="color: #4682b4;">&#9632;</span> `"#4682b4"`
                
                __Note:__ This property cannot be used in a [style config](mark.html#style-config).
              "%
              | optional,
            continuousBandSize
              | js2n.number.Minimum 0
              | doc m%"
                The default size of the bars on continuous scales.
                
                __Default value:__ `5`
              "%
              | optional,
            discreteBandSize
              | js2n.number.Minimum 0
              | doc m%"
                The size of the bars.  If unspecified, the default size is  `bandSize-1`,
                which provides 1 pixel offset between bars.
              "%
              | optional,
            dx
              | Number
              | doc "The horizontal offset, in pixels, between the text label and its anchor point. The offset is applied after rotation by the _angle_ property."
              | optional,
            dy
              | Number
              | doc "The vertical offset, in pixels, between the text label and its anchor point. The offset is applied after rotation by the _angle_ property."
              | optional,
            fill
              | String
              | doc m%"
                Default Fill Color.  This has higher precedence than config.color
                
                __Default value:__ (None)
              "%
              | optional,
            fillOpacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The fill opacity (value between [0,1]).
                
                __Default value:__ `1`
              "%
              | optional,
            filled
              | Bool
              | doc m%"
                Whether the mark's color should be used as fill color instead of stroke color.
                
                __Default value:__ `true` for all marks except `point` and `false` for `point`.
                
                __Applicable for:__ `bar`, `point`, `circle`, `square`, and `area` marks.
                
                __Note:__ This property cannot be used in a [style config](mark.html#style-config).
              "%
              | optional,
            font
              | String
              | doc "The typeface to set the text in (e.g., `\"Helvetica Neue\"`)."
              | optional,
            fontSize
              | js2n.number.Minimum 0
              | doc "The font size, in pixels."
              | optional,
            fontStyle
              | refs."definitions.FontStyle"
              | String
              | doc "The font style (e.g., `\"italic\"`)."
              | optional,
            fontWeight
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FontWeight", String ],
                  std.contract.Sequence
                    [ refs."definitions.FontWeightNumber", Number ]
                ]
              | doc "The font weight (e.g., `\"bold\"`)."
              | optional,
            interpolate
              | refs."definitions.Interpolate"
              | String
              | doc m%"
                The line interpolation method to use for line and area marks. One of the following:
                - `"linear"`: piecewise linear segments, as in a polyline.
                - `"linear-closed"`: close the linear segments to form a polygon.
                - `"step"`: alternate between horizontal and vertical segments, as in a step function.
                - `"step-before"`: alternate between vertical and horizontal segments, as in a step function.
                - `"step-after"`: alternate between horizontal and vertical segments, as in a step function.
                - `"basis"`: a B-spline, with control point duplication on the ends.
                - `"basis-open"`: an open B-spline; may not intersect the start or end.
                - `"basis-closed"`: a closed B-spline, as in a loop.
                - `"cardinal"`: a Cardinal spline, with control point duplication on the ends.
                - `"cardinal-open"`: an open Cardinal spline; may not intersect the start or end, but will intersect other control points.
                - `"cardinal-closed"`: a closed Cardinal spline, as in a loop.
                - `"bundle"`: equivalent to basis, except the tension parameter is used to straighten the spline.
                - `"monotone"`: cubic interpolation that preserves monotonicity in y.
              "%
              | optional,
            limit
              | Number
              | doc "The maximum length of the text mark in pixels (default 0, indicating no limit). The text value will be automatically truncated if the rendered size exceeds the limit."
              | optional,
            opacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The overall opacity (value between [0,1]).
                
                __Default value:__ `0.7` for non-aggregate plots with `point`, `tick`, `circle`, or `square` marks or layered `bar` charts and `1` otherwise.
              "%
              | optional,
            orient
              | refs."definitions.Orient"
              | String
              | doc m%"
                The orientation of a non-stacked bar, tick, area, and line charts.
                The value is either horizontal (default) or vertical.
                - For bar, rule and tick, this determines whether the size of the bar and tick
                should be applied to x or y dimension.
                - For area, this property determines the orient property of the Vega output.
                - For line, this property determines the sort order of the points in the line
                if `config.sortLineBy` is not specified.
                For stacked charts, this is always determined by the orientation of the stack;
                therefore explicitly specified value will be ignored.
              "%
              | optional,
            radius
              | js2n.number.Minimum 0
              | doc "Polar coordinate radial offset, in pixels, of the text label from the origin determined by the `x` and `y` properties."
              | optional,
            shape
              | String
              | doc m%"
                The default symbol shape to use. One of: `"circle"` (default), `"square"`, `"cross"`, `"diamond"`, `"triangle-up"`, or `"triangle-down"`, or a custom SVG path.
                
                __Default value:__ `"circle"`
              "%
              | optional,
            size
              | js2n.number.Minimum 0
              | doc m%"
                The pixel area each the point/circle/square.
                For example: in the case of circles, the radius is determined in part by the square root of the size value.
                
                __Default value:__ `30`
              "%
              | optional,
            stroke
              | String
              | doc m%"
                Default Stroke Color.  This has higher precedence than config.color
                
                __Default value:__ (None)
              "%
              | optional,
            strokeDash
              | Array Number
              | doc "An array of alternating stroke, space lengths for creating dashed or dotted lines."
              | optional,
            strokeDashOffset
              | Number
              | doc "The offset (in pixels) into which to begin drawing with the stroke dash array."
              | optional,
            strokeOpacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The stroke opacity (value between [0,1]).
                
                __Default value:__ `1`
              "%
              | optional,
            strokeWidth
              | js2n.number.Minimum 0
              | doc "The stroke width, in pixels."
              | optional,
            tension
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc "Depending on the interpolation type, sets the tension parameter (for line and area marks)."
              | optional,
            text
              | String
              | doc "Placeholder text if the `text` channel is not specified"
              | optional,
            theta
              | Number
              | doc "Polar coordinate angle, in radians, of the text label from the origin determined by the `x` and `y` properties. Values for `theta` follow the same convention of `arc` mark `startAngle` and `endAngle` properties: angles are measured in radians, with `0` indicating \"north\"."
              | optional,
          },
      "definitions.BinParams" =
        {
            base
              | Number
              | doc m%"
                The number base to use for automatic bin determination (default is base 10).
                
                __Default value:__ `10`
              "%
              | optional,
            divide
              | js2n.array.MinItems 1
              | Array Number
              | doc m%"
                Scale factors indicating allowable subdivisions. The default value is [5, 2], which indicates that for base 10 numbers (the default base), the method may consider dividing bin sizes by 5 and/or 2. For example, for an initial step size of 10, the method can check if bin sizes of 2 (= 10/5), 5 (= 10/2), or 1 (= 10/(5*2)) might also satisfy the given constraints.
                
                __Default value:__ `[5, 2]`
              "%
              | optional,
            extent
              | js2n.array.MaxItems 2
              | js2n.array.MinItems 2
              | Array Number
              | doc "A two-element (`[min, max]`) array indicating the range of desired bin values."
              | optional,
            maxbins
              | js2n.number.Minimum 2
              | doc m%"
                Maximum number of bins.
                
                __Default value:__ `6` for `row`, `column` and `shape` channels; `10` for other channels
              "%
              | optional,
            minstep
              | Number
              | doc "A minimum allowable step size (particularly useful for integer values)."
              | optional,
            nice
              | Bool
              | doc "If true (the default), attempts to make the bin boundaries use human-friendly boundaries, such as multiples of ten."
              | optional,
            step
              | Number
              | doc m%"
                An exact step size to use between bins.
                
                __Note:__ If provided, options such as maxbins will be ignored.
              "%
              | optional,
            steps
              | js2n.array.MinItems 1
              | Array Number
              | doc "An array of allowable step sizes to choose from."
              | optional,
          },
      "definitions.BinTransform" =
        {
            as
              | String
              | doc "The output fields at which to write the start and end bin values.",
            bin
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ refs."definitions.BinParams", { _ | Dyn } ]
                ]
              | doc "An object indicating bin properties, or simply `true` for using default bin parameters.",
            field | String | doc "The data field to bin.",
          },
      "definitions.BrushConfig" =
        {
            fill
              | String
              | doc m%"
                The fill color of the interval mark.
                
                __Default value:__ `#333333`
              "%
              | optional,
            fillOpacity
              | Number
              | doc m%"
                The fill opacity of the interval mark (a value between 0 and 1).
                
                __Default value:__ `0.125`
              "%
              | optional,
            stroke
              | String
              | doc m%"
                The stroke color of the interval mark.
                
                __Default value:__ `#ffffff`
              "%
              | optional,
            strokeDash
              | Array Number
              | doc m%"
                An array of alternating stroke and space lengths,
                for creating dashed or dotted lines.
              "%
              | optional,
            strokeDashOffset
              | Number
              | doc "The offset (in pixels) with which to begin drawing the stroke dash array."
              | optional,
            strokeOpacity
              | Number
              | doc "The stroke opacity of the interval mark (a value between 0 and 1)."
              | optional,
            strokeWidth
              | Number
              | doc "The stroke width of the interval mark."
              | optional,
          },
      "definitions.CalculateTransform" =
        {
            as
              | String
              | doc "The field for storing the computed formula value.",
            calculate
              | String
              | doc "A string containing a Vega Expression. Use the variable `datum` to refer to the current data object.",
          },
      "definitions.CompositeUnitSpec" =
        std.contract.Sequence
            [ refs."definitions.CompositeUnitSpecAlias", { _ | Dyn } ],
      "definitions.CompositeUnitSpecAlias" =
        {
            data
              | refs."definitions.Data"
              | doc "An object describing the data source"
              | optional,
            description
              | String
              | doc "Description of this mark for commenting purpose."
              | optional,
            encoding
              | refs."definitions.Encoding"
              | { _ | Dyn }
              | doc "A key-value mapping between encoding channels and definition of fields.",
            height
              | Number
              | doc m%"
                The height of a visualization.
                
                __Default value:__
                - If a view's [`autosize`](size.html#autosize) type is `"fit"` or its y-channel has a [continuous scale](scale.html#continuous), the height will be the value of [`config.view.height`](spec.html#config).
                - For y-axis with a band or point scale: if [`rangeStep`](scale.html#band) is a numeric value or unspecified, the height is [determined by the range step, paddings, and the cardinality of the field mapped to y-channel](scale.html#band). Otherwise, if the `rangeStep` is `null`, the height will be the value of [`config.view.height`](spec.html#config).
                - If no field is mapped to `y` channel, the `height` will be the value of `rangeStep`.
                
                __Note__: For plots with [`row` and `column` channels](encoding.html#facet), this represents the height of a single view.
                
                __See also:__ The documentation for [width and height](size.html) contains more examples.
              "%
              | optional,
            mark
              | refs."definitions.AnyMark"
              | doc m%"
                A string describing the mark type (one of `"bar"`, `"circle"`, `"square"`, `"tick"`, `"line"`,
                `"area"`, `"point"`, `"rule"`, and `"text"`) or a [mark definition object](mark.html#mark-def).
              "%,
            name
              | String
              | doc "Name of the visualization for later reference."
              | optional,
            selection
              | { _ | refs."definitions.SelectionDef" }
              | doc "A key-value mapping between selection names and definitions."
              | optional,
            title
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.TitleParams", { _ | Dyn } ]
                ]
              | doc "Title for the plot."
              | optional,
            transform
              | Array refs."definitions.Transform"
              | doc "An array of data transformations such as filter and new field calculation."
              | optional,
            width
              | Number
              | doc m%"
                The width of a visualization.
                
                __Default value:__ This will be determined by the following rules:
                
                - If a view's [`autosize`](size.html#autosize) type is `"fit"` or its x-channel has a [continuous scale](scale.html#continuous), the width will be the value of [`config.view.width`](spec.html#config).
                - For x-axis with a band or point scale: if [`rangeStep`](scale.html#band) is a numeric value or unspecified, the width is [determined by the range step, paddings, and the cardinality of the field mapped to x-channel](scale.html#band).   Otherwise, if the `rangeStep` is `null`, the width will be the value of [`config.view.width`](spec.html#config).
                - If no field is mapped to `x` channel, the `width` will be the value of [`config.scale.textXRangeStep`](size.html#default-width-and-height) for `text` mark and the value of `rangeStep` for other marks.
                
                __Note:__ For plots with [`row` and `column` channels](encoding.html#facet), this represents the width of a single view.
                
                __See also:__ The documentation for [width and height](size.html) contains more examples.
              "%
              | optional,
          },
      "definitions.Config" =
        {
            area
              | refs."definitions.MarkConfig"
              | { _ | Dyn }
              | doc "Area-Specific Config "
              | optional,
            autosize
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.AutosizeType", String ],
                  std.contract.Sequence
                    [ refs."definitions.AutoSizeParams", { _ | Dyn } ]
                ]
              | doc m%"
                Sets how the visualization size should be determined. If a string, should be one of `"pad"`, `"fit"` or `"none"`.
                Object values can additionally specify parameters for content sizing and automatic resizing.
                `"fit"` is only supported for single and layered views that don't use `rangeStep`.
                
                __Default value__: `pad`
              "%
              | optional,
            axis
              | refs."definitions.AxisConfig"
              | { _ | Dyn }
              | doc "Axis configuration, which determines default properties for all `x` and `y` [axes](axis.html). For a full list of axis configuration options, please see the [corresponding section of the axis documentation](axis.html#config)."
              | optional,
            axisBand
              | refs."definitions.VgAxisConfig"
              | { _ | Dyn }
              | doc "Specific axis config for axes with \"band\" scales."
              | optional,
            axisBottom
              | refs."definitions.VgAxisConfig"
              | { _ | Dyn }
              | doc "Specific axis config for x-axis along the bottom edge of the chart."
              | optional,
            axisLeft
              | refs."definitions.VgAxisConfig"
              | { _ | Dyn }
              | doc "Specific axis config for y-axis along the left edge of the chart."
              | optional,
            axisRight
              | refs."definitions.VgAxisConfig"
              | { _ | Dyn }
              | doc "Specific axis config for y-axis along the right edge of the chart."
              | optional,
            axisTop
              | refs."definitions.VgAxisConfig"
              | { _ | Dyn }
              | doc "Specific axis config for x-axis along the top edge of the chart."
              | optional,
            axisX
              | refs."definitions.VgAxisConfig"
              | { _ | Dyn }
              | doc "X-axis specific config."
              | optional,
            axisY
              | refs."definitions.VgAxisConfig"
              | { _ | Dyn }
              | doc "Y-axis specific config."
              | optional,
            background
              | String
              | doc m%"
                CSS color property to use as the background of visualization.
                
                __Default value:__ none (transparent)
              "%
              | optional,
            bar
              | refs."definitions.BarConfig"
              | { _ | Dyn }
              | doc "Bar-Specific Config "
              | optional,
            circle
              | refs."definitions.MarkConfig"
              | { _ | Dyn }
              | doc "Circle-Specific Config "
              | optional,
            countTitle
              | String
              | doc m%"
                Default axis and legend title for count fields.
                
                __Default value:__ `'Number of Records'`.
              "%
              | optional,
            fieldTitle
              | std.enum.TagOrString
              | [| 'plain, 'functional, 'verbal |]
              | doc m%"
                Defines how Vega-Lite generates title for fields.  There are three possible styles:
                - `"verbal"` (Default) - displays function in a verbal style (e.g., "Sum of field", "Year-month of date", "field (binned)").
                - `"function"` - displays function using parentheses and capitalized texts (e.g., "SUM(field)", "YEARMONTH(date)", "BIN(field)").
                - `"plain"` - displays only the field name without functions (e.g., "field", "date", "field").
              "%
              | optional,
            invalidValues
              | std.enum.TagOrString
              | [| 'filter |]
              | doc m%"
                Defines how Vega-Lite should handle invalid values (`null` and `NaN`).
                - If set to `"filter"` (default), all data items with null values are filtered.
                - If `null`, all data items are included. In this case, invalid values will be interpreted as zeroes.
              "%
              | optional,
            legend
              | refs."definitions.LegendConfig"
              | { _ | Dyn }
              | doc "Legend configuration, which determines default properties for all [legends](legend.html). For a full list of legend configuration options, please see the [corresponding section of in the legend documentation](legend.html#config)."
              | optional,
            line
              | refs."definitions.MarkConfig"
              | { _ | Dyn }
              | doc "Line-Specific Config "
              | optional,
            mark
              | refs."definitions.MarkConfig"
              | { _ | Dyn }
              | doc "Mark Config "
              | optional,
            numberFormat
              | String
              | doc "D3 Number format for axis labels and text tables. For example \"s\" for SI units. Use [D3's number format pattern](https://github.com/d3/d3-format#locale_format)."
              | optional,
            padding
              | refs."definitions.Padding"
              | std.contract.any_of [ { _ | Dyn }, Number ]
              | doc m%"
                The default visualization padding, in pixels, from the edge of the visualization canvas to the data rectangle.  If a number, specifies padding for all sides.
                If an object, the value should have the format `{"left": 5, "top": 5, "right": 5, "bottom": 5}` to specify padding for each side of the visualization.
                
                __Default value__: `5`
              "%
              | optional,
            point
              | refs."definitions.MarkConfig"
              | { _ | Dyn }
              | doc "Point-Specific Config "
              | optional,
            range
              | refs."definitions.RangeConfig"
              | { _ | Dyn }
              | doc m%"
                An object hash that defines default range arrays or schemes for using with scales.
                For a full list of scale range configuration options, please see the [corresponding section of the scale documentation](scale.html#config).
              "%
              | optional,
            rect
              | refs."definitions.MarkConfig"
              | { _ | Dyn }
              | doc "Rect-Specific Config "
              | optional,
            rule
              | refs."definitions.MarkConfig"
              | { _ | Dyn }
              | doc "Rule-Specific Config "
              | optional,
            scale
              | refs."definitions.ScaleConfig"
              | { _ | Dyn }
              | doc "Scale configuration determines default properties for all [scales](scale.html). For a full list of scale configuration options, please see the [corresponding section of the scale documentation](scale.html#config)."
              | optional,
            selection
              | refs."definitions.SelectionConfig"
              | { _ | Dyn }
              | doc "An object hash for defining default properties for each type of selections. "
              | optional,
            square
              | refs."definitions.MarkConfig"
              | { _ | Dyn }
              | doc "Square-Specific Config "
              | optional,
            stack
              | refs."definitions.StackOffset"
              | String
              | doc "Default stack offset for stackable mark. "
              | optional,
            style
              | refs."definitions.StyleConfigIndex"
              | { _ | Dyn }
              | doc "An object hash that defines key-value mappings to determine default properties for marks with a given [style](mark.html#mark-def).  The keys represent styles names; the value are valid [mark configuration objects](mark.html#config).  "
              | optional,
            text
              | refs."definitions.TextConfig"
              | { _ | Dyn }
              | doc "Text-Specific Config "
              | optional,
            tick
              | refs."definitions.TickConfig"
              | { _ | Dyn }
              | doc "Tick-Specific Config "
              | optional,
            timeFormat
              | String
              | doc m%"
                Default datetime format for axis and legend labels. The format can be set directly on each axis and legend. Use [D3's time format pattern](https://github.com/d3/d3-time-format#locale_format).
                
                __Default value:__ `'%b %d, %Y'`.
              "%
              | optional,
            title
              | refs."definitions.VgTitleConfig"
              | { _ | Dyn }
              | doc "Title configuration, which determines default properties for all [titles](title.html). For a full list of title configuration options, please see the [corresponding section of the title documentation](title.html#config)."
              | optional,
            view
              | refs."definitions.ViewConfig"
              | { _ | Dyn }
              | doc "Default properties for [single view plots](spec.html#single). "
              | optional,
          },
      "definitions.CsvDataFormat" =
        {
            parse
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'auto |] ],
                  { _ | Dyn }
                ]
              | doc m%%"
                If set to auto (the default), perform automatic type inference to determine the desired data types.
                Alternatively, a parsing directive object can be provided for explicit data types. Each property of the object corresponds to a field name, and the value to the desired data type (one of `"number"`, `"boolean"` or `"date"`).
                For example, `"parse": {"modified_on": "date"}` parses the `modified_on` field in each input record a Date value.
                
                For `"date"`, we parse data based using Javascript's [`Date.parse()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/parse).
                For Specific date formats can be provided (e.g., `{foo: 'date:"%m%d%Y"'}`), using the [d3-time-format syntax](https://github.com/d3/d3-time-format#locale_format). UTC date format parsing is supported similarly (e.g., `{foo: 'utc:"%m%d%Y"'}`). See more about [UTC time](timeunit.html#utc)
              "%%
              | optional,
            type
              | std.enum.TagOrString
              | [| 'tsv, 'csv |]
              | doc m%"
                Type of input data: `"json"`, `"csv"`, `"tsv"`.
                The default format type is determined by the extension of the file URL.
                If no extension is detected, `"json"` will be used by default.
              "%
              | optional,
          },
      "definitions.Data" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.UrlData", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.InlineData", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.NamedData", { _ | Dyn } ]
            ],
      "definitions.DataFormat" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.CsvDataFormat", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.JsonDataFormat", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.TopoDataFormat", { _ | Dyn } ]
            ],
      "definitions.DateTime" =
        {
            date
              | js2n.number.Maximum 31
              | js2n.number.Minimum 1
              | doc "Integer value representing the date from 1-31."
              | optional,
            day
              | std.contract.any_of
                [
                  std.contract.Sequence [ refs."definitions.Day", Number ],
                  String
                ]
              | doc "Value representing the day of a week.  This can be one of: (1) integer value -- `1` represents Monday; (2) case-insensitive day name (e.g., `\"Monday\"`);  (3) case-insensitive, 3-character short day name (e.g., `\"Mon\"`).   <br/> **Warning:** A DateTime definition object with `day`** should not be combined with `year`, `quarter`, `month`, or `date`."
              | optional,
            hours
              | js2n.number.Maximum 23
              | js2n.number.Minimum 0
              | doc "Integer value representing the hour of a day from 0-23."
              | optional,
            milliseconds
              | js2n.number.Maximum 999
              | js2n.number.Minimum 0
              | doc "Integer value representing the millisecond segment of time."
              | optional,
            minutes
              | js2n.number.Maximum 59
              | js2n.number.Minimum 0
              | doc "Integer value representing the minute segment of time from 0-59."
              | optional,
            month
              | std.contract.any_of
                [
                  std.contract.Sequence [ refs."definitions.Month", Number ],
                  String
                ]
              | doc "One of: (1) integer value representing the month from `1`-`12`. `1` represents January;  (2) case-insensitive month name (e.g., `\"January\"`);  (3) case-insensitive, 3-character short month name (e.g., `\"Jan\"`). "
              | optional,
            quarter
              | js2n.number.Maximum 4
              | js2n.number.Minimum 1
              | doc "Integer value representing the quarter of the year (from 1-4)."
              | optional,
            seconds
              | js2n.number.Maximum 59
              | js2n.number.Minimum 0
              | doc "Integer value representing the second segment (0-59) of a time value"
              | optional,
            utc
              | Bool
              | doc "A boolean flag indicating if date time is in utc time. If false, the date time is in local time"
              | optional,
            year
              | Number
              | doc "Integer value representing the year."
              | optional,
          },
      "definitions.Day" =
        std.contract.Sequence [ js2n.number.Maximum 7, js2n.number.Minimum 1 ],
      "definitions.Encoding" =
        {
            color
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.MarkPropFieldDefWithCondition",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.MarkPropValueDefWithCondition",
                      { _ | Dyn }
                    ]
                ]
              | doc m%"
                Color of the marks – either fill or stroke color based on mark type.
                By default, `color` represents fill color for `"area"`, `"bar"`, `"tick"`,
                `"text"`, `"circle"`, and `"square"` / stroke color for `"line"` and `"point"`.
                
                __Default value:__ If undefined, the default color depends on [mark config](config.html#mark)'s `color` property.
                
                _Note:_ See the scale documentation for more information about customizing [color scheme](scale.html#scheme).
              "%
              | optional,
            detail
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FieldDef", { _ | Dyn } ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.FieldDef", { _ | Dyn } ]
                  )
                ]
              | doc m%"
                Additional levels of detail for grouping data in aggregate views and
                in line and area marks without mapping data to a specific visual channel.
              "%
              | optional,
            opacity
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.MarkPropFieldDefWithCondition",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.MarkPropValueDefWithCondition",
                      { _ | Dyn }
                    ]
                ]
              | doc m%"
                Opacity of the marks – either can be a value or a range.
                
                __Default value:__ If undefined, the default opacity depends on [mark config](config.html#mark)'s `opacity` property.
              "%
              | optional,
            order
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.OrderFieldDef", { _ | Dyn } ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.OrderFieldDef", { _ | Dyn } ]
                  )
                ]
              | doc m%"
                Stack order for stacked marks or order of data points in line marks for connected scatter plots.
                
                __Note__: In aggregate plots, `order` field should be `aggregate`d to avoid creating additional aggregation grouping.
              "%
              | optional,
            shape
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.MarkPropFieldDefWithCondition",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.MarkPropValueDefWithCondition",
                      { _ | Dyn }
                    ]
                ]
              | doc m%"
                The symbol's shape (only for `point` marks). The supported values are
                `"circle"` (default), `"square"`, `"cross"`, `"diamond"`, `"triangle-up"`,
                or `"triangle-down"`, or else a custom SVG path string.
                __Default value:__ If undefined, the default shape depends on [mark config](config.html#point-config)'s `shape` property.
              "%
              | optional,
            size
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.MarkPropFieldDefWithCondition",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.MarkPropValueDefWithCondition",
                      { _ | Dyn }
                    ]
                ]
              | doc m%"
                Size of the mark.
                - For `"point"`, `"square"` and `"circle"`, – the symbol size, or pixel area of the mark.
                - For `"bar"` and `"tick"` – the bar and tick's size.
                - For `"text"` – the text's font size.
                - Size is currently unsupported for `"line"`, `"area"`, and `"rect"`.
              "%
              | optional,
            text
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TextFieldDefWithCondition",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.TextValueDefWithCondition",
                      { _ | Dyn }
                    ]
                ]
              | doc "Text of the `text` mark."
              | optional,
            tooltip
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TextFieldDefWithCondition",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.TextValueDefWithCondition",
                      { _ | Dyn }
                    ]
                ]
              | doc "The tooltip text to show upon mouse hover."
              | optional,
            x
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.PositionFieldDef", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.ValueDef", { _ | Dyn } ]
                ]
              | doc "X coordinates of the marks, or width of horizontal `\"bar\"` and `\"area\"`."
              | optional,
            x2
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FieldDef", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.ValueDef", { _ | Dyn } ]
                ]
              | doc "X2 coordinates for ranged  `\"area\"`, `\"bar\"`, `\"rect\"`, and  `\"rule\"`."
              | optional,
            y
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.PositionFieldDef", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.ValueDef", { _ | Dyn } ]
                ]
              | doc "Y coordinates of the marks, or height of vertical `\"bar\"` and `\"area\"`."
              | optional,
            y2
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FieldDef", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.ValueDef", { _ | Dyn } ]
                ]
              | doc "Y2 coordinates for ranged  `\"area\"`, `\"bar\"`, `\"rect\"`, and  `\"rule\"`."
              | optional,
          },
      "definitions.EncodingWithFacet" =
        {
            color
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.MarkPropFieldDefWithCondition",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.MarkPropValueDefWithCondition",
                      { _ | Dyn }
                    ]
                ]
              | doc m%"
                Color of the marks – either fill or stroke color based on mark type.
                By default, `color` represents fill color for `"area"`, `"bar"`, `"tick"`,
                `"text"`, `"circle"`, and `"square"` / stroke color for `"line"` and `"point"`.
                
                __Default value:__ If undefined, the default color depends on [mark config](config.html#mark)'s `color` property.
                
                _Note:_ See the scale documentation for more information about customizing [color scheme](scale.html#scheme).
              "%
              | optional,
            column
              | refs."definitions.FacetFieldDef"
              | { _ | Dyn }
              | doc "Horizontal facets for trellis plots."
              | optional,
            detail
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FieldDef", { _ | Dyn } ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.FieldDef", { _ | Dyn } ]
                  )
                ]
              | doc m%"
                Additional levels of detail for grouping data in aggregate views and
                in line and area marks without mapping data to a specific visual channel.
              "%
              | optional,
            opacity
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.MarkPropFieldDefWithCondition",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.MarkPropValueDefWithCondition",
                      { _ | Dyn }
                    ]
                ]
              | doc m%"
                Opacity of the marks – either can be a value or a range.
                
                __Default value:__ If undefined, the default opacity depends on [mark config](config.html#mark)'s `opacity` property.
              "%
              | optional,
            order
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.OrderFieldDef", { _ | Dyn } ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.OrderFieldDef", { _ | Dyn } ]
                  )
                ]
              | doc m%"
                Stack order for stacked marks or order of data points in line marks for connected scatter plots.
                
                __Note__: In aggregate plots, `order` field should be `aggregate`d to avoid creating additional aggregation grouping.
              "%
              | optional,
            row
              | refs."definitions.FacetFieldDef"
              | { _ | Dyn }
              | doc "Vertical facets for trellis plots."
              | optional,
            shape
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.MarkPropFieldDefWithCondition",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.MarkPropValueDefWithCondition",
                      { _ | Dyn }
                    ]
                ]
              | doc m%"
                The symbol's shape (only for `point` marks). The supported values are
                `"circle"` (default), `"square"`, `"cross"`, `"diamond"`, `"triangle-up"`,
                or `"triangle-down"`, or else a custom SVG path string.
                __Default value:__ If undefined, the default shape depends on [mark config](config.html#point-config)'s `shape` property.
              "%
              | optional,
            size
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.MarkPropFieldDefWithCondition",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.MarkPropValueDefWithCondition",
                      { _ | Dyn }
                    ]
                ]
              | doc m%"
                Size of the mark.
                - For `"point"`, `"square"` and `"circle"`, – the symbol size, or pixel area of the mark.
                - For `"bar"` and `"tick"` – the bar and tick's size.
                - For `"text"` – the text's font size.
                - Size is currently unsupported for `"line"`, `"area"`, and `"rect"`.
              "%
              | optional,
            text
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TextFieldDefWithCondition",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.TextValueDefWithCondition",
                      { _ | Dyn }
                    ]
                ]
              | doc "Text of the `text` mark."
              | optional,
            tooltip
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TextFieldDefWithCondition",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.TextValueDefWithCondition",
                      { _ | Dyn }
                    ]
                ]
              | doc "The tooltip text to show upon mouse hover."
              | optional,
            x
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.PositionFieldDef", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.ValueDef", { _ | Dyn } ]
                ]
              | doc "X coordinates of the marks, or width of horizontal `\"bar\"` and `\"area\"`."
              | optional,
            x2
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FieldDef", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.ValueDef", { _ | Dyn } ]
                ]
              | doc "X2 coordinates for ranged  `\"area\"`, `\"bar\"`, `\"rect\"`, and  `\"rule\"`."
              | optional,
            y
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.PositionFieldDef", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.ValueDef", { _ | Dyn } ]
                ]
              | doc "Y coordinates of the marks, or height of vertical `\"bar\"` and `\"area\"`."
              | optional,
            y2
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FieldDef", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.ValueDef", { _ | Dyn } ]
                ]
              | doc "Y2 coordinates for ranged  `\"area\"`, `\"bar\"`, `\"rect\"`, and  `\"rule\"`."
              | optional,
          },
      "definitions.EqualFilter" =
        {
            equal
              | std.contract.any_of
                [
                  String,
                  Number,
                  Bool,
                  std.contract.Sequence
                    [ refs."definitions.DateTime", { _ | Dyn } ]
                ]
              | doc "The value that the field should be equal to.",
            field | String | doc "Field to be filtered.",
            timeUnit
              | refs."definitions.TimeUnit"
              | doc "Time unit for the field to be filtered."
              | optional,
          },
      "definitions.FacetFieldDef" =
        {
            aggregate
              | refs."definitions.Aggregate"
              | doc m%"
                Aggregation function for the field
                (e.g., `mean`, `sum`, `median`, `min`, `max`, `count`).
                
                __Default value:__ `undefined` (None)
              "%
              | optional,
            bin
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ refs."definitions.BinParams", { _ | Dyn } ]
                ]
              | doc m%"
                A flag for binning a `quantitative` field, or [an object defining binning parameters](bin.html#params).
                If `true`, default [binning parameters](bin.html) will be applied.
                
                __Default value:__ `false`
              "%
              | optional,
            field
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.RepeatRef", { _ | Dyn } ]
                ]
              | doc m%"
                __Required.__ A string defining the name of the field from which to pull a data value
                or an object defining iterated values from the [`repeat`](repeat.html) operator.
                
                __Note:__ `field` is not required if `aggregate` is `count`.
              "%
              | optional,
            header
              | refs."definitions.Header"
              | { _ | Dyn }
              | doc "An object defining properties of a facet's header."
              | optional,
            sort
              | refs."definitions.SortOrder"
              | js2n.Nullable String
              | doc m%"
                Sort order for a facet field.
                This can be `"ascending"`, `"descending"`.
              "%
              | optional,
            timeUnit
              | refs."definitions.TimeUnit"
              | doc m%"
                Time unit (e.g., `year`, `yearmonth`, `month`, `hours`) for a temporal field.
                or [a temporal field that gets casted as ordinal](type.html#cast).
                
                __Default value:__ `undefined` (None)
              "%
              | optional,
            type
              | refs."definitions.Type"
              | String
              | doc "The encoded field's type of measurement (`\"quantitative\"`, `\"temporal\"`, `\"ordinal\"`, or `\"nominal\"`).",
          },
      "definitions.FacetMapping" =
        {
            column
              | refs."definitions.FacetFieldDef"
              | { _ | Dyn }
              | doc "Horizontal facets for trellis plots."
              | optional,
            row
              | refs."definitions.FacetFieldDef"
              | { _ | Dyn }
              | doc "Vertical facets for trellis plots."
              | optional,
          },
      "definitions.FacetSpec" =
        {
            data
              | refs."definitions.Data"
              | doc "An object describing the data source"
              | optional,
            description
              | String
              | doc "Description of this mark for commenting purpose."
              | optional,
            facet
              | refs."definitions.FacetMapping"
              | { _ | Dyn }
              | doc "An object that describes mappings between `row` and `column` channels and their field definitions.",
            name
              | String
              | doc "Name of the visualization for later reference."
              | optional,
            resolve
              | refs."definitions.Resolve"
              | { _ | Dyn }
              | doc "Scale, axis, and legend resolutions for facets."
              | optional,
            spec
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.LayerSpec", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CompositeUnitSpec", { _ | Dyn } ]
                ]
              | doc "A specification of the view that gets faceted.",
            title
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.TitleParams", { _ | Dyn } ]
                ]
              | doc "Title for the plot."
              | optional,
            transform
              | Array refs."definitions.Transform"
              | doc "An array of data transformations such as filter and new field calculation."
              | optional,
          },
      "definitions.FieldDef" =
        {
            aggregate
              | refs."definitions.Aggregate"
              | doc m%"
                Aggregation function for the field
                (e.g., `mean`, `sum`, `median`, `min`, `max`, `count`).
                
                __Default value:__ `undefined` (None)
              "%
              | optional,
            bin
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ refs."definitions.BinParams", { _ | Dyn } ]
                ]
              | doc m%"
                A flag for binning a `quantitative` field, or [an object defining binning parameters](bin.html#params).
                If `true`, default [binning parameters](bin.html) will be applied.
                
                __Default value:__ `false`
              "%
              | optional,
            field
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.RepeatRef", { _ | Dyn } ]
                ]
              | doc m%"
                __Required.__ A string defining the name of the field from which to pull a data value
                or an object defining iterated values from the [`repeat`](repeat.html) operator.
                
                __Note:__ `field` is not required if `aggregate` is `count`.
              "%
              | optional,
            timeUnit
              | refs."definitions.TimeUnit"
              | doc m%"
                Time unit (e.g., `year`, `yearmonth`, `month`, `hours`) for a temporal field.
                or [a temporal field that gets casted as ordinal](type.html#cast).
                
                __Default value:__ `undefined` (None)
              "%
              | optional,
            type
              | refs."definitions.Type"
              | String
              | doc "The encoded field's type of measurement (`\"quantitative\"`, `\"temporal\"`, `\"ordinal\"`, or `\"nominal\"`).",
          },
      "definitions.Filter" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.EqualFilter", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.RangeFilter", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.OneOfFilter", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.SelectionFilter", { _ | Dyn } ],
              String
            ],
      "definitions.FilterOperand" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.NotFilter", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.AndFilter", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.OrFilter", { _ | Dyn } ],
              refs."definitions.Filter"
            ],
      "definitions.FilterTransform" =
        {
            filter
              | refs."definitions.FilterOperand"
              | doc m%"
                The `filter` property must be either (1) a filter object for [equal-filters](filter.html#equalfilter),
                [range-filters](filter.html#rangefilter), [one-of filters](filter.html#oneoffilter), or [selection filters](filter.html#selectionfilter);
                (2) a [Vega Expression](filter.html#expression) string,
                where `datum` can be used to refer to the current data object; or (3) an array of filters (either objects or expression strings) that must all be true for a datum to pass the filter and be included.
              "%,
          },
      "definitions.FontStyle" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'italic, 'normal |] ],
      "definitions.FontWeight" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'bold, 'normal |] ],
      "definitions.FontWeightNumber" =
        std.contract.Sequence
            [ js2n.number.Maximum 900, js2n.number.Minimum 100 ],
      "definitions.HConcatSpec" =
        {
            data
              | refs."definitions.Data"
              | doc "An object describing the data source"
              | optional,
            description
              | String
              | doc "Description of this mark for commenting purpose."
              | optional,
            hconcat
              | Array refs."definitions.Spec"
              | doc "A list of views that should be concatenated and put into a row.",
            name
              | String
              | doc "Name of the visualization for later reference."
              | optional,
            resolve
              | refs."definitions.Resolve"
              | { _ | Dyn }
              | doc "Scale, axis, and legend resolutions for horizontally concatenated charts."
              | optional,
            title
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.TitleParams", { _ | Dyn } ]
                ]
              | doc "Title for the plot."
              | optional,
            transform
              | Array refs."definitions.Transform"
              | doc "An array of data transformations such as filter and new field calculation."
              | optional,
          },
      "definitions.Header" =
        {
            format
              | String
              | doc m%"
                The formatting pattern for labels. This is D3's [number format pattern](https://github.com/d3/d3-format#locale_format) for quantitative fields and D3's [time format pattern](https://github.com/d3/d3-time-format#locale_format) for time field.
                
                __Default value:__  derived from [numberFormat](config.html#format) config for quantitative fields and from [timeFormat](config.html#format) config for temporal fields.
              "%
              | optional,
            title
              | String
              | doc m%"
                A title for the axis. Shows field name and its function by default.
                
                __Default value:__  derived from the field's name and transformation function applied e.g, "field_name", "SUM(field_name)", "BIN(field_name)", "YEAR(field_name)".
              "%
              | optional,
          },
      "definitions.HorizontalAlign" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'center, 'right, 'left |] ],
      "definitions.InlineData" =
        {
            format
              | refs."definitions.DataFormat"
              | doc "An object that specifies the format for parsing the data values."
              | optional,
            values
              | std.contract.any_of
                [
                  js2n.array.ArrayOf Number,
                  js2n.array.ArrayOf String,
                  js2n.array.ArrayOf Bool,
                  js2n.array.ArrayOf ({ _ | Dyn }),
                  String,
                  { _ | Dyn }
                ]
              | doc m%"
                The full data set, included inline. This can be an array of objects or primitive values or a string.
                Arrays of primitive values are ingested as objects with a `data` property. Strings are parsed according to the specified format type.
              "%,
          },
      "definitions.Interpolate" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'monotone,
                'bundle,
                'cardinal-closed,
                'cardinal-open,
                'cardinal,
                'basis-closed,
                'basis-open,
                'basis,
                'step-after,
                'step-before,
                'step,
                'linear-closed,
                'linear
              |]
            ],
      "definitions.InterpolateParams" =
        {
            gamma | Number | optional,
            type
              | std.enum.TagOrString
              | [| 'cubehelix-long, 'cubehelix, 'rgb |],
          },
      "definitions.IntervalSelection" =
        {
            bind
              | std.enum.TagOrString
              | [| 'scales |]
              | doc m%"
                Establishes a two-way binding between the interval selection and the scales
                used within the same view. This allows a user to interactively pan and
                zoom the view.
              "%
              | optional,
            empty
              | std.enum.TagOrString
              | [| 'none, 'all |]
              | doc m%"
                By default, all data values are considered to lie within an empty selection.
                When set to `none`, empty selections contain no data values.
              "%
              | optional,
            encodings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SingleDefChannel", String ]
              )
              | doc m%"
                An array of encoding channels. The corresponding data field values
                must match for a data tuple to fall within the selection.
              "%
              | optional,
            fields
              | Array String
              | doc m%"
                An array of field names whose values must match for a data tuple to
                fall within the selection.
              "%
              | optional,
            mark
              | refs."definitions.BrushConfig"
              | { _ | Dyn }
              | doc m%"
                An interval selection also adds a rectangle mark to depict the
                extents of the interval. The `mark` property can be used to customize the
                appearance of the mark.
              "%
              | optional,
            on
              | refs."definitions.VgEventStream"
              | doc m%"
                A [Vega event stream](https://vega.github.io/vega/docs/event-streams/) (object or selector) that triggers the selection.
                For interval selections, the event stream must specify a [start and end](https://vega.github.io/vega/docs/event-streams/#between-filters).
              "%
              | optional,
            resolve
              | refs."definitions.SelectionResolution"
              | String
              | doc m%"
                With layered and multi-view displays, a strategy that determines how
                selections' data queries are resolved when applied in a filter transform,
                conditional encoding rule, or scale domain.
              "%
              | optional,
            translate
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                When truthy, allows a user to interactively move an interval selection
                back-and-forth. Can be `true`, `false` (to disable panning), or a
                [Vega event stream definition](https://vega.github.io/vega/docs/event-streams/)
                which must include a start and end event to trigger continuous panning.
                
                __Default value:__ `true`, which corresponds to
                `[mousedown, window:mouseup] > window:mousemove!` which corresponds to
                clicks and dragging within an interval selection to reposition it.
              "%
              | optional,
            type | std.enum.TagOrString | [| 'interval |],
            zoom
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                When truthy, allows a user to interactively resize an interval selection.
                Can be `true`, `false` (to disable zooming), or a [Vega event stream
                definition](https://vega.github.io/vega/docs/event-streams/). Currently,
                only `wheel` events are supported.
                
                
                __Default value:__ `true`, which corresponds to `wheel!`.
              "%
              | optional,
          },
      "definitions.IntervalSelectionConfig" =
        {
            bind
              | std.enum.TagOrString
              | [| 'scales |]
              | doc m%"
                Establishes a two-way binding between the interval selection and the scales
                used within the same view. This allows a user to interactively pan and
                zoom the view.
              "%
              | optional,
            empty
              | std.enum.TagOrString
              | [| 'none, 'all |]
              | doc m%"
                By default, all data values are considered to lie within an empty selection.
                When set to `none`, empty selections contain no data values.
              "%
              | optional,
            encodings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SingleDefChannel", String ]
              )
              | doc m%"
                An array of encoding channels. The corresponding data field values
                must match for a data tuple to fall within the selection.
              "%
              | optional,
            fields
              | Array String
              | doc m%"
                An array of field names whose values must match for a data tuple to
                fall within the selection.
              "%
              | optional,
            mark
              | refs."definitions.BrushConfig"
              | { _ | Dyn }
              | doc m%"
                An interval selection also adds a rectangle mark to depict the
                extents of the interval. The `mark` property can be used to customize the
                appearance of the mark.
              "%
              | optional,
            on
              | refs."definitions.VgEventStream"
              | doc m%"
                A [Vega event stream](https://vega.github.io/vega/docs/event-streams/) (object or selector) that triggers the selection.
                For interval selections, the event stream must specify a [start and end](https://vega.github.io/vega/docs/event-streams/#between-filters).
              "%
              | optional,
            resolve
              | refs."definitions.SelectionResolution"
              | String
              | doc m%"
                With layered and multi-view displays, a strategy that determines how
                selections' data queries are resolved when applied in a filter transform,
                conditional encoding rule, or scale domain.
              "%
              | optional,
            translate
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                When truthy, allows a user to interactively move an interval selection
                back-and-forth. Can be `true`, `false` (to disable panning), or a
                [Vega event stream definition](https://vega.github.io/vega/docs/event-streams/)
                which must include a start and end event to trigger continuous panning.
                
                __Default value:__ `true`, which corresponds to
                `[mousedown, window:mouseup] > window:mousemove!` which corresponds to
                clicks and dragging within an interval selection to reposition it.
              "%
              | optional,
            zoom
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                When truthy, allows a user to interactively resize an interval selection.
                Can be `true`, `false` (to disable zooming), or a [Vega event stream
                definition](https://vega.github.io/vega/docs/event-streams/). Currently,
                only `wheel` events are supported.
                
                
                __Default value:__ `true`, which corresponds to `wheel!`.
              "%
              | optional,
          },
      "definitions.JsonDataFormat" =
        {
            parse
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'auto |] ],
                  { _ | Dyn }
                ]
              | doc m%%"
                If set to auto (the default), perform automatic type inference to determine the desired data types.
                Alternatively, a parsing directive object can be provided for explicit data types. Each property of the object corresponds to a field name, and the value to the desired data type (one of `"number"`, `"boolean"` or `"date"`).
                For example, `"parse": {"modified_on": "date"}` parses the `modified_on` field in each input record a Date value.
                
                For `"date"`, we parse data based using Javascript's [`Date.parse()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/parse).
                For Specific date formats can be provided (e.g., `{foo: 'date:"%m%d%Y"'}`), using the [d3-time-format syntax](https://github.com/d3/d3-time-format#locale_format). UTC date format parsing is supported similarly (e.g., `{foo: 'utc:"%m%d%Y"'}`). See more about [UTC time](timeunit.html#utc)
              "%%
              | optional,
            property
              | String
              | doc m%"
                The JSON property containing the desired data.
                This parameter can be used when the loaded JSON file may have surrounding structure or meta-data.
                For example `"property": "values.features"` is equivalent to retrieving `json.values.features`
                from the loaded JSON object.
              "%
              | optional,
            type
              | std.enum.TagOrString
              | [| 'json |]
              | doc m%"
                Type of input data: `"json"`, `"csv"`, `"tsv"`.
                The default format type is determined by the extension of the file URL.
                If no extension is detected, `"json"` will be used by default.
              "%
              | optional,
          },
      "definitions.LayerSpec" =
        {
            data
              | refs."definitions.Data"
              | doc "An object describing the data source"
              | optional,
            description
              | String
              | doc "Description of this mark for commenting purpose."
              | optional,
            height
              | Number
              | doc m%"
                The height of a visualization.
                
                __Default value:__
                - If a view's [`autosize`](size.html#autosize) type is `"fit"` or its y-channel has a [continuous scale](scale.html#continuous), the height will be the value of [`config.view.height`](spec.html#config).
                - For y-axis with a band or point scale: if [`rangeStep`](scale.html#band) is a numeric value or unspecified, the height is [determined by the range step, paddings, and the cardinality of the field mapped to y-channel](scale.html#band). Otherwise, if the `rangeStep` is `null`, the height will be the value of [`config.view.height`](spec.html#config).
                - If no field is mapped to `y` channel, the `height` will be the value of `rangeStep`.
                
                __Note__: For plots with [`row` and `column` channels](encoding.html#facet), this represents the height of a single view.
                
                __See also:__ The documentation for [width and height](size.html) contains more examples.
              "%
              | optional,
            layer
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence [ js2n.Always, { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.CompositeUnitSpec", { _ | Dyn } ]
                  ]
              )
              | doc m%"
                Layer or single view specifications to be layered.
                
                __Note__: Specifications inside `layer` cannot use `row` and `column` channels as layering facet specifications is not allowed.
              "%,
            name
              | String
              | doc "Name of the visualization for later reference."
              | optional,
            resolve
              | refs."definitions.Resolve"
              | { _ | Dyn }
              | doc "Scale, axis, and legend resolutions for layers."
              | optional,
            title
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.TitleParams", { _ | Dyn } ]
                ]
              | doc "Title for the plot."
              | optional,
            transform
              | Array refs."definitions.Transform"
              | doc "An array of data transformations such as filter and new field calculation."
              | optional,
            width
              | Number
              | doc m%"
                The width of a visualization.
                
                __Default value:__ This will be determined by the following rules:
                
                - If a view's [`autosize`](size.html#autosize) type is `"fit"` or its x-channel has a [continuous scale](scale.html#continuous), the width will be the value of [`config.view.width`](spec.html#config).
                - For x-axis with a band or point scale: if [`rangeStep`](scale.html#band) is a numeric value or unspecified, the width is [determined by the range step, paddings, and the cardinality of the field mapped to x-channel](scale.html#band).   Otherwise, if the `rangeStep` is `null`, the width will be the value of [`config.view.width`](spec.html#config).
                - If no field is mapped to `x` channel, the `width` will be the value of [`config.scale.textXRangeStep`](size.html#default-width-and-height) for `text` mark and the value of `rangeStep` for other marks.
                
                __Note:__ For plots with [`row` and `column` channels](encoding.html#facet), this represents the width of a single view.
                
                __See also:__ The documentation for [width and height](size.html) contains more examples.
              "%
              | optional,
          },
      "definitions.Legend" =
        {
            entryPadding
              | Number
              | doc "Padding (in pixels) between legend entries in a symbol legend."
              | optional,
            format
              | String
              | doc m%"
                The formatting pattern for labels. This is D3's [number format pattern](https://github.com/d3/d3-format#locale_format) for quantitative fields and D3's [time format pattern](https://github.com/d3/d3-time-format#locale_format) for time field.
                
                See the [format documentation](format.html) for more information.
                
                __Default value:__  derived from [numberFormat](config.html#format) config for quantitative fields and from [timeFormat](config.html#format) config for temporal fields.
              "%
              | optional,
            offset
              | Number
              | doc m%"
                The offset, in pixels, by which to displace the legend from the edge of the enclosing group or data rectangle.
                
                __Default value:__  `0`
              "%
              | optional,
            orient
              | refs."definitions.LegendOrient"
              | String
              | doc m%"
                The orientation of the legend, which determines how the legend is positioned within the scene. One of "left", "right", "top-left", "top-right", "bottom-left", "bottom-right", "none".
                
                __Default value:__ `"right"`
              "%
              | optional,
            padding
              | Number
              | doc "The padding, in pixels, between the legend and axis."
              | optional,
            tickCount
              | Number
              | doc "The desired number of tick values for quantitative legends."
              | optional,
            title
              | js2n.Nullable String
              | doc m%"
                A title for the field. If `null`, the title will be removed.
                
                __Default value:__  derived from the field's name and transformation function (`aggregate`, `bin` and `timeUnit`).  If the field has an aggregate function, the function is displayed as a part of the title (e.g., `"Sum of Profit"`). If the field is binned or has a time unit applied, the applied function will be denoted in parentheses (e.g., `"Profit (binned)"`, `"Transaction Date (year-month)"`).  Otherwise, the title is simply the field name.
                
                __Note__: You can customize the default field title format by providing the [`fieldTitle` property in the [config](config.html) or [`fieldTitle` function via the `compile` function's options](compile.html#field-title).
              "%
              | optional,
            type
              | std.enum.TagOrString
              | [| 'gradient, 'symbol |]
              | doc m%"
                The type of the legend. Use `"symbol"` to create a discrete legend and `"gradient"` for a continuous color gradient.
                
                __Default value:__ `"gradient"` for non-binned quantitative fields and temporal fields; `"symbol"` otherwise.
              "%
              | optional,
            values
              | std.contract.any_of
                [
                  js2n.array.ArrayOf Number,
                  js2n.array.ArrayOf String,
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [ refs."definitions.DateTime", { _ | Dyn } ])
                ]
              | doc "Explicitly set the visible legend values."
              | optional,
            zindex
              | js2n.number.Minimum 0
              | doc m%"
                A non-positive integer indicating z-index of the legend.
                If zindex is 0, legend should be drawn behind all chart elements.
                To put them in front, use zindex = 1.
              "%
              | optional,
          },
      "definitions.LegendConfig" =
        {
            cornerRadius
              | Number
              | doc "Corner radius for the full legend."
              | optional,
            entryPadding
              | Number
              | doc "Padding (in pixels) between legend entries in a symbol legend."
              | optional,
            fillColor
              | String
              | doc "Background fill color for the full legend."
              | optional,
            gradientHeight
              | js2n.number.Minimum 0
              | doc "The height of the gradient, in pixels."
              | optional,
            gradientLabelBaseline
              | String
              | doc "Text baseline for color ramp gradient labels."
              | optional,
            gradientLabelLimit
              | Number
              | doc "The maximum allowed length in pixels of color ramp gradient labels."
              | optional,
            gradientLabelOffset
              | Number
              | doc "Vertical offset in pixels for color ramp gradient labels."
              | optional,
            gradientStrokeColor
              | String
              | doc "The color of the gradient stroke, can be in hex color code or regular color name."
              | optional,
            gradientStrokeWidth
              | js2n.number.Minimum 0
              | doc "The width of the gradient stroke, in pixels."
              | optional,
            gradientWidth
              | js2n.number.Minimum 0
              | doc "The width of the gradient, in pixels."
              | optional,
            labelAlign
              | String
              | doc "The alignment of the legend label, can be left, middle or right."
              | optional,
            labelBaseline
              | String
              | doc "The position of the baseline of legend label, can be top, middle or bottom."
              | optional,
            labelColor
              | String
              | doc "The color of the legend label, can be in hex color code or regular color name."
              | optional,
            labelFont | String | doc "The font of the legend label." | optional,
            labelFontSize
              | js2n.number.Minimum 0
              | doc m%"
                The font size of legend label.
                
                __Default value:__ `10`.
              "%
              | optional,
            labelLimit
              | Number
              | doc "Maximum allowed pixel width of axis tick labels."
              | optional,
            labelOffset
              | js2n.number.Minimum 0
              | doc "The offset of the legend label."
              | optional,
            offset
              | Number
              | doc m%"
                The offset, in pixels, by which to displace the legend from the edge of the enclosing group or data rectangle.
                
                __Default value:__  `0`
              "%
              | optional,
            orient
              | refs."definitions.LegendOrient"
              | String
              | doc m%"
                The orientation of the legend, which determines how the legend is positioned within the scene. One of "left", "right", "top-left", "top-right", "bottom-left", "bottom-right", "none".
                
                __Default value:__ `"right"`
              "%
              | optional,
            padding
              | Number
              | doc "The padding, in pixels, between the legend and axis."
              | optional,
            shortTimeLabels
              | Bool
              | doc m%"
                Whether month names and weekday names should be abbreviated.
                
                __Default value:__  `false`
              "%
              | optional,
            strokeColor
              | String
              | doc "Border stroke color for the full legend."
              | optional,
            strokeDash
              | Array Number
              | doc "Border stroke dash pattern for the full legend."
              | optional,
            strokeWidth
              | Number
              | doc "Border stroke width for the full legend."
              | optional,
            symbolColor
              | String
              | doc "The color of the legend symbol,"
              | optional,
            symbolSize
              | js2n.number.Minimum 0
              | doc "The size of the legend symbol, in pixels."
              | optional,
            symbolStrokeWidth
              | js2n.number.Minimum 0
              | doc "The width of the symbol's stroke."
              | optional,
            symbolType
              | String
              | doc "Default shape type (such as \"circle\") for legend symbols."
              | optional,
            titleAlign
              | String
              | doc "Horizontal text alignment for legend titles."
              | optional,
            titleBaseline
              | String
              | doc "Vertical text baseline for legend titles."
              | optional,
            titleColor
              | String
              | doc "The color of the legend title, can be in hex color code or regular color name."
              | optional,
            titleFont | String | doc "The font of the legend title." | optional,
            titleFontSize
              | Number
              | doc "The font size of the legend title."
              | optional,
            titleFontWeight
              | std.contract.any_of [ Number, String ]
              | doc "The font weight of the legend title."
              | optional,
            titleLimit
              | Number
              | doc "Maximum allowed pixel width of axis titles."
              | optional,
            titlePadding
              | Number
              | doc "The padding, in pixels, between title and legend."
              | optional,
          },
      "definitions.LegendOrient" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'none,
                'bottom-right,
                'bottom-left,
                'top-right,
                'top-left,
                'right,
                'left
              |]
            ],
      "definitions.LegendResolveMap" =
        {
            color | refs."definitions.ResolveMode" | String | optional,
            opacity | refs."definitions.ResolveMode" | String | optional,
            shape | refs."definitions.ResolveMode" | String | optional,
            size | refs."definitions.ResolveMode" | String | optional,
          },
      "definitions.LocalMultiTimeUnit" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'secondsmilliseconds,
                'minutesseconds,
                'hoursminutesseconds,
                'hoursminutes,
                'monthdate,
                'quartermonth,
                'yearmonthdatehoursminutesseconds,
                'yearmonthdatehoursminutes,
                'yearmonthdatehours,
                'yearmonthdate,
                'yearmonth,
                'yearquartermonth,
                'yearquarter
              |]
            ],
      "definitions.LocalSingleTimeUnit" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'milliseconds,
                'seconds,
                'minutes,
                'hours,
                'date,
                'day,
                'month,
                'quarter,
                'year
              |]
            ],
      "definitions.LookupData" =
        {
            data
              | refs."definitions.Data"
              | doc "Secondary data source to lookup in.",
            fields
              | Array String
              | doc m%"
                Fields in foreign data to lookup.
                If not specified, the entire object is queried.
              "%
              | optional,
            key | String | doc "Key in data to lookup.",
          },
      "definitions.LookupTransform" =
        {
            as
              | std.contract.any_of [ String, Array String ]
              | doc m%"
                The field or fields for storing the computed formula value.
                If `from.fields` is specified, the transform will use the same names for `as`.
                If `from.fields` is not specified, `as` has to be a string and we put the whole object into the data under the specified name.
              "%
              | optional,
            "default"
              | String
              | doc m%"
                The default value to use if lookup fails.
                
                __Default value:__ `null`
              "%
              | optional,
            from
              | refs."definitions.LookupData"
              | { _ | Dyn }
              | doc "Secondary data reference.",
            lookup | String | doc "Key in primary data source.",
          },
      "definitions.Mark" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'square,
                'circle,
                'rule,
                'rect,
                'tick,
                'text,
                'point,
                'line,
                'bar,
                'area
              |]
            ],
      "definitions.MarkConfig" =
        {
            align
              | refs."definitions.HorizontalAlign"
              | String
              | doc "The horizontal alignment of the text. One of `\"left\"`, `\"right\"`, `\"center\"`."
              | optional,
            angle
              | js2n.number.Maximum 360
              | js2n.number.Minimum 0
              | doc "The rotation angle of the text, in degrees."
              | optional,
            baseline
              | refs."definitions.VerticalAlign"
              | String
              | doc m%"
                The vertical alignment of the text. One of `"top"`, `"middle"`, `"bottom"`.
                
                __Default value:__ `"middle"`
              "%
              | optional,
            color
              | String
              | doc m%"
                Default color.  Note that `fill` and `stroke` have higher precedence than `color` and will override `color`.
                
                __Default value:__ <span style="color: #4682b4;">&#9632;</span> `"#4682b4"`
                
                __Note:__ This property cannot be used in a [style config](mark.html#style-config).
              "%
              | optional,
            dx
              | Number
              | doc "The horizontal offset, in pixels, between the text label and its anchor point. The offset is applied after rotation by the _angle_ property."
              | optional,
            dy
              | Number
              | doc "The vertical offset, in pixels, between the text label and its anchor point. The offset is applied after rotation by the _angle_ property."
              | optional,
            fill
              | String
              | doc m%"
                Default Fill Color.  This has higher precedence than config.color
                
                __Default value:__ (None)
              "%
              | optional,
            fillOpacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The fill opacity (value between [0,1]).
                
                __Default value:__ `1`
              "%
              | optional,
            filled
              | Bool
              | doc m%"
                Whether the mark's color should be used as fill color instead of stroke color.
                
                __Default value:__ `true` for all marks except `point` and `false` for `point`.
                
                __Applicable for:__ `bar`, `point`, `circle`, `square`, and `area` marks.
                
                __Note:__ This property cannot be used in a [style config](mark.html#style-config).
              "%
              | optional,
            font
              | String
              | doc "The typeface to set the text in (e.g., `\"Helvetica Neue\"`)."
              | optional,
            fontSize
              | js2n.number.Minimum 0
              | doc "The font size, in pixels."
              | optional,
            fontStyle
              | refs."definitions.FontStyle"
              | String
              | doc "The font style (e.g., `\"italic\"`)."
              | optional,
            fontWeight
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FontWeight", String ],
                  std.contract.Sequence
                    [ refs."definitions.FontWeightNumber", Number ]
                ]
              | doc "The font weight (e.g., `\"bold\"`)."
              | optional,
            interpolate
              | refs."definitions.Interpolate"
              | String
              | doc m%"
                The line interpolation method to use for line and area marks. One of the following:
                - `"linear"`: piecewise linear segments, as in a polyline.
                - `"linear-closed"`: close the linear segments to form a polygon.
                - `"step"`: alternate between horizontal and vertical segments, as in a step function.
                - `"step-before"`: alternate between vertical and horizontal segments, as in a step function.
                - `"step-after"`: alternate between horizontal and vertical segments, as in a step function.
                - `"basis"`: a B-spline, with control point duplication on the ends.
                - `"basis-open"`: an open B-spline; may not intersect the start or end.
                - `"basis-closed"`: a closed B-spline, as in a loop.
                - `"cardinal"`: a Cardinal spline, with control point duplication on the ends.
                - `"cardinal-open"`: an open Cardinal spline; may not intersect the start or end, but will intersect other control points.
                - `"cardinal-closed"`: a closed Cardinal spline, as in a loop.
                - `"bundle"`: equivalent to basis, except the tension parameter is used to straighten the spline.
                - `"monotone"`: cubic interpolation that preserves monotonicity in y.
              "%
              | optional,
            limit
              | Number
              | doc "The maximum length of the text mark in pixels (default 0, indicating no limit). The text value will be automatically truncated if the rendered size exceeds the limit."
              | optional,
            opacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The overall opacity (value between [0,1]).
                
                __Default value:__ `0.7` for non-aggregate plots with `point`, `tick`, `circle`, or `square` marks or layered `bar` charts and `1` otherwise.
              "%
              | optional,
            orient
              | refs."definitions.Orient"
              | String
              | doc m%"
                The orientation of a non-stacked bar, tick, area, and line charts.
                The value is either horizontal (default) or vertical.
                - For bar, rule and tick, this determines whether the size of the bar and tick
                should be applied to x or y dimension.
                - For area, this property determines the orient property of the Vega output.
                - For line, this property determines the sort order of the points in the line
                if `config.sortLineBy` is not specified.
                For stacked charts, this is always determined by the orientation of the stack;
                therefore explicitly specified value will be ignored.
              "%
              | optional,
            radius
              | js2n.number.Minimum 0
              | doc "Polar coordinate radial offset, in pixels, of the text label from the origin determined by the `x` and `y` properties."
              | optional,
            shape
              | String
              | doc m%"
                The default symbol shape to use. One of: `"circle"` (default), `"square"`, `"cross"`, `"diamond"`, `"triangle-up"`, or `"triangle-down"`, or a custom SVG path.
                
                __Default value:__ `"circle"`
              "%
              | optional,
            size
              | js2n.number.Minimum 0
              | doc m%"
                The pixel area each the point/circle/square.
                For example: in the case of circles, the radius is determined in part by the square root of the size value.
                
                __Default value:__ `30`
              "%
              | optional,
            stroke
              | String
              | doc m%"
                Default Stroke Color.  This has higher precedence than config.color
                
                __Default value:__ (None)
              "%
              | optional,
            strokeDash
              | Array Number
              | doc "An array of alternating stroke, space lengths for creating dashed or dotted lines."
              | optional,
            strokeDashOffset
              | Number
              | doc "The offset (in pixels) into which to begin drawing with the stroke dash array."
              | optional,
            strokeOpacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The stroke opacity (value between [0,1]).
                
                __Default value:__ `1`
              "%
              | optional,
            strokeWidth
              | js2n.number.Minimum 0
              | doc "The stroke width, in pixels."
              | optional,
            tension
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc "Depending on the interpolation type, sets the tension parameter (for line and area marks)."
              | optional,
            text
              | String
              | doc "Placeholder text if the `text` channel is not specified"
              | optional,
            theta
              | Number
              | doc "Polar coordinate angle, in radians, of the text label from the origin determined by the `x` and `y` properties. Values for `theta` follow the same convention of `arc` mark `startAngle` and `endAngle` properties: angles are measured in radians, with `0` indicating \"north\"."
              | optional,
          },
      "definitions.MarkDef" =
        {
            align
              | refs."definitions.HorizontalAlign"
              | String
              | doc "The horizontal alignment of the text. One of `\"left\"`, `\"right\"`, `\"center\"`."
              | optional,
            angle
              | js2n.number.Maximum 360
              | js2n.number.Minimum 0
              | doc "The rotation angle of the text, in degrees."
              | optional,
            baseline
              | refs."definitions.VerticalAlign"
              | String
              | doc m%"
                The vertical alignment of the text. One of `"top"`, `"middle"`, `"bottom"`.
                
                __Default value:__ `"middle"`
              "%
              | optional,
            clip
              | Bool
              | doc "Whether a mark be clipped to the enclosing group's width and height."
              | optional,
            color
              | String
              | doc m%"
                Default color.  Note that `fill` and `stroke` have higher precedence than `color` and will override `color`.
                
                __Default value:__ <span style="color: #4682b4;">&#9632;</span> `"#4682b4"`
                
                __Note:__ This property cannot be used in a [style config](mark.html#style-config).
              "%
              | optional,
            dx
              | Number
              | doc "The horizontal offset, in pixels, between the text label and its anchor point. The offset is applied after rotation by the _angle_ property."
              | optional,
            dy
              | Number
              | doc "The vertical offset, in pixels, between the text label and its anchor point. The offset is applied after rotation by the _angle_ property."
              | optional,
            fill
              | String
              | doc m%"
                Default Fill Color.  This has higher precedence than config.color
                
                __Default value:__ (None)
              "%
              | optional,
            fillOpacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The fill opacity (value between [0,1]).
                
                __Default value:__ `1`
              "%
              | optional,
            filled
              | Bool
              | doc m%"
                Whether the mark's color should be used as fill color instead of stroke color.
                
                __Default value:__ `true` for all marks except `point` and `false` for `point`.
                
                __Applicable for:__ `bar`, `point`, `circle`, `square`, and `area` marks.
                
                __Note:__ This property cannot be used in a [style config](mark.html#style-config).
              "%
              | optional,
            font
              | String
              | doc "The typeface to set the text in (e.g., `\"Helvetica Neue\"`)."
              | optional,
            fontSize
              | js2n.number.Minimum 0
              | doc "The font size, in pixels."
              | optional,
            fontStyle
              | refs."definitions.FontStyle"
              | String
              | doc "The font style (e.g., `\"italic\"`)."
              | optional,
            fontWeight
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FontWeight", String ],
                  std.contract.Sequence
                    [ refs."definitions.FontWeightNumber", Number ]
                ]
              | doc "The font weight (e.g., `\"bold\"`)."
              | optional,
            interpolate
              | refs."definitions.Interpolate"
              | String
              | doc m%"
                The line interpolation method to use for line and area marks. One of the following:
                - `"linear"`: piecewise linear segments, as in a polyline.
                - `"linear-closed"`: close the linear segments to form a polygon.
                - `"step"`: alternate between horizontal and vertical segments, as in a step function.
                - `"step-before"`: alternate between vertical and horizontal segments, as in a step function.
                - `"step-after"`: alternate between horizontal and vertical segments, as in a step function.
                - `"basis"`: a B-spline, with control point duplication on the ends.
                - `"basis-open"`: an open B-spline; may not intersect the start or end.
                - `"basis-closed"`: a closed B-spline, as in a loop.
                - `"cardinal"`: a Cardinal spline, with control point duplication on the ends.
                - `"cardinal-open"`: an open Cardinal spline; may not intersect the start or end, but will intersect other control points.
                - `"cardinal-closed"`: a closed Cardinal spline, as in a loop.
                - `"bundle"`: equivalent to basis, except the tension parameter is used to straighten the spline.
                - `"monotone"`: cubic interpolation that preserves monotonicity in y.
              "%
              | optional,
            limit
              | Number
              | doc "The maximum length of the text mark in pixels (default 0, indicating no limit). The text value will be automatically truncated if the rendered size exceeds the limit."
              | optional,
            opacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The overall opacity (value between [0,1]).
                
                __Default value:__ `0.7` for non-aggregate plots with `point`, `tick`, `circle`, or `square` marks or layered `bar` charts and `1` otherwise.
              "%
              | optional,
            orient
              | refs."definitions.Orient"
              | String
              | doc m%"
                The orientation of a non-stacked bar, tick, area, and line charts.
                The value is either horizontal (default) or vertical.
                - For bar, rule and tick, this determines whether the size of the bar and tick
                should be applied to x or y dimension.
                - For area, this property determines the orient property of the Vega output.
                - For line, this property determines the sort order of the points in the line
                if `config.sortLineBy` is not specified.
                For stacked charts, this is always determined by the orientation of the stack;
                therefore explicitly specified value will be ignored.
              "%
              | optional,
            radius
              | js2n.number.Minimum 0
              | doc "Polar coordinate radial offset, in pixels, of the text label from the origin determined by the `x` and `y` properties."
              | optional,
            shape
              | String
              | doc m%"
                The default symbol shape to use. One of: `"circle"` (default), `"square"`, `"cross"`, `"diamond"`, `"triangle-up"`, or `"triangle-down"`, or a custom SVG path.
                
                __Default value:__ `"circle"`
              "%
              | optional,
            size
              | js2n.number.Minimum 0
              | doc m%"
                The pixel area each the point/circle/square.
                For example: in the case of circles, the radius is determined in part by the square root of the size value.
                
                __Default value:__ `30`
              "%
              | optional,
            stroke
              | String
              | doc m%"
                Default Stroke Color.  This has higher precedence than config.color
                
                __Default value:__ (None)
              "%
              | optional,
            strokeDash
              | Array Number
              | doc "An array of alternating stroke, space lengths for creating dashed or dotted lines."
              | optional,
            strokeDashOffset
              | Number
              | doc "The offset (in pixels) into which to begin drawing with the stroke dash array."
              | optional,
            strokeOpacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The stroke opacity (value between [0,1]).
                
                __Default value:__ `1`
              "%
              | optional,
            strokeWidth
              | js2n.number.Minimum 0
              | doc "The stroke width, in pixels."
              | optional,
            style
              | std.contract.any_of [ String, Array String ]
              | doc m%"
                A string or array of strings indicating the name of custom styles to apply to the mark. A style is a named collection of mark property defaults defined within the [style configuration](mark.html#style-config). If style is an array, later styles will override earlier styles. Any [mark properties](encoding.html#mark-prop) explicitly defined within the `encoding` will override a style default.
                
                __Default value:__ The mark's name.  For example, a bar mark will have style `"bar"` by default.
                __Note:__ Any specified style will augment the default style. For example, a bar mark with `"style": "foo"` will receive from `config.style.bar` and `config.style.foo` (the specified style `"foo"` has higher precedence).
              "%
              | optional,
            tension
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc "Depending on the interpolation type, sets the tension parameter (for line and area marks)."
              | optional,
            text
              | String
              | doc "Placeholder text if the `text` channel is not specified"
              | optional,
            theta
              | Number
              | doc "Polar coordinate angle, in radians, of the text label from the origin determined by the `x` and `y` properties. Values for `theta` follow the same convention of `arc` mark `startAngle` and `endAngle` properties: angles are measured in radians, with `0` indicating \"north\"."
              | optional,
            type
              | refs."definitions.Mark"
              | String
              | doc m%"
                The mark type.
                One of `"bar"`, `"circle"`, `"square"`, `"tick"`, `"line"`,
                `"area"`, `"point"`, `"rule"`, and `"text"`.
              "%,
          },
      "definitions.MarkPropFieldDefWithCondition" =
        {
            aggregate
              | refs."definitions.Aggregate"
              | doc m%"
                Aggregation function for the field
                (e.g., `mean`, `sum`, `median`, `min`, `max`, `count`).
                
                __Default value:__ `undefined` (None)
              "%
              | optional,
            bin
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ refs."definitions.BinParams", { _ | Dyn } ]
                ]
              | doc m%"
                A flag for binning a `quantitative` field, or [an object defining binning parameters](bin.html#params).
                If `true`, default [binning parameters](bin.html) will be applied.
                
                __Default value:__ `false`
              "%
              | optional,
            condition
              | std.contract.any_of
                [ js2n.Always, js2n.array.ArrayOf js2n.Always ]
              | doc m%"
                One or more value definition(s) with a selection predicate.
                
                __Note:__ A field definition's `condition` property can only contain [value definitions](encoding.html#value)
                since Vega-Lite only allows at mostly one encoded field per encoding channel.
              "%
              | optional,
            field
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.RepeatRef", { _ | Dyn } ]
                ]
              | doc m%"
                __Required.__ A string defining the name of the field from which to pull a data value
                or an object defining iterated values from the [`repeat`](repeat.html) operator.
                
                __Note:__ `field` is not required if `aggregate` is `count`.
              "%
              | optional,
            legend
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Legend", { _ | Dyn } ])
              | doc m%"
                An object defining properties of the legend.
                If `null`, the legend for the encoding channel will be removed.
                
                __Default value:__ If undefined, default [legend properties](legend.html) are applied.
              "%
              | optional,
            scale
              | refs."definitions.Scale"
              | { _ | Dyn }
              | doc m%"
                An object defining properties of the channel's scale, which is the function that transforms values in the data domain (numbers, dates, strings, etc) to visual values (pixels, colors, sizes) of the encoding channels.
                
                __Default value:__ If undefined, default [scale properties](scale.html) are applied.
              "%
              | optional,
            sort
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.SortOrder", js2n.Nullable String ],
                  std.contract.Sequence
                    [ refs."definitions.SortField", { _ | Dyn } ],
                  js2n.Null
                ]
              | doc m%"
                Sort order for the encoded field.
                Supported `sort` values include `"ascending"`, `"descending"` and `null` (no sorting).
                For fields with discrete domains, `sort` can also be a [sort field definition object](sort.html#sort-field).
                
                __Default value:__ `"ascending"`
              "%
              | optional,
            timeUnit
              | refs."definitions.TimeUnit"
              | doc m%"
                Time unit (e.g., `year`, `yearmonth`, `month`, `hours`) for a temporal field.
                or [a temporal field that gets casted as ordinal](type.html#cast).
                
                __Default value:__ `undefined` (None)
              "%
              | optional,
            type
              | refs."definitions.Type"
              | String
              | doc "The encoded field's type of measurement (`\"quantitative\"`, `\"temporal\"`, `\"ordinal\"`, or `\"nominal\"`).",
          },
      "definitions.MarkPropValueDefWithCondition" =
        {
            condition
              | std.contract.any_of
                [ js2n.Always, js2n.Always, js2n.array.ArrayOf js2n.Always ]
              | doc "A field definition or one or more value definition(s) with a selection predicate."
              | optional,
            value
              | std.contract.any_of [ Bool, Number, String ]
              | doc "A constant value in visual domain."
              | optional,
          },
      "definitions.Month" =
        std.contract.Sequence [ js2n.number.Maximum 12, js2n.number.Minimum 1 ],
      "definitions.MultiSelection" =
        {
            empty
              | std.enum.TagOrString
              | [| 'none, 'all |]
              | doc m%"
                By default, all data values are considered to lie within an empty selection.
                When set to `none`, empty selections contain no data values.
              "%
              | optional,
            encodings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SingleDefChannel", String ]
              )
              | doc m%"
                An array of encoding channels. The corresponding data field values
                must match for a data tuple to fall within the selection.
              "%
              | optional,
            fields
              | Array String
              | doc m%"
                An array of field names whose values must match for a data tuple to
                fall within the selection.
              "%
              | optional,
            nearest
              | Bool
              | doc m%"
                When true, an invisible voronoi diagram is computed to accelerate discrete
                selection. The data value _nearest_ the mouse cursor is added to the selection.
                
                See the [nearest transform](nearest.html) documentation for more information.
              "%
              | optional,
            on
              | refs."definitions.VgEventStream"
              | doc m%"
                A [Vega event stream](https://vega.github.io/vega/docs/event-streams/) (object or selector) that triggers the selection.
                For interval selections, the event stream must specify a [start and end](https://vega.github.io/vega/docs/event-streams/#between-filters).
              "%
              | optional,
            resolve
              | refs."definitions.SelectionResolution"
              | String
              | doc m%"
                With layered and multi-view displays, a strategy that determines how
                selections' data queries are resolved when applied in a filter transform,
                conditional encoding rule, or scale domain.
              "%
              | optional,
            toggle
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Controls whether data values should be toggled or only ever inserted into
                multi selections. Can be `true`, `false` (for insertion only), or a
                [Vega expression](https://vega.github.io/vega/docs/expressions/).
                
                __Default value:__ `true`, which corresponds to `event.shiftKey` (i.e.,
                data values are toggled when a user interacts with the shift-key pressed).
                
                See the [toggle transform](toggle.html) documentation for more information.
              "%
              | optional,
            type | std.enum.TagOrString | [| 'multi |],
          },
      "definitions.MultiSelectionConfig" =
        {
            empty
              | std.enum.TagOrString
              | [| 'none, 'all |]
              | doc m%"
                By default, all data values are considered to lie within an empty selection.
                When set to `none`, empty selections contain no data values.
              "%
              | optional,
            encodings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SingleDefChannel", String ]
              )
              | doc m%"
                An array of encoding channels. The corresponding data field values
                must match for a data tuple to fall within the selection.
              "%
              | optional,
            fields
              | Array String
              | doc m%"
                An array of field names whose values must match for a data tuple to
                fall within the selection.
              "%
              | optional,
            nearest
              | Bool
              | doc m%"
                When true, an invisible voronoi diagram is computed to accelerate discrete
                selection. The data value _nearest_ the mouse cursor is added to the selection.
                
                See the [nearest transform](nearest.html) documentation for more information.
              "%
              | optional,
            on
              | refs."definitions.VgEventStream"
              | doc m%"
                A [Vega event stream](https://vega.github.io/vega/docs/event-streams/) (object or selector) that triggers the selection.
                For interval selections, the event stream must specify a [start and end](https://vega.github.io/vega/docs/event-streams/#between-filters).
              "%
              | optional,
            resolve
              | refs."definitions.SelectionResolution"
              | String
              | doc m%"
                With layered and multi-view displays, a strategy that determines how
                selections' data queries are resolved when applied in a filter transform,
                conditional encoding rule, or scale domain.
              "%
              | optional,
            toggle
              | std.contract.any_of [ Bool, String ]
              | doc m%"
                Controls whether data values should be toggled or only ever inserted into
                multi selections. Can be `true`, `false` (for insertion only), or a
                [Vega expression](https://vega.github.io/vega/docs/expressions/).
                
                __Default value:__ `true`, which corresponds to `event.shiftKey` (i.e.,
                data values are toggled when a user interacts with the shift-key pressed).
                
                See the [toggle transform](toggle.html) documentation for more information.
              "%
              | optional,
          },
      "definitions.MultiTimeUnit" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.LocalMultiTimeUnit", String ],
              std.contract.Sequence
                [ refs."definitions.UtcMultiTimeUnit", String ]
            ],
      "definitions.NamedData" =
        {
            format
              | refs."definitions.DataFormat"
              | doc "An object that specifies the format for parsing the data."
              | optional,
            name
              | String
              | doc "Provide a placeholder name and bind data at runtime.",
          },
      "definitions.NiceTime" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'year, 'month, 'week, 'day, 'hour, 'minute, 'second |]
            ],
      "definitions.NotFilter" = { not | refs."definitions.FilterOperand", },
      "definitions.OneOfFilter" =
        {
            field | String | doc "Field to be filtered",
            oneOf
              | std.contract.any_of
                [
                  js2n.array.ArrayOf String,
                  js2n.array.ArrayOf Number,
                  js2n.array.ArrayOf Bool,
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [ refs."definitions.DateTime", { _ | Dyn } ])
                ]
              | doc m%"
                A set of values that the `field`'s value should be a member of,
                for a data item included in the filtered data.
              "%,
            timeUnit
              | refs."definitions.TimeUnit"
              | doc "time unit for the field to be filtered."
              | optional,
          },
      "definitions.OrFilter" = { or | Array refs."definitions.FilterOperand", },
      "definitions.OrderFieldDef" =
        {
            aggregate
              | refs."definitions.Aggregate"
              | doc m%"
                Aggregation function for the field
                (e.g., `mean`, `sum`, `median`, `min`, `max`, `count`).
                
                __Default value:__ `undefined` (None)
              "%
              | optional,
            bin
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ refs."definitions.BinParams", { _ | Dyn } ]
                ]
              | doc m%"
                A flag for binning a `quantitative` field, or [an object defining binning parameters](bin.html#params).
                If `true`, default [binning parameters](bin.html) will be applied.
                
                __Default value:__ `false`
              "%
              | optional,
            field
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.RepeatRef", { _ | Dyn } ]
                ]
              | doc m%"
                __Required.__ A string defining the name of the field from which to pull a data value
                or an object defining iterated values from the [`repeat`](repeat.html) operator.
                
                __Note:__ `field` is not required if `aggregate` is `count`.
              "%
              | optional,
            sort
              | refs."definitions.SortOrder"
              | js2n.Nullable String
              | doc "The sort order. One of `\"ascending\"` (default) or `\"descending\"`."
              | optional,
            timeUnit
              | refs."definitions.TimeUnit"
              | doc m%"
                Time unit (e.g., `year`, `yearmonth`, `month`, `hours`) for a temporal field.
                or [a temporal field that gets casted as ordinal](type.html#cast).
                
                __Default value:__ `undefined` (None)
              "%
              | optional,
            type
              | refs."definitions.Type"
              | String
              | doc "The encoded field's type of measurement (`\"quantitative\"`, `\"temporal\"`, `\"ordinal\"`, or `\"nominal\"`).",
          },
      "definitions.Orient" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'vertical, 'horizontal |] ],
      "definitions.Padding" =
        std.contract.Sequence
            [
              std.contract.any_of [ js2n.number.Minimum 0, { _ | Dyn } ],
              std.contract.any_of
                [
                  Number,
                  {
                    bottom | Number | optional,
                    left | Number | optional,
                    right | Number | optional,
                    top | Number | optional,
                  }
                ]
            ],
      "definitions.PositionFieldDef" =
        {
            aggregate
              | refs."definitions.Aggregate"
              | doc m%"
                Aggregation function for the field
                (e.g., `mean`, `sum`, `median`, `min`, `max`, `count`).
                
                __Default value:__ `undefined` (None)
              "%
              | optional,
            axis
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.Axis", { _ | Dyn } ])
              | doc m%"
                An object defining properties of axis's gridlines, ticks and labels.
                If `null`, the axis for the encoding channel will be removed.
                
                __Default value:__ If undefined, default [axis properties](axis.html) are applied.
              "%
              | optional,
            bin
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ refs."definitions.BinParams", { _ | Dyn } ]
                ]
              | doc m%"
                A flag for binning a `quantitative` field, or [an object defining binning parameters](bin.html#params).
                If `true`, default [binning parameters](bin.html) will be applied.
                
                __Default value:__ `false`
              "%
              | optional,
            field
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.RepeatRef", { _ | Dyn } ]
                ]
              | doc m%"
                __Required.__ A string defining the name of the field from which to pull a data value
                or an object defining iterated values from the [`repeat`](repeat.html) operator.
                
                __Note:__ `field` is not required if `aggregate` is `count`.
              "%
              | optional,
            scale
              | refs."definitions.Scale"
              | { _ | Dyn }
              | doc m%"
                An object defining properties of the channel's scale, which is the function that transforms values in the data domain (numbers, dates, strings, etc) to visual values (pixels, colors, sizes) of the encoding channels.
                
                __Default value:__ If undefined, default [scale properties](scale.html) are applied.
              "%
              | optional,
            sort
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.SortOrder", js2n.Nullable String ],
                  std.contract.Sequence
                    [ refs."definitions.SortField", { _ | Dyn } ],
                  js2n.Null
                ]
              | doc m%"
                Sort order for the encoded field.
                Supported `sort` values include `"ascending"`, `"descending"` and `null` (no sorting).
                For fields with discrete domains, `sort` can also be a [sort field definition object](sort.html#sort-field).
                
                __Default value:__ `"ascending"`
              "%
              | optional,
            stack
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.StackOffset", String ])
              | doc m%"
                Type of stacking offset if the field should be stacked.
                `stack` is only applicable for `x` and `y` channels with continuous domains.
                For example, `stack` of `y` can be used to customize stacking for a vertical bar chart.
                
                `stack` can be one of the following values:
                - `"zero"`: stacking with baseline offset at zero value of the scale (for creating typical stacked [bar](stack.html#bar) and [area](stack.html#area) chart).
                - `"normalize"` - stacking with normalized domain (for creating [normalized stacked bar and area charts](stack.html#normalized). <br/>
                -`"center"` - stacking with center baseline (for [streamgraph](stack.html#streamgraph)).
                - `null` - No-stacking. This will produce layered [bar](stack.html#layered-bar-chart) and area chart.
                
                __Default value:__ `zero` for plots with all of the following conditions are true:
                (1) the mark is `bar` or `area`;
                (2) the stacked measure channel (x or y) has a linear scale;
                (3) At least one of non-position channels mapped to an unaggregated field that is different from x and y.  Otherwise, `null` by default.
              "%
              | optional,
            timeUnit
              | refs."definitions.TimeUnit"
              | doc m%"
                Time unit (e.g., `year`, `yearmonth`, `month`, `hours`) for a temporal field.
                or [a temporal field that gets casted as ordinal](type.html#cast).
                
                __Default value:__ `undefined` (None)
              "%
              | optional,
            type
              | refs."definitions.Type"
              | String
              | doc "The encoded field's type of measurement (`\"quantitative\"`, `\"temporal\"`, `\"ordinal\"`, or `\"nominal\"`).",
          },
      "definitions.RangeConfig" =
        js2n.record.Record
            {
              additional = 'Some refs."definitions.RangeConfigValue",
              patterns = {},
              properties =
                {
                    category =
                      std.contract.any_of
                          [
                            Array String,
                            std.contract.Sequence
                              [ refs."definitions.VgScheme", { _ | Dyn } ]
                          ],
                    diverging =
                      std.contract.any_of
                          [
                            Array String,
                            std.contract.Sequence
                              [ refs."definitions.VgScheme", { _ | Dyn } ]
                          ],
                    heatmap =
                      std.contract.any_of
                          [
                            Array String,
                            std.contract.Sequence
                              [ refs."definitions.VgScheme", { _ | Dyn } ]
                          ],
                    ordinal =
                      std.contract.any_of
                          [
                            Array String,
                            std.contract.Sequence
                              [ refs."definitions.VgScheme", { _ | Dyn } ]
                          ],
                    ramp =
                      std.contract.any_of
                          [
                            Array String,
                            std.contract.Sequence
                              [ refs."definitions.VgScheme", { _ | Dyn } ]
                          ],
                    symbol = Array String,
                  },
              required = {},
            },
      "definitions.RangeConfigValue" =
        std.contract.any_of
            [
              js2n.array.ArrayOf (std.contract.any_of [ Number, String ]),
              std.contract.Sequence
                [ refs."definitions.VgScheme", { _ | Dyn } ],
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { step = Number, },
                  required = { step = true, },
                }
            ],
      "definitions.RangeFilter" =
        {
            field | String | doc "Field to be filtered",
            range
              | js2n.array.MaxItems 2
              | js2n.array.MinItems 2
              | Array (
                std.contract.any_of
                  [
                    Number,
                    std.contract.Sequence
                      [ refs."definitions.DateTime", { _ | Dyn } ]
                  ]
              )
              | doc m%"
                An array of inclusive minimum and maximum values
                for a field value of a data item to be included in the filtered data.
              "%,
            timeUnit
              | refs."definitions.TimeUnit"
              | doc "time unit for the field to be filtered."
              | optional,
          },
      "definitions.Repeat" =
        {
            column | Array String | doc "Horizontal repeated views." | optional,
            row | Array String | doc "Vertical repeated views." | optional,
          },
      "definitions.RepeatRef" =
        { repeat | std.enum.TagOrString | [| 'column, 'row |], },
      "definitions.RepeatSpec" =
        {
            data
              | refs."definitions.Data"
              | doc "An object describing the data source"
              | optional,
            description
              | String
              | doc "Description of this mark for commenting purpose."
              | optional,
            name
              | String
              | doc "Name of the visualization for later reference."
              | optional,
            repeat
              | refs."definitions.Repeat"
              | { _ | Dyn }
              | doc "An object that describes what fields should be repeated into views that are laid out as a `row` or `column`.",
            resolve
              | refs."definitions.Resolve"
              | { _ | Dyn }
              | doc "Scale and legend resolutions for repeated charts."
              | optional,
            spec | refs."definitions.Spec",
            title
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.TitleParams", { _ | Dyn } ]
                ]
              | doc "Title for the plot."
              | optional,
            transform
              | Array refs."definitions.Transform"
              | doc "An array of data transformations such as filter and new field calculation."
              | optional,
          },
      "definitions.Resolve" =
        {
            axis | refs."definitions.AxisResolveMap" | { _ | Dyn } | optional,
            legend
              | refs."definitions.LegendResolveMap"
              | { _ | Dyn }
              | optional,
            scale | refs."definitions.ScaleResolveMap" | { _ | Dyn } | optional,
          },
      "definitions.ResolveMode" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'shared, 'independent |] ],
      "definitions.Scale" =
        {
            base
              | Number
              | doc "The logarithm base of the `log` scale (default `10`)."
              | optional,
            clamp
              | Bool
              | doc m%"
                If `true`, values that exceed the data domain are clamped to either the minimum or maximum range value
                
                __Default value:__ derived from the [scale config](config.html#scale-config)'s `clamp` (`true` by default).
              "%
              | optional,
            domain
              | std.contract.any_of
                [
                  js2n.array.ArrayOf Number,
                  js2n.array.ArrayOf String,
                  js2n.array.ArrayOf Bool,
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [ refs."definitions.DateTime", { _ | Dyn } ]),
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'unaggregated |] ],
                  std.contract.Sequence
                    [ refs."definitions.SelectionDomain", { _ | Dyn } ]
                ]
              | doc m%"
                Customized domain values.
                
                For _quantitative_ fields, `domain` can take the form of a two-element array with minimum and maximum values.  [Piecewise scales](scale.html#piecewise) can be created by providing a `domain` with more than two entries.
                If the input field is aggregated, `domain` can also be a string value `"unaggregated"`, indicating that the domain should include the raw data values prior to the aggregation.
                
                For _temporal_ fields, `domain` can be a two-element array minimum and maximum values, in the form of either timestamps or the [DateTime definition objects](types.html#datetime).
                
                For _ordinal_ and _nominal_ fields, `domain` can be an array that lists valid input values.
                
                The `selection` property can be used to [interactively determine](selection.html#scale-domains) the scale domain.
              "%
              | optional,
            exponent
              | Number
              | doc "The exponent of the `pow` scale."
              | optional,
            interpolate
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Interpolate", String ],
                  std.contract.Sequence
                    [ refs."definitions.InterpolateParams", { _ | Dyn } ]
                ]
              | doc "The interpolation method for range values. By default, a general interpolator for numbers, dates, strings and colors (in RGB space) is used. For color ranges, this property allows interpolation in alternative color spaces. Legal values include `rgb`, `hsl`, `hsl-long`, `lab`, `hcl`, `hcl-long`, `cubehelix` and `cubehelix-long` ('-long' variants use longer paths in polar coordinate spaces). If object-valued, this property accepts an object with a string-valued _type_ property and an optional numeric _gamma_ property applicable to rgb and cubehelix interpolators. For more, see the [d3-interpolate documentation](https://github.com/d3/d3-interpolate)."
              | optional,
            nice
              | std.contract.any_of
                [
                  Bool,
                  Number,
                  std.contract.Sequence [ refs."definitions.NiceTime", String ],
                  { interval | String, step | Number, }
                ]
              | doc m%"
                Extending the domain so that it starts and ends on nice round values. This method typically modifies the scale's domain, and may only extend the bounds to the nearest round value. Nicing is useful if the domain is computed from data and may be irregular. For example, for a domain of _[0.201479…, 0.996679…]_, a nice domain might be _[0.2, 1.0]_.
                
                For quantitative scales such as linear, `nice` can be either a boolean flag or a number. If `nice` is a number, it will represent a desired tick count. This allows greater control over the step size used to extend the bounds, guaranteeing that the returned ticks will exactly cover the domain.
                
                For temporal fields with time and utc scales, the `nice` value can be a string indicating the desired time interval. Legal values are `"millisecond"`, `"second"`, `"minute"`, `"hour"`, `"day"`, `"week"`, `"month"`, and `"year"`. Alternatively, `time` and `utc` scales can accept an object-valued interval specifier of the form `{"interval": "month", "step": 3}`, which includes a desired number of interval steps. Here, the domain would snap to quarter (Jan, Apr, Jul, Oct) boundaries.
                
                __Default value:__ `true` for unbinned _quantitative_ fields; `false` otherwise.
              "%
              | optional,
            padding
              | js2n.number.Minimum 0
              | doc m%"
                For _[continuous](scale.html#continuous)_ scales, expands the scale domain to accommodate the specified number of pixels on each of the scale range. The scale range must represent pixels for this parameter to function as intended. Padding adjustment is performed prior to all other adjustments, including the effects of the zero, nice, domainMin, and domainMax properties.
                
                For _[band](scale.html#band)_ scales, shortcut for setting `paddingInner` and `paddingOuter` to the same value.
                
                For _[point](scale.html#point)_ scales, alias for `paddingOuter`.
                
                __Default value:__ For _continuous_ scales, derived from the [scale config](scale.html#config)'s `continuousPadding`.
                For _band and point_ scales, see `paddingInner` and `paddingOuter`.
              "%
              | optional,
            paddingInner
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The inner padding (spacing) within each band step of band scales, as a fraction of the step size. This value must lie in the range [0,1].
                
                For point scale, this property is invalid as point scales do not have internal band widths (only step sizes between bands).
                
                __Default value:__ derived from the [scale config](scale.html#config)'s `bandPaddingInner`.
              "%
              | optional,
            paddingOuter
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The outer padding (spacing) at the ends of the range of band and point scales,
                as a fraction of the step size. This value must lie in the range [0,1].
                
                __Default value:__ derived from the [scale config](scale.html#config)'s `bandPaddingOuter` for band scales and `pointPadding` for point scales.
              "%
              | optional,
            range
              | std.contract.any_of
                [ js2n.array.ArrayOf Number, js2n.array.ArrayOf String, String ]
              | doc m%"
                The range of the scale. One of:
                
                - A string indicating a [pre-defined named scale range](scale.html#range-config) (e.g., example, `"symbol"`, or `"diverging"`).
                
                - For [continuous scales](scale.html#continuous), two-element array indicating  minimum and maximum values, or an array with more than two entries for specifying a [piecewise scale](scale.html#piecewise).
                
                - For [discrete](scale.html#discrete) and [discretizing](scale.html#discretizing) scales, an array of desired output values.
                
                __Notes:__
                
                1) For [sequential](scale.html#sequential), [ordinal](scale.html#ordinal), and discretizing color scales, you can also specify a color [`scheme`](scale.html#scheme) instead of `range`.
                
                2) Any directly specified `range` for `x` and `y` channels will be ignored. Range can be customized via the view's corresponding [size](size.html) (`width` and `height`) or via [range steps and paddings properties](#range-step) for [band](#band) and [point](#point) scales.
              "%
              | optional,
            rangeStep
              | js2n.Nullable (js2n.number.Minimum 0)
              | doc m%"
                The distance between the starts of adjacent bands or points in [band](scale.html#band) and [point](scale.html#point) scales.
                
                If `rangeStep` is `null` or if the view contains the scale's corresponding [size](size.html) (`width` for `x` scales and `height` for `y` scales), `rangeStep` will be automatically determined to fit the size of the view.
                
                __Default value:__  derived the [scale config](config.html#scale-config)'s `textXRangeStep` (`90` by default) for x-scales of `text` marks and `rangeStep` (`21` by default) for x-scales of other marks and y-scales.
                
                __Warning__: If `rangeStep` is `null` and the cardinality of the scale's domain is higher than `width` or `height`, the rangeStep might become less than one pixel and the mark might not appear correctly.
              "%
              | optional,
            round
              | Bool
              | doc m%"
                If `true`, rounds numeric output values to integers. This can be helpful for snapping to the pixel grid.
                
                __Default value:__ `false`.
              "%
              | optional,
            scheme
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.SchemeParams", { _ | Dyn } ]
                ]
              | doc m%"
                A string indicating a color [scheme](scale.html#scheme) name (e.g., `"category10"` or `"viridis"`) or a [scheme parameter object](scale.html#scheme-params).
                
                Discrete color schemes may be used with [discrete](scale.html#discrete) or [discretizing](scale.html#discretizing) scales. Continuous color schemes are intended for use with [sequential](scales.html#sequential) scales.
                
                For the full list of supported scheme, please refer to the [Vega Scheme](https://vega.github.io/vega/docs/schemes/#reference) reference.
              "%
              | optional,
            type
              | refs."definitions.ScaleType"
              | String
              | doc m%"
                The type of scale.  Vega-Lite supports the following categories of scale types:
                
                1) [**Continuous Scales**](scale.html#continuous) -- mapping continuous domains to continuous output ranges ([`"linear"`](scale.html#linear), [`"pow"`](scale.html#pow), [`"sqrt"`](scale.html#sqrt), [`"log"`](scale.html#log), [`"time"`](scale.html#time), [`"utc"`](scale.html#utc), [`"sequential"`](scale.html#sequential)).
                
                2) [**Discrete Scales**](scale.html#discrete) -- mapping discrete domains to discrete ([`"ordinal"`](scale.html#ordinal)) or continuous ([`"band"`](scale.html#band) and [`"point"`](scale.html#point)) output ranges.
                
                3) [**Discretizing Scales**](scale.html#discretizing) -- mapping continuous domains to discrete output ranges ([`"bin-linear"`](scale.html#bin-linear) and [`"bin-ordinal"`](scale.html#bin-ordinal)).
                
                __Default value:__ please see the [scale type table](scale.html#type).
              "%
              | optional,
            zero
              | Bool
              | doc m%"
                If `true`, ensures that a zero baseline value is included in the scale domain.
                
                __Default value:__ `true` for x and y channels if the quantitative field is not binned and no custom `domain` is provided; `false` otherwise.
                
                __Note:__ Log, time, and utc scales do not support `zero`.
              "%
              | optional,
          },
      "definitions.ScaleConfig" =
        {
            bandPaddingInner
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                Default inner padding for `x` and `y` band-ordinal scales.
                
                __Default value:__ `0.1`
              "%
              | optional,
            bandPaddingOuter
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                Default outer padding for `x` and `y` band-ordinal scales.
                If not specified, by default, band scale's paddingOuter is paddingInner/2.
              "%
              | optional,
            clamp
              | Bool
              | doc "If true, values that exceed the data domain are clamped to either the minimum or maximum range value"
              | optional,
            continuousPadding
              | js2n.number.Minimum 0
              | doc m%"
                Default padding for continuous scales.
                
                __Default:__ `5` for continuous x-scale of a vertical bar and continuous y-scale of a horizontal bar.; `0` otherwise.
              "%
              | optional,
            maxBandSize
              | js2n.number.Minimum 0
              | doc m%"
                The default max value for mapping quantitative fields to bar's size/bandSize.
                
                If undefined (default), we will use the scale's `rangeStep` - 1.
              "%
              | optional,
            maxFontSize
              | js2n.number.Minimum 0
              | doc m%"
                The default max value for mapping quantitative fields to text's size/fontSize.
                
                __Default value:__ `40`
              "%
              | optional,
            maxOpacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                Default max opacity for mapping a field to opacity.
                
                __Default value:__ `0.8`
              "%
              | optional,
            maxSize
              | js2n.number.Minimum 0
              | doc "Default max value for point size scale."
              | optional,
            maxStrokeWidth
              | js2n.number.Minimum 0
              | doc m%"
                Default max strokeWidth for strokeWidth  (or rule/line's size) scale.
                
                __Default value:__ `4`
              "%
              | optional,
            minBandSize
              | js2n.number.Minimum 0
              | doc m%"
                The default min value for mapping quantitative fields to bar and tick's size/bandSize scale with zero=false.
                
                __Default value:__ `2`
              "%
              | optional,
            minFontSize
              | js2n.number.Minimum 0
              | doc m%"
                The default min value for mapping quantitative fields to tick's size/fontSize scale with zero=false
                
                __Default value:__ `8`
              "%
              | optional,
            minOpacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                Default minimum opacity for mapping a field to opacity.
                
                __Default value:__ `0.3`
              "%
              | optional,
            minSize
              | js2n.number.Minimum 0
              | doc m%"
                Default minimum value for point size scale with zero=false.
                
                __Default value:__ `9`
              "%
              | optional,
            minStrokeWidth
              | js2n.number.Minimum 0
              | doc m%"
                Default minimum strokeWidth for strokeWidth (or rule/line's size) scale with zero=false.
                
                __Default value:__ `1`
              "%
              | optional,
            pointPadding
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                Default outer padding for `x` and `y` point-ordinal scales.
                
                __Default value:__ `0.5`
              "%
              | optional,
            rangeStep
              | js2n.Nullable (js2n.number.Minimum 0)
              | doc m%"
                Default range step for band and point scales of (1) the `y` channel
                and (2) the `x` channel when the mark is not `text`.
                
                __Default value:__ `21`
              "%
              | optional,
            round
              | Bool
              | doc m%"
                If true, rounds numeric output values to integers.
                This can be helpful for snapping to the pixel grid.
                (Only available for `x`, `y`, and `size` scales.)
              "%
              | optional,
            textXRangeStep
              | js2n.number.Minimum 0
              | doc m%"
                Default range step for `x` band and point scales of text marks.
                
                __Default value:__ `90`
              "%
              | optional,
            useUnaggregatedDomain
              | Bool
              | doc m%"
                Use the source data range before aggregation as scale domain instead of aggregated data for aggregate axis.
                
                This is equivalent to setting `domain` to `"unaggregate"` for aggregated _quantitative_ fields by default.
                
                This property only works with aggregate functions that produce values within the raw data domain (`"mean"`, `"average"`, `"median"`, `"q1"`, `"q3"`, `"min"`, `"max"`). For other aggregations that produce values outside of the raw data domain (e.g. `"count"`, `"sum"`), this property is ignored.
                
                __Default value:__ `false`
              "%
              | optional,
          },
      "definitions.ScaleResolveMap" =
        {
            color | refs."definitions.ResolveMode" | String | optional,
            opacity | refs."definitions.ResolveMode" | String | optional,
            shape | refs."definitions.ResolveMode" | String | optional,
            size | refs."definitions.ResolveMode" | String | optional,
            x | refs."definitions.ResolveMode" | String | optional,
            y | refs."definitions.ResolveMode" | String | optional,
          },
      "definitions.ScaleType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'band,
                'point,
                'bin-ordinal,
                'ordinal,
                'sequential,
                'utc,
                'time,
                'sqrt,
                'pow,
                'log,
                'bin-linear,
                'linear
              |]
            ],
      "definitions.SchemeParams" =
        {
            extent
              | Array Number
              | doc "For sequential and diverging schemes only, determines the extent of the color range to use. For example `[0.2, 1]` will rescale the color scheme such that color values in the range _[0, 0.2)_ are excluded from the scheme."
              | optional,
            name
              | String
              | doc m%"
                A color scheme name for sequential/ordinal scales (e.g., `"category10"` or `"viridis"`).
                
                For the full list of supported scheme, please refer to the [Vega Scheme](https://vega.github.io/vega/docs/schemes/#reference) reference.
              "%,
          },
      "definitions.SelectionAnd" =
        { and | Array refs."definitions.SelectionOperand", },
      "definitions.SelectionConfig" =
        {
            interval
              | refs."definitions.IntervalSelectionConfig"
              | { _ | Dyn }
              | doc m%"
                The default definition for an [`interval`](selection.html#type) selection. All properties and transformations
                for an interval selection definition (except `type`) may be specified here.
                
                For instance, setting `interval` to `{"translate": false}` disables the ability to move
                interval selections by default.
              "%
              | optional,
            multi
              | refs."definitions.MultiSelectionConfig"
              | { _ | Dyn }
              | doc m%"
                The default definition for a [`multi`](selection.html#type) selection. All properties and transformations
                for a multi selection definition (except `type`) may be specified here.
                
                For instance, setting `multi` to `{"toggle": "event.altKey"}` adds additional values to
                multi selections when clicking with the alt-key pressed by default.
              "%
              | optional,
            single
              | refs."definitions.SingleSelectionConfig"
              | { _ | Dyn }
              | doc m%"
                The default definition for a [`single`](selection.html#type) selection. All properties and transformations
                  for a single selection definition (except `type`) may be specified here.
                
                For instance, setting `single` to `{"on": "dblclick"}` populates single selections on double-click by default.
              "%
              | optional,
          },
      "definitions.SelectionDef" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.SingleSelection", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.MultiSelection", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.IntervalSelection", { _ | Dyn } ]
            ],
      "definitions.SelectionDomain" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { field = String, selection = String, },
                  required = { selection = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { encoding = String, selection = String, },
                  required = { selection = true, },
                }
            ],
      "definitions.SelectionFilter" =
        {
            selection
              | refs."definitions.SelectionOperand"
              | doc "Filter using a selection name.",
          },
      "definitions.SelectionNot" =
        { not | refs."definitions.SelectionOperand", },
      "definitions.SelectionOperand" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.SelectionNot", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.SelectionAnd", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.SelectionOr", { _ | Dyn } ],
              String
            ],
      "definitions.SelectionOr" =
        { or | Array refs."definitions.SelectionOperand", },
      "definitions.SelectionResolution" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'intersect, 'union, 'global |] ],
      "definitions.SingleDefChannel" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'tooltip,
                'text,
                'opacity,
                'color,
                'shape,
                'size,
                'column,
                'row,
                'y2,
                'x2,
                'y,
                'x
              |]
            ],
      "definitions.SingleSelection" =
        {
            bind
              | std.contract.any_of
                [
                  refs."definitions.VgBinding",
                  js2n.record.Record
                    {
                      additional = 'Some refs."definitions.VgBinding",
                      patterns = {},
                      properties = {},
                      required = {},
                    }
                ]
              | doc m%"
                Establish a two-way binding between a single selection and input elements
                (also known as dynamic query widgets). A binding takes the form of
                Vega's [input element binding definition](https://vega.github.io/vega/docs/signals/#bind)
                or can be a mapping between projected field/encodings and binding definitions.
                
                See the [bind transform](bind.html) documentation for more information.
              "%
              | optional,
            empty
              | std.enum.TagOrString
              | [| 'none, 'all |]
              | doc m%"
                By default, all data values are considered to lie within an empty selection.
                When set to `none`, empty selections contain no data values.
              "%
              | optional,
            encodings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SingleDefChannel", String ]
              )
              | doc m%"
                An array of encoding channels. The corresponding data field values
                must match for a data tuple to fall within the selection.
              "%
              | optional,
            fields
              | Array String
              | doc m%"
                An array of field names whose values must match for a data tuple to
                fall within the selection.
              "%
              | optional,
            nearest
              | Bool
              | doc m%"
                When true, an invisible voronoi diagram is computed to accelerate discrete
                selection. The data value _nearest_ the mouse cursor is added to the selection.
                
                See the [nearest transform](nearest.html) documentation for more information.
              "%
              | optional,
            on
              | refs."definitions.VgEventStream"
              | doc m%"
                A [Vega event stream](https://vega.github.io/vega/docs/event-streams/) (object or selector) that triggers the selection.
                For interval selections, the event stream must specify a [start and end](https://vega.github.io/vega/docs/event-streams/#between-filters).
              "%
              | optional,
            resolve
              | refs."definitions.SelectionResolution"
              | String
              | doc m%"
                With layered and multi-view displays, a strategy that determines how
                selections' data queries are resolved when applied in a filter transform,
                conditional encoding rule, or scale domain.
              "%
              | optional,
            type | std.enum.TagOrString | [| 'single |],
          },
      "definitions.SingleSelectionConfig" =
        {
            bind
              | std.contract.any_of
                [
                  refs."definitions.VgBinding",
                  js2n.record.Record
                    {
                      additional = 'Some refs."definitions.VgBinding",
                      patterns = {},
                      properties = {},
                      required = {},
                    }
                ]
              | doc m%"
                Establish a two-way binding between a single selection and input elements
                (also known as dynamic query widgets). A binding takes the form of
                Vega's [input element binding definition](https://vega.github.io/vega/docs/signals/#bind)
                or can be a mapping between projected field/encodings and binding definitions.
                
                See the [bind transform](bind.html) documentation for more information.
              "%
              | optional,
            empty
              | std.enum.TagOrString
              | [| 'none, 'all |]
              | doc m%"
                By default, all data values are considered to lie within an empty selection.
                When set to `none`, empty selections contain no data values.
              "%
              | optional,
            encodings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SingleDefChannel", String ]
              )
              | doc m%"
                An array of encoding channels. The corresponding data field values
                must match for a data tuple to fall within the selection.
              "%
              | optional,
            fields
              | Array String
              | doc m%"
                An array of field names whose values must match for a data tuple to
                fall within the selection.
              "%
              | optional,
            nearest
              | Bool
              | doc m%"
                When true, an invisible voronoi diagram is computed to accelerate discrete
                selection. The data value _nearest_ the mouse cursor is added to the selection.
                
                See the [nearest transform](nearest.html) documentation for more information.
              "%
              | optional,
            on
              | refs."definitions.VgEventStream"
              | doc m%"
                A [Vega event stream](https://vega.github.io/vega/docs/event-streams/) (object or selector) that triggers the selection.
                For interval selections, the event stream must specify a [start and end](https://vega.github.io/vega/docs/event-streams/#between-filters).
              "%
              | optional,
            resolve
              | refs."definitions.SelectionResolution"
              | String
              | doc m%"
                With layered and multi-view displays, a strategy that determines how
                selections' data queries are resolved when applied in a filter transform,
                conditional encoding rule, or scale domain.
              "%
              | optional,
          },
      "definitions.SingleTimeUnit" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.LocalSingleTimeUnit", String ],
              std.contract.Sequence
                [ refs."definitions.UtcSingleTimeUnit", String ]
            ],
      "definitions.SortField" =
        {
            field
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.RepeatRef", { _ | Dyn } ]
                ]
              | doc m%"
                The data [field](field.html) to sort by.
                
                __Default value:__ If unspecified, defaults to the field specified in the outer data reference.
              "%
              | optional,
            op
              | refs."definitions.AggregateOp"
              | String
              | doc m%"
                An [aggregate operation](aggregate.html#ops) to perform on the field prior to sorting (e.g., `"count"`, `"mean"` and `"median"`).
                This property is required in cases where the sort field and the data reference field do not match.
                The input data objects will be aggregated, grouped by the encoded data field.
                
                For a full list of operations, please see the documentation for [aggregate](aggregate.html#ops).
              "%,
            order
              | refs."definitions.SortOrder"
              | js2n.Nullable String
              | doc "The sort order. One of `\"ascending\"` (default) or `\"descending\"`."
              | optional,
          },
      "definitions.SortOrder" =
        std.contract.any_of
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'ascending |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'descending |] ],
              js2n.Null
            ],
      "definitions.Spec" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.CompositeUnitSpec", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.LayerSpec", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.FacetSpec", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.RepeatSpec", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.VConcatSpec", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.HConcatSpec", { _ | Dyn } ]
            ],
      "definitions.StackOffset" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'normalize, 'center, 'zero |] ],
      "definitions.StyleConfigIndex" =
        {
            _ | std.contract.Sequence
              [ refs."definitions.VgMarkConfig", { _ | Dyn } ]
          },
      "definitions.TextConfig" =
        {
            align
              | refs."definitions.HorizontalAlign"
              | String
              | doc "The horizontal alignment of the text. One of `\"left\"`, `\"right\"`, `\"center\"`."
              | optional,
            angle
              | js2n.number.Maximum 360
              | js2n.number.Minimum 0
              | doc "The rotation angle of the text, in degrees."
              | optional,
            baseline
              | refs."definitions.VerticalAlign"
              | String
              | doc m%"
                The vertical alignment of the text. One of `"top"`, `"middle"`, `"bottom"`.
                
                __Default value:__ `"middle"`
              "%
              | optional,
            color
              | String
              | doc m%"
                Default color.  Note that `fill` and `stroke` have higher precedence than `color` and will override `color`.
                
                __Default value:__ <span style="color: #4682b4;">&#9632;</span> `"#4682b4"`
                
                __Note:__ This property cannot be used in a [style config](mark.html#style-config).
              "%
              | optional,
            dx
              | Number
              | doc "The horizontal offset, in pixels, between the text label and its anchor point. The offset is applied after rotation by the _angle_ property."
              | optional,
            dy
              | Number
              | doc "The vertical offset, in pixels, between the text label and its anchor point. The offset is applied after rotation by the _angle_ property."
              | optional,
            fill
              | String
              | doc m%"
                Default Fill Color.  This has higher precedence than config.color
                
                __Default value:__ (None)
              "%
              | optional,
            fillOpacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The fill opacity (value between [0,1]).
                
                __Default value:__ `1`
              "%
              | optional,
            filled
              | Bool
              | doc m%"
                Whether the mark's color should be used as fill color instead of stroke color.
                
                __Default value:__ `true` for all marks except `point` and `false` for `point`.
                
                __Applicable for:__ `bar`, `point`, `circle`, `square`, and `area` marks.
                
                __Note:__ This property cannot be used in a [style config](mark.html#style-config).
              "%
              | optional,
            font
              | String
              | doc "The typeface to set the text in (e.g., `\"Helvetica Neue\"`)."
              | optional,
            fontSize
              | js2n.number.Minimum 0
              | doc "The font size, in pixels."
              | optional,
            fontStyle
              | refs."definitions.FontStyle"
              | String
              | doc "The font style (e.g., `\"italic\"`)."
              | optional,
            fontWeight
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FontWeight", String ],
                  std.contract.Sequence
                    [ refs."definitions.FontWeightNumber", Number ]
                ]
              | doc "The font weight (e.g., `\"bold\"`)."
              | optional,
            interpolate
              | refs."definitions.Interpolate"
              | String
              | doc m%"
                The line interpolation method to use for line and area marks. One of the following:
                - `"linear"`: piecewise linear segments, as in a polyline.
                - `"linear-closed"`: close the linear segments to form a polygon.
                - `"step"`: alternate between horizontal and vertical segments, as in a step function.
                - `"step-before"`: alternate between vertical and horizontal segments, as in a step function.
                - `"step-after"`: alternate between horizontal and vertical segments, as in a step function.
                - `"basis"`: a B-spline, with control point duplication on the ends.
                - `"basis-open"`: an open B-spline; may not intersect the start or end.
                - `"basis-closed"`: a closed B-spline, as in a loop.
                - `"cardinal"`: a Cardinal spline, with control point duplication on the ends.
                - `"cardinal-open"`: an open Cardinal spline; may not intersect the start or end, but will intersect other control points.
                - `"cardinal-closed"`: a closed Cardinal spline, as in a loop.
                - `"bundle"`: equivalent to basis, except the tension parameter is used to straighten the spline.
                - `"monotone"`: cubic interpolation that preserves monotonicity in y.
              "%
              | optional,
            limit
              | Number
              | doc "The maximum length of the text mark in pixels (default 0, indicating no limit). The text value will be automatically truncated if the rendered size exceeds the limit."
              | optional,
            opacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The overall opacity (value between [0,1]).
                
                __Default value:__ `0.7` for non-aggregate plots with `point`, `tick`, `circle`, or `square` marks or layered `bar` charts and `1` otherwise.
              "%
              | optional,
            orient
              | refs."definitions.Orient"
              | String
              | doc m%"
                The orientation of a non-stacked bar, tick, area, and line charts.
                The value is either horizontal (default) or vertical.
                - For bar, rule and tick, this determines whether the size of the bar and tick
                should be applied to x or y dimension.
                - For area, this property determines the orient property of the Vega output.
                - For line, this property determines the sort order of the points in the line
                if `config.sortLineBy` is not specified.
                For stacked charts, this is always determined by the orientation of the stack;
                therefore explicitly specified value will be ignored.
              "%
              | optional,
            radius
              | js2n.number.Minimum 0
              | doc "Polar coordinate radial offset, in pixels, of the text label from the origin determined by the `x` and `y` properties."
              | optional,
            shape
              | String
              | doc m%"
                The default symbol shape to use. One of: `"circle"` (default), `"square"`, `"cross"`, `"diamond"`, `"triangle-up"`, or `"triangle-down"`, or a custom SVG path.
                
                __Default value:__ `"circle"`
              "%
              | optional,
            shortTimeLabels
              | Bool
              | doc "Whether month names and weekday names should be abbreviated."
              | optional,
            size
              | js2n.number.Minimum 0
              | doc m%"
                The pixel area each the point/circle/square.
                For example: in the case of circles, the radius is determined in part by the square root of the size value.
                
                __Default value:__ `30`
              "%
              | optional,
            stroke
              | String
              | doc m%"
                Default Stroke Color.  This has higher precedence than config.color
                
                __Default value:__ (None)
              "%
              | optional,
            strokeDash
              | Array Number
              | doc "An array of alternating stroke, space lengths for creating dashed or dotted lines."
              | optional,
            strokeDashOffset
              | Number
              | doc "The offset (in pixels) into which to begin drawing with the stroke dash array."
              | optional,
            strokeOpacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The stroke opacity (value between [0,1]).
                
                __Default value:__ `1`
              "%
              | optional,
            strokeWidth
              | js2n.number.Minimum 0
              | doc "The stroke width, in pixels."
              | optional,
            tension
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc "Depending on the interpolation type, sets the tension parameter (for line and area marks)."
              | optional,
            text
              | String
              | doc "Placeholder text if the `text` channel is not specified"
              | optional,
            theta
              | Number
              | doc "Polar coordinate angle, in radians, of the text label from the origin determined by the `x` and `y` properties. Values for `theta` follow the same convention of `arc` mark `startAngle` and `endAngle` properties: angles are measured in radians, with `0` indicating \"north\"."
              | optional,
          },
      "definitions.TextFieldDefWithCondition" =
        {
            aggregate
              | refs."definitions.Aggregate"
              | doc m%"
                Aggregation function for the field
                (e.g., `mean`, `sum`, `median`, `min`, `max`, `count`).
                
                __Default value:__ `undefined` (None)
              "%
              | optional,
            bin
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ refs."definitions.BinParams", { _ | Dyn } ]
                ]
              | doc m%"
                A flag for binning a `quantitative` field, or [an object defining binning parameters](bin.html#params).
                If `true`, default [binning parameters](bin.html) will be applied.
                
                __Default value:__ `false`
              "%
              | optional,
            condition
              | std.contract.any_of
                [ js2n.Always, js2n.array.ArrayOf js2n.Always ]
              | doc m%"
                One or more value definition(s) with a selection predicate.
                
                __Note:__ A field definition's `condition` property can only contain [value definitions](encoding.html#value)
                since Vega-Lite only allows at mostly one encoded field per encoding channel.
              "%
              | optional,
            field
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.RepeatRef", { _ | Dyn } ]
                ]
              | doc m%"
                __Required.__ A string defining the name of the field from which to pull a data value
                or an object defining iterated values from the [`repeat`](repeat.html) operator.
                
                __Note:__ `field` is not required if `aggregate` is `count`.
              "%
              | optional,
            format
              | String
              | doc "The [formatting pattern](format.html) for a text field. If not defined, this will be determined automatically."
              | optional,
            timeUnit
              | refs."definitions.TimeUnit"
              | doc m%"
                Time unit (e.g., `year`, `yearmonth`, `month`, `hours`) for a temporal field.
                or [a temporal field that gets casted as ordinal](type.html#cast).
                
                __Default value:__ `undefined` (None)
              "%
              | optional,
            type
              | refs."definitions.Type"
              | String
              | doc "The encoded field's type of measurement (`\"quantitative\"`, `\"temporal\"`, `\"ordinal\"`, or `\"nominal\"`).",
          },
      "definitions.TextValueDefWithCondition" =
        {
            condition
              | std.contract.any_of
                [ js2n.Always, js2n.Always, js2n.array.ArrayOf js2n.Always ]
              | doc "A field definition or one or more value definition(s) with a selection predicate."
              | optional,
            value
              | std.contract.any_of [ Bool, Number, String ]
              | doc "A constant value in visual domain."
              | optional,
          },
      "definitions.TickConfig" =
        {
            align
              | refs."definitions.HorizontalAlign"
              | String
              | doc "The horizontal alignment of the text. One of `\"left\"`, `\"right\"`, `\"center\"`."
              | optional,
            angle
              | js2n.number.Maximum 360
              | js2n.number.Minimum 0
              | doc "The rotation angle of the text, in degrees."
              | optional,
            bandSize
              | js2n.number.Minimum 0
              | doc m%"
                The width of the ticks.
                
                __Default value:__  2/3 of rangeStep.
              "%
              | optional,
            baseline
              | refs."definitions.VerticalAlign"
              | String
              | doc m%"
                The vertical alignment of the text. One of `"top"`, `"middle"`, `"bottom"`.
                
                __Default value:__ `"middle"`
              "%
              | optional,
            color
              | String
              | doc m%"
                Default color.  Note that `fill` and `stroke` have higher precedence than `color` and will override `color`.
                
                __Default value:__ <span style="color: #4682b4;">&#9632;</span> `"#4682b4"`
                
                __Note:__ This property cannot be used in a [style config](mark.html#style-config).
              "%
              | optional,
            dx
              | Number
              | doc "The horizontal offset, in pixels, between the text label and its anchor point. The offset is applied after rotation by the _angle_ property."
              | optional,
            dy
              | Number
              | doc "The vertical offset, in pixels, between the text label and its anchor point. The offset is applied after rotation by the _angle_ property."
              | optional,
            fill
              | String
              | doc m%"
                Default Fill Color.  This has higher precedence than config.color
                
                __Default value:__ (None)
              "%
              | optional,
            fillOpacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The fill opacity (value between [0,1]).
                
                __Default value:__ `1`
              "%
              | optional,
            filled
              | Bool
              | doc m%"
                Whether the mark's color should be used as fill color instead of stroke color.
                
                __Default value:__ `true` for all marks except `point` and `false` for `point`.
                
                __Applicable for:__ `bar`, `point`, `circle`, `square`, and `area` marks.
                
                __Note:__ This property cannot be used in a [style config](mark.html#style-config).
              "%
              | optional,
            font
              | String
              | doc "The typeface to set the text in (e.g., `\"Helvetica Neue\"`)."
              | optional,
            fontSize
              | js2n.number.Minimum 0
              | doc "The font size, in pixels."
              | optional,
            fontStyle
              | refs."definitions.FontStyle"
              | String
              | doc "The font style (e.g., `\"italic\"`)."
              | optional,
            fontWeight
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FontWeight", String ],
                  std.contract.Sequence
                    [ refs."definitions.FontWeightNumber", Number ]
                ]
              | doc "The font weight (e.g., `\"bold\"`)."
              | optional,
            interpolate
              | refs."definitions.Interpolate"
              | String
              | doc m%"
                The line interpolation method to use for line and area marks. One of the following:
                - `"linear"`: piecewise linear segments, as in a polyline.
                - `"linear-closed"`: close the linear segments to form a polygon.
                - `"step"`: alternate between horizontal and vertical segments, as in a step function.
                - `"step-before"`: alternate between vertical and horizontal segments, as in a step function.
                - `"step-after"`: alternate between horizontal and vertical segments, as in a step function.
                - `"basis"`: a B-spline, with control point duplication on the ends.
                - `"basis-open"`: an open B-spline; may not intersect the start or end.
                - `"basis-closed"`: a closed B-spline, as in a loop.
                - `"cardinal"`: a Cardinal spline, with control point duplication on the ends.
                - `"cardinal-open"`: an open Cardinal spline; may not intersect the start or end, but will intersect other control points.
                - `"cardinal-closed"`: a closed Cardinal spline, as in a loop.
                - `"bundle"`: equivalent to basis, except the tension parameter is used to straighten the spline.
                - `"monotone"`: cubic interpolation that preserves monotonicity in y.
              "%
              | optional,
            limit
              | Number
              | doc "The maximum length of the text mark in pixels (default 0, indicating no limit). The text value will be automatically truncated if the rendered size exceeds the limit."
              | optional,
            opacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The overall opacity (value between [0,1]).
                
                __Default value:__ `0.7` for non-aggregate plots with `point`, `tick`, `circle`, or `square` marks or layered `bar` charts and `1` otherwise.
              "%
              | optional,
            orient
              | refs."definitions.Orient"
              | String
              | doc m%"
                The orientation of a non-stacked bar, tick, area, and line charts.
                The value is either horizontal (default) or vertical.
                - For bar, rule and tick, this determines whether the size of the bar and tick
                should be applied to x or y dimension.
                - For area, this property determines the orient property of the Vega output.
                - For line, this property determines the sort order of the points in the line
                if `config.sortLineBy` is not specified.
                For stacked charts, this is always determined by the orientation of the stack;
                therefore explicitly specified value will be ignored.
              "%
              | optional,
            radius
              | js2n.number.Minimum 0
              | doc "Polar coordinate radial offset, in pixels, of the text label from the origin determined by the `x` and `y` properties."
              | optional,
            shape
              | String
              | doc m%"
                The default symbol shape to use. One of: `"circle"` (default), `"square"`, `"cross"`, `"diamond"`, `"triangle-up"`, or `"triangle-down"`, or a custom SVG path.
                
                __Default value:__ `"circle"`
              "%
              | optional,
            size
              | js2n.number.Minimum 0
              | doc m%"
                The pixel area each the point/circle/square.
                For example: in the case of circles, the radius is determined in part by the square root of the size value.
                
                __Default value:__ `30`
              "%
              | optional,
            stroke
              | String
              | doc m%"
                Default Stroke Color.  This has higher precedence than config.color
                
                __Default value:__ (None)
              "%
              | optional,
            strokeDash
              | Array Number
              | doc "An array of alternating stroke, space lengths for creating dashed or dotted lines."
              | optional,
            strokeDashOffset
              | Number
              | doc "The offset (in pixels) into which to begin drawing with the stroke dash array."
              | optional,
            strokeOpacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The stroke opacity (value between [0,1]).
                
                __Default value:__ `1`
              "%
              | optional,
            strokeWidth
              | js2n.number.Minimum 0
              | doc "The stroke width, in pixels."
              | optional,
            tension
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc "Depending on the interpolation type, sets the tension parameter (for line and area marks)."
              | optional,
            text
              | String
              | doc "Placeholder text if the `text` channel is not specified"
              | optional,
            theta
              | Number
              | doc "Polar coordinate angle, in radians, of the text label from the origin determined by the `x` and `y` properties. Values for `theta` follow the same convention of `arc` mark `startAngle` and `endAngle` properties: angles are measured in radians, with `0` indicating \"north\"."
              | optional,
            thickness
              | js2n.number.Minimum 0
              | doc m%"
                Thickness of the tick mark.
                
                __Default value:__  `1`
              "%
              | optional,
          },
      "definitions.TimeUnit" =
        std.contract.any_of
            [
              refs."definitions.SingleTimeUnit",
              refs."definitions.MultiTimeUnit"
            ],
      "definitions.TimeUnitTransform" =
        {
            as | String | doc "The output field to write the timeUnit value.",
            field | String | doc "The data field to apply time unit.",
            timeUnit | refs."definitions.TimeUnit" | doc "The timeUnit.",
          },
      "definitions.TitleOrient" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'right, 'left, 'bottom, 'top |] ],
      "definitions.TitleParams" =
        {
            anchor
              | refs."definitions.Anchor"
              | String
              | doc m%"
                The anchor position for placing the title. One of `"start"`, `"middle"`, or `"end"`. For example, with an orientation of top these anchor positions map to a left-, center-, or right-aligned title.
                
                __Default value:__ `"middle"` for [single](spec.html) and [layered](layer.html) views.
                `"start"` for other composite views.
                
                __Note:__ [For now](https://github.com/vega/vega-lite/issues/2875), `anchor` is only customizable only for [single](spec.html) and [layered](layer.html) views.  For other composite views, `anchor` is always `"start"`.
              "%
              | optional,
            offset
              | Number
              | doc "The orthogonal offset in pixels by which to displace the title from its position along the edge of the chart."
              | optional,
            orient
              | refs."definitions.TitleOrient"
              | String
              | doc "The orientation of the title relative to the chart. One of `\"top\"` (the default), `\"bottom\"`, `\"left\"`, or `\"right\"`."
              | optional,
            style
              | std.contract.any_of [ String, Array String ]
              | doc m%"
                A [mark style property](config.html#style) to apply to the title text mark.
                
                __Default value:__ `"group-title"`.
              "%
              | optional,
            text | String | doc "The title text.",
          },
      "definitions.TopLevel%3CFacetSpec%3E" =
        {
            "$schema"
              | String
              | doc "URL to [JSON schema](http://json-schema.org/) for a Vega-Lite specification. Unless you have a reason to change this, use `https://vega.github.io/schema/vega-lite/v2.json`. Setting the `$schema` property allows automatic validation and autocomplete in editors that support JSON schema."
              | optional,
            autosize
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.AutosizeType", String ],
                  std.contract.Sequence
                    [ refs."definitions.AutoSizeParams", { _ | Dyn } ]
                ]
              | doc m%"
                Sets how the visualization size should be determined. If a string, should be one of `"pad"`, `"fit"` or `"none"`.
                Object values can additionally specify parameters for content sizing and automatic resizing.
                `"fit"` is only supported for single and layered views that don't use `rangeStep`.
                
                __Default value__: `pad`
              "%
              | optional,
            background
              | String
              | doc m%"
                CSS color property to use as the background of visualization.
                
                __Default value:__ none (transparent)
              "%
              | optional,
            config
              | refs."definitions.Config"
              | { _ | Dyn }
              | doc "Vega-Lite configuration object.  This property can only be defined at the top-level of a specification."
              | optional,
            data
              | refs."definitions.Data"
              | doc "An object describing the data source"
              | optional,
            description
              | String
              | doc "Description of this mark for commenting purpose."
              | optional,
            facet
              | refs."definitions.FacetMapping"
              | { _ | Dyn }
              | doc "An object that describes mappings between `row` and `column` channels and their field definitions.",
            name
              | String
              | doc "Name of the visualization for later reference."
              | optional,
            padding
              | refs."definitions.Padding"
              | std.contract.any_of [ { _ | Dyn }, Number ]
              | doc m%"
                The default visualization padding, in pixels, from the edge of the visualization canvas to the data rectangle.  If a number, specifies padding for all sides.
                If an object, the value should have the format `{"left": 5, "top": 5, "right": 5, "bottom": 5}` to specify padding for each side of the visualization.
                
                __Default value__: `5`
              "%
              | optional,
            resolve
              | refs."definitions.Resolve"
              | { _ | Dyn }
              | doc "Scale, axis, and legend resolutions for facets."
              | optional,
            spec
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.LayerSpec", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CompositeUnitSpec", { _ | Dyn } ]
                ]
              | doc "A specification of the view that gets faceted.",
            title
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.TitleParams", { _ | Dyn } ]
                ]
              | doc "Title for the plot."
              | optional,
            transform
              | Array refs."definitions.Transform"
              | doc "An array of data transformations such as filter and new field calculation."
              | optional,
          },
      "definitions.TopLevel%3CFacetedUnitSpec%3E" =
        {
            "$schema"
              | String
              | doc "URL to [JSON schema](http://json-schema.org/) for a Vega-Lite specification. Unless you have a reason to change this, use `https://vega.github.io/schema/vega-lite/v2.json`. Setting the `$schema` property allows automatic validation and autocomplete in editors that support JSON schema."
              | optional,
            autosize
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.AutosizeType", String ],
                  std.contract.Sequence
                    [ refs."definitions.AutoSizeParams", { _ | Dyn } ]
                ]
              | doc m%"
                Sets how the visualization size should be determined. If a string, should be one of `"pad"`, `"fit"` or `"none"`.
                Object values can additionally specify parameters for content sizing and automatic resizing.
                `"fit"` is only supported for single and layered views that don't use `rangeStep`.
                
                __Default value__: `pad`
              "%
              | optional,
            background
              | String
              | doc m%"
                CSS color property to use as the background of visualization.
                
                __Default value:__ none (transparent)
              "%
              | optional,
            config
              | refs."definitions.Config"
              | { _ | Dyn }
              | doc "Vega-Lite configuration object.  This property can only be defined at the top-level of a specification."
              | optional,
            data
              | refs."definitions.Data"
              | doc "An object describing the data source"
              | optional,
            description
              | String
              | doc "Description of this mark for commenting purpose."
              | optional,
            encoding
              | refs."definitions.EncodingWithFacet"
              | { _ | Dyn }
              | doc "A key-value mapping between encoding channels and definition of fields.",
            height
              | Number
              | doc m%"
                The height of a visualization.
                
                __Default value:__
                - If a view's [`autosize`](size.html#autosize) type is `"fit"` or its y-channel has a [continuous scale](scale.html#continuous), the height will be the value of [`config.view.height`](spec.html#config).
                - For y-axis with a band or point scale: if [`rangeStep`](scale.html#band) is a numeric value or unspecified, the height is [determined by the range step, paddings, and the cardinality of the field mapped to y-channel](scale.html#band). Otherwise, if the `rangeStep` is `null`, the height will be the value of [`config.view.height`](spec.html#config).
                - If no field is mapped to `y` channel, the `height` will be the value of `rangeStep`.
                
                __Note__: For plots with [`row` and `column` channels](encoding.html#facet), this represents the height of a single view.
                
                __See also:__ The documentation for [width and height](size.html) contains more examples.
              "%
              | optional,
            mark
              | refs."definitions.AnyMark"
              | doc m%"
                A string describing the mark type (one of `"bar"`, `"circle"`, `"square"`, `"tick"`, `"line"`,
                `"area"`, `"point"`, `"rule"`, and `"text"`) or a [mark definition object](mark.html#mark-def).
              "%,
            name
              | String
              | doc "Name of the visualization for later reference."
              | optional,
            padding
              | refs."definitions.Padding"
              | std.contract.any_of [ { _ | Dyn }, Number ]
              | doc m%"
                The default visualization padding, in pixels, from the edge of the visualization canvas to the data rectangle.  If a number, specifies padding for all sides.
                If an object, the value should have the format `{"left": 5, "top": 5, "right": 5, "bottom": 5}` to specify padding for each side of the visualization.
                
                __Default value__: `5`
              "%
              | optional,
            selection
              | { _ | refs."definitions.SelectionDef" }
              | doc "A key-value mapping between selection names and definitions."
              | optional,
            title
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.TitleParams", { _ | Dyn } ]
                ]
              | doc "Title for the plot."
              | optional,
            transform
              | Array refs."definitions.Transform"
              | doc "An array of data transformations such as filter and new field calculation."
              | optional,
            width
              | Number
              | doc m%"
                The width of a visualization.
                
                __Default value:__ This will be determined by the following rules:
                
                - If a view's [`autosize`](size.html#autosize) type is `"fit"` or its x-channel has a [continuous scale](scale.html#continuous), the width will be the value of [`config.view.width`](spec.html#config).
                - For x-axis with a band or point scale: if [`rangeStep`](scale.html#band) is a numeric value or unspecified, the width is [determined by the range step, paddings, and the cardinality of the field mapped to x-channel](scale.html#band).   Otherwise, if the `rangeStep` is `null`, the width will be the value of [`config.view.width`](spec.html#config).
                - If no field is mapped to `x` channel, the `width` will be the value of [`config.scale.textXRangeStep`](size.html#default-width-and-height) for `text` mark and the value of `rangeStep` for other marks.
                
                __Note:__ For plots with [`row` and `column` channels](encoding.html#facet), this represents the width of a single view.
                
                __See also:__ The documentation for [width and height](size.html) contains more examples.
              "%
              | optional,
          },
      "definitions.TopLevel%3CHConcatSpec%3E" =
        {
            "$schema"
              | String
              | doc "URL to [JSON schema](http://json-schema.org/) for a Vega-Lite specification. Unless you have a reason to change this, use `https://vega.github.io/schema/vega-lite/v2.json`. Setting the `$schema` property allows automatic validation and autocomplete in editors that support JSON schema."
              | optional,
            autosize
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.AutosizeType", String ],
                  std.contract.Sequence
                    [ refs."definitions.AutoSizeParams", { _ | Dyn } ]
                ]
              | doc m%"
                Sets how the visualization size should be determined. If a string, should be one of `"pad"`, `"fit"` or `"none"`.
                Object values can additionally specify parameters for content sizing and automatic resizing.
                `"fit"` is only supported for single and layered views that don't use `rangeStep`.
                
                __Default value__: `pad`
              "%
              | optional,
            background
              | String
              | doc m%"
                CSS color property to use as the background of visualization.
                
                __Default value:__ none (transparent)
              "%
              | optional,
            config
              | refs."definitions.Config"
              | { _ | Dyn }
              | doc "Vega-Lite configuration object.  This property can only be defined at the top-level of a specification."
              | optional,
            data
              | refs."definitions.Data"
              | doc "An object describing the data source"
              | optional,
            description
              | String
              | doc "Description of this mark for commenting purpose."
              | optional,
            hconcat
              | Array refs."definitions.Spec"
              | doc "A list of views that should be concatenated and put into a row.",
            name
              | String
              | doc "Name of the visualization for later reference."
              | optional,
            padding
              | refs."definitions.Padding"
              | std.contract.any_of [ { _ | Dyn }, Number ]
              | doc m%"
                The default visualization padding, in pixels, from the edge of the visualization canvas to the data rectangle.  If a number, specifies padding for all sides.
                If an object, the value should have the format `{"left": 5, "top": 5, "right": 5, "bottom": 5}` to specify padding for each side of the visualization.
                
                __Default value__: `5`
              "%
              | optional,
            resolve
              | refs."definitions.Resolve"
              | { _ | Dyn }
              | doc "Scale, axis, and legend resolutions for horizontally concatenated charts."
              | optional,
            title
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.TitleParams", { _ | Dyn } ]
                ]
              | doc "Title for the plot."
              | optional,
            transform
              | Array refs."definitions.Transform"
              | doc "An array of data transformations such as filter and new field calculation."
              | optional,
          },
      "definitions.TopLevel%3CLayerSpec%3E" =
        {
            "$schema"
              | String
              | doc "URL to [JSON schema](http://json-schema.org/) for a Vega-Lite specification. Unless you have a reason to change this, use `https://vega.github.io/schema/vega-lite/v2.json`. Setting the `$schema` property allows automatic validation and autocomplete in editors that support JSON schema."
              | optional,
            autosize
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.AutosizeType", String ],
                  std.contract.Sequence
                    [ refs."definitions.AutoSizeParams", { _ | Dyn } ]
                ]
              | doc m%"
                Sets how the visualization size should be determined. If a string, should be one of `"pad"`, `"fit"` or `"none"`.
                Object values can additionally specify parameters for content sizing and automatic resizing.
                `"fit"` is only supported for single and layered views that don't use `rangeStep`.
                
                __Default value__: `pad`
              "%
              | optional,
            background
              | String
              | doc m%"
                CSS color property to use as the background of visualization.
                
                __Default value:__ none (transparent)
              "%
              | optional,
            config
              | refs."definitions.Config"
              | { _ | Dyn }
              | doc "Vega-Lite configuration object.  This property can only be defined at the top-level of a specification."
              | optional,
            data
              | refs."definitions.Data"
              | doc "An object describing the data source"
              | optional,
            description
              | String
              | doc "Description of this mark for commenting purpose."
              | optional,
            height
              | Number
              | doc m%"
                The height of a visualization.
                
                __Default value:__
                - If a view's [`autosize`](size.html#autosize) type is `"fit"` or its y-channel has a [continuous scale](scale.html#continuous), the height will be the value of [`config.view.height`](spec.html#config).
                - For y-axis with a band or point scale: if [`rangeStep`](scale.html#band) is a numeric value or unspecified, the height is [determined by the range step, paddings, and the cardinality of the field mapped to y-channel](scale.html#band). Otherwise, if the `rangeStep` is `null`, the height will be the value of [`config.view.height`](spec.html#config).
                - If no field is mapped to `y` channel, the `height` will be the value of `rangeStep`.
                
                __Note__: For plots with [`row` and `column` channels](encoding.html#facet), this represents the height of a single view.
                
                __See also:__ The documentation for [width and height](size.html) contains more examples.
              "%
              | optional,
            layer
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.LayerSpec", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.CompositeUnitSpec", { _ | Dyn } ]
                  ]
              )
              | doc m%"
                Layer or single view specifications to be layered.
                
                __Note__: Specifications inside `layer` cannot use `row` and `column` channels as layering facet specifications is not allowed.
              "%,
            name
              | String
              | doc "Name of the visualization for later reference."
              | optional,
            padding
              | refs."definitions.Padding"
              | std.contract.any_of [ { _ | Dyn }, Number ]
              | doc m%"
                The default visualization padding, in pixels, from the edge of the visualization canvas to the data rectangle.  If a number, specifies padding for all sides.
                If an object, the value should have the format `{"left": 5, "top": 5, "right": 5, "bottom": 5}` to specify padding for each side of the visualization.
                
                __Default value__: `5`
              "%
              | optional,
            resolve
              | refs."definitions.Resolve"
              | { _ | Dyn }
              | doc "Scale, axis, and legend resolutions for layers."
              | optional,
            title
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.TitleParams", { _ | Dyn } ]
                ]
              | doc "Title for the plot."
              | optional,
            transform
              | Array refs."definitions.Transform"
              | doc "An array of data transformations such as filter and new field calculation."
              | optional,
            width
              | Number
              | doc m%"
                The width of a visualization.
                
                __Default value:__ This will be determined by the following rules:
                
                - If a view's [`autosize`](size.html#autosize) type is `"fit"` or its x-channel has a [continuous scale](scale.html#continuous), the width will be the value of [`config.view.width`](spec.html#config).
                - For x-axis with a band or point scale: if [`rangeStep`](scale.html#band) is a numeric value or unspecified, the width is [determined by the range step, paddings, and the cardinality of the field mapped to x-channel](scale.html#band).   Otherwise, if the `rangeStep` is `null`, the width will be the value of [`config.view.width`](spec.html#config).
                - If no field is mapped to `x` channel, the `width` will be the value of [`config.scale.textXRangeStep`](size.html#default-width-and-height) for `text` mark and the value of `rangeStep` for other marks.
                
                __Note:__ For plots with [`row` and `column` channels](encoding.html#facet), this represents the width of a single view.
                
                __See also:__ The documentation for [width and height](size.html) contains more examples.
              "%
              | optional,
          },
      "definitions.TopLevel%3CRepeatSpec%3E" =
        {
            "$schema"
              | String
              | doc "URL to [JSON schema](http://json-schema.org/) for a Vega-Lite specification. Unless you have a reason to change this, use `https://vega.github.io/schema/vega-lite/v2.json`. Setting the `$schema` property allows automatic validation and autocomplete in editors that support JSON schema."
              | optional,
            autosize
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.AutosizeType", String ],
                  std.contract.Sequence
                    [ refs."definitions.AutoSizeParams", { _ | Dyn } ]
                ]
              | doc m%"
                Sets how the visualization size should be determined. If a string, should be one of `"pad"`, `"fit"` or `"none"`.
                Object values can additionally specify parameters for content sizing and automatic resizing.
                `"fit"` is only supported for single and layered views that don't use `rangeStep`.
                
                __Default value__: `pad`
              "%
              | optional,
            background
              | String
              | doc m%"
                CSS color property to use as the background of visualization.
                
                __Default value:__ none (transparent)
              "%
              | optional,
            config
              | refs."definitions.Config"
              | { _ | Dyn }
              | doc "Vega-Lite configuration object.  This property can only be defined at the top-level of a specification."
              | optional,
            data
              | refs."definitions.Data"
              | doc "An object describing the data source"
              | optional,
            description
              | String
              | doc "Description of this mark for commenting purpose."
              | optional,
            name
              | String
              | doc "Name of the visualization for later reference."
              | optional,
            padding
              | refs."definitions.Padding"
              | std.contract.any_of [ { _ | Dyn }, Number ]
              | doc m%"
                The default visualization padding, in pixels, from the edge of the visualization canvas to the data rectangle.  If a number, specifies padding for all sides.
                If an object, the value should have the format `{"left": 5, "top": 5, "right": 5, "bottom": 5}` to specify padding for each side of the visualization.
                
                __Default value__: `5`
              "%
              | optional,
            repeat
              | refs."definitions.Repeat"
              | { _ | Dyn }
              | doc "An object that describes what fields should be repeated into views that are laid out as a `row` or `column`.",
            resolve
              | refs."definitions.Resolve"
              | { _ | Dyn }
              | doc "Scale and legend resolutions for repeated charts."
              | optional,
            spec | refs."definitions.Spec",
            title
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.TitleParams", { _ | Dyn } ]
                ]
              | doc "Title for the plot."
              | optional,
            transform
              | Array refs."definitions.Transform"
              | doc "An array of data transformations such as filter and new field calculation."
              | optional,
          },
      "definitions.TopLevel%3CVConcatSpec%3E" =
        {
            "$schema"
              | String
              | doc "URL to [JSON schema](http://json-schema.org/) for a Vega-Lite specification. Unless you have a reason to change this, use `https://vega.github.io/schema/vega-lite/v2.json`. Setting the `$schema` property allows automatic validation and autocomplete in editors that support JSON schema."
              | optional,
            autosize
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.AutosizeType", String ],
                  std.contract.Sequence
                    [ refs."definitions.AutoSizeParams", { _ | Dyn } ]
                ]
              | doc m%"
                Sets how the visualization size should be determined. If a string, should be one of `"pad"`, `"fit"` or `"none"`.
                Object values can additionally specify parameters for content sizing and automatic resizing.
                `"fit"` is only supported for single and layered views that don't use `rangeStep`.
                
                __Default value__: `pad`
              "%
              | optional,
            background
              | String
              | doc m%"
                CSS color property to use as the background of visualization.
                
                __Default value:__ none (transparent)
              "%
              | optional,
            config
              | refs."definitions.Config"
              | { _ | Dyn }
              | doc "Vega-Lite configuration object.  This property can only be defined at the top-level of a specification."
              | optional,
            data
              | refs."definitions.Data"
              | doc "An object describing the data source"
              | optional,
            description
              | String
              | doc "Description of this mark for commenting purpose."
              | optional,
            name
              | String
              | doc "Name of the visualization for later reference."
              | optional,
            padding
              | refs."definitions.Padding"
              | std.contract.any_of [ { _ | Dyn }, Number ]
              | doc m%"
                The default visualization padding, in pixels, from the edge of the visualization canvas to the data rectangle.  If a number, specifies padding for all sides.
                If an object, the value should have the format `{"left": 5, "top": 5, "right": 5, "bottom": 5}` to specify padding for each side of the visualization.
                
                __Default value__: `5`
              "%
              | optional,
            resolve
              | refs."definitions.Resolve"
              | { _ | Dyn }
              | doc "Scale, axis, and legend resolutions for vertically concatenated charts."
              | optional,
            title
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.TitleParams", { _ | Dyn } ]
                ]
              | doc "Title for the plot."
              | optional,
            transform
              | Array refs."definitions.Transform"
              | doc "An array of data transformations such as filter and new field calculation."
              | optional,
            vconcat
              | Array refs."definitions.Spec"
              | doc "A list of views that should be concatenated and put into a column.",
          },
      "definitions.TopLevelExtendedSpec" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."definitions.TopLevel%3CFacetedUnitSpec%3E",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."definitions.TopLevel%3CLayerSpec%3E", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.TopLevel%3CFacetSpec%3E", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.TopLevel%3CRepeatSpec%3E", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.TopLevel%3CVConcatSpec%3E", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.TopLevel%3CHConcatSpec%3E", { _ | Dyn } ]
            ],
      "definitions.TopoDataFormat" =
        {
            feature
              | String
              | doc m%"
                The name of the TopoJSON object set to convert to a GeoJSON feature collection.
                For example, in a map of the world, there may be an object set named `"countries"`.
                Using the feature property, we can extract this set and generate a GeoJSON feature object for each country.
              "%
              | optional,
            mesh
              | String
              | doc m%"
                The name of the TopoJSON object set to convert to mesh.
                Similar to the `feature` option, `mesh` extracts a named TopoJSON object set.
                  Unlike the `feature` option, the corresponding geo data is returned as a single, unified mesh instance, not as individual GeoJSON features.
                Extracting a mesh is useful for more efficiently drawing borders or other geographic elements that you do not need to associate with specific regions such as individual countries, states or counties.
              "%
              | optional,
            parse
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'auto |] ],
                  { _ | Dyn }
                ]
              | doc m%%"
                If set to auto (the default), perform automatic type inference to determine the desired data types.
                Alternatively, a parsing directive object can be provided for explicit data types. Each property of the object corresponds to a field name, and the value to the desired data type (one of `"number"`, `"boolean"` or `"date"`).
                For example, `"parse": {"modified_on": "date"}` parses the `modified_on` field in each input record a Date value.
                
                For `"date"`, we parse data based using Javascript's [`Date.parse()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/parse).
                For Specific date formats can be provided (e.g., `{foo: 'date:"%m%d%Y"'}`), using the [d3-time-format syntax](https://github.com/d3/d3-time-format#locale_format). UTC date format parsing is supported similarly (e.g., `{foo: 'utc:"%m%d%Y"'}`). See more about [UTC time](timeunit.html#utc)
              "%%
              | optional,
            type
              | std.enum.TagOrString
              | [| 'topojson |]
              | doc m%"
                Type of input data: `"json"`, `"csv"`, `"tsv"`.
                The default format type is determined by the extension of the file URL.
                If no extension is detected, `"json"` will be used by default.
              "%
              | optional,
          },
      "definitions.Transform" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.FilterTransform", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.CalculateTransform", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.LookupTransform", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.BinTransform", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.TimeUnitTransform", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.AggregateTransform", { _ | Dyn } ]
            ],
      "definitions.Type" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'nominal, 'temporal, 'ordinal, 'quantitative |]
            ],
      "definitions.UrlData" =
        {
            format
              | refs."definitions.DataFormat"
              | doc "An object that specifies the format for parsing the data file."
              | optional,
            url
              | String
              | doc m%"
                An URL from which to load the data set. Use the `format.type` property
                to ensure the loaded data is correctly parsed.
              "%,
          },
      "definitions.UtcMultiTimeUnit" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'utcsecondsmilliseconds,
                'utcminutesseconds,
                'utchoursminutesseconds,
                'utchoursminutes,
                'utcmonthdate,
                'utcquartermonth,
                'utcyearmonthdatehoursminutesseconds,
                'utcyearmonthdatehoursminutes,
                'utcyearmonthdatehours,
                'utcyearmonthdate,
                'utcyearmonth,
                'utcyearquartermonth,
                'utcyearquarter
              |]
            ],
      "definitions.UtcSingleTimeUnit" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'utcmilliseconds,
                'utcseconds,
                'utcminutes,
                'utchours,
                'utcdate,
                'utcday,
                'utcmonth,
                'utcquarter,
                'utcyear
              |]
            ],
      "definitions.VConcatSpec" =
        {
            data
              | refs."definitions.Data"
              | doc "An object describing the data source"
              | optional,
            description
              | String
              | doc "Description of this mark for commenting purpose."
              | optional,
            name
              | String
              | doc "Name of the visualization for later reference."
              | optional,
            resolve
              | refs."definitions.Resolve"
              | { _ | Dyn }
              | doc "Scale, axis, and legend resolutions for vertically concatenated charts."
              | optional,
            title
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.TitleParams", { _ | Dyn } ]
                ]
              | doc "Title for the plot."
              | optional,
            transform
              | Array refs."definitions.Transform"
              | doc "An array of data transformations such as filter and new field calculation."
              | optional,
            vconcat
              | Array refs."definitions.Spec"
              | doc "A list of views that should be concatenated and put into a column.",
          },
      "definitions.ValueDef" =
        {
            value
              | std.contract.any_of [ Bool, Number, String ]
              | doc "A constant value in visual domain (e.g., `\"red\"` / \"#0099ff\" for color, values between `0` to `1` for opacity).",
          },
      "definitions.VerticalAlign" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'bottom, 'middle, 'top |] ],
      "definitions.VgAxisConfig" =
        {
            bandPosition
              | Number
              | doc "An interpolation fraction indicating where, for `band` scales, axis ticks should be positioned. A value of `0` places ticks at the left edge of their bands. A value of `0.5` places ticks in the middle of their bands."
              | optional,
            domain
              | Bool
              | doc m%"
                A boolean flag indicating if the domain (the axis baseline) should be included as part of the axis.
                
                __Default value:__ `true`
              "%
              | optional,
            domainColor
              | String
              | doc m%"
                Color of axis domain line.
                
                __Default value:__  (none, using Vega default).
              "%
              | optional,
            domainWidth
              | Number
              | doc m%"
                Stroke width of axis domain line
                
                __Default value:__  (none, using Vega default).
              "%
              | optional,
            grid
              | Bool
              | doc m%"
                A boolean flag indicating if grid lines should be included as part of the axis
                
                __Default value:__ `true` for [continuous scales](scale.html#continuous) that are not binned; otherwise, `false`.
              "%
              | optional,
            gridColor | String | doc "Color of gridlines." | optional,
            gridDash
              | Array Number
              | doc "The offset (in pixels) into which to begin drawing with the grid dash array."
              | optional,
            gridOpacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The stroke opacity of grid (value between [0,1])
                
                __Default value:__ (`1` by default)
              "%
              | optional,
            gridWidth
              | js2n.number.Minimum 0
              | doc "The grid width, in pixels."
              | optional,
            labelAngle
              | js2n.number.Maximum 360
              | js2n.number.Minimum (-360)
              | doc m%"
                The rotation angle of the axis labels.
                
                __Default value:__ `-90` for nominal and ordinal fields; `0` otherwise.
              "%
              | optional,
            labelBound
              | std.contract.any_of [ Bool, Number ]
              | doc m%"
                Indicates if labels should be hidden if they exceed the axis range. If `false `(the default) no bounds overlap analysis is performed. If `true`, labels will be hidden if they exceed the axis range by more than 1 pixel. If this property is a number, it specifies the pixel tolerance: the maximum amount by which a label bounding box may exceed the axis range.
                
                __Default value:__ `false`.
              "%
              | optional,
            labelColor
              | String
              | doc "The color of the tick label, can be in hex color code or regular color name."
              | optional,
            labelFlush
              | std.contract.any_of [ Bool, Number ]
              | doc m%"
                Indicates if the first and last axis labels should be aligned flush with the scale range. Flush alignment for a horizontal axis will left-align the first label and right-align the last label. For vertical axes, bottom and top text baselines are applied instead. If this property is a number, it also indicates the number of pixels by which to offset the first and last labels; for example, a value of 2 will flush-align the first and last labels and also push them 2 pixels outward from the center of the axis. The additional adjustment can sometimes help the labels better visually group with corresponding axis ticks.
                
                __Default value:__ `true` for axis of a continuous x-scale. Otherwise, `false`.
              "%
              | optional,
            labelFont | String | doc "The font of the tick label." | optional,
            labelFontSize
              | js2n.number.Minimum 0
              | doc "The font size of the label, in pixels."
              | optional,
            labelLimit
              | Number
              | doc "Maximum allowed pixel width of axis tick labels."
              | optional,
            labelOverlap
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence [ std.enum.TagOrString, [| 'parity |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'greedy |] ]
                ]
              | doc m%"
                The strategy to use for resolving overlap of axis labels. If `false` (the default), no overlap reduction is attempted. If set to `true` or `"parity"`, a strategy of removing every other label is used (this works well for standard linear axes). If set to `"greedy"`, a linear scan of the labels is performed, removing any labels that overlaps with the last visible label (this often works better for log-scaled axes).
                
                __Default value:__ `true` for non-nominal fields with non-log scales; `"greedy"` for log scales; otherwise `false`.
              "%
              | optional,
            labelPadding
              | Number
              | doc "The padding, in pixels, between axis and text labels."
              | optional,
            labels
              | Bool
              | doc m%"
                A boolean flag indicating if labels should be included as part of the axis.
                
                __Default value:__  `true`.
              "%
              | optional,
            maxExtent
              | Number
              | doc m%"
                The maximum extent in pixels that axis ticks and labels should use. This determines a maximum offset value for axis titles.
                
                __Default value:__ `undefined`.
              "%
              | optional,
            minExtent
              | Number
              | doc m%"
                The minimum extent in pixels that axis ticks and labels should use. This determines a minimum offset value for axis titles.
                
                __Default value:__ `30` for y-axis; `undefined` for x-axis.
              "%
              | optional,
            tickColor | String | doc "The color of the axis's tick." | optional,
            tickRound
              | Bool
              | doc "Boolean flag indicating if pixel position values should be rounded to the nearest integer."
              | optional,
            tickSize
              | js2n.number.Minimum 0
              | doc "The size in pixels of axis ticks."
              | optional,
            tickWidth
              | js2n.number.Minimum 0
              | doc "The width, in pixels, of ticks."
              | optional,
            ticks
              | Bool
              | doc "Boolean value that determines whether the axis should include ticks."
              | optional,
            titleAlign
              | String
              | doc "Horizontal text alignment of axis titles."
              | optional,
            titleAngle
              | Number
              | doc "Angle in degrees of axis titles."
              | optional,
            titleBaseline
              | String
              | doc "Vertical text baseline for axis titles."
              | optional,
            titleColor
              | String
              | doc "Color of the title, can be in hex color code or regular color name."
              | optional,
            titleFont
              | String
              | doc "Font of the title. (e.g., `\"Helvetica Neue\"`)."
              | optional,
            titleFontSize
              | js2n.number.Minimum 0
              | doc "Font size of the title."
              | optional,
            titleFontWeight
              | std.contract.any_of [ Number, String ]
              | doc "Font weight of the title. (e.g., `\"bold\"`)."
              | optional,
            titleLimit
              | Number
              | doc "Maximum allowed pixel width of axis titles."
              | optional,
            titleMaxLength
              | Number
              | doc "Max length for axis title if the title is automatically generated from the field's description."
              | optional,
            titlePadding
              | Number
              | doc "The padding, in pixels, between title and axis."
              | optional,
            titleX
              | Number
              | doc "X-coordinate of the axis title relative to the axis group."
              | optional,
            titleY
              | Number
              | doc "Y-coordinate of the axis title relative to the axis group."
              | optional,
          },
      "definitions.VgBinding" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.VgCheckboxBinding", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.VgRadioBinding", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.VgSelectBinding", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.VgRangeBinding", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.VgGenericBinding", { _ | Dyn } ]
            ],
      "definitions.VgCheckboxBinding" =
        {
            element | String | optional,
            input | std.enum.TagOrString | [| 'checkbox |],
          },
      "definitions.VgEventStream" = js2n.Always,
      "definitions.VgGenericBinding" =
        { element | String | optional, input | String, },
      "definitions.VgMarkConfig" =
        {
            align
              | refs."definitions.HorizontalAlign"
              | String
              | doc "The horizontal alignment of the text. One of `\"left\"`, `\"right\"`, `\"center\"`."
              | optional,
            angle
              | js2n.number.Maximum 360
              | js2n.number.Minimum 0
              | doc "The rotation angle of the text, in degrees."
              | optional,
            baseline
              | refs."definitions.VerticalAlign"
              | String
              | doc m%"
                The vertical alignment of the text. One of `"top"`, `"middle"`, `"bottom"`.
                
                __Default value:__ `"middle"`
              "%
              | optional,
            dx
              | Number
              | doc "The horizontal offset, in pixels, between the text label and its anchor point. The offset is applied after rotation by the _angle_ property."
              | optional,
            dy
              | Number
              | doc "The vertical offset, in pixels, between the text label and its anchor point. The offset is applied after rotation by the _angle_ property."
              | optional,
            fill
              | String
              | doc m%"
                Default Fill Color.  This has higher precedence than config.color
                
                __Default value:__ (None)
              "%
              | optional,
            fillOpacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The fill opacity (value between [0,1]).
                
                __Default value:__ `1`
              "%
              | optional,
            font
              | String
              | doc "The typeface to set the text in (e.g., `\"Helvetica Neue\"`)."
              | optional,
            fontSize
              | js2n.number.Minimum 0
              | doc "The font size, in pixels."
              | optional,
            fontStyle
              | refs."definitions.FontStyle"
              | String
              | doc "The font style (e.g., `\"italic\"`)."
              | optional,
            fontWeight
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FontWeight", String ],
                  std.contract.Sequence
                    [ refs."definitions.FontWeightNumber", Number ]
                ]
              | doc "The font weight (e.g., `\"bold\"`)."
              | optional,
            interpolate
              | refs."definitions.Interpolate"
              | String
              | doc m%"
                The line interpolation method to use for line and area marks. One of the following:
                - `"linear"`: piecewise linear segments, as in a polyline.
                - `"linear-closed"`: close the linear segments to form a polygon.
                - `"step"`: alternate between horizontal and vertical segments, as in a step function.
                - `"step-before"`: alternate between vertical and horizontal segments, as in a step function.
                - `"step-after"`: alternate between horizontal and vertical segments, as in a step function.
                - `"basis"`: a B-spline, with control point duplication on the ends.
                - `"basis-open"`: an open B-spline; may not intersect the start or end.
                - `"basis-closed"`: a closed B-spline, as in a loop.
                - `"cardinal"`: a Cardinal spline, with control point duplication on the ends.
                - `"cardinal-open"`: an open Cardinal spline; may not intersect the start or end, but will intersect other control points.
                - `"cardinal-closed"`: a closed Cardinal spline, as in a loop.
                - `"bundle"`: equivalent to basis, except the tension parameter is used to straighten the spline.
                - `"monotone"`: cubic interpolation that preserves monotonicity in y.
              "%
              | optional,
            limit
              | Number
              | doc "The maximum length of the text mark in pixels (default 0, indicating no limit). The text value will be automatically truncated if the rendered size exceeds the limit."
              | optional,
            opacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The overall opacity (value between [0,1]).
                
                __Default value:__ `0.7` for non-aggregate plots with `point`, `tick`, `circle`, or `square` marks or layered `bar` charts and `1` otherwise.
              "%
              | optional,
            orient
              | refs."definitions.Orient"
              | String
              | doc m%"
                The orientation of a non-stacked bar, tick, area, and line charts.
                The value is either horizontal (default) or vertical.
                - For bar, rule and tick, this determines whether the size of the bar and tick
                should be applied to x or y dimension.
                - For area, this property determines the orient property of the Vega output.
                - For line, this property determines the sort order of the points in the line
                if `config.sortLineBy` is not specified.
                For stacked charts, this is always determined by the orientation of the stack;
                therefore explicitly specified value will be ignored.
              "%
              | optional,
            radius
              | js2n.number.Minimum 0
              | doc "Polar coordinate radial offset, in pixels, of the text label from the origin determined by the `x` and `y` properties."
              | optional,
            shape
              | String
              | doc m%"
                The default symbol shape to use. One of: `"circle"` (default), `"square"`, `"cross"`, `"diamond"`, `"triangle-up"`, or `"triangle-down"`, or a custom SVG path.
                
                __Default value:__ `"circle"`
              "%
              | optional,
            size
              | js2n.number.Minimum 0
              | doc m%"
                The pixel area each the point/circle/square.
                For example: in the case of circles, the radius is determined in part by the square root of the size value.
                
                __Default value:__ `30`
              "%
              | optional,
            stroke
              | String
              | doc m%"
                Default Stroke Color.  This has higher precedence than config.color
                
                __Default value:__ (None)
              "%
              | optional,
            strokeDash
              | Array Number
              | doc "An array of alternating stroke, space lengths for creating dashed or dotted lines."
              | optional,
            strokeDashOffset
              | Number
              | doc "The offset (in pixels) into which to begin drawing with the stroke dash array."
              | optional,
            strokeOpacity
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                The stroke opacity (value between [0,1]).
                
                __Default value:__ `1`
              "%
              | optional,
            strokeWidth
              | js2n.number.Minimum 0
              | doc "The stroke width, in pixels."
              | optional,
            tension
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc "Depending on the interpolation type, sets the tension parameter (for line and area marks)."
              | optional,
            text
              | String
              | doc "Placeholder text if the `text` channel is not specified"
              | optional,
            theta
              | Number
              | doc "Polar coordinate angle, in radians, of the text label from the origin determined by the `x` and `y` properties. Values for `theta` follow the same convention of `arc` mark `startAngle` and `endAngle` properties: angles are measured in radians, with `0` indicating \"north\"."
              | optional,
          },
      "definitions.VgRadioBinding" =
        {
            element | String | optional,
            input | std.enum.TagOrString | [| 'radio |],
            options | Array String,
          },
      "definitions.VgRangeBinding" =
        {
            element | String | optional,
            input | std.enum.TagOrString | [| 'range |],
            max | Number | optional,
            min | Number | optional,
            step | Number | optional,
          },
      "definitions.VgScheme" =
        {
            count | Number | optional,
            extent | Array Number | optional,
            scheme | String,
          },
      "definitions.VgSelectBinding" =
        {
            element | String | optional,
            input | std.enum.TagOrString | [| 'select |],
            options | Array String,
          },
      "definitions.VgTitleConfig" =
        {
            anchor
              | refs."definitions.Anchor"
              | String
              | doc m%"
                The anchor position for placing the title. One of `"start"`, `"middle"`, or `"end"`. For example, with an orientation of top these anchor positions map to a left-, center-, or right-aligned title.
                
                __Default value:__ `"middle"` for [single](spec.html) and [layered](layer.html) views.
                `"start"` for other composite views.
                
                __Note:__ [For now](https://github.com/vega/vega-lite/issues/2875), `anchor` is only customizable only for [single](spec.html) and [layered](layer.html) views.  For other composite views, `anchor` is always `"start"`.
              "%
              | optional,
            angle | Number | doc "Angle in degrees of title text." | optional,
            baseline
              | refs."definitions.VerticalAlign"
              | String
              | doc "Vertical text baseline for title text."
              | optional,
            color | String | doc "Text color for title text." | optional,
            font | String | doc "Font name for title text." | optional,
            fontSize
              | js2n.number.Minimum 0
              | doc m%"
                Font size in pixels for title text.
                
                __Default value:__ `10`.
              "%
              | optional,
            fontWeight
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.FontWeight", String ],
                  std.contract.Sequence
                    [ refs."definitions.FontWeightNumber", Number ]
                ]
              | doc "Font weight for title text."
              | optional,
            limit
              | js2n.number.Minimum 0
              | doc "The maximum allowed length in pixels of legend labels."
              | optional,
            offset
              | Number
              | doc "Offset in pixels of the title from the chart body and axes."
              | optional,
            orient
              | refs."definitions.TitleOrient"
              | String
              | doc "Default title orientation (\"top\", \"bottom\", \"left\", or \"right\")"
              | optional,
          },
      "definitions.ViewConfig" =
        {
            clip | Bool | doc "Whether the view should be clipped." | optional,
            fill
              | String
              | doc m%"
                The fill color.
                
                __Default value:__ (none)
              "%
              | optional,
            fillOpacity
              | Number
              | doc m%"
                The fill opacity (value between [0,1]).
                
                __Default value:__ (none)
              "%
              | optional,
            height
              | Number
              | doc m%"
                The default height of the single plot or each plot in a trellis plot when the visualization has a continuous (non-ordinal) y-scale with `rangeStep` = `null`.
                
                __Default value:__ `200`
              "%
              | optional,
            stroke
              | String
              | doc m%"
                The stroke color.
                
                __Default value:__ (none)
              "%
              | optional,
            strokeDash
              | Array Number
              | doc m%"
                An array of alternating stroke, space lengths for creating dashed or dotted lines.
                
                __Default value:__ (none)
              "%
              | optional,
            strokeDashOffset
              | Number
              | doc m%"
                The offset (in pixels) into which to begin drawing with the stroke dash array.
                
                __Default value:__ (none)
              "%
              | optional,
            strokeOpacity
              | Number
              | doc m%"
                The stroke opacity (value between [0,1]).
                
                __Default value:__ (none)
              "%
              | optional,
            strokeWidth
              | Number
              | doc m%"
                The stroke width, in pixels.
                
                __Default value:__ (none)
              "%
              | optional,
            width
              | Number
              | doc m%"
                The default width of the single plot or each plot in a trellis plot when the visualization has a continuous (non-ordinal) x-scale or ordinal x-scale with `rangeStep` = `null`.
                
                __Default value:__ `200`
              "%
              | optional,
          },
    }
    in
  refs."definitions.TopLevelExtendedSpec"