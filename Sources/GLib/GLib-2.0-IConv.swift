import CGLib

// MARK: - IConv Record

/// The `IConvProtocol` protocol exposes the methods and properties of an underlying `GIConv` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IConv`.
/// Alternatively, use `IConvRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GIConv struct wraps an `iconv()` conversion descriptor. It contains
/// private data and should only be accessed using the following functions.
public protocol IConvProtocol {
    /// Untyped pointer to the underlying `GIConv` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GIConv` instance.
    var _ptr: UnsafeMutablePointer<GIConv> { get }
}

/// The `IConvRef` type acts as a lightweight Swift reference to an underlying `GIConv` instance.
/// It exposes methods that can operate on this data type through `IConvProtocol` conformance.
/// Use `IConvRef` only as an `unowned` reference to an existing `GIConv` instance.
///
/// The GIConv struct wraps an `iconv()` conversion descriptor. It contains
/// private data and should only be accessed using the following functions.
public struct IConvRef: IConvProtocol {
    /// Untyped pointer to the underlying `GIConv` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IConvRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GIConv>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IConvProtocol`
    init<T: IConvProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IConvProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IConvProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IConvProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IConvProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IConvProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Same as the standard UNIX routine `iconv_open()`, but
    /// may be implemented via libiconv on UNIX flavors that lack
    /// a native implementation.
    /// 
    /// GLib provides `g_convert()` and `g_locale_to_utf8()` which are likely
    /// more convenient than the raw iconv wrappers.
    static func open(toCodeset to_codeset: UnsafePointer<gchar>, fromCodeset from_codeset: UnsafePointer<gchar>) -> IConvRef! {
        let rv = g_iconv_open(to_codeset, from_codeset)
        return rv.map { IConvRef(cast($0)) }
    }
}

/// The `IConv` type acts as an owner of an underlying `GIConv` instance.
/// It provides the methods that can operate on this data type through `IConvProtocol` conformance.
/// Use `IConv` as a strong reference or owner of a `GIConv` instance.
///
/// The GIConv struct wraps an `iconv()` conversion descriptor. It contains
/// private data and should only be accessed using the following functions.
open class IConv: IConvProtocol {
    /// Untyped pointer to the underlying `GIConv` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IConv` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GIConv>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GIConv` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `IConv` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GIConv>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GIConv, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `IConvProtocol`
    /// `GIConv` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `IConvProtocol`
    public init<T: IConvProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GIConv, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GIConv`.
    deinit {
        // no reference counting for GIConv, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IConvProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IConvProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GIConv, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IConvProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IConvProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GIConv, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IConvProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IConvProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GIConv, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IConvProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IConvProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GIConv, cannot ref(cast(_ptr))
    }


    /// Same as the standard UNIX routine `iconv_open()`, but
    /// may be implemented via libiconv on UNIX flavors that lack
    /// a native implementation.
    /// 
    /// GLib provides `g_convert()` and `g_locale_to_utf8()` which are likely
    /// more convenient than the raw iconv wrappers.
    public static func open(toCodeset to_codeset: UnsafePointer<gchar>, fromCodeset from_codeset: UnsafePointer<gchar>) -> IConv! {
        let rv = g_iconv_open(to_codeset, from_codeset)
        return rv.map { IConv(cast($0)) }
    }

}

// MARK: - no IConv properties

// MARK: - no signals


public extension IConvProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIConv` instance.
    var _ptr: UnsafeMutablePointer<GIConv> { return ptr.assumingMemoryBound(to: GIConv.self) }


    // *** gIconv() causes a syntax error and is therefore not available!


    /// Same as the standard UNIX routine `iconv_close()`, but
    /// may be implemented via libiconv on UNIX flavors that lack
    /// a native implementation. Should be called to clean up
    /// the conversion descriptor from `g_iconv_open()` when
    /// you are done converting things.
    /// 
    /// GLib provides `g_convert()` and `g_locale_to_utf8()` which are likely
    /// more convenient than the raw iconv wrappers.
    func close() -> CInt {
        let rv = g_iconv_close(cast(_ptr))
        return CInt(rv)
    }

    /// Converts a string from one character set to another.
    /// 
    /// Note that you should use `g_iconv()` for streaming conversions.
    /// Despite the fact that `bytes_read` can return information about partial
    /// characters, the g_convert_... functions are not generally suitable
    /// for streaming. If the underlying converter maintains internal state,
    /// then this won't be preserved across successive calls to `g_convert()`,
    /// `g_convert_with_iconv()` or `g_convert_with_fallback()`. (An example of
    /// this is the GNU C converter for CP1255 which does not emit a base
    /// character until it knows that the next character is not a mark that
    /// could combine with the base character.)
    /// 
    /// Characters which are valid in the input character set, but which have no
    /// representation in the output character set will result in a
    /// `G_CONVERT_ERROR_ILLEGAL_SEQUENCE` error. This is in contrast to the `iconv()`
    /// specification, which leaves this behaviour implementation defined. Note that
    /// this is the same error code as is returned for an invalid byte sequence in
    /// the input character set. To get defined behaviour for conversion of
    /// unrepresentable characters, use `g_convert_with_fallback()`.
    func convertWithIconv(str: UnsafePointer<gchar>, len: gssize, bytesRead bytes_read: UnsafeMutablePointer<Int>, bytesWritten bytes_written: UnsafeMutablePointer<Int>) throws -> UnsafeMutablePointer<gchar>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_convert_with_iconv(cast(str), len, cast(_ptr), cast(bytes_read), cast(bytes_written), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Same as the standard UNIX routine `iconv()`, but
    /// may be implemented via libiconv on UNIX flavors that lack
    /// a native implementation.
    /// 
    /// GLib provides `g_convert()` and `g_locale_to_utf8()` which are likely
    /// more convenient than the raw iconv wrappers.
    /// 
    /// Note that the behaviour of `iconv()` for characters which are valid in the
    /// input character set, but which have no representation in the output character
    /// set, is implementation defined. This function may return success (with a
    /// positive number of non-reversible conversions as replacement characters were
    /// used), or it may return -1 and set an error such as `EILSEQ`, in such a
    /// situation.
    func iconv(inbuf: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>, inbytesLeft inbytes_left: UnsafeMutablePointer<Int>, outbuf: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>, outbytesLeft outbytes_left: UnsafeMutablePointer<Int>) -> Int {
        let rv = g_iconv(cast(_ptr), cast(inbuf), cast(inbytes_left), cast(outbuf), cast(outbytes_left))
        return Int(rv)
    }
}



