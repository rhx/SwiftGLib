import CGLib

// MARK: - DebugKey Record

/// The `DebugKeyProtocol` protocol exposes the methods and properties of an underlying `GDebugKey` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DebugKey`.
/// Alternatively, use `DebugKeyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Associates a string with a bit flag.
/// Used in g_parse_debug_string().
public protocol DebugKeyProtocol {
    /// Untyped pointer to the underlying `GDebugKey` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDebugKey` instance.
    var _ptr: UnsafeMutablePointer<GDebugKey> { get }
}

/// The `DebugKeyRef` type acts as a lightweight Swift reference to an underlying `GDebugKey` instance.
/// It exposes methods that can operate on this data type through `DebugKeyProtocol` conformance.
/// Use `DebugKeyRef` only as an `unowned` reference to an existing `GDebugKey` instance.
///
/// Associates a string with a bit flag.
/// Used in g_parse_debug_string().
public struct DebugKeyRef: DebugKeyProtocol {
    /// Untyped pointer to the underlying `GDebugKey` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DebugKeyRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDebugKey>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DebugKeyProtocol`
    init<T: DebugKeyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DebugKey` type acts as an owner of an underlying `GDebugKey` instance.
/// It provides the methods that can operate on this data type through `DebugKeyProtocol` conformance.
/// Use `DebugKey` as a strong reference or owner of a `GDebugKey` instance.
///
/// Associates a string with a bit flag.
/// Used in g_parse_debug_string().
open class DebugKey: DebugKeyProtocol {
    /// Untyped pointer to the underlying `GDebugKey` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DebugKey` instance.
    public init(_ op: UnsafeMutablePointer<GDebugKey>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DebugKeyProtocol`
    /// `GDebugKey` does not allow reference counting.
    public convenience init<T: DebugKeyProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDebugKey, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDebugKey`.
    deinit {
        // no reference counting for GDebugKey, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDebugKey.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDebugKey.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDebugKey.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDebugKey>(opaquePointer))
    }



}

// MARK: - no DebugKey properties

// MARK: - no signals


public extension DebugKeyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDebugKey` instance.
    var _ptr: UnsafeMutablePointer<GDebugKey> { return ptr.assumingMemoryBound(to: GDebugKey.self) }

}



