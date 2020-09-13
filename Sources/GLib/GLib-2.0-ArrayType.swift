import CGLib

// MARK: - Array Record

/// The `ArrayProtocol` protocol exposes the methods and properties of an underlying `GArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ArrayType`.
/// Alternatively, use `ArrayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Contains the public fields of a GArray.
public protocol ArrayProtocol {
        /// Untyped pointer to the underlying `GArray` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GArray` instance.
    var array_ptr: UnsafeMutablePointer<GArray>! { get }

}

/// The `ArrayRef` type acts as a lightweight Swift reference to an underlying `GArray` instance.
/// It exposes methods that can operate on this data type through `ArrayProtocol` conformance.
/// Use `ArrayRef` only as an `unowned` reference to an existing `GArray` instance.
///
/// Contains the public fields of a GArray.
public struct ArrayRef: ArrayProtocol {
        /// Untyped pointer to the underlying `GArray` instance.
    /// For type-safe access, use the generated, typed pointer `array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ArrayRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GArray>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GArray>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GArray>?) {
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

    /// Reference intialiser for a related type that implements `ArrayProtocol`
    @inlinable init<T: ArrayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ArrayType` type acts as an owner of an underlying `GArray` instance.
/// It provides the methods that can operate on this data type through `ArrayProtocol` conformance.
/// Use `ArrayType` as a strong reference or owner of a `GArray` instance.
///
/// Contains the public fields of a GArray.
open class ArrayType: ArrayProtocol {
        /// Untyped pointer to the underlying `GArray` instance.
    /// For type-safe access, use the generated, typed pointer `array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrayType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GArray>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrayType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrayType` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrayType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrayType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GArray>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrayType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GArray>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GArray` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ArrayType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GArray>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GArray, cannot ref(array_ptr)
    }

    /// Reference intialiser for a related type that implements `ArrayProtocol`
    /// `GArray` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ArrayProtocol`
    @inlinable public init<T: ArrayProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GArray, cannot ref(array_ptr)
    }

    /// Do-nothing destructor for `GArray`.
    deinit {
        // no reference counting for GArray, cannot unref(array_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GArray, cannot ref(array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GArray, cannot ref(array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GArray, cannot ref(array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GArray, cannot ref(array_ptr)
    }



}

// MARK: no ArrayType properties

// MARK: no ArrayType signals


// MARK: Array Record: ArrayProtocol extension (methods and fields)
public extension ArrayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GArray` instance.
    @inlinable var array_ptr: UnsafeMutablePointer<GArray>! { return ptr?.assumingMemoryBound(to: GArray.self) }


    /// a pointer to the element data. The data may be moved as
    ///     elements are added to the `GArray`.
    @inlinable var data: UnsafeMutablePointer<gchar>! {
        /// a pointer to the element data. The data may be moved as
        ///     elements are added to the `GArray`.
        get {
            let rv = array_ptr.pointee.data
            return rv
        }
        /// a pointer to the element data. The data may be moved as
        ///     elements are added to the `GArray`.
         set {
            array_ptr.pointee.data = newValue
        }
    }

    /// the number of elements in the `GArray` not including the
    ///     possible terminating zero element.
    @inlinable var len: guint {
        /// the number of elements in the `GArray` not including the
        ///     possible terminating zero element.
        get {
            let rv = array_ptr.pointee.len
            return rv
        }
        /// the number of elements in the `GArray` not including the
        ///     possible terminating zero element.
         set {
            array_ptr.pointee.len = newValue
        }
    }

}



