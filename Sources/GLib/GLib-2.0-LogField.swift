import CGLib

// MARK: - LogField Record

/// The `LogFieldProtocol` protocol exposes the methods and properties of an underlying `GLogField` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LogField`.
/// Alternatively, use `LogFieldRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Structure representing a single field in a structured log entry. See
/// `g_log_structured()` for details.
/// 
/// Log fields may contain arbitrary values, including binary with embedded nul
/// bytes. If the field contains a string, the string must be UTF-8 encoded and
/// have a trailing nul byte. Otherwise, `length` must be set to a non-negative
/// value.
public protocol LogFieldProtocol {
    /// Untyped pointer to the underlying `GLogField` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GLogField` instance.
    var _ptr: UnsafeMutablePointer<GLogField> { get }
}

/// The `LogFieldRef` type acts as a lightweight Swift reference to an underlying `GLogField` instance.
/// It exposes methods that can operate on this data type through `LogFieldProtocol` conformance.
/// Use `LogFieldRef` only as an `unowned` reference to an existing `GLogField` instance.
///
/// Structure representing a single field in a structured log entry. See
/// `g_log_structured()` for details.
/// 
/// Log fields may contain arbitrary values, including binary with embedded nul
/// bytes. If the field contains a string, the string must be UTF-8 encoded and
/// have a trailing nul byte. Otherwise, `length` must be set to a non-negative
/// value.
public struct LogFieldRef: LogFieldProtocol {
    /// Untyped pointer to the underlying `GLogField` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LogFieldRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GLogField>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LogFieldProtocol`
    init<T: LogFieldProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LogField` type acts as an owner of an underlying `GLogField` instance.
/// It provides the methods that can operate on this data type through `LogFieldProtocol` conformance.
/// Use `LogField` as a strong reference or owner of a `GLogField` instance.
///
/// Structure representing a single field in a structured log entry. See
/// `g_log_structured()` for details.
/// 
/// Log fields may contain arbitrary values, including binary with embedded nul
/// bytes. If the field contains a string, the string must be UTF-8 encoded and
/// have a trailing nul byte. Otherwise, `length` must be set to a non-negative
/// value.
open class LogField: LogFieldProtocol {
    /// Untyped pointer to the underlying `GLogField` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LogField` instance.
    public init(_ op: UnsafeMutablePointer<GLogField>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LogFieldProtocol`
    /// `GLogField` does not allow reference counting.
    public convenience init<T: LogFieldProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GLogField, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GLogField`.
    deinit {
        // no reference counting for GLogField, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GLogField.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GLogField.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GLogField.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GLogField>(opaquePointer))
    }



}

// MARK: - no LogField properties

// MARK: - no signals


public extension LogFieldProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GLogField` instance.
    var _ptr: UnsafeMutablePointer<GLogField> { return ptr.assumingMemoryBound(to: GLogField.self) }

}



