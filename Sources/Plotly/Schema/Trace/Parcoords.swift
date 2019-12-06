/// Parallel coordinates for multidimensional exploratory data analysis. The samples are specified in `dimensions`. The colors are set in `line.color`.
public struct Parcoords: Trace {
    public let type: String = "parcoords"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    public enum Visible: String, Encodable {
        case yes
        case no
        case legendonly
    }
    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    public var visible: Visible?

    /// Sets the trace name. The trace name appear as the legend item and on hover.
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    public var uid: String?

    /// Assigns id labels to each datum. These ids for object constancy of data points during animation. Should be an array of strings, not numbers or any other type.
    public var ids: [Double]?

    /// Assigns extra data each datum. This may be useful when listening to hover, click and selection events. Note that, *scatter* traces also appends customdata items in the markers DOM elements
    public var customdata: [Double]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text` `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the index or key of the `meta` item in question. To access trace `meta` in layout attributes, use `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: Anything?

    public struct Stream: Encodable {
        /// The stream id number links a data trace on a plot with a stream. See https://plot.ly/settings for more details.
        public var token: String?
    
        /// Sets the maximum number of points to keep on the plots from an incoming stream. If `maxpoints` is set to *50*, only the newest 50 points will be displayed on the plot.
        public var maxpoints: Double?
    
        public init(token: String? = nil, maxpoints: Double? = nil) {
            self.token = token
            self.maxpoints = maxpoints
        }
    }
    public var stream: Stream?

    public struct Transforms: Encodable {
        public struct Items: Encodable {
            /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
            public struct Transform: Encodable {
                public init() {
                }
            }
            /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
            public var transform: Transform?
        
            public init(transform: Transform? = nil) {
                self.transform = transform
            }
        }
        public var items: Items?
    
        public init(items: Items? = nil) {
            self.items = items
        }
    }
    public var transforms: Transforms?

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords` traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`. Defaults to `layout.uirevision`. Note that other user-driven trace attribute changes are controlled by `layout` attributes: `trace.visible` is controlled by `layout.legend.uirevision`, `selectedpoints` is controlled by `layout.selectionrevision`, and `colorbar.(x|y)` (accessible with `config: {editable: true}`) is controlled by `layout.editrevision`. Trace changes are tracked by `uid`, which only falls back on trace index if no `uid` is provided. So if your app can add/remove traces before the end of the `data` array, such that the same trace has a different index, you can still preserve user-driven changes if you give each trace a `uid` that stays with it as it moves.
    public var uirevision: Anything?

    public struct Domain: Encodable {
        /// Sets the horizontal domain of this parcoords trace (in plot fraction).
        public var x: InfoArray?
    
        /// Sets the vertical domain of this parcoords trace (in plot fraction).
        public var y: InfoArray?
    
        /// If there is a layout grid, use the domain for this row in the grid for this parcoords trace .
        public var row: Int?
    
        /// If there is a layout grid, use the domain for this column in the grid for this parcoords trace .
        public var column: Int?
    
        public init(x: InfoArray? = nil, y: InfoArray? = nil, row: Int? = nil, column: Int? = nil) {
            self.x = x
            self.y = y
            self.row = row
            self.column = column
        }
    }
    public var domain: Domain?

    /// Sets the angle of the labels with respect to the horizontal. For example, a `tickangle` of -90 draws the labels vertically. Tilted labels with *labelangle* may be positioned better inside margins when `labelposition` is set to *bottom*.
    public var labelangle: Angle?

    /// Specifies the location of the `label`. *top* positions labels above, next to the title *bottom* positions labels below the graph Tilted labels with *labelangle* may be positioned better inside margins when `labelposition` is set to *bottom*.
    public enum Labelside: String, Encodable {
        case top
        case bottom
    }
    /// Specifies the location of the `label`. *top* positions labels above, next to the title *bottom* positions labels below the graph Tilted labels with *labelangle* may be positioned better inside margins when `labelposition` is set to *bottom*.
    public var labelside: Labelside?

    /// Sets the font for the `dimension` labels.
    public struct Labelfont: Encodable {
        /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
        public var family: String?
    
        public var size: Double?
    
        public var color: Color?
    
        public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
            self.family = family
            self.size = size
            self.color = color
        }
    }
    /// Sets the font for the `dimension` labels.
    public var labelfont: Labelfont?

    /// Sets the font for the `dimension` tick values.
    public struct Tickfont: Encodable {
        /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
        public var family: String?
    
        public var size: Double?
    
        public var color: Color?
    
        public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
            self.family = family
            self.size = size
            self.color = color
        }
    }
    /// Sets the font for the `dimension` tick values.
    public var tickfont: Tickfont?

    /// Sets the font for the `dimension` range values.
    public struct Rangefont: Encodable {
        /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
        public var family: String?
    
        public var size: Double?
    
        public var color: Color?
    
        public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
            self.family = family
            self.size = size
            self.color = color
        }
    }
    /// Sets the font for the `dimension` range values.
    public var rangefont: Rangefont?

    public struct Dimensions: Encodable {
        public struct Items: Encodable {
            /// The dimensions (variables) of the parallel coordinates chart. 2..60 dimensions are supported.
            public struct Dimension: Encodable {
                /// The shown name of the dimension.
                public var label: String?
            
                /// Sets the values at which ticks on this axis appear.
                public var tickvals: [Double]?
            
                /// Sets the text displayed at the ticks position via `tickvals`.
                public var ticktext: [Double]?
            
                /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
                public var tickformat: String?
            
                /// Shows the dimension when set to `true` (the default). Hides the dimension for `false`.
                public var visible: Bool?
            
                /// The domain range that represents the full, shown axis extent. Defaults to the `values` extent. Must be an array of `[fromValue, toValue]` with finite numbers as elements.
                public var range: InfoArray?
            
                /// The domain range to which the filter on the dimension is constrained. Must be an array of `[fromValue, toValue]` with `fromValue <= toValue`, or if `multiselect` is not disabled, you may give an array of arrays, where each inner array is `[fromValue, toValue]`.
                public var constraintrange: InfoArray?
            
                /// Do we allow multiple selection ranges or just a single range?
                public var multiselect: Bool?
            
                /// Dimension values. `values[n]` represents the value of the `n`th point in the dataset, therefore the `values` vector for all dimensions must be the same (longer vectors will be truncated). Each value must be a finite number.
                public var values: [Double]?
            
                /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                public var name: String?
            
                /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                public var templateitemname: String?
            
                /// Sets the source reference on plot.ly for  tickvals .
                public var tickvalssrc: String?
            
                /// Sets the source reference on plot.ly for  ticktext .
                public var ticktextsrc: String?
            
                /// Sets the source reference on plot.ly for  values .
                public var valuessrc: String?
            
                public init(label: String? = nil, tickvals: [Double]? = nil, ticktext: [Double]? = nil, tickformat: String? = nil, visible: Bool? = nil, range: InfoArray? = nil, constraintrange: InfoArray? = nil, multiselect: Bool? = nil, values: [Double]? = nil, name: String? = nil, templateitemname: String? = nil, tickvalssrc: String? = nil, ticktextsrc: String? = nil, valuessrc: String? = nil) {
                    self.label = label
                    self.tickvals = tickvals
                    self.ticktext = ticktext
                    self.tickformat = tickformat
                    self.visible = visible
                    self.range = range
                    self.constraintrange = constraintrange
                    self.multiselect = multiselect
                    self.values = values
                    self.name = name
                    self.templateitemname = templateitemname
                    self.tickvalssrc = tickvalssrc
                    self.ticktextsrc = ticktextsrc
                    self.valuessrc = valuessrc
                }
            }
            /// The dimensions (variables) of the parallel coordinates chart. 2..60 dimensions are supported.
            public var dimension: Dimension?
        
            public init(dimension: Dimension? = nil) {
                self.dimension = dimension
            }
        }
        public var items: Items?
    
        public init(items: Items? = nil) {
            self.items = items
        }
    }
    public var dimensions: Dimensions?

    public struct Line: Encodable {
        /// Sets thelinecolor. It accepts either a specific color or an array of numbers that are mapped to the colorscale relative to the max and min values of the array or relative to `line.cmin` and `line.cmax` if set.
        public var color: Color?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in `line.color`) or the bounds set in `line.cmin` and `line.cmax`  Has an effect only if in `line.color`is set to a numerical array. Defaults to `false` when `line.cmin` and `line.cmax` are set by the user.
        public var cauto: Bool?
    
        /// Sets the lower bound of the color domain. Has an effect only if in `line.color`is set to a numerical array. Value should have the same units as in `line.color` and if set, `line.cmax` must be set as well.
        public var cmin: Double?
    
        /// Sets the upper bound of the color domain. Has an effect only if in `line.color`is set to a numerical array. Value should have the same units as in `line.color` and if set, `line.cmin` must be set as well.
        public var cmax: Double?
    
        /// Sets the mid-point of the color domain by scaling `line.cmin` and/or `line.cmax` to be equidistant to this point. Has an effect only if in `line.color`is set to a numerical array. Value should have the same units as in `line.color`. Has no effect when `line.cauto` is `false`.
        public var cmid: Double?
    
        /// Sets the colorscale. Has an effect only if in `line.color`is set to a numerical array. The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale in color space, use`line.cmin` and `line.cmax`. Alternatively, `colorscale` may be a palette name string of the following list: Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
        public var colorscale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `line.colorscale`. Has an effect only if in `line.color`is set to a numerical array. In case `colorscale` is unspecified or `autocolorscale` is true, the default  palette will be chosen according to whether numbers in the `color` array are all positive, all negative or mixed.
        public var autocolorscale: Bool?
    
        /// Reverses the color mapping if true. Has an effect only if in `line.color`is set to a numerical array. If true, `line.cmin` will correspond to the last color in the array and `line.cmax` will correspond to the first color.
        public var reversescale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. Has an effect only if in `line.color`is set to a numerical array.
        public var showscale: Bool?
    
        public struct Colorbar: Encodable {
            /// Determines whether this color bar's thickness (i.e. the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*. Use `thickness` to set the value.
            public enum Thicknessmode: String, Encodable {
                case fraction
                case pixels
            }
            /// Determines whether this color bar's thickness (i.e. the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*. Use `thickness` to set the value.
            public var thicknessmode: Thicknessmode?
        
            /// Sets the thickness of the color bar This measure excludes the size of the padding, ticks and labels.
            public var thickness: Double?
        
            /// Determines whether this color bar's length (i.e. the measure in the color variation direction) is set in units of plot *fraction* or in *pixels. Use `len` to set the value.
            public enum Lenmode: String, Encodable {
                case fraction
                case pixels
            }
            /// Determines whether this color bar's length (i.e. the measure in the color variation direction) is set in units of plot *fraction* or in *pixels. Use `len` to set the value.
            public var lenmode: Lenmode?
        
            /// Sets the length of the color bar This measure excludes the padding of both ends. That is, the color bar length is this length minus the padding on both ends.
            public var len: Double?
        
            /// Sets the x position of the color bar (in plot fraction).
            public var x: Double?
        
            /// Sets this color bar's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the color bar.
            public enum Xanchor: String, Encodable {
                case left
                case center
                case right
            }
            /// Sets this color bar's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the color bar.
            public var xanchor: Xanchor?
        
            /// Sets the amount of padding (in px) along the x direction.
            public var xpad: Double?
        
            /// Sets the y position of the color bar (in plot fraction).
            public var y: Double?
        
            /// Sets this color bar's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the color bar.
            public enum Yanchor: String, Encodable {
                case top
                case middle
                case bottom
            }
            /// Sets this color bar's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the color bar.
            public var yanchor: Yanchor?
        
            /// Sets the amount of padding (in px) along the y direction.
            public var ypad: Double?
        
            /// Sets the axis line color.
            public var outlinecolor: Color?
        
            /// Sets the width (in px) of the axis line.
            public var outlinewidth: Double?
        
            /// Sets the axis line color.
            public var bordercolor: Color?
        
            /// Sets the width (in px) or the border enclosing this color bar.
            public var borderwidth: Double?
        
            /// Sets the color of padded area.
            public var bgcolor: Color?
        
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            public enum Tickmode: String, Encodable {
                case auto
                case linear
                case array
            }
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            public var tickmode: Tickmode?
        
            /// Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.
            public var nticks: Int?
        
            /// Sets the placement of the first tick on this axis. Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date data. If the axis `type` is *category*, it should be a number, using the scale where each category is assigned a serial number from zero in the order it appears.
            public var tick0: Anything?
        
            /// Sets the step in-between ticks on this axis. Use with `tick0`. Must be a positive number, or special strings available to *log* and *date* axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ... set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is a positive number, gives ticks linearly spaced in value (but not position). For example `tick0` = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1* and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also has special values *M<n>* gives ticks spaced by a number of months. `n` must be a positive integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick` to *M3*. To set ticks every 4 years, set `dtick` to *M48*
            public var dtick: Anything?
        
            /// Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            public var tickvals: [Double]?
        
            /// Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            public var ticktext: [Double]?
        
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            public enum Ticks: String, Encodable {
                case outside
                case inside
                case none
            }
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            public var ticks: Ticks?
        
            /// Sets the tick length (in px).
            public var ticklen: Double?
        
            /// Sets the tick width (in px).
            public var tickwidth: Double?
        
            /// Sets the tick color.
            public var tickcolor: Color?
        
            /// Determines whether or not the tick labels are drawn.
            public var showticklabels: Bool?
        
            /// Sets the color bar's tick label font
            public struct Tickfont: Encodable {
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                public var family: String?
            
                public var size: Double?
            
                public var color: Color?
            
                public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
                    self.family = family
                    self.size = size
                    self.color = color
                }
            }
            /// Sets the color bar's tick label font
            public var tickfont: Tickfont?
        
            /// Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.
            public var tickangle: Angle?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var tickformat: String?
        
            public struct Tickformatstops: Encodable {
                public struct Items: Encodable {
                    public struct Tickformatstop: Encodable {
                        /// Determines whether or not this stop is used. If `false`, this stop is ignored even within its `dtickrange`.
                        public var enabled: Bool?
                    
                        /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                        public var dtickrange: InfoArray?
                    
                        /// string - dtickformat for described zoom level, the same as *tickformat*
                        public var value: String?
                    
                        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                        public var name: String?
                    
                        /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                        public var templateitemname: String?
                    
                        public init(enabled: Bool? = nil, dtickrange: InfoArray? = nil, value: String? = nil, name: String? = nil, templateitemname: String? = nil) {
                            self.enabled = enabled
                            self.dtickrange = dtickrange
                            self.value = value
                            self.name = name
                            self.templateitemname = templateitemname
                        }
                    }
                    public var tickformatstop: Tickformatstop?
                
                    public init(tickformatstop: Tickformatstop? = nil) {
                        self.tickformatstop = tickformatstop
                    }
                }
                public var items: Items?
            
                public init(items: Items? = nil) {
                    self.items = items
                }
            }
            public var tickformatstops: Tickformatstops?
        
            /// Sets a tick label prefix.
            public var tickprefix: String?
        
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            public enum Showtickprefix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            public var showtickprefix: Showtickprefix?
        
            /// Sets a tick label suffix.
            public var ticksuffix: String?
        
            /// Same as `showtickprefix` but for tick suffixes.
            public enum Showticksuffix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// Same as `showtickprefix` but for tick suffixes.
            public var showticksuffix: Showticksuffix?
        
            /// If "true", even 4-digit integers are separated
            public var separatethousands: Bool?
        
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            public enum Exponentformat: String, Encodable {
                case none
                case e
                case E
                case power
                case SI
                case B
            }
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            public var exponentformat: Exponentformat?
        
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            public enum Showexponent: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            public var showexponent: Showexponent?
        
            public struct Title: Encodable {
                /// Sets the title of the color bar. Note that before the existence of `title.text`, the title's contents used to be defined as the `title` attribute itself. This behavior has been deprecated.
                public var text: String?
            
                /// Sets this color bar's title font. Note that the title's font used to be set by the now deprecated `titlefont` attribute.
                public struct Font: Encodable {
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    public var family: String?
                
                    public var size: Double?
                
                    public var color: Color?
                
                    public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
                        self.family = family
                        self.size = size
                        self.color = color
                    }
                }
                /// Sets this color bar's title font. Note that the title's font used to be set by the now deprecated `titlefont` attribute.
                public var font: Font?
            
                /// Determines the location of color bar's title with respect to the color bar. Note that the title's location used to be set by the now deprecated `titleside` attribute.
                public enum Side: String, Encodable {
                    case right
                    case top
                    case bottom
                }
                /// Determines the location of color bar's title with respect to the color bar. Note that the title's location used to be set by the now deprecated `titleside` attribute.
                public var side: Side?
            
                public init(text: String? = nil, font: Font? = nil, side: Side? = nil) {
                    self.text = text
                    self.font = font
                    self.side = side
                }
            }
            public var title: Title?
        
            public struct _Deprecated: Encodable {
                /// Deprecated in favor of color bar's `title.text`. Note that value of color bar's `title` is no longer a simple *string* but a set of sub-attributes.
                public var title: String?
            
                /// Deprecated in favor of color bar's `title.font`.
                public struct Titlefont: Encodable {
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    public var family: String?
                
                    public var size: Double?
                
                    public var color: Color?
                
                    public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
                        self.family = family
                        self.size = size
                        self.color = color
                    }
                }
                /// Deprecated in favor of color bar's `title.font`.
                public var titlefont: Titlefont?
            
                /// Deprecated in favor of color bar's `title.side`.
                public enum Titleside: String, Encodable {
                    case right
                    case top
                    case bottom
                }
                /// Deprecated in favor of color bar's `title.side`.
                public var titleside: Titleside?
            
                public init(title: String? = nil, titlefont: Titlefont? = nil, titleside: Titleside? = nil) {
                    self.title = title
                    self.titlefont = titlefont
                    self.titleside = titleside
                }
            }
            public var _deprecated: _Deprecated?
        
            /// Sets the source reference on plot.ly for  tickvals .
            public var tickvalssrc: String?
        
            /// Sets the source reference on plot.ly for  ticktext .
            public var ticktextsrc: String?
        
            public init(thicknessmode: Thicknessmode? = nil, thickness: Double? = nil, lenmode: Lenmode? = nil, len: Double? = nil, x: Double? = nil, xanchor: Xanchor? = nil, xpad: Double? = nil, y: Double? = nil, yanchor: Yanchor? = nil, ypad: Double? = nil, outlinecolor: Color? = nil, outlinewidth: Double? = nil, bordercolor: Color? = nil, borderwidth: Double? = nil, bgcolor: Color? = nil, tickmode: Tickmode? = nil, nticks: Int? = nil, tick0: Anything? = nil, dtick: Anything? = nil, tickvals: [Double]? = nil, ticktext: [Double]? = nil, ticks: Ticks? = nil, ticklen: Double? = nil, tickwidth: Double? = nil, tickcolor: Color? = nil, showticklabels: Bool? = nil, tickfont: Tickfont? = nil, tickangle: Angle? = nil, tickformat: String? = nil, tickformatstops: Tickformatstops? = nil, tickprefix: String? = nil, showtickprefix: Showtickprefix? = nil, ticksuffix: String? = nil, showticksuffix: Showticksuffix? = nil, separatethousands: Bool? = nil, exponentformat: Exponentformat? = nil, showexponent: Showexponent? = nil, title: Title? = nil, _deprecated: _Deprecated? = nil, tickvalssrc: String? = nil, ticktextsrc: String? = nil) {
                self.thicknessmode = thicknessmode
                self.thickness = thickness
                self.lenmode = lenmode
                self.len = len
                self.x = x
                self.xanchor = xanchor
                self.xpad = xpad
                self.y = y
                self.yanchor = yanchor
                self.ypad = ypad
                self.outlinecolor = outlinecolor
                self.outlinewidth = outlinewidth
                self.bordercolor = bordercolor
                self.borderwidth = borderwidth
                self.bgcolor = bgcolor
                self.tickmode = tickmode
                self.nticks = nticks
                self.tick0 = tick0
                self.dtick = dtick
                self.tickvals = tickvals
                self.ticktext = ticktext
                self.ticks = ticks
                self.ticklen = ticklen
                self.tickwidth = tickwidth
                self.tickcolor = tickcolor
                self.showticklabels = showticklabels
                self.tickfont = tickfont
                self.tickangle = tickangle
                self.tickformat = tickformat
                self.tickformatstops = tickformatstops
                self.tickprefix = tickprefix
                self.showtickprefix = showtickprefix
                self.ticksuffix = ticksuffix
                self.showticksuffix = showticksuffix
                self.separatethousands = separatethousands
                self.exponentformat = exponentformat
                self.showexponent = showexponent
                self.title = title
                self._deprecated = _deprecated
                self.tickvalssrc = tickvalssrc
                self.ticktextsrc = ticktextsrc
            }
        }
        public var colorbar: Colorbar?
    
        /// Sets a reference to a shared color axis. References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings for these shared color axes are set in the layout, under `layout.coloraxis`, `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        public var coloraxis: SubplotID?
    
        /// Sets the source reference on plot.ly for  color .
        public var colorsrc: String?
    
        public init(color: Color? = nil, cauto: Bool? = nil, cmin: Double? = nil, cmax: Double? = nil, cmid: Double? = nil, colorscale: ColorScale? = nil, autocolorscale: Bool? = nil, reversescale: Bool? = nil, showscale: Bool? = nil, colorbar: Colorbar? = nil, coloraxis: SubplotID? = nil, colorsrc: String? = nil) {
            self.color = color
            self.cauto = cauto
            self.cmin = cmin
            self.cmax = cmax
            self.cmid = cmid
            self.colorscale = colorscale
            self.autocolorscale = autocolorscale
            self.reversescale = reversescale
            self.showscale = showscale
            self.colorbar = colorbar
            self.coloraxis = coloraxis
            self.colorsrc = colorsrc
        }
    }
    public var line: Line?

    /// Sets the source reference on plot.ly for  ids .
    public var idssrc: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customdatasrc: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metasrc: String?

    public init(visible: Visible? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customdata: [Double]? = nil, meta: Anything? = nil, stream: Stream? = nil, transforms: Transforms? = nil, uirevision: Anything? = nil, domain: Domain? = nil, labelangle: Angle? = nil, labelside: Labelside? = nil, labelfont: Labelfont? = nil, tickfont: Tickfont? = nil, rangefont: Rangefont? = nil, dimensions: Dimensions? = nil, line: Line? = nil, idssrc: String? = nil, customdatasrc: String? = nil, metasrc: String? = nil) {
        self.visible = visible
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customdata = customdata
        self.meta = meta
        self.stream = stream
        self.transforms = transforms
        self.uirevision = uirevision
        self.domain = domain
        self.labelangle = labelangle
        self.labelside = labelside
        self.labelfont = labelfont
        self.tickfont = tickfont
        self.rangefont = rangefont
        self.dimensions = dimensions
        self.line = line
        self.idssrc = idssrc
        self.customdatasrc = customdatasrc
        self.metasrc = metasrc
    }
}