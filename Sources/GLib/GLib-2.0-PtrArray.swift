import CGLib

// MARK: - PtrArray Record

/// The `PtrArrayProtocol` protocol exposes the methods and properties of an underlying `GPtrArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PtrArray`.
/// Alternatively, use `PtrArrayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Contains the public fields of a pointer array.
public protocol PtrArrayProtocol {
        /// Untyped pointer to the underlying `GPtrArray` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GPtrArray` instance.
    var ptr_array_ptr: UnsafeMutablePointer<GPtrArray>! { get }

}

/// The `PtrArrayRef` type acts as a lightweight Swift reference to an underlying `GPtrArray` instance.
/// It exposes methods that can operate on this data type through `PtrArrayProtocol` conformance.
/// Use `PtrArrayRef` only as an `unowned` reference to an existing `GPtrArray` instance.
///
/// Contains the public fields of a pointer array.
public struct PtrArrayRef: PtrArrayProtocol {
        /// Untyped pointer to the underlying `GPtrArray` instance.
    /// For type-safe access, use the generated, typed pointer `ptr_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PtrArrayRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GPtrArray>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GPtrArray>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `PtrArrayProtocol`
    @inlinable init<T: PtrArrayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PtrArray` type acts as an owner of an underlying `GPtrArray` instance.
/// It provides the methods that can operate on this data type through `PtrArrayProtocol` conformance.
/// Use `PtrArray` as a strong reference or owner of a `GPtrArray` instance.
///
/// Contains the public fields of a pointer array.
open class PtrArray: PtrArrayProtocol {
        /// Untyped pointer to the underlying `GPtrArray` instance.
    /// For type-safe access, use the generated, typed pointer `ptr_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GPtrArray>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GPtrArray>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GPtrArray` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GPtrArray, cannot ref(ptr_array_ptr)
    }

    /// Reference intialiser for a related type that implements `PtrArrayProtocol`
    /// `GPtrArray` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PtrArrayProtocol`
    @inlinable public init<T: PtrArrayProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GPtrArray, cannot ref(ptr_array_ptr)
    }

    /// Do-nothing destructor for `GPtrArray`.
    deinit {
        // no reference counting for GPtrArray, cannot unref(ptr_array_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GPtrArray, cannot ref(ptr_array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GPtrArray, cannot ref(ptr_array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GPtrArray, cannot ref(ptr_array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GPtrArray, cannot ref(ptr_array_ptr)
    }



}

// MARK: no PtrArray properties

// MARK: no PtrArray signals


// MARK: PtrArray Record: PtrArrayProtocol extension (methods and fields)
public extension PtrArrayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPtrArray` instance.
    @inlinable var ptr_array_ptr: UnsafeMutablePointer<GPtrArray>! { return ptr?.assumingMemoryBound(to: GPtrArray.self) }


    /// points to the array of pointers, which may be moved when the
    ///     array grows
    @inlinable var pdata: UnsafeMutablePointer<gpointer?>! {
        /// points to the array of pointers, which may be moved when the
        ///     array grows
        get {
            let rv = ptr_array_ptr.pointee.pdata
            return rv
        }
        /// points to the array of pointers, which may be moved when the
        ///     array grows
         set {
            ptr_array_ptr.pointee.pdata = newValue
        }
    }

    /// number of pointers in the array
    @inlinable var len: guint {
        /// number of pointers in the array
        get {
            let rv = ptr_array_ptr.pointee.len
            return rv
        }
        /// number of pointers in the array
         set {
            ptr_array_ptr.pointee.len = newValue
        }
    }

}



