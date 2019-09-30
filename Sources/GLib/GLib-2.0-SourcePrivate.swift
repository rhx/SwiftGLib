import CGLib

// MARK: - SourcePrivate Record

/// The `SourcePrivateProtocol` protocol exposes the methods and properties of an underlying `GSourcePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SourcePrivate`.
/// Alternatively, use `SourcePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SourcePrivateProtocol {
    /// Untyped pointer to the underlying `GSourcePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSourcePrivate` instance.
    var _ptr: UnsafeMutablePointer<GSourcePrivate> { get }
}

/// The `SourcePrivateRef` type acts as a lightweight Swift reference to an underlying `GSourcePrivate` instance.
/// It exposes methods that can operate on this data type through `SourcePrivateProtocol` conformance.
/// Use `SourcePrivateRef` only as an `unowned` reference to an existing `GSourcePrivate` instance.
///

public struct SourcePrivateRef: SourcePrivateProtocol {
    /// Untyped pointer to the underlying `GSourcePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SourcePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSourcePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SourcePrivateProtocol`
    init<T: SourcePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SourcePrivate` type acts as an owner of an underlying `GSourcePrivate` instance.
/// It provides the methods that can operate on this data type through `SourcePrivateProtocol` conformance.
/// Use `SourcePrivate` as a strong reference or owner of a `GSourcePrivate` instance.
///

open class SourcePrivate: SourcePrivateProtocol {
    /// Untyped pointer to the underlying `GSourcePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SourcePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GSourcePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SourcePrivateProtocol`
    /// `GSourcePrivate` does not allow reference counting.
    public convenience init<T: SourcePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GSourcePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSourcePrivate`.
    deinit {
        // no reference counting for GSourcePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GSourcePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GSourcePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GSourcePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GSourcePrivate>(opaquePointer))
    }



}

// MARK: - no SourcePrivate properties

// MARK: - no signals


public extension SourcePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSourcePrivate` instance.
    var _ptr: UnsafeMutablePointer<GSourcePrivate> { return ptr.assumingMemoryBound(to: GSourcePrivate.self) }

}



