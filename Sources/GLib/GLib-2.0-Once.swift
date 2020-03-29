import CGLib

// MARK: - Once Record

/// The `OnceProtocol` protocol exposes the methods and properties of an underlying `GOnce` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Once`.
/// Alternatively, use `OnceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GOnce` struct controls a one-time initialization function. Any
/// one-time initialization function must have its own unique `GOnce`
/// struct.
public protocol OnceProtocol {
    /// Untyped pointer to the underlying `GOnce` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GOnce` instance.
    var _ptr: UnsafeMutablePointer<GOnce> { get }
}

/// The `OnceRef` type acts as a lightweight Swift reference to an underlying `GOnce` instance.
/// It exposes methods that can operate on this data type through `OnceProtocol` conformance.
/// Use `OnceRef` only as an `unowned` reference to an existing `GOnce` instance.
///
/// A `GOnce` struct controls a one-time initialization function. Any
/// one-time initialization function must have its own unique `GOnce`
/// struct.
public struct OnceRef: OnceProtocol {
    /// Untyped pointer to the underlying `GOnce` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension OnceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GOnce>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `OnceProtocol`
    init<T: OnceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Once` type acts as an owner of an underlying `GOnce` instance.
/// It provides the methods that can operate on this data type through `OnceProtocol` conformance.
/// Use `Once` as a strong reference or owner of a `GOnce` instance.
///
/// A `GOnce` struct controls a one-time initialization function. Any
/// one-time initialization function must have its own unique `GOnce`
/// struct.
open class Once: OnceProtocol {
    /// Untyped pointer to the underlying `GOnce` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Once` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GOnce>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GOnce` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Once` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GOnce>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GOnce, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `OnceProtocol`
    /// `GOnce` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `OnceProtocol`
    public init<T: OnceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GOnce, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GOnce`.
    deinit {
        // no reference counting for GOnce, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GOnce, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GOnce, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GOnce, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GOnce, cannot ref(cast(_ptr))
    }



}

// MARK: - no Once properties

// MARK: - no signals


public extension OnceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GOnce` instance.
    var _ptr: UnsafeMutablePointer<GOnce> { return ptr.assumingMemoryBound(to: GOnce.self) }

    func impl(func_: @escaping ThreadFunc, arg: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer! {
        let rv = g_once_impl(cast(_ptr), func_, cast(arg))
        return cast(rv)
    }
}



