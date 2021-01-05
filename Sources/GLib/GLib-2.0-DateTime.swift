import CGLib

// MARK: - DateTime Record

/// The `DateTimeProtocol` protocol exposes the methods and properties of an underlying `GDateTime` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DateTime`.
/// Alternatively, use `DateTimeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GDateTime` is an opaque structure whose members
/// cannot be accessed directly.
public protocol DateTimeProtocol {
        /// Untyped pointer to the underlying `GDateTime` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDateTime` instance.
    var date_time_ptr: UnsafeMutablePointer<GDateTime>! { get }

}

/// The `DateTimeRef` type acts as a lightweight Swift reference to an underlying `GDateTime` instance.
/// It exposes methods that can operate on this data type through `DateTimeProtocol` conformance.
/// Use `DateTimeRef` only as an `unowned` reference to an existing `GDateTime` instance.
///
/// `GDateTime` is an opaque structure whose members
/// cannot be accessed directly.
public struct DateTimeRef: DateTimeProtocol {
        /// Untyped pointer to the underlying `GDateTime` instance.
    /// For type-safe access, use the generated, typed pointer `date_time_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DateTimeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDateTime>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDateTime>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDateTime>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDateTime>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `DateTimeProtocol`
    @inlinable init<T: DateTimeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GDateTime` corresponding to the given date and time in
    /// the time zone `tz`.
    /// 
    /// The `year` must be between 1 and 9999, `month` between 1 and 12 and `day`
    /// between 1 and 28, 29, 30 or 31 depending on the month and the year.
    /// 
    /// `hour` must be between 0 and 23 and `minute` must be between 0 and 59.
    /// 
    /// `seconds` must be at least 0.0 and must be strictly less than 60.0.
    /// It will be rounded down to the nearest microsecond.
    /// 
    /// If the given time is not representable in the given time zone (for
    /// example, 02:30 on March 14th 2010 in Toronto, due to daylight savings
    /// time) then the time will be rounded up to the nearest existing time
    /// (in this case, 03:00).  If this matters to you then you should verify
    /// the return value for containing the same as the numbers you gave.
    /// 
    /// In the case that the given time is ambiguous in the given time zone
    /// (for example, 01:30 on November 7th 2010 in Toronto, due to daylight
    /// savings time) then the time falling within standard (ie:
    /// non-daylight) time is taken.
    /// 
    /// It not considered a programmer error for the values to this function
    /// to be out of range, but in the case that they are, the function will
    /// return `nil`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable init<TimeZoneT: TimeZoneProtocol>( tz: TimeZoneT, year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) {
        let rv = g_date_time_new(tz.time_zone_ptr, gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given
    /// [ISO 8601 formatted string](https://en.wikipedia.org/wiki/ISO_8601)
    /// `text`. ISO 8601 strings of the form <date><sep><time><tz> are supported, with
    /// some extensions from [RFC 3339](https://tools.ietf.org/html/rfc3339) as
    /// mentioned below.
    /// 
    /// Note that as `GDateTime` "is oblivious to leap seconds", leap seconds information
    /// in an ISO-8601 string will be ignored, so a `23:59:60` time would be parsed as
    /// `23:59:59`.
    /// 
    /// <sep> is the separator and can be either 'T', 't' or ' '. The latter two
    /// separators are an extension from
    /// [RFC 3339](https://tools.ietf.org/html/rfc3339`section`-5.6).
    /// 
    /// <date> is in the form:
    /// 
    /// - `YYYY-MM-DD` - Year/month/day, e.g. 2016-08-24.
    /// - `YYYYMMDD` - Same as above without dividers.
    /// - `YYYY-DDD` - Ordinal day where DDD is from 001 to 366, e.g. 2016-237.
    /// - `YYYYDDD` - Same as above without dividers.
    /// - `YYYY-Www-D` - Week day where ww is from 01 to 52 and D from 1-7,
    ///   e.g. 2016-W34-3.
    /// - `YYYYWwwD` - Same as above without dividers.
    /// 
    /// <time> is in the form:
    /// 
    /// - `hh:mm:`ss(.sss)`` - Hours, minutes, seconds (subseconds), e.g. 22:10:42.123.
    /// - ``hhmmss(.sss)`` - Same as above without dividers.
    /// 
    /// <tz> is an optional timezone suffix of the form:
    /// 
    /// - `Z` - UTC.
    /// - `+hh:mm` or `-hh:mm` - Offset from UTC in hours and minutes, e.g. +12:00.
    /// - `+hh` or `-hh` - Offset from UTC in hours, e.g. +12.
    /// 
    /// If the timezone is not provided in `text` it must be provided in `default_tz`
    /// (this field is otherwise ignored).
    /// 
    /// This call can fail (returning `nil`) if `text` is not a valid ISO 8601
    /// formatted string.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable init<TimeZoneT: TimeZoneProtocol>(iso8601 text: UnsafePointer<gchar>!, defaultTz: TimeZoneT?) {
        let rv = g_date_time_new_from_iso8601(text, defaultTz?.time_zone_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given `GTimeVal` `tv` in the
    /// local time zone.
    /// 
    /// The time contained in a `GTimeVal` is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the
    /// local time offset.
    /// 
    /// This call can fail (returning `nil`) if `tv` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    ///
    /// **new_from_timeval_local is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_unix_local() instead.
    @available(*, deprecated) @inlinable init<TimeValT: TimeValProtocol>(timevalLocal tv: TimeValT) {
        let rv = g_date_time_new_from_timeval_local(tv._ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given `GTimeVal` `tv` in UTC.
    /// 
    /// The time contained in a `GTimeVal` is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC.
    /// 
    /// This call can fail (returning `nil`) if `tv` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    ///
    /// **new_from_timeval_utc is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_unix_utc() instead.
    @available(*, deprecated) @inlinable init<TimeValT: TimeValProtocol>(timevalUTC tv: TimeValT) {
        let rv = g_date_time_new_from_timeval_utc(tv._ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given Unix time `t` in the
    /// local time zone.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC, regardless of the local time offset.
    /// 
    /// This call can fail (returning `nil`) if `t` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable init(unixLocal t: gint64) {
        let rv = g_date_time_new_from_unix_local(t)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given Unix time `t` in UTC.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC.
    /// 
    /// This call can fail (returning `nil`) if `t` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable init(unixUTC t: gint64) {
        let rv = g_date_time_new_from_unix_utc(t)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// the local time zone.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_local()`.
    @inlinable init(local year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) {
        let rv = g_date_time_new_local(gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to this exact instant in the given
    /// time zone `tz`.  The time is as accurate as the system allows, to a
    /// maximum accuracy of 1 microsecond.
    /// 
    /// This function will always succeed unless GLib is still being used after the
    /// year 9999.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable init<TimeZoneT: TimeZoneProtocol>(now tz: TimeZoneT) {
        let rv = g_date_time_new_now(tz.time_zone_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// UTC.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_utc()`.
    @inlinable init(utc year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) {
        let rv = g_date_time_new_utc(gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds))
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a `GDateTime` corresponding to the given
    /// [ISO 8601 formatted string](https://en.wikipedia.org/wiki/ISO_8601)
    /// `text`. ISO 8601 strings of the form <date><sep><time><tz> are supported, with
    /// some extensions from [RFC 3339](https://tools.ietf.org/html/rfc3339) as
    /// mentioned below.
    /// 
    /// Note that as `GDateTime` "is oblivious to leap seconds", leap seconds information
    /// in an ISO-8601 string will be ignored, so a `23:59:60` time would be parsed as
    /// `23:59:59`.
    /// 
    /// <sep> is the separator and can be either 'T', 't' or ' '. The latter two
    /// separators are an extension from
    /// [RFC 3339](https://tools.ietf.org/html/rfc3339`section`-5.6).
    /// 
    /// <date> is in the form:
    /// 
    /// - `YYYY-MM-DD` - Year/month/day, e.g. 2016-08-24.
    /// - `YYYYMMDD` - Same as above without dividers.
    /// - `YYYY-DDD` - Ordinal day where DDD is from 001 to 366, e.g. 2016-237.
    /// - `YYYYDDD` - Same as above without dividers.
    /// - `YYYY-Www-D` - Week day where ww is from 01 to 52 and D from 1-7,
    ///   e.g. 2016-W34-3.
    /// - `YYYYWwwD` - Same as above without dividers.
    /// 
    /// <time> is in the form:
    /// 
    /// - `hh:mm:`ss(.sss)`` - Hours, minutes, seconds (subseconds), e.g. 22:10:42.123.
    /// - ``hhmmss(.sss)`` - Same as above without dividers.
    /// 
    /// <tz> is an optional timezone suffix of the form:
    /// 
    /// - `Z` - UTC.
    /// - `+hh:mm` or `-hh:mm` - Offset from UTC in hours and minutes, e.g. +12:00.
    /// - `+hh` or `-hh` - Offset from UTC in hours, e.g. +12.
    /// 
    /// If the timezone is not provided in `text` it must be provided in `default_tz`
    /// (this field is otherwise ignored).
    /// 
    /// This call can fail (returning `nil`) if `text` is not a valid ISO 8601
    /// formatted string.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable static func newFrom<TimeZoneT: TimeZoneProtocol>(iso8601 text: UnsafePointer<gchar>!, defaultTz: TimeZoneT?) -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_new_from_iso8601(text, defaultTz?.time_zone_ptr))) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to the given `GTimeVal` `tv` in the
    /// local time zone.
    /// 
    /// The time contained in a `GTimeVal` is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the
    /// local time offset.
    /// 
    /// This call can fail (returning `nil`) if `tv` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    ///
    /// **new_from_timeval_local is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_unix_local() instead.
    @available(*, deprecated) @inlinable static func newFrom<TimeValT: TimeValProtocol>(timevalLocal tv: TimeValT) -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_new_from_timeval_local(tv._ptr))) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to the given `GTimeVal` `tv` in UTC.
    /// 
    /// The time contained in a `GTimeVal` is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC.
    /// 
    /// This call can fail (returning `nil`) if `tv` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    ///
    /// **new_from_timeval_utc is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_unix_utc() instead.
    @available(*, deprecated) @inlinable static func newFrom<TimeValT: TimeValProtocol>(timevalUTC tv: TimeValT) -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_new_from_timeval_utc(tv._ptr))) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to the given Unix time `t` in the
    /// local time zone.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC, regardless of the local time offset.
    /// 
    /// This call can fail (returning `nil`) if `t` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable static func newFrom(unixLocal t: gint64) -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_new_from_unix_local(t))) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to the given Unix time `t` in UTC.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC.
    /// 
    /// This call can fail (returning `nil`) if `t` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable static func newFrom(unixUTC t: gint64) -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_new_from_unix_utc(t))) else { return nil }
        return rv
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// the local time zone.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_local()`.
    @inlinable static func new(local year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_new_local(gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds)))) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to this exact instant in the given
    /// time zone `tz`.  The time is as accurate as the system allows, to a
    /// maximum accuracy of 1 microsecond.
    /// 
    /// This function will always succeed unless GLib is still being used after the
    /// year 9999.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable static func new<TimeZoneT: TimeZoneProtocol>(now tz: TimeZoneT) -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_new_now(tz.time_zone_ptr))) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to this exact instant in the local
    /// time zone.
    /// 
    /// This is equivalent to calling `g_date_time_new_now()` with the time
    /// zone returned by `g_time_zone_new_local()`.
    @inlinable static func newNowLocal() -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_new_now_local())) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to this exact instant in UTC.
    /// 
    /// This is equivalent to calling `g_date_time_new_now()` with the time
    /// zone returned by `g_time_zone_new_utc()`.
    @inlinable static func newNowUTC() -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_new_now_utc())) else { return nil }
        return rv
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// UTC.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_utc()`.
    @inlinable static func new(utc year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_new_utc(gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds)))) else { return nil }
        return rv
    }
}

/// The `DateTime` type acts as a reference-counted owner of an underlying `GDateTime` instance.
/// It provides the methods that can operate on this data type through `DateTimeProtocol` conformance.
/// Use `DateTime` as a strong reference or owner of a `GDateTime` instance.
///
/// `GDateTime` is an opaque structure whose members
/// cannot be accessed directly.
open class DateTime: DateTimeProtocol {
        /// Untyped pointer to the underlying `GDateTime` instance.
    /// For type-safe access, use the generated, typed pointer `date_time_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DateTime` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDateTime>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DateTime` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDateTime>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DateTime` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DateTime` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DateTime` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDateTime>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DateTime` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDateTime>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDateTime`.
    /// i.e., ownership is transferred to the `DateTime` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDateTime>) {
        ptr = UnsafeMutableRawPointer(op)
        g_date_time_ref(ptr.assumingMemoryBound(to: GDateTime.self))
    }

    /// Reference intialiser for a related type that implements `DateTimeProtocol`
    /// Will retain `GDateTime`.
    /// - Parameter other: an instance of a related type that implements `DateTimeProtocol`
    @inlinable public init<T: DateTimeProtocol>(_ other: T) {
        ptr = other.ptr
        g_date_time_ref(ptr.assumingMemoryBound(to: GDateTime.self))
    }

    /// Releases the underlying `GDateTime` instance using `g_date_time_unref`.
    deinit {
        g_date_time_unref(ptr.assumingMemoryBound(to: GDateTime.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_date_time_ref(ptr.assumingMemoryBound(to: GDateTime.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_date_time_ref(ptr.assumingMemoryBound(to: GDateTime.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_date_time_ref(ptr.assumingMemoryBound(to: GDateTime.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_date_time_ref(ptr.assumingMemoryBound(to: GDateTime.self))
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// the time zone `tz`.
    /// 
    /// The `year` must be between 1 and 9999, `month` between 1 and 12 and `day`
    /// between 1 and 28, 29, 30 or 31 depending on the month and the year.
    /// 
    /// `hour` must be between 0 and 23 and `minute` must be between 0 and 59.
    /// 
    /// `seconds` must be at least 0.0 and must be strictly less than 60.0.
    /// It will be rounded down to the nearest microsecond.
    /// 
    /// If the given time is not representable in the given time zone (for
    /// example, 02:30 on March 14th 2010 in Toronto, due to daylight savings
    /// time) then the time will be rounded up to the nearest existing time
    /// (in this case, 03:00).  If this matters to you then you should verify
    /// the return value for containing the same as the numbers you gave.
    /// 
    /// In the case that the given time is ambiguous in the given time zone
    /// (for example, 01:30 on November 7th 2010 in Toronto, due to daylight
    /// savings time) then the time falling within standard (ie:
    /// non-daylight) time is taken.
    /// 
    /// It not considered a programmer error for the values to this function
    /// to be out of range, but in the case that they are, the function will
    /// return `nil`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable public init<TimeZoneT: TimeZoneProtocol>( tz: TimeZoneT, year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) {
        let rv = g_date_time_new(tz.time_zone_ptr, gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given
    /// [ISO 8601 formatted string](https://en.wikipedia.org/wiki/ISO_8601)
    /// `text`. ISO 8601 strings of the form <date><sep><time><tz> are supported, with
    /// some extensions from [RFC 3339](https://tools.ietf.org/html/rfc3339) as
    /// mentioned below.
    /// 
    /// Note that as `GDateTime` "is oblivious to leap seconds", leap seconds information
    /// in an ISO-8601 string will be ignored, so a `23:59:60` time would be parsed as
    /// `23:59:59`.
    /// 
    /// <sep> is the separator and can be either 'T', 't' or ' '. The latter two
    /// separators are an extension from
    /// [RFC 3339](https://tools.ietf.org/html/rfc3339`section`-5.6).
    /// 
    /// <date> is in the form:
    /// 
    /// - `YYYY-MM-DD` - Year/month/day, e.g. 2016-08-24.
    /// - `YYYYMMDD` - Same as above without dividers.
    /// - `YYYY-DDD` - Ordinal day where DDD is from 001 to 366, e.g. 2016-237.
    /// - `YYYYDDD` - Same as above without dividers.
    /// - `YYYY-Www-D` - Week day where ww is from 01 to 52 and D from 1-7,
    ///   e.g. 2016-W34-3.
    /// - `YYYYWwwD` - Same as above without dividers.
    /// 
    /// <time> is in the form:
    /// 
    /// - `hh:mm:`ss(.sss)`` - Hours, minutes, seconds (subseconds), e.g. 22:10:42.123.
    /// - ``hhmmss(.sss)`` - Same as above without dividers.
    /// 
    /// <tz> is an optional timezone suffix of the form:
    /// 
    /// - `Z` - UTC.
    /// - `+hh:mm` or `-hh:mm` - Offset from UTC in hours and minutes, e.g. +12:00.
    /// - `+hh` or `-hh` - Offset from UTC in hours, e.g. +12.
    /// 
    /// If the timezone is not provided in `text` it must be provided in `default_tz`
    /// (this field is otherwise ignored).
    /// 
    /// This call can fail (returning `nil`) if `text` is not a valid ISO 8601
    /// formatted string.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable public init<TimeZoneT: TimeZoneProtocol>(iso8601 text: UnsafePointer<gchar>!, defaultTz: TimeZoneT?) {
        let rv = g_date_time_new_from_iso8601(text, defaultTz?.time_zone_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given `GTimeVal` `tv` in the
    /// local time zone.
    /// 
    /// The time contained in a `GTimeVal` is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the
    /// local time offset.
    /// 
    /// This call can fail (returning `nil`) if `tv` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    ///
    /// **new_from_timeval_local is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_unix_local() instead.
    @available(*, deprecated) @inlinable public init<TimeValT: TimeValProtocol>(timevalLocal tv: TimeValT) {
        let rv = g_date_time_new_from_timeval_local(tv._ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given `GTimeVal` `tv` in UTC.
    /// 
    /// The time contained in a `GTimeVal` is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC.
    /// 
    /// This call can fail (returning `nil`) if `tv` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    ///
    /// **new_from_timeval_utc is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_unix_utc() instead.
    @available(*, deprecated) @inlinable public init<TimeValT: TimeValProtocol>(timevalUTC tv: TimeValT) {
        let rv = g_date_time_new_from_timeval_utc(tv._ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given Unix time `t` in the
    /// local time zone.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC, regardless of the local time offset.
    /// 
    /// This call can fail (returning `nil`) if `t` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable public init(unixLocal t: gint64) {
        let rv = g_date_time_new_from_unix_local(t)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given Unix time `t` in UTC.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC.
    /// 
    /// This call can fail (returning `nil`) if `t` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable public init(unixUTC t: gint64) {
        let rv = g_date_time_new_from_unix_utc(t)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// the local time zone.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_local()`.
    @inlinable public init(local year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) {
        let rv = g_date_time_new_local(gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to this exact instant in the given
    /// time zone `tz`.  The time is as accurate as the system allows, to a
    /// maximum accuracy of 1 microsecond.
    /// 
    /// This function will always succeed unless GLib is still being used after the
    /// year 9999.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable public init<TimeZoneT: TimeZoneProtocol>(now tz: TimeZoneT) {
        let rv = g_date_time_new_now(tz.time_zone_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// UTC.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_utc()`.
    @inlinable public init(utc year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) {
        let rv = g_date_time_new_utc(gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given
    /// [ISO 8601 formatted string](https://en.wikipedia.org/wiki/ISO_8601)
    /// `text`. ISO 8601 strings of the form <date><sep><time><tz> are supported, with
    /// some extensions from [RFC 3339](https://tools.ietf.org/html/rfc3339) as
    /// mentioned below.
    /// 
    /// Note that as `GDateTime` "is oblivious to leap seconds", leap seconds information
    /// in an ISO-8601 string will be ignored, so a `23:59:60` time would be parsed as
    /// `23:59:59`.
    /// 
    /// <sep> is the separator and can be either 'T', 't' or ' '. The latter two
    /// separators are an extension from
    /// [RFC 3339](https://tools.ietf.org/html/rfc3339`section`-5.6).
    /// 
    /// <date> is in the form:
    /// 
    /// - `YYYY-MM-DD` - Year/month/day, e.g. 2016-08-24.
    /// - `YYYYMMDD` - Same as above without dividers.
    /// - `YYYY-DDD` - Ordinal day where DDD is from 001 to 366, e.g. 2016-237.
    /// - `YYYYDDD` - Same as above without dividers.
    /// - `YYYY-Www-D` - Week day where ww is from 01 to 52 and D from 1-7,
    ///   e.g. 2016-W34-3.
    /// - `YYYYWwwD` - Same as above without dividers.
    /// 
    /// <time> is in the form:
    /// 
    /// - `hh:mm:`ss(.sss)`` - Hours, minutes, seconds (subseconds), e.g. 22:10:42.123.
    /// - ``hhmmss(.sss)`` - Same as above without dividers.
    /// 
    /// <tz> is an optional timezone suffix of the form:
    /// 
    /// - `Z` - UTC.
    /// - `+hh:mm` or `-hh:mm` - Offset from UTC in hours and minutes, e.g. +12:00.
    /// - `+hh` or `-hh` - Offset from UTC in hours, e.g. +12.
    /// 
    /// If the timezone is not provided in `text` it must be provided in `default_tz`
    /// (this field is otherwise ignored).
    /// 
    /// This call can fail (returning `nil`) if `text` is not a valid ISO 8601
    /// formatted string.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable public static func newFrom<TimeZoneT: TimeZoneProtocol>(iso8601 text: UnsafePointer<gchar>!, defaultTz: TimeZoneT?) -> DateTime! {
        guard let rv = DateTime(gconstpointer: gconstpointer(g_date_time_new_from_iso8601(text, defaultTz?.time_zone_ptr))) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to the given `GTimeVal` `tv` in the
    /// local time zone.
    /// 
    /// The time contained in a `GTimeVal` is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the
    /// local time offset.
    /// 
    /// This call can fail (returning `nil`) if `tv` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    ///
    /// **new_from_timeval_local is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_unix_local() instead.
    @available(*, deprecated) @inlinable public static func newFrom<TimeValT: TimeValProtocol>(timevalLocal tv: TimeValT) -> DateTime! {
        guard let rv = DateTime(gconstpointer: gconstpointer(g_date_time_new_from_timeval_local(tv._ptr))) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to the given `GTimeVal` `tv` in UTC.
    /// 
    /// The time contained in a `GTimeVal` is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC.
    /// 
    /// This call can fail (returning `nil`) if `tv` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    ///
    /// **new_from_timeval_utc is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_unix_utc() instead.
    @available(*, deprecated) @inlinable public static func newFrom<TimeValT: TimeValProtocol>(timevalUTC tv: TimeValT) -> DateTime! {
        guard let rv = DateTime(gconstpointer: gconstpointer(g_date_time_new_from_timeval_utc(tv._ptr))) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to the given Unix time `t` in the
    /// local time zone.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC, regardless of the local time offset.
    /// 
    /// This call can fail (returning `nil`) if `t` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable public static func newFrom(unixLocal t: gint64) -> DateTime! {
        guard let rv = DateTime(gconstpointer: gconstpointer(g_date_time_new_from_unix_local(t))) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to the given Unix time `t` in UTC.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC.
    /// 
    /// This call can fail (returning `nil`) if `t` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable public static func newFrom(unixUTC t: gint64) -> DateTime! {
        guard let rv = DateTime(gconstpointer: gconstpointer(g_date_time_new_from_unix_utc(t))) else { return nil }
        return rv
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// the local time zone.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_local()`.
    @inlinable public static func new(local year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) -> DateTime! {
        guard let rv = DateTime(gconstpointer: gconstpointer(g_date_time_new_local(gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds)))) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to this exact instant in the given
    /// time zone `tz`.  The time is as accurate as the system allows, to a
    /// maximum accuracy of 1 microsecond.
    /// 
    /// This function will always succeed unless GLib is still being used after the
    /// year 9999.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable public static func new<TimeZoneT: TimeZoneProtocol>(now tz: TimeZoneT) -> DateTime! {
        guard let rv = DateTime(gconstpointer: gconstpointer(g_date_time_new_now(tz.time_zone_ptr))) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to this exact instant in the local
    /// time zone.
    /// 
    /// This is equivalent to calling `g_date_time_new_now()` with the time
    /// zone returned by `g_time_zone_new_local()`.
    @inlinable public static func newNowLocal() -> DateTime! {
        guard let rv = DateTime(gconstpointer: gconstpointer(g_date_time_new_now_local())) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to this exact instant in UTC.
    /// 
    /// This is equivalent to calling `g_date_time_new_now()` with the time
    /// zone returned by `g_time_zone_new_utc()`.
    @inlinable public static func newNowUTC() -> DateTime! {
        guard let rv = DateTime(gconstpointer: gconstpointer(g_date_time_new_now_utc())) else { return nil }
        return rv
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// UTC.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_utc()`.
    @inlinable public static func new(utc year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) -> DateTime! {
        guard let rv = DateTime(gconstpointer: gconstpointer(g_date_time_new_utc(gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds)))) else { return nil }
        return rv
    }

}

// MARK: no DateTime properties

// MARK: no DateTime signals


// MARK: DateTime Record: DateTimeProtocol extension (methods and fields)
public extension DateTimeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDateTime` instance.
    @inlinable var date_time_ptr: UnsafeMutablePointer<GDateTime>! { return ptr?.assumingMemoryBound(to: GDateTime.self) }

    /// Creates a copy of `datetime` and adds the specified timespan to the copy.
    @inlinable func add(timespan: GTimeSpan) -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_add(date_time_ptr, timespan))) else { return nil }
        return rv
    }

    /// Creates a copy of `datetime` and adds the specified number of days to the
    /// copy. Add negative values to subtract days.
    @inlinable func add(days: Int) -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_add_days(date_time_ptr, gint(days)))) else { return nil }
        return rv
    }

    /// Creates a new `GDateTime` adding the specified values to the current date and
    /// time in `datetime`. Add negative values to subtract.
    @inlinable func addFull(years: Int, months: Int, days: Int, hours: Int, minutes: Int, seconds: Double) -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_add_full(date_time_ptr, gint(years), gint(months), gint(days), gint(hours), gint(minutes), gdouble(seconds)))) else { return nil }
        return rv
    }

    /// Creates a copy of `datetime` and adds the specified number of hours.
    /// Add negative values to subtract hours.
    @inlinable func add(hours: Int) -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_add_hours(date_time_ptr, gint(hours)))) else { return nil }
        return rv
    }

    /// Creates a copy of `datetime` adding the specified number of minutes.
    /// Add negative values to subtract minutes.
    @inlinable func add(minutes: Int) -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_add_minutes(date_time_ptr, gint(minutes)))) else { return nil }
        return rv
    }

    /// Creates a copy of `datetime` and adds the specified number of months to the
    /// copy. Add negative values to subtract months.
    /// 
    /// The day of the month of the resulting `GDateTime` is clamped to the number
    /// of days in the updated calendar month. For example, if adding 1 month to
    /// 31st January 2018, the result would be 28th February 2018. In 2020 (a leap
    /// year), the result would be 29th February.
    @inlinable func add(months: Int) -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_add_months(date_time_ptr, gint(months)))) else { return nil }
        return rv
    }

    /// Creates a copy of `datetime` and adds the specified number of seconds.
    /// Add negative values to subtract seconds.
    @inlinable func add(seconds: Double) -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_add_seconds(date_time_ptr, gdouble(seconds)))) else { return nil }
        return rv
    }

    /// Creates a copy of `datetime` and adds the specified number of weeks to the
    /// copy. Add negative values to subtract weeks.
    @inlinable func add(weeks: Int) -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_add_weeks(date_time_ptr, gint(weeks)))) else { return nil }
        return rv
    }

    /// Creates a copy of `datetime` and adds the specified number of years to the
    /// copy. Add negative values to subtract years.
    /// 
    /// As with `g_date_time_add_months()`, if the resulting date would be 29th
    /// February on a non-leap year, the day will be clamped to 28th February.
    @inlinable func add(years: Int) -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_add_years(date_time_ptr, gint(years)))) else { return nil }
        return rv
    }

    /// Calculates the difference in time between `end` and `begin`.  The
    /// `GTimeSpan` that is returned is effectively `end` - `begin` (ie:
    /// positive if the first parameter is larger).
    @inlinable func difference<DateTimeT: DateTimeProtocol>(begin: DateTimeT) -> GTimeSpan {
        let rv = g_date_time_difference(date_time_ptr, begin.date_time_ptr)
        return rv
    }

    /// Creates a newly allocated string representing the requested `format`.
    /// 
    /// The format strings understood by this function are a subset of the
    /// `strftime()` format language as specified by C99.  The \`D`, \`U` and \`W`
    /// conversions are not supported, nor is the 'E' modifier.  The GNU
    /// extensions \`k`, \`l`, \`s` and \`P` are supported, however, as are the
    /// '0', '_' and '-' modifiers. The Python extension \`f` is also supported.
    /// 
    /// In contrast to `strftime()`, this function always produces a UTF-8
    /// string, regardless of the current locale.  Note that the rendering of
    /// many formats is locale-dependent and may not match the `strftime()`
    /// output exactly.
    /// 
    /// The following format specifiers are supported:
    /// 
    /// - \`a:` the abbreviated weekday name according to the current locale
    /// - \`A:` the full weekday name according to the current locale
    /// - \`b:` the abbreviated month name according to the current locale
    /// - \`B:` the full month name according to the current locale
    /// - \`c:` the preferred date and time representation for the current locale
    /// - \`C:` the century number (year/100) as a 2-digit integer (00-99)
    /// - \`d:` the day of the month as a decimal number (range 01 to 31)
    /// - \`e:` the day of the month as a decimal number (range  1 to 31)
    /// - \`F:` equivalent to ``Y`-`m`-`d`` (the ISO 8601 date format)
    /// - \`g:` the last two digits of the ISO 8601 week-based year as a
    ///   decimal number (00-99). This works well with \`V` and \`u`.
    /// - \`G:` the ISO 8601 week-based year as a decimal number. This works
    ///   well with \`V` and \`u`.
    /// - \`h:` equivalent to \`b`
    /// - \`H:` the hour as a decimal number using a 24-hour clock (range 00 to 23)
    /// - \`I:` the hour as a decimal number using a 12-hour clock (range 01 to 12)
    /// - \`j:` the day of the year as a decimal number (range 001 to 366)
    /// - \`k:` the hour (24-hour clock) as a decimal number (range 0 to 23);
    ///   single digits are preceded by a blank
    /// - \`l:` the hour (12-hour clock) as a decimal number (range 1 to 12);
    ///   single digits are preceded by a blank
    /// - \`m:` the month as a decimal number (range 01 to 12)
    /// - \`M:` the minute as a decimal number (range 00 to 59)
    /// - \`f:` the microsecond as a decimal number (range 000000 to 999999)
    /// - \`p:` either "AM" or "PM" according to the given time value, or the
    ///   corresponding  strings for the current locale.  Noon is treated as
    ///   "PM" and midnight as "AM". Use of this format specifier is discouraged, as
    ///   many locales have no concept of AM/PM formatting. Use \`c` or \`X` instead.
    /// - \`P:` like \`p` but lowercase: "am" or "pm" or a corresponding string for
    ///   the current locale. Use of this format specifier is discouraged, as
    ///   many locales have no concept of AM/PM formatting. Use \`c` or \`X` instead.
    /// - \`r:` the time in a.m. or p.m. notation. Use of this format specifier is
    ///   discouraged, as many locales have no concept of AM/PM formatting. Use \`c`
    ///   or \`X` instead.
    /// - \`R:` the time in 24-hour notation (\`H:`\`M`)
    /// - \`s:` the number of seconds since the Epoch, that is, since 1970-01-01
    ///   00:00:00 UTC
    /// - \`S:` the second as a decimal number (range 00 to 60)
    /// - \`t:` a tab character
    /// - \`T:` the time in 24-hour notation with seconds (\`H:`\`M:`\`S`)
    /// - \`u:` the ISO 8601 standard day of the week as a decimal, range 1 to 7,
    ///    Monday being 1. This works well with \`G` and \`V`.
    /// - \`V:` the ISO 8601 standard week number of the current year as a decimal
    ///   number, range 01 to 53, where week 1 is the first week that has at
    ///   least 4 days in the new year. See `g_date_time_get_week_of_year()`.
    ///   This works well with \`G` and \`u`.
    /// - \`w:` the day of the week as a decimal, range 0 to 6, Sunday being 0.
    ///   This is not the ISO 8601 standard format -- use \`u` instead.
    /// - \`x:` the preferred date representation for the current locale without
    ///   the time
    /// - \`X:` the preferred time representation for the current locale without
    ///   the date
    /// - \`y:` the year as a decimal number without the century
    /// - \`Y:` the year as a decimal number including the century
    /// - \`z:` the time zone as an offset from UTC (+hhmm)
    /// - \`:z:` the time zone as an offset from UTC (+hh:mm).
    ///   This is a gnulib `strftime()` extension. Since: 2.38
    /// - \`::z:` the time zone as an offset from UTC (+hh:mm:ss). This is a
    ///   gnulib `strftime()` extension. Since: 2.38
    /// - \`:::z:` the time zone as an offset from UTC, with : to necessary
    ///   precision (e.g., -04, +05:30). This is a gnulib `strftime()` extension. Since: 2.38
    /// - \`Z:` the time zone or name or abbreviation
    /// - \``\`:` a literal \% character
    /// 
    /// Some conversion specifications can be modified by preceding the
    /// conversion specifier by one or more modifier characters. The
    /// following modifiers are supported for many of the numeric
    /// conversions:
    /// 
    /// - O: Use alternative numeric symbols, if the current locale supports those.
    /// - _: Pad a numeric result with spaces. This overrides the default padding
    ///   for the specifier.
    /// - -: Do not pad a numeric result. This overrides the default padding
    ///   for the specifier.
    /// - 0: Pad a numeric result with zeros. This overrides the default padding
    ///   for the specifier.
    /// 
    /// Additionally, when O is used with B, b, or h, it produces the alternative
    /// form of a month name. The alternative form should be used when the month
    /// name is used without a day number (e.g., standalone). It is required in
    /// some languages (Baltic, Slavic, Greek, and more) due to their grammatical
    /// rules. For other languages there is no difference. \`OB` is a GNU and BSD
    /// `strftime()` extension expected to be added to the future POSIX specification,
    /// \`Ob` and \`Oh` are GNU `strftime()` extensions. Since: 2.56
    @inlinable func format(format: UnsafePointer<gchar>!) -> String! {
        let rv = g_date_time_format(date_time_ptr, format).map({ String(cString: $0) })
        return rv
    }

    /// Format `datetime` in [ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601),
    /// including the date, time and time zone, and return that as a UTF-8 encoded
    /// string.
    /// 
    /// Since GLib 2.66, this will output to sub-second precision if needed.
    @inlinable func formatIso8601() -> String! {
        let rv = g_date_time_format_iso8601(date_time_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the day of the month represented by `datetime` in the gregorian
    /// calendar.
    @inlinable func getDayOfMonth() -> Int {
        let rv = Int(g_date_time_get_day_of_month(date_time_ptr))
        return rv
    }

    /// Retrieves the ISO 8601 day of the week on which `datetime` falls (1 is
    /// Monday, 2 is Tuesday... 7 is Sunday).
    @inlinable func getDayOfWeek() -> Int {
        let rv = Int(g_date_time_get_day_of_week(date_time_ptr))
        return rv
    }

    /// Retrieves the day of the year represented by `datetime` in the Gregorian
    /// calendar.
    @inlinable func getDayOfYear() -> Int {
        let rv = Int(g_date_time_get_day_of_year(date_time_ptr))
        return rv
    }

    /// Retrieves the hour of the day represented by `datetime`
    @inlinable func getHour() -> Int {
        let rv = Int(g_date_time_get_hour(date_time_ptr))
        return rv
    }

    /// Retrieves the microsecond of the date represented by `datetime`
    @inlinable func getMicrosecond() -> Int {
        let rv = Int(g_date_time_get_microsecond(date_time_ptr))
        return rv
    }

    /// Retrieves the minute of the hour represented by `datetime`
    @inlinable func getMinute() -> Int {
        let rv = Int(g_date_time_get_minute(date_time_ptr))
        return rv
    }

    /// Retrieves the month of the year represented by `datetime` in the Gregorian
    /// calendar.
    @inlinable func getMonth() -> Int {
        let rv = Int(g_date_time_get_month(date_time_ptr))
        return rv
    }

    /// Retrieves the second of the minute represented by `datetime`
    @inlinable func getSecond() -> Int {
        let rv = Int(g_date_time_get_second(date_time_ptr))
        return rv
    }

    /// Retrieves the number of seconds since the start of the last minute,
    /// including the fractional part.
    @inlinable func getSeconds() -> Double {
        let rv = Double(g_date_time_get_seconds(date_time_ptr))
        return rv
    }

    /// Get the time zone for this `datetime`.
    @inlinable func getTimezone() -> TimeZoneRef! {
        let rv = TimeZoneRef(gconstpointer: gconstpointer(g_date_time_get_timezone(date_time_ptr)))
        return rv
    }

    /// Determines the time zone abbreviation to be used at the time and in
    /// the time zone of `datetime`.
    /// 
    /// For example, in Toronto this is currently "EST" during the winter
    /// months and "EDT" during the summer months when daylight savings
    /// time is in effect.
    @inlinable func getTimezoneAbbreviation() -> String! {
        let rv = g_date_time_get_timezone_abbreviation(date_time_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Determines the offset to UTC in effect at the time and in the time
    /// zone of `datetime`.
    /// 
    /// The offset is the number of microseconds that you add to UTC time to
    /// arrive at local time for the time zone (ie: negative numbers for time
    /// zones west of GMT, positive numbers for east).
    /// 
    /// If `datetime` represents UTC time, then the offset is always zero.
    @inlinable func getUTCOffset() -> GTimeSpan {
        let rv = g_date_time_get_utc_offset(date_time_ptr)
        return rv
    }

    /// Returns the ISO 8601 week-numbering year in which the week containing
    /// `datetime` falls.
    /// 
    /// This function, taken together with `g_date_time_get_week_of_year()` and
    /// `g_date_time_get_day_of_week()` can be used to determine the full ISO
    /// week date on which `datetime` falls.
    /// 
    /// This is usually equal to the normal Gregorian year (as returned by
    /// `g_date_time_get_year()`), except as detailed below:
    /// 
    /// For Thursday, the week-numbering year is always equal to the usual
    /// calendar year.  For other days, the number is such that every day
    /// within a complete week (Monday to Sunday) is contained within the
    /// same week-numbering year.
    /// 
    /// For Monday, Tuesday and Wednesday occurring near the end of the year,
    /// this may mean that the week-numbering year is one greater than the
    /// calendar year (so that these days have the same week-numbering year
    /// as the Thursday occurring early in the next year).
    /// 
    /// For Friday, Saturday and Sunday occurring near the start of the year,
    /// this may mean that the week-numbering year is one less than the
    /// calendar year (so that these days have the same week-numbering year
    /// as the Thursday occurring late in the previous year).
    /// 
    /// An equivalent description is that the week-numbering year is equal to
    /// the calendar year containing the majority of the days in the current
    /// week (Monday to Sunday).
    /// 
    /// Note that January 1 0001 in the proleptic Gregorian calendar is a
    /// Monday, so this function never returns 0.
    @inlinable func getWeekNumberingYear() -> Int {
        let rv = Int(g_date_time_get_week_numbering_year(date_time_ptr))
        return rv
    }

    /// Returns the ISO 8601 week number for the week containing `datetime`.
    /// The ISO 8601 week number is the same for every day of the week (from
    /// Moday through Sunday).  That can produce some unusual results
    /// (described below).
    /// 
    /// The first week of the year is week 1.  This is the week that contains
    /// the first Thursday of the year.  Equivalently, this is the first week
    /// that has more than 4 of its days falling within the calendar year.
    /// 
    /// The value 0 is never returned by this function.  Days contained
    /// within a year but occurring before the first ISO 8601 week of that
    /// year are considered as being contained in the last week of the
    /// previous year.  Similarly, the final days of a calendar year may be
    /// considered as being part of the first ISO 8601 week of the next year
    /// if 4 or more days of that week are contained within the new year.
    @inlinable func getWeekOfYear() -> Int {
        let rv = Int(g_date_time_get_week_of_year(date_time_ptr))
        return rv
    }

    /// Retrieves the year represented by `datetime` in the Gregorian calendar.
    @inlinable func getYear() -> Int {
        let rv = Int(g_date_time_get_year(date_time_ptr))
        return rv
    }

    /// Retrieves the Gregorian day, month, and year of a given `GDateTime`.
    @inlinable func getYmd(year: UnsafeMutablePointer<gint>! = nil, month: UnsafeMutablePointer<gint>! = nil, day: UnsafeMutablePointer<gint>! = nil) {
        g_date_time_get_ymd(date_time_ptr, year, month, day)
    
    }

    /// Atomically increments the reference count of `datetime` by one.
    @discardableResult @inlinable func ref() -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_ref(date_time_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GDateTime` corresponding to the same instant in time as
    /// `datetime`, but in the local time zone.
    /// 
    /// This call is equivalent to calling `g_date_time_to_timezone()` with the
    /// time zone returned by `g_time_zone_new_local()`.
    @inlinable func toLocal() -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_to_local(date_time_ptr))) else { return nil }
        return rv
    }

    /// Stores the instant in time that `datetime` represents into `tv`.
    /// 
    /// The time contained in a `GTimeVal` is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the time
    /// zone associated with `datetime`.
    /// 
    /// On systems where 'long' is 32bit (ie: all 32bit systems and all
    /// Windows systems), a `GTimeVal` is incapable of storing the entire
    /// range of values that `GDateTime` is capable of expressing.  On those
    /// systems, this function returns `false` to indicate that the time is
    /// out of range.
    /// 
    /// On systems where 'long' is 64bit, this function never fails.
    ///
    /// **to_timeval is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_to_unix() instead.
    @available(*, deprecated) @inlinable func toTimeval<TimeValT: TimeValProtocol>(tv: TimeValT) -> Bool {
        let rv = ((g_date_time_to_timeval(date_time_ptr, tv._ptr)) != 0)
        return rv
    }

    /// Create a new `GDateTime` corresponding to the same instant in time as
    /// `datetime`, but in the time zone `tz`.
    /// 
    /// This call can fail in the case that the time goes out of bounds.  For
    /// example, converting 0001-01-01 00:00:00 UTC to a time zone west of
    /// Greenwich will fail (due to the year 0 being out of range).
    @inlinable func toTimezone<TimeZoneT: TimeZoneProtocol>(tz: TimeZoneT) -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_to_timezone(date_time_ptr, tz.time_zone_ptr))) else { return nil }
        return rv
    }

    /// Gives the Unix time corresponding to `datetime`, rounding down to the
    /// nearest second.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC, regardless of the time zone associated with `datetime`.
    @inlinable func toUnix() -> gint64 {
        let rv = g_date_time_to_unix(date_time_ptr)
        return rv
    }

    /// Creates a new `GDateTime` corresponding to the same instant in time as
    /// `datetime`, but in UTC.
    /// 
    /// This call is equivalent to calling `g_date_time_to_timezone()` with the
    /// time zone returned by `g_time_zone_new_utc()`.
    @inlinable func toUTC() -> DateTimeRef! {
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(g_date_time_to_utc(date_time_ptr))) else { return nil }
        return rv
    }

    /// Atomically decrements the reference count of `datetime` by one.
    /// 
    /// When the reference count reaches zero, the resources allocated by
    /// `datetime` are freed
    @inlinable func unref() {
        g_date_time_unref(date_time_ptr)
    
    }
    /// Retrieves the day of the month represented by `datetime` in the gregorian
    /// calendar.
    @inlinable var dayOfMonth: Int {
        /// Retrieves the day of the month represented by `datetime` in the gregorian
        /// calendar.
        get {
            let rv = Int(g_date_time_get_day_of_month(date_time_ptr))
            return rv
        }
    }

    /// Retrieves the ISO 8601 day of the week on which `datetime` falls (1 is
    /// Monday, 2 is Tuesday... 7 is Sunday).
    @inlinable var dayOfWeek: Int {
        /// Retrieves the ISO 8601 day of the week on which `datetime` falls (1 is
        /// Monday, 2 is Tuesday... 7 is Sunday).
        get {
            let rv = Int(g_date_time_get_day_of_week(date_time_ptr))
            return rv
        }
    }

    /// Retrieves the day of the year represented by `datetime` in the Gregorian
    /// calendar.
    @inlinable var dayOfYear: Int {
        /// Retrieves the day of the year represented by `datetime` in the Gregorian
        /// calendar.
        get {
            let rv = Int(g_date_time_get_day_of_year(date_time_ptr))
            return rv
        }
    }

    /// Retrieves the hour of the day represented by `datetime`
    @inlinable var hour: Int {
        /// Retrieves the hour of the day represented by `datetime`
        get {
            let rv = Int(g_date_time_get_hour(date_time_ptr))
            return rv
        }
    }

    /// Determines if daylight savings time is in effect at the time and in
    /// the time zone of `datetime`.
    @inlinable var isDaylightSavings: Bool {
        /// Determines if daylight savings time is in effect at the time and in
        /// the time zone of `datetime`.
        get {
            let rv = ((g_date_time_is_daylight_savings(date_time_ptr)) != 0)
            return rv
        }
    }

    /// Retrieves the microsecond of the date represented by `datetime`
    @inlinable var microsecond: Int {
        /// Retrieves the microsecond of the date represented by `datetime`
        get {
            let rv = Int(g_date_time_get_microsecond(date_time_ptr))
            return rv
        }
    }

    /// Retrieves the minute of the hour represented by `datetime`
    @inlinable var minute: Int {
        /// Retrieves the minute of the hour represented by `datetime`
        get {
            let rv = Int(g_date_time_get_minute(date_time_ptr))
            return rv
        }
    }

    /// Retrieves the month of the year represented by `datetime` in the Gregorian
    /// calendar.
    @inlinable var month: Int {
        /// Retrieves the month of the year represented by `datetime` in the Gregorian
        /// calendar.
        get {
            let rv = Int(g_date_time_get_month(date_time_ptr))
            return rv
        }
    }

    /// Retrieves the second of the minute represented by `datetime`
    @inlinable var second: Int {
        /// Retrieves the second of the minute represented by `datetime`
        get {
            let rv = Int(g_date_time_get_second(date_time_ptr))
            return rv
        }
    }

    /// Retrieves the number of seconds since the start of the last minute,
    /// including the fractional part.
    @inlinable var seconds: Double {
        /// Retrieves the number of seconds since the start of the last minute,
        /// including the fractional part.
        get {
            let rv = Double(g_date_time_get_seconds(date_time_ptr))
            return rv
        }
    }

    /// Get the time zone for this `datetime`.
    @inlinable var timezone: TimeZoneRef! {
        /// Get the time zone for this `datetime`.
        get {
            let rv = TimeZoneRef(gconstpointer: gconstpointer(g_date_time_get_timezone(date_time_ptr)))
            return rv
        }
    }

    /// Determines the time zone abbreviation to be used at the time and in
    /// the time zone of `datetime`.
    /// 
    /// For example, in Toronto this is currently "EST" during the winter
    /// months and "EDT" during the summer months when daylight savings
    /// time is in effect.
    @inlinable var timezoneAbbreviation: String! {
        /// Determines the time zone abbreviation to be used at the time and in
        /// the time zone of `datetime`.
        /// 
        /// For example, in Toronto this is currently "EST" during the winter
        /// months and "EDT" during the summer months when daylight savings
        /// time is in effect.
        get {
            let rv = g_date_time_get_timezone_abbreviation(date_time_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Determines the offset to UTC in effect at the time and in the time
    /// zone of `datetime`.
    /// 
    /// The offset is the number of microseconds that you add to UTC time to
    /// arrive at local time for the time zone (ie: negative numbers for time
    /// zones west of GMT, positive numbers for east).
    /// 
    /// If `datetime` represents UTC time, then the offset is always zero.
    @inlinable var utcOffset: GTimeSpan {
        /// Determines the offset to UTC in effect at the time and in the time
        /// zone of `datetime`.
        /// 
        /// The offset is the number of microseconds that you add to UTC time to
        /// arrive at local time for the time zone (ie: negative numbers for time
        /// zones west of GMT, positive numbers for east).
        /// 
        /// If `datetime` represents UTC time, then the offset is always zero.
        get {
            let rv = g_date_time_get_utc_offset(date_time_ptr)
            return rv
        }
    }

    /// Returns the ISO 8601 week-numbering year in which the week containing
    /// `datetime` falls.
    /// 
    /// This function, taken together with `g_date_time_get_week_of_year()` and
    /// `g_date_time_get_day_of_week()` can be used to determine the full ISO
    /// week date on which `datetime` falls.
    /// 
    /// This is usually equal to the normal Gregorian year (as returned by
    /// `g_date_time_get_year()`), except as detailed below:
    /// 
    /// For Thursday, the week-numbering year is always equal to the usual
    /// calendar year.  For other days, the number is such that every day
    /// within a complete week (Monday to Sunday) is contained within the
    /// same week-numbering year.
    /// 
    /// For Monday, Tuesday and Wednesday occurring near the end of the year,
    /// this may mean that the week-numbering year is one greater than the
    /// calendar year (so that these days have the same week-numbering year
    /// as the Thursday occurring early in the next year).
    /// 
    /// For Friday, Saturday and Sunday occurring near the start of the year,
    /// this may mean that the week-numbering year is one less than the
    /// calendar year (so that these days have the same week-numbering year
    /// as the Thursday occurring late in the previous year).
    /// 
    /// An equivalent description is that the week-numbering year is equal to
    /// the calendar year containing the majority of the days in the current
    /// week (Monday to Sunday).
    /// 
    /// Note that January 1 0001 in the proleptic Gregorian calendar is a
    /// Monday, so this function never returns 0.
    @inlinable var weekNumberingYear: Int {
        /// Returns the ISO 8601 week-numbering year in which the week containing
        /// `datetime` falls.
        /// 
        /// This function, taken together with `g_date_time_get_week_of_year()` and
        /// `g_date_time_get_day_of_week()` can be used to determine the full ISO
        /// week date on which `datetime` falls.
        /// 
        /// This is usually equal to the normal Gregorian year (as returned by
        /// `g_date_time_get_year()`), except as detailed below:
        /// 
        /// For Thursday, the week-numbering year is always equal to the usual
        /// calendar year.  For other days, the number is such that every day
        /// within a complete week (Monday to Sunday) is contained within the
        /// same week-numbering year.
        /// 
        /// For Monday, Tuesday and Wednesday occurring near the end of the year,
        /// this may mean that the week-numbering year is one greater than the
        /// calendar year (so that these days have the same week-numbering year
        /// as the Thursday occurring early in the next year).
        /// 
        /// For Friday, Saturday and Sunday occurring near the start of the year,
        /// this may mean that the week-numbering year is one less than the
        /// calendar year (so that these days have the same week-numbering year
        /// as the Thursday occurring late in the previous year).
        /// 
        /// An equivalent description is that the week-numbering year is equal to
        /// the calendar year containing the majority of the days in the current
        /// week (Monday to Sunday).
        /// 
        /// Note that January 1 0001 in the proleptic Gregorian calendar is a
        /// Monday, so this function never returns 0.
        get {
            let rv = Int(g_date_time_get_week_numbering_year(date_time_ptr))
            return rv
        }
    }

    /// Returns the ISO 8601 week number for the week containing `datetime`.
    /// The ISO 8601 week number is the same for every day of the week (from
    /// Moday through Sunday).  That can produce some unusual results
    /// (described below).
    /// 
    /// The first week of the year is week 1.  This is the week that contains
    /// the first Thursday of the year.  Equivalently, this is the first week
    /// that has more than 4 of its days falling within the calendar year.
    /// 
    /// The value 0 is never returned by this function.  Days contained
    /// within a year but occurring before the first ISO 8601 week of that
    /// year are considered as being contained in the last week of the
    /// previous year.  Similarly, the final days of a calendar year may be
    /// considered as being part of the first ISO 8601 week of the next year
    /// if 4 or more days of that week are contained within the new year.
    @inlinable var weekOfYear: Int {
        /// Returns the ISO 8601 week number for the week containing `datetime`.
        /// The ISO 8601 week number is the same for every day of the week (from
        /// Moday through Sunday).  That can produce some unusual results
        /// (described below).
        /// 
        /// The first week of the year is week 1.  This is the week that contains
        /// the first Thursday of the year.  Equivalently, this is the first week
        /// that has more than 4 of its days falling within the calendar year.
        /// 
        /// The value 0 is never returned by this function.  Days contained
        /// within a year but occurring before the first ISO 8601 week of that
        /// year are considered as being contained in the last week of the
        /// previous year.  Similarly, the final days of a calendar year may be
        /// considered as being part of the first ISO 8601 week of the next year
        /// if 4 or more days of that week are contained within the new year.
        get {
            let rv = Int(g_date_time_get_week_of_year(date_time_ptr))
            return rv
        }
    }

    /// Retrieves the year represented by `datetime` in the Gregorian calendar.
    @inlinable var year: Int {
        /// Retrieves the year represented by `datetime` in the Gregorian calendar.
        get {
            let rv = Int(g_date_time_get_year(date_time_ptr))
            return rv
        }
    }


}



