import CGLib

// MARK: - StatBuf Record

/// The `StatBufProtocol` protocol exposes the methods and properties of an underlying `GStatBuf` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StatBuf`.
/// Alternatively, use `StatBufRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A type corresponding to the appropriate struct type for the `stat()`
/// system call, depending on the platform and/or compiler being used.
/// 
/// See `g_stat()` for more information.
public protocol StatBufProtocol {
    /// Untyped pointer to the underlying `GStatBuf` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GStatBuf` instance.
    var _ptr: UnsafeMutablePointer<GStatBuf> { get }
}

/// The `StatBufRef` type acts as a lightweight Swift reference to an underlying `GStatBuf` instance.
/// It exposes methods that can operate on this data type through `StatBufProtocol` conformance.
/// Use `StatBufRef` only as an `unowned` reference to an existing `GStatBuf` instance.
///
/// A type corresponding to the appropriate struct type for the `stat()`
/// system call, depending on the platform and/or compiler being used.
/// 
/// See `g_stat()` for more information.
public struct StatBufRef: StatBufProtocol {
    /// Untyped pointer to the underlying `GStatBuf` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StatBufRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GStatBuf>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StatBufProtocol`
    init<T: StatBufProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StatBuf` type acts as an owner of an underlying `GStatBuf` instance.
/// It provides the methods that can operate on this data type through `StatBufProtocol` conformance.
/// Use `StatBuf` as a strong reference or owner of a `GStatBuf` instance.
///
/// A type corresponding to the appropriate struct type for the `stat()`
/// system call, depending on the platform and/or compiler being used.
/// 
/// See `g_stat()` for more information.
open class StatBuf: StatBufProtocol {
    /// Untyped pointer to the underlying `GStatBuf` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StatBuf` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GStatBuf>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GStatBuf` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `StatBuf` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GStatBuf>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GStatBuf, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `StatBufProtocol`
    /// `GStatBuf` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `StatBufProtocol`
    public init<T: StatBufProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GStatBuf, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GStatBuf`.
    deinit {
        // no reference counting for GStatBuf, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GStatBuf, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GStatBuf, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GStatBuf, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GStatBuf, cannot ref(cast(_ptr))
    }



}

// MARK: - no StatBuf properties

// MARK: - no signals


public extension StatBufProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GStatBuf` instance.
    var _ptr: UnsafeMutablePointer<GStatBuf> { return ptr.assumingMemoryBound(to: GStatBuf.self) }

}



