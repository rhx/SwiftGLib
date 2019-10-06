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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDateTime` instance.
    var date_time_ptr: UnsafeMutablePointer<GDateTime> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DateTimeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDateTime>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DateTimeProtocol`
    init<T: DateTimeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    init( tz: TimeZoneProtocol, year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) {
        let rv = g_date_time_new(cast(tz.ptr), gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        self.init(cast(rv))
    }

    /// Creates a `GDateTime` corresponding to the given
    /// [ISO 8601 formatted string](https://en.wikipedia.org/wiki/ISO_8601)
    /// `text`. ISO 8601 strings of the form <date><sep><time><tz> are supported.
    /// 
    /// <sep> is the separator and can be either 'T', 't' or ' '.
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
    init(iso8601 text: UnsafePointer<gchar>, defaultTz default_tz: TimeZoneProtocol) {
        let rv = g_date_time_new_from_iso8601(text, cast(default_tz.ptr))
        self.init(cast(rv))
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
    @available(*, deprecated) init(timevalLocal tv: TimeValProtocol) {
        let rv = g_date_time_new_from_timeval_local(cast(tv.ptr))
        self.init(cast(rv))
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
    @available(*, deprecated) init(timevalUTC tv: TimeValProtocol) {
        let rv = g_date_time_new_from_timeval_utc(cast(tv.ptr))
        self.init(cast(rv))
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
    init(unixLocal t: Int64) {
        let rv = g_date_time_new_from_unix_local(gint64(t))
        self.init(cast(rv))
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
    init(unixUTC t: Int64) {
        let rv = g_date_time_new_from_unix_utc(gint64(t))
        self.init(cast(rv))
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// the local time zone.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_local()`.
    init(local year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) {
        let rv = g_date_time_new_local(gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        self.init(cast(rv))
    }

    /// Creates a `GDateTime` corresponding to this exact instant in the given
    /// time zone `tz`.  The time is as accurate as the system allows, to a
    /// maximum accuracy of 1 microsecond.
    /// 
    /// This function will always succeed unless the system clock is set to
    /// truly insane values (or unless GLib is still being used after the
    /// year 9999).
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    init(now tz: TimeZoneProtocol) {
        let rv = g_date_time_new_now(cast(tz.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// UTC.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_utc()`.
    init(utc year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) {
        let rv = g_date_time_new_utc(gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        self.init(cast(rv))
    }
    /// Creates a `GDateTime` corresponding to the given
    /// [ISO 8601 formatted string](https://en.wikipedia.org/wiki/ISO_8601)
    /// `text`. ISO 8601 strings of the form <date><sep><time><tz> are supported.
    /// 
    /// <sep> is the separator and can be either 'T', 't' or ' '.
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
    static func newFrom(iso8601 text: UnsafePointer<gchar>, defaultTz default_tz: TimeZoneProtocol) -> DateTimeRef! {
        let rv = g_date_time_new_from_iso8601(text, cast(default_tz.ptr))
        return rv.map { DateTimeRef(cast($0)) }
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
    @available(*, deprecated) static func newFrom(timevalLocal tv: TimeValProtocol) -> DateTimeRef! {
        let rv = g_date_time_new_from_timeval_local(cast(tv.ptr))
        return rv.map { DateTimeRef(cast($0)) }
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
    @available(*, deprecated) static func newFrom(timevalUTC tv: TimeValProtocol) -> DateTimeRef! {
        let rv = g_date_time_new_from_timeval_utc(cast(tv.ptr))
        return rv.map { DateTimeRef(cast($0)) }
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
    static func newFrom(unixLocal t: Int64) -> DateTimeRef! {
        let rv = g_date_time_new_from_unix_local(gint64(t))
        return rv.map { DateTimeRef(cast($0)) }
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
    static func newFrom(unixUTC t: Int64) -> DateTimeRef! {
        let rv = g_date_time_new_from_unix_utc(gint64(t))
        return rv.map { DateTimeRef(cast($0)) }
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// the local time zone.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_local()`.
    static func new(local year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) -> DateTimeRef! {
        let rv = g_date_time_new_local(gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        return rv.map { DateTimeRef(cast($0)) }
    }

    /// Creates a `GDateTime` corresponding to this exact instant in the given
    /// time zone `tz`.  The time is as accurate as the system allows, to a
    /// maximum accuracy of 1 microsecond.
    /// 
    /// This function will always succeed unless the system clock is set to
    /// truly insane values (or unless GLib is still being used after the
    /// year 9999).
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    static func new(now tz: TimeZoneProtocol) -> DateTimeRef! {
        let rv = g_date_time_new_now(cast(tz.ptr))
        return rv.map { DateTimeRef(cast($0)) }
    }

    /// Creates a `GDateTime` corresponding to this exact instant in the local
    /// time zone.
    /// 
    /// This is equivalent to calling `g_date_time_new_now()` with the time
    /// zone returned by `g_time_zone_new_local()`.
    static func newNowLocal() -> DateTimeRef! {
        let rv = g_date_time_new_now_local()
        return rv.map { DateTimeRef(cast($0)) }
    }

    /// Creates a `GDateTime` corresponding to this exact instant in UTC.
    /// 
    /// This is equivalent to calling `g_date_time_new_now()` with the time
    /// zone returned by `g_time_zone_new_utc()`.
    static func newNowUTC() -> DateTimeRef! {
        let rv = g_date_time_new_now_utc()
        return rv.map { DateTimeRef(cast($0)) }
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// UTC.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_utc()`.
    static func new(utc year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) -> DateTimeRef! {
        let rv = g_date_time_new_utc(gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        return rv.map { DateTimeRef(cast($0)) }
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DateTime` instance.
    public init(_ op: UnsafeMutablePointer<GDateTime>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DateTimeProtocol`
    /// Will retain `GDateTime`.
    public convenience init<T: DateTimeProtocol>(_ other: T) {
        self.init(cast(other.date_time_ptr))
        g_date_time_ref(cast(date_time_ptr))
    }

    /// Releases the underlying `GDateTime` instance using `g_date_time_unref`.
    deinit {
        g_date_time_unref(cast(date_time_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDateTime.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDateTime.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDateTime.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDateTime>(opaquePointer))
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
    public convenience init( tz: TimeZoneProtocol, year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) {
        let rv = g_date_time_new(cast(tz.ptr), gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        self.init(cast(rv))
    }

    /// Creates a `GDateTime` corresponding to the given
    /// [ISO 8601 formatted string](https://en.wikipedia.org/wiki/ISO_8601)
    /// `text`. ISO 8601 strings of the form <date><sep><time><tz> are supported.
    /// 
    /// <sep> is the separator and can be either 'T', 't' or ' '.
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
    public convenience init(iso8601 text: UnsafePointer<gchar>, defaultTz default_tz: TimeZoneProtocol) {
        let rv = g_date_time_new_from_iso8601(text, cast(default_tz.ptr))
        self.init(cast(rv))
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
    @available(*, deprecated) public convenience init(timevalLocal tv: TimeValProtocol) {
        let rv = g_date_time_new_from_timeval_local(cast(tv.ptr))
        self.init(cast(rv))
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
    @available(*, deprecated) public convenience init(timevalUTC tv: TimeValProtocol) {
        let rv = g_date_time_new_from_timeval_utc(cast(tv.ptr))
        self.init(cast(rv))
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
    public convenience init(unixLocal t: Int64) {
        let rv = g_date_time_new_from_unix_local(gint64(t))
        self.init(cast(rv))
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
    public convenience init(unixUTC t: Int64) {
        let rv = g_date_time_new_from_unix_utc(gint64(t))
        self.init(cast(rv))
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// the local time zone.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_local()`.
    public convenience init(local year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) {
        let rv = g_date_time_new_local(gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        self.init(cast(rv))
    }

    /// Creates a `GDateTime` corresponding to this exact instant in the given
    /// time zone `tz`.  The time is as accurate as the system allows, to a
    /// maximum accuracy of 1 microsecond.
    /// 
    /// This function will always succeed unless the system clock is set to
    /// truly insane values (or unless GLib is still being used after the
    /// year 9999).
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    public convenience init(now tz: TimeZoneProtocol) {
        let rv = g_date_time_new_now(cast(tz.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// UTC.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_utc()`.
    public convenience init(utc year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) {
        let rv = g_date_time_new_utc(gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        self.init(cast(rv))
    }

    /// Creates a `GDateTime` corresponding to the given
    /// [ISO 8601 formatted string](https://en.wikipedia.org/wiki/ISO_8601)
    /// `text`. ISO 8601 strings of the form <date><sep><time><tz> are supported.
    /// 
    /// <sep> is the separator and can be either 'T', 't' or ' '.
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
    public static func newFrom(iso8601 text: UnsafePointer<gchar>, defaultTz default_tz: TimeZoneProtocol) -> DateTime! {
        let rv = g_date_time_new_from_iso8601(text, cast(default_tz.ptr))
        return rv.map { DateTime(cast($0)) }
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
    @available(*, deprecated) public static func newFrom(timevalLocal tv: TimeValProtocol) -> DateTime! {
        let rv = g_date_time_new_from_timeval_local(cast(tv.ptr))
        return rv.map { DateTime(cast($0)) }
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
    @available(*, deprecated) public static func newFrom(timevalUTC tv: TimeValProtocol) -> DateTime! {
        let rv = g_date_time_new_from_timeval_utc(cast(tv.ptr))
        return rv.map { DateTime(cast($0)) }
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
    public static func newFrom(unixLocal t: Int64) -> DateTime! {
        let rv = g_date_time_new_from_unix_local(gint64(t))
        return rv.map { DateTime(cast($0)) }
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
    public static func newFrom(unixUTC t: Int64) -> DateTime! {
        let rv = g_date_time_new_from_unix_utc(gint64(t))
        return rv.map { DateTime(cast($0)) }
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// the local time zone.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_local()`.
    public static func new(local year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) -> DateTime! {
        let rv = g_date_time_new_local(gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        return rv.map { DateTime(cast($0)) }
    }

    /// Creates a `GDateTime` corresponding to this exact instant in the given
    /// time zone `tz`.  The time is as accurate as the system allows, to a
    /// maximum accuracy of 1 microsecond.
    /// 
    /// This function will always succeed unless the system clock is set to
    /// truly insane values (or unless GLib is still being used after the
    /// year 9999).
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    public static func new(now tz: TimeZoneProtocol) -> DateTime! {
        let rv = g_date_time_new_now(cast(tz.ptr))
        return rv.map { DateTime(cast($0)) }
    }

    /// Creates a `GDateTime` corresponding to this exact instant in the local
    /// time zone.
    /// 
    /// This is equivalent to calling `g_date_time_new_now()` with the time
    /// zone returned by `g_time_zone_new_local()`.
    public static func newNowLocal() -> DateTime! {
        let rv = g_date_time_new_now_local()
        return rv.map { DateTime(cast($0)) }
    }

    /// Creates a `GDateTime` corresponding to this exact instant in UTC.
    /// 
    /// This is equivalent to calling `g_date_time_new_now()` with the time
    /// zone returned by `g_time_zone_new_utc()`.
    public static func newNowUTC() -> DateTime! {
        let rv = g_date_time_new_now_utc()
        return rv.map { DateTime(cast($0)) }
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// UTC.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_utc()`.
    public static func new(utc year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) -> DateTime! {
        let rv = g_date_time_new_utc(gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        return rv.map { DateTime(cast($0)) }
    }

}

// MARK: - no DateTime properties

// MARK: - no signals


public extension DateTimeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDateTime` instance.
    var date_time_ptr: UnsafeMutablePointer<GDateTime> { return ptr.assumingMemoryBound(to: GDateTime.self) }

    /// Creates a copy of `datetime` and adds the specified timespan to the copy.
    func add(timespan: TimeSpan) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_add(cast(date_time_ptr), timespan)
        return cast(rv)
    }

    /// Creates a copy of `datetime` and adds the specified number of days to the
    /// copy. Add negative values to subtract days.
    func add(days: CInt) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_add_days(cast(date_time_ptr), gint(days))
        return cast(rv)
    }

    /// Creates a new `GDateTime` adding the specified values to the current date and
    /// time in `datetime`. Add negative values to subtract.
    func addFull(years: CInt, months: CInt, days: CInt, hours: CInt, minutes: CInt, seconds: gdouble) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_add_full(cast(date_time_ptr), gint(years), gint(months), gint(days), gint(hours), gint(minutes), seconds)
        return cast(rv)
    }

    /// Creates a copy of `datetime` and adds the specified number of hours.
    /// Add negative values to subtract hours.
    func add(hours: CInt) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_add_hours(cast(date_time_ptr), gint(hours))
        return cast(rv)
    }

    /// Creates a copy of `datetime` adding the specified number of minutes.
    /// Add negative values to subtract minutes.
    func add(minutes: CInt) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_add_minutes(cast(date_time_ptr), gint(minutes))
        return cast(rv)
    }

    /// Creates a copy of `datetime` and adds the specified number of months to the
    /// copy. Add negative values to subtract months.
    /// 
    /// The day of the month of the resulting `GDateTime` is clamped to the number
    /// of days in the updated calendar month. For example, if adding 1 month to
    /// 31st January 2018, the result would be 28th February 2018. In 2020 (a leap
    /// year), the result would be 29th February.
    func add(months: CInt) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_add_months(cast(date_time_ptr), gint(months))
        return cast(rv)
    }

    /// Creates a copy of `datetime` and adds the specified number of seconds.
    /// Add negative values to subtract seconds.
    func add(seconds: gdouble) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_add_seconds(cast(date_time_ptr), seconds)
        return cast(rv)
    }

    /// Creates a copy of `datetime` and adds the specified number of weeks to the
    /// copy. Add negative values to subtract weeks.
    func add(weeks: CInt) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_add_weeks(cast(date_time_ptr), gint(weeks))
        return cast(rv)
    }

    /// Creates a copy of `datetime` and adds the specified number of years to the
    /// copy. Add negative values to subtract years.
    /// 
    /// As with `g_date_time_add_months()`, if the resulting date would be 29th
    /// February on a non-leap year, the day will be clamped to 28th February.
    func add(years: CInt) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_add_years(cast(date_time_ptr), gint(years))
        return cast(rv)
    }

    /// Calculates the difference in time between `end` and `begin`.  The
    /// `GTimeSpan` that is returned is effectively `end` - `begin` (ie:
    /// positive if the first parameter is larger).
    func difference(begin: DateTimeProtocol) -> GTimeSpan {
        let rv = g_date_time_difference(cast(date_time_ptr), cast(begin.ptr))
        return rv
    }

    /// Creates a newly allocated string representing the requested `format`.
    /// 
    /// The format strings understood by this function are a subset of the
    /// `strftime()` format language as specified by C99.  The \`D`, \`U` and \`W`
    /// conversions are not supported, nor is the 'E' modifier.  The GNU
    /// extensions \`k`, \`l`, \`s` and \`P` are supported, however, as are the
    /// '0', '_' and '-' modifiers.
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
    /// - \`p:` either "AM" or "PM" according to the given time value, or the
    ///   corresponding  strings for the current locale.  Noon is treated as
    ///   "PM" and midnight as "AM".
    /// - \`P:` like \`p` but lowercase: "am" or "pm" or a corresponding string for
    ///   the current locale
    /// - \`r:` the time in a.m. or p.m. notation
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
    func format(format: UnsafePointer<gchar>) -> String! {
        let rv = g_date_time_format(cast(date_time_ptr), format)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Format `datetime` in [ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601),
    /// including the date, time and time zone, and return that as a UTF-8 encoded
    /// string.
    func formatIso8601() -> String! {
        let rv = g_date_time_format_iso8601(cast(date_time_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Retrieves the day of the month represented by `datetime` in the gregorian
    /// calendar.
    func getDayOfMonth() -> CInt {
        let rv = g_date_time_get_day_of_month(cast(date_time_ptr))
        return CInt(rv)
    }

    /// Retrieves the ISO 8601 day of the week on which `datetime` falls (1 is
    /// Monday, 2 is Tuesday... 7 is Sunday).
    func getDayOfWeek() -> CInt {
        let rv = g_date_time_get_day_of_week(cast(date_time_ptr))
        return CInt(rv)
    }

    /// Retrieves the day of the year represented by `datetime` in the Gregorian
    /// calendar.
    func getDayOfYear() -> CInt {
        let rv = g_date_time_get_day_of_year(cast(date_time_ptr))
        return CInt(rv)
    }

    /// Retrieves the hour of the day represented by `datetime`
    func getHour() -> CInt {
        let rv = g_date_time_get_hour(cast(date_time_ptr))
        return CInt(rv)
    }

    /// Retrieves the microsecond of the date represented by `datetime`
    func getMicrosecond() -> CInt {
        let rv = g_date_time_get_microsecond(cast(date_time_ptr))
        return CInt(rv)
    }

    /// Retrieves the minute of the hour represented by `datetime`
    func getMinute() -> CInt {
        let rv = g_date_time_get_minute(cast(date_time_ptr))
        return CInt(rv)
    }

    /// Retrieves the month of the year represented by `datetime` in the Gregorian
    /// calendar.
    func getMonth() -> CInt {
        let rv = g_date_time_get_month(cast(date_time_ptr))
        return CInt(rv)
    }

    /// Retrieves the second of the minute represented by `datetime`
    func getSecond() -> CInt {
        let rv = g_date_time_get_second(cast(date_time_ptr))
        return CInt(rv)
    }

    /// Retrieves the number of seconds since the start of the last minute,
    /// including the fractional part.
    func getSeconds() -> gdouble {
        let rv = g_date_time_get_seconds(cast(date_time_ptr))
        return rv
    }

    /// Get the time zone for this `datetime`.
    func getTimezone() -> UnsafeMutablePointer<GTimeZone>! {
        let rv = g_date_time_get_timezone(cast(date_time_ptr))
        return cast(rv)
    }

    /// Determines the time zone abbreviation to be used at the time and in
    /// the time zone of `datetime`.
    /// 
    /// For example, in Toronto this is currently "EST" during the winter
    /// months and "EDT" during the summer months when daylight savings
    /// time is in effect.
    func getTimezoneAbbreviation() -> String! {
        let rv = g_date_time_get_timezone_abbreviation(cast(date_time_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Determines the offset to UTC in effect at the time and in the time
    /// zone of `datetime`.
    /// 
    /// The offset is the number of microseconds that you add to UTC time to
    /// arrive at local time for the time zone (ie: negative numbers for time
    /// zones west of GMT, positive numbers for east).
    /// 
    /// If `datetime` represents UTC time, then the offset is always zero.
    func getUTCOffset() -> GTimeSpan {
        let rv = g_date_time_get_utc_offset(cast(date_time_ptr))
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
    func getWeekNumberingYear() -> CInt {
        let rv = g_date_time_get_week_numbering_year(cast(date_time_ptr))
        return CInt(rv)
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
    func getWeekOfYear() -> CInt {
        let rv = g_date_time_get_week_of_year(cast(date_time_ptr))
        return CInt(rv)
    }

    /// Retrieves the year represented by `datetime` in the Gregorian calendar.
    func getYear() -> CInt {
        let rv = g_date_time_get_year(cast(date_time_ptr))
        return CInt(rv)
    }

    /// Retrieves the Gregorian day, month, and year of a given `GDateTime`.
    func getYmd(year: UnsafeMutablePointer<CInt>, month: UnsafeMutablePointer<CInt>, day: UnsafeMutablePointer<CInt>) {
        g_date_time_get_ymd(cast(date_time_ptr), cast(year), cast(month), cast(day))
    
    }

    /// Atomically increments the reference count of `datetime` by one.
    func ref() -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_ref(cast(date_time_ptr))
        return cast(rv)
    }

    /// Creates a new `GDateTime` corresponding to the same instant in time as
    /// `datetime`, but in the local time zone.
    /// 
    /// This call is equivalent to calling `g_date_time_to_timezone()` with the
    /// time zone returned by `g_time_zone_new_local()`.
    func toLocal() -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_to_local(cast(date_time_ptr))
        return cast(rv)
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
    @available(*, deprecated) func toTimeval(tv: TimeValProtocol) -> Bool {
        let rv = g_date_time_to_timeval(cast(date_time_ptr), cast(tv.ptr))
        return Bool(rv != 0)
    }

    /// Create a new `GDateTime` corresponding to the same instant in time as
    /// `datetime`, but in the time zone `tz`.
    /// 
    /// This call can fail in the case that the time goes out of bounds.  For
    /// example, converting 0001-01-01 00:00:00 UTC to a time zone west of
    /// Greenwich will fail (due to the year 0 being out of range).
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    func toTimezone(tz: TimeZoneProtocol) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_to_timezone(cast(date_time_ptr), cast(tz.ptr))
        return cast(rv)
    }

    /// Gives the Unix time corresponding to `datetime`, rounding down to the
    /// nearest second.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC, regardless of the time zone associated with `datetime`.
    func toUnix() -> Int64 {
        let rv = g_date_time_to_unix(cast(date_time_ptr))
        return Int64(rv)
    }

    /// Creates a new `GDateTime` corresponding to the same instant in time as
    /// `datetime`, but in UTC.
    /// 
    /// This call is equivalent to calling `g_date_time_to_timezone()` with the
    /// time zone returned by `g_time_zone_new_utc()`.
    func toUTC() -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_to_utc(cast(date_time_ptr))
        return cast(rv)
    }

    /// Atomically decrements the reference count of `datetime` by one.
    /// 
    /// When the reference count reaches zero, the resources allocated by
    /// `datetime` are freed
    func unref() {
        g_date_time_unref(cast(date_time_ptr))
    
    }
    /// Retrieves the day of the month represented by `datetime` in the gregorian
    /// calendar.
    var dayOfMonth: CInt {
        /// Retrieves the day of the month represented by `datetime` in the gregorian
        /// calendar.
        get {
            let rv = g_date_time_get_day_of_month(cast(date_time_ptr))
            return CInt(rv)
        }
    }

    /// Retrieves the ISO 8601 day of the week on which `datetime` falls (1 is
    /// Monday, 2 is Tuesday... 7 is Sunday).
    var dayOfWeek: CInt {
        /// Retrieves the ISO 8601 day of the week on which `datetime` falls (1 is
        /// Monday, 2 is Tuesday... 7 is Sunday).
        get {
            let rv = g_date_time_get_day_of_week(cast(date_time_ptr))
            return CInt(rv)
        }
    }

    /// Retrieves the day of the year represented by `datetime` in the Gregorian
    /// calendar.
    var dayOfYear: CInt {
        /// Retrieves the day of the year represented by `datetime` in the Gregorian
        /// calendar.
        get {
            let rv = g_date_time_get_day_of_year(cast(date_time_ptr))
            return CInt(rv)
        }
    }

    /// Retrieves the hour of the day represented by `datetime`
    var hour: CInt {
        /// Retrieves the hour of the day represented by `datetime`
        get {
            let rv = g_date_time_get_hour(cast(date_time_ptr))
            return CInt(rv)
        }
    }

    /// Determines if daylight savings time is in effect at the time and in
    /// the time zone of `datetime`.
    var isDaylightSavings: Bool {
        /// Determines if daylight savings time is in effect at the time and in
        /// the time zone of `datetime`.
        get {
            let rv = g_date_time_is_daylight_savings(cast(date_time_ptr))
            return Bool(rv != 0)
        }
    }

    /// Retrieves the microsecond of the date represented by `datetime`
    var microsecond: CInt {
        /// Retrieves the microsecond of the date represented by `datetime`
        get {
            let rv = g_date_time_get_microsecond(cast(date_time_ptr))
            return CInt(rv)
        }
    }

    /// Retrieves the minute of the hour represented by `datetime`
    var minute: CInt {
        /// Retrieves the minute of the hour represented by `datetime`
        get {
            let rv = g_date_time_get_minute(cast(date_time_ptr))
            return CInt(rv)
        }
    }

    /// Retrieves the month of the year represented by `datetime` in the Gregorian
    /// calendar.
    var month: CInt {
        /// Retrieves the month of the year represented by `datetime` in the Gregorian
        /// calendar.
        get {
            let rv = g_date_time_get_month(cast(date_time_ptr))
            return CInt(rv)
        }
    }

    /// Retrieves the second of the minute represented by `datetime`
    var second: CInt {
        /// Retrieves the second of the minute represented by `datetime`
        get {
            let rv = g_date_time_get_second(cast(date_time_ptr))
            return CInt(rv)
        }
    }

    /// Retrieves the number of seconds since the start of the last minute,
    /// including the fractional part.
    var seconds: gdouble {
        /// Retrieves the number of seconds since the start of the last minute,
        /// including the fractional part.
        get {
            let rv = g_date_time_get_seconds(cast(date_time_ptr))
            return rv
        }
    }

    /// Get the time zone for this `datetime`.
    var timezone: UnsafeMutablePointer<GTimeZone>! {
        /// Get the time zone for this `datetime`.
        get {
            let rv = g_date_time_get_timezone(cast(date_time_ptr))
            return cast(rv)
        }
    }

    /// Determines the time zone abbreviation to be used at the time and in
    /// the time zone of `datetime`.
    /// 
    /// For example, in Toronto this is currently "EST" during the winter
    /// months and "EDT" during the summer months when daylight savings
    /// time is in effect.
    var timezoneAbbreviation: String! {
        /// Determines the time zone abbreviation to be used at the time and in
        /// the time zone of `datetime`.
        /// 
        /// For example, in Toronto this is currently "EST" during the winter
        /// months and "EDT" during the summer months when daylight savings
        /// time is in effect.
        get {
            let rv = g_date_time_get_timezone_abbreviation(cast(date_time_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    var utcOffset: GTimeSpan {
        /// Determines the offset to UTC in effect at the time and in the time
        /// zone of `datetime`.
        /// 
        /// The offset is the number of microseconds that you add to UTC time to
        /// arrive at local time for the time zone (ie: negative numbers for time
        /// zones west of GMT, positive numbers for east).
        /// 
        /// If `datetime` represents UTC time, then the offset is always zero.
        get {
            let rv = g_date_time_get_utc_offset(cast(date_time_ptr))
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
    var weekNumberingYear: CInt {
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
            let rv = g_date_time_get_week_numbering_year(cast(date_time_ptr))
            return CInt(rv)
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
    var weekOfYear: CInt {
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
            let rv = g_date_time_get_week_of_year(cast(date_time_ptr))
            return CInt(rv)
        }
    }

    /// Retrieves the year represented by `datetime` in the Gregorian calendar.
    var year: CInt {
        /// Retrieves the year represented by `datetime` in the Gregorian calendar.
        get {
            let rv = g_date_time_get_year(cast(date_time_ptr))
            return CInt(rv)
        }
    }
}



