import CGLib

// MARK: - IOFuncs Record

/// The `IOFuncsProtocol` protocol exposes the methods and properties of an underlying `GIOFuncs` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOFuncs`.
/// Alternatively, use `IOFuncsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A table of functions used to handle different types of `GIOChannel`
/// in a generic way.
public protocol IOFuncsProtocol {
    /// Untyped pointer to the underlying `GIOFuncs` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GIOFuncs` instance.
    var _ptr: UnsafeMutablePointer<GIOFuncs> { get }
}

/// The `IOFuncsRef` type acts as a lightweight Swift reference to an underlying `GIOFuncs` instance.
/// It exposes methods that can operate on this data type through `IOFuncsProtocol` conformance.
/// Use `IOFuncsRef` only as an `unowned` reference to an existing `GIOFuncs` instance.
///
/// A table of functions used to handle different types of `GIOChannel`
/// in a generic way.
public struct IOFuncsRef: IOFuncsProtocol {
    /// Untyped pointer to the underlying `GIOFuncs` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IOFuncsRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GIOFuncs>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IOFuncsProtocol`
    init<T: IOFuncsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IOFuncs` type acts as an owner of an underlying `GIOFuncs` instance.
/// It provides the methods that can operate on this data type through `IOFuncsProtocol` conformance.
/// Use `IOFuncs` as a strong reference or owner of a `GIOFuncs` instance.
///
/// A table of functions used to handle different types of `GIOChannel`
/// in a generic way.
open class IOFuncs: IOFuncsProtocol {
    /// Untyped pointer to the underlying `GIOFuncs` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GIOFuncs>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GIOFuncs` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `IOFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GIOFuncs>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GIOFuncs, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `IOFuncsProtocol`
    /// `GIOFuncs` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `IOFuncsProtocol`
    public init<T: IOFuncsProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GIOFuncs, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GIOFuncs`.
    deinit {
        // no reference counting for GIOFuncs, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GIOFuncs, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GIOFuncs, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GIOFuncs, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GIOFuncs, cannot ref(cast(_ptr))
    }



}

// MARK: - no IOFuncs properties

// MARK: - no signals


public extension IOFuncsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOFuncs` instance.
    var _ptr: UnsafeMutablePointer<GIOFuncs> { return ptr.assumingMemoryBound(to: GIOFuncs.self) }

}



