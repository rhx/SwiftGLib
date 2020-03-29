import CGLib

// MARK: - SourceCallbackFuncs Record

/// The `SourceCallbackFuncsProtocol` protocol exposes the methods and properties of an underlying `GSourceCallbackFuncs` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SourceCallbackFuncs`.
/// Alternatively, use `SourceCallbackFuncsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GSourceCallbackFuncs` struct contains
/// functions for managing callback objects.
public protocol SourceCallbackFuncsProtocol {
    /// Untyped pointer to the underlying `GSourceCallbackFuncs` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSourceCallbackFuncs` instance.
    var _ptr: UnsafeMutablePointer<GSourceCallbackFuncs> { get }
}

/// The `SourceCallbackFuncsRef` type acts as a lightweight Swift reference to an underlying `GSourceCallbackFuncs` instance.
/// It exposes methods that can operate on this data type through `SourceCallbackFuncsProtocol` conformance.
/// Use `SourceCallbackFuncsRef` only as an `unowned` reference to an existing `GSourceCallbackFuncs` instance.
///
/// The `GSourceCallbackFuncs` struct contains
/// functions for managing callback objects.
public struct SourceCallbackFuncsRef: SourceCallbackFuncsProtocol {
    /// Untyped pointer to the underlying `GSourceCallbackFuncs` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SourceCallbackFuncsRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSourceCallbackFuncs>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SourceCallbackFuncsProtocol`
    init<T: SourceCallbackFuncsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SourceCallbackFuncs` type acts as an owner of an underlying `GSourceCallbackFuncs` instance.
/// It provides the methods that can operate on this data type through `SourceCallbackFuncsProtocol` conformance.
/// Use `SourceCallbackFuncs` as a strong reference or owner of a `GSourceCallbackFuncs` instance.
///
/// The `GSourceCallbackFuncs` struct contains
/// functions for managing callback objects.
open class SourceCallbackFuncs: SourceCallbackFuncsProtocol {
    /// Untyped pointer to the underlying `GSourceCallbackFuncs` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourceCallbackFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSourceCallbackFuncs>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSourceCallbackFuncs` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SourceCallbackFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSourceCallbackFuncs>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSourceCallbackFuncs, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SourceCallbackFuncsProtocol`
    /// `GSourceCallbackFuncs` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SourceCallbackFuncsProtocol`
    public init<T: SourceCallbackFuncsProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSourceCallbackFuncs, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSourceCallbackFuncs`.
    deinit {
        // no reference counting for GSourceCallbackFuncs, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSourceCallbackFuncs, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSourceCallbackFuncs, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSourceCallbackFuncs, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSourceCallbackFuncs, cannot ref(cast(_ptr))
    }



}

// MARK: - no SourceCallbackFuncs properties

// MARK: - no signals


public extension SourceCallbackFuncsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSourceCallbackFuncs` instance.
    var _ptr: UnsafeMutablePointer<GSourceCallbackFuncs> { return ptr.assumingMemoryBound(to: GSourceCallbackFuncs.self) }

}



