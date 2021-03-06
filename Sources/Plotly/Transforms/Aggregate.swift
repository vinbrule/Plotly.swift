
/// **Warning** This is generated code and all changes will be eventually overwritten.
/// See `Sources/Codegen/Readme.md` for more details.


/// Specification of aggregate operation on trace data.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#transformsaggregate), 
///   [JavaScript](https://plot.ly/javascript/reference/#transformsaggregate) or 
///   [R](https://plot.ly/r/reference/#transformsaggregate)
public struct Aggregate: Transform {
    /// Determines whether this aggregate transform is enabled or disabled.
    public var enabled: Bool? = nil

    /// Sets the grouping target to which the aggregation is applied.
    /// 
    /// Data points with matching group values will be coalesced into one point, using the supplied
    /// aggregation functions to reduce data in other data arrays. If a string, `groups` is assumed to
    /// be a reference to a data array in the parent trace object. To aggregate by nested variables, use
    /// *.* to access them. For example, set `groups` to *marker.color* to aggregate about the marker
    /// color array. If an array, `groups` is itself the data array by which we aggregate.
    public var groups: Data<String>? = nil

    public struct Aggregation: Encodable {
        /// A reference to the data array in the parent trace to aggregate.
        /// 
        /// To aggregate by nested variables, use *.* to access them. For example, set `groups` to
        /// *marker.color* to aggregate over the marker color array. The referenced array must already
        /// exist, unless `func` is *count*, and each array may only be referenced once.
        public var target: String? = nil
    
        /// Sets the aggregation function.
        /// 
        /// All values from the linked `target`, corresponding to the same value in the `groups` array, are
        /// collected and reduced by this function. *count* is simply the number of values in the `groups`
        /// array, so does not even require the linked array to exist. *first* (*last*) is just the first
        /// (last) linked value. Invalid values are ignored, so for example in *avg* they do not contribute
        /// to either the numerator or the denominator. Any data type (numeric, date, category) may be
        /// aggregated with any function, even though in certain cases it is unlikely to make sense, for
        /// example a sum of dates or average of categories. *median* will return the average of the two
        /// central values if there is an even count. *mode* will return the first value to reach the
        /// maximum count, in case of a tie. *change* will return the difference between the first and last
        /// linked values. *range* will return the difference between the min and max linked values.
        public enum Function: String, Encodable {
            case count
            case sum
            case avg
            case median
            case mode
            case rms
            case stddev
            case min
            case max
            case first
            case last
            case change
            case range
        }
        /// Sets the aggregation function.
        /// 
        /// All values from the linked `target`, corresponding to the same value in the `groups` array, are
        /// collected and reduced by this function. *count* is simply the number of values in the `groups`
        /// array, so does not even require the linked array to exist. *first* (*last*) is just the first
        /// (last) linked value. Invalid values are ignored, so for example in *avg* they do not contribute
        /// to either the numerator or the denominator. Any data type (numeric, date, category) may be
        /// aggregated with any function, even though in certain cases it is unlikely to make sense, for
        /// example a sum of dates or average of categories. *median* will return the average of the two
        /// central values if there is an even count. *mode* will return the first value to reach the
        /// maximum count, in case of a tie. *change* will return the difference between the first and last
        /// linked values. *range* will return the difference between the min and max linked values.
        public var function: Function? = nil
    
        /// *stddev* supports two formula variants: *sample* (normalize by N-1) and *population* (normalize
        /// by N).
        public enum FunctionMode: String, Encodable {
            case sample
            case population
        }
        /// *stddev* supports two formula variants: *sample* (normalize by N-1) and *population* (normalize
        /// by N).
        public var functionMode: FunctionMode? = nil
    
        /// Determines whether this aggregation function is enabled or disabled.
        public var enabled: Bool? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case target
            case function = "func"
            case functionMode = "funcmode"
            case enabled
        }
        
        /// Creates `Aggregation` object with specified properties.
        /// 
        /// - Parameters:
        ///   - target: A reference to the data array in the parent trace to aggregate.
        ///   - function: Sets the aggregation function.
        ///   - functionMode: *stddev* supports two formula variants: *sample* (normalize by N-1) and
        ///   *population* (normalize by N).
        ///   - enabled: Determines whether this aggregation function is enabled or disabled.
        public init(target: String? = nil, function: Function? = nil, functionMode: FunctionMode? = nil,
                enabled: Bool? = nil) {
            self.target = target
            self.function = function
            self.functionMode = functionMode
            self.enabled = enabled
        }
        
    }
    public var aggregations: [Aggregation]? = nil

    /// Creates `Aggregate` object with specified properties.
    /// 
    /// - Parameters:
    ///   - enabled: Determines whether this aggregate transform is enabled or disabled.
    ///   - groups: Sets the grouping target to which the aggregation is applied.
    ///   - aggregations:
    public init(enabled: Bool? = nil, groups: Data<String>? = nil, aggregations: [Aggregation]? =
            nil) {
        self.enabled = enabled
        self.groups = groups
        self.aggregations = aggregations
    }
    
}