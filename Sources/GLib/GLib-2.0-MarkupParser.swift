import CGLib

// MARK: - MarkupParser Record

/// The `MarkupParserProtocol` protocol exposes the methods and properties of an underlying `GMarkupParser` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MarkupParser`.
/// Alternatively, use `MarkupParserRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Any of the fields in `GMarkupParser` can be `nil`, in which case they
/// will be ignored. Except for the `error` function, any of these callbacks
/// can set an error; in particular the `G_MARKUP_ERROR_UNKNOWN_ELEMENT`,
/// `G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE`, and `G_MARKUP_ERROR_INVALID_CONTENT`
/// errors are intended to be set from these callbacks. If you set an error
/// from a callback, `g_markup_parse_context_parse()` will report that error
/// back to its caller.
public protocol MarkupParserProtocol {
    /// Untyped pointer to the underlying `GMarkupParser` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMarkupParser` instance.
    var _ptr: UnsafeMutablePointer<GMarkupParser> { get }
}

/// The `MarkupParserRef` type acts as a lightweight Swift reference to an underlying `GMarkupParser` instance.
/// It exposes methods that can operate on this data type through `MarkupParserProtocol` conformance.
/// Use `MarkupParserRef` only as an `unowned` reference to an existing `GMarkupParser` instance.
///
/// Any of the fields in `GMarkupParser` can be `nil`, in which case they
/// will be ignored. Except for the `error` function, any of these callbacks
/// can set an error; in particular the `G_MARKUP_ERROR_UNKNOWN_ELEMENT`,
/// `G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE`, and `G_MARKUP_ERROR_INVALID_CONTENT`
/// errors are intended to be set from these callbacks. If you set an error
/// from a callback, `g_markup_parse_context_parse()` will report that error
/// back to its caller.
public struct MarkupParserRef: MarkupParserProtocol {
    /// Untyped pointer to the underlying `GMarkupParser` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MarkupParserRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMarkupParser>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MarkupParserProtocol`
    init<T: MarkupParserProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MarkupParser` type acts as an owner of an underlying `GMarkupParser` instance.
/// It provides the methods that can operate on this data type through `MarkupParserProtocol` conformance.
/// Use `MarkupParser` as a strong reference or owner of a `GMarkupParser` instance.
///
/// Any of the fields in `GMarkupParser` can be `nil`, in which case they
/// will be ignored. Except for the `error` function, any of these callbacks
/// can set an error; in particular the `G_MARKUP_ERROR_UNKNOWN_ELEMENT`,
/// `G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE`, and `G_MARKUP_ERROR_INVALID_CONTENT`
/// errors are intended to be set from these callbacks. If you set an error
/// from a callback, `g_markup_parse_context_parse()` will report that error
/// back to its caller.
open class MarkupParser: MarkupParserProtocol {
    /// Untyped pointer to the underlying `GMarkupParser` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MarkupParser` instance.
    public init(_ op: UnsafeMutablePointer<GMarkupParser>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MarkupParserProtocol`
    /// `GMarkupParser` does not allow reference counting.
    public convenience init<T: MarkupParserProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GMarkupParser, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GMarkupParser`.
    deinit {
        // no reference counting for GMarkupParser, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GMarkupParser.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GMarkupParser.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GMarkupParser.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GMarkupParser>(opaquePointer))
    }



}

// MARK: - no MarkupParser properties

// MARK: - no signals


public extension MarkupParserProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMarkupParser` instance.
    var _ptr: UnsafeMutablePointer<GMarkupParser> { return ptr.assumingMemoryBound(to: GMarkupParser.self) }

}



