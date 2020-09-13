import CGLib

// MARK: - TimeZone Record

/// The `TimeZoneProtocol` protocol exposes the methods and properties of an underlying `GTimeZone` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TimeZone`.
/// Alternatively, use `TimeZoneRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GTimeZone` is an opaque structure whose members cannot be accessed
/// directly.
public protocol TimeZoneProtocol {
        /// Untyped pointer to the underlying `GTimeZone` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTimeZone` instance.
    var time_zone_ptr: UnsafeMutablePointer<GTimeZone>! { get }

}

/// The `TimeZoneRef` type acts as a lightweight Swift reference to an underlying `GTimeZone` instance.
/// It exposes methods that can operate on this data type through `TimeZoneProtocol` conformance.
/// Use `TimeZoneRef` only as an `unowned` reference to an existing `GTimeZone` instance.
///
/// `GTimeZone` is an opaque structure whose members cannot be accessed
/// directly.
public struct TimeZoneRef: TimeZoneProtocol {
        /// Untyped pointer to the underlying `GTimeZone` instance.
    /// For type-safe access, use the generated, typed pointer `time_zone_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TimeZoneRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTimeZone>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTimeZone>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTimeZone>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTimeZone>?) {
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

    /// Reference intialiser for a related type that implements `TimeZoneProtocol`
    @inlinable init<T: TimeZoneProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GTimeZone` corresponding to `identifier`.
    /// 
    /// `identifier` can either be an RFC3339/ISO 8601 time offset or
    /// something that would pass as a valid value for the `TZ` environment
    /// variable (including `nil`).
    /// 
    /// In Windows, `identifier` can also be the unlocalized name of a time
    /// zone for standard time, for example "Pacific Standard Time".
    /// 
    /// Valid RFC3339 time offsets are `"Z"` (for UTC) or
    /// `"±hh:mm"`.  ISO 8601 additionally specifies
    /// `"±hhmm"` and `"±hh"`.  Offsets are
    /// time values to be added to Coordinated Universal Time (UTC) to get
    /// the local time.
    /// 
    /// In UNIX, the `TZ` environment variable typically corresponds
    /// to the name of a file in the zoneinfo database, an absolute path to a file
    /// somewhere else, or a string in
    /// "std offset [dst [offset],start[/time],end[/time]]" (POSIX) format.
    /// There  are  no spaces in the specification. The name of standard
    /// and daylight savings time zone must be three or more alphabetic
    /// characters. Offsets are time values to be added to local time to
    /// get Coordinated Universal Time (UTC) and should be
    /// `"[±]hh[[:]mm[:ss]]"`.  Dates are either
    /// `"Jn"` (Julian day with n between 1 and 365, leap
    /// years not counted), `"n"` (zero-based Julian day
    /// with n between 0 and 365) or `"Mm.w.d"` (day d
    /// (0 <= d <= 6) of week w (1 <= w <= 5) of month m (1 <= m <= 12), day
    /// 0 is a Sunday).  Times are in local wall clock time, the default is
    /// 02:00:00.
    /// 
    /// In Windows, the "tzn[+|–]hh[:mm[:ss]](#dzn)" format is used, but also
    /// accepts POSIX format.  The Windows format uses US rules for all time
    /// zones; daylight savings time is 60 minutes behind the standard time
    /// with date and time of change taken from Pacific Standard Time.
    /// Offsets are time values to be added to the local time to get
    /// Coordinated Universal Time (UTC).
    /// 
    /// `g_time_zone_new_local()` calls this function with the value of the
    /// `TZ` environment variable. This function itself is independent of
    /// the value of `TZ`, but if `identifier` is `nil` then `/etc/localtime`
    /// will be consulted to discover the correct time zone on UNIX and the
    /// registry will be consulted or `GetTimeZoneInformation()` will be used
    /// to get the local time zone on Windows.
    /// 
    /// If intervals are not available, only time zone rules from `TZ`
    /// environment variable or other means, then they will be computed
    /// from year 1900 to 2037.  If the maximum year for the rules is
    /// available and it is greater than 2037, then it will followed
    /// instead.
    /// 
    /// See
    /// [RFC3339 §5.6](http://tools.ietf.org/html/rfc3339`section`-5.6)
    /// for a precise definition of valid RFC3339 time offsets
    /// (the `time-offset` expansion) and ISO 8601 for the
    /// full list of valid time offsets.  See
    /// [The GNU C Library manual](http://www.gnu.org/s/libc/manual/html_node/TZ-Variable.html)
    /// for an explanation of the possible
    /// values of the `TZ` environment variable. See
    /// [Microsoft Time Zone Index Values](http://msdn.microsoft.com/en-us/library/ms912391`28v`=winembedded.11`29.aspx`)
    /// for the list of time zones on Windows.
    /// 
    /// You should release the return value by calling `g_time_zone_unref()`
    /// when you are done with it.
    @inlinable init( identifier: UnsafePointer<gchar>? = nil) {
        let rv = g_time_zone_new(identifier)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GTimeZone` corresponding to the given constant offset from UTC,
    /// in seconds.
    /// 
    /// This is equivalent to calling `g_time_zone_new()` with a string in the form
    /// `[+|-]hh[:mm[:ss]]`.
    @inlinable init(offset seconds: gint32) {
        let rv = g_time_zone_new_offset(seconds)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a `GTimeZone` corresponding to local time.  The local time
    /// zone may change between invocations to this function; for example,
    /// if the system administrator changes it.
    /// 
    /// This is equivalent to calling `g_time_zone_new()` with the value of
    /// the `TZ` environment variable (including the possibility of `nil`).
    /// 
    /// You should release the return value by calling `g_time_zone_unref()`
    /// when you are done with it.
    @inlinable static func newLocal() -> TimeZoneRef! {
        guard let rv = TimeZoneRef(gconstpointer: gconstpointer(g_time_zone_new_local())) else { return nil }
        return rv
    }

    /// Creates a `GTimeZone` corresponding to the given constant offset from UTC,
    /// in seconds.
    /// 
    /// This is equivalent to calling `g_time_zone_new()` with a string in the form
    /// `[+|-]hh[:mm[:ss]]`.
    @inlinable static func new(offset seconds: gint32) -> TimeZoneRef! {
        guard let rv = TimeZoneRef(gconstpointer: gconstpointer(g_time_zone_new_offset(seconds))) else { return nil }
        return rv
    }

    /// Creates a `GTimeZone` corresponding to UTC.
    /// 
    /// This is equivalent to calling `g_time_zone_new()` with a value like
    /// "Z", "UTC", "+00", etc.
    /// 
    /// You should release the return value by calling `g_time_zone_unref()`
    /// when you are done with it.
    @inlinable static func newUTC() -> TimeZoneRef! {
        guard let rv = TimeZoneRef(gconstpointer: gconstpointer(g_time_zone_new_utc())) else { return nil }
        return rv
    }
}

/// The `TimeZone` type acts as a reference-counted owner of an underlying `GTimeZone` instance.
/// It provides the methods that can operate on this data type through `TimeZoneProtocol` conformance.
/// Use `TimeZone` as a strong reference or owner of a `GTimeZone` instance.
///
/// `GTimeZone` is an opaque structure whose members cannot be accessed
/// directly.
open class TimeZone: TimeZoneProtocol {
        /// Untyped pointer to the underlying `GTimeZone` instance.
    /// For type-safe access, use the generated, typed pointer `time_zone_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeZone` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTimeZone>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeZone` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTimeZone>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeZone` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeZone` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeZone` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTimeZone>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeZone` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTimeZone>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTimeZone`.
    /// i.e., ownership is transferred to the `TimeZone` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTimeZone>) {
        ptr = UnsafeMutableRawPointer(op)
        g_time_zone_ref(ptr.assumingMemoryBound(to: GTimeZone.self))
    }

    /// Reference intialiser for a related type that implements `TimeZoneProtocol`
    /// Will retain `GTimeZone`.
    /// - Parameter other: an instance of a related type that implements `TimeZoneProtocol`
    @inlinable public init<T: TimeZoneProtocol>(_ other: T) {
        ptr = other.ptr
        g_time_zone_ref(ptr.assumingMemoryBound(to: GTimeZone.self))
    }

    /// Releases the underlying `GTimeZone` instance using `g_time_zone_unref`.
    deinit {
        g_time_zone_unref(ptr.assumingMemoryBound(to: GTimeZone.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_time_zone_ref(ptr.assumingMemoryBound(to: GTimeZone.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_time_zone_ref(ptr.assumingMemoryBound(to: GTimeZone.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_time_zone_ref(ptr.assumingMemoryBound(to: GTimeZone.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_time_zone_ref(ptr.assumingMemoryBound(to: GTimeZone.self))
    }

    /// Creates a `GTimeZone` corresponding to `identifier`.
    /// 
    /// `identifier` can either be an RFC3339/ISO 8601 time offset or
    /// something that would pass as a valid value for the `TZ` environment
    /// variable (including `nil`).
    /// 
    /// In Windows, `identifier` can also be the unlocalized name of a time
    /// zone for standard time, for example "Pacific Standard Time".
    /// 
    /// Valid RFC3339 time offsets are `"Z"` (for UTC) or
    /// `"±hh:mm"`.  ISO 8601 additionally specifies
    /// `"±hhmm"` and `"±hh"`.  Offsets are
    /// time values to be added to Coordinated Universal Time (UTC) to get
    /// the local time.
    /// 
    /// In UNIX, the `TZ` environment variable typically corresponds
    /// to the name of a file in the zoneinfo database, an absolute path to a file
    /// somewhere else, or a string in
    /// "std offset [dst [offset],start[/time],end[/time]]" (POSIX) format.
    /// There  are  no spaces in the specification. The name of standard
    /// and daylight savings time zone must be three or more alphabetic
    /// characters. Offsets are time values to be added to local time to
    /// get Coordinated Universal Time (UTC) and should be
    /// `"[±]hh[[:]mm[:ss]]"`.  Dates are either
    /// `"Jn"` (Julian day with n between 1 and 365, leap
    /// years not counted), `"n"` (zero-based Julian day
    /// with n between 0 and 365) or `"Mm.w.d"` (day d
    /// (0 <= d <= 6) of week w (1 <= w <= 5) of month m (1 <= m <= 12), day
    /// 0 is a Sunday).  Times are in local wall clock time, the default is
    /// 02:00:00.
    /// 
    /// In Windows, the "tzn[+|–]hh[:mm[:ss]](#dzn)" format is used, but also
    /// accepts POSIX format.  The Windows format uses US rules for all time
    /// zones; daylight savings time is 60 minutes behind the standard time
    /// with date and time of change taken from Pacific Standard Time.
    /// Offsets are time values to be added to the local time to get
    /// Coordinated Universal Time (UTC).
    /// 
    /// `g_time_zone_new_local()` calls this function with the value of the
    /// `TZ` environment variable. This function itself is independent of
    /// the value of `TZ`, but if `identifier` is `nil` then `/etc/localtime`
    /// will be consulted to discover the correct time zone on UNIX and the
    /// registry will be consulted or `GetTimeZoneInformation()` will be used
    /// to get the local time zone on Windows.
    /// 
    /// If intervals are not available, only time zone rules from `TZ`
    /// environment variable or other means, then they will be computed
    /// from year 1900 to 2037.  If the maximum year for the rules is
    /// available and it is greater than 2037, then it will followed
    /// instead.
    /// 
    /// See
    /// [RFC3339 §5.6](http://tools.ietf.org/html/rfc3339`section`-5.6)
    /// for a precise definition of valid RFC3339 time offsets
    /// (the `time-offset` expansion) and ISO 8601 for the
    /// full list of valid time offsets.  See
    /// [The GNU C Library manual](http://www.gnu.org/s/libc/manual/html_node/TZ-Variable.html)
    /// for an explanation of the possible
    /// values of the `TZ` environment variable. See
    /// [Microsoft Time Zone Index Values](http://msdn.microsoft.com/en-us/library/ms912391`28v`=winembedded.11`29.aspx`)
    /// for the list of time zones on Windows.
    /// 
    /// You should release the return value by calling `g_time_zone_unref()`
    /// when you are done with it.
    @inlinable public init( identifier: UnsafePointer<gchar>? = nil) {
        let rv = g_time_zone_new(identifier)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GTimeZone` corresponding to the given constant offset from UTC,
    /// in seconds.
    /// 
    /// This is equivalent to calling `g_time_zone_new()` with a string in the form
    /// `[+|-]hh[:mm[:ss]]`.
    @inlinable public init(offset seconds: gint32) {
        let rv = g_time_zone_new_offset(seconds)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GTimeZone` corresponding to local time.  The local time
    /// zone may change between invocations to this function; for example,
    /// if the system administrator changes it.
    /// 
    /// This is equivalent to calling `g_time_zone_new()` with the value of
    /// the `TZ` environment variable (including the possibility of `nil`).
    /// 
    /// You should release the return value by calling `g_time_zone_unref()`
    /// when you are done with it.
    @inlinable public static func newLocal() -> TimeZone! {
        guard let rv = TimeZone(gconstpointer: gconstpointer(g_time_zone_new_local())) else { return nil }
        return rv
    }

    /// Creates a `GTimeZone` corresponding to the given constant offset from UTC,
    /// in seconds.
    /// 
    /// This is equivalent to calling `g_time_zone_new()` with a string in the form
    /// `[+|-]hh[:mm[:ss]]`.
    @inlinable public static func new(offset seconds: gint32) -> TimeZone! {
        guard let rv = TimeZone(gconstpointer: gconstpointer(g_time_zone_new_offset(seconds))) else { return nil }
        return rv
    }

    /// Creates a `GTimeZone` corresponding to UTC.
    /// 
    /// This is equivalent to calling `g_time_zone_new()` with a value like
    /// "Z", "UTC", "+00", etc.
    /// 
    /// You should release the return value by calling `g_time_zone_unref()`
    /// when you are done with it.
    @inlinable public static func newUTC() -> TimeZone! {
        guard let rv = TimeZone(gconstpointer: gconstpointer(g_time_zone_new_utc())) else { return nil }
        return rv
    }

}

// MARK: no TimeZone properties

// MARK: no TimeZone signals


// MARK: TimeZone Record: TimeZoneProtocol extension (methods and fields)
public extension TimeZoneProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTimeZone` instance.
    @inlinable var time_zone_ptr: UnsafeMutablePointer<GTimeZone>! { return ptr?.assumingMemoryBound(to: GTimeZone.self) }

    /// Finds an interval within `tz` that corresponds to the given `time_`,
    /// possibly adjusting `time_` if required to fit into an interval.
    /// The meaning of `time_` depends on `type`.
    /// 
    /// This function is similar to `g_time_zone_find_interval()`, with the
    /// difference that it always succeeds (by making the adjustments
    /// described below).
    /// 
    /// In any of the cases where `g_time_zone_find_interval()` succeeds then
    /// this function returns the same value, without modifying `time_`.
    /// 
    /// This function may, however, modify `time_` in order to deal with
    /// non-existent times.  If the non-existent local `time_` of 02:30 were
    /// requested on March 14th 2010 in Toronto then this function would
    /// adjust `time_` to be 03:00 and return the interval containing the
    /// adjusted time.
    @inlinable func adjustTime(type: GTimeType, time_: UnsafeMutablePointer<gint64>!) -> Int {
        let rv = Int(g_time_zone_adjust_time(time_zone_ptr, type, time_))
        return rv
    }

    /// Finds an interval within `tz` that corresponds to the given `time_`.
    /// The meaning of `time_` depends on `type`.
    /// 
    /// If `type` is `G_TIME_TYPE_UNIVERSAL` then this function will always
    /// succeed (since universal time is monotonic and continuous).
    /// 
    /// Otherwise `time_` is treated as local time.  The distinction between
    /// `G_TIME_TYPE_STANDARD` and `G_TIME_TYPE_DAYLIGHT` is ignored except in
    /// the case that the given `time_` is ambiguous.  In Toronto, for example,
    /// 01:30 on November 7th 2010 occurred twice (once inside of daylight
    /// savings time and the next, an hour later, outside of daylight savings
    /// time).  In this case, the different value of `type` would result in a
    /// different interval being returned.
    /// 
    /// It is still possible for this function to fail.  In Toronto, for
    /// example, 02:00 on March 14th 2010 does not exist (due to the leap
    /// forward to begin daylight savings time).  -1 is returned in that
    /// case.
    @inlinable func findInterval(type: GTimeType, time_: gint64) -> Int {
        let rv = Int(g_time_zone_find_interval(time_zone_ptr, type, time_))
        return rv
    }

    /// Determines the time zone abbreviation to be used during a particular
    /// `interval` of time in the time zone `tz`.
    /// 
    /// For example, in Toronto this is currently "EST" during the winter
    /// months and "EDT" during the summer months when daylight savings time
    /// is in effect.
    @inlinable func getAbbreviation(interval: Int) -> String! {
        let rv = g_time_zone_get_abbreviation(time_zone_ptr, gint(interval)).map({ String(cString: $0) })
        return rv
    }

    /// Get the identifier of this `GTimeZone`, as passed to `g_time_zone_new()`.
    /// If the identifier passed at construction time was not recognised, `UTC` will
    /// be returned. If it was `nil`, the identifier of the local timezone at
    /// construction time will be returned.
    /// 
    /// The identifier will be returned in the same format as provided at
    /// construction time: if provided as a time offset, that will be returned by
    /// this function.
    @inlinable func getIDentifier() -> String! {
        let rv = g_time_zone_get_identifier(time_zone_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Determines the offset to UTC in effect during a particular `interval`
    /// of time in the time zone `tz`.
    /// 
    /// The offset is the number of seconds that you add to UTC time to
    /// arrive at local time for `tz` (ie: negative numbers for time zones
    /// west of GMT, positive numbers for east).
    @inlinable func getOffset(interval: Int) -> gint32 {
        let rv = g_time_zone_get_offset(time_zone_ptr, gint(interval))
        return rv
    }

    /// Determines if daylight savings time is in effect during a particular
    /// `interval` of time in the time zone `tz`.
    @inlinable func isDst(interval: Int) -> Bool {
        let rv = ((g_time_zone_is_dst(time_zone_ptr, gint(interval))) != 0)
        return rv
    }

    /// Increases the reference count on `tz`.
    @discardableResult @inlinable func ref() -> TimeZoneRef! {
        guard let rv = TimeZoneRef(gconstpointer: gconstpointer(g_time_zone_ref(time_zone_ptr))) else { return nil }
        return rv
    }

    /// Decreases the reference count on `tz`.
    @inlinable func unref() {
        g_time_zone_unref(time_zone_ptr)
    
    }
    /// Get the identifier of this `GTimeZone`, as passed to `g_time_zone_new()`.
    /// If the identifier passed at construction time was not recognised, `UTC` will
    /// be returned. If it was `nil`, the identifier of the local timezone at
    /// construction time will be returned.
    /// 
    /// The identifier will be returned in the same format as provided at
    /// construction time: if provided as a time offset, that will be returned by
    /// this function.
    @inlinable var identifier: String! {
        /// Get the identifier of this `GTimeZone`, as passed to `g_time_zone_new()`.
        /// If the identifier passed at construction time was not recognised, `UTC` will
        /// be returned. If it was `nil`, the identifier of the local timezone at
        /// construction time will be returned.
        /// 
        /// The identifier will be returned in the same format as provided at
        /// construction time: if provided as a time offset, that will be returned by
        /// this function.
        get {
            let rv = g_time_zone_get_identifier(time_zone_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



