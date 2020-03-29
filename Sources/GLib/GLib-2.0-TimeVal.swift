import CGLib

// MARK: - TimeVal Record

/// The `TimeValProtocol` protocol exposes the methods and properties of an underlying `GTimeVal` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TimeVal`.
/// Alternatively, use `TimeValRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Represents a precise time, with seconds and microseconds.
/// Similar to the struct timeval returned by the `gettimeofday()`
/// UNIX system call.
/// 
/// GLib is attempting to unify around the use of 64-bit integers to
/// represent microsecond-precision time. As such, this type will be
/// removed from a future version of GLib. A consequence of using `glong` for
/// `tv_sec` is that on 32-bit systems `GTimeVal` is subject to the year 2038
/// problem.
public protocol TimeValProtocol {
    /// Untyped pointer to the underlying `GTimeVal` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTimeVal` instance.
    var _ptr: UnsafeMutablePointer<GTimeVal> { get }
}

/// The `TimeValRef` type acts as a lightweight Swift reference to an underlying `GTimeVal` instance.
/// It exposes methods that can operate on this data type through `TimeValProtocol` conformance.
/// Use `TimeValRef` only as an `unowned` reference to an existing `GTimeVal` instance.
///
/// Represents a precise time, with seconds and microseconds.
/// Similar to the struct timeval returned by the `gettimeofday()`
/// UNIX system call.
/// 
/// GLib is attempting to unify around the use of 64-bit integers to
/// represent microsecond-precision time. As such, this type will be
/// removed from a future version of GLib. A consequence of using `glong` for
/// `tv_sec` is that on 32-bit systems `GTimeVal` is subject to the year 2038
/// problem.
public struct TimeValRef: TimeValProtocol {
    /// Untyped pointer to the underlying `GTimeVal` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TimeValRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTimeVal>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TimeValProtocol`
    init<T: TimeValProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TimeVal` type acts as an owner of an underlying `GTimeVal` instance.
/// It provides the methods that can operate on this data type through `TimeValProtocol` conformance.
/// Use `TimeVal` as a strong reference or owner of a `GTimeVal` instance.
///
/// Represents a precise time, with seconds and microseconds.
/// Similar to the struct timeval returned by the `gettimeofday()`
/// UNIX system call.
/// 
/// GLib is attempting to unify around the use of 64-bit integers to
/// represent microsecond-precision time. As such, this type will be
/// removed from a future version of GLib. A consequence of using `glong` for
/// `tv_sec` is that on 32-bit systems `GTimeVal` is subject to the year 2038
/// problem.
open class TimeVal: TimeValProtocol {
    /// Untyped pointer to the underlying `GTimeVal` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeVal` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GTimeVal>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTimeVal` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TimeVal` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GTimeVal>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTimeVal, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `TimeValProtocol`
    /// `GTimeVal` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TimeValProtocol`
    public init<T: TimeValProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GTimeVal, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GTimeVal`.
    deinit {
        // no reference counting for GTimeVal, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTimeVal, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTimeVal, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTimeVal, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTimeVal, cannot ref(cast(_ptr))
    }



}

// MARK: - no TimeVal properties

// MARK: - no signals


public extension TimeValProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTimeVal` instance.
    var _ptr: UnsafeMutablePointer<GTimeVal> { return ptr.assumingMemoryBound(to: GTimeVal.self) }

    /// Adds the given number of microseconds to `time_`. `microseconds` can
    /// also be negative to decrease the value of `time_`.
    ///
    /// **add is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use `guint64` for
    ///    representing microseconds since the epoch, or use #GDateTime.
    @available(*, deprecated) func add(microseconds: CLong) {
        g_time_val_add(cast(_ptr), glong(microseconds))
    
    }

    /// Converts `time_` into an RFC 3339 encoded string, relative to the
    /// Coordinated Universal Time (UTC). This is one of the many formats
    /// allowed by ISO 8601.
    /// 
    /// ISO 8601 allows a large number of date/time formats, with or without
    /// punctuation and optional elements. The format returned by this function
    /// is a complete date and time, with optional punctuation included, the
    /// UTC time zone represented as "Z", and the `tv_usec` part included if
    /// and only if it is nonzero, i.e. either
    /// "YYYY-MM-DDTHH:MM:SSZ" or "YYYY-MM-DDTHH:MM:SS.fffffZ".
    /// 
    /// This corresponds to the Internet date/time format defined by
    /// [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt),
    /// and to either of the two most-precise formats defined by
    /// the W3C Note
    /// [Date and Time Formats](http://www.w3.org/TR/NOTE-datetime-19980827).
    /// Both of these documents are profiles of ISO 8601.
    /// 
    /// Use `g_date_time_format()` or `g_strdup_printf()` if a different
    /// variation of ISO 8601 format is required.
    /// 
    /// If `time_` represents a date which is too large to fit into a `struct tm`,
    /// `nil` will be returned. This is platform dependent. Note also that since
    /// `GTimeVal` stores the number of seconds as a `glong`, on 32-bit systems it
    /// is subject to the year 2038 problem. Accordingly, since GLib 2.62, this
    /// function has been deprecated. Equivalent functionality is available using:
    /// ```
    /// GDateTime *dt = g_date_time_new_from_unix_utc (time_val);
    /// iso8601_string = g_date_time_format_iso8601 (dt);
    /// g_date_time_unref (dt);
    /// ```
    /// 
    /// The return value of `g_time_val_to_iso8601()` has been nullable since GLib
    /// 2.54; before then, GLib would crash under the same conditions.
    ///
    /// **to_iso8601 is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_format_iso8601(dt) instead.
    @available(*, deprecated) func toIso8601() -> String! {
        let rv = g_time_val_to_iso8601(cast(_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Converts a string containing an ISO 8601 encoded date and time
    /// to a `GTimeVal` and puts it into `time_`.
    /// 
    /// `iso_date` must include year, month, day, hours, minutes, and
    /// seconds. It can optionally include fractions of a second and a time
    /// zone indicator. (In the absence of any time zone indication, the
    /// timestamp is assumed to be in local time.)
    /// 
    /// Any leading or trailing space in `iso_date` is ignored.
    /// 
    /// This function was deprecated, along with `GTimeVal` itself, in GLib 2.62.
    /// Equivalent functionality is available using code like:
    /// ```
    /// GDateTime *dt = g_date_time_new_from_iso8601 (iso8601_string, NULL);
    /// gint64 time_val = g_date_time_to_unix (dt);
    /// g_date_time_unref (dt);
    /// ```
    /// 
    ///
    /// **from_iso8601 is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_iso8601() instead.
    @available(*, deprecated) func fromIso8601(isoDate iso_date: UnsafePointer<gchar>) -> Bool {
        let rv = g_time_val_from_iso8601(iso_date, cast(_ptr))
        return Bool(rv != 0)
    }

    /// Equivalent to the UNIX `gettimeofday()` function, but portable.
    /// 
    /// You may find `g_get_real_time()` to be more convenient.
    ///
    /// **get_current_time is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use g_get_real_time()
    ///    instead.
    @available(*, deprecated) func getCurrentTime() {
        g_get_current_time(cast(_ptr))
    
    }

    /// Converts a string containing an ISO 8601 encoded date and time
    /// to a `GTimeVal` and puts it into `time_`.
    /// 
    /// `iso_date` must include year, month, day, hours, minutes, and
    /// seconds. It can optionally include fractions of a second and a time
    /// zone indicator. (In the absence of any time zone indication, the
    /// timestamp is assumed to be in local time.)
    /// 
    /// Any leading or trailing space in `iso_date` is ignored.
    /// 
    /// This function was deprecated, along with `GTimeVal` itself, in GLib 2.62.
    /// Equivalent functionality is available using code like:
    /// ```
    /// GDateTime *dt = g_date_time_new_from_iso8601 (iso8601_string, NULL);
    /// gint64 time_val = g_date_time_to_unix (dt);
    /// g_date_time_unref (dt);
    /// ```
    /// 
    ///
    /// **time_val_from_iso8601 is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_iso8601() instead.
    @available(*, deprecated) func timeValFromIso8601(isoDate iso_date: UnsafePointer<gchar>) -> Bool {
        let rv = g_time_val_from_iso8601(iso_date, cast(_ptr))
        return Bool(rv != 0)
    }
    // var currentTime is unavailable because it does not have a valid getter or setter
}



