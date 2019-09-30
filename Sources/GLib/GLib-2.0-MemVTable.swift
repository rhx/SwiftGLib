import CGLib

// MARK: - MemVTable Record

/// The `MemVTableProtocol` protocol exposes the methods and properties of an underlying `GMemVTable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MemVTable`.
/// Alternatively, use `MemVTableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A set of functions used to perform memory allocation. The same `GMemVTable` must
/// be used for all allocations in the same program; a call to g_mem_set_vtable(),
/// if it exists, should be prior to any use of GLib.
/// 
/// This functions related to this has been deprecated in 2.46, and no longer work.
public protocol MemVTableProtocol {
    /// Untyped pointer to the underlying `GMemVTable` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMemVTable` instance.
    var _ptr: UnsafeMutablePointer<GMemVTable> { get }
}

/// The `MemVTableRef` type acts as a lightweight Swift reference to an underlying `GMemVTable` instance.
/// It exposes methods that can operate on this data type through `MemVTableProtocol` conformance.
/// Use `MemVTableRef` only as an `unowned` reference to an existing `GMemVTable` instance.
///
/// A set of functions used to perform memory allocation. The same `GMemVTable` must
/// be used for all allocations in the same program; a call to g_mem_set_vtable(),
/// if it exists, should be prior to any use of GLib.
/// 
/// This functions related to this has been deprecated in 2.46, and no longer work.
public struct MemVTableRef: MemVTableProtocol {
    /// Untyped pointer to the underlying `GMemVTable` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MemVTableRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMemVTable>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MemVTableProtocol`
    init<T: MemVTableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MemVTable` type acts as an owner of an underlying `GMemVTable` instance.
/// It provides the methods that can operate on this data type through `MemVTableProtocol` conformance.
/// Use `MemVTable` as a strong reference or owner of a `GMemVTable` instance.
///
/// A set of functions used to perform memory allocation. The same `GMemVTable` must
/// be used for all allocations in the same program; a call to g_mem_set_vtable(),
/// if it exists, should be prior to any use of GLib.
/// 
/// This functions related to this has been deprecated in 2.46, and no longer work.
open class MemVTable: MemVTableProtocol {
    /// Untyped pointer to the underlying `GMemVTable` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MemVTable` instance.
    public init(_ op: UnsafeMutablePointer<GMemVTable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MemVTableProtocol`
    /// `GMemVTable` does not allow reference counting.
    public convenience init<T: MemVTableProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GMemVTable, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GMemVTable`.
    deinit {
        // no reference counting for GMemVTable, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GMemVTable.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GMemVTable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GMemVTable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GMemVTable>(opaquePointer))
    }



}

// MARK: - no MemVTable properties

// MARK: - no signals


public extension MemVTableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMemVTable` instance.
    var _ptr: UnsafeMutablePointer<GMemVTable> { return ptr.assumingMemoryBound(to: GMemVTable.self) }

    /// This function used to let you override the memory allocation function.
    /// However, its use was incompatible with the use of global constructors
    /// in GLib and GIO, because those use the GLib allocators before main is
    /// reached. Therefore this function is now deprecated and is just a stub.
    ///
    /// **mem_set_vtable is deprecated:**
    /// This function now does nothing. Use other memory
    /// profiling tools instead
    @available(*, deprecated) func memSetVtable() {
        g_mem_set_vtable(cast(_ptr))
    
    }
}



