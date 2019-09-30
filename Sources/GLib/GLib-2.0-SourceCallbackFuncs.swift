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
    /// Ownership is transferred to the `SourceCallbackFuncs` instance.
    public init(_ op: UnsafeMutablePointer<GSourceCallbackFuncs>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SourceCallbackFuncsProtocol`
    /// `GSourceCallbackFuncs` does not allow reference counting.
    public convenience init<T: SourceCallbackFuncsProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GSourceCallbackFuncs, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSourceCallbackFuncs`.
    deinit {
        // no reference counting for GSourceCallbackFuncs, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GSourceCallbackFuncs.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GSourceCallbackFuncs.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GSourceCallbackFuncs.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GSourceCallbackFuncs>(opaquePointer))
    }



}

// MARK: - no SourceCallbackFuncs properties

// MARK: - no signals


public extension SourceCallbackFuncsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSourceCallbackFuncs` instance.
    var _ptr: UnsafeMutablePointer<GSourceCallbackFuncs> { return ptr.assumingMemoryBound(to: GSourceCallbackFuncs.self) }

}



